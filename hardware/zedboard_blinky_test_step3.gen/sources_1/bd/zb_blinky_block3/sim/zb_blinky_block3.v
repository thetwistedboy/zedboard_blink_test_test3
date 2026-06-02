//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Mon Jun  1 20:18:37 2026
//Host        : jkelleylaptop running 64-bit Linux Mint 22.3
//Command     : generate_target zb_blinky_block3.bd
//Design      : zb_blinky_block3
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "zb_blinky_block3,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=zb_blinky_block3,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=11,numReposBlks=11,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=1,bdsource=USER,da_axi4_cnt=6,da_board_cnt=2,da_clkrst_cnt=13,da_ps7_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "zb_blinky_block3.hwdef" *) 
module zb_blinky_block3
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    cmps2_iic_scl_i,
    cmps2_iic_scl_o,
    cmps2_iic_scl_t,
    cmps2_iic_sda_i,
    cmps2_iic_sda_o,
    cmps2_iic_sda_t,
    count_en,
    esp32_pmod_pin10_i,
    esp32_pmod_pin10_o,
    esp32_pmod_pin10_t,
    esp32_pmod_pin1_i,
    esp32_pmod_pin1_o,
    esp32_pmod_pin1_t,
    esp32_pmod_pin2_i,
    esp32_pmod_pin2_o,
    esp32_pmod_pin2_t,
    esp32_pmod_pin3_i,
    esp32_pmod_pin3_o,
    esp32_pmod_pin3_t,
    esp32_pmod_pin4_i,
    esp32_pmod_pin4_o,
    esp32_pmod_pin4_t,
    esp32_pmod_pin7_i,
    esp32_pmod_pin7_o,
    esp32_pmod_pin7_t,
    esp32_pmod_pin8_i,
    esp32_pmod_pin8_o,
    esp32_pmod_pin8_t,
    esp32_pmod_pin9_i,
    esp32_pmod_pin9_o,
    esp32_pmod_pin9_t,
    led,
    reset_n);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cmps2_iic SCL_I" *) (* X_INTERFACE_MODE = "Master" *) input cmps2_iic_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cmps2_iic SCL_O" *) output cmps2_iic_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cmps2_iic SCL_T" *) output cmps2_iic_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cmps2_iic SDA_I" *) input cmps2_iic_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cmps2_iic SDA_O" *) output cmps2_iic_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 cmps2_iic SDA_T" *) output cmps2_iic_sda_t;
  input count_en;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 esp32_pmod PIN10_I" *) (* X_INTERFACE_MODE = "Master" *) input esp32_pmod_pin10_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 esp32_pmod PIN10_O" *) output esp32_pmod_pin10_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 esp32_pmod PIN10_T" *) output esp32_pmod_pin10_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 esp32_pmod PIN1_I" *) input esp32_pmod_pin1_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 esp32_pmod PIN1_O" *) output esp32_pmod_pin1_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 esp32_pmod PIN1_T" *) output esp32_pmod_pin1_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 esp32_pmod PIN2_I" *) input esp32_pmod_pin2_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 esp32_pmod PIN2_O" *) output esp32_pmod_pin2_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 esp32_pmod PIN2_T" *) output esp32_pmod_pin2_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 esp32_pmod PIN3_I" *) input esp32_pmod_pin3_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 esp32_pmod PIN3_O" *) output esp32_pmod_pin3_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 esp32_pmod PIN3_T" *) output esp32_pmod_pin3_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 esp32_pmod PIN4_I" *) input esp32_pmod_pin4_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 esp32_pmod PIN4_O" *) output esp32_pmod_pin4_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 esp32_pmod PIN4_T" *) output esp32_pmod_pin4_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 esp32_pmod PIN7_I" *) input esp32_pmod_pin7_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 esp32_pmod PIN7_O" *) output esp32_pmod_pin7_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 esp32_pmod PIN7_T" *) output esp32_pmod_pin7_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 esp32_pmod PIN8_I" *) input esp32_pmod_pin8_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 esp32_pmod PIN8_O" *) output esp32_pmod_pin8_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 esp32_pmod PIN8_T" *) output esp32_pmod_pin8_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 esp32_pmod PIN9_I" *) input esp32_pmod_pin9_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 esp32_pmod PIN9_O" *) output esp32_pmod_pin9_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 esp32_pmod PIN9_T" *) output esp32_pmod_pin9_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LED DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LED, LAYERED_METADATA undef" *) output [7:0]led;
  input reset_n;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [3:0]axi_gpio_0_gpio_io_o;
  wire [8:0]axi_smc_M00_AXI_ARADDR;
  wire axi_smc_M00_AXI_ARREADY;
  wire axi_smc_M00_AXI_ARVALID;
  wire [8:0]axi_smc_M00_AXI_AWADDR;
  wire axi_smc_M00_AXI_AWREADY;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
  wire axi_smc_M00_AXI_BVALID;
  wire [31:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [31:0]axi_smc_M00_AXI_WDATA;
  wire axi_smc_M00_AXI_WREADY;
  wire [3:0]axi_smc_M00_AXI_WSTRB;
  wire axi_smc_M00_AXI_WVALID;
  wire [8:0]axi_smc_M01_AXI_ARADDR;
  wire axi_smc_M01_AXI_ARREADY;
  wire axi_smc_M01_AXI_ARVALID;
  wire [8:0]axi_smc_M01_AXI_AWADDR;
  wire axi_smc_M01_AXI_AWREADY;
  wire axi_smc_M01_AXI_AWVALID;
  wire axi_smc_M01_AXI_BREADY;
  wire [1:0]axi_smc_M01_AXI_BRESP;
  wire axi_smc_M01_AXI_BVALID;
  wire [31:0]axi_smc_M01_AXI_RDATA;
  wire axi_smc_M01_AXI_RREADY;
  wire [1:0]axi_smc_M01_AXI_RRESP;
  wire axi_smc_M01_AXI_RVALID;
  wire [31:0]axi_smc_M01_AXI_WDATA;
  wire axi_smc_M01_AXI_WREADY;
  wire [3:0]axi_smc_M01_AXI_WSTRB;
  wire axi_smc_M01_AXI_WVALID;
  wire [8:0]axi_smc_M02_AXI_ARADDR;
  wire axi_smc_M02_AXI_ARREADY;
  wire axi_smc_M02_AXI_ARVALID;
  wire [8:0]axi_smc_M02_AXI_AWADDR;
  wire axi_smc_M02_AXI_AWREADY;
  wire axi_smc_M02_AXI_AWVALID;
  wire axi_smc_M02_AXI_BREADY;
  wire [1:0]axi_smc_M02_AXI_BRESP;
  wire axi_smc_M02_AXI_BVALID;
  wire [31:0]axi_smc_M02_AXI_RDATA;
  wire axi_smc_M02_AXI_RREADY;
  wire [1:0]axi_smc_M02_AXI_RRESP;
  wire axi_smc_M02_AXI_RVALID;
  wire [31:0]axi_smc_M02_AXI_WDATA;
  wire axi_smc_M02_AXI_WREADY;
  wire [3:0]axi_smc_M02_AXI_WSTRB;
  wire axi_smc_M02_AXI_WVALID;
  wire [3:0]axi_smc_M03_AXI_ARADDR;
  wire axi_smc_M03_AXI_ARREADY;
  wire axi_smc_M03_AXI_ARVALID;
  wire [3:0]axi_smc_M03_AXI_AWADDR;
  wire axi_smc_M03_AXI_AWREADY;
  wire axi_smc_M03_AXI_AWVALID;
  wire axi_smc_M03_AXI_BREADY;
  wire [1:0]axi_smc_M03_AXI_BRESP;
  wire axi_smc_M03_AXI_BVALID;
  wire [31:0]axi_smc_M03_AXI_RDATA;
  wire axi_smc_M03_AXI_RREADY;
  wire [1:0]axi_smc_M03_AXI_RRESP;
  wire axi_smc_M03_AXI_RVALID;
  wire [31:0]axi_smc_M03_AXI_WDATA;
  wire axi_smc_M03_AXI_WREADY;
  wire [3:0]axi_smc_M03_AXI_WSTRB;
  wire axi_smc_M03_AXI_WVALID;
  wire cmps2_iic_scl_i;
  wire cmps2_iic_scl_o;
  wire cmps2_iic_scl_t;
  wire cmps2_iic_sda_i;
  wire cmps2_iic_sda_o;
  wire cmps2_iic_sda_t;
  wire count_en;
  wire esp32_pmod_pin10_i;
  wire esp32_pmod_pin10_o;
  wire esp32_pmod_pin10_t;
  wire esp32_pmod_pin1_i;
  wire esp32_pmod_pin1_o;
  wire esp32_pmod_pin1_t;
  wire esp32_pmod_pin2_i;
  wire esp32_pmod_pin2_o;
  wire esp32_pmod_pin2_t;
  wire esp32_pmod_pin3_i;
  wire esp32_pmod_pin3_o;
  wire esp32_pmod_pin3_t;
  wire esp32_pmod_pin4_i;
  wire esp32_pmod_pin4_o;
  wire esp32_pmod_pin4_t;
  wire esp32_pmod_pin7_i;
  wire esp32_pmod_pin7_o;
  wire esp32_pmod_pin7_t;
  wire esp32_pmod_pin8_i;
  wire esp32_pmod_pin8_o;
  wire esp32_pmod_pin8_t;
  wire esp32_pmod_pin9_i;
  wire esp32_pmod_pin9_o;
  wire esp32_pmod_pin9_t;
  wire [3:0]ilconcat_0_dout;
  wire [1:0]ilconstant_0_dout;
  wire [0:0]ilslice_0_Dout;
  wire [0:0]ilslice_1_Dout;
  wire [7:0]led;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_RESET0_N;
  wire [31:0]processing_system7_0_M_AXI_GP0_ARADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_ARID;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARQOS;
  wire processing_system7_0_M_AXI_GP0_ARREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARSIZE;
  wire processing_system7_0_M_AXI_GP0_ARVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_AWADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_AWID;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWQOS;
  wire processing_system7_0_M_AXI_GP0_AWREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWSIZE;
  wire processing_system7_0_M_AXI_GP0_AWVALID;
  wire [11:0]processing_system7_0_M_AXI_GP0_BID;
  wire processing_system7_0_M_AXI_GP0_BREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_BRESP;
  wire processing_system7_0_M_AXI_GP0_BVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_RDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_RID;
  wire processing_system7_0_M_AXI_GP0_RLAST;
  wire processing_system7_0_M_AXI_GP0_RREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_RRESP;
  wire processing_system7_0_M_AXI_GP0_RVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_WDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_WID;
  wire processing_system7_0_M_AXI_GP0_WLAST;
  wire processing_system7_0_M_AXI_GP0_WREADY;
  wire [3:0]processing_system7_0_M_AXI_GP0_WSTRB;
  wire processing_system7_0_M_AXI_GP0_WVALID;
  wire reset_n;
  wire [0:0]rst_ps7_0_100M_peripheral_aresetn;

  zb_blinky_block3_PmodESP32_0_0 PmodESP32_0
       (.AXI_LITE_GPIO_araddr(axi_smc_M02_AXI_ARADDR),
        .AXI_LITE_GPIO_arready(axi_smc_M02_AXI_ARREADY),
        .AXI_LITE_GPIO_arvalid(axi_smc_M02_AXI_ARVALID),
        .AXI_LITE_GPIO_awaddr(axi_smc_M02_AXI_AWADDR),
        .AXI_LITE_GPIO_awready(axi_smc_M02_AXI_AWREADY),
        .AXI_LITE_GPIO_awvalid(axi_smc_M02_AXI_AWVALID),
        .AXI_LITE_GPIO_bready(axi_smc_M02_AXI_BREADY),
        .AXI_LITE_GPIO_bresp(axi_smc_M02_AXI_BRESP),
        .AXI_LITE_GPIO_bvalid(axi_smc_M02_AXI_BVALID),
        .AXI_LITE_GPIO_rdata(axi_smc_M02_AXI_RDATA),
        .AXI_LITE_GPIO_rready(axi_smc_M02_AXI_RREADY),
        .AXI_LITE_GPIO_rresp(axi_smc_M02_AXI_RRESP),
        .AXI_LITE_GPIO_rvalid(axi_smc_M02_AXI_RVALID),
        .AXI_LITE_GPIO_wdata(axi_smc_M02_AXI_WDATA),
        .AXI_LITE_GPIO_wready(axi_smc_M02_AXI_WREADY),
        .AXI_LITE_GPIO_wstrb(axi_smc_M02_AXI_WSTRB),
        .AXI_LITE_GPIO_wvalid(axi_smc_M02_AXI_WVALID),
        .AXI_LITE_UART_araddr(axi_smc_M03_AXI_ARADDR),
        .AXI_LITE_UART_arready(axi_smc_M03_AXI_ARREADY),
        .AXI_LITE_UART_arvalid(axi_smc_M03_AXI_ARVALID),
        .AXI_LITE_UART_awaddr(axi_smc_M03_AXI_AWADDR),
        .AXI_LITE_UART_awready(axi_smc_M03_AXI_AWREADY),
        .AXI_LITE_UART_awvalid(axi_smc_M03_AXI_AWVALID),
        .AXI_LITE_UART_bready(axi_smc_M03_AXI_BREADY),
        .AXI_LITE_UART_bresp(axi_smc_M03_AXI_BRESP),
        .AXI_LITE_UART_bvalid(axi_smc_M03_AXI_BVALID),
        .AXI_LITE_UART_rdata(axi_smc_M03_AXI_RDATA),
        .AXI_LITE_UART_rready(axi_smc_M03_AXI_RREADY),
        .AXI_LITE_UART_rresp(axi_smc_M03_AXI_RRESP),
        .AXI_LITE_UART_rvalid(axi_smc_M03_AXI_RVALID),
        .AXI_LITE_UART_wdata(axi_smc_M03_AXI_WDATA),
        .AXI_LITE_UART_wready(axi_smc_M03_AXI_WREADY),
        .AXI_LITE_UART_wstrb(axi_smc_M03_AXI_WSTRB),
        .AXI_LITE_UART_wvalid(axi_smc_M03_AXI_WVALID),
        .Pmod_out_pin10_i(esp32_pmod_pin10_i),
        .Pmod_out_pin10_o(esp32_pmod_pin10_o),
        .Pmod_out_pin10_t(esp32_pmod_pin10_t),
        .Pmod_out_pin1_i(esp32_pmod_pin1_i),
        .Pmod_out_pin1_o(esp32_pmod_pin1_o),
        .Pmod_out_pin1_t(esp32_pmod_pin1_t),
        .Pmod_out_pin2_i(esp32_pmod_pin2_i),
        .Pmod_out_pin2_o(esp32_pmod_pin2_o),
        .Pmod_out_pin2_t(esp32_pmod_pin2_t),
        .Pmod_out_pin3_i(esp32_pmod_pin3_i),
        .Pmod_out_pin3_o(esp32_pmod_pin3_o),
        .Pmod_out_pin3_t(esp32_pmod_pin3_t),
        .Pmod_out_pin4_i(esp32_pmod_pin4_i),
        .Pmod_out_pin4_o(esp32_pmod_pin4_o),
        .Pmod_out_pin4_t(esp32_pmod_pin4_t),
        .Pmod_out_pin7_i(esp32_pmod_pin7_i),
        .Pmod_out_pin7_o(esp32_pmod_pin7_o),
        .Pmod_out_pin7_t(esp32_pmod_pin7_t),
        .Pmod_out_pin8_i(esp32_pmod_pin8_i),
        .Pmod_out_pin8_o(esp32_pmod_pin8_o),
        .Pmod_out_pin8_t(esp32_pmod_pin8_t),
        .Pmod_out_pin9_i(esp32_pmod_pin9_i),
        .Pmod_out_pin9_o(esp32_pmod_pin9_o),
        .Pmod_out_pin9_t(esp32_pmod_pin9_t),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_aresetn(rst_ps7_0_100M_peripheral_aresetn));
  zb_blinky_block3_axi_gpio_0_0 axi_gpio_0
       (.gpio_io_i(ilconcat_0_dout),
        .gpio_io_o(axi_gpio_0_gpio_io_o),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(axi_smc_M00_AXI_ARADDR),
        .s_axi_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .s_axi_arready(axi_smc_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M00_AXI_AWADDR),
        .s_axi_awready(axi_smc_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_M00_AXI_AWVALID),
        .s_axi_bready(axi_smc_M00_AXI_BREADY),
        .s_axi_bresp(axi_smc_M00_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M00_AXI_BVALID),
        .s_axi_rdata(axi_smc_M00_AXI_RDATA),
        .s_axi_rready(axi_smc_M00_AXI_RREADY),
        .s_axi_rresp(axi_smc_M00_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M00_AXI_RVALID),
        .s_axi_wdata(axi_smc_M00_AXI_WDATA),
        .s_axi_wready(axi_smc_M00_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M00_AXI_WVALID));
  zb_blinky_block3_axi_iic_0_0 axi_iic_0
       (.s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(axi_smc_M01_AXI_ARADDR),
        .s_axi_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .s_axi_arready(axi_smc_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M01_AXI_AWADDR),
        .s_axi_awready(axi_smc_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_M01_AXI_AWVALID),
        .s_axi_bready(axi_smc_M01_AXI_BREADY),
        .s_axi_bresp(axi_smc_M01_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M01_AXI_BVALID),
        .s_axi_rdata(axi_smc_M01_AXI_RDATA),
        .s_axi_rready(axi_smc_M01_AXI_RREADY),
        .s_axi_rresp(axi_smc_M01_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M01_AXI_RVALID),
        .s_axi_wdata(axi_smc_M01_AXI_WDATA),
        .s_axi_wready(axi_smc_M01_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M01_AXI_WVALID),
        .scl_i(cmps2_iic_scl_i),
        .scl_o(cmps2_iic_scl_o),
        .scl_t(cmps2_iic_scl_t),
        .sda_i(cmps2_iic_sda_i),
        .sda_o(cmps2_iic_sda_o),
        .sda_t(cmps2_iic_sda_t));
  zb_blinky_block3_axi_smc_0 axi_smc
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_M00_AXI_WDATA),
        .M00_AXI_wready(axi_smc_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_M00_AXI_WVALID),
        .M01_AXI_araddr(axi_smc_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_smc_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_smc_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_smc_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_smc_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_smc_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_smc_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_smc_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_smc_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_smc_M01_AXI_RDATA),
        .M01_AXI_rready(axi_smc_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_smc_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_smc_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_smc_M01_AXI_WDATA),
        .M01_AXI_wready(axi_smc_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_smc_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_smc_M01_AXI_WVALID),
        .M02_AXI_araddr(axi_smc_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_smc_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_smc_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_smc_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_smc_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_smc_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_smc_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_smc_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_smc_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_smc_M02_AXI_RDATA),
        .M02_AXI_rready(axi_smc_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_smc_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_smc_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_smc_M02_AXI_WDATA),
        .M02_AXI_wready(axi_smc_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_smc_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_smc_M02_AXI_WVALID),
        .M03_AXI_araddr(axi_smc_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_smc_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_smc_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_smc_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_smc_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_smc_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_smc_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_smc_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_smc_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_smc_M03_AXI_RDATA),
        .M03_AXI_rready(axi_smc_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_smc_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_smc_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_smc_M03_AXI_WDATA),
        .M03_AXI_wready(axi_smc_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_smc_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_smc_M03_AXI_WVALID),
        .S00_AXI_araddr(processing_system7_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(processing_system7_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(processing_system7_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(processing_system7_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(processing_system7_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(processing_system7_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(processing_system7_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(processing_system7_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(processing_system7_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(processing_system7_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(processing_system7_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(processing_system7_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(processing_system7_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(processing_system7_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(processing_system7_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(processing_system7_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(processing_system7_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(processing_system7_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(processing_system7_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(processing_system7_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(processing_system7_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(processing_system7_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(processing_system7_0_M_AXI_GP0_BID),
        .S00_AXI_bready(processing_system7_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(processing_system7_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(processing_system7_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(processing_system7_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(processing_system7_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(processing_system7_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(processing_system7_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(processing_system7_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(processing_system7_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(processing_system7_0_M_AXI_GP0_WDATA),
        .S00_AXI_wid(processing_system7_0_M_AXI_GP0_WID),
        .S00_AXI_wlast(processing_system7_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(processing_system7_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(processing_system7_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(processing_system7_0_M_AXI_GP0_WVALID),
        .aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(rst_ps7_0_100M_peripheral_aresetn));
  assign ilconcat_0_dout = {reset_n, count_en, ilconstant_0_dout};
  assign ilconstant_0_dout = 2'h0;
  assign ilslice_0_Dout = axi_gpio_0_gpio_io_o[0:0];
  assign ilslice_1_Dout = axi_gpio_0_gpio_io_o[1:1];
  zb_blinky_block3_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr),
        .DDR_BankAddr(DDR_ba),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm),
        .DDR_DQ(DDR_dq),
        .DDR_DQS(DDR_dqs_p),
        .DDR_DQS_n(DDR_dqs_n),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .ENET0_MDIO_I(1'b0),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .GPIO_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MIO(FIXED_IO_mio),
        .M_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .M_AXI_GP0_ARADDR(processing_system7_0_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_0_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_0_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_0_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_0_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_0_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_0_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_0_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_0_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_0_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_0_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_0_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_0_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_0_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_0_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_0_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_0_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_0_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_0_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_0_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_0_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_0_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_0_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(processing_system7_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_0_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_0_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_0_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(processing_system7_0_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(processing_system7_0_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_0_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_0_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_0_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_0_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(processing_system7_0_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(processing_system7_0_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_0_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_0_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_0_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .SDIO0_WP(1'b0),
        .USB0_VBUS_PWRFAULT(1'b0));
  zb_blinky_block3_rst_ps7_0_100M_0 rst_ps7_0_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
  zb_blinky_block3_zedboard_blinky_test_0_0 zedboard_blinky_test_0
       (.clk(processing_system7_0_FCLK_CLK0),
        .count_en(ilslice_0_Dout),
        .led(led),
        .reset_n(ilslice_1_Dout));
endmodule
