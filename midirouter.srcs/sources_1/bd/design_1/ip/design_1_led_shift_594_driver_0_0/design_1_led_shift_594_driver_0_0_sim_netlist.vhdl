-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Sat Dec 28 16:30:02 2019
-- Host        : debian running 64-bit Debian GNU/Linux 9.11 (stretch)
-- Command     : write_vhdl -force -mode funcsim
--               /home/tommy/src/tomarus/midirouter/midirouter.srcs/sources_1/bd/design_1/ip/design_1_led_shift_594_driver_0_0/design_1_led_shift_594_driver_0_0_sim_netlist.vhdl
-- Design      : design_1_led_shift_594_driver_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed is
  port (
    ser_reg : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    \slv_reg0_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \colpos_reg[1]\ : in STD_LOGIC;
    \colpos_reg[0]\ : in STD_LOGIC;
    \colpos_reg[0]_0\ : in STD_LOGIC;
    \ssin_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed is
  signal \counter[0]_i_1__15_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__15_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__15_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \inact__15\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ser_reg_i_27_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__15\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[2]_i_1__15\ : label is "soft_lutpair2";
begin
\counter[0]_i_1__15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[0]\(0),
      O => \counter[0]_i_1__15_n_0\
    );
\counter[1]_i_1__15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[0]\(0),
      O => \counter[1]_i_1__15_n_0\
    );
\counter[2]_i_1__15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => \slv_reg0_reg[0]\(0),
      O => \counter[2]_i_1__15_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__15_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__15_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__15_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_57: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => Q(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => \inact__15\(0)
    );
ser_reg_i_12: unisim.vcomponents.MUXF8
     port map (
      I0 => ser_reg_i_27_n_0,
      I1 => \colpos_reg[0]\,
      O => ser_reg,
      S => \colpos_reg[1]\
    );
