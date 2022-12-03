@echo off
REM ****************************************************************************
REM Vivado (TM) v2021.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Sat Dec 03 00:11:14 -0600 2022
REM SW Build 3247384 on Thu Jun 10 19:36:33 MDT 2021
REM
REM IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
REM elaborate design
echo "xelab -wto fbe87a45d32c4dd797102ce5a03b483d --incr --debug typical --relax --mt 2 -L xil_defaultlib -L xbip_utils_v3_0_10 -L c_reg_fd_v12_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_pipe_v3_0_6 -L xbip_dsp48_addsub_v3_0_6 -L xbip_addsub_v3_0_6 -L c_addsub_v12_0_14 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_17 -L axi_utils_v2_0_6 -L cordic_v6_0_17 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot sysgen_STN_tb_behav xil_defaultlib.sysgen_STN_tb xil_defaultlib.glbl -log elaborate.log"
call xelab  -wto fbe87a45d32c4dd797102ce5a03b483d --incr --debug typical --relax --mt 2 -L xil_defaultlib -L xbip_utils_v3_0_10 -L c_reg_fd_v12_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_pipe_v3_0_6 -L xbip_dsp48_addsub_v3_0_6 -L xbip_addsub_v3_0_6 -L c_addsub_v12_0_14 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_17 -L axi_utils_v2_0_6 -L cordic_v6_0_17 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot sysgen_STN_tb_behav xil_defaultlib.sysgen_STN_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
