library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity AXILite_DPP_Counter_v1_0_M00_AXIS is
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
        -- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
		-- Se agregan los puertos necesarios para el funcionamiento del IP
		dpp_clk    :  in  std_logic;
        dpp_rst    :  in  std_logic;
        -- ap_start   :  in  std_logic;
        dpp_in     :  in  std_logic_vector (31 downto 0);
        dpp_out    :  out std_logic_vector (31 downto 0);
        --  comparators
        dpp_cmp_l     :  in  std_logic_vector (31 downto 0);
        dpp_cmp_h     :  in  std_logic_vector (31 downto 0);
        -- fifo_out   :  out std_logic_vector (31 downto 0);		
		-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
end AXILite_DPP_Counter_v1_0_M00_AXIS;

architecture implementation of AXILite_DPP_Counter_v1_0_M00_AXIS is
	-- Total number of output data 
	--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	-- Este valor se edita para variar el tama�o del buffer de salida                                             
	constant NUMBER_OF_OUTPUT_WORDS : integer := 512; --11 bits --8; 
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
	
	-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    -- Senales agregadas para funciones del fifo
    signal en_rissing, en_falling   : std_logic;
    -- signal counted                  : std_logic;
    signal counter                  : integer      := 0;
    signal in_sample                : integer      := 0;
    signal out_counter              : std_logic_vector (31 downto 0);
    signal diff                     : integer      := 0;
    
    -- buffer fifo
    type buffer_fifo is array (integer range <>) of integer;
    signal fifoy           : buffer_fifo(0 to NUMBER_OF_OUTPUT_WORDS);
    signal comp_buff       : buffer_fifo(0 to NUMBER_OF_OUTPUT_WORDS);
    signal comparator      : integer     := 50000; -- 32767;  -- comparator level
    signal comp_high       : integer     := 2000000;  -- comparator level
    
    signal act   : std_logic;
    
    signal con_bram        : integer := 0;
    -- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    
    -- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    -- Adicion de componente memoria
    COMPONENT comp_buff_ram
        PORT (
            clka : IN STD_LOGIC;
            ena : IN STD_LOGIC;
            wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
            addra : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
            dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0) 
        );
    END COMPONENT;
    
    -- signals para controlar el BRAM
    signal comp_buff_rd_data                : STD_LOGIC_VECTOR(31 DOWNTO 0);
    signal comp_buff_addr                   : STD_LOGIC_VECTOR(8 DOWNTO 0);
    signal comp_buff_we                     : STD_LOGIC_VECTOR(0 DOWNTO 0);
    signal comp_buff_wr_data                : STD_LOGIC_VECTOR(31 DOWNTO 0);
    -- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

