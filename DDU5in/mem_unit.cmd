| this is mem_unit.cmd, used with MEM_UNIT level schematic
|   used to setup tests of the Memory Assignment Control cycle
|
|
stepsize 6.25ns
clock clk 0 1 
sim 1ns

vector rst RST           | user/common
vector f0din F0DIN[17:0] | in_unit
vector f1din F1DIN[17:0] | in_unit
vector f2din F2DIN[17:0] | in_unit
vector f3din F3DIN[17:0] | in_unit
vector fwen FWEN[3:0]    | in_unit
vector fnext FNEXT[3:0]  | in_unit
vector asf ASF[1:0]      | mem_ctrl
vector asf_adr ASF_ADR[4:0] | mem_ctrl
vector fad FAD[4:0]      | hard-coded
vector oem0 OE           | rd_ctrl
vector ren0 RD_EN        | rd_ctrl
|
vector din DIN[17:0]     | in_unit
vector do DO[35:0]       | NotNeeded--Sim fails
vector dout DOUT[35:0]   | user--Sim fails
vector full FIFO_FULL[3:0] | get at upper level
vector af FIFO_AF[3:0]   | get at upper level
vector empty0 EMPTY      | get at upper level
vector mt_m0 MT_OUT      | get at upper level
vector wr_sel WR_SEL     | NotNeeded--old debug
vector wen WEN           | in_unit
vector reg_en REG_EN     | NotNeeded--old debug
vector mt_en MT_EN       | NotNeeded--old debug
vector f0en F0EN         | NotNeeded--old debug, watch on sch.
vector assn ASSIGNED     | NotNeeded--old debug, watch on sch.
vector mt MT             | NotNeeded--old debug, watch on sch.
vector wadr $1I4488\WADR[10:0] | NotNeeded--old debug
vector read $1I4488\READ       | NotNeeded--old debug
vector radr $1I4488\RADR[9:0]  | NotNeeded--old debug
vector wcnt $1I4488\CNT[10:0]  | NotNeeded--old debug
vector check $1I4488\CHECK     | NotNeeded--old debug
vector mt_ld $1I4488\MT_LD     | NotNeeded--old debug


wave mem_unit_1.wfm rst asf asf_adr assn fnext wr_sel f0en clk wen check mt_ld mt mt_en mt_m0 empty0 ren0 oem0 reg_en wadr read radr wcnt fwen f0din din do dout af full

l rst
assign fad 00\h
assign asf_adr 1f\h
assign asf 0\h
assign f0din 00000\h
assign f1din 11111\h
assign f2din 22222\h
assign f3din 33333\h
assign fwen 0\h
assign fnext 0\h
assign ren0 0
assign oem0 0

c 1
h rst
c 16
l rst
c 2
|
| Begin initial memory assignment:
assign asf_adr 00\h
c
assign asf_adr 1f\h
c
assign fnext 1\h
c
assign fnext 0\h
c
| ^^^ end initial memory assignment
|
| Begin filling memory 0:
assign f0din 0FACE\h
assign fwen 1\h
c
assign f0din 1FACE\h
c
assign fwen 0\h
c 2
assign f0din 2FACE\h
assign fwen 1\h
c
assign f0din 3FACE\h
c
assign fwen 0\h
c 3
assign f0din 0DEAD\h
assign fwen 1\h
c
assign f0din 1DEAD\h
c
assign fwen 0\h
assign f0din 12345\h
c 4
