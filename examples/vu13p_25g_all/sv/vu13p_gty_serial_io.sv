// This code was automatically generated by FPGA MGT Builder
// Timestamp: 2022-03-23 13:52:30.008
// User: madorsky
// FPGA MGT builder homepage: <link>

`include "drp_interface.sv"
`include "mgt_gty_interfaces.sv"
module vu13p_gty_serial_io
(
	drp.in drp_gty_fif,
	input drpclk,
	input [31:0] refclk_p,
	input [31:0] refclk_n,
	mgt_gty_rx.in p25g [7:0],
	mgt_gty_tx.in p25g [7:0],
	output pr25g_17_mmcm_clk,
	output pr25g_16_mmcm_clk
);
	localparam quadn = 2;
	drp #(.AW(13)) drp_gty_qif [quadn-1:0]();
	drp_mux_fpga #(.N(quadn), .AW_QUAD(13)) drpm (drp_gty_qif, drp_gty_fif, drpclk);

	mgt_gty_tx mgt_gty_tx_if [quadn-1:0][3:0]();
	mgt_gty_rx mgt_gty_rx_if [quadn-1:0][3:0]();
	wire        mgt_txlatclk ;
	wire [ 3:0] mgt_txusrclk [quadn-1:0];
	wire        com_gtrefclk00 [quadn-1:0];
	wire        com_gtrefclk01 [quadn-1:0];
	wire [31:0] refclk;
	genvar gi;
	generate
		for (gi = 0; gi < quadn; gi++)
		begin: quad_loop
			GTYE4_QUAD #(.ind(gi)) GTYE4_QUAD_inst
			(
				.drp_gty_qif (drp_gty_qif [gi]),
				.drpclk (drpclk),
				.mgt_gty_tx_if (mgt_gty_tx_if [gi]),
				.mgt_gty_rx_if (mgt_gty_rx_if [gi]),
				.mgt_txlatclk               (mgt_txlatclk              ),
				.mgt_txusrclk               (mgt_txusrclk               [gi]),
				.com_gtrefclk00             (com_gtrefclk00             [gi]),
				.com_gtrefclk01             (com_gtrefclk01             [gi])
			);
		end
		for (gi = 0; gi < 32; gi++)
		begin: refclk_loop
			IBUFDS_GTE4 #
			(
				.REFCLK_EN_TX_PATH  (1'b0),
				.REFCLK_HROW_CK_SEL (2'b00),
				.REFCLK_ICNTL_RX    (2'b00)
			) 
			refclk_buf
			(
				.I     (refclk_p [gi]),
				.IB    (refclk_n [gi]),
				.CEB   (1'b0),
				.O     (refclk   [gi]),
				.ODIV2 ()
			);
		end
	endgenerate
	assign_mgt_gty_rx ari0 (mgt_gty_rx_if [0][0], p25g [0]);
	assign_mgt_gty_tx ati0 (mgt_gty_tx_if [0][0], p25g [0]);
	assign_mgt_gty_rx ari1 (mgt_gty_rx_if [0][1], p25g [1]);
	assign_mgt_gty_tx ati1 (mgt_gty_tx_if [0][1], p25g [1]);
	assign_mgt_gty_rx ari2 (mgt_gty_rx_if [0][2], p25g [2]);
	assign_mgt_gty_tx ati2 (mgt_gty_tx_if [0][2], p25g [2]);
	assign_mgt_gty_rx ari3 (mgt_gty_rx_if [0][3], p25g [3]);
	assign_mgt_gty_tx ati3 (mgt_gty_tx_if [0][3], p25g [3]);
	assign_mgt_gty_rx ari4 (mgt_gty_rx_if [1][0], p25g [4]);
	assign_mgt_gty_tx ati4 (mgt_gty_tx_if [1][0], p25g [4]);
	assign_mgt_gty_rx ari5 (mgt_gty_rx_if [1][1], p25g [5]);
	assign_mgt_gty_tx ati5 (mgt_gty_tx_if [1][1], p25g [5]);
	assign_mgt_gty_rx ari6 (mgt_gty_rx_if [1][2], p25g [6]);
	assign_mgt_gty_tx ati6 (mgt_gty_tx_if [1][2], p25g [6]);
	assign_mgt_gty_rx ari7 (mgt_gty_rx_if [1][3], p25g [7]);
	assign_mgt_gty_tx ati7 (mgt_gty_tx_if [1][3], p25g [7]);
	assign com_gtrefclk00 [0] = refclk [16]; // p25g 0
	assign com_gtrefclk00 [0] = refclk [16]; // p25g 1
	assign com_gtrefclk00 [0] = refclk [16]; // p25g 2
	assign com_gtrefclk00 [0] = refclk [16]; // p25g 3
	assign com_gtrefclk00 [1] = refclk [17]; // p25g 4
	assign com_gtrefclk00 [1] = refclk [17]; // p25g 5
	assign com_gtrefclk00 [1] = refclk [17]; // p25g 6
	assign com_gtrefclk00 [1] = refclk [17]; // p25g 7
	pr25g_mmcm pr25g_17_inst (.O(pr25g_17_mmcm_clk), .I(mgt_gty_tx_if[1][0].txoutclk));
	assign mgt_txusrclk[1][0] = pr25g_17_mmcm_clk; // p25g4
	assign mgt_txusrclk[1][1] = pr25g_17_mmcm_clk; // p25g5
	assign mgt_txusrclk[1][2] = pr25g_17_mmcm_clk; // p25g6
	assign mgt_txusrclk[1][3] = pr25g_17_mmcm_clk; // p25g7
	pr25g_mmcm pr25g_16_inst (.O(pr25g_16_mmcm_clk), .I(mgt_gty_tx_if[0][0].txoutclk));
	assign mgt_txusrclk[0][0] = pr25g_16_mmcm_clk; // p25g0
	assign mgt_txusrclk[0][1] = pr25g_16_mmcm_clk; // p25g1
	assign mgt_txusrclk[0][2] = pr25g_16_mmcm_clk; // p25g2
	assign mgt_txusrclk[0][3] = pr25g_16_mmcm_clk; // p25g3
endmodule