ser_reg_i_27: unisim.vcomponents.MUXF7
     port map (
      I0 => \inact__15\(0),
      I1 => \ssin_reg[1]\(0),
      O => ser_reg_i_27_n_0,
      S => \colpos_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_0 is
  port (
    ser_reg : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    \slv_reg0_reg[10]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \colpos_reg[0]\ : in STD_LOGIC;
    \ssin_reg[11]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_0 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_0;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_0 is
  signal \counter[0]_i_1__5_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__5_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__5_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \inact__15\ : STD_LOGIC_VECTOR ( 10 to 10 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[2]_i_1__5\ : label is "soft_lutpair3";
begin
\counter[0]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[10]\(0),
      O => \counter[0]_i_1__5_n_0\
    );
\counter[1]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[10]\(0),
      O => \counter[1]_i_1__5_n_0\
    );
\counter[2]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => \slv_reg0_reg[10]\(0),
      O => \counter[2]_i_1__5_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__5_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__5_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__5_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_35: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => Q(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => \inact__15\(10)
    );
ser_reg_i_16: unisim.vcomponents.MUXF7
     port map (
      I0 => \inact__15\(10),
      I1 => \ssin_reg[11]\(0),
      O => ser_reg,
      S => \colpos_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_1 is
  port (
    ser_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    \slv_reg0_reg[11]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_1 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_1;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_1 is
  signal \counter[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__4_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__4_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter[2]_i_1__4\ : label is "soft_lutpair4";
begin
\counter[0]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[11]\(0),
      O => \counter[0]_i_1__4_n_0\
    );
\counter[1]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[11]\(0),
      O => \counter[1]_i_1__4_n_0\
    );
\counter[2]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => \slv_reg0_reg[11]\(0),
      O => \counter[2]_i_1__4_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__4_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__4_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__4_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_36: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => Q(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => ser_reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_10 is
  port (
    ser_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    \slv_reg0_reg[5]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_10 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_10;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_10 is
  signal \counter[0]_i_1__10_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__10_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__10_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__10\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \counter[2]_i_1__10\ : label is "soft_lutpair13";
begin
\counter[0]_i_1__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[5]\(0),
      O => \counter[0]_i_1__10_n_0\
    );
\counter[1]_i_1__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[5]\(0),
      O => \counter[1]_i_1__10_n_0\
    );
\counter[2]_i_1__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => \slv_reg0_reg[5]\(0),
      O => \counter[2]_i_1__10_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__10_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__10_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__10_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_54: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => Q(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => ser_reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_11 is
  port (
    ser_reg : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    \slv_reg0_reg[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \colpos_reg[0]\ : in STD_LOGIC;
    \ssin_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_11 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_11;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_11 is
  signal \counter[0]_i_1__9_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__9_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__9_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \inact__15\ : STD_LOGIC_VECTOR ( 6 to 6 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__9\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \counter[2]_i_1__9\ : label is "soft_lutpair14";
begin
\counter[0]_i_1__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[6]\(0),
      O => \counter[0]_i_1__9_n_0\
    );
\counter[1]_i_1__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[6]\(0),
      O => \counter[1]_i_1__9_n_0\
    );
\counter[2]_i_1__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => \slv_reg0_reg[6]\(0),
      O => \counter[2]_i_1__9_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__9_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__9_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__9_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_55: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => Q(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => \inact__15\(6)
    );
ser_reg_i_26: unisim.vcomponents.MUXF7
     port map (
      I0 => \inact__15\(6),
      I1 => \ssin_reg[7]\(0),
      O => ser_reg,
      S => \colpos_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_12 is
  port (
    ser_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    \slv_reg0_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_12 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_12;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_12 is
  signal \counter[0]_i_1__8_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__8_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__8_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__8\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \counter[2]_i_1__8\ : label is "soft_lutpair15";
begin
\counter[0]_i_1__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[7]\(0),
      O => \counter[0]_i_1__8_n_0\
    );
\counter[1]_i_1__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[7]\(0),
      O => \counter[1]_i_1__8_n_0\
    );
\counter[2]_i_1__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => \slv_reg0_reg[7]\(0),
      O => \counter[2]_i_1__8_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__8_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__8_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__8_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_56: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => Q(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => ser_reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_13 is
  port (
    ser_reg : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    \slv_reg0_reg[8]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \colpos_reg[1]\ : in STD_LOGIC;
    \colpos_reg[0]\ : in STD_LOGIC;
    \colpos_reg[0]_0\ : in STD_LOGIC;
    \ssin_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_13 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_13;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_13 is
  signal \counter[0]_i_1__7_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__7_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__7_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \inact__15\ : STD_LOGIC_VECTOR ( 8 to 8 );
  signal ser_reg_i_15_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__7\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \counter[2]_i_1__7\ : label is "soft_lutpair16";
begin
\counter[0]_i_1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[8]\(0),
      O => \counter[0]_i_1__7_n_0\
    );
\counter[1]_i_1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[8]\(0),
      O => \counter[1]_i_1__7_n_0\
    );
\counter[2]_i_1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => \slv_reg0_reg[8]\(0),
      O => \counter[2]_i_1__7_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__7_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__7_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__7_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_33: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => Q(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => \inact__15\(8)
    );
ser_reg_i_15: unisim.vcomponents.MUXF7
     port map (
      I0 => \inact__15\(8),
      I1 => \ssin_reg[9]\(0),
      O => ser_reg_i_15_n_0,
      S => \colpos_reg[0]_0\
    );
ser_reg_i_6: unisim.vcomponents.MUXF8
     port map (
      I0 => ser_reg_i_15_n_0,
      I1 => \colpos_reg[0]\,
      O => ser_reg,
      S => \colpos_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_14 is
  port (
    ser_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    \slv_reg0_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_14 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_14;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_14 is
  signal \counter[0]_i_1__6_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__6_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__6_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \counter[2]_i_1__6\ : label is "soft_lutpair17";
begin
\counter[0]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[9]\(0),
      O => \counter[0]_i_1__6_n_0\
    );
\counter[1]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[9]\(0),
      O => \counter[1]_i_1__6_n_0\
    );
\counter[2]_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => \slv_reg0_reg[9]\(0),
      O => \counter[2]_i_1__6_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__6_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__6_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__6_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_34: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => Q(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => ser_reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_15 is
  port (
    ser_reg : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \colpos_reg[1]\ : in STD_LOGIC;
    \colpos_reg[0]\ : in STD_LOGIC;
    \colpos_reg[0]_0\ : in STD_LOGIC;
    \ssout_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ssout_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_15 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_15;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_15 is
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \outact__15\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ser_reg_i_23_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair18";
begin
\counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[0]_i_1_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[1]_i_1_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => Q(0),
      O => \counter[2]_i_1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_49: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => \ssout_reg[0]\(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => \outact__15\(0)
    );
ser_reg_i_10: unisim.vcomponents.MUXF8
     port map (
      I0 => ser_reg_i_23_n_0,
      I1 => \colpos_reg[0]\,
      O => ser_reg,
      S => \colpos_reg[1]\
    );
ser_reg_i_23: unisim.vcomponents.MUXF7
     port map (
      I0 => \outact__15\(0),
      I1 => \ssout_reg[1]\(0),
      O => ser_reg_i_23_n_0,
      S => \colpos_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_16 is
  port (
    ser_reg : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \colpos_reg[0]\ : in STD_LOGIC;
    \ssout_reg[11]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ssout_reg[10]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_16 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_16;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_16 is
  signal \counter[0]_i_1__21_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__21_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__21_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \outact__15\ : STD_LOGIC_VECTOR ( 10 to 10 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__21\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \counter[2]_i_1__21\ : label is "soft_lutpair19";
begin
\counter[0]_i_1__21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[0]_i_1__21_n_0\
    );
\counter[1]_i_1__21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[1]_i_1__21_n_0\
    );
\counter[2]_i_1__21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => Q(0),
      O => \counter[2]_i_1__21_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__21_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__21_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__21_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_43: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => \ssout_reg[10]\(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => \outact__15\(10)
    );
ser_reg_i_20: unisim.vcomponents.MUXF7
     port map (
      I0 => \outact__15\(10),
      I1 => \ssout_reg[11]\(0),
      O => ser_reg,
      S => \colpos_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_17 is
  port (
    ser_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ssout_reg[11]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_17 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_17;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_17 is
  signal \counter[0]_i_1__20_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__20_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__20_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__20\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \counter[2]_i_1__20\ : label is "soft_lutpair20";
begin
\counter[0]_i_1__20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[0]_i_1__20_n_0\
    );
\counter[1]_i_1__20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[1]_i_1__20_n_0\
    );
\counter[2]_i_1__20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => Q(0),
      O => \counter[2]_i_1__20_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__20_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__20_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__20_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_44: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => \ssout_reg[11]\(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => ser_reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_18 is
  port (
    ser_reg : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \colpos_reg[1]\ : in STD_LOGIC;
    \colpos_reg[0]\ : in STD_LOGIC;
    \colpos_reg[0]_0\ : in STD_LOGIC;
    \ssout_reg[13]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ssout_reg[12]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_18 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_18;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_18 is
  signal \counter[0]_i_1__19_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__19_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__19_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \outact__15\ : STD_LOGIC_VECTOR ( 12 to 12 );
  signal ser_reg_i_17_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__19\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \counter[2]_i_1__19\ : label is "soft_lutpair21";
begin
\counter[0]_i_1__19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[0]_i_1__19_n_0\
    );
\counter[1]_i_1__19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[1]_i_1__19_n_0\
    );
\counter[2]_i_1__19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => Q(0),
      O => \counter[2]_i_1__19_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__19_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__19_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__19_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_37: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => \ssout_reg[12]\(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => \outact__15\(12)
    );
ser_reg_i_17: unisim.vcomponents.MUXF7
     port map (
      I0 => \outact__15\(12),
      I1 => \ssout_reg[13]\(0),
      O => ser_reg_i_17_n_0,
      S => \colpos_reg[0]_0\
    );
ser_reg_i_7: unisim.vcomponents.MUXF8
     port map (
      I0 => ser_reg_i_17_n_0,
      I1 => \colpos_reg[0]\,
      O => ser_reg,
      S => \colpos_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_19 is
  port (
    ser_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ssout_reg[13]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_19 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_19;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_19 is
  signal \counter[0]_i_1__18_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__18_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__18_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__18\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \counter[2]_i_1__18\ : label is "soft_lutpair22";
begin
\counter[0]_i_1__18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[0]_i_1__18_n_0\
    );
\counter[1]_i_1__18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[1]_i_1__18_n_0\
    );
\counter[2]_i_1__18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => Q(0),
      O => \counter[2]_i_1__18_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__18_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__18_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__18_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_38: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => \ssout_reg[13]\(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => ser_reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_2 is
  port (
    ser_reg : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    \slv_reg0_reg[12]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \bitno_reg[2]\ : in STD_LOGIC;
    \bitno_reg[1]\ : in STD_LOGIC;
    \bitno_reg[0]\ : in STD_LOGIC;
    \bitno_reg[3]\ : in STD_LOGIC;
    \colpos_reg[1]\ : in STD_LOGIC;
    \bitno_reg[0]_0\ : in STD_LOGIC;
    \colpos_reg[1]_0\ : in STD_LOGIC;
    \colpos_reg[2]\ : in STD_LOGIC;
    \colpos_reg[1]_1\ : in STD_LOGIC;
    \colpos_reg[1]_2\ : in STD_LOGIC;
    \colpos_reg[0]\ : in STD_LOGIC;
    \colpos_reg[0]_0\ : in STD_LOGIC;
    \ssin_reg[13]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC;
    clk2 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    SER : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_2 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_2;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_2 is
  signal \counter[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \inact__15\ : STD_LOGIC_VECTOR ( 12 to 12 );
  signal ser_i_2_n_0 : STD_LOGIC;
  signal ser_i_3_n_0 : STD_LOGIC;
  signal ser_reg_i_13_n_0 : STD_LOGIC;
  signal ser_reg_i_5_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[2]_i_1__3\ : label is "soft_lutpair5";
begin
\counter[0]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[12]\(0),
      O => \counter[0]_i_1__3_n_0\
    );
\counter[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[12]\(0),
      O => \counter[1]_i_1__3_n_0\
    );
\counter[2]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => \slv_reg0_reg[12]\(0),
      O => \counter[2]_i_1__3_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__3_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__3_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__3_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => ser_i_2_n_0,
      I1 => clk2,
      I2 => D(0),
      I3 => SER,
      O => ser_reg
    );
ser_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEAAAEAAAAAAAAA"
    )
        port map (
      I0 => CO(0),
      I1 => ser_i_3_n_0,
      I2 => \bitno_reg[2]\,
      I3 => \bitno_reg[1]\,
      I4 => \bitno_reg[0]\,
      I5 => \bitno_reg[3]\,
      O => ser_i_2_n_0
    );
ser_i_29: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => Q(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => \inact__15\(12)
    );
ser_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ser_reg_i_5_n_0,
      I1 => \colpos_reg[1]\,
      I2 => \bitno_reg[0]_0\,
      I3 => \colpos_reg[1]_0\,
      I4 => \colpos_reg[2]\,
      I5 => \colpos_reg[1]_1\,
      O => ser_i_3_n_0
    );
ser_reg_i_13: unisim.vcomponents.MUXF7
     port map (
      I0 => \inact__15\(12),
      I1 => \ssin_reg[13]\(0),
      O => ser_reg_i_13_n_0,
      S => \colpos_reg[0]_0\
    );
ser_reg_i_5: unisim.vcomponents.MUXF8
     port map (
      I0 => ser_reg_i_13_n_0,
      I1 => \colpos_reg[0]\,
      O => ser_reg_i_5_n_0,
      S => \colpos_reg[1]_2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_20 is
  port (
    ser_reg : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \colpos_reg[0]\ : in STD_LOGIC;
    \ssout_reg[15]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ssout_reg[14]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_20 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_20;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_20 is
  signal \counter[0]_i_1__17_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__17_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__17_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \outact__15\ : STD_LOGIC_VECTOR ( 14 to 14 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__17\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \counter[2]_i_1__17\ : label is "soft_lutpair23";
begin
\counter[0]_i_1__17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[0]_i_1__17_n_0\
    );
\counter[1]_i_1__17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[1]_i_1__17_n_0\
    );
\counter[2]_i_1__17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => Q(0),
      O => \counter[2]_i_1__17_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__17_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__17_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__17_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_39: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => \ssout_reg[14]\(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => \outact__15\(14)
    );
ser_reg_i_18: unisim.vcomponents.MUXF7
     port map (
      I0 => \outact__15\(14),
      I1 => \ssout_reg[15]\(0),
      O => ser_reg,
      S => \colpos_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_21 is
  port (
    ser_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ssout_reg[15]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_21 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_21;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_21 is
  signal \counter[0]_i_1__16_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__16_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__16_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__16\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \counter[2]_i_1__16\ : label is "soft_lutpair24";
begin
\counter[0]_i_1__16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[0]_i_1__16_n_0\
    );
\counter[1]_i_1__16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[1]_i_1__16_n_0\
    );
\counter[2]_i_1__16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => Q(0),
      O => \counter[2]_i_1__16_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__16_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__16_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__16_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_40: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => \ssout_reg[15]\(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => ser_reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_22 is
  port (
    \ledclk__19\ : out STD_LOGIC;
    ser_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ssout_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC;
    ledclk_c_reg : in STD_LOGIC_VECTOR ( 20 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_22 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_22;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_22 is
  signal \counter[0]_i_1__30_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__30_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__30_n_0\ : STD_LOGIC;
  signal \counter[2]_i_3_n_0\ : STD_LOGIC;
  signal \counter[2]_i_4_n_0\ : STD_LOGIC;
  signal \counter[2]_i_5_n_0\ : STD_LOGIC;
  signal \counter[2]_i_6_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \^ledclk__19\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__30\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \counter[2]_i_1__30\ : label is "soft_lutpair25";
begin
  \ledclk__19\ <= \^ledclk__19\;
\counter[0]_i_1__30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \^ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[0]_i_1__30_n_0\
    );
\counter[1]_i_1__30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \^ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[1]_i_1__30_n_0\
    );
\counter[2]_i_1__30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \^ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => Q(0),
      O => \counter[2]_i_1__30_n_0\
    );
\counter[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \counter[2]_i_3_n_0\,
      I1 => \counter[2]_i_4_n_0\,
      I2 => \counter[2]_i_5_n_0\,
      I3 => \counter[2]_i_6_n_0\,
      O => \^ledclk__19\
    );
\counter[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => ledclk_c_reg(13),
      I1 => ledclk_c_reg(11),
      I2 => ledclk_c_reg(12),
      I3 => ledclk_c_reg(15),
      I4 => ledclk_c_reg(14),
      O => \counter[2]_i_3_n_0\
    );
\counter[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => ledclk_c_reg(19),
      I1 => ledclk_c_reg(20),
      I2 => ledclk_c_reg(16),
      I3 => ledclk_c_reg(17),
      I4 => ledclk_c_reg(18),
      O => \counter[2]_i_4_n_0\
    );
\counter[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => ledclk_c_reg(10),
      I1 => ledclk_c_reg(9),
      I2 => ledclk_c_reg(6),
      I3 => ledclk_c_reg(7),
      I4 => ledclk_c_reg(8),
      O => \counter[2]_i_5_n_0\
    );
\counter[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => ledclk_c_reg(5),
      I1 => ledclk_c_reg(3),
      I2 => ledclk_c_reg(4),
      I3 => ledclk_c_reg(0),
      I4 => ledclk_c_reg(1),
      I5 => ledclk_c_reg(2),
      O => \counter[2]_i_6_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__30_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__30_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__30_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_50: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => \ssout_reg[1]\(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => ser_reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_23 is
  port (
    ser_reg : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \colpos_reg[0]\ : in STD_LOGIC;
    \ssout_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ssout_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_23 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_23;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_23 is
  signal \counter[0]_i_1__29_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__29_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__29_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \outact__15\ : STD_LOGIC_VECTOR ( 2 to 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__29\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \counter[2]_i_1__29\ : label is "soft_lutpair26";
begin
\counter[0]_i_1__29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[0]_i_1__29_n_0\
    );
\counter[1]_i_1__29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[1]_i_1__29_n_0\
    );
\counter[2]_i_1__29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => Q(0),
      O => \counter[2]_i_1__29_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__29_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__29_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__29_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_51: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => \ssout_reg[2]\(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => \outact__15\(2)
    );
ser_reg_i_24: unisim.vcomponents.MUXF7
     port map (
      I0 => \outact__15\(2),
      I1 => \ssout_reg[3]\(0),
      O => ser_reg,
      S => \colpos_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_24 is
  port (
    ser_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ssout_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_24 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_24;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_24 is
  signal \counter[0]_i_1__28_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__28_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__28_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__28\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \counter[2]_i_1__28\ : label is "soft_lutpair27";
begin
\counter[0]_i_1__28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[0]_i_1__28_n_0\
    );
\counter[1]_i_1__28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[1]_i_1__28_n_0\
    );
\counter[2]_i_1__28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => Q(0),
      O => \counter[2]_i_1__28_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__28_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__28_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__28_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_52: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => \ssout_reg[3]\(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => ser_reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_25 is
  port (
    ser_reg : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \colpos_reg[1]\ : in STD_LOGIC;
    \bitno_reg[0]\ : in STD_LOGIC;
    \colpos_reg[1]_0\ : in STD_LOGIC;
    \colpos_reg[2]\ : in STD_LOGIC;
    \colpos_reg[1]_1\ : in STD_LOGIC;
    \colpos_reg[1]_2\ : in STD_LOGIC;
    \colpos_reg[0]\ : in STD_LOGIC;
    \colpos_reg[0]_0\ : in STD_LOGIC;
    \ssout_reg[5]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ssout_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_25 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_25;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_25 is
  signal \counter[0]_i_1__27_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__27_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__27_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \outact__15\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal ser_reg_i_21_n_0 : STD_LOGIC;
  signal ser_reg_i_9_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__27\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \counter[2]_i_1__27\ : label is "soft_lutpair28";
begin
\counter[0]_i_1__27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[0]_i_1__27_n_0\
    );
\counter[1]_i_1__27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[1]_i_1__27_n_0\
    );
\counter[2]_i_1__27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => Q(0),
      O => \counter[2]_i_1__27_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__27_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__27_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__27_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ser_reg_i_9_n_0,
      I1 => \colpos_reg[1]\,
      I2 => \bitno_reg[0]\,
      I3 => \colpos_reg[1]_0\,
      I4 => \colpos_reg[2]\,
      I5 => \colpos_reg[1]_1\,
      O => ser_reg
    );
ser_i_45: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => \ssout_reg[4]\(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => \outact__15\(4)
    );
ser_reg_i_21: unisim.vcomponents.MUXF7
     port map (
      I0 => \outact__15\(4),
      I1 => \ssout_reg[5]\(0),
      O => ser_reg_i_21_n_0,
      S => \colpos_reg[0]_0\
    );
ser_reg_i_9: unisim.vcomponents.MUXF8
     port map (
      I0 => ser_reg_i_21_n_0,
      I1 => \colpos_reg[0]\,
      O => ser_reg_i_9_n_0,
      S => \colpos_reg[1]_2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_26 is
  port (
    ser_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ssout_reg[5]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_26 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_26;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_26 is
  signal \counter[0]_i_1__26_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__26_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__26_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__26\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \counter[2]_i_1__26\ : label is "soft_lutpair29";
begin
\counter[0]_i_1__26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[0]_i_1__26_n_0\
    );
\counter[1]_i_1__26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[1]_i_1__26_n_0\
    );
\counter[2]_i_1__26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => Q(0),
      O => \counter[2]_i_1__26_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__26_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__26_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__26_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_46: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => \ssout_reg[5]\(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => ser_reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_27 is
  port (
    ser_reg : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \colpos_reg[0]\ : in STD_LOGIC;
    \ssout_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ssout_reg[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_27 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_27;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_27 is
  signal \counter[0]_i_1__25_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__25_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__25_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \outact__15\ : STD_LOGIC_VECTOR ( 6 to 6 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__25\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \counter[2]_i_1__25\ : label is "soft_lutpair30";
begin
\counter[0]_i_1__25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[0]_i_1__25_n_0\
    );
\counter[1]_i_1__25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[1]_i_1__25_n_0\
    );
\counter[2]_i_1__25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => Q(0),
      O => \counter[2]_i_1__25_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__25_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__25_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__25_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_47: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => \ssout_reg[6]\(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => \outact__15\(6)
    );
ser_reg_i_22: unisim.vcomponents.MUXF7
     port map (
      I0 => \outact__15\(6),
      I1 => \ssout_reg[7]\(0),
      O => ser_reg,
      S => \colpos_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_28 is
  port (
    ser_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ssout_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_28 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_28;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_28 is
  signal \counter[0]_i_1__24_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__24_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__24_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__24\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \counter[2]_i_1__24\ : label is "soft_lutpair31";
begin
\counter[0]_i_1__24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[0]_i_1__24_n_0\
    );
\counter[1]_i_1__24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[1]_i_1__24_n_0\
    );
\counter[2]_i_1__24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => Q(0),
      O => \counter[2]_i_1__24_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__24_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__24_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__24_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_48: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => \ssout_reg[7]\(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => ser_reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_29 is
  port (
    ser_reg : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \colpos_reg[1]\ : in STD_LOGIC;
    \colpos_reg[0]\ : in STD_LOGIC;
    \colpos_reg[0]_0\ : in STD_LOGIC;
    \ssout_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ssout_reg[8]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_29 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_29;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_29 is
  signal \counter[0]_i_1__23_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__23_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__23_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \outact__15\ : STD_LOGIC_VECTOR ( 8 to 8 );
  signal ser_reg_i_19_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__23\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \counter[2]_i_1__23\ : label is "soft_lutpair32";
begin
\counter[0]_i_1__23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[0]_i_1__23_n_0\
    );
\counter[1]_i_1__23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[1]_i_1__23_n_0\
    );
\counter[2]_i_1__23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => Q(0),
      O => \counter[2]_i_1__23_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__23_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__23_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__23_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_41: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => \ssout_reg[8]\(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => \outact__15\(8)
    );
ser_reg_i_19: unisim.vcomponents.MUXF7
     port map (
      I0 => \outact__15\(8),
      I1 => \ssout_reg[9]\(0),
      O => ser_reg_i_19_n_0,
      S => \colpos_reg[0]_0\
    );
ser_reg_i_8: unisim.vcomponents.MUXF8
     port map (
      I0 => ser_reg_i_19_n_0,
      I1 => \colpos_reg[0]\,
      O => ser_reg,
      S => \colpos_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_3 is
  port (
    ser_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    \slv_reg0_reg[13]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_3 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_3;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_3 is
  signal \counter[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter[2]_i_1__2\ : label is "soft_lutpair6";
begin
\counter[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[13]\(0),
      O => \counter[0]_i_1__2_n_0\
    );
\counter[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[13]\(0),
      O => \counter[1]_i_1__2_n_0\
    );
\counter[2]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => \slv_reg0_reg[13]\(0),
      O => \counter[2]_i_1__2_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__2_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__2_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__2_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_30: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => Q(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => ser_reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_30 is
  port (
    ser_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ssout_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_30 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_30;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_30 is
  signal \counter[0]_i_1__22_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__22_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__22_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__22\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \counter[2]_i_1__22\ : label is "soft_lutpair33";
begin
\counter[0]_i_1__22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[0]_i_1__22_n_0\
    );
\counter[1]_i_1__22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => Q(0),
      O => \counter[1]_i_1__22_n_0\
    );
\counter[2]_i_1__22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => Q(0),
      O => \counter[2]_i_1__22_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__22_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__22_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__22_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_42: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => \ssout_reg[9]\(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => ser_reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_4 is
  port (
    ser_reg : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    \slv_reg0_reg[14]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \colpos_reg[0]\ : in STD_LOGIC;
    \ssin_reg[15]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_4 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_4;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_4 is
  signal \counter[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \inact__15\ : STD_LOGIC_VECTOR ( 14 to 14 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter[2]_i_1__1\ : label is "soft_lutpair7";
begin
\counter[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[14]\(0),
      O => \counter[0]_i_1__1_n_0\
    );
\counter[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[14]\(0),
      O => \counter[1]_i_1__1_n_0\
    );
\counter[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => \slv_reg0_reg[14]\(0),
      O => \counter[2]_i_1__1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__1_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__1_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__1_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_31: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => Q(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => \inact__15\(14)
    );
ser_reg_i_14: unisim.vcomponents.MUXF7
     port map (
      I0 => \inact__15\(14),
      I1 => \ssin_reg[15]\(0),
      O => ser_reg,
      S => \colpos_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_5 is
  port (
    ser_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    \slv_reg0_reg[15]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_5 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_5;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_5 is
  signal \counter[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter[2]_i_1__0\ : label is "soft_lutpair8";
begin
\counter[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[15]\(0),
      O => \counter[0]_i_1__0_n_0\
    );
\counter[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[15]\(0),
      O => \counter[1]_i_1__0_n_0\
    );
\counter[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => \slv_reg0_reg[15]\(0),
      O => \counter[2]_i_1__0_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_32: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => Q(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => ser_reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_6 is
  port (
    ser_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    \slv_reg0_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_6 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_6;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_6 is
  signal \counter[0]_i_1__14_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__14_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__14_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__14\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \counter[2]_i_1__14\ : label is "soft_lutpair9";
begin
\counter[0]_i_1__14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[1]\(0),
      O => \counter[0]_i_1__14_n_0\
    );
\counter[1]_i_1__14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[1]\(0),
      O => \counter[1]_i_1__14_n_0\
    );
\counter[2]_i_1__14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => \slv_reg0_reg[1]\(0),
      O => \counter[2]_i_1__14_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__14_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__14_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__14_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_58: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => Q(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => ser_reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_7 is
  port (
    ser_reg : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    \slv_reg0_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \colpos_reg[0]\ : in STD_LOGIC;
    \ssin_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_7 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_7;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_7 is
  signal \counter[0]_i_1__13_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__13_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__13_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \inact__15\ : STD_LOGIC_VECTOR ( 2 to 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__13\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \counter[2]_i_1__13\ : label is "soft_lutpair10";
begin
\counter[0]_i_1__13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[2]\(0),
      O => \counter[0]_i_1__13_n_0\
    );
\counter[1]_i_1__13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[2]\(0),
      O => \counter[1]_i_1__13_n_0\
    );
\counter[2]_i_1__13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => \slv_reg0_reg[2]\(0),
      O => \counter[2]_i_1__13_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__13_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__13_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__13_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_59: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => Q(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => \inact__15\(2)
    );
ser_reg_i_28: unisim.vcomponents.MUXF7
     port map (
      I0 => \inact__15\(2),
      I1 => \ssin_reg[3]\(0),
      O => ser_reg,
      S => \colpos_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_8 is
  port (
    ser_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    \slv_reg0_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_8 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_8;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_8 is
  signal \counter[0]_i_1__12_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__12_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__12_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__12\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \counter[2]_i_1__12\ : label is "soft_lutpair11";
begin
\counter[0]_i_1__12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[3]\(0),
      O => \counter[0]_i_1__12_n_0\
    );
\counter[1]_i_1__12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[3]\(0),
      O => \counter[1]_i_1__12_n_0\
    );
\counter[2]_i_1__12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => \slv_reg0_reg[3]\(0),
      O => \counter[2]_i_1__12_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__12_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__12_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__12_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_60: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => Q(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => ser_reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_delayed_9 is
  port (
    ser_reg : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \ledclk__19\ : in STD_LOGIC;
    \slv_reg0_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \colpos_reg[1]\ : in STD_LOGIC;
    \colpos_reg[0]\ : in STD_LOGIC;
    \colpos_reg[0]_0\ : in STD_LOGIC;
    \ssin_reg[5]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    idle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_delayed_9 : entity is "delayed";
end design_1_led_shift_594_driver_0_0_delayed_9;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_delayed_9 is
  signal \counter[0]_i_1__11_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__11_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__11_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \inact__15\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal ser_reg_i_25_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__11\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counter[2]_i_1__11\ : label is "soft_lutpair12";
begin
\counter[0]_i_1__11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF55A8"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[4]\(0),
      O => \counter[0]_i_1__11_n_0\
    );
\counter[1]_i_1__11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCC64"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \slv_reg0_reg[4]\(0),
      O => \counter[1]_i_1__11_n_0\
    );
\counter[2]_i_1__11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0D0"
    )
        port map (
      I0 => \ledclk__19\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => \slv_reg0_reg[4]\(0),
      O => \counter[2]_i_1__11_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[0]_i_1__11_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__11_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[2]_i_1__11_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => '0'
    );
ser_i_53: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => Q(0),
      I1 => idle,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[0]\,
      O => \inact__15\(4)
    );
ser_reg_i_11: unisim.vcomponents.MUXF8
     port map (
      I0 => ser_reg_i_25_n_0,
      I1 => \colpos_reg[0]\,
      O => ser_reg,
      S => \colpos_reg[1]\
    );
ser_reg_i_25: unisim.vcomponents.MUXF7
     port map (
      I0 => \inact__15\(4),
      I1 => \ssin_reg[5]\(0),
      O => ser_reg_i_25_n_0,
      S => \colpos_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_led_shift_594_driver_v1_0_S00_AXI is
  port (
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    notidle : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \axi_rdata_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_led_shift_594_driver_v1_0_S00_AXI : entity is "led_shift_594_driver_v1_0_S00_AXI";
end design_1_led_shift_594_driver_0_0_led_shift_594_driver_v1_0_S00_AXI;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_led_shift_594_driver_v1_0_S00_AXI is
  signal \^q\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rdata_reg[15]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \idle_count[0]_i_10_n_0\ : STD_LOGIC;
  signal \idle_count[0]_i_11_n_0\ : STD_LOGIC;
  signal \idle_count[0]_i_3_n_0\ : STD_LOGIC;
  signal \idle_count[0]_i_4_n_0\ : STD_LOGIC;
  signal \idle_count[0]_i_5_n_0\ : STD_LOGIC;
  signal \idle_count[0]_i_6_n_0\ : STD_LOGIC;
  signal \idle_count[0]_i_8_n_0\ : STD_LOGIC;
  signal \idle_count[0]_i_9_n_0\ : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[31]\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair1";
begin
  Q(15 downto 0) <= \^q\(15 downto 0);
  \axi_rdata_reg[15]_0\(15 downto 0) <= \^axi_rdata_reg[15]_0\(15 downto 0);
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => aw_en_reg_n_0,
      I2 => \^s00_axi_awready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s00_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s00_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s00_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_awready\,
      I3 => \^s00_axi_wready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^axi_rdata_reg[15]_0\(0),
      I2 => slv_reg3(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^axi_rdata_reg[15]_0\(10),
      I2 => slv_reg3(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^axi_rdata_reg[15]_0\(11),
      I2 => slv_reg3(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^axi_rdata_reg[15]_0\(12),
      I2 => slv_reg3(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^axi_rdata_reg[15]_0\(13),
      I2 => slv_reg3(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^q\(14),
      I1 => \^axi_rdata_reg[15]_0\(14),
      I2 => slv_reg3(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^q\(15),
      I1 => \^axi_rdata_reg[15]_0\(15),
      I2 => slv_reg3(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[16]\,
      I1 => \slv_reg0_reg_n_0_[16]\,
      I2 => slv_reg3(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[17]\,
      I1 => \slv_reg0_reg_n_0_[17]\,
      I2 => slv_reg3(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[18]\,
      I1 => \slv_reg0_reg_n_0_[18]\,
      I2 => slv_reg3(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[19]\,
      I1 => \slv_reg0_reg_n_0_[19]\,
      I2 => slv_reg3(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^axi_rdata_reg[15]_0\(1),
      I2 => slv_reg3(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[20]\,
      I1 => \slv_reg0_reg_n_0_[20]\,
      I2 => slv_reg3(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[21]\,
      I1 => \slv_reg0_reg_n_0_[21]\,
      I2 => slv_reg3(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[22]\,
      I1 => \slv_reg0_reg_n_0_[22]\,
      I2 => slv_reg3(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[23]\,
      I1 => \slv_reg0_reg_n_0_[23]\,
      I2 => slv_reg3(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[24]\,
      I1 => \slv_reg0_reg_n_0_[24]\,
      I2 => slv_reg3(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[25]\,
      I1 => \slv_reg0_reg_n_0_[25]\,
      I2 => slv_reg3(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[26]\,
      I1 => \slv_reg0_reg_n_0_[26]\,
      I2 => slv_reg3(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[27]\,
      I1 => \slv_reg0_reg_n_0_[27]\,
      I2 => slv_reg3(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[28]\,
      I1 => \slv_reg0_reg_n_0_[28]\,
      I2 => slv_reg3(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[29]\,
      I1 => \slv_reg0_reg_n_0_[29]\,
      I2 => slv_reg3(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^axi_rdata_reg[15]_0\(2),
      I2 => slv_reg3(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[30]\,
      I1 => \slv_reg0_reg_n_0_[30]\,
      I2 => slv_reg3(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[31]\,
      I1 => \slv_reg0_reg_n_0_[31]\,
      I2 => slv_reg3(31),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^axi_rdata_reg[15]_0\(3),
      I2 => slv_reg3(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^axi_rdata_reg[15]_0\(4),
      I2 => slv_reg3(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^axi_rdata_reg[15]_0\(5),
      I2 => slv_reg3(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^axi_rdata_reg[15]_0\(6),
      I2 => slv_reg3(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^axi_rdata_reg[15]_0\(7),
      I2 => slv_reg3(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^axi_rdata_reg[15]_0\(8),
      I2 => slv_reg3(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^axi_rdata_reg[15]_0\(9),
      I2 => slv_reg3(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s00_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_wready\,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s00_axi_wready\,
      R => axi_awready_i_1_n_0
    );
\idle_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \idle_count[0]_i_3_n_0\,
      I1 => \idle_count[0]_i_4_n_0\,
      I2 => \idle_count[0]_i_5_n_0\,
      I3 => \idle_count[0]_i_6_n_0\,
      O => notidle
    );
\idle_count[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \idle_count[0]_i_10_n_0\
    );
\idle_count[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(11),
      I2 => \^q\(8),
      I3 => \^q\(9),
      O => \idle_count[0]_i_11_n_0\
    );
\idle_count[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^axi_rdata_reg[15]_0\(5),
      I1 => \^axi_rdata_reg[15]_0\(4),
      I2 => \^axi_rdata_reg[15]_0\(7),
      I3 => \^axi_rdata_reg[15]_0\(6),
      I4 => \idle_count[0]_i_8_n_0\,
      O => \idle_count[0]_i_3_n_0\
    );
\idle_count[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^axi_rdata_reg[15]_0\(13),
      I1 => \^axi_rdata_reg[15]_0\(12),
      I2 => \^axi_rdata_reg[15]_0\(14),
      I3 => \^axi_rdata_reg[15]_0\(15),
      I4 => \idle_count[0]_i_9_n_0\,
      O => \idle_count[0]_i_4_n_0\
    );
\idle_count[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(7),
      I3 => \^q\(6),
      I4 => \idle_count[0]_i_10_n_0\,
      O => \idle_count[0]_i_5_n_0\
    );
\idle_count[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^q\(12),
      I2 => \^q\(14),
      I3 => \^q\(15),
      I4 => \idle_count[0]_i_11_n_0\,
      O => \idle_count[0]_i_6_n_0\
    );
\idle_count[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^axi_rdata_reg[15]_0\(2),
      I1 => \^axi_rdata_reg[15]_0\(3),
      I2 => \^axi_rdata_reg[15]_0\(0),
      I3 => \^axi_rdata_reg[15]_0\(1),
      O => \idle_count[0]_i_8_n_0\
    );
\idle_count[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^axi_rdata_reg[15]_0\(10),
      I1 => \^axi_rdata_reg[15]_0\(11),
      I2 => \^axi_rdata_reg[15]_0\(8),
      I3 => \^axi_rdata_reg[15]_0\(9),
      O => \idle_count[0]_i_9_n_0\
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s00_axi_wready\,
      I1 => \^s00_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^axi_rdata_reg[15]_0\(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^axi_rdata_reg[15]_0\(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^axi_rdata_reg[15]_0\(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^axi_rdata_reg[15]_0\(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^axi_rdata_reg[15]_0\(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^axi_rdata_reg[15]_0\(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^axi_rdata_reg[15]_0\(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^axi_rdata_reg[15]_0\(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^axi_rdata_reg[15]_0\(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^axi_rdata_reg[15]_0\(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^axi_rdata_reg[15]_0\(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^axi_rdata_reg[15]_0\(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^axi_rdata_reg[15]_0\(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^axi_rdata_reg[15]_0\(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^axi_rdata_reg[15]_0\(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^axi_rdata_reg[15]_0\(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(1),
      I3 => axi_awaddr(2),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(2),
      I3 => axi_awaddr(2),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(3),
      I3 => axi_awaddr(2),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(0),
      I3 => axi_awaddr(2),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^q\(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^q\(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^q\(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^q\(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^q\(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^q\(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^q\(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg1_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg1_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg1_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg1_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^q\(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg1_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg1_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg1_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg1_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg1_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg1_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg1_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg1_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg1_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg1_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^q\(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg1_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg1_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^q\(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^q\(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^q\(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^q\(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^q\(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^q\(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^q\(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(1),
      I3 => axi_awaddr(2),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(2),
      I3 => axi_awaddr(2),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(3),
      I3 => axi_awaddr(2),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(0),
      I3 => axi_awaddr(2),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => axi_awready_i_1_n_0
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^s00_axi_arready\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_leds is
  port (
    SCK : out STD_LOGIC;
    RCK : out STD_LOGIC;
    SER : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    notidle : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \slv_reg0_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_leds : entity is "leds";
end design_1_led_shift_594_driver_0_0_leds;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_leds is
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[3]\ : signal is "yes";
  signal \^rck\ : STD_LOGIC;
  signal \^sck\ : STD_LOGIC;
  signal \^ser\ : STD_LOGIC;
  signal \bitno[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitno[1]_i_1_n_0\ : STD_LOGIC;
  signal \bitno[2]_i_1_n_0\ : STD_LOGIC;
  signal \bitno[3]_i_1_n_0\ : STD_LOGIC;
  signal \bitno[3]_i_2_n_0\ : STD_LOGIC;
  signal \bitno[3]_i_3_n_0\ : STD_LOGIC;
  signal \bitno_reg_n_0_[0]\ : STD_LOGIC;
  signal \bitno_reg_n_0_[1]\ : STD_LOGIC;
  signal \bitno_reg_n_0_[2]\ : STD_LOGIC;
  signal \bitno_reg_n_0_[3]\ : STD_LOGIC;
  signal clk2 : STD_LOGIC;
  signal \clk_cntr[0]_i_2_n_0\ : STD_LOGIC;
  signal \clk_cntr[0]_i_3_n_0\ : STD_LOGIC;
  signal \clk_cntr[0]_i_4_n_0\ : STD_LOGIC;
  signal \clk_cntr[0]_i_5_n_0\ : STD_LOGIC;
  signal \clk_cntr[0]_i_6_n_0\ : STD_LOGIC;
  signal \clk_cntr[4]_i_2_n_0\ : STD_LOGIC;
  signal \clk_cntr[4]_i_3_n_0\ : STD_LOGIC;
  signal \clk_cntr[4]_i_4_n_0\ : STD_LOGIC;
  signal \clk_cntr[4]_i_5_n_0\ : STD_LOGIC;
  signal \clk_cntr[8]_i_2_n_0\ : STD_LOGIC;
  signal \clk_cntr[8]_i_3_n_0\ : STD_LOGIC;
  signal \clk_cntr[8]_i_4_n_0\ : STD_LOGIC;
  signal \clk_cntr_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cntr_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \clk_cntr_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \clk_cntr_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \clk_cntr_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \clk_cntr_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \clk_cntr_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \clk_cntr_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \clk_cntr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cntr_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \clk_cntr_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \clk_cntr_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \clk_cntr_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \clk_cntr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \clk_cntr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \clk_cntr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \clk_cntr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cntr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \clk_cntr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \clk_cntr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \clk_cntr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \clk_cntr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \clk_cntr_reg_n_0_[0]\ : STD_LOGIC;
  signal \clk_cntr_reg_n_0_[10]\ : STD_LOGIC;
  signal \clk_cntr_reg_n_0_[1]\ : STD_LOGIC;
  signal \clk_cntr_reg_n_0_[2]\ : STD_LOGIC;
  signal \clk_cntr_reg_n_0_[3]\ : STD_LOGIC;
  signal \clk_cntr_reg_n_0_[4]\ : STD_LOGIC;
  signal \clk_cntr_reg_n_0_[5]\ : STD_LOGIC;
  signal \clk_cntr_reg_n_0_[6]\ : STD_LOGIC;
  signal \clk_cntr_reg_n_0_[7]\ : STD_LOGIC;
  signal \clk_cntr_reg_n_0_[8]\ : STD_LOGIC;
  signal \clk_cntr_reg_n_0_[9]\ : STD_LOGIC;
  signal colpos : STD_LOGIC;
  attribute RTL_KEEP of colpos : signal is "yes";
  signal \colpos[0]_i_1_n_0\ : STD_LOGIC;
  signal \colpos[1]_i_1_n_0\ : STD_LOGIC;
  signal \colpos[2]_i_1_n_0\ : STD_LOGIC;
  signal \colpos_reg_n_0_[0]\ : STD_LOGIC;
  signal \colpos_reg_n_0_[1]\ : STD_LOGIC;
  signal \colpos_reg_n_0_[2]\ : STD_LOGIC;
  signal idle : STD_LOGIC;
  signal \idle_count[0]_i_7_n_0\ : STD_LOGIC;
  signal \idle_count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \idle_count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \idle_count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \idle_count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \idle_count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \idle_count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \idle_count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \idle_count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \idle_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \idle_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \idle_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \idle_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \idle_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \idle_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \idle_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \idle_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \idle_count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \idle_count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \idle_count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \idle_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \idle_count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \idle_count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \idle_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \idle_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \idle_count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \idle_count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \idle_count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \idle_count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \idle_count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \idle_count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \idle_count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \idle_count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \idle_count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \idle_count_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \idle_count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \idle_count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \idle_count_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \idle_count_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \idle_count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \idle_count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \idle_count_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \idle_count_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \idle_count_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \idle_count_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \idle_count_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \idle_count_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \idle_count_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \idle_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \idle_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \idle_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \idle_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \idle_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \idle_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \idle_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \idle_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \idle_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \idle_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \idle_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \idle_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \idle_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \idle_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \idle_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \idle_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[10]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[11]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[12]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[13]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[14]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[15]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[16]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[17]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[18]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[19]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[20]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[21]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[22]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[23]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[24]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[25]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[26]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[27]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[28]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[29]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[30]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[7]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[8]\ : STD_LOGIC;
  signal \idle_count_reg_n_0_[9]\ : STD_LOGIC;
  signal \inact__15\ : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \input_leds_inst_n_0_[0]\ : STD_LOGIC;
  signal \input_leds_inst_n_0_[10]\ : STD_LOGIC;
  signal \input_leds_inst_n_0_[12]\ : STD_LOGIC;
  signal \input_leds_inst_n_0_[14]\ : STD_LOGIC;
  signal \input_leds_inst_n_0_[2]\ : STD_LOGIC;
  signal \input_leds_inst_n_0_[4]\ : STD_LOGIC;
  signal \input_leds_inst_n_0_[6]\ : STD_LOGIC;
  signal \input_leds_inst_n_0_[8]\ : STD_LOGIC;
  signal \ledclk__19\ : STD_LOGIC;
  signal \ledclk_c[0]_i_2_n_0\ : STD_LOGIC;
  signal ledclk_c_reg : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \ledclk_c_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ledclk_c_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \ledclk_c_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \ledclk_c_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \ledclk_c_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \ledclk_c_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \ledclk_c_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \ledclk_c_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \ledclk_c_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \ledclk_c_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \ledclk_c_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \ledclk_c_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \ledclk_c_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \ledclk_c_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \ledclk_c_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \ledclk_c_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \ledclk_c_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \ledclk_c_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \ledclk_c_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \ledclk_c_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \ledclk_c_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \ledclk_c_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \ledclk_c_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \ledclk_c_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \ledclk_c_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \ledclk_c_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \ledclk_c_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \ledclk_c_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \ledclk_c_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \ledclk_c_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \ledclk_c_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \ledclk_c_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \ledclk_c_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \ledclk_c_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \ledclk_c_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \ledclk_c_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \ledclk_c_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \ledclk_c_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \ledclk_c_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \ledclk_c_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \ledclk_c_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \outact__15\ : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \output_leds_inst_n_0_[0]\ : STD_LOGIC;
  signal \output_leds_inst_n_0_[10]\ : STD_LOGIC;
  signal \output_leds_inst_n_0_[12]\ : STD_LOGIC;
  signal \output_leds_inst_n_0_[14]\ : STD_LOGIC;
  signal \output_leds_inst_n_0_[2]\ : STD_LOGIC;
  signal \output_leds_inst_n_0_[4]\ : STD_LOGIC;
  signal \output_leds_inst_n_0_[6]\ : STD_LOGIC;
  signal \output_leds_inst_n_0_[8]\ : STD_LOGIC;
  signal rck_i_1_n_0 : STD_LOGIC;
  signal sck_i_1_n_0 : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal \ser1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ser1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ser1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ser1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ser1_carry__0_n_0\ : STD_LOGIC;
  signal \ser1_carry__0_n_1\ : STD_LOGIC;
  signal \ser1_carry__0_n_2\ : STD_LOGIC;
  signal \ser1_carry__0_n_3\ : STD_LOGIC;
  signal \ser1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \ser1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \ser1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \ser1_carry__1_n_1\ : STD_LOGIC;
  signal \ser1_carry__1_n_2\ : STD_LOGIC;
  signal \ser1_carry__1_n_3\ : STD_LOGIC;
  signal ser1_carry_i_1_n_0 : STD_LOGIC;
  signal ser1_carry_i_2_n_0 : STD_LOGIC;
  signal ser1_carry_i_3_n_0 : STD_LOGIC;
  signal ser1_carry_i_4_n_0 : STD_LOGIC;
  signal ser1_carry_n_0 : STD_LOGIC;
  signal ser1_carry_n_1 : STD_LOGIC;
  signal ser1_carry_n_2 : STD_LOGIC;
  signal ser1_carry_n_3 : STD_LOGIC;
  signal ssbitno : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \ssbitno[0]_i_1_n_0\ : STD_LOGIC;
  signal \ssbitno[1]_i_1_n_0\ : STD_LOGIC;
  signal \ssbitno[2]_i_1_n_0\ : STD_LOGIC;
  signal ssclk2 : STD_LOGIC;
  signal \ssclk_cntr[0]_i_2_n_0\ : STD_LOGIC;
  signal \ssclk_cntr[0]_i_3_n_0\ : STD_LOGIC;
  signal \ssclk_cntr[0]_i_4_n_0\ : STD_LOGIC;
  signal \ssclk_cntr[0]_i_5_n_0\ : STD_LOGIC;
  signal \ssclk_cntr[0]_i_6_n_0\ : STD_LOGIC;
  signal \ssclk_cntr[12]_i_2_n_0\ : STD_LOGIC;
  signal \ssclk_cntr[12]_i_3_n_0\ : STD_LOGIC;
  signal \ssclk_cntr[12]_i_4_n_0\ : STD_LOGIC;
  signal \ssclk_cntr[12]_i_5_n_0\ : STD_LOGIC;
  signal \ssclk_cntr[16]_i_2_n_0\ : STD_LOGIC;
  signal \ssclk_cntr[16]_i_3_n_0\ : STD_LOGIC;
  signal \ssclk_cntr[16]_i_4_n_0\ : STD_LOGIC;
  signal \ssclk_cntr[16]_i_5_n_0\ : STD_LOGIC;
  signal \ssclk_cntr[20]_i_2_n_0\ : STD_LOGIC;
  signal \ssclk_cntr[20]_i_3_n_0\ : STD_LOGIC;
  signal \ssclk_cntr[20]_i_4_n_0\ : STD_LOGIC;
  signal \ssclk_cntr[4]_i_2_n_0\ : STD_LOGIC;
  signal \ssclk_cntr[4]_i_3_n_0\ : STD_LOGIC;
  signal \ssclk_cntr[4]_i_4_n_0\ : STD_LOGIC;
  signal \ssclk_cntr[4]_i_5_n_0\ : STD_LOGIC;
  signal \ssclk_cntr[8]_i_2_n_0\ : STD_LOGIC;
  signal \ssclk_cntr[8]_i_3_n_0\ : STD_LOGIC;
  signal \ssclk_cntr[8]_i_4_n_0\ : STD_LOGIC;
  signal \ssclk_cntr[8]_i_5_n_0\ : STD_LOGIC;
  signal \ssclk_cntr_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ssclk_cntr_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \ssclk_cntr_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \ssclk_cntr_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \ssclk_cntr_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \ssclk_cntr_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \ssclk_cntr_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \ssclk_cntr_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \ssclk_cntr_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \ssclk_cntr_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \ssclk_cntr_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \ssclk_cntr_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \ssclk_cntr_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \ssclk_cntr_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \ssclk_cntr_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \ssclk_cntr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \ssclk_cntr_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \ssclk_cntr_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \ssclk_cntr_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \ssclk_cntr_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \ssclk_cntr_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \ssclk_cntr_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \ssclk_cntr_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \ssclk_cntr_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \ssclk_cntr_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \ssclk_cntr_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \ssclk_cntr_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \ssclk_cntr_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \ssclk_cntr_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \ssclk_cntr_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \ssclk_cntr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \ssclk_cntr_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \ssclk_cntr_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \ssclk_cntr_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \ssclk_cntr_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \ssclk_cntr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \ssclk_cntr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \ssclk_cntr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \ssclk_cntr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \ssclk_cntr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \ssclk_cntr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \ssclk_cntr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \ssclk_cntr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \ssclk_cntr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \ssclk_cntr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \ssclk_cntr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \ssclk_cntr_reg_n_0_[0]\ : STD_LOGIC;
  signal \ssclk_cntr_reg_n_0_[10]\ : STD_LOGIC;
  signal \ssclk_cntr_reg_n_0_[11]\ : STD_LOGIC;
  signal \ssclk_cntr_reg_n_0_[12]\ : STD_LOGIC;
  signal \ssclk_cntr_reg_n_0_[13]\ : STD_LOGIC;
  signal \ssclk_cntr_reg_n_0_[14]\ : STD_LOGIC;
  signal \ssclk_cntr_reg_n_0_[15]\ : STD_LOGIC;
  signal \ssclk_cntr_reg_n_0_[16]\ : STD_LOGIC;
  signal \ssclk_cntr_reg_n_0_[17]\ : STD_LOGIC;
  signal \ssclk_cntr_reg_n_0_[18]\ : STD_LOGIC;
  signal \ssclk_cntr_reg_n_0_[19]\ : STD_LOGIC;
  signal \ssclk_cntr_reg_n_0_[1]\ : STD_LOGIC;
  signal \ssclk_cntr_reg_n_0_[20]\ : STD_LOGIC;
  signal \ssclk_cntr_reg_n_0_[21]\ : STD_LOGIC;
  signal \ssclk_cntr_reg_n_0_[22]\ : STD_LOGIC;
  signal \ssclk_cntr_reg_n_0_[2]\ : STD_LOGIC;
  signal \ssclk_cntr_reg_n_0_[3]\ : STD_LOGIC;
  signal \ssclk_cntr_reg_n_0_[4]\ : STD_LOGIC;
  signal \ssclk_cntr_reg_n_0_[5]\ : STD_LOGIC;
  signal \ssclk_cntr_reg_n_0_[6]\ : STD_LOGIC;
  signal \ssclk_cntr_reg_n_0_[7]\ : STD_LOGIC;
  signal \ssclk_cntr_reg_n_0_[8]\ : STD_LOGIC;
  signal \ssclk_cntr_reg_n_0_[9]\ : STD_LOGIC;
  signal ssin : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ssin[15]_i_3_n_0\ : STD_LOGIC;
  signal \ssin[15]_i_5_n_0\ : STD_LOGIC;
  signal \ssin[15]_i_6_n_0\ : STD_LOGIC;
  signal \ssin[7]_i_1_n_0\ : STD_LOGIC;
  signal \ssin[7]_i_3_n_0\ : STD_LOGIC;
  signal \ssin[7]_i_4_n_0\ : STD_LOGIC;
  signal \ssin_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal \ssin_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \ssin_reg_n_0_[0]\ : STD_LOGIC;
  signal \ssin_reg_n_0_[10]\ : STD_LOGIC;
  signal \ssin_reg_n_0_[11]\ : STD_LOGIC;
  signal \ssin_reg_n_0_[12]\ : STD_LOGIC;
  signal \ssin_reg_n_0_[13]\ : STD_LOGIC;
  signal \ssin_reg_n_0_[14]\ : STD_LOGIC;
  signal \ssin_reg_n_0_[15]\ : STD_LOGIC;
  signal \ssin_reg_n_0_[1]\ : STD_LOGIC;
  signal \ssin_reg_n_0_[2]\ : STD_LOGIC;
  signal \ssin_reg_n_0_[3]\ : STD_LOGIC;
  signal \ssin_reg_n_0_[4]\ : STD_LOGIC;
  signal \ssin_reg_n_0_[5]\ : STD_LOGIC;
  signal \ssin_reg_n_0_[6]\ : STD_LOGIC;
  signal \ssin_reg_n_0_[7]\ : STD_LOGIC;
  signal \ssin_reg_n_0_[8]\ : STD_LOGIC;
  signal \ssin_reg_n_0_[9]\ : STD_LOGIC;
  signal ssout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \ssout[15]_i_1_n_0\ : STD_LOGIC;
  signal \ssout[15]_i_3_n_0\ : STD_LOGIC;
  signal \ssout[15]_i_4_n_0\ : STD_LOGIC;
  signal \ssout[7]_i_1_n_0\ : STD_LOGIC;
  signal \ssout[7]_i_3_n_0\ : STD_LOGIC;
  signal \ssout[7]_i_4_n_0\ : STD_LOGIC;
  signal \ssout_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \ssout_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \NLW_clk_cntr_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_clk_cntr_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_idle_count_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ledclk_c_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ledclk_c_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_ser1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ser1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ser1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ser1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ssclk_cntr_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_ssclk_cntr_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "STATE_INIT:0001,STATE_LOOP:0100,STATE_SEND:0010,STATE_DONE:1000";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "STATE_INIT:0001,STATE_LOOP:0100,STATE_SEND:0010,STATE_DONE:1000";
  attribute KEEP of \FSM_onehot_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "STATE_INIT:0001,STATE_LOOP:0100,STATE_SEND:0010,STATE_DONE:1000";
  attribute KEEP of \FSM_onehot_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "STATE_INIT:0001,STATE_LOOP:0100,STATE_SEND:0010,STATE_DONE:1000";
  attribute KEEP of \FSM_onehot_state_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ssbitno[1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \ssbitno[2]_i_1\ : label is "soft_lutpair34";
begin
  RCK <= \^rck\;
  SCK <= \^sck\;
  SER <= \^ser\;
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEAAAAAAAA"
    )
        port map (
      I0 => colpos,
      I1 => \bitno_reg_n_0_[3]\,
      I2 => \bitno_reg_n_0_[2]\,
      I3 => \bitno_reg_n_0_[0]\,
      I4 => \bitno_reg_n_0_[1]\,
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \bitno_reg_n_0_[1]\,
      I2 => \bitno_reg_n_0_[0]\,
      I3 => \bitno_reg_n_0_[2]\,
      I4 => \bitno_reg_n_0_[3]\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => clk2,
      D => \FSM_onehot_state_reg_n_0_[3]\,
      Q => colpos,
      R => '0'
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => clk2,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => clk2,
      D => \FSM_onehot_state_reg_n_0_[1]\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => clk2,
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => '0'
    );
\bitno[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \bitno_reg_n_0_[0]\,
      O => \bitno[0]_i_1_n_0\
    );
\bitno[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \bitno_reg_n_0_[1]\,
      I2 => \bitno_reg_n_0_[0]\,
      O => \bitno[1]_i_1_n_0\
    );
\bitno[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8882"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \bitno_reg_n_0_[2]\,
      I2 => \bitno_reg_n_0_[0]\,
      I3 => \bitno_reg_n_0_[1]\,
      O => \bitno[2]_i_1_n_0\
    );
\bitno[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => colpos,
      I1 => clk2,
      O => \bitno[3]_i_1_n_0\
    );
\bitno[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => clk2,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => colpos,
      O => \bitno[3]_i_2_n_0\
    );
\bitno[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888882"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \bitno_reg_n_0_[3]\,
      I2 => \bitno_reg_n_0_[1]\,
      I3 => \bitno_reg_n_0_[0]\,
      I4 => \bitno_reg_n_0_[2]\,
      O => \bitno[3]_i_3_n_0\
    );
\bitno_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \bitno[3]_i_2_n_0\,
      D => \bitno[0]_i_1_n_0\,
      Q => \bitno_reg_n_0_[0]\,
      S => \bitno[3]_i_1_n_0\
    );
\bitno_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \bitno[3]_i_2_n_0\,
      D => \bitno[1]_i_1_n_0\,
      Q => \bitno_reg_n_0_[1]\,
      S => \bitno[3]_i_1_n_0\
    );
\bitno_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \bitno[3]_i_2_n_0\,
      D => \bitno[2]_i_1_n_0\,
      Q => \bitno_reg_n_0_[2]\,
      S => \bitno[3]_i_1_n_0\
    );
\bitno_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \bitno[3]_i_2_n_0\,
      D => \bitno[3]_i_3_n_0\,
      Q => \bitno_reg_n_0_[3]\,
      S => \bitno[3]_i_1_n_0\
    );
\clk_cntr[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \clk_cntr_reg_n_0_[0]\,
      I1 => clk2,
      O => \clk_cntr[0]_i_2_n_0\
    );
\clk_cntr[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \clk_cntr_reg_n_0_[3]\,
      I1 => clk2,
      O => \clk_cntr[0]_i_3_n_0\
    );
\clk_cntr[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \clk_cntr_reg_n_0_[2]\,
      I1 => clk2,
      O => \clk_cntr[0]_i_4_n_0\
    );
\clk_cntr[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \clk_cntr_reg_n_0_[1]\,
      I1 => clk2,
      O => \clk_cntr[0]_i_5_n_0\
    );
\clk_cntr[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clk_cntr_reg_n_0_[0]\,
      I1 => clk2,
      O => \clk_cntr[0]_i_6_n_0\
    );
\clk_cntr[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \clk_cntr_reg_n_0_[7]\,
      I1 => clk2,
      O => \clk_cntr[4]_i_2_n_0\
    );
\clk_cntr[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \clk_cntr_reg_n_0_[6]\,
      I1 => clk2,
      O => \clk_cntr[4]_i_3_n_0\
    );
\clk_cntr[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \clk_cntr_reg_n_0_[5]\,
      I1 => clk2,
      O => \clk_cntr[4]_i_4_n_0\
    );
\clk_cntr[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \clk_cntr_reg_n_0_[4]\,
      I1 => clk2,
      O => \clk_cntr[4]_i_5_n_0\
    );
\clk_cntr[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \clk_cntr_reg_n_0_[10]\,
      I1 => clk2,
      O => \clk_cntr[8]_i_2_n_0\
    );
\clk_cntr[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \clk_cntr_reg_n_0_[9]\,
      I1 => clk2,
      O => \clk_cntr[8]_i_3_n_0\
    );
\clk_cntr[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \clk_cntr_reg_n_0_[8]\,
      I1 => clk2,
      O => \clk_cntr[8]_i_4_n_0\
    );
\clk_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cntr_reg[0]_i_1_n_7\,
      Q => \clk_cntr_reg_n_0_[0]\,
      R => '0'
    );
\clk_cntr_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clk_cntr_reg[0]_i_1_n_0\,
      CO(2) => \clk_cntr_reg[0]_i_1_n_1\,
      CO(1) => \clk_cntr_reg[0]_i_1_n_2\,
      CO(0) => \clk_cntr_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \clk_cntr[0]_i_2_n_0\,
      O(3) => \clk_cntr_reg[0]_i_1_n_4\,
      O(2) => \clk_cntr_reg[0]_i_1_n_5\,
      O(1) => \clk_cntr_reg[0]_i_1_n_6\,
      O(0) => \clk_cntr_reg[0]_i_1_n_7\,
      S(3) => \clk_cntr[0]_i_3_n_0\,
      S(2) => \clk_cntr[0]_i_4_n_0\,
      S(1) => \clk_cntr[0]_i_5_n_0\,
      S(0) => \clk_cntr[0]_i_6_n_0\
    );
\clk_cntr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cntr_reg[8]_i_1_n_5\,
      Q => \clk_cntr_reg_n_0_[10]\,
      R => '0'
    );
\clk_cntr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cntr_reg[8]_i_1_n_0\,
      Q => clk2,
      R => '0'
    );
\clk_cntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cntr_reg[0]_i_1_n_6\,
      Q => \clk_cntr_reg_n_0_[1]\,
      R => '0'
    );
\clk_cntr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cntr_reg[0]_i_1_n_5\,
      Q => \clk_cntr_reg_n_0_[2]\,
      R => '0'
    );
\clk_cntr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cntr_reg[0]_i_1_n_4\,
      Q => \clk_cntr_reg_n_0_[3]\,
      R => '0'
    );
\clk_cntr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cntr_reg[4]_i_1_n_7\,
      Q => \clk_cntr_reg_n_0_[4]\,
      R => '0'
    );
\clk_cntr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_cntr_reg[0]_i_1_n_0\,
      CO(3) => \clk_cntr_reg[4]_i_1_n_0\,
      CO(2) => \clk_cntr_reg[4]_i_1_n_1\,
      CO(1) => \clk_cntr_reg[4]_i_1_n_2\,
      CO(0) => \clk_cntr_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_cntr_reg[4]_i_1_n_4\,
      O(2) => \clk_cntr_reg[4]_i_1_n_5\,
      O(1) => \clk_cntr_reg[4]_i_1_n_6\,
      O(0) => \clk_cntr_reg[4]_i_1_n_7\,
      S(3) => \clk_cntr[4]_i_2_n_0\,
      S(2) => \clk_cntr[4]_i_3_n_0\,
      S(1) => \clk_cntr[4]_i_4_n_0\,
      S(0) => \clk_cntr[4]_i_5_n_0\
    );
\clk_cntr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cntr_reg[4]_i_1_n_6\,
      Q => \clk_cntr_reg_n_0_[5]\,
      R => '0'
    );
\clk_cntr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cntr_reg[4]_i_1_n_5\,
      Q => \clk_cntr_reg_n_0_[6]\,
      R => '0'
    );
\clk_cntr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cntr_reg[4]_i_1_n_4\,
      Q => \clk_cntr_reg_n_0_[7]\,
      R => '0'
    );
\clk_cntr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cntr_reg[8]_i_1_n_7\,
      Q => \clk_cntr_reg_n_0_[8]\,
      R => '0'
    );
\clk_cntr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_cntr_reg[4]_i_1_n_0\,
      CO(3) => \clk_cntr_reg[8]_i_1_n_0\,
      CO(2) => \NLW_clk_cntr_reg[8]_i_1_CO_UNCONNECTED\(2),
      CO(1) => \clk_cntr_reg[8]_i_1_n_2\,
      CO(0) => \clk_cntr_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_clk_cntr_reg[8]_i_1_O_UNCONNECTED\(3),
      O(2) => \clk_cntr_reg[8]_i_1_n_5\,
      O(1) => \clk_cntr_reg[8]_i_1_n_6\,
      O(0) => \clk_cntr_reg[8]_i_1_n_7\,
      S(3) => '1',
      S(2) => \clk_cntr[8]_i_2_n_0\,
      S(1) => \clk_cntr[8]_i_3_n_0\,
      S(0) => \clk_cntr[8]_i_4_n_0\
    );
\clk_cntr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_cntr_reg[8]_i_1_n_6\,
      Q => \clk_cntr_reg_n_0_[9]\,
      R => '0'
    );
\colpos[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => colpos,
      I1 => clk2,
      I2 => \colpos_reg_n_0_[0]\,
      O => \colpos[0]_i_1_n_0\
    );
\colpos[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \colpos_reg_n_0_[0]\,
      I1 => clk2,
      I2 => colpos,
      I3 => \colpos_reg_n_0_[1]\,
      O => \colpos[1]_i_1_n_0\
    );
\colpos[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \colpos_reg_n_0_[0]\,
      I1 => \colpos_reg_n_0_[1]\,
      I2 => clk2,
      I3 => colpos,
      I4 => \colpos_reg_n_0_[2]\,
      O => \colpos[2]_i_1_n_0\
    );
\colpos_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \colpos[0]_i_1_n_0\,
      Q => \colpos_reg_n_0_[0]\,
      R => '0'
    );
\colpos_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \colpos[1]_i_1_n_0\,
      Q => \colpos_reg_n_0_[1]\,
      R => '0'
    );
\colpos_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \colpos[2]_i_1_n_0\,
      Q => \colpos_reg_n_0_[2]\,
      R => '0'
    );
\idle_count[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \idle_count_reg_n_0_[0]\,
      O => \idle_count[0]_i_7_n_0\
    );
\idle_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[0]_i_2_n_7\,
      Q => \idle_count_reg_n_0_[0]\,
      R => notidle
    );
\idle_count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \idle_count_reg[0]_i_2_n_0\,
      CO(2) => \idle_count_reg[0]_i_2_n_1\,
      CO(1) => \idle_count_reg[0]_i_2_n_2\,
      CO(0) => \idle_count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \idle_count_reg[0]_i_2_n_4\,
      O(2) => \idle_count_reg[0]_i_2_n_5\,
      O(1) => \idle_count_reg[0]_i_2_n_6\,
      O(0) => \idle_count_reg[0]_i_2_n_7\,
      S(3) => \idle_count_reg_n_0_[3]\,
      S(2) => \idle_count_reg_n_0_[2]\,
      S(1) => \idle_count_reg_n_0_[1]\,
      S(0) => \idle_count[0]_i_7_n_0\
    );
\idle_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[8]_i_1_n_5\,
      Q => \idle_count_reg_n_0_[10]\,
      R => notidle
    );
\idle_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[8]_i_1_n_4\,
      Q => \idle_count_reg_n_0_[11]\,
      R => notidle
    );
\idle_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[12]_i_1_n_7\,
      Q => \idle_count_reg_n_0_[12]\,
      R => notidle
    );
\idle_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \idle_count_reg[8]_i_1_n_0\,
      CO(3) => \idle_count_reg[12]_i_1_n_0\,
      CO(2) => \idle_count_reg[12]_i_1_n_1\,
      CO(1) => \idle_count_reg[12]_i_1_n_2\,
      CO(0) => \idle_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \idle_count_reg[12]_i_1_n_4\,
      O(2) => \idle_count_reg[12]_i_1_n_5\,
      O(1) => \idle_count_reg[12]_i_1_n_6\,
      O(0) => \idle_count_reg[12]_i_1_n_7\,
      S(3) => \idle_count_reg_n_0_[15]\,
      S(2) => \idle_count_reg_n_0_[14]\,
      S(1) => \idle_count_reg_n_0_[13]\,
      S(0) => \idle_count_reg_n_0_[12]\
    );
\idle_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[12]_i_1_n_6\,
      Q => \idle_count_reg_n_0_[13]\,
      R => notidle
    );
\idle_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[12]_i_1_n_5\,
      Q => \idle_count_reg_n_0_[14]\,
      R => notidle
    );
\idle_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[12]_i_1_n_4\,
      Q => \idle_count_reg_n_0_[15]\,
      R => notidle
    );
\idle_count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[16]_i_1_n_7\,
      Q => \idle_count_reg_n_0_[16]\,
      R => notidle
    );
\idle_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \idle_count_reg[12]_i_1_n_0\,
      CO(3) => \idle_count_reg[16]_i_1_n_0\,
      CO(2) => \idle_count_reg[16]_i_1_n_1\,
      CO(1) => \idle_count_reg[16]_i_1_n_2\,
      CO(0) => \idle_count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \idle_count_reg[16]_i_1_n_4\,
      O(2) => \idle_count_reg[16]_i_1_n_5\,
      O(1) => \idle_count_reg[16]_i_1_n_6\,
      O(0) => \idle_count_reg[16]_i_1_n_7\,
      S(3) => \idle_count_reg_n_0_[19]\,
      S(2) => \idle_count_reg_n_0_[18]\,
      S(1) => \idle_count_reg_n_0_[17]\,
      S(0) => \idle_count_reg_n_0_[16]\
    );
\idle_count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[16]_i_1_n_6\,
      Q => \idle_count_reg_n_0_[17]\,
      R => notidle
    );
\idle_count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[16]_i_1_n_5\,
      Q => \idle_count_reg_n_0_[18]\,
      R => notidle
    );
\idle_count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[16]_i_1_n_4\,
      Q => \idle_count_reg_n_0_[19]\,
      R => notidle
    );
\idle_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[0]_i_2_n_6\,
      Q => \idle_count_reg_n_0_[1]\,
      R => notidle
    );
\idle_count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[20]_i_1_n_7\,
      Q => \idle_count_reg_n_0_[20]\,
      R => notidle
    );
\idle_count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \idle_count_reg[16]_i_1_n_0\,
      CO(3) => \idle_count_reg[20]_i_1_n_0\,
      CO(2) => \idle_count_reg[20]_i_1_n_1\,
      CO(1) => \idle_count_reg[20]_i_1_n_2\,
      CO(0) => \idle_count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \idle_count_reg[20]_i_1_n_4\,
      O(2) => \idle_count_reg[20]_i_1_n_5\,
      O(1) => \idle_count_reg[20]_i_1_n_6\,
      O(0) => \idle_count_reg[20]_i_1_n_7\,
      S(3) => \idle_count_reg_n_0_[23]\,
      S(2) => \idle_count_reg_n_0_[22]\,
      S(1) => \idle_count_reg_n_0_[21]\,
      S(0) => \idle_count_reg_n_0_[20]\
    );
\idle_count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[20]_i_1_n_6\,
      Q => \idle_count_reg_n_0_[21]\,
      R => notidle
    );
\idle_count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[20]_i_1_n_5\,
      Q => \idle_count_reg_n_0_[22]\,
      R => notidle
    );
\idle_count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[20]_i_1_n_4\,
      Q => \idle_count_reg_n_0_[23]\,
      R => notidle
    );
\idle_count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[24]_i_1_n_7\,
      Q => \idle_count_reg_n_0_[24]\,
      R => notidle
    );
\idle_count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \idle_count_reg[20]_i_1_n_0\,
      CO(3) => \idle_count_reg[24]_i_1_n_0\,
      CO(2) => \idle_count_reg[24]_i_1_n_1\,
      CO(1) => \idle_count_reg[24]_i_1_n_2\,
      CO(0) => \idle_count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \idle_count_reg[24]_i_1_n_4\,
      O(2) => \idle_count_reg[24]_i_1_n_5\,
      O(1) => \idle_count_reg[24]_i_1_n_6\,
      O(0) => \idle_count_reg[24]_i_1_n_7\,
      S(3) => \idle_count_reg_n_0_[27]\,
      S(2) => \idle_count_reg_n_0_[26]\,
      S(1) => \idle_count_reg_n_0_[25]\,
      S(0) => \idle_count_reg_n_0_[24]\
    );
\idle_count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[24]_i_1_n_6\,
      Q => \idle_count_reg_n_0_[25]\,
      R => notidle
    );
\idle_count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[24]_i_1_n_5\,
      Q => \idle_count_reg_n_0_[26]\,
      R => notidle
    );
\idle_count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[24]_i_1_n_4\,
      Q => \idle_count_reg_n_0_[27]\,
      R => notidle
    );
\idle_count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[28]_i_1_n_7\,
      Q => \idle_count_reg_n_0_[28]\,
      R => notidle
    );
\idle_count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \idle_count_reg[24]_i_1_n_0\,
      CO(3) => \NLW_idle_count_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \idle_count_reg[28]_i_1_n_1\,
      CO(1) => \idle_count_reg[28]_i_1_n_2\,
      CO(0) => \idle_count_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \idle_count_reg[28]_i_1_n_4\,
      O(2) => \idle_count_reg[28]_i_1_n_5\,
      O(1) => \idle_count_reg[28]_i_1_n_6\,
      O(0) => \idle_count_reg[28]_i_1_n_7\,
      S(3) => idle,
      S(2) => \idle_count_reg_n_0_[30]\,
      S(1) => \idle_count_reg_n_0_[29]\,
      S(0) => \idle_count_reg_n_0_[28]\
    );
\idle_count_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[28]_i_1_n_6\,
      Q => \idle_count_reg_n_0_[29]\,
      R => notidle
    );
\idle_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[0]_i_2_n_5\,
      Q => \idle_count_reg_n_0_[2]\,
      R => notidle
    );
\idle_count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[28]_i_1_n_5\,
      Q => \idle_count_reg_n_0_[30]\,
      R => notidle
    );
\idle_count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[28]_i_1_n_4\,
      Q => idle,
      R => notidle
    );
\idle_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[0]_i_2_n_4\,
      Q => \idle_count_reg_n_0_[3]\,
      R => notidle
    );
\idle_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[4]_i_1_n_7\,
      Q => \idle_count_reg_n_0_[4]\,
      R => notidle
    );
\idle_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \idle_count_reg[0]_i_2_n_0\,
      CO(3) => \idle_count_reg[4]_i_1_n_0\,
      CO(2) => \idle_count_reg[4]_i_1_n_1\,
      CO(1) => \idle_count_reg[4]_i_1_n_2\,
      CO(0) => \idle_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \idle_count_reg[4]_i_1_n_4\,
      O(2) => \idle_count_reg[4]_i_1_n_5\,
      O(1) => \idle_count_reg[4]_i_1_n_6\,
      O(0) => \idle_count_reg[4]_i_1_n_7\,
      S(3) => \idle_count_reg_n_0_[7]\,
      S(2) => \idle_count_reg_n_0_[6]\,
      S(1) => \idle_count_reg_n_0_[5]\,
      S(0) => \idle_count_reg_n_0_[4]\
    );
\idle_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[4]_i_1_n_6\,
      Q => \idle_count_reg_n_0_[5]\,
      R => notidle
    );
\idle_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[4]_i_1_n_5\,
      Q => \idle_count_reg_n_0_[6]\,
      R => notidle
    );
\idle_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[4]_i_1_n_4\,
      Q => \idle_count_reg_n_0_[7]\,
      R => notidle
    );
\idle_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[8]_i_1_n_7\,
      Q => \idle_count_reg_n_0_[8]\,
      R => notidle
    );
\idle_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \idle_count_reg[4]_i_1_n_0\,
      CO(3) => \idle_count_reg[8]_i_1_n_0\,
      CO(2) => \idle_count_reg[8]_i_1_n_1\,
      CO(1) => \idle_count_reg[8]_i_1_n_2\,
      CO(0) => \idle_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \idle_count_reg[8]_i_1_n_4\,
      O(2) => \idle_count_reg[8]_i_1_n_5\,
      O(1) => \idle_count_reg[8]_i_1_n_6\,
      O(0) => \idle_count_reg[8]_i_1_n_7\,
      S(3) => \idle_count_reg_n_0_[11]\,
      S(2) => \idle_count_reg_n_0_[10]\,
      S(1) => \idle_count_reg_n_0_[9]\,
      S(0) => \idle_count_reg_n_0_[8]\
    );
\idle_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => sel,
      D => \idle_count_reg[8]_i_1_n_6\,
      Q => \idle_count_reg_n_0_[9]\,
      R => notidle
    );
\input_leds_inst[0]\: entity work.design_1_led_shift_594_driver_0_0_delayed
     port map (
      Q(0) => \ssin_reg_n_0_[0]\,
      \colpos_reg[0]\ => \input_leds_inst_n_0_[2]\,
      \colpos_reg[0]_0\ => \colpos_reg_n_0_[0]\,
      \colpos_reg[1]\ => \colpos_reg_n_0_[1]\,
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg => \input_leds_inst_n_0_[0]\,
      \slv_reg0_reg[0]\(0) => \slv_reg0_reg[15]\(0),
      \ssin_reg[1]\(0) => \inact__15\(1)
    );
\input_leds_inst[10]\: entity work.design_1_led_shift_594_driver_0_0_delayed_0
     port map (
      Q(0) => \ssin_reg_n_0_[10]\,
      \colpos_reg[0]\ => \colpos_reg_n_0_[0]\,
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg => \input_leds_inst_n_0_[10]\,
      \slv_reg0_reg[10]\(0) => \slv_reg0_reg[15]\(10),
      \ssin_reg[11]\(0) => \inact__15\(11)
    );
\input_leds_inst[11]\: entity work.design_1_led_shift_594_driver_0_0_delayed_1
     port map (
      Q(0) => \ssin_reg_n_0_[11]\,
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg(0) => \inact__15\(11),
      \slv_reg0_reg[11]\(0) => \slv_reg0_reg[15]\(11)
    );
\input_leds_inst[12]\: entity work.design_1_led_shift_594_driver_0_0_delayed_2
     port map (
      CO(0) => \ser1_carry__1_n_1\,
      D(0) => \FSM_onehot_state_reg_n_0_[1]\,
      Q(0) => \ssin_reg_n_0_[12]\,
      SER => \^ser\,
      \bitno_reg[0]\ => \output_leds_inst_n_0_[4]\,
      \bitno_reg[0]_0\ => \bitno_reg_n_0_[0]\,
      \bitno_reg[1]\ => \bitno_reg_n_0_[1]\,
      \bitno_reg[2]\ => \bitno_reg_n_0_[2]\,
      \bitno_reg[3]\ => \bitno_reg_n_0_[3]\,
      clk2 => clk2,
      \colpos_reg[0]\ => \input_leds_inst_n_0_[14]\,
      \colpos_reg[0]_0\ => \colpos_reg_n_0_[0]\,
      \colpos_reg[1]\ => \input_leds_inst_n_0_[8]\,
      \colpos_reg[1]_0\ => \output_leds_inst_n_0_[12]\,
      \colpos_reg[1]_1\ => \output_leds_inst_n_0_[8]\,
      \colpos_reg[1]_2\ => \colpos_reg_n_0_[1]\,
      \colpos_reg[2]\ => \colpos_reg_n_0_[2]\,
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg => \input_leds_inst_n_0_[12]\,
      \slv_reg0_reg[12]\(0) => \slv_reg0_reg[15]\(12),
      \ssin_reg[13]\(0) => \inact__15\(13)
    );
\input_leds_inst[13]\: entity work.design_1_led_shift_594_driver_0_0_delayed_3
     port map (
      Q(0) => \ssin_reg_n_0_[13]\,
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg(0) => \inact__15\(13),
      \slv_reg0_reg[13]\(0) => \slv_reg0_reg[15]\(13)
    );
\input_leds_inst[14]\: entity work.design_1_led_shift_594_driver_0_0_delayed_4
     port map (
      Q(0) => \ssin_reg_n_0_[14]\,
      \colpos_reg[0]\ => \colpos_reg_n_0_[0]\,
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg => \input_leds_inst_n_0_[14]\,
      \slv_reg0_reg[14]\(0) => \slv_reg0_reg[15]\(14),
      \ssin_reg[15]\(0) => \inact__15\(15)
    );
\input_leds_inst[15]\: entity work.design_1_led_shift_594_driver_0_0_delayed_5
     port map (
      Q(0) => \ssin_reg_n_0_[15]\,
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg(0) => \inact__15\(15),
      \slv_reg0_reg[15]\(0) => \slv_reg0_reg[15]\(15)
    );
\input_leds_inst[1]\: entity work.design_1_led_shift_594_driver_0_0_delayed_6
     port map (
      Q(0) => \ssin_reg_n_0_[1]\,
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg(0) => \inact__15\(1),
      \slv_reg0_reg[1]\(0) => \slv_reg0_reg[15]\(1)
    );
\input_leds_inst[2]\: entity work.design_1_led_shift_594_driver_0_0_delayed_7
     port map (
      Q(0) => \ssin_reg_n_0_[2]\,
      \colpos_reg[0]\ => \colpos_reg_n_0_[0]\,
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg => \input_leds_inst_n_0_[2]\,
      \slv_reg0_reg[2]\(0) => \slv_reg0_reg[15]\(2),
      \ssin_reg[3]\(0) => \inact__15\(3)
    );
\input_leds_inst[3]\: entity work.design_1_led_shift_594_driver_0_0_delayed_8
     port map (
      Q(0) => \ssin_reg_n_0_[3]\,
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg(0) => \inact__15\(3),
      \slv_reg0_reg[3]\(0) => \slv_reg0_reg[15]\(3)
    );
\input_leds_inst[4]\: entity work.design_1_led_shift_594_driver_0_0_delayed_9
     port map (
      Q(0) => \ssin_reg_n_0_[4]\,
      \colpos_reg[0]\ => \input_leds_inst_n_0_[6]\,
      \colpos_reg[0]_0\ => \colpos_reg_n_0_[0]\,
      \colpos_reg[1]\ => \colpos_reg_n_0_[1]\,
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg => \input_leds_inst_n_0_[4]\,
      \slv_reg0_reg[4]\(0) => \slv_reg0_reg[15]\(4),
      \ssin_reg[5]\(0) => \inact__15\(5)
    );
\input_leds_inst[5]\: entity work.design_1_led_shift_594_driver_0_0_delayed_10
     port map (
      Q(0) => \ssin_reg_n_0_[5]\,
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg(0) => \inact__15\(5),
      \slv_reg0_reg[5]\(0) => \slv_reg0_reg[15]\(5)
    );
\input_leds_inst[6]\: entity work.design_1_led_shift_594_driver_0_0_delayed_11
     port map (
      Q(0) => \ssin_reg_n_0_[6]\,
      \colpos_reg[0]\ => \colpos_reg_n_0_[0]\,
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg => \input_leds_inst_n_0_[6]\,
      \slv_reg0_reg[6]\(0) => \slv_reg0_reg[15]\(6),
      \ssin_reg[7]\(0) => \inact__15\(7)
    );
\input_leds_inst[7]\: entity work.design_1_led_shift_594_driver_0_0_delayed_12
     port map (
      Q(0) => \ssin_reg_n_0_[7]\,
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg(0) => \inact__15\(7),
      \slv_reg0_reg[7]\(0) => \slv_reg0_reg[15]\(7)
    );
\input_leds_inst[8]\: entity work.design_1_led_shift_594_driver_0_0_delayed_13
     port map (
      Q(0) => \ssin_reg_n_0_[8]\,
      \colpos_reg[0]\ => \input_leds_inst_n_0_[10]\,
      \colpos_reg[0]_0\ => \colpos_reg_n_0_[0]\,
      \colpos_reg[1]\ => \colpos_reg_n_0_[1]\,
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg => \input_leds_inst_n_0_[8]\,
      \slv_reg0_reg[8]\(0) => \slv_reg0_reg[15]\(8),
      \ssin_reg[9]\(0) => \inact__15\(9)
    );
\input_leds_inst[9]\: entity work.design_1_led_shift_594_driver_0_0_delayed_14
     port map (
      Q(0) => \ssin_reg_n_0_[9]\,
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg(0) => \inact__15\(9),
      \slv_reg0_reg[9]\(0) => \slv_reg0_reg[15]\(9)
    );
\ledclk_c[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ledclk_c_reg(0),
      O => \ledclk_c[0]_i_2_n_0\
    );
\ledclk_c_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ledclk_c_reg[0]_i_1_n_7\,
      Q => ledclk_c_reg(0),
      R => '0'
    );
\ledclk_c_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ledclk_c_reg[0]_i_1_n_0\,
      CO(2) => \ledclk_c_reg[0]_i_1_n_1\,
      CO(1) => \ledclk_c_reg[0]_i_1_n_2\,
      CO(0) => \ledclk_c_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \ledclk_c_reg[0]_i_1_n_4\,
      O(2) => \ledclk_c_reg[0]_i_1_n_5\,
      O(1) => \ledclk_c_reg[0]_i_1_n_6\,
      O(0) => \ledclk_c_reg[0]_i_1_n_7\,
      S(3 downto 1) => ledclk_c_reg(3 downto 1),
      S(0) => \ledclk_c[0]_i_2_n_0\
    );
\ledclk_c_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ledclk_c_reg[8]_i_1_n_5\,
      Q => ledclk_c_reg(10),
      R => '0'
    );
\ledclk_c_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ledclk_c_reg[8]_i_1_n_4\,
      Q => ledclk_c_reg(11),
      R => '0'
    );
\ledclk_c_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ledclk_c_reg[12]_i_1_n_7\,
      Q => ledclk_c_reg(12),
      R => '0'
    );
\ledclk_c_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ledclk_c_reg[8]_i_1_n_0\,
      CO(3) => \ledclk_c_reg[12]_i_1_n_0\,
      CO(2) => \ledclk_c_reg[12]_i_1_n_1\,
      CO(1) => \ledclk_c_reg[12]_i_1_n_2\,
      CO(0) => \ledclk_c_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ledclk_c_reg[12]_i_1_n_4\,
      O(2) => \ledclk_c_reg[12]_i_1_n_5\,
      O(1) => \ledclk_c_reg[12]_i_1_n_6\,
      O(0) => \ledclk_c_reg[12]_i_1_n_7\,
      S(3 downto 0) => ledclk_c_reg(15 downto 12)
    );
\ledclk_c_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ledclk_c_reg[12]_i_1_n_6\,
      Q => ledclk_c_reg(13),
      R => '0'
    );
\ledclk_c_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ledclk_c_reg[12]_i_1_n_5\,
      Q => ledclk_c_reg(14),
      R => '0'
    );
\ledclk_c_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ledclk_c_reg[12]_i_1_n_4\,
      Q => ledclk_c_reg(15),
      R => '0'
    );
\ledclk_c_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ledclk_c_reg[16]_i_1_n_7\,
      Q => ledclk_c_reg(16),
      R => '0'
    );
\ledclk_c_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ledclk_c_reg[12]_i_1_n_0\,
      CO(3) => \ledclk_c_reg[16]_i_1_n_0\,
      CO(2) => \ledclk_c_reg[16]_i_1_n_1\,
      CO(1) => \ledclk_c_reg[16]_i_1_n_2\,
      CO(0) => \ledclk_c_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ledclk_c_reg[16]_i_1_n_4\,
      O(2) => \ledclk_c_reg[16]_i_1_n_5\,
      O(1) => \ledclk_c_reg[16]_i_1_n_6\,
      O(0) => \ledclk_c_reg[16]_i_1_n_7\,
      S(3 downto 0) => ledclk_c_reg(19 downto 16)
    );
\ledclk_c_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ledclk_c_reg[16]_i_1_n_6\,
      Q => ledclk_c_reg(17),
      R => '0'
    );
\ledclk_c_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ledclk_c_reg[16]_i_1_n_5\,
      Q => ledclk_c_reg(18),
      R => '0'
    );
\ledclk_c_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ledclk_c_reg[16]_i_1_n_4\,
      Q => ledclk_c_reg(19),
      R => '0'
    );
\ledclk_c_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ledclk_c_reg[0]_i_1_n_6\,
      Q => ledclk_c_reg(1),
      R => '0'
    );
\ledclk_c_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ledclk_c_reg[20]_i_1_n_7\,
      Q => ledclk_c_reg(20),
      R => '0'
    );
\ledclk_c_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ledclk_c_reg[16]_i_1_n_0\,
      CO(3 downto 0) => \NLW_ledclk_c_reg[20]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_ledclk_c_reg[20]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \ledclk_c_reg[20]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => ledclk_c_reg(20)
    );
\ledclk_c_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ledclk_c_reg[0]_i_1_n_5\,
      Q => ledclk_c_reg(2),
      R => '0'
    );
\ledclk_c_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ledclk_c_reg[0]_i_1_n_4\,
      Q => ledclk_c_reg(3),
      R => '0'
    );
\ledclk_c_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ledclk_c_reg[4]_i_1_n_7\,
      Q => ledclk_c_reg(4),
      R => '0'
    );
\ledclk_c_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ledclk_c_reg[0]_i_1_n_0\,
      CO(3) => \ledclk_c_reg[4]_i_1_n_0\,
      CO(2) => \ledclk_c_reg[4]_i_1_n_1\,
      CO(1) => \ledclk_c_reg[4]_i_1_n_2\,
      CO(0) => \ledclk_c_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ledclk_c_reg[4]_i_1_n_4\,
      O(2) => \ledclk_c_reg[4]_i_1_n_5\,
      O(1) => \ledclk_c_reg[4]_i_1_n_6\,
      O(0) => \ledclk_c_reg[4]_i_1_n_7\,
      S(3 downto 0) => ledclk_c_reg(7 downto 4)
    );
\ledclk_c_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ledclk_c_reg[4]_i_1_n_6\,
      Q => ledclk_c_reg(5),
      R => '0'
    );
\ledclk_c_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ledclk_c_reg[4]_i_1_n_5\,
      Q => ledclk_c_reg(6),
      R => '0'
    );
\ledclk_c_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ledclk_c_reg[4]_i_1_n_4\,
      Q => ledclk_c_reg(7),
      R => '0'
    );
\ledclk_c_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ledclk_c_reg[8]_i_1_n_7\,
      Q => ledclk_c_reg(8),
      R => '0'
    );
