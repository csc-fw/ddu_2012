| this is in_unit.cmd, used with IN_UNIT level schematic
|   used to setup tests of Memory Usage FIFO for Input FPGAs
|
|
stepsize 6.25ns
clock clk   0 1
sim 1ns

vector rst RST             | user/common
vector fok FOK             | =1 user
vector ren REN               | user/common
vector next_enb NEXT_ENB     | WR_EN for NextMEM
vector nextmem NEXTMEM[4:0]  | user override
|
vector diff_rw DIFF_RD_WR    | in_unit int. signal
vector en_usenext EN_USENEXT | in_unit int. control
vector rdmem RDMEM[4:0]      | in_unit FIFO output
vector empty STACK_MT        | in_unit FIFO status
vector wrnext WRNEXT         | in_unit output
|
|
vector newmem NEWMEM[4:0]  | pipeline to NextMEM, ignore
vector new_enb NEW_ENB     | CE for NewMEM, ignore
vector fifo_full FIFO_FULL | to next_enb, ignore
vector fifo_af FIFO_AF     | to new_enb, ignore
vector rhs RHS             | user/common
vector rhl RHL             | user/common
vector rdy RDY             | =1 user
vector timeout ENDTIMEOUT  | =0 user
|
|
wave in_unit0.wfm rst nextmem next_enb clk ren empty diff_rw en_usenext wrnext rdmem


l rst
h fok
l ren
l next_enb
assign nextmem 01\h


c 1
h rst
c 4
l rst
c 2
|      |  should now see RdMEM == 00h, Empty == 1
h next_enb
c      |  should now see RdMEM == 00h, Empty == 0
l next_enb
c
h ren
c      |  should now see RdMEM == 01h, Empty == 1
l ren
c
|
|
c 4
assign nextmem 02\h
c 4
h next_enb
c      |  should now see RdMEM == 01h, Empty == 0
l next_enb
c 4

c 4
assign nextmem 03\h
c 4
h next_enb
h ren
sim 1ns

c      |  should now see RdMEM == 02h, Empty == 0 (or 1 if LATENCY)
l next_enb
l ren
sim 1ns | look at Diff_RW (==1? 0 if LATENCY) and En_UseNext (==1?)

c      |  should now see WrNEXT == 1 (or 0 if LATENCY) and Empty == 0
c      |  check WrNEXT == 1 (stuck at 0 if LATENCY)
