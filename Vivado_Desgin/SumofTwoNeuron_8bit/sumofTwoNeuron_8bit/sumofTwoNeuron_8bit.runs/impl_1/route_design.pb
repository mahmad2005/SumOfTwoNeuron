
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
-Phase 1 Build RT Design | Checksum: d2d6df3e
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:22 ; elapsed = 00:00:19 . Memory (MB): peak = 1956.566 ; gain = 90.9692default:defaulth px? 
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
,Phase 2.1 Create Timer | Checksum: d2d6df3e
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:22 ; elapsed = 00:00:19 . Memory (MB): peak = 1956.582 ; gain = 90.9842default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
M
8Phase 2.2 Fix Topology Constraints | Checksum: d2d6df3e
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:22 ; elapsed = 00:00:19 . Memory (MB): peak = 1962.609 ; gain = 97.0122default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.3 Pre Route Cleanup | Checksum: d2d6df3e
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:22 ; elapsed = 00:00:19 . Memory (MB): peak = 1962.609 ; gain = 97.0122default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
B
-Phase 2.4 Update Timing | Checksum: e966fa11
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:23 ; elapsed = 00:00:19 . Memory (MB): peak = 1976.172 ; gain = 110.5742default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-0.804 | TNS=-124.393| WHS=-0.111 | THS=-5.064 |
2default:defaultZ35-416h px? 
H
3Phase 2 Router Initialization | Checksum: ff4f4af5
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:23 ; elapsed = 00:00:19 . Memory (MB): peak = 1976.172 ; gain = 110.5742default:defaulth px? 
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
C
.Phase 3.1 Global Routing | Checksum: ff4f4af5
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:23 ; elapsed = 00:00:19 . Memory (MB): peak = 1979.980 ; gain = 114.3832default:defaulth px? 
B
-Phase 3 Initial Routing | Checksum: 875e533c
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:23 ; elapsed = 00:00:19 . Memory (MB): peak = 1979.980 ; gain = 114.3832default:defaulth px? 
?
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
1522default:default2?
?The top 5 pins with tight setup and hold constraints:

