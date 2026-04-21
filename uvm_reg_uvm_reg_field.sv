class mem_ctrl_reg extends uvm_reg;
  // This register is of 32 bits
  `uvm_object_utils(mem_ctrl_reg)
  
  rand uvm_reg_field rd;
  rand uvm_reg_field wr;
  rand uvm_reg_field addr;
  uvm_reg_field reserved_1;
  uvm_reg_field reserved_2;
  rand uvm_reg_field wr_en;
  rand uvm_reg_field rd_en;
  rand uvm_reg_field mem_en;
  rand uvm_reg_field mem_clk_en;
  
  function new(string name = "mem_ctrl_reg");
    super.new(name, 14, UVM_NO_COVERAGE);
  endfunction
  
  virtual function void build();
    rd = uvm_reg_field::type_id::create("rd");
    wr = uvm_reg_field::type_id::create("wr");
    addr = uvm_reg_field::type_id::create("addr");
    reserved_1 = uvm_reg_field::type_id::create("reserved_1");
    reserved_2 = uvm_reg_field::type_id::create("reserved_2");
    wr_en = uvm_reg_field::type_id::create("wr_en");
    rd_en = uvm_reg_field::type_id::create("rd_en");
    mem_en = uvm_reg_field::type_id::create("mem_en");
    mem_clk_en = uvm_reg_field::type_id::create("mem_clk_en");
    
    rd.configure(this, 1, 0, "RW", 0, 1'b0, 1, 1, 0);
    wr.configure(this, 1, 1, "RW", 0, 1'b0, 1, 1, 0);
    addr.configure(this, 8, 2, "RW", 0, 8'h0, 1, 1, 0);
    reserved_1.configure(this, 4, 10, "RO", 0, 4'h0, 1, 0, 0);
    reserved_1.configure(this, 4, 14, "RO", 0, 4'h0, 1, 0, 0);
    rd_en.configure(this, 1, 15, "RW", 0, 1'b0, 1, 1, 0);
    wr_en.configure(this, 1, 16, "RW", 0, 1'b0, 1, 1, 0);
    mem_en.configure(this, 1, 17, "RW", 0, 1'b0, 1, 1, 0);
    mem_clk_en.configure(this, 1, 18, "RW", 0, 1'b0, 1, 1, 0);
  endfunction
  

endclass
