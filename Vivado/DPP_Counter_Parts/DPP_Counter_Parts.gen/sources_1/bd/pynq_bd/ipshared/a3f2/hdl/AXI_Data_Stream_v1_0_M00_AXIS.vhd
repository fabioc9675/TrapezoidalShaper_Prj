library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AXI_Data_Stream_v1_0_M00_AXIS is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
		C_M_AXIS_TDATA_WIDTH	: integer	:= 32;
		-- Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.
		C_M_START_COUNT	: integer	:= 32
	);
	port (
		-- Users to add ports here
        --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
		-- Se agregan los puertos necesarios para el funcionamiento del IP
		data_in         : in  std_logic_vector(15 downto 0);
		trg_adc         : in  std_logic;  -- variable para recibir el momento en que se detecto el evento
		clk_adc         : in  std_logic;
        --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Global ports
		M_AXIS_ACLK	: in std_logic;
		-- 
		M_AXIS_ARESETN	: in std_logic;
		-- Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted. 
		M_AXIS_TVALID	: out std_logic;
		-- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
		M_AXIS_TDATA	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		-- TSTRB is the byte qualifier that indicates whether the content of the associated byte of TDATA is processed as a data byte or a position byte.
		M_AXIS_TSTRB	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
		-- TLAST indicates the boundary of a packet.
		M_AXIS_TLAST	: out std_logic;
		-- TREADY indicates that the slave can accept a transfer in the current cycle.
		M_AXIS_TREADY	: in std_logic
	);
end AXI_Data_Stream_v1_0_M00_AXIS;

architecture implementation of AXI_Data_Stream_v1_0_M00_AXIS is
	-- Total number of output data         
	--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	-- Este valor se edita para variar el tama�o del buffer de salida                                        
	constant NUMBER_OF_OUTPUT_WORDS : integer := 8191; --13 bits --8; 
	--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                                   

	 -- function called clogb2 that returns an integer which has the   
	 -- value of the ceiling of the log base 2.                              
	function clogb2 (bit_depth : integer) return integer is                  
	 	variable depth  : integer := bit_depth;                               
	 	variable count  : integer := 1;                                       
	 begin                                                                   
	 	 for clogb2 in 1 to bit_depth loop  -- Works for up to 32 bit integers
	      if (bit_depth <= 2) then                                           
	        count := 1;                                                      
	      else                                                               
	        if(depth <= 1) then                                              
	 	       count := count;                                                
	 	     else                                                             
	 	       depth := depth / 2;                                            
	          count := count + 1;                                            
	 	     end if;                                                          
	 	   end if;                                                            
	   end loop;                                                             
	   return(count);        	                                              
	 end;                                                                    

	 -- WAIT_COUNT_BITS is the width of the wait counter.                       
	 constant  WAIT_COUNT_BITS  : integer := clogb2(C_M_START_COUNT-1);               
	                                                                                  
	-- In this example, Depth of FIFO is determined by the greater of                 
	-- the number of input words and output words.                                    
	constant depth : integer := NUMBER_OF_OUTPUT_WORDS;                               
	                                                                                  
	-- bit_num gives the minimum number of bits needed to address 'depth' size of FIFO
	constant bit_num : integer := clogb2(depth);                                      
	                                                                                  
	-- Define the states of state machine                                             
	-- The control state machine oversees the writing of input streaming data to the FIFO,
	-- and outputs the streaming data from the FIFO                                   
	type state is ( IDLE,        -- This is the initial/idle state                    
	                INIT_COUNTER,  -- This state initializes the counter, once        
	                                -- the counter reaches C_M_START_COUNT count,     
	                                -- the state machine changes state to SEND_STREAM  
	                SEND_STREAM);  -- In this state the                               
	                             -- stream data is output through M_AXIS_TDATA        
	-- State variable                                                                 
	signal  mst_exec_state : state;                                                   
	-- Example design FIFO read pointer                                               
	signal read_pointer : integer range 0 to depth-1;                               

	-- AXI Stream internal signals
	--wait counter. The master waits for the user defined number of clock cycles before initiating a transfer.
	signal count	: std_logic_vector(WAIT_COUNT_BITS-1 downto 0);
	--streaming data valid
	signal axis_tvalid	: std_logic;
	--streaming data valid delayed by one clock cycle
	signal axis_tvalid_delay	: std_logic;
	--Last of the streaming data 
	signal axis_tlast	: std_logic;
	--Last of the streaming data delayed by one clock cycle
	signal axis_tlast_delay	: std_logic;
	--FIFO implementation signals
	signal stream_data_out	: std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
	signal tx_en	: std_logic;
	--The master has issued all the streaming data stored in FIFO
	signal tx_done	: std_logic;
	
	--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    -- Senales agregadas para funciones del fifo
    signal act   : std_logic;
    
    type datos_fifo is array (0 to NUMBER_OF_OUTPUT_WORDS + 5 ) of std_logic_vector(15 downto 0);
    signal dfifo  :  datos_fifo := (others => (others => '0'));
    signal contadorfifo : integer := 0;
    
    signal contadordelay  : integer := 0;
    signal activar        : std_logic := '0';
    signal enable         : std_logic;
    signal contar         : integer range 0 to 10000 := 0;
    
    -- creacion de fifo circular
    constant BUFFER_SIZE : integer := NUMBER_OF_OUTPUT_WORDS;
    constant PRE_TRIGGER_SIZE : integer := 1024; -- tama�o del pre trigger
    signal write_ptr : integer range 0 to BUFFER_SIZE-1 := 0;
    signal read_ptr : integer range 0 to BUFFER_SIZE-1 := 0;
    signal read_ptr_int : integer range 0 to BUFFER_SIZE-1 := 0;
    signal triggered : std_logic := '0';
    signal capture_done : std_logic := '0';
    signal first_time : std_logic := '1';
    signal buffer_valid : std_logic := '0';
    --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

