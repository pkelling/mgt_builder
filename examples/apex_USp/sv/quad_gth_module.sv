// This code was automatically generated by FPGA MGT Builder
// Timestamp: 2020-11-06 10:51:33.145
// User: madorsky
// FPGA MGT builder homepage: <link>

`include "drp_interface.sv"
`include "mgt_gth_interfaces.sv"
module GTHE4_QUAD
#(parameter ind = 0)
(
	drp.in drp_gth_qif,
	input drpclk,
	mgt_gth_tx.in mgt_gth_tx_if [3:0],
	mgt_gth_rx.in mgt_gth_rx_if [3:0],
	input         mgt_txlatclk,
	input  [ 3:0] mgt_txusrclk,
	input         com_gtrefclk00,
	input         com_gtrefclk01
);
	localparam drpn = 5;
	drp #(.AW(10)) drp_gth_if [drpn-1:0]();
	drp_mux #(.N(drpn), .AW_FPGA(13), .AW_QUAD(10)) drpm (drp_gth_if, drp_gth_qif, drpclk);

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
	wire        com_qpll0lockdetclk;
	wire        com_qpll0outclk;
	wire        com_qpll0outrefclk;
	wire        com_qpll1lockdetclk;
	wire        com_qpll1outclk;
	wire        com_qpll1outrefclk;
	genvar gi;
	generate
		for (gi = 0; gi < 4; gi++)
		begin: mgt_loop
			GTHE4_CHANNEL_tux  #(.qind(ind), .mind(gi)) GTHE4_CHANNEL_tux_inst
			(
				.drp_gth_if (drp_gth_if[gi]),
				.drpclk (drpclk),
				.mgt_gth_tx_if (mgt_gth_tx_if[gi]),
				.mgt_gth_rx_if (mgt_gth_rx_if[gi]),
				.cplllockdetclk             (mgt_cplllockdetclk        ),
				.dmonitorclk                (mgt_dmonitorclk           ),
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
	GTHE4_COMMON_tux  #(.qind(ind), .mind(gi)) GTHE4_COMMON_tux_inst
	(
		.drp_gth_if (drp_gth_if[gi+4]),
		.drpclk (drpclk),
		.gtrefclk00                 (com_gtrefclk00            ),
		.gtrefclk01                 (com_gtrefclk01            ),
		.qpll0lockdetclk            (com_qpll0lockdetclk       ),
		.qpll0outclk                (com_qpll0outclk           ),
		.qpll0outrefclk             (com_qpll0outrefclk        ),
		.qpll1lockdetclk            (com_qpll1lockdetclk       ),
		.qpll1outclk                (com_qpll1outclk           ),
		.qpll1outrefclk             (com_qpll1outrefclk        )
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
	assign mgt_rxusrclk[0] = mgt_gth_rx_if[0].rxoutclk;
	assign mgt_rxusrclk[1] = mgt_gth_rx_if[1].rxoutclk;
	assign mgt_rxusrclk[2] = mgt_gth_rx_if[2].rxoutclk;
	assign mgt_rxusrclk[3] = mgt_gth_rx_if[3].rxoutclk;
	assign mgt_txusrclk2 = mgt_txusrclk;
	assign mgt_rxusrclk2 = mgt_rxusrclk;
	assign com_qpll0lockdetclk = drpclk;
	assign com_qpll1lockdetclk = drpclk;
endmodule