+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|       Launch Clock       |      Capture Clock       |                                                 Pin                                                      |
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|                      CLK |                      CLK |neuron_2_CompExpo/U0/i_synth/i_synth/gen_cordic.cordic_engine/gen_para_arch.gen_iteration[5].eng/data_slice/x_plus_y_shift/inst/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/i_no_async_controls.output_reg[10]/D|
|                      CLK |                      CLK |neuron_2_CompExpo/U0/i_synth/i_synth/gen_cordic.cordic_engine/gen_para_arch.gen_iteration[2].eng/data_slice/y_plus_x_shift/inst/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/i_no_async_controls.output_reg[6]/D|
|                      CLK |                      CLK |neuron_2_CompExpo/U0/i_synth/i_synth/gen_cordic.input_stage/gen_rotation.gen_rot_phase.gen_phase_2_4quad/inst/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/i_no_async_controls.output_reg[10]/D|
|                      CLK |                      CLK |neuron_2_CompExpo/U0/i_synth/i_synth/gen_cordic.cordic_engine/gen_para_arch.gen_iteration[3].eng/phase_slice/phase_plus_atan/inst/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/i_no_async_controls.output_reg[6]/D|
|                      CLK |                      CLK |neuron_1_CompExpo/U0/i_synth/i_synth/gen_cordic.cordic_engine/gen_para_arch.gen_iteration[1].eng/data_slice/x_plus_y_shift/inst/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/i_no_async_controls.output_reg[10]/D|
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
Intermediate Timing Summary %s164*route2K
7| WNS=-0.833 | TNS=-149.963| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 12440a3fc
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:20 . Memory (MB): peak = 1979.980 ; gain = 114.3832default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-0.833 | TNS=-150.313| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 135a78763
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:20 . Memory (MB): peak = 1979.980 ; gain = 114.3832default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 135a78763
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:20 . Memory (MB): peak = 1979.980 ; gain = 114.3832default:defaulth px? 
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
0Phase 5.1.1 Update Timing | Checksum: 17472af44
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:20 . Memory (MB): peak = 1979.980 ; gain = 114.3832default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.697 | TNS=-97.733| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 1e9ea8062
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:20 . Memory (MB): peak = 1979.980 ; gain = 114.3832default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 1e9ea8062
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:20 . Memory (MB): peak = 1979.980 ; gain = 114.3832default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 1e9ea8062
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:20 . Memory (MB): peak = 1979.980 ; gain = 114.3832default:defaulth px? 
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
0Phase 6.1.1 Update Timing | Checksum: 17a90fd9f
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:20 . Memory (MB): peak = 1979.980 ; gain = 114.3832default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.685 | TNS=-97.473| WHS=0.126  | THS=0.000  |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 17a90fd9f
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:20 . Memory (MB): peak = 1979.980 ; gain = 114.3832default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 17a90fd9f
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:20 . Memory (MB): peak = 1979.980 ; gain = 114.3832default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 1e5afd20c
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:20 . Memory (MB): peak = 1979.980 ; gain = 114.3832default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 1e5afd20c
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:20 . Memory (MB): peak = 1979.980 ; gain = 114.3832default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 176c326c5
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:20 . Memory (MB): peak = 1979.980 ; gain = 114.3832default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Estimated Timing Summary %s
57*route2J
6| WNS=-0.685 | TNS=-97.473| WHS=0.126  | THS=0.000  |
2default:defaultZ35-57h px? 
B
!Router estimated timing not met.
128*routeZ35-328h px? 
G
2Phase 10 Post Router Timing | Checksum: 176c326c5
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:21 . Memory (MB): peak = 1979.980 ; gain = 114.3832default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:21 . Memory (MB): peak = 1979.980 ; gain = 114.3832default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1172default:default2
12default:default2
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
00:00:252default:default2
00:00:212default:default2
1979.9802default:default2
116.5082default:defaultZ17-268h px? 
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
00:00:012default:default2 
00:00:00.1502default:default2
1998.5942default:default2
18.6132default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?E:/FPGAProject/01102022/FPGAResearch/5_Final_Submission/Vivado_Desgin/SumofTwoNeuron_8bit/sumofTwoNeuron_8bit/sumofTwoNeuron_8bit.runs/impl_1/sumofTwoNeuron_8bit_routed.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
?Executing : report_drc -file sumofTwoNeuron_8bit_drc_routed.rpt -pb sumofTwoNeuron_8bit_drc_routed.pb -rpx sumofTwoNeuron_8bit_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_drc -file sumofTwoNeuron_8bit_drc_routed.rpt -pb sumofTwoNeuron_8bit_drc_routed.pb -rpx sumofTwoNeuron_8bit_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
586*	vivadotcl2?
?E:/FPGAProject/01102022/FPGAResearch/5_Final_Submission/Vivado_Desgin/SumofTwoNeuron_8bit/sumofTwoNeuron_8bit/sumofTwoNeuron_8bit.runs/impl_1/sumofTwoNeuron_8bit_drc_routed.rpt?E:/FPGAProject/01102022/FPGAResearch/5_Final_Submission/Vivado_Desgin/SumofTwoNeuron_8bit/sumofTwoNeuron_8bit/sumofTwoNeuron_8bit.runs/impl_1/sumofTwoNeuron_8bit_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file sumofTwoNeuron_8bit_methodology_drc_routed.rpt -pb sumofTwoNeuron_8bit_methodology_drc_routed.pb -rpx sumofTwoNeuron_8bit_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file sumofTwoNeuron_8bit_methodology_drc_routed.rpt -pb sumofTwoNeuron_8bit_methodology_drc_routed.pb -rpx sumofTwoNeuron_8bit_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
609*	vivadotcl2?
?E:/FPGAProject/01102022/FPGAResearch/5_Final_Submission/Vivado_Desgin/SumofTwoNeuron_8bit/sumofTwoNeuron_8bit/sumofTwoNeuron_8bit.runs/impl_1/sumofTwoNeuron_8bit_methodology_drc_routed.rpt?E:/FPGAProject/01102022/FPGAResearch/5_Final_Submission/Vivado_Desgin/SumofTwoNeuron_8bit/sumofTwoNeuron_8bit/sumofTwoNeuron_8bit.runs/impl_1/sumofTwoNeuron_8bit_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_power -file sumofTwoNeuron_8bit_power_routed.rpt -pb sumofTwoNeuron_8bit_power_summary_routed.pb -rpx sumofTwoNeuron_8bit_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_power -file sumofTwoNeuron_8bit_power_routed.rpt -pb sumofTwoNeuron_8bit_power_summary_routed.pb -rpx sumofTwoNeuron_8bit_power_routed.rpx2default:defaultZ4-113h px? 
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
1292default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
%s4*runtcl2?
sExecuting : report_route_status -file sumofTwoNeuron_8bit_route_status.rpt -pb sumofTwoNeuron_8bit_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file sumofTwoNeuron_8bit_timing_summary_routed.rpt -pb sumofTwoNeuron_8bit_timing_summary_routed.pb -rpx sumofTwoNeuron_8bit_timing_summary_routed.rpx -warn_on_violation 
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
%s4*runtcl2p
\Executing : report_incremental_reuse -file sumofTwoNeuron_8bit_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2p
\Executing : report_clock_utilization -file sumofTwoNeuron_8bit_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file sumofTwoNeuron_8bit_bus_skew_routed.rpt -pb sumofTwoNeuron_8bit_bus_skew_routed.pb -rpx sumofTwoNeuron_8bit_bus_skew_routed.rpx
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