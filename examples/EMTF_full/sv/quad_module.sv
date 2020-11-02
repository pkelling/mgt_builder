// This code was automatically generated by FPGA MGT Builder
// Timestamp: 2020-06-23 12:24:22.307
// User: madorsky
// FPGA MGT builder homepage: <link>

`include "drp_interface.sv"
`include "mgt_interfaces.sv"
module GTHE2_QUAD
#(parameter ind = 0)
(
	drp.in drp_qif,
	input drpclk,
	mgt_tx.in mgt_tx_if [3:0],
	mgt_rx.in mgt_rx_if [3:0],
	input  [ 3:0] mgt_gtrefclk0,
	input  [ 3:0] mgt_txusrclk,
	output        com_refclkoutmonitor,
	input         com_gtrefclk0
);
	localparam drpn = 5;
	drp #(.AW(9)) drp_if [drpn-1:0]();
	drp_mux #(.N(drpn), .AW_FPGA(12), .AW_QUAD(9)) drpm (drp_if, drp_qif, drpclk);

	wire        mgt_cplllockdetclk;
	wire        mgt_dmonitorclk;
	wire [ 3:0] mgt_qpllclk;
	wire [ 3:0] mgt_qpllrefclk;
	wire [ 3:0] mgt_rxphaligndone;
	wire [ 3:0] mgt_rxsyncallin;
	wire [ 3:0] mgt_rxusrclk;
	wire [ 3:0] mgt_rxusrclk2;
	wire [ 3:0] mgt_txusrclk2;
	wire        com_qplloutclk;
	wire        com_qplloutrefclk;
	wire        com_qplllockdetclk;
	genvar gi;
	generate
		for (gi = 0; gi < 4; gi++)
		begin: mgt_loop
			GTHE2_CHANNEL_tux  #(.qind(ind), .mind(gi)) GTHE2_CHANNEL_tux_inst
			(
				.drp_if (drp_if[gi]),
				.drpclk (drpclk),
				.mgt_tx_if (mgt_tx_if[gi]),
				.mgt_rx_if (mgt_rx_if[gi]),
				.cplllockdetclk             (mgt_cplllockdetclk        ),
				.dmonitorclk                (mgt_dmonitorclk           ),
				.gtrefclk0                  (mgt_gtrefclk0              [gi]),
				.qpllclk                    (mgt_qpllclk                [gi]),
				.qpllrefclk                 (mgt_qpllrefclk             [gi]),
				.rxphaligndone              (mgt_rxphaligndone          [gi]),
				.rxsyncallin                (mgt_rxsyncallin            [gi]),
				.rxusrclk                   (mgt_rxusrclk               [gi]),
				.rxusrclk2                  (mgt_rxusrclk2              [gi]),
				.txusrclk                   (mgt_txusrclk               [gi]),
				.txusrclk2                  (mgt_txusrclk2              [gi])
			);
		end
		for (gi = 0; gi < 1; gi++)
		begin: common_loop
	GTHE2_COMMON_tux  #(.qind(ind), .mind(gi)) GTHE2_COMMON_tux_inst
	(
		.drp_if (drp_if[gi+4]),
		.drpclk (drpclk),
		.qplloutclk                 (com_qplloutclk            ),
		.qplloutrefclk              (com_qplloutrefclk         ),
		.refclkoutmonitor           (com_refclkoutmonitor      ),
		.qplllockdetclk             (com_qplllockdetclk        ),
		.gtrefclk0                  (com_gtrefclk0             )
	);
		end
	endgenerate
	assign mgt_qpllclk[0] = com_qplloutclk;
	assign mgt_qpllclk[1] = com_qplloutclk;
	assign mgt_qpllclk[2] = com_qplloutclk;
	assign mgt_qpllclk[3] = com_qplloutclk;
	assign mgt_qpllrefclk[0] = com_qplloutrefclk;
	assign mgt_qpllrefclk[1] = com_qplloutrefclk;
	assign mgt_qpllrefclk[2] = com_qplloutrefclk;
	assign mgt_qpllrefclk[3] = com_qplloutrefclk;
	assign mgt_dmonitorclk = drpclk;
	assign mgt_cplllockdetclk = drpclk;
	assign mgt_rxsyncallin = mgt_rxphaligndone;
	assign mgt_rxusrclk[0] = mgt_rx_if[0].rxoutclk;
	assign mgt_rxusrclk[1] = mgt_rx_if[1].rxoutclk;
	assign mgt_rxusrclk[2] = mgt_rx_if[2].rxoutclk;
	assign mgt_rxusrclk[3] = mgt_rx_if[3].rxoutclk;
	assign mgt_txusrclk2 = mgt_txusrclk;
	assign mgt_rxusrclk2 = mgt_rxusrclk;
	assign com_qplllockdetclk = drpclk;
endmodule
