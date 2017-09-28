@echo off
set xv_path=C:\\Xilinx_hls\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto bf113e95eafc4b7c9d4579cbbd4b833b -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot Mux_8to1_tb_behav xil_defaultlib.Mux_8to1_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
