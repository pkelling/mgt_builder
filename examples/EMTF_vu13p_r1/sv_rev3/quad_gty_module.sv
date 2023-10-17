// This code was automatically generated by FPGA MGT Builder
// Timestamp: 2023-10-16 16:50:16.77
// User: madorsky
// FPGA MGT builder homepage: https://github.com/madorskya/mgt_builder

`include "drp_interface.sv"
`include "mgt_gty_interfaces.sv"
module GTYE4_QUAD
#(parameter ind = 0)
(
	drp.in drp_gty_qif,
	input drpclk,
	mgt_gty_tx.in mgt_gty_tx_if [3:0],
	mgt_gty_rx.in mgt_gty_rx_if [3:0],
	input  [ 3:0] mgt_gtrefclk0,
	input         mgt_txlatclk,
	input  [ 3:0] mgt_txusrclk,
	input         com_gtrefclk00,
	input         com_gtrefclk01
);
	localparam drpn = 5;
	drp #(.AW(10)) drp_gty_if [drpn-1:0]();
	drp_mux #(.N(drpn), .AW_FPGA(13), .AW_QUAD(10)) drpm (drp_gty_if, drp_gty_qif, drpclk);

	wire        mgt_cplllockdetclk;
	wire        mgt_dmonitorclk;
	wire [ 3:0] mgt_qpll0clk;
	wire [ 3:0] mgt_qpll0refclk;
	wire [ 3:0] mgt_qpll1clk;
	wire [ 3:0] mgt_qpll1refclk;
	wire [ 3:0] mgt_rxphaligndone;
	wire        mgt_rxsyncallin;
	wire [ 3:0] mgt_rxusrclk;
	wire [ 3:0] mgt_rxusrclk2;
	wire [ 3:0] mgt_txusrclk2;
	wire        com_qpll0outclk;
	wire        com_qpll1outclk;
	wire        com_qpll0outrefclk;
	wire        com_qpll1outrefclk;
	wire        com_qpll0lockdetclk;
	wire        com_qpll1lockdetclk;
	genvar gi;
	generate
		for (gi = 0; gi < 4; gi++)
		begin: mgt_loop
			GTYE4_CHANNEL_tux  #(.qind(ind), .mind(gi)) GTYE4_CHANNEL_tux_inst
			(
				.drp_gty_if (drp_gty_if[gi]),
				.drpclk (drpclk),
				.mgt_gty_tx_if (mgt_gty_tx_if[gi]),
				.mgt_gty_rx_if (mgt_gty_rx_if[gi]),
				.cplllockdetclk             (mgt_cplllockdetclk        ),
				.dmonitorclk                (mgt_dmonitorclk           ),
				.gtrefclk0                  (mgt_gtrefclk0              [gi]),
				.qpll0clk                   (mgt_qpll0clk               [gi]),
				.qpll0refclk                (mgt_qpll0refclk            [gi]),
				.qpll1clk                   (mgt_qpll1clk               [gi]),
				.qpll1refclk                (mgt_qpll1refclk            [gi]),
				.rxphaligndone              (mgt_rxphaligndone          [gi]),
				.rxsyncallin                (mgt_rxsyncallin           ),
				.rxusrclk                   (mgt_rxusrclk               [gi]),
				.rxusrclk2                  (mgt_rxusrclk2              [gi]),
				.txlatclk                   (mgt_txlatclk              ),
				.txusrclk                   (mgt_txusrclk               [gi]),
				.txusrclk2                  (mgt_txusrclk2              [gi])
			);
		end
		for (gi = 0; gi < 1; gi++)
		begin: common_loop
	GTYE4_COMMON_tux  #(.qind(ind), .mind(gi)) GTYE4_COMMON_tux_inst
	(
		.drp_gty_if (drp_gty_if[gi+4]),
		.drpclk (drpclk),
		.gtrefclk00                 (com_gtrefclk00            ),
		.gtrefclk01                 (com_gtrefclk01            ),
		.qpll0outclk                (com_qpll0outclk           ),
		.qpll1outclk                (com_qpll1outclk           ),
		.qpll0outrefclk             (com_qpll0outrefclk        ),
		.qpll1outrefclk             (com_qpll1outrefclk        ),
		.qpll0lockdetclk            (com_qpll0lockdetclk       ),
		.qpll1lockdetclk            (com_qpll1lockdetclk       )
	);
		end
	endgenerate
	assign mgt_qpll0clk[0] = com_qpll0outclk;
	assign mgt_qpll0clk[1] = com_qpll0outclk;
	assign mgt_qpll0clk[2] = com_qpll0outclk;
	assign mgt_qpll0clk[3] = com_qpll0outclk;
	assign mgt_qpll1clk[0] = com_qpll1outclk;
	assign mgt_qpll1clk[1] = com_qpll1outclk;
	assign mgt_qpll1clk[2] = com_qpll1outclk;
	assign mgt_qpll1clk[3] = com_qpll1outclk;
	assign mgt_qpll0refclk[0] = com_qpll0outrefclk;
	assign mgt_qpll0refclk[1] = com_qpll0outrefclk;
	assign mgt_qpll0refclk[2] = com_qpll0outrefclk;
	assign mgt_qpll0refclk[3] = com_qpll0outrefclk;
	assign mgt_qpll1refclk[0] = com_qpll1outrefclk;
	assign mgt_qpll1refclk[1] = com_qpll1outrefclk;
	assign mgt_qpll1refclk[2] = com_qpll1outrefclk;
	assign mgt_qpll1refclk[3] = com_qpll1outrefclk;
	assign mgt_dmonitorclk = drpclk;
	assign mgt_cplllockdetclk = drpclk;
	assign mgt_rxsyncallin = mgt_rxphaligndone;
	assign mgt_rxusrclk[0] = mgt_gty_rx_if[0].rxoutclk;
	assign mgt_rxusrclk[1] = mgt_gty_rx_if[1].rxoutclk;
	assign mgt_rxusrclk[2] = mgt_gty_rx_if[2].rxoutclk;
	assign mgt_rxusrclk[3] = mgt_gty_rx_if[3].rxoutclk;
	assign mgt_txusrclk2 = mgt_txusrclk;
	assign mgt_rxusrclk2 = mgt_rxusrclk;
	assign com_qpll0lockdetclk = drpclk;
	assign com_qpll1lockdetclk = drpclk;
endmodule
