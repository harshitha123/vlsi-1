@echo off
set xv_path=C:\\Xilinx_hls\\Vivado\\2016.4\\bin
call %xv_path%/xsim Ripplecarry_tb_behav -key {Behavioral:sim_1:Functional:Ripplecarry_tb} -tclbatch Ripplecarry_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