\ledclk_c_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ledclk_c_reg[4]_i_1_n_0\,
      CO(3) => \ledclk_c_reg[8]_i_1_n_0\,
      CO(2) => \ledclk_c_reg[8]_i_1_n_1\,
      CO(1) => \ledclk_c_reg[8]_i_1_n_2\,
      CO(0) => \ledclk_c_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ledclk_c_reg[8]_i_1_n_4\,
      O(2) => \ledclk_c_reg[8]_i_1_n_5\,
      O(1) => \ledclk_c_reg[8]_i_1_n_6\,
      O(0) => \ledclk_c_reg[8]_i_1_n_7\,
      S(3 downto 0) => ledclk_c_reg(11 downto 8)
    );
\ledclk_c_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ledclk_c_reg[8]_i_1_n_6\,
      Q => ledclk_c_reg(9),
      R => '0'
    );
\output_leds_inst[0]\: entity work.design_1_led_shift_594_driver_0_0_delayed_15
     port map (
      Q(0) => Q(0),
      \colpos_reg[0]\ => \output_leds_inst_n_0_[2]\,
      \colpos_reg[0]_0\ => \colpos_reg_n_0_[0]\,
      \colpos_reg[1]\ => \colpos_reg_n_0_[1]\,
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg => \output_leds_inst_n_0_[0]\,
      \ssout_reg[0]\(0) => ssout(0),
      \ssout_reg[1]\(0) => \outact__15\(1)
    );
