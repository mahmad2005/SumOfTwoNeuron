
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
B
-Phase 1 Build RT Design | Checksum: f4b4a7a9
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:51 ; elapsed = 00:00:46 . Memory (MB): peak = 2020.832 ; gain = 100.2772default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
A
,Phase 2.1 Create Timer | Checksum: f4b4a7a9
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:51 ; elapsed = 00:00:46 . Memory (MB): peak = 2020.832 ; gain = 100.2772default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
M
8Phase 2.2 Fix Topology Constraints | Checksum: f4b4a7a9
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:51 ; elapsed = 00:00:46 . Memory (MB): peak = 2027.484 ; gain = 106.9302default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.3 Pre Route Cleanup | Checksum: f4b4a7a9
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:51 ; elapsed = 00:00:46 . Memory (MB): peak = 2027.484 ; gain = 106.9302default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 18b8e4f45
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:54 ; elapsed = 00:00:48 . Memory (MB): peak = 2044.391 ; gain = 123.8362default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-3.821 | TNS=-3681.213| WHS=-0.162 | THS=-58.242|
2default:defaultZ35-416h px? 
I
4Phase 2 Router Initialization | Checksum: 17749709f
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:56 ; elapsed = 00:00:50 . Memory (MB): peak = 2107.742 ; gain = 187.1882default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
3.1 2default:default2"
Global Routing2default:defaultZ18-101h px? 
D
/Phase 3.1 Global Routing | Checksum: 17749709f
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:56 ; elapsed = 00:00:50 . Memory (MB): peak = 2107.742 ; gain = 187.1882default:defaulth px? 
C
.Phase 3 Initial Routing | Checksum: 1bbcdf2b8
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:58 ; elapsed = 00:00:51 . Memory (MB): peak = 2107.742 ; gain = 187.1882default:defaulth px? 
?
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
7332default:default2?
?The top 5 pins with tight setup and hold constraints:

+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|       Launch Clock       |      Capture Clock       |                                                 Pin                                                      |
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|                      CLK |                      CLK |your_instance_name/U0/bram_stn_32bit_struct/bram_sumoftwoneurons_32bit/subsystem1/bram_cordic/divide/bram_stn_32bit_div_gen_v5_1_i0_instance/U0/i_synth/i_nonzero_fract.i_synth/i_algo_r2_or_lutmult.i_nonzero_fract.i_sdivider/i_sdivider.divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q_simple.qreg/opt_has_pipe.first_q_reg[30]/D|
|                      CLK |                      CLK |your_instance_name/U0/bram_stn_32bit_struct/bram_sumoftwoneurons_32bit/subsystem1/bram_cordic/divide/bram_stn_32bit_div_gen_v5_1_i0_instance/U0/i_synth/i_nonzero_fract.i_synth/i_algo_r2_or_lutmult.i_nonzero_fract.i_sdivider/i_sdivider.divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q_simple.qreg/opt_has_pipe.first_q_reg[31]/D|
|                      CLK |                      CLK |your_instance_name/U0/bram_stn_32bit_struct/bram_sumoftwoneurons_32bit/subsystem1/bram_cordic/divide/bram_stn_32bit_div_gen_v5_1_i0_instance/U0/i_synth/i_nonzero_fract.i_synth/i_algo_r2_or_lutmult.i_nonzero_fract.i_sdivider/i_sdivider.divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q_simple.qreg/opt_has_pipe.first_q_reg[32]/D|
|                      CLK |                      CLK |your_instance_name/U0/bram_stn_32bit_struct/bram_sumoftwoneurons_32bit/subsystem1/bram_cordic/divide/bram_stn_32bit_div_gen_v5_1_i0_instance/U0/i_synth/i_nonzero_fract.i_synth/i_algo_r2_or_lutmult.i_nonzero_fract.i_sdivider/i_sdivider.divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q_simple.qreg/opt_has_pipe.first_q_reg[29]/D|
|                      CLK |                      CLK |your_instance_name/U0/bram_stn_32bit_struct/bram_sumoftwoneurons_32bit/subsystem1/bram_cordic/divide/bram_stn_32bit_div_gen_v5_1_i0_instance/U0/i_synth/i_nonzero_fract.i_synth/i_algo_r2_or_lutmult.i_nonzero_fract.i_sdivider/i_sdivider.divider_blk/div_loop[7].adder_gen.reg_req.adsu_mod/add1/no_pipelining.the_addsub/i_q_simple.qreg/opt_has_pipe.first_q_reg[26]/D|
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+

