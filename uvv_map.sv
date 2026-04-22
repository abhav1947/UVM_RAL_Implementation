class ctrl_reg1 extends uvm_reg;
  `uvm_object_utils(ctrl_reg1)
  
  randc uvm_reg_field rd1_en;
  randc uvm_reg_field wr1_en;
  randc uvm_reg_field rd1;
  randc uvm_reg_field wr1;
  uvm_reg_field reserved_1;
  uvm_reg_field reserved_2;
  
  function new(name="ctrl_reg1");
    super.new(name, 8, UVM_NO_COVERAGE);
  endfunction
  
  virtual function void build();
    rd1_en = uvm_reg_field::type_id::create("rd1_en");
    wr1_en = uvm_reg_field::type_id::create("wr1_en");
    rd1 = uvm_reg_field::type_id::create("rd1");
    wr1 = uvm_reg_field::type_id::create("wr1");
    reserved_1 = uvm_reg_field::type_id::create("reserved_1");
    reserved_2 = uvm_reg_field::type_id::create("reserved_2");
    
    rd1_en.configure(this, "1", 0, "RW", 0, 1'b0, 1, 1, 0);
    wr1_en.configure(this, "1", 1, "RW", 0, 1'b0, 1, 1, 0);
    rd1.configure(this, "1", 2, "RW", 0, 1'b0, 1, 1, 0);
    wr1.configure(this, "1", 3, "RW", 0, 1'b0, 1, 1, 0);
    reserved_1.configure(this, "2", 0, "RW", 0, 1'b0, 1, 1, 0);
    reserved_2.configure(this, "1", 0, "RW", 0, 1'b0, 1, 1, 0);
  endfunction
    
endclass