\output_leds_inst[10]\: entity work.design_1_led_shift_594_driver_0_0_delayed_16
     port map (
      Q(0) => Q(10),
      \colpos_reg[0]\ => \colpos_reg_n_0_[0]\,
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg => \output_leds_inst_n_0_[10]\,
      \ssout_reg[10]\(0) => ssout(10),
      \ssout_reg[11]\(0) => \outact__15\(11)
    );
\output_leds_inst[11]\: entity work.design_1_led_shift_594_driver_0_0_delayed_17
     port map (
      Q(0) => Q(11),
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg(0) => \outact__15\(11),
      \ssout_reg[11]\(0) => ssout(11)
    );
\output_leds_inst[12]\: entity work.design_1_led_shift_594_driver_0_0_delayed_18
     port map (
      Q(0) => Q(12),
      \colpos_reg[0]\ => \output_leds_inst_n_0_[14]\,
      \colpos_reg[0]_0\ => \colpos_reg_n_0_[0]\,
      \colpos_reg[1]\ => \colpos_reg_n_0_[1]\,
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg => \output_leds_inst_n_0_[12]\,
      \ssout_reg[12]\(0) => ssout(12),
      \ssout_reg[13]\(0) => \outact__15\(13)
    );
\output_leds_inst[13]\: entity work.design_1_led_shift_594_driver_0_0_delayed_19
     port map (
      Q(0) => Q(13),
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg(0) => \outact__15\(13),
      \ssout_reg[13]\(0) => ssout(13)
    );
