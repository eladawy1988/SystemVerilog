package counter_pkg;

	int no_of_transaction;

	`include "counter_trans.sv"  // transaction
	`include "counter_gen.sv"    // generator
	`include "counter_wr_bfm.sv"  // driver
	`include "counter_wr_mon.sv" // write monior
	`include "counter_rd_mon.sv"  // read monitor
	`include "counter_rm.sv"      
	`include "counter_sb.sv"     // scoreboard
	`include "counter_env.sv"   // environemnt

endpackage
