@echo off
set xv_path=C:\\Xilinx_hls\\Vivado\\2016.4\\bin
call %xv_path%/xsim Mux_8to1_tb_behav -key {Behavioral:sim_1:Functional:Mux_8to1_tb} -tclbatch Mux_8to1_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
