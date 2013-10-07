| this reads 1 event of DMB input via Fiber1 for incntrl.cmd,
|   used with INCNTRL level schematic
|

|   ----read non-empty data event----
| begin DMB header
|assign i1kin 0\h
|assign in1dat 9001\h
s
s
|assign in1dat 9000\h
s
s
|assign in1dat 9003\h
s
s
s
s
|assign in1dat a006\h
c
|assign in1dat a007\h
c
|assign i1kin 1\h
c
s
s
s
| 1st word out:
assign rdat 240009001\h
c 5
| Begin DMB Readout:
c
assign rdat 2400C9003\h
s
s
assign rdat 28018A006\h
s
s
assign rdat 2801CA007\h
s
s
| DMB Header Done, FIFO Empty now...

| read 8 time samples:
rd1samp.cmd
rd1samp.cmd
rd1samp.cmd
rd1samp.cmd
rd1samp.cmd
rd1samp.cmd
rd1samp.cmd
rd1samp.cmd

| begin DMB trailer
|assign i1kin 0\h
|assign in1dat 4244\h
|c 3
|assign rdat 109104244\h
|c 45 | end ADC of 1st sample
|assign in1dat 5204\h
|s
|s
|assign in1dat 7004\h


|assign i1kin 0\h
|assign in1dat f001\h
|c
|assign in1dat f003\h
|c
|assign in1dat e005\h
|c
|assign in1dat e007\h
assign rdat 3C004F001\h
s
s
|assign i1kin 1\h
assign rdat 3C00CF003\h
s
s
assign rdat B8014E005\h
s
s
assign rdat 3801CE007\h
c 3
s
s
| End DMB trailer

