| this is rd_ctrl.cmd, used with RD_CTRL level schematic
|   used to setup tests of the Readout Control cycle for Input FPGAs
|
|
stepsize 6.25ns
clock clk   0 1 0 1
clock clk40 0 1 1 0
sim 1ns

vector rst RST             | user/common
vector l1a L1A             | user/common
vector l1a_fake L1A_FAKE   | =0 user
vector evtrst EVCNTRST     | =0 user
vector fpgaid FPGA_ID      | =0 hardcoded
vector ext_fifo_paf EXT_FIFO_PAF | =0 user
vector fifo_mt FIFO_EMPTY  | mem_unit
vector mt_m0 EMPTY_M0      | mem_unit
vector memer MEM_ERR       | =0? common
vector rxer RX_ERR         | =0? user/in_unit
vector killf KILL_F[3:0]   | =1 user
vector fok FOK[3:0]        | =0001 user
vector frmem FRMEM[4:0]    | in_unit
vector fnext WRNEXT_F[3:0] | in_unit
vector indat IN[35:0]      | user/in_unit
|
vector rst_complete RST_COMPLETE
vector in_rdy IN_RDY
vector l1a_mt L1A_MT
vector data_rdy DATA_RDY
vector push NEW_L1A
vector evtcnt EVT_CNT[7:0]
vector oem0 OE_M0
vector ren REN
vector foeren FOE_REN[3:0]
vector OEFIFO OEFIFO[3:0]
vector oef_f OEF_F[3:0]
vector lren LREN[3:0]
vector dmbdav DMBDAV[3:0]
vector busy BUSY
vector dofw+1 DOFW+1
vector ren_toggle REN_TOGGLE
vector next_fiber NEXT_FIBER
vector oe_hdr OE_HDR
vector gooddataen GOODDATAEN
vector golddat GOLDDAT
vector oefok OEFOK
vector lfifo_mt LFIFO_EMPTY
vector nnd NOT_NO_DATA
vector moredata MOREDATA
vector dodata DODATA
vector done_data DONE_DATA
vector lw_in LW_IN
vector renoe-0 ~RENOE-0
vector fdone FDONE
vector fifodone FIFODONE
vector done DONE
vector endevt ENDEVT
|
vector owen ~OWEN
vector out OUT[35:0]
vector selout SELOUT[35:0]
vector dout DOUT[39:0]
|
|
wave rd_ctrl_0.wfm rst evtrst l1a fifo_mt mt_m0 frmem fnext indat rst_complete in_rdy l1a_mt data_rdy push evtcnt oe_m0 ren foeren oefifo oef_f lren dmbdav busy clk40 clk dofw+1 ren_toggle next_fiber oe_hdr gooddataen golddat oefok lfifo_mt nnd moredata dodata done_data lw_in renoe-0 fdone done endevt owen out selout dout

| rst RST
| l1a L1A
| fifo_mt FIFO_EMPTY
| mt_m0 EMPTY_M0
| frmem FRMEM[4:0]
| fnext WRNEXT_F[3:0]
| indat IN[35:0]

l evtrst
l fpgaid
l ext_fifo_paf
l l1a_fake
l memer
l rxer
assign killf f\h
assign fok 1\h

l rst
l l1a
l fifo_mt
l mt_m0
assign indat 08cad8bad\h
assign frmem 1f\h
assign fnext 0\h

c 1
h rst
c 16
l rst
c 2
|
