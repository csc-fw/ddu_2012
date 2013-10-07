| this generates 1 event of DMB input via Fiber0 for incntrl.cmd,
|   used with INCNTRL level schematic
|

|   ----send non-empty data event----
| begin DMB header
assign i0kin 0\h
assign in0dat 9001\h
s
s
assign in0dat 9000\h
s
s
assign in0dat 9003\h
s
s
s
s
assign in0dat a006\h
c
assign in0dat a007\h
c
assign i0kin 1\h
c
s
| 1st word out:
assign rdat 240009001\h
c 6
| Begin DMB Readout:
s
s
assign rdat 2400C9003\h
s
s
assign rdat 28018A006\h
s
s
assign rdat 2801CA007\h
c
| DMB Header Done, FIFO Empty now...
c
c 10

| send 8 time samples:
in0samp.cmd
in0samp.cmd
in0samp.cmd
in0samp.cmd
in0samp.cmd
in0samp.cmd
in0samp.cmd
in0samp.cmd

| begin DMB trailer
|assign i0kin 0\h
|assign in0dat 4244\h
|c 3
|assign rdat 109104244\h
|c 45 | end ADC of 1st sample
|assign in0dat 5204\h
|s
|s
|assign in0dat 7004\h


assign i0kin 0\h
assign in0dat f001\h
c
assign in0dat f003\h
c
assign in0dat e005\h
c
assign in0dat e007\h
assign rdat 3C004F001\h
c
assign i0kin 1\h
assign rdat 3C00CF003\h
c
assign rdat B8014E005\h
c
assign rdat 3801CE007\h
c 5
| End DMB trailer

