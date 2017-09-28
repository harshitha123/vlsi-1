@echo off
set xv_path=C:\\Xilinx_hls\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto 6de02938db2242b4bf10ec7d55cc74ec -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot CarryLookAheadAdder_tb_behav xil_defaultlib.CarryLookAheadAdder_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