begin
	-- I/O Connections assignments

	M_AXIS_TVALID	<= axis_tvalid_delay;
	M_AXIS_TDATA	<= stream_data_out;
	M_AXIS_TLAST	<= axis_tlast_delay;
	M_AXIS_TSTRB	<= (others => '1');
	
	--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	-- llenado del fifo circular
	--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    -- FIFO circular process
    
    --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	-- Control state machine implementation                                               
	process(M_AXIS_ACLK)                                                                        
	begin                                                                                       
	  if (rising_edge (M_AXIS_ACLK)) then                                                       
	    if(M_AXIS_ARESETN = '0') then                                                           
	      -- Synchronous reset (active low)                                                     
	      mst_exec_state      <= IDLE;                                                          
	      count <= (others => '0');       
	      --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	      contadorfifo <= 0;
	      read_pointer <= 0;
	      --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                                                      
	    else                                                                                    
	      case (mst_exec_state) is                                                              
	        when IDLE     =>                                                                    
	          -- The slave starts accepting tdata when                                          
	          -- there tvalid is asserted to mark the                                           
	          -- presence of valid streaming data                                               
	          --if (count = "0")then       
	          --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	          contadorfifo <= 0;
	          read_pointer <= 0;
	          activar <= '0';
	          
	          -- informacion del buffer circular
              triggered <= '0';
              capture_done <= '0';
	          --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                                                     
	          mst_exec_state <= INIT_COUNTER;                                                 
	          --else                                                                              
	          --  mst_exec_state <= IDLE;                                                         
	          --end if;                                                                           
	                                                                                            
	          when INIT_COUNTER =>                                                              
	            -- This state is responsible to wait for user defined C_M_START_COUNT           
	            -- number of clock cycles.    
	            --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	            
                if (activar = '0' and clk_Adc = '1') then
	                activar <= '1';
                    if (triggered = '0') then
                        dfifo(write_ptr) <= data_in;
                        write_ptr <= (write_ptr + 1) mod BUFFER_SIZE;
                        if trg_adc = '1' then
                            triggered <= '1';
                            --capture_done <= false;
                            read_ptr <= (write_ptr - PRE_TRIGGER_SIZE + BUFFER_SIZE) mod BUFFER_SIZE;
                        end if;
                    end if;
                    if (triggered = '1' and capture_done = '0') then
                        dfifo(write_ptr) <= data_in;
                        write_ptr <= (write_ptr + 1) mod BUFFER_SIZE;
                        if write_ptr = read_ptr then
                            capture_done <= '1';
                            mst_exec_state  <= SEND_STREAM; 
                        end if;
                    end if;
                elsif clk_adc = '0' then
	               activar <= '0';
                end if;
	            
	            act <= '0';   
	            
	            if (first_time = '1') then
	                 mst_exec_state  <= SEND_STREAM; 
	                 first_time <= '0';
	            end if;
	            
	            --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                                                  
--	            if ( count = std_logic_vector(to_unsigned((C_M_START_COUNT - 1), WAIT_COUNT_BITS))) then
--	              mst_exec_state  <= SEND_STREAM;                                               
--	            else                                                                            
--	              count <= std_logic_vector (unsigned(count) + 1);                              
--	              mst_exec_state  <= INIT_COUNTER;                                              
--	            end if;                                                                         
	                                                                                            
	        when SEND_STREAM  =>                                                                
	          -- The example design streaming master functionality starts                       
	          -- when the master drives output tdata from the FIFO and the slave                
	          -- has finished storing the S_AXIS_TDATA  
	         	            
	          --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	          axis_tvalid <= '1';
	          if (read_pointer = 0) then
	              read_ptr_int <= read_ptr;
	          end if;
	          if (read_pointer <= NUMBER_OF_OUTPUT_WORDS and M_AXIS_TREADY = '1') then
	              read_pointer <= read_pointer + 1;
	              stream_data_out <= "0000000000000000" & dfifo(read_ptr_int);
	              read_ptr_int <= (read_ptr_int + 1) mod BUFFER_SIZE;
