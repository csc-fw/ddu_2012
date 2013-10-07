| this is incntrl.cmd, used with INCNTRL level schematic
|   used to setup tests of the complete cycle for Input FPGAs
|
|
stepsize 6.25ns
clock clk   0 1 0 1
clock clk40 0 1 1 0
sim 2ns

vector rst RST              | user/common
vector l1a L1A              | user/common
vector l1a_fake MODE6       | =0 user
vector evtrst EVCNTRST      | =0 user
vector fpga FPGA_ID         | user/common
vector ff0 FF0              | user/common
vector ff1 FF1              | user/common
vector paf0 PAF0            | user/common
vector paf1 PAF1            | user/common
vector killf KILL_F[7:0]    | =ff user
vector fok F_OK[7:0]        | =01 user
vector paf0 PAF0            | =0 user
vector m_mt0 M_EMPTY0       | mem_unit
vector mt_m EMPTY_M[31:0]   | mem_unit
vector mem0er MEM0ERROR     | =0 common
vector rxer0 RXERROR0       | =0 common
vector fr0mem FR0MEM[4:0]   | in_unit
vector next_f WRNEXT_F[7:0] | in_unit
vector rdat RDAT[35:0]      | user drive--Sim fails
|
vector in0dat $1I4142\DOUT[15:0] | user/in_unit
vector in1dat $3I4142\DOUT[15:0] | user/in_unit
vector in2dat $3I4243\DOUT[15:0] | user/in_unit
vector in3dat $3I4274\DOUT[15:0] | user/in_unit
vector in4dat $5I4382\DOUT[15:0] | user/in_unit
vector in5dat $6I4412\DOUT[15:0] | user/in_unit
vector in6dat $6I4415\DOUT[15:0] | user/in_unit
vector in7dat $6I4446\DOUT[15:0] | user/in_unit
vector i0kin $1I4142\KIN[1:0]      | user/in_unit, toggle for WEN0
vector i0der $1I4142\RXDISPER[1:0] | user/in_unit ==0
vector i0los $1I4142\RXNOSYNC[1:0] | user/in_unit ==0
vector i0nit $1I4142\RXNIT[1:0]    | user/in_unit ==0
vector i0buf $1I4142\RXBUFSTAT1    | user/in_unit ==0
vector stack0mt $1I4142\STACK_MT   | user/in_unit ==1
vector stack0fl $1I4142\STACK_FULL | user/in_unit ==0
vector i1kin $3I4142\KIN[1:0]      | user/in_unit, toggle for WEN1
vector i1der $3I4142\RXDISPER[1:0] | user/in_unit ==0
vector i1los $3I4142\RXNOSYNC[1:0] | user/in_unit ==0
vector i1nit $3I4142\RXNIT[1:0]    | user/in_unit ==0
vector i1buf $3I4142\RXBUFSTAT1    | user/in_unit ==0
vector stack1mt $3I4142\STACK_MT   | user/in_unit ==1
vector stack1fl $3I4142\STACK_FULL | user/in_unit ==0
vector i2kin $3I4243\KIN[1:0]      | user/in_unit, toggle for WEN2
vector i2der $3I4243\RXDISPER[1:0] | user/in_unit ==0
vector i2los $3I4243\RXNOSYNC[1:0] | user/in_unit ==0
vector i2nit $3I4243\RXNIT[1:0]    | user/in_unit ==0
vector i2buf $3I4243\RXBUFSTAT1    | user/in_unit ==0
vector stack2mt $3I4243\STACK_MT   | user/in_unit ==1
vector i3kin $3I4274\KIN[1:0]      | user/in_unit, toggle for WEN3
vector i3der $3I4274\RXDISPER[1:0] | user/in_unit ==0
vector i3los $3I4274\RXNOSYNC[1:0] | user/in_unit ==0
vector i3nit $3I4274\RXNIT[1:0]    | user/in_unit ==0
vector i3buf $3I4274\RXBUFSTAT1    | user/in_unit ==0
vector stack3mt $3I4274\STACK_MT   | user/in_unit ==1
vector i4kin $5I4382\KIN[1:0]      | user/in_unit, toggle for WEN4
vector i4der $5I4382\RXDISPER[1:0] | user/in_unit ==0
vector i4los $5I4382\RXNOSYNC[1:0] | user/in_unit ==0
vector i4nit $5I4382\RXNIT[1:0]    | user/in_unit ==0
vector i4buf $5I4382\RXBUFSTAT1    | user/in_unit ==0
vector stack4mt $5I4382\STACK_MT   | user/in_unit ==1
vector i5kin $6I4412\KIN[1:0]      | user/in_unit, toggle for WEN5
vector i5der $6I4412\RXDISPER[1:0] | user/in_unit ==0
vector i5los $6I4412\RXNOSYNC[1:0] | user/in_unit ==0
vector i5nit $6I4412\RXNIT[1:0]    | user/in_unit ==0
vector i5buf $6I4412\RXBUFSTAT1    | user/in_unit ==0
vector stack5mt $6I4412\STACK_MT   | user/in_unit ==1
vector i6kin $6I4415\KIN[1:0]      | user/in_unit, toggle for WEN6
vector i6der $6I4415\RXDISPER[1:0] | user/in_unit ==0
vector i6los $6I4415\RXNOSYNC[1:0] | user/in_unit ==0
vector i6nit $6I4415\RXNIT[1:0]    | user/in_unit ==0
vector i6buf $6I4415\RXBUFSTAT1    | user/in_unit ==0
vector stack6mt $6I4415\STACK_MT   | user/in_unit ==1
vector i7kin $6I4446\KIN[1:0]      | user/in_unit, toggle for WEN7
vector i7der $6I4446\RXDISPER[1:0] | user/in_unit ==0
vector i7los $6I4446\RXNOSYNC[1:0] | user/in_unit ==0
vector i7nit $6I4446\RXNIT[1:0]    | user/in_unit ==0
vector i7buf $6I4446\RXBUFSTAT1    | user/in_unit ==0
vector stack7mt $6I4446\STACK_MT   | user/in_unit ==1
|
vector wen_f WEN_F[7:0]
vector memreq MEMREQ[3:0]  | get at upper level
vector newmem NEW0MEM[4:0]  | get at upper level
vector newenb NEWENB[3:0]   | get at upper level
vector asf ASF[3:0]         | get at upper level
vector oldctrl OLDCTRL[1:0] | get at upper level
vector mark MARK0           | get at upper level
vector free FREE0           | get at upper level
vector fpaf FPAF0           | get at upper level
vector none_free NONE_FREE0 | get at upper level
vector memavail MEM0AVAIL[4:0] | get at upper level
|
vector full_f FIFO_FULL[3:0]  | get at upper level
vector af_f FIFO_AF[3:0]      | get at upper level
|
vector rst0complete RST0COMPLETE
vector in0rdy RDCTRL0RDY
vector l1a0mt L1A0MT
vector oem OE_M[31:0]
vector ren0 REN0
vector data_rdy DATA_RDY
vector push PUSH
vector evtcnt EVT_CNT[7:0]
vector foeren $1I4156\FOE_REN[3:0]
vector OEFIFO $1I4156\OEFIFO[3:0]
vector oef_f $1I4156\OEF_F[3:0]
vector lren $1I4156\LREN[3:0]
vector dmbdav $1I4156\DMBDAV[3:0]
vector busy $1I4156\BUSY
vector dofw+1 $1I4156\DOFW+1
vector ren_toggle $1I4156\REN_TOGGLE
vector next_fiber $1I4156\NEXT_FIBER
vector oe_hdr $1I4156\OE_HDR
vector gooddataen $1I4156\GOODDATAEN
vector golddat $1I4156\GOLDDAT
vector oefok $1I4156\OEFOK
vector lfifo_mt $1I4156\LFIFO_EMPTY
vector nnd $1I4156\NOT_NO_DATA
vector moredata $1I4156\MOREDATA
vector dodata $1I4156\DODATA
vector done_data $1I4156\DONE_DATA
vector lw_in $1I4156\LW_IN
vector renoe-0 $1I4156\~RENOE-0
vector fdone $1I4156\FDONE
vector fifodone $1I4156\FIFODONE
vector done $1I4156\DONE
vector endevt $1I4156\ENDEVT
|
vector owen0 ~OWEN0
vector out $1I4156\OUT[35:0]
vector selout $1I4156\SELOUT[35:0]
vector dout DO[39:0]
|
|
wave rd_ctrl_0.wfm rst fok l1a m_mt0 mt_m fr0mem clk memreq newmem newenb asf mark next_f fpaf none_free memavail oldctrl free rst0complete in0rdy in0dat wen_f af_f full_f clk40 l1a0mt data_rdy push evtcnt rdat busy oem ren0 foeren oefifo oef_f clk lren dmbdav dofw+1 ren_toggle next_fiber oe_hdr gooddataen golddat oefok lfifo_mt nnd moredata dodata done_data lw_in renoe-0 fdone done endevt owen0 out selout dout

