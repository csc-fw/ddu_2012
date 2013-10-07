setPreference -pref UserLevel:NOVICE
setPreference -pref MessageLevel:DETAILED
setPreference -pref ConcurrentMode:TRUE
setPreference -pref UseHighz:FALSE
setPreference -pref ConfigOnFailure:STOP
setPreference -pref StartupCLock:AUTO_CORRECTION
setPreference -pref AutoSignature:FALSE
setPreference -pref KeepSVF:FALSE
setPreference -pref svfUseTime:FALSE
setPreference -pref UserLevel:NOVICE
setPreference -pref MessageLevel:DETAILED
setPreference -pref ConcurrentMode:TRUE
setPreference -pref UseHighz:FALSE
setPreference -pref ConfigOnFailure:STOP
setPreference -pref StartupCLock:AUTO_CORRECTION
setPreference -pref AutoSignature:FALSE
setPreference -pref KeepSVF:FALSE
setPreference -pref svfUseTime:FALSE
setMode -bs
setPreference -pref UserLevel:Novice
setMode -pff
addConfigDevice -size 0 -name "xc18v04" -path "\\phypcs\ellicad\wv\d785\ddu5in\in5ctrl/"
setAttribute -configdevice -attr size -value "0"
setAttribute -configdevice -attr reseveSize -value "0"
setSubmode -pffserial
setAttribute -configdevice -attr activeCollection -value "in5ctrl"
addCollection -name "in5ctrl"
addDesign -version 0 -name "0"
addDeviceChain -index 0
addDevice -position 1 -file "M:\WV\D785\DDU5in\In5Ctrl\0ddu_in.bit"

addPromDevice -position 1 -size 0 -name "xc18v04"
addPromDevice -position 2 -size 0 -name "xc18v04"
setAttribute -configdevice -attr fileFormat -value "mcs"
setAttribute -configdevice -attr swapBit -value "FALSE"
setAttribute -configdevice -attr fillValue -value "FF"
setAttribute -collection -attr dir -value "UP"
setMode -mpm
setMode -cf
setMode -dtconfig
setMode -bsfile
setMode -sm
setMode -ss
setMode -bs
setCable -port lpt1
setMode -pff
setMode -bs
setMode -ss
setMode -sm
setMode -bsfile
setMode -dtconfig
setMode -cf
setMode -mpm
setMode -pff
setCurrentDeviceChain -index 0
setMode -pff
setMode -bs
setPreference -pref UserLevel:Novice
setMode -pff
setMode -mpm
setMode -cf
setMode -dtconfig
setMode -bsfile
addDevice -position 1 -part "xc18v04"
setAttribute -position 1 -attr configFileName -value "M:\WV\D785\DDU5in\In5Ctrl\in5ctrl_1.mcs"

setMode -sm
setMode -ss
setMode -bs
setCable -port lpt1
setMode -bsfile
setMode -bs
setMode -ss
setMode -sm
setMode -bsfile
setMode -dtconfig
setMode -cf
setMode -mpm
setMode -pff
setMode -bsfile
setCable -port svf -file "M:\WV\D785\DDU5in\In5Ctrl\in5ctrl_1.svf"
Program -p 1 -e -parallel -u D1025A06 
