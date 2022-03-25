// This code was automatically generated by FPGA MGT Builder
// Timestamp: 2022-03-23 23:30:16.585
// User: madorsky
// FPGA MGT builder homepage: <link>

`include "mgt_gty_interfaces.sv"
module assign_mgt_gty_rx
(
	mgt_gty_rx.out dest,
	mgt_gty_rx.in src
);
	 assign dest.gtyrxn = src.gtyrxn;
	 assign dest.gtyrxp = src.gtyrxp;
	 assign src.rxctrl0 = dest.rxctrl0;
	 assign src.rxctrl1 = dest.rxctrl1;
	 assign src.rxctrl2 = dest.rxctrl2;
	 assign src.rxctrl3 = dest.rxctrl3;
	 assign src.rxdata = dest.rxdata;
	 assign src.rxdatavalid = dest.rxdatavalid;
	 assign dest.rxgearboxslip = src.rxgearboxslip;
	 assign src.rxheader = dest.rxheader;
	 assign src.rxheadervalid = dest.rxheadervalid;
	 assign dest.rxlatclk = src.rxlatclk;
	 assign src.rxoutclk = dest.rxoutclk;
	 assign dest.rxslide = src.rxslide;
	 assign src.rxstartofseq = dest.rxstartofseq;
endmodule
