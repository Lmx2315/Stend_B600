setMode -bs
setMode -bs
setMode -bs
setCable -port auto
Identify -inferir 
identifyMPM 
setMode -pff
setMode -pff
addConfigDevice  -name "Untitled" -path "C:\SOFT_project\FPGA\Xilinx_project\Sinhron_B700\B700_sintezator"
setSubmode -pffserial
setAttribute -configdevice -attr multibootBpiType -value ""
addDesign -version 0 -name "0"
setAttribute -configdevice -attr compressed -value "FALSE"
setAttribute -configdevice -attr compressed -value "FALSE"
setAttribute -configdevice -attr autoSize -value "FALSE"
setAttribute -configdevice -attr fileFormat -value "mcs"
setAttribute -configdevice -attr fillValue -value "FF"
setAttribute -configdevice -attr swapBit -value "FALSE"
setAttribute -configdevice -attr dir -value "UP"
setAttribute -configdevice -attr multiboot -value "FALSE"
setAttribute -configdevice -attr multiboot -value "FALSE"
setAttribute -configdevice -attr spiSelected -value "FALSE"
setAttribute -configdevice -attr spiSelected -value "FALSE"
addPromDevice -p 1 -size 0 -name xcf04s
setMode -bs
setMode -bs
setMode -bs
setMode -pff
setMode -pff
setSubmode -pffserial
setMode -pff
addDeviceChain -index 0
setMode -pff
setMode -pff
setMode -pff
addDeviceChain -index 0
addDevice -p 1 -file "C:/SOFT_project/FPGA/Xilinx_project/Sinhron_B700/B700_sintezator/mainpage1.bit"
setMode -pff
setSubmode -pffserial
generate
setCurrentDesign -version 0
setMode -bs
setMode -bs
setMode -bs
assignFile -p 1 -file "C:/SOFT_project/FPGA/Xilinx_project/Sinhron_B700/B700_sintezator/Untitled.mcs"
setAttribute -position 1 -attr packageName -value ""
Program -p 1 -e -v 
setMode -pff
setMode -pff
setMode -pff
setMode -pff
setSubmode -pffserial
generate
setCurrentDesign -version 0
setMode -bs
setMode -bs
setMode -bs
assignFile -p 1 -file "C:/SOFT_project/FPGA/Xilinx_project/Sinhron_B700/B700_sintezator/Untitled.mcs"
setAttribute -position 1 -attr packageName -value ""
Program -p 1 -e -v 
setMode -pff
setMode -pff
setMode -pff
setMode -pff
setSubmode -pffserial
generate
setCurrentDesign -version 0
setMode -bs
setMode -bs
setMode -bs
assignFile -p 1 -file "C:/SOFT_project/FPGA/Xilinx_project/Sinhron_B700/B700_sintezator/Untitled.mcs"
setAttribute -position 1 -attr packageName -value ""
Program -p 1 -e -v 
setMode -pff
setMode -pff
setMode -pff
setMode -pff
setSubmode -pffserial
generate
setCurrentDesign -version 0
setMode -bs
setMode -bs
setMode -bs
assignFile -p 1 -file "C:/SOFT_project/FPGA/Xilinx_project/Sinhron_B700/B700_sintezator/Untitled.mcs"
setAttribute -position 1 -attr packageName -value ""
Program -p 1 -e -v 
setMode -bs
setMode -bs
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
setMode -bs
saveProjectFile -file "C:\Xilinx\14.4\\auto_project.ipf"
setMode -bs
setMode -pff
setMode -bs
deleteDevice -position 1
deleteDevice -position 1
setMode -bs
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
deletePromDevice -position 1
setCurrentDesign -version 0
deleteDevice -position 1
deleteDesign -version 0
setCurrentDesign -version -1