assign i0kin 1\h
assign i0der 0\h
assign i0los 0\h
assign i0nit 0\h
l i0buf
assign i1kin 1\h
assign i1der 0\h
assign i1los 0\h
assign i1nit 0\h
l i1buf
assign i2kin 1\h
assign i2der 0\h
assign i2los 0\h
assign i2nit 0\h
l i2buf
assign i3kin 1\h
assign i3der 0\h
assign i3los 0\h
assign i3nit 0\h
l i3buf
assign i4kin 1\h
assign i4der 0\h
assign i4los 0\h
assign i4nit 0\h
l i4buf
assign i5kin 1\h
assign i5der 0\h
assign i5los 0\h
assign i5nit 0\h
l i5buf
assign i6kin 1\h
assign i6der 0\h
assign i6los 0\h
assign i6nit 0\h
l i6buf
assign i7kin 1\h
assign i7der 0\h
assign i7los 0\h
assign i7nit 0\h
l i7buf
h EMPTY_M30
h EMPTY_M29
h EMPTY_M28
h EMPTY_M27
h EMPTY_M15
h EMPTY_M14
h EMPTY_M13
h EMPTY_M12
h EMPTY_M11
assign in0dat 0ff0\h
assign in1dat 1ff1\h
assign in2dat 2ff2\h
assign in3dat 3ff3\h
assign in4dat 4ff4\h
assign in5dat 5ff5\h
assign in6dat 6ff6\h
assign in7dat 7ff7\h
l fpga
l ff0
l ff1
l paf0
l paf1
l paf0
h l1a_fake
l evtrst
assign killf ff\h
assign fok 01\h
assign rdat 000000000\h

l rst
l l1a

c 1
h rst
c 16
l rst
c 4
c 4
assign fr0mem 00\h
h stack0mt
l stack0fl
sim 100ps
c 19
c
c 19
| Now put in data: in0dat & i0kin 0\h, then set rdat accordingly


|| Begin Empty Event cycle:
|assign in0dat 8001\h
|assign i0kin 0\h
|c
|assign i0kin 1\h
|c
|s
|assign rdat 200048001\h
|c 6
|| ^^^^ End Empty Event cycle ^^^^


|   ----next try non-empty data----
assign in0dat 9001\h
assign i0kin 0\h
c
assign in0dat 9002\h
c
assign in0dat a003\h
c
assign in0dat a004\h
c
assign i0kin 1\h
c
s
| 1st word:
assign rdat 240049001\h
c 9
s
s
assign rdat 240089002\h
s
s
assign rdat 2800CA003\h
s
s
assign rdat 28010A004\h
s
s
c

