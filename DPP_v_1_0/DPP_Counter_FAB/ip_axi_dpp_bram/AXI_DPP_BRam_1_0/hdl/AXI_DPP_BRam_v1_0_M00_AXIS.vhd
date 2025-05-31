library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity AXI_DPP_BRam_v1_0_M00_AXIS is
	generic (
		-- Users to add parameters here
		-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        BRAM_ADDRESS_SIZE  :  integer  :=  11; -- tamaño de la BRAM
        -- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
        dpp_clk             :  in  std_logic;
        dpp_rst             :  in  std_logic;
        dpp_amp             :  in  std_logic_vector(15 downto 0);
        dpp_evt             :  in  std_logic;
        --led_out             :  out std_logic_vector (2 downto 0);
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
end AXI_DPP_BRam_v1_0_M00_AXIS;

architecture implementation of AXI_DPP_BRam_v1_0_M00_AXIS is
	-- Total number of output data                                              
	constant NUMBER_OF_OUTPUT_WORDS : integer := 2048; --8;                                   

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
    ------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
    COMPONENT blk_dpp_mem
        PORT (
            clka   : IN   STD_LOGIC;
            ena    : IN   STD_LOGIC;
            wea    : IN   STD_LOGIC_VECTOR(0 DOWNTO 0);
            addra  : IN   STD_LOGIC_VECTOR(10 DOWNTO 0);
            dina   : IN   STD_LOGIC_VECTOR(31 DOWNTO 0);
            douta  : OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
            clkb   : IN   STD_LOGIC;
            enb    : IN   STD_LOGIC;
            web    : IN   STD_LOGIC_VECTOR(0 DOWNTO 0);
            addrb  : IN   STD_LOGIC_VECTOR(10 DOWNTO 0);
            dinb   : IN   STD_LOGIC_VECTOR(31 DOWNTO 0);
            doutb  : OUT  STD_LOGIC_VECTOR(31 DOWNTO 0) 
        );
    END COMPONENT;
    -- COMP_TAG_END ------ End COMPONENT Declaration ------------
    
    -- signals para controlar el BRAM
    signal comp_buffa_rd_data, comp_buffb_rd_data           : std_logic_vector (31 downto 0);
    signal comp_buffa_wr_data, comp_buffb_wr_data           : std_logic_vector (31 downto 0);
    signal comp_buffa_addr, comp_buffb_addr                 : std_logic_vector (10 downto 0);
    signal comp_buffa_we, comp_buffb_we                     : std_logic_vector (0 downto 0);
    
    -- typedef para los estados de la memoria
    type state_mem is ( mem_idle,
                        mem_read,
                        mem_increment,
                        mem_store,
                        mem_wait);
                        
    -- typedef para el control de deteccion
    signal prev_state, mem_exec_state    : state_mem;
    signal data_in_dpp                   : std_logic_vector (31 downto 0);
    signal data_increm                   : std_logic_vector (31 downto 0);
    signal activated                     : std_logic    := '0';
    signal detected                      : std_logic    := '0';
    
    signal con_bram                      : integer range 0 to 4096 := 0;
    signal act                           : std_logic := '0';
    signal inc                           : std_logic := '0';
    
    --signal l1, l2, l3                    : std_logic := '0';
    -- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


begin

    -- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    ------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
    bram_dpp_mem : blk_dpp_mem
        PORT MAP (
            clka   =>  dpp_clk,
            ena    =>  '1',
            wea    =>  comp_buffa_we,
            addra  =>  comp_buffa_addr,
            dina   =>  comp_buffa_wr_data,
            douta  =>  comp_buffa_rd_data,
            clkb   =>  M_AXIS_ACLK,
            enb    =>  '1',
            web    =>  comp_buffb_we,
            addrb  =>  comp_buffb_addr,
            dinb   =>  comp_buffb_wr_data,
            doutb  =>  comp_buffb_rd_data
        );
    -- INST_TAG_END ------ End INSTANTIATION Template ---------    
    -- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    -- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    -- actaulizacion de la direccion de memoria
    --comp_buffa_addr <=  dpp_amp(14 downto 15 - BRAM_ADDRESS_SIZE);
    data_in_dpp <= comp_buffa_rd_data;
    comp_buffa_wr_data <= data_increm;
    
    --led_out <= l3 & l2 & l1;
    
    -- process to assign the address    
    Assing_ADDR: process (dpp_clk, dpp_rst, dpp_amp)
    begin
        if (dpp_rst = '0') then
            if (rising_edge(dpp_clk)) then
                con_bram <= (con_bram + 1) mod NUMBER_OF_OUTPUT_WORDS;
                comp_buffa_addr <=  conv_std_logic_vector(con_bram, BRAM_ADDRESS_SIZE);               
            end if;  
        else
            comp_buffa_addr <=  dpp_amp(14 downto 15 - BRAM_ADDRESS_SIZE);
        end if;
    end process;
    
    -- process to add one more cycle to write on port A
    Sync_Proc: process (dpp_clk, dpp_rst)
    begin
        if (dpp_clk'event and dpp_clk = '1') then
            if (dpp_rst = '0') then
                prev_state <= mem_idle;
            else
                prev_state <= mem_exec_state;
            end if;        
        end if;
    end process;
    
    -- process to assign prev states
    Output_Decode: process (prev_state, dpp_rst)
    begin
        -- decode internal output signals
        if dpp_rst = '0' then
            comp_buffa_we  <= "1"; 
            inc <= '0';
        else
            if prev_state = mem_idle then
                comp_buffa_we  <= "0"; 
                inc <= '0';
                --l1 <= '1';
            elsif prev_state = mem_read then
                comp_buffa_we  <= "0"; 
                inc <= '0';
            elsif prev_state = mem_increment then
                comp_buffa_we  <= "0"; 
                inc <= '1';
            elsif prev_state = mem_store then
                comp_buffa_we  <= "1"; 
                inc <= '0';
            elsif prev_state = mem_wait then
                comp_buffa_we  <= "0"; 
                inc <= '0';
                --l1 <= '0';
            else
                comp_buffa_we  <= "0"; 
                inc <= '0';
            end if;
        end if;
    end process;
        
    -- asignacion de memoria
    Next_State_Decode: process (prev_state, dpp_amp, dpp_evt, dpp_rst)
    begin
        if (dpp_rst = '0') then
            mem_exec_state <= mem_idle;
        else
            mem_exec_state <= prev_state;    
            
            case (prev_state) is
                when mem_idle =>
                    if dpp_evt = '1' then
                        mem_exec_state <= mem_read;
                        --l3 <= '1';
                    else 
                        mem_exec_state <= mem_idle;
                    end if;
                when mem_read =>
                    mem_exec_state <= mem_increment;
                when mem_increment =>
                    mem_exec_state <= mem_store;
                when mem_store =>
                    mem_exec_state <= mem_wait;
                when mem_wait => 
                    if dpp_evt = '0' then
                        mem_exec_state <= mem_idle;
                        --l3 <= '0';
                    end if;
                when others =>
                    mem_exec_state <= mem_idle;
            end case;
        end if;
    end process;
    
    -- increment data
    Increment: process(inc, data_in_dpp, dpp_rst)
    begin
        if (dpp_rst = '0') then
            data_increm <= X"00000000"; 
            --l2 <= '0';
        elsif inc = '1' then
            data_increm <= conv_std_logic_vector(conv_integer(data_in_dpp) + 1, 32);
            --l2 <= '1';
        end if;
    end process;
    -- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    -- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
--    process (dpp_clk, dpp_rst, mem_exec_state, dpp_evt)
--    begin
--        if (dpp_rst = '0') then
--            mem_exec_state <= mem_idle;
--            --activated      <= '0';
--            --detected       <= '0';
--            --inc <= '0';            
              
--            data_in_dpp <= X"00000000";        
            
--        else
--            if (rising_edge(dpp_clk)) then
--                -- Maquina de estados para guardar los datos
--                case (mem_exec_state) is
--                    -- Estado IDLE
--                    when mem_idle =>
--                        if (dpp_evt = '1' and detected = '0') then
--                            detected <= '1';
--                            mem_exec_state <= mem_read;
--                        end if;
--                        comp_buffa_we <= "0";
                        
--                    -- Estado lectura
--                    when mem_read =>
--                        comp_buffa_addr <=  dpp_amp(14 downto 15 - BRAM_ADDRESS_SIZE);
--                        mem_exec_state <= mem_increment;
--                        inc <= '1';
                                            
--                    -- Estado incremento
--                    when mem_increment => 
--                        if (inc = '1') then
--                            data_in_dpp <= conv_std_logic_vector(conv_integer(comp_buffa_rd_data) + 1, 32);
--                            --data_increm <= conv_std_logic_vector(conv_integer(data_in_dpp) + 1, 32);
--                            inc <= '0';
--                        end if;                        
--                        mem_exec_state <= mem_store;                
                    
--                    -- Estado guardar
--                    when mem_store =>   
--                        comp_buffa_we <= "1";                     
--                        comp_buffa_wr_data <= data_in_dpp;
--                        mem_exec_state <= mem_wait;
                        
--                    when mem_wait =>
--                        comp_buffa_we <= "0";
--                        if (dpp_evt = '0') then
--                            detected <= '0';
--                            mem_exec_state <= mem_idle;
--                        end if;
                    
--                    when others =>
--                        mem_exec_state <= mem_idle;
--                end case;
--            end if;                                    
--        end if;
--    end process;     
    
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
	          act <= '0';
	          comp_buffb_we <= "0";
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
	            comp_buffb_we <= "0";
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
	              comp_buffb_addr <= conv_std_logic_vector(read_pointer, BRAM_ADDRESS_SIZE);
	              stream_data_out <= comp_buffb_rd_data;
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