\output_leds_inst[14]\: entity work.design_1_led_shift_594_driver_0_0_delayed_20
     port map (
      Q(0) => Q(14),
      \colpos_reg[0]\ => \colpos_reg_n_0_[0]\,
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg => \output_leds_inst_n_0_[14]\,
      \ssout_reg[14]\(0) => ssout(14),
      \ssout_reg[15]\(0) => \outact__15\(15)
    );
\output_leds_inst[15]\: entity work.design_1_led_shift_594_driver_0_0_delayed_21
     port map (
      Q(0) => Q(15),
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg(0) => \outact__15\(15),
      \ssout_reg[15]\(0) => ssout(15)
    );
\output_leds_inst[1]\: entity work.design_1_led_shift_594_driver_0_0_delayed_22
     port map (
      Q(0) => Q(1),
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      ledclk_c_reg(20 downto 0) => ledclk_c_reg(20 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      ser_reg(0) => \outact__15\(1),
      \ssout_reg[1]\(0) => ssout(1)
    );
\output_leds_inst[2]\: entity work.design_1_led_shift_594_driver_0_0_delayed_23
     port map (
      Q(0) => Q(2),
      \colpos_reg[0]\ => \colpos_reg_n_0_[0]\,
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg => \output_leds_inst_n_0_[2]\,
      \ssout_reg[2]\(0) => ssout(2),
      \ssout_reg[3]\(0) => \outact__15\(3)
    );
\output_leds_inst[3]\: entity work.design_1_led_shift_594_driver_0_0_delayed_24
     port map (
      Q(0) => Q(3),
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg(0) => \outact__15\(3),
      \ssout_reg[3]\(0) => ssout(3)
    );
\output_leds_inst[4]\: entity work.design_1_led_shift_594_driver_0_0_delayed_25
     port map (
      Q(0) => Q(4),
      \bitno_reg[0]\ => \bitno_reg_n_0_[0]\,
      \colpos_reg[0]\ => \output_leds_inst_n_0_[6]\,
      \colpos_reg[0]_0\ => \colpos_reg_n_0_[0]\,
      \colpos_reg[1]\ => \output_leds_inst_n_0_[0]\,
      \colpos_reg[1]_0\ => \input_leds_inst_n_0_[4]\,
      \colpos_reg[1]_1\ => \input_leds_inst_n_0_[0]\,
      \colpos_reg[1]_2\ => \colpos_reg_n_0_[1]\,
      \colpos_reg[2]\ => \colpos_reg_n_0_[2]\,
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg => \output_leds_inst_n_0_[4]\,
      \ssout_reg[4]\(0) => ssout(4),
      \ssout_reg[5]\(0) => \outact__15\(5)
    );
\output_leds_inst[5]\: entity work.design_1_led_shift_594_driver_0_0_delayed_26
     port map (
      Q(0) => Q(5),
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg(0) => \outact__15\(5),
      \ssout_reg[5]\(0) => ssout(5)
    );
\output_leds_inst[6]\: entity work.design_1_led_shift_594_driver_0_0_delayed_27
     port map (
      Q(0) => Q(6),
      \colpos_reg[0]\ => \colpos_reg_n_0_[0]\,
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg => \output_leds_inst_n_0_[6]\,
      \ssout_reg[6]\(0) => ssout(6),
      \ssout_reg[7]\(0) => \outact__15\(7)
    );
\output_leds_inst[7]\: entity work.design_1_led_shift_594_driver_0_0_delayed_28
     port map (
      Q(0) => Q(7),
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg(0) => \outact__15\(7),
      \ssout_reg[7]\(0) => ssout(7)
    );
\output_leds_inst[8]\: entity work.design_1_led_shift_594_driver_0_0_delayed_29
     port map (
      Q(0) => Q(8),
      \colpos_reg[0]\ => \output_leds_inst_n_0_[10]\,
      \colpos_reg[0]_0\ => \colpos_reg_n_0_[0]\,
      \colpos_reg[1]\ => \colpos_reg_n_0_[1]\,
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg => \output_leds_inst_n_0_[8]\,
      \ssout_reg[8]\(0) => ssout(8),
      \ssout_reg[9]\(0) => \outact__15\(9)
    );
\output_leds_inst[9]\: entity work.design_1_led_shift_594_driver_0_0_delayed_30
     port map (
      Q(0) => Q(9),
      idle => idle,
      \ledclk__19\ => \ledclk__19\,
      s00_axi_aclk => s00_axi_aclk,
      ser_reg(0) => \outact__15\(9),
      \ssout_reg[9]\(0) => ssout(9)
    );
rck_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF88"
    )
        port map (
      I0 => clk2,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => colpos,
      I3 => \^rck\,
      O => rck_i_1_n_0
    );
