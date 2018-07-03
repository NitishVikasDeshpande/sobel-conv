library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;
 
entity example_file_io_tb is
 
end example_file_io_tb;
 
 
architecture behave of example_file_io_tb is
 
  -----------------------------------------------------------------------------
  -- Declare the Component Under Test
  -----------------------------------------------------------------------------
  
 
 
  -----------------------------------------------------------------------------
  -- Testbench Internal Signals
  -----------------------------------------------------------------------------
  file file_VECTORS : text;
  file file_RESULTS : text;
 
  constant c_WIDTH : natural := 8;
  signal test: std_logic;
  
  
  
   
begin
 
  -----------------------------------------------------------------------------
  -- Instantiate and Map UUT
  -----------------------------------------------------------------------------
  
      
 
 
  ---------------------------------------------------------------------------
  -- This procedure reads the file input_vectors.txt which is located in the
  -- simulation project area.
  -- It will read the data in and send it to the ripple-adder component
  -- to perform the operations.  The result is written to the
  -- output_results.txt file, located in the same directory.
  ---------------------------------------------------------------------------
  process
    variable v_ILINE     : line;
    variable v_OLINE     : line;
    variable vector: std_logic_vector(c_WIDTH-1 downto 0);
    --variable test : character;
    variable v_SPACE     : character;
     variable vGoodRead      : boolean := true;
     variable testing : std_logic :='1';
     
  begin
 
    file_open(file_VECTORS, "a.txt",  read_mode);
    file_open(file_RESULTS, "c.txt", write_mode);
     --test <= testing;
    while not endfile(file_VECTORS) loop
        test <= '0';
      readline(file_VECTORS, v_ILINE);
            --WHILE ( r_ADD_TERM1 /= "UUUU") LOOP
            while (vGoodRead ) loop
            read(v_ILINE, vector, vGoodRead);
            read(v_ILINE, v_SPACE); 
            --read(v_ILINE, test, vGoodRead);
        
 
      
        wait for 1 ns;
        if (vGoodRead = true ) then
 
            test <= '0';
        
            write(v_OLINE, vector);
            write(v_OLINE, v_SPACE);
            end if;
              
            END LOOP;
            
            vGoodRead := true;
        
      writeline(file_RESULTS, v_OLINE);
        end loop;
    
 
    file_close(file_VECTORS);
    file_close(file_RESULTS);
     
    wait;
  end process;
 
end behave;