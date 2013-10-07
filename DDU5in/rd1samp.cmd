| this reads 1 time sample of DMB input via Fiber1
|   for incntrl.cmd, used with INCNTRL level schematic
|

|   ----read a time sample----


|assign i1kin 0\h
|assign in1dat 4244\h
|c 3
assign rdat 109104244\h
c 24 | end ADC of 1st sample
|assign in1dat 5204\h
|s
|s
|assign in1dat 7004\h
|s
|s
|assign in1dat 7000\h
|s
|s
|assign in1dat 7fff\h
|s
|s
|assign i1kin 1\h
|c
assign rdat 1C0105204\h
s
s
assign rdat 1FFFC7000\h
s
s
| end sample