rck_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => rck_i_1_n_0,
      Q => \^rck\,
      R => '0'
    );
sck_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF57AA00"
    )
        port map (
      I0 => clk2,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => colpos,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => \^sck\,
      O => sck_i_1_n_0
    );
sck_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sck_i_1_n_0,
      Q => \^sck\,
      R => '0'
    );
ser1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ser1_carry_n_0,
      CO(2) => ser1_carry_n_1,
      CO(1) => ser1_carry_n_2,
      CO(0) => ser1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_ser1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => ser1_carry_i_1_n_0,
      S(2) => ser1_carry_i_2_n_0,
      S(1) => ser1_carry_i_3_n_0,
      S(0) => ser1_carry_i_4_n_0
    );
\ser1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ser1_carry_n_0,
      CO(3) => \ser1_carry__0_n_0\,
      CO(2) => \ser1_carry__0_n_1\,
      CO(1) => \ser1_carry__0_n_2\,
      CO(0) => \ser1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ser1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \ser1_carry__0_i_1_n_0\,
      S(2) => \ser1_carry__0_i_2_n_0\,
      S(1) => \ser1_carry__0_i_3_n_0\,
      S(0) => \ser1_carry__0_i_4_n_0\
    );
\ser1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bitno_reg_n_0_[2]\,
      I1 => \bitno_reg_n_0_[0]\,
      I2 => \bitno_reg_n_0_[1]\,
      I3 => \bitno_reg_n_0_[3]\,
      O => \ser1_carry__0_i_1_n_0\
    );
\ser1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bitno_reg_n_0_[2]\,
      I1 => \bitno_reg_n_0_[0]\,
      I2 => \bitno_reg_n_0_[1]\,
      I3 => \bitno_reg_n_0_[3]\,
      O => \ser1_carry__0_i_2_n_0\
    );
\ser1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bitno_reg_n_0_[2]\,
      I1 => \bitno_reg_n_0_[0]\,
      I2 => \bitno_reg_n_0_[1]\,
      I3 => \bitno_reg_n_0_[3]\,
      O => \ser1_carry__0_i_3_n_0\
    );
\ser1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bitno_reg_n_0_[2]\,
      I1 => \bitno_reg_n_0_[0]\,
      I2 => \bitno_reg_n_0_[1]\,
      I3 => \bitno_reg_n_0_[3]\,
      O => \ser1_carry__0_i_4_n_0\
    );
\ser1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ser1_carry__0_n_0\,
      CO(3) => \NLW_ser1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \ser1_carry__1_n_1\,
      CO(1) => \ser1_carry__1_n_2\,
      CO(0) => \ser1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ser1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \ser1_carry__1_i_1_n_0\,
      S(1) => \ser1_carry__1_i_2_n_0\,
      S(0) => \ser1_carry__1_i_3_n_0\
    );
\ser1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bitno_reg_n_0_[2]\,
      I1 => \bitno_reg_n_0_[0]\,
      I2 => \bitno_reg_n_0_[1]\,
      I3 => \bitno_reg_n_0_[3]\,
      O => \ser1_carry__1_i_1_n_0\
    );
\ser1_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bitno_reg_n_0_[2]\,
      I1 => \bitno_reg_n_0_[0]\,
      I2 => \bitno_reg_n_0_[1]\,
      I3 => \bitno_reg_n_0_[3]\,
      O => \ser1_carry__1_i_2_n_0\
    );
\ser1_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bitno_reg_n_0_[2]\,
      I1 => \bitno_reg_n_0_[0]\,
      I2 => \bitno_reg_n_0_[1]\,
      I3 => \bitno_reg_n_0_[3]\,
      O => \ser1_carry__1_i_3_n_0\
    );
