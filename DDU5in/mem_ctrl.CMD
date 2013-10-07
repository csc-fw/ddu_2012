| this is mem_ctrl.cmd, used with MEM_CTRL level schematic
|   used to setup tests of the Memory Assignment Control cycle
|
|
stepsize 6.25ns
clock clk 0 1 
sim 1ns

vector rst RST               | user/common
vector memreq MEMREQ_F[3:0]  | in_unit
vector oldmem OLDMEM[4:0]    | in_unit
vector release_f RELEASE_F[3:0] | in_unit
|
vector newmem NEWMEM[4:0]    | get at upper level
vector newenb NEWENB[3:0]    | get at upper level
vector asf ASF[1:0]          | get at upper level
vector oldctrl OLDCTRL[1:0]  | get at upper level
vector mark MARK             | get at upper level
vector free FREE             | get at upper level
vector get_f GET_F[3:0]      | NotNeeded--old debug, watch on sch.
vector free_f FREE_F[3:0]    | NotNeeded--old debug, watch on sch.
vector fpaf0 AFUL            | get at upper level
vector none_free FFUL        | get at upper level
vector memavail MEMFREE[4:0] | get at upper level
|
vector sf SF[1:0]            | NotNeeded--old debug, watch on sch.
vector search_f SEARCH_F[3:0] | NotNeeded--old debug
vector s_c0adr S_C0ADR[4:0]  | NotNeeded--old debug
vector s_c1adr S_C1ADR[4:0]  | NotNeeded--old debug
vector wadr WADR[4:0]        | NotNeeded--old debug
vector start START_SEARCH    | NotNeeded--old debug
vector busy BUSY_SEARCH      | NotNeeded--old debug
vector search_lim SEARCH_LIM | NotNeeded--old debug
vector end END_SEARCH        | NotNeeded--old debug
vector pref_c PREF_C[1:0]    | NotNeeded--old debug
vector busy_c BUSY_C[1:0]    | NotNeeded--old debug
vector got_c GOT_C[1:0]      | NotNeeded--old debug
vector sel_c SEL_C[1:0]      | NotNeeded--old debug

wave mem_ctrl_1.wfm rst memreq get_f start busy sf asf search_f s_c0adr s_c1adr pref_c busy_c got_c sel_c search_lim end mark clk wadr newmem newenb fpaf0 none_free memavail oldmem release_f oldctrl free free_f 

l rst
assign memreq 0\h
assign release_f 0\h
assign oldmem 00\h
c 5
h rst
c 1
l rst
c 2
|assign memreq 3\h
|assign memreq 1\h
assign memreq f\h
c 1
assign memreq 0\h
c 23