begin

    -- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    your_instance_name : comp_buff_ram
  PORT MAP (
    clka => dpp_clk,
    ena => '1',
    wea => comp_buff_we,
    addra => comp_buff_addr,
    dina => comp_buff_wr_data,
    douta => comp_buff_rd_data
  );
    
    -- Process made for functionship of the DPP
    comparator <= conv_integer(dpp_cmp_l);
    comp_high  <= conv_integer(dpp_cmp_h);
    
       
    -- counter activated    
    process (dpp_clk, dpp_rst)
    variable comp_diff     : integer    :=  (comp_high - comparator) / NUMBER_OF_OUTPUT_WORDS;
    variable counted : boolean := false;
    begin
        if (dpp_rst = '0') then
            -- reset everything
            en_rissing  <= '0';
            en_falling  <= '1';  -- it is prepared to count
            in_sample   <= 0;
            diff <= 0;
            comp_buff_we <= conv_std_logic_vector(1,1);
                                    
            for i in 0 to NUMBER_OF_OUTPUT_WORDS-1 loop
                fifoy(i) <= 0;
            end loop;
            
            if rising_edge(dpp_clk) then
                if (con_bram < NUMBER_OF_OUTPUT_WORDS) then                
                    comp_buff_addr <= conv_std_logic_vector(con_bram,9);
                    comp_buff_wr_data <= conv_std_logic_vector(con_bram*comp_diff + comparator,32);
                    con_bram <= con_bram + 1;
                else
                    con_bram <= 0;
                end if;
            end if;
            
            counter     <= 0; 
            out_counter <= conv_std_logic_vector(counter, 32);
        else
            
            comp_buff_we <= conv_std_logic_vector(0,1);
                                    
            if rising_edge(dpp_clk) then
                
                if (con_bram < NUMBER_OF_OUTPUT_WORDS) then                
                    comp_buff_addr <= conv_std_logic_vector(con_bram,9);
                    comp_buff(con_bram) <= conv_integer(comp_buff_rd_data);
                    con_bram <= con_bram + 1;
                else
                    con_bram <= 0;
                end if;
            
            
                in_sample <= conv_integer(signed(dpp_in)); 
                diff <= conv_integer(signed(dpp_in)) - in_sample;
                -- verify if there is a rissing edge
                if (in_sample > comparator) then
                    if (en_rissing = '0') and (en_falling = '1') then
                        en_rissing <= '1';
                        en_falling <= '0';
                        counted := false;
                        -- increase the counter
                        counter <= counter + 1; 
                        out_counter <= conv_std_logic_vector(counter, 32);
                                                
                    end if;
                end if;
                -- verify if there is a falling edge
                if (in_sample <= comparator) then
                    if (en_rissing = '1') and (en_falling = '0') then
                        en_rissing <= '0';
                        en_falling <= '1';
                    end if;
                end if;
                
                -- discriminator
                if (in_sample > comparator) and (diff < 0) then 
                    for i in 0 to NUMBER_OF_OUTPUT_WORDS-1 loop                    
                        if (in_sample > comp_buff(i)) then
                            if not counted then
                                fifoy(i) <= fifoy(i) + 1; --conv_integer(comp_buff_rd_data);
                                counted := true;
                            end if;
                        end if;
                    end loop;  
                end if;                
            end if;
        end if;
    end process;
    
    dpp_out <= out_counter;
    
    -- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	-- I/O Connections assignments

	M_AXIS_TVALID	<= axis_tvalid_delay;
	M_AXIS_TDATA	<= stream_data_out;
	M_AXIS_TLAST	<= axis_tlast_delay;
	M_AXIS_TSTRB	<= (others => '1');


	-- Control state machine implementation                                               
	process(M_AXIS_ACLK)                                                                        
	begin                                                                                       
	  if (rising_edge (M_AXIS_ACLK)) then                                                       
	    if(M_AXIS_ARESETN = '0') then                                                           
	      -- Synchronous reset (active low)                                                     
	      mst_exec_state      <= IDLE;                                                          
	      count <= (others => '0');       
	      --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	      --contadorfifo <= 0;
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
	          --contadorfifo <= 0;
	          read_pointer <= 0;
	          --activar <= '0';
	          --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                                                     
	          mst_exec_state <= INIT_COUNTER;                                                 
	          --else                                                                              
	          --  mst_exec_state <= IDLE;                                                         
	          --end if;                                                                           
	                                                                                            
	          when INIT_COUNTER =>                                                              
	            -- This state is responsible to wait for user defined C_M_START_COUNT           
	            -- number of clock cycles.    
	            --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
--	            if (activar = '0' and clk_dpp = '1') then
--	               activar <= '1';
--	               if (contadorfifo < NUMBER_OF_OUTPUT_WORDS + 5) then
--	                   dfifo(contadorfifo) <= data_in;
--	                   contadorfifo <= contadorfifo + 1;
--	                   contar <= contar + 1;
--	               else
--	                   mst_exec_state  <= SEND_STREAM; 
--	               end if;
--	            elsif clk_adc = '0' then
--	               activar <= '0';
--	            end if;
	            act <= '0';
	            mst_exec_state  <= SEND_STREAM;
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
	          if (read_pointer <= NUMBER_OF_OUTPUT_WORDS and M_AXIS_TREADY = '1') then
	              read_pointer <= read_pointer + 1;
	              stream_data_out <= conv_std_logic_vector(fifoy(read_pointer),32);
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
