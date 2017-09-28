@echo off
set xv_path=C:\\Xilinx_hls\\Vivado\\2016.4\\bin
call %xv_path%/xsim Decoder_3to8_tb_behav -key {Behavioral:sim_1:Functional:Decoder_3to8_tb} -tclbatch Decoder_3to8_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
