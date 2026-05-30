-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Wed May 27 19:29:02 2026
-- Host        : jkelleylaptop running 64-bit Linux Mint 22.3
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zb_blinky_block3_PmodCMPS2_0_0_stub.vhdl
-- Design      : zb_blinky_block3_PmodCMPS2_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    AXI_LITE_IIC_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    AXI_LITE_IIC_arready : out STD_LOGIC;
    AXI_LITE_IIC_arvalid : in STD_LOGIC;
    AXI_LITE_IIC_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    AXI_LITE_IIC_awready : out STD_LOGIC;
    AXI_LITE_IIC_awvalid : in STD_LOGIC;
    AXI_LITE_IIC_bready : in STD_LOGIC;
    AXI_LITE_IIC_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_LITE_IIC_bvalid : out STD_LOGIC;
    AXI_LITE_IIC_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_IIC_rready : in STD_LOGIC;
    AXI_LITE_IIC_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_LITE_IIC_rvalid : out STD_LOGIC;
    AXI_LITE_IIC_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_IIC_wready : out STD_LOGIC;
    AXI_LITE_IIC_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_LITE_IIC_wvalid : in STD_LOGIC;
    I2C_Interrupt : out STD_LOGIC;
    Pmod_out_pin10_i : in STD_LOGIC;
    Pmod_out_pin10_o : out STD_LOGIC;
    Pmod_out_pin10_t : out STD_LOGIC;
    Pmod_out_pin1_i : in STD_LOGIC;
    Pmod_out_pin1_o : out STD_LOGIC;
    Pmod_out_pin1_t : out STD_LOGIC;
    Pmod_out_pin2_i : in STD_LOGIC;
    Pmod_out_pin2_o : out STD_LOGIC;
    Pmod_out_pin2_t : out STD_LOGIC;
    Pmod_out_pin3_i : in STD_LOGIC;
    Pmod_out_pin3_o : out STD_LOGIC;
    Pmod_out_pin3_t : out STD_LOGIC;
    Pmod_out_pin4_i : in STD_LOGIC;
    Pmod_out_pin4_o : out STD_LOGIC;
    Pmod_out_pin4_t : out STD_LOGIC;
    Pmod_out_pin7_i : in STD_LOGIC;
    Pmod_out_pin7_o : out STD_LOGIC;
    Pmod_out_pin7_t : out STD_LOGIC;
    Pmod_out_pin8_i : in STD_LOGIC;
    Pmod_out_pin8_o : out STD_LOGIC;
    Pmod_out_pin8_t : out STD_LOGIC;
    Pmod_out_pin9_i : in STD_LOGIC;
    Pmod_out_pin9_o : out STD_LOGIC;
    Pmod_out_pin9_t : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "zb_blinky_block3_PmodCMPS2_0_0,PmodCMPS2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "AXI_LITE_IIC_araddr[8:0],AXI_LITE_IIC_arready,AXI_LITE_IIC_arvalid,AXI_LITE_IIC_awaddr[8:0],AXI_LITE_IIC_awready,AXI_LITE_IIC_awvalid,AXI_LITE_IIC_bready,AXI_LITE_IIC_bresp[1:0],AXI_LITE_IIC_bvalid,AXI_LITE_IIC_rdata[31:0],AXI_LITE_IIC_rready,AXI_LITE_IIC_rresp[1:0],AXI_LITE_IIC_rvalid,AXI_LITE_IIC_wdata[31:0],AXI_LITE_IIC_wready,AXI_LITE_IIC_wstrb[3:0],AXI_LITE_IIC_wvalid,I2C_Interrupt,Pmod_out_pin10_i,Pmod_out_pin10_o,Pmod_out_pin10_t,Pmod_out_pin1_i,Pmod_out_pin1_o,Pmod_out_pin1_t,Pmod_out_pin2_i,Pmod_out_pin2_o,Pmod_out_pin2_t,Pmod_out_pin3_i,Pmod_out_pin3_o,Pmod_out_pin3_t,Pmod_out_pin4_i,Pmod_out_pin4_o,Pmod_out_pin4_t,Pmod_out_pin7_i,Pmod_out_pin7_o,Pmod_out_pin7_t,Pmod_out_pin8_i,Pmod_out_pin8_o,Pmod_out_pin8_t,Pmod_out_pin9_i,Pmod_out_pin9_o,Pmod_out_pin9_t,s_axi_aclk,s_axi_aresetn";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of AXI_LITE_IIC_araddr : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_IIC ARADDR";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of AXI_LITE_IIC_araddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of AXI_LITE_IIC_araddr : signal is "XIL_INTERFACENAME AXI_LITE_IIC, DATA_WIDTH 32, PROTOCOL AXI4LITE, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN zb_blinky_block3_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of AXI_LITE_IIC_arready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_IIC ARREADY";
  attribute X_INTERFACE_INFO of AXI_LITE_IIC_arvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_IIC ARVALID";
  attribute X_INTERFACE_INFO of AXI_LITE_IIC_awaddr : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_IIC AWADDR";
  attribute X_INTERFACE_INFO of AXI_LITE_IIC_awready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_IIC AWREADY";
  attribute X_INTERFACE_INFO of AXI_LITE_IIC_awvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_IIC AWVALID";
  attribute X_INTERFACE_INFO of AXI_LITE_IIC_bready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_IIC BREADY";
  attribute X_INTERFACE_INFO of AXI_LITE_IIC_bresp : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_IIC BRESP";
  attribute X_INTERFACE_INFO of AXI_LITE_IIC_bvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_IIC BVALID";
  attribute X_INTERFACE_INFO of AXI_LITE_IIC_rdata : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_IIC RDATA";
  attribute X_INTERFACE_INFO of AXI_LITE_IIC_rready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_IIC RREADY";
  attribute X_INTERFACE_INFO of AXI_LITE_IIC_rresp : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_IIC RRESP";
  attribute X_INTERFACE_INFO of AXI_LITE_IIC_rvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_IIC RVALID";
  attribute X_INTERFACE_INFO of AXI_LITE_IIC_wdata : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_IIC WDATA";
  attribute X_INTERFACE_INFO of AXI_LITE_IIC_wready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_IIC WREADY";
  attribute X_INTERFACE_INFO of AXI_LITE_IIC_wstrb : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_IIC WSTRB";
  attribute X_INTERFACE_INFO of AXI_LITE_IIC_wvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_IIC WVALID";
  attribute X_INTERFACE_INFO of I2C_Interrupt : signal is "xilinx.com:signal:interrupt:1.0 INTR.I2C_INTERRUPT INTERRUPT";
  attribute X_INTERFACE_MODE of I2C_Interrupt : signal is "master";
  attribute X_INTERFACE_PARAMETER of I2C_Interrupt : signal is "XIL_INTERFACENAME INTR.I2C_INTERRUPT, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of Pmod_out_pin10_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_I";
  attribute X_INTERFACE_MODE of Pmod_out_pin10_i : signal is "master";
  attribute X_INTERFACE_PARAMETER of Pmod_out_pin10_i : signal is "XIL_INTERFACENAME Pmod_out, BUSIF.BOARD_INTERFACE Custom, BOARD.ASSOCIATED_PARAM PMOD";
  attribute X_INTERFACE_INFO of Pmod_out_pin10_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_O";
  attribute X_INTERFACE_INFO of Pmod_out_pin10_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_T";
  attribute X_INTERFACE_INFO of Pmod_out_pin1_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_I";
  attribute X_INTERFACE_INFO of Pmod_out_pin1_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_O";
  attribute X_INTERFACE_INFO of Pmod_out_pin1_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_T";
  attribute X_INTERFACE_INFO of Pmod_out_pin2_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_I";
  attribute X_INTERFACE_INFO of Pmod_out_pin2_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_O";
  attribute X_INTERFACE_INFO of Pmod_out_pin2_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_T";
  attribute X_INTERFACE_INFO of Pmod_out_pin3_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_I";
  attribute X_INTERFACE_INFO of Pmod_out_pin3_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_O";
  attribute X_INTERFACE_INFO of Pmod_out_pin3_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_T";
  attribute X_INTERFACE_INFO of Pmod_out_pin4_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_I";
  attribute X_INTERFACE_INFO of Pmod_out_pin4_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_O";
  attribute X_INTERFACE_INFO of Pmod_out_pin4_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_T";
  attribute X_INTERFACE_INFO of Pmod_out_pin7_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_I";
  attribute X_INTERFACE_INFO of Pmod_out_pin7_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_O";
  attribute X_INTERFACE_INFO of Pmod_out_pin7_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_T";
  attribute X_INTERFACE_INFO of Pmod_out_pin8_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_I";
  attribute X_INTERFACE_INFO of Pmod_out_pin8_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_O";
  attribute X_INTERFACE_INFO of Pmod_out_pin8_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_T";
  attribute X_INTERFACE_INFO of Pmod_out_pin9_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_I";
  attribute X_INTERFACE_INFO of Pmod_out_pin9_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_O";
  attribute X_INTERFACE_INFO of Pmod_out_pin9_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_T";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK CLK";
  attribute X_INTERFACE_MODE of s_axi_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME CLK.S_AXI_ACLK, ASSOCIATED_BUSIF AXI_LITE_IIC, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zb_blinky_block3_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN RST";
  attribute X_INTERFACE_MODE of s_axi_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME RST.S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "PmodCMPS2,Vivado 2025.2";
begin
end;