--	              if read_ptr = write_ptr then
--                     buffer_valid <= '0'; -- Indicate end of valid buffer data
--                  end if;
	              act <= '1';
	          elsif (read_pointer > NUMBER_OF_OUTPUT_WORDS) then
	              mst_exec_state <= IDLE;
	          elsif (M_AXIS_TREADY = '0' and act = '1') then
	              mst_exec_state <= IDLE;
	          end if;
	          --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                                        
--	          if (tx_done = '1') then                                                           
--	            mst_exec_state <= IDLE;                                                         
--	          else                                                                              
--	            mst_exec_state <= SEND_STREAM;                                                  
--	          end if;                                                                           
	                                                                                            
	        when others    =>                                                                   
	          mst_exec_state <= IDLE;                                                           
	                                                                                            
	      end case;                                                                             
	    end if;                                                                                 
	  end if;                                                                                   
	end process;                                                                                


	--tvalid generation
	--axis_tvalid is asserted when the control state machine's state is SEND_STREAM and
	--number of output streaming data is less than the NUMBER_OF_OUTPUT_WORDS.
--	axis_tvalid <= '1' when ((mst_exec_state = SEND_STREAM) and (read_pointer < NUMBER_OF_OUTPUT_WORDS)) else '0';
	                                                                                               
	-- AXI tlast generation                                                                        
	-- axis_tlast is asserted number of output streaming data is NUMBER_OF_OUTPUT_WORDS-1          
	-- (0 to NUMBER_OF_OUTPUT_WORDS-1)                                                             
	axis_tlast <= '1' when (read_pointer = NUMBER_OF_OUTPUT_WORDS-1) else '0';                     
	                                                                                               
	-- Delay the axis_tvalid and axis_tlast signal by one clock cycle                              
	-- to match the latency of M_AXIS_TDATA                                                        
	process(M_AXIS_ACLK)                                                                           
	begin                                                                                          
	  if (rising_edge (M_AXIS_ACLK)) then                                                          
	    if(M_AXIS_ARESETN = '0') then                                                              
	      axis_tvalid_delay <= '0';                                                                
	      axis_tlast_delay <= '0';                                                                 
	    else                                                                                       
	      axis_tvalid_delay <= axis_tvalid;                                                        
	      axis_tlast_delay <= axis_tlast;                                                          
	    end if;                                                                                    
	  end if;                                                                                      
	end process;                                                                                   


	--read_pointer pointer

--	process(M_AXIS_ACLK)                                                       
--	begin                                                                            
--	  if (rising_edge (M_AXIS_ACLK)) then                                            
--	    if(M_AXIS_ARESETN = '0') then                                                
--	      read_pointer <= 0;                                                         
--	      tx_done  <= '0';                                                           
--	    else                                                                         
--	      if (read_pointer <= NUMBER_OF_OUTPUT_WORDS-1) then                         
--	        if (tx_en = '1') then                                                    
--	          -- read pointer is incremented after every read from the FIFO          
--	          -- when FIFO read signal is enabled.                                   
--	          read_pointer <= read_pointer + 1;                                      
--	          tx_done <= '0';                                                        
--	        end if;                                                                  
--	      elsif (read_pointer = NUMBER_OF_OUTPUT_WORDS) then                         
--	        -- tx_done is asserted when NUMBER_OF_OUTPUT_WORDS numbers of streaming data
--	        -- has been out.                                                         
--	        tx_done <= '1';                                                          
--	      end  if;                                                                   
--	    end  if;                                                                     
--	  end  if;                                                                       
--	end process;                                                                     


	--FIFO read enable generation 

--	tx_en <= M_AXIS_TREADY and axis_tvalid;                                   
	                                                                                
	-- FIFO Implementation                                                          
	                                                                                
	-- Streaming output data is read from FIFO                                      
--	  process(M_AXIS_ACLK)                                                          
--	  variable  sig_one : integer := 1;                                             
--	  begin                                                                         
--	    if (rising_edge (M_AXIS_ACLK)) then                                         
--	      if(M_AXIS_ARESETN = '0') then                                             
--	    	stream_data_out <= std_logic_vector(to_unsigned(sig_one,C_M_AXIS_TDATA_WIDTH));  
--	      elsif (tx_en = '1') then -- && M_AXIS_TSTRB(byte_index)                   
--	        stream_data_out <= std_logic_vector( to_unsigned(read_pointer,C_M_AXIS_TDATA_WIDTH) + to_unsigned(sig_one,C_M_AXIS_TDATA_WIDTH));
--	      end if;                                                                   
--	     end if;                                                                    
--	   end process;                                                                 

	-- Add user logic here

	-- User logic ends

end implementation;