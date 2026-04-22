// Memories are modeled by extedning uvm_mem class. The register model treast memories as regios or memory address ranges where access can take place. Unlike registers memories are not stored because of the workstation memory overhead involved.

class mem_1_model extends uvm_mem;
  `uvm_object_utils(mem_1_model)
  
  function new (string name = "mem_1_model");
    super.new(name, 8'h8, 32, "RW", UUVM_NO_COVERAGE);
  endfunction
  
  /*
  Memory Contstructor
  function new (string name_of_mem,
  				longint unsigend size of the memory,
                int unsigned width or memory,
                string access type,
                int has covergae or not)
  */
endclass