ser1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bitno_reg_n_0_[2]\,
      I1 => \bitno_reg_n_0_[0]\,
      I2 => \bitno_reg_n_0_[1]\,
      I3 => \bitno_reg_n_0_[3]\,
      O => ser1_carry_i_1_n_0
    );
ser1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bitno_reg_n_0_[2]\,
      I1 => \bitno_reg_n_0_[0]\,
      I2 => \bitno_reg_n_0_[1]\,
      I3 => \bitno_reg_n_0_[3]\,
      O => ser1_carry_i_2_n_0
    );
ser1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5556"
    )
        port map (
      I0 => \bitno_reg_n_0_[3]\,
      I1 => \bitno_reg_n_0_[1]\,
      I2 => \bitno_reg_n_0_[0]\,
      I3 => \bitno_reg_n_0_[2]\,
      O => ser1_carry_i_3_n_0
    );
ser1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4100002800824100"
    )
        port map (
      I0 => \colpos_reg_n_0_[0]\,
      I1 => \colpos_reg_n_0_[2]\,
      I2 => \bitno_reg_n_0_[2]\,
      I3 => \bitno_reg_n_0_[0]\,
      I4 => \bitno_reg_n_0_[1]\,
      I5 => \colpos_reg_n_0_[1]\,
      O => ser1_carry_i_4_n_0
    );
ser_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \input_leds_inst_n_0_[12]\,
      Q => \^ser\,
      R => '0'
    );
\ssbitno[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ssbitno(0),
      I1 => ssclk2,
      I2 => idle,
      O => \ssbitno[0]_i_1_n_0\
    );
\ssbitno[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => ssbitno(1),
      I1 => ssclk2,
      I2 => ssbitno(0),
      I3 => idle,
      O => \ssbitno[1]_i_1_n_0\
    );
\ssbitno[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => ssbitno(2),
      I1 => ssclk2,
      I2 => ssbitno(1),
      I3 => ssbitno(0),
      I4 => idle,
      O => \ssbitno[2]_i_1_n_0\
    );
\ssbitno_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ssbitno[0]_i_1_n_0\,
      Q => ssbitno(0),
      R => '0'
    );
\ssbitno_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ssbitno[1]_i_1_n_0\,
      Q => ssbitno(1),
      R => '0'
    );
\ssbitno_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ssbitno[2]_i_1_n_0\,
      Q => ssbitno(2),
      R => '0'
    );
\ssclk_cntr[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ssclk_cntr_reg_n_0_[0]\,
      I1 => ssclk2,
      O => \ssclk_cntr[0]_i_2_n_0\
    );
\ssclk_cntr[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ssclk_cntr_reg_n_0_[3]\,
      I1 => ssclk2,
      O => \ssclk_cntr[0]_i_3_n_0\
    );
\ssclk_cntr[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ssclk_cntr_reg_n_0_[2]\,
      I1 => ssclk2,
      O => \ssclk_cntr[0]_i_4_n_0\
    );
\ssclk_cntr[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ssclk_cntr_reg_n_0_[1]\,
      I1 => ssclk2,
      O => \ssclk_cntr[0]_i_5_n_0\
    );
\ssclk_cntr[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ssclk_cntr_reg_n_0_[0]\,
      I1 => ssclk2,
      O => \ssclk_cntr[0]_i_6_n_0\
    );
\ssclk_cntr[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ssclk_cntr_reg_n_0_[15]\,
      I1 => ssclk2,
      O => \ssclk_cntr[12]_i_2_n_0\
    );
\ssclk_cntr[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ssclk_cntr_reg_n_0_[14]\,
      I1 => ssclk2,
      O => \ssclk_cntr[12]_i_3_n_0\
    );
\ssclk_cntr[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ssclk_cntr_reg_n_0_[13]\,
      I1 => ssclk2,
      O => \ssclk_cntr[12]_i_4_n_0\
    );
\ssclk_cntr[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ssclk_cntr_reg_n_0_[12]\,
      I1 => ssclk2,
      O => \ssclk_cntr[12]_i_5_n_0\
    );
\ssclk_cntr[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ssclk_cntr_reg_n_0_[19]\,
      I1 => ssclk2,
      O => \ssclk_cntr[16]_i_2_n_0\
    );
\ssclk_cntr[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ssclk_cntr_reg_n_0_[18]\,
      I1 => ssclk2,
      O => \ssclk_cntr[16]_i_3_n_0\
    );
\ssclk_cntr[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ssclk_cntr_reg_n_0_[17]\,
      I1 => ssclk2,
      O => \ssclk_cntr[16]_i_4_n_0\
    );
\ssclk_cntr[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ssclk_cntr_reg_n_0_[16]\,
      I1 => ssclk2,
      O => \ssclk_cntr[16]_i_5_n_0\
    );
\ssclk_cntr[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ssclk_cntr_reg_n_0_[22]\,
      I1 => ssclk2,
      O => \ssclk_cntr[20]_i_2_n_0\
    );
\ssclk_cntr[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ssclk_cntr_reg_n_0_[21]\,
      I1 => ssclk2,
      O => \ssclk_cntr[20]_i_3_n_0\
    );
\ssclk_cntr[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ssclk_cntr_reg_n_0_[20]\,
      I1 => ssclk2,
      O => \ssclk_cntr[20]_i_4_n_0\
    );
\ssclk_cntr[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ssclk_cntr_reg_n_0_[7]\,
      I1 => ssclk2,
      O => \ssclk_cntr[4]_i_2_n_0\
    );
\ssclk_cntr[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ssclk_cntr_reg_n_0_[6]\,
      I1 => ssclk2,
      O => \ssclk_cntr[4]_i_3_n_0\
    );
\ssclk_cntr[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ssclk_cntr_reg_n_0_[5]\,
      I1 => ssclk2,
      O => \ssclk_cntr[4]_i_4_n_0\
    );
\ssclk_cntr[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ssclk_cntr_reg_n_0_[4]\,
      I1 => ssclk2,
      O => \ssclk_cntr[4]_i_5_n_0\
    );
\ssclk_cntr[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ssclk_cntr_reg_n_0_[11]\,
      I1 => ssclk2,
      O => \ssclk_cntr[8]_i_2_n_0\
    );
\ssclk_cntr[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ssclk_cntr_reg_n_0_[10]\,
      I1 => ssclk2,
      O => \ssclk_cntr[8]_i_3_n_0\
    );
\ssclk_cntr[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ssclk_cntr_reg_n_0_[9]\,
      I1 => ssclk2,
      O => \ssclk_cntr[8]_i_4_n_0\
    );
\ssclk_cntr[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ssclk_cntr_reg_n_0_[8]\,
      I1 => ssclk2,
      O => \ssclk_cntr[8]_i_5_n_0\
    );
\ssclk_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ssclk_cntr_reg[0]_i_1_n_7\,
      Q => \ssclk_cntr_reg_n_0_[0]\,
      R => '0'
    );
\ssclk_cntr_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ssclk_cntr_reg[0]_i_1_n_0\,
      CO(2) => \ssclk_cntr_reg[0]_i_1_n_1\,
      CO(1) => \ssclk_cntr_reg[0]_i_1_n_2\,
      CO(0) => \ssclk_cntr_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \ssclk_cntr[0]_i_2_n_0\,
      O(3) => \ssclk_cntr_reg[0]_i_1_n_4\,
      O(2) => \ssclk_cntr_reg[0]_i_1_n_5\,
      O(1) => \ssclk_cntr_reg[0]_i_1_n_6\,
      O(0) => \ssclk_cntr_reg[0]_i_1_n_7\,
      S(3) => \ssclk_cntr[0]_i_3_n_0\,
      S(2) => \ssclk_cntr[0]_i_4_n_0\,
      S(1) => \ssclk_cntr[0]_i_5_n_0\,
      S(0) => \ssclk_cntr[0]_i_6_n_0\
    );
\ssclk_cntr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ssclk_cntr_reg[8]_i_1_n_5\,
      Q => \ssclk_cntr_reg_n_0_[10]\,
      R => '0'
    );
\ssclk_cntr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ssclk_cntr_reg[8]_i_1_n_4\,
      Q => \ssclk_cntr_reg_n_0_[11]\,
      R => '0'
    );
\ssclk_cntr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ssclk_cntr_reg[12]_i_1_n_7\,
      Q => \ssclk_cntr_reg_n_0_[12]\,
      R => '0'
    );
\ssclk_cntr_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ssclk_cntr_reg[8]_i_1_n_0\,
      CO(3) => \ssclk_cntr_reg[12]_i_1_n_0\,
      CO(2) => \ssclk_cntr_reg[12]_i_1_n_1\,
      CO(1) => \ssclk_cntr_reg[12]_i_1_n_2\,
      CO(0) => \ssclk_cntr_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ssclk_cntr_reg[12]_i_1_n_4\,
      O(2) => \ssclk_cntr_reg[12]_i_1_n_5\,
      O(1) => \ssclk_cntr_reg[12]_i_1_n_6\,
      O(0) => \ssclk_cntr_reg[12]_i_1_n_7\,
      S(3) => \ssclk_cntr[12]_i_2_n_0\,
      S(2) => \ssclk_cntr[12]_i_3_n_0\,
      S(1) => \ssclk_cntr[12]_i_4_n_0\,
      S(0) => \ssclk_cntr[12]_i_5_n_0\
    );
\ssclk_cntr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ssclk_cntr_reg[12]_i_1_n_6\,
      Q => \ssclk_cntr_reg_n_0_[13]\,
      R => '0'
    );
\ssclk_cntr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ssclk_cntr_reg[12]_i_1_n_5\,
      Q => \ssclk_cntr_reg_n_0_[14]\,
      R => '0'
    );
\ssclk_cntr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ssclk_cntr_reg[12]_i_1_n_4\,
      Q => \ssclk_cntr_reg_n_0_[15]\,
      R => '0'
    );
\ssclk_cntr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ssclk_cntr_reg[16]_i_1_n_7\,
      Q => \ssclk_cntr_reg_n_0_[16]\,
      R => '0'
    );
\ssclk_cntr_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ssclk_cntr_reg[12]_i_1_n_0\,
      CO(3) => \ssclk_cntr_reg[16]_i_1_n_0\,
      CO(2) => \ssclk_cntr_reg[16]_i_1_n_1\,
      CO(1) => \ssclk_cntr_reg[16]_i_1_n_2\,
      CO(0) => \ssclk_cntr_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ssclk_cntr_reg[16]_i_1_n_4\,
      O(2) => \ssclk_cntr_reg[16]_i_1_n_5\,
      O(1) => \ssclk_cntr_reg[16]_i_1_n_6\,
      O(0) => \ssclk_cntr_reg[16]_i_1_n_7\,
      S(3) => \ssclk_cntr[16]_i_2_n_0\,
      S(2) => \ssclk_cntr[16]_i_3_n_0\,
      S(1) => \ssclk_cntr[16]_i_4_n_0\,
      S(0) => \ssclk_cntr[16]_i_5_n_0\
    );
\ssclk_cntr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ssclk_cntr_reg[16]_i_1_n_6\,
      Q => \ssclk_cntr_reg_n_0_[17]\,
      R => '0'
    );
\ssclk_cntr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ssclk_cntr_reg[16]_i_1_n_5\,
      Q => \ssclk_cntr_reg_n_0_[18]\,
      R => '0'
    );
\ssclk_cntr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ssclk_cntr_reg[16]_i_1_n_4\,
      Q => \ssclk_cntr_reg_n_0_[19]\,
      R => '0'
    );
\ssclk_cntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ssclk_cntr_reg[0]_i_1_n_6\,
      Q => \ssclk_cntr_reg_n_0_[1]\,
      R => '0'
    );
\ssclk_cntr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ssclk_cntr_reg[20]_i_1_n_7\,
      Q => \ssclk_cntr_reg_n_0_[20]\,
      R => '0'
    );
\ssclk_cntr_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ssclk_cntr_reg[16]_i_1_n_0\,
      CO(3) => \ssclk_cntr_reg[20]_i_1_n_0\,
      CO(2) => \NLW_ssclk_cntr_reg[20]_i_1_CO_UNCONNECTED\(2),
      CO(1) => \ssclk_cntr_reg[20]_i_1_n_2\,
      CO(0) => \ssclk_cntr_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_ssclk_cntr_reg[20]_i_1_O_UNCONNECTED\(3),
      O(2) => \ssclk_cntr_reg[20]_i_1_n_5\,
      O(1) => \ssclk_cntr_reg[20]_i_1_n_6\,
      O(0) => \ssclk_cntr_reg[20]_i_1_n_7\,
      S(3) => '1',
      S(2) => \ssclk_cntr[20]_i_2_n_0\,
      S(1) => \ssclk_cntr[20]_i_3_n_0\,
      S(0) => \ssclk_cntr[20]_i_4_n_0\
    );
\ssclk_cntr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ssclk_cntr_reg[20]_i_1_n_6\,
      Q => \ssclk_cntr_reg_n_0_[21]\,
      R => '0'
    );
\ssclk_cntr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ssclk_cntr_reg[20]_i_1_n_5\,
      Q => \ssclk_cntr_reg_n_0_[22]\,
      R => '0'
    );
\ssclk_cntr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ssclk_cntr_reg[20]_i_1_n_0\,
      Q => ssclk2,
      R => '0'
    );
\ssclk_cntr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ssclk_cntr_reg[0]_i_1_n_5\,
      Q => \ssclk_cntr_reg_n_0_[2]\,
      R => '0'
    );
\ssclk_cntr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ssclk_cntr_reg[0]_i_1_n_4\,
      Q => \ssclk_cntr_reg_n_0_[3]\,
      R => '0'
    );
\ssclk_cntr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ssclk_cntr_reg[4]_i_1_n_7\,
      Q => \ssclk_cntr_reg_n_0_[4]\,
      R => '0'
    );
\ssclk_cntr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ssclk_cntr_reg[0]_i_1_n_0\,
      CO(3) => \ssclk_cntr_reg[4]_i_1_n_0\,
      CO(2) => \ssclk_cntr_reg[4]_i_1_n_1\,
      CO(1) => \ssclk_cntr_reg[4]_i_1_n_2\,
      CO(0) => \ssclk_cntr_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ssclk_cntr_reg[4]_i_1_n_4\,
      O(2) => \ssclk_cntr_reg[4]_i_1_n_5\,
      O(1) => \ssclk_cntr_reg[4]_i_1_n_6\,
      O(0) => \ssclk_cntr_reg[4]_i_1_n_7\,
      S(3) => \ssclk_cntr[4]_i_2_n_0\,
      S(2) => \ssclk_cntr[4]_i_3_n_0\,
      S(1) => \ssclk_cntr[4]_i_4_n_0\,
      S(0) => \ssclk_cntr[4]_i_5_n_0\
    );
\ssclk_cntr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ssclk_cntr_reg[4]_i_1_n_6\,
      Q => \ssclk_cntr_reg_n_0_[5]\,
      R => '0'
    );
\ssclk_cntr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ssclk_cntr_reg[4]_i_1_n_5\,
      Q => \ssclk_cntr_reg_n_0_[6]\,
      R => '0'
    );
\ssclk_cntr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ssclk_cntr_reg[4]_i_1_n_4\,
      Q => \ssclk_cntr_reg_n_0_[7]\,
      R => '0'
    );
\ssclk_cntr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ssclk_cntr_reg[8]_i_1_n_7\,
      Q => \ssclk_cntr_reg_n_0_[8]\,
      R => '0'
    );
\ssclk_cntr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ssclk_cntr_reg[4]_i_1_n_0\,
      CO(3) => \ssclk_cntr_reg[8]_i_1_n_0\,
      CO(2) => \ssclk_cntr_reg[8]_i_1_n_1\,
      CO(1) => \ssclk_cntr_reg[8]_i_1_n_2\,
      CO(0) => \ssclk_cntr_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ssclk_cntr_reg[8]_i_1_n_4\,
      O(2) => \ssclk_cntr_reg[8]_i_1_n_5\,
      O(1) => \ssclk_cntr_reg[8]_i_1_n_6\,
      O(0) => \ssclk_cntr_reg[8]_i_1_n_7\,
      S(3) => \ssclk_cntr[8]_i_2_n_0\,
      S(2) => \ssclk_cntr[8]_i_3_n_0\,
      S(1) => \ssclk_cntr[8]_i_4_n_0\,
      S(0) => \ssclk_cntr[8]_i_5_n_0\
    );
\ssclk_cntr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ssclk_cntr_reg[8]_i_1_n_6\,
      Q => \ssclk_cntr_reg_n_0_[9]\,
      R => '0'
    );
\ssin[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => ssclk2,
      I1 => ssbitno(1),
      I2 => ssbitno(0),
      I3 => ssbitno(2),
      O => ssin(2)
    );
\ssin[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => ssclk2,
      I1 => ssbitno(1),
      I2 => ssbitno(0),
      I3 => ssbitno(2),
      O => ssin(3)
    );
\ssin[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => ssclk2,
      I1 => ssbitno(1),
      I2 => ssbitno(0),
      I3 => ssbitno(2),
      O => ssin(4)
    );
\ssin[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => ssclk2,
      I1 => ssbitno(0),
      I2 => ssbitno(1),
      I3 => ssbitno(2),
      O => ssin(5)
    );
\ssin[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => ssclk2,
      I1 => ssbitno(1),
      I2 => ssbitno(0),
      I3 => ssbitno(2),
      O => ssin(6)
    );