File with complete list of pins: tight_setup_hold_pins.txt
2default:defaultZ35-580h px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-3.823 | TNS=-5988.417| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 1254de992
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:00 ; elapsed = 00:00:53 . Memory (MB): peak = 2107.742 ; gain = 187.1882default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-3.823 | TNS=-5983.713| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 1846a194d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:01 ; elapsed = 00:00:53 . Memory (MB): peak = 2107.742 ; gain = 187.1882default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 1846a194d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:01 ; elapsed = 00:00:53 . Memory (MB): peak = 2107.742 ; gain = 187.1882default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 5.1.1 Update Timing | Checksum: 1ce59cb1e
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:01 ; elapsed = 00:00:53 . Memory (MB): peak = 2107.742 ; gain = 187.1882default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-3.670 | TNS=-5541.672| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 1cc39ed15
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:02 ; elapsed = 00:00:53 . Memory (MB): peak = 2107.742 ; gain = 187.1882default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 1cc39ed15
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:02 ; elapsed = 00:00:54 . Memory (MB): peak = 2107.742 ; gain = 187.1882default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 1cc39ed15
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:02 ; elapsed = 00:00:54 . Memory (MB): peak = 2107.742 ; gain = 187.1882default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 6.1.1 Update Timing | Checksum: 1f138eb57
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:03 ; elapsed = 00:00:54 . Memory (MB): peak = 2107.742 ; gain = 187.1882default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-3.670 | TNS=-5541.672| WHS=0.024  | THS=0.000  |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 18f0cbef6
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:03 ; elapsed = 00:00:54 . Memory (MB): peak = 2107.742 ; gain = 187.1882default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 18f0cbef6
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:03 ; elapsed = 00:00:54 . Memory (MB): peak = 2107.742 ; gain = 187.1882default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 15879219c
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:03 ; elapsed = 00:00:54 . Memory (MB): peak = 2107.742 ; gain = 187.1882default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 15879219c
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:03 ; elapsed = 00:00:54 . Memory (MB): peak = 2107.742 ; gain = 187.1882default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 114fab386
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:03 ; elapsed = 00:00:55 . Memory (MB): peak = 2107.742 ; gain = 187.1882default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Estimated Timing Summary %s
57*route2L
8| WNS=-3.670 | TNS=-5541.672| WHS=0.024  | THS=0.000  |
2default:defaultZ35-57h px? 
B
!Router estimated timing not met.
128*routeZ35-328h px? 
G
2Phase 10 Post Router Timing | Checksum: 114fab386
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:04 ; elapsed = 00:00:56 . Memory (MB): peak = 2107.742 ; gain = 187.1882default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:04 ; elapsed = 00:00:56 . Memory (MB): peak = 2107.742 ; gain = 187.1882default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1442default:default2
22default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:01:132default:default2
00:01:012default:default2
2107.7422default:default2
188.8592default:defaultZ17-268h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:042default:default2
00:00:012default:default2
2119.1452default:default2
11.4022default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?E:/FPGAProject/01102022/FPGAResearch/5_Final_Submission/Simulink/BRAM_LT_Based/BRAM32bit/vivado/sysgen_STN/sysgen_STN.runs/impl_1/sysgen_STN_routed.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
sExecuting : report_drc -file sysgen_STN_drc_routed.rpt -pb sysgen_STN_drc_routed.pb -rpx sysgen_STN_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2z
freport_drc -file sysgen_STN_drc_routed.rpt -pb sysgen_STN_drc_routed.pb -rpx sysgen_STN_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
586*	vivadotcl2?
?E:/FPGAProject/01102022/FPGAResearch/5_Final_Submission/Simulink/BRAM_LT_Based/BRAM32bit/vivado/sysgen_STN/sysgen_STN.runs/impl_1/sysgen_STN_drc_routed.rpt?E:/FPGAProject/01102022/FPGAResearch/5_Final_Submission/Simulink/BRAM_LT_Based/BRAM32bit/vivado/sysgen_STN/sysgen_STN.runs/impl_1/sysgen_STN_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file sysgen_STN_methodology_drc_routed.rpt -pb sysgen_STN_methodology_drc_routed.pb -rpx sysgen_STN_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file sysgen_STN_methodology_drc_routed.rpt -pb sysgen_STN_methodology_drc_routed.pb -rpx sysgen_STN_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
609*	vivadotcl2?
?E:/FPGAProject/01102022/FPGAResearch/5_Final_Submission/Simulink/BRAM_LT_Based/BRAM32bit/vivado/sysgen_STN/sysgen_STN.runs/impl_1/sysgen_STN_methodology_drc_routed.rpt?E:/FPGAProject/01102022/FPGAResearch/5_Final_Submission/Simulink/BRAM_LT_Based/BRAM32bit/vivado/sysgen_STN/sysgen_STN.runs/impl_1/sysgen_STN_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_power -file sysgen_STN_power_routed.rpt -pb sysgen_STN_power_summary_routed.pb -rpx sysgen_STN_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
vreport_power -file sysgen_STN_power_routed.rpt -pb sysgen_STN_power_summary_routed.pb -rpx sysgen_STN_power_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1562default:default2
22default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
%s4*runtcl2u
aExecuting : report_route_status -file sysgen_STN_route_status.rpt -pb sysgen_STN_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file sysgen_STN_timing_summary_routed.rpt -pb sysgen_STN_timing_summary_routed.pb -rpx sysgen_STN_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 
?
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px? 
?
%s4*runtcl2g
SExecuting : report_incremental_reuse -file sysgen_STN_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2g
SExecuting : report_clock_utilization -file sysgen_STN_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file sysgen_STN_bus_skew_routed.rpt -pb sysgen_STN_bus_skew_routed.pb -rpx sysgen_STN_bus_skew_routed.rpx
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 


End Record