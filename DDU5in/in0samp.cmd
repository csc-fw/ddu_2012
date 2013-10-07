| this generates 1 event of DMB input via Fiber0 for incntrl.cmd,
|   used with INCNTRL level schematic
|

|   ----send a time sample----


| FIFO Empty, then load a sample...

assign i0kin 0\h
assign in0dat 4244\h
c 3
assign rdat 109104244\h
c 45 | end ADC of 1st sample
assign in0dat 5204\h
s
s
assign in0dat 7004\h
s
s
assign in0dat 7000\h
s
s
assign in0dat 7fff\h
s
s
assign i0kin 1\h
c
assign rdat 1C0105204\h
c
assign rdat 1FFFC7000\h
c
| end sample