\ssin[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => idle,
      O => sel
    );
\ssin[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => ssclk2,
      I1 => ssbitno(1),
      I2 => ssbitno(0),
      I3 => ssbitno(2),
      O => ssin(7)
    );
\ssin[15]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ssin_reg[15]_i_4_n_0\,
      O => \ssin[15]_i_3_n_0\
    );
\ssin[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ssin_reg_n_0_[12]\,
      I1 => \ssin_reg_n_0_[13]\,
      I2 => ssbitno(1),
      I3 => \ssin_reg_n_0_[14]\,
      I4 => ssbitno(0),
      I5 => \ssin_reg_n_0_[15]\,
      O => \ssin[15]_i_5_n_0\
    );
\ssin[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ssin_reg_n_0_[8]\,
      I1 => \ssin_reg_n_0_[9]\,
      I2 => ssbitno(1),
      I3 => \ssin_reg_n_0_[10]\,
      I4 => ssbitno(0),
      I5 => \ssin_reg_n_0_[11]\,
      O => \ssin[15]_i_6_n_0\
    );
\ssin[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ssin_reg[7]_i_2_n_0\,
      O => \ssin[7]_i_1_n_0\
    );
\ssin[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ssin_reg_n_0_[4]\,
      I1 => \ssin_reg_n_0_[5]\,
      I2 => ssbitno(1),
      I3 => \ssin_reg_n_0_[6]\,
      I4 => ssbitno(0),
      I5 => \ssin_reg_n_0_[7]\,
      O => \ssin[7]_i_3_n_0\
    );
\ssin[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ssin_reg_n_0_[0]\,
      I1 => \ssin_reg_n_0_[1]\,
      I2 => ssbitno(1),
      I3 => \ssin_reg_n_0_[2]\,
      I4 => ssbitno(0),
      I5 => \ssin_reg_n_0_[3]\,
      O => \ssin[7]_i_4_n_0\
    );
\ssin[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => ssclk2,
      I1 => ssbitno(1),
      I2 => ssbitno(0),
      I3 => ssbitno(2),
      O => ssin(0)
    );
\ssin[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => ssclk2,
      I1 => ssbitno(0),
      I2 => ssbitno(1),
      I3 => ssbitno(2),
      O => ssin(1)
    );
\ssin_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(0),
      D => \ssin[7]_i_1_n_0\,
      Q => \ssin_reg_n_0_[0]\,
      R => sel
    );
\ssin_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(2),
      D => \ssin[15]_i_3_n_0\,
      Q => \ssin_reg_n_0_[10]\,
      R => sel
    );
\ssin_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(3),
      D => \ssin[15]_i_3_n_0\,
      Q => \ssin_reg_n_0_[11]\,
      R => sel
    );
\ssin_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(4),
      D => \ssin[15]_i_3_n_0\,
      Q => \ssin_reg_n_0_[12]\,
      R => sel
    );
\ssin_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(5),
      D => \ssin[15]_i_3_n_0\,
      Q => \ssin_reg_n_0_[13]\,
      R => sel
    );
\ssin_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(6),
      D => \ssin[15]_i_3_n_0\,
      Q => \ssin_reg_n_0_[14]\,
      R => sel
    );
\ssin_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(7),
      D => \ssin[15]_i_3_n_0\,
      Q => \ssin_reg_n_0_[15]\,
      R => sel
    );
\ssin_reg[15]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ssin[15]_i_5_n_0\,
      I1 => \ssin[15]_i_6_n_0\,
      O => \ssin_reg[15]_i_4_n_0\,
      S => ssbitno(2)
    );
\ssin_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(1),
      D => \ssin[7]_i_1_n_0\,
      Q => \ssin_reg_n_0_[1]\,
      R => sel
    );
\ssin_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(2),
      D => \ssin[7]_i_1_n_0\,
      Q => \ssin_reg_n_0_[2]\,
      R => sel
    );
\ssin_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(3),
      D => \ssin[7]_i_1_n_0\,
      Q => \ssin_reg_n_0_[3]\,
      R => sel
    );
\ssin_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(4),
      D => \ssin[7]_i_1_n_0\,
      Q => \ssin_reg_n_0_[4]\,
      R => sel
    );
\ssin_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(5),
      D => \ssin[7]_i_1_n_0\,
      Q => \ssin_reg_n_0_[5]\,
      R => sel
    );
\ssin_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(6),
      D => \ssin[7]_i_1_n_0\,
      Q => \ssin_reg_n_0_[6]\,
      R => sel
    );
\ssin_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(7),
      D => \ssin[7]_i_1_n_0\,
      Q => \ssin_reg_n_0_[7]\,
      R => sel
    );
\ssin_reg[7]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ssin[7]_i_3_n_0\,
      I1 => \ssin[7]_i_4_n_0\,
      O => \ssin_reg[7]_i_2_n_0\,
      S => ssbitno(2)
    );
\ssin_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(0),
      D => \ssin[15]_i_3_n_0\,
      Q => \ssin_reg_n_0_[8]\,
      R => sel
    );
\ssin_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(1),
      D => \ssin[15]_i_3_n_0\,
      Q => \ssin_reg_n_0_[9]\,
      R => sel
    );
\ssout[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ssout_reg[15]_i_2_n_0\,
      O => \ssout[15]_i_1_n_0\
    );
\ssout[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ssout(12),
      I1 => ssout(13),
      I2 => ssbitno(1),
      I3 => ssout(14),
      I4 => ssbitno(0),
      I5 => ssout(15),
      O => \ssout[15]_i_3_n_0\
    );
\ssout[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ssout(8),
      I1 => ssout(9),
      I2 => ssbitno(1),
      I3 => ssout(10),
      I4 => ssbitno(0),
      I5 => ssout(11),
      O => \ssout[15]_i_4_n_0\
    );
\ssout[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ssout_reg[7]_i_2_n_0\,
      O => \ssout[7]_i_1_n_0\
    );
\ssout[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ssout(4),
      I1 => ssout(5),
      I2 => ssbitno(1),
      I3 => ssout(6),
      I4 => ssbitno(0),
      I5 => ssout(7),
      O => \ssout[7]_i_3_n_0\
    );
\ssout[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ssout(0),
      I1 => ssout(1),
      I2 => ssbitno(1),
      I3 => ssout(2),
      I4 => ssbitno(0),
      I5 => ssout(3),
      O => \ssout[7]_i_4_n_0\
    );
\ssout_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(0),
      D => \ssout[7]_i_1_n_0\,
      Q => ssout(0),
      R => sel
    );
\ssout_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(2),
      D => \ssout[15]_i_1_n_0\,
      Q => ssout(10),
      R => sel
    );
\ssout_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(3),
      D => \ssout[15]_i_1_n_0\,
      Q => ssout(11),
      R => sel
    );
\ssout_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(4),
      D => \ssout[15]_i_1_n_0\,
      Q => ssout(12),
      R => sel
    );
\ssout_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(5),
      D => \ssout[15]_i_1_n_0\,
      Q => ssout(13),
      R => sel
    );
\ssout_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(6),
      D => \ssout[15]_i_1_n_0\,
      Q => ssout(14),
      R => sel
    );
\ssout_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(7),
      D => \ssout[15]_i_1_n_0\,
      Q => ssout(15),
      R => sel
    );
\ssout_reg[15]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ssout[15]_i_3_n_0\,
      I1 => \ssout[15]_i_4_n_0\,
      O => \ssout_reg[15]_i_2_n_0\,
      S => ssbitno(2)
    );
\ssout_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(1),
      D => \ssout[7]_i_1_n_0\,
      Q => ssout(1),
      R => sel
    );
\ssout_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(2),
      D => \ssout[7]_i_1_n_0\,
      Q => ssout(2),
      R => sel
    );
\ssout_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(3),
      D => \ssout[7]_i_1_n_0\,
      Q => ssout(3),
      R => sel
    );
\ssout_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(4),
      D => \ssout[7]_i_1_n_0\,
      Q => ssout(4),
      R => sel
    );
\ssout_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(5),
      D => \ssout[7]_i_1_n_0\,
      Q => ssout(5),
      R => sel
    );
\ssout_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(6),
      D => \ssout[7]_i_1_n_0\,
      Q => ssout(6),
      R => sel
    );
\ssout_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(7),
      D => \ssout[7]_i_1_n_0\,
      Q => ssout(7),
      R => sel
    );
\ssout_reg[7]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ssout[7]_i_3_n_0\,
      I1 => \ssout[7]_i_4_n_0\,
      O => \ssout_reg[7]_i_2_n_0\,
      S => ssbitno(2)
    );
\ssout_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(0),
      D => \ssout[15]_i_1_n_0\,
      Q => ssout(8),
      R => sel
    );
\ssout_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ssin(1),
      D => \ssout[15]_i_1_n_0\,
      Q => ssout(9),
      R => sel
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0_led_shift_594_driver_v1_0 is
  port (
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    SCK : out STD_LOGIC;
    RCK : out STD_LOGIC;
    SER : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_shift_594_driver_0_0_led_shift_594_driver_v1_0 : entity is "led_shift_594_driver_v1_0";
end design_1_led_shift_594_driver_0_0_led_shift_594_driver_v1_0;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0_led_shift_594_driver_v1_0 is
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_10 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_11 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_12 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_13 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_14 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_15 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_16 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_17 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_18 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_19 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_20 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_21 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_22 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_23 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_24 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_25 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_26 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_27 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_28 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_29 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_30 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_31 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_32 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_33 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_34 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_35 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_36 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_37 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_6 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_7 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_8 : STD_LOGIC;
  signal led_shift_594_driver_v1_0_S00_AXI_inst_n_9 : STD_LOGIC;
  signal notidle : STD_LOGIC;
begin
led_shift_594_driver_v1_0_S00_AXI_inst: entity work.design_1_led_shift_594_driver_0_0_led_shift_594_driver_v1_0_S00_AXI
     port map (
      Q(15) => led_shift_594_driver_v1_0_S00_AXI_inst_n_6,
      Q(14) => led_shift_594_driver_v1_0_S00_AXI_inst_n_7,
      Q(13) => led_shift_594_driver_v1_0_S00_AXI_inst_n_8,
      Q(12) => led_shift_594_driver_v1_0_S00_AXI_inst_n_9,
      Q(11) => led_shift_594_driver_v1_0_S00_AXI_inst_n_10,
      Q(10) => led_shift_594_driver_v1_0_S00_AXI_inst_n_11,
      Q(9) => led_shift_594_driver_v1_0_S00_AXI_inst_n_12,
      Q(8) => led_shift_594_driver_v1_0_S00_AXI_inst_n_13,
      Q(7) => led_shift_594_driver_v1_0_S00_AXI_inst_n_14,
      Q(6) => led_shift_594_driver_v1_0_S00_AXI_inst_n_15,
      Q(5) => led_shift_594_driver_v1_0_S00_AXI_inst_n_16,
      Q(4) => led_shift_594_driver_v1_0_S00_AXI_inst_n_17,
      Q(3) => led_shift_594_driver_v1_0_S00_AXI_inst_n_18,
      Q(2) => led_shift_594_driver_v1_0_S00_AXI_inst_n_19,
      Q(1) => led_shift_594_driver_v1_0_S00_AXI_inst_n_20,
      Q(0) => led_shift_594_driver_v1_0_S00_AXI_inst_n_21,
      \axi_rdata_reg[15]_0\(15) => led_shift_594_driver_v1_0_S00_AXI_inst_n_22,
      \axi_rdata_reg[15]_0\(14) => led_shift_594_driver_v1_0_S00_AXI_inst_n_23,
      \axi_rdata_reg[15]_0\(13) => led_shift_594_driver_v1_0_S00_AXI_inst_n_24,
      \axi_rdata_reg[15]_0\(12) => led_shift_594_driver_v1_0_S00_AXI_inst_n_25,
      \axi_rdata_reg[15]_0\(11) => led_shift_594_driver_v1_0_S00_AXI_inst_n_26,
      \axi_rdata_reg[15]_0\(10) => led_shift_594_driver_v1_0_S00_AXI_inst_n_27,
      \axi_rdata_reg[15]_0\(9) => led_shift_594_driver_v1_0_S00_AXI_inst_n_28,
      \axi_rdata_reg[15]_0\(8) => led_shift_594_driver_v1_0_S00_AXI_inst_n_29,
      \axi_rdata_reg[15]_0\(7) => led_shift_594_driver_v1_0_S00_AXI_inst_n_30,
      \axi_rdata_reg[15]_0\(6) => led_shift_594_driver_v1_0_S00_AXI_inst_n_31,
      \axi_rdata_reg[15]_0\(5) => led_shift_594_driver_v1_0_S00_AXI_inst_n_32,
      \axi_rdata_reg[15]_0\(4) => led_shift_594_driver_v1_0_S00_AXI_inst_n_33,
      \axi_rdata_reg[15]_0\(3) => led_shift_594_driver_v1_0_S00_AXI_inst_n_34,
      \axi_rdata_reg[15]_0\(2) => led_shift_594_driver_v1_0_S00_AXI_inst_n_35,
      \axi_rdata_reg[15]_0\(1) => led_shift_594_driver_v1_0_S00_AXI_inst_n_36,
      \axi_rdata_reg[15]_0\(0) => led_shift_594_driver_v1_0_S00_AXI_inst_n_37,
      notidle => notidle,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
leds_inst: entity work.design_1_led_shift_594_driver_0_0_leds
     port map (
      Q(15) => led_shift_594_driver_v1_0_S00_AXI_inst_n_6,
      Q(14) => led_shift_594_driver_v1_0_S00_AXI_inst_n_7,
      Q(13) => led_shift_594_driver_v1_0_S00_AXI_inst_n_8,
      Q(12) => led_shift_594_driver_v1_0_S00_AXI_inst_n_9,
      Q(11) => led_shift_594_driver_v1_0_S00_AXI_inst_n_10,
      Q(10) => led_shift_594_driver_v1_0_S00_AXI_inst_n_11,
      Q(9) => led_shift_594_driver_v1_0_S00_AXI_inst_n_12,
      Q(8) => led_shift_594_driver_v1_0_S00_AXI_inst_n_13,
      Q(7) => led_shift_594_driver_v1_0_S00_AXI_inst_n_14,
      Q(6) => led_shift_594_driver_v1_0_S00_AXI_inst_n_15,
      Q(5) => led_shift_594_driver_v1_0_S00_AXI_inst_n_16,
      Q(4) => led_shift_594_driver_v1_0_S00_AXI_inst_n_17,
      Q(3) => led_shift_594_driver_v1_0_S00_AXI_inst_n_18,
      Q(2) => led_shift_594_driver_v1_0_S00_AXI_inst_n_19,
      Q(1) => led_shift_594_driver_v1_0_S00_AXI_inst_n_20,
      Q(0) => led_shift_594_driver_v1_0_S00_AXI_inst_n_21,
      RCK => RCK,
      SCK => SCK,
      SER => SER,
      notidle => notidle,
      s00_axi_aclk => s00_axi_aclk,
      \slv_reg0_reg[15]\(15) => led_shift_594_driver_v1_0_S00_AXI_inst_n_22,
      \slv_reg0_reg[15]\(14) => led_shift_594_driver_v1_0_S00_AXI_inst_n_23,
      \slv_reg0_reg[15]\(13) => led_shift_594_driver_v1_0_S00_AXI_inst_n_24,
      \slv_reg0_reg[15]\(12) => led_shift_594_driver_v1_0_S00_AXI_inst_n_25,
      \slv_reg0_reg[15]\(11) => led_shift_594_driver_v1_0_S00_AXI_inst_n_26,
      \slv_reg0_reg[15]\(10) => led_shift_594_driver_v1_0_S00_AXI_inst_n_27,
      \slv_reg0_reg[15]\(9) => led_shift_594_driver_v1_0_S00_AXI_inst_n_28,
      \slv_reg0_reg[15]\(8) => led_shift_594_driver_v1_0_S00_AXI_inst_n_29,
      \slv_reg0_reg[15]\(7) => led_shift_594_driver_v1_0_S00_AXI_inst_n_30,
      \slv_reg0_reg[15]\(6) => led_shift_594_driver_v1_0_S00_AXI_inst_n_31,
      \slv_reg0_reg[15]\(5) => led_shift_594_driver_v1_0_S00_AXI_inst_n_32,
      \slv_reg0_reg[15]\(4) => led_shift_594_driver_v1_0_S00_AXI_inst_n_33,
      \slv_reg0_reg[15]\(3) => led_shift_594_driver_v1_0_S00_AXI_inst_n_34,
      \slv_reg0_reg[15]\(2) => led_shift_594_driver_v1_0_S00_AXI_inst_n_35,
      \slv_reg0_reg[15]\(1) => led_shift_594_driver_v1_0_S00_AXI_inst_n_36,
      \slv_reg0_reg[15]\(0) => led_shift_594_driver_v1_0_S00_AXI_inst_n_37
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_shift_594_driver_0_0 is
  port (
    SCK : out STD_LOGIC;
    RCK : out STD_LOGIC;
    SER : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_led_shift_594_driver_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_led_shift_594_driver_0_0 : entity is "design_1_led_shift_594_driver_0_0,led_shift_594_driver_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_led_shift_594_driver_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_led_shift_594_driver_0_0 : entity is "led_shift_594_driver_v1_0,Vivado 2018.2";
end design_1_led_shift_594_driver_0_0;

architecture STRUCTURE of design_1_led_shift_594_driver_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_led_shift_594_driver_0_0_led_shift_594_driver_v1_0
     port map (
      RCK => RCK,
      SCK => SCK,
      SER => SER,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
