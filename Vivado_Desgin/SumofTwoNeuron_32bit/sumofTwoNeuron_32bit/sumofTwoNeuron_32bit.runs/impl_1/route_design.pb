
d
Command: %s
53*	vivadotcl23
route_design -directive Explore2default:defaultZ4-113h px? 
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
^
Using Router directive '%s'.
20*	routeflow2
Explore2default:defaultZ35-270h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
B
-Phase 1 Build RT Design | Checksum: 85e40885
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:38 ; elapsed = 00:00:32 . Memory (MB): peak = 2093.461 ; gain = 93.7232default:defaulth px? 
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
,Phase 2.1 Create Timer | Checksum: 85e40885
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:38 ; elapsed = 00:00:32 . Memory (MB): peak = 2093.461 ; gain = 93.7232default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
M
8Phase 2.2 Fix Topology Constraints | Checksum: 85e40885
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:38 ; elapsed = 00:00:32 . Memory (MB): peak = 2100.453 ; gain = 100.7152default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.3 Pre Route Cleanup | Checksum: 85e40885
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:38 ; elapsed = 00:00:32 . Memory (MB): peak = 2100.453 ; gain = 100.7152default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 1cc1e1130
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:45 ; elapsed = 00:00:37 . Memory (MB): peak = 2117.422 ; gain = 117.6842default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-1.742 | TNS=-6162.900| WHS=-0.144 | THS=-17.915|
2default:defaultZ35-416h px? 
I
4Phase 2 Router Initialization | Checksum: 19f366c68
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:49 ; elapsed = 00:00:39 . Memory (MB): peak = 2124.449 ; gain = 124.7112default:defaulth px? 
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
/Phase 3.1 Global Routing | Checksum: 19f366c68
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:49 ; elapsed = 00:00:39 . Memory (MB): peak = 2129.371 ; gain = 129.6332default:defaulth px? 
C
.Phase 3 Initial Routing | Checksum: 10d0f02e7
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:52 ; elapsed = 00:00:41 . Memory (MB): peak = 2129.371 ; gain = 129.6332default:defaulth px? 
?
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
7412default:default2?
?The top 5 pins with tight setup and hold constraints:

+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|       Launch Clock       |      Capture Clock       |                                                 Pin                                                      |
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|                      CLK |                      CLK |neuron_2_CompExpo/U0/i_synth/i_synth/gen_cordic.cordic_engine/gen_para_arch.gen_iteration[29].eng/data_slice/y_plus_x_shift/inst/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/i_no_async_controls.output_reg[34]/D|
|                      CLK |                      CLK |neuron_2_CompExpo/U0/i_synth/i_synth/gen_cordic.cordic_engine/gen_para_arch.gen_iteration[29].eng/data_slice/y_plus_x_shift/inst/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/i_no_async_controls.output_reg[35]/D|
|                      CLK |                      CLK |neuron_2_CompExpo/U0/i_synth/i_synth/gen_cordic.cordic_engine/gen_para_arch.gen_iteration[29].eng/data_slice/y_plus_x_shift/inst/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/i_no_async_controls.output_reg[30]/D|
|                      CLK |                      CLK |neuron_2_CompExpo/U0/i_synth/i_synth/gen_cordic.cordic_engine/gen_para_arch.gen_iteration[14].eng/data_slice/x_plus_y_shift/inst/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/i_no_async_controls.output_reg[37]/D|
|                      CLK |                      CLK |neuron_2_CompExpo/U0/i_synth/i_synth/gen_cordic.cordic_engine/gen_para_arch.gen_iteration[29].eng/data_slice/y_plus_x_shift/inst/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/i_no_async_controls.output_reg[31]/D|
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
8| WNS=-1.829 | TNS=-6694.765| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 26224151c
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:59 ; elapsed = 00:00:46 . Memory (MB): peak = 2129.371 ; gain = 129.6332default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-1.846 | TNS=-6653.335| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 1ffac4250
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:01 ; elapsed = 00:00:47 . Memory (MB): peak = 2129.371 ; gain = 129.6332default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 1ffac4250
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:01 ; elapsed = 00:00:47 . Memory (MB): peak = 2129.371 ; gain = 129.6332default:defaulth px? 
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
0Phase 5.1.1 Update Timing | Checksum: 15f3561b1
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:02 ; elapsed = 00:00:48 . Memory (MB): peak = 2129.371 ; gain = 129.6332default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-1.714 | TNS=-5902.603| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 16e372651
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:03 ; elapsed = 00:00:49 . Memory (MB): peak = 2129.371 ; gain = 129.6332default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 16e372651
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:03 ; elapsed = 00:00:49 . Memory (MB): peak = 2129.371 ; gain = 129.6332default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 16e372651
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:03 ; elapsed = 00:00:49 . Memory (MB): peak = 2129.371 ; gain = 129.6332default:defaulth px? 
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
D
/Phase 6.1.1 Update Timing | Checksum: d844f5cc
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:04 ; elapsed = 00:00:50 . Memory (MB): peak = 2129.371 ; gain = 129.6332default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-1.714 | TNS=-5900.202| WHS=-0.005 | THS=-0.005 |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 1d68b416c
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:04 ; elapsed = 00:00:50 . Memory (MB): peak = 2129.371 ; gain = 129.6332default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 1ea3098c2
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:04 ; elapsed = 00:00:50 . Memory (MB): peak = 2129.371 ; gain = 129.6332default:defaulth px? 
t

Phase %s%s
101*constraints2
7 2default:default2'
Timing Verification2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
7.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 7.1 Update Timing | Checksum: 25b7879c4
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:07 ; elapsed = 00:00:51 . Memory (MB): peak = 2129.371 ; gain = 129.6332default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-1.714 | TNS=-5900.338| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
G
2Phase 7 Timing Verification | Checksum: 25b7879c4
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:07 ; elapsed = 00:00:51 . Memory (MB): peak = 2129.371 ; gain = 129.6332default:defaulth px? 
o

Phase %s%s
101*constraints2
8 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 8 Route finalize | Checksum: 25b7879c4
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:07 ; elapsed = 00:00:51 . Memory (MB): peak = 2129.371 ; gain = 129.6332default:defaulth px? 
v

Phase %s%s
101*constraints2
9 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 9 Verifying routed nets | Checksum: 25b7879c4
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:07 ; elapsed = 00:00:51 . Memory (MB): peak = 2129.371 ; gain = 129.6332default:defaulth px? 
s

Phase %s%s
101*constraints2
10 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
F
1Phase 10 Depositing Routes | Checksum: 1f84ae3ff
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:09 ; elapsed = 00:00:53 . Memory (MB): peak = 2129.371 ; gain = 129.6332default:defaulth px? 
w

Phase %s%s
101*constraints2
11 2default:default2)
Incr Placement Change2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0162default:default2
2129.3712default:default2
0.0002default:defaultZ17-268h px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
-1.7142default:defaultZ30-746h px? 
A
,Ending IncrPlace Task | Checksum: 105d98e49
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:20 ; elapsed = 00:00:16 . Memory (MB): peak = 2129.371 ; gain = 0.0002default:defaulth px? 
J
5Phase 11 Incr Placement Change | Checksum: 1f84ae3ff
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:29 ; elapsed = 00:01:09 . Memory (MB): peak = 2129.371 ; gain = 129.6332default:defaulth px? 
q

Phase %s%s
101*constraints2
12 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
C
.Phase 12 Build RT Design | Checksum: c90027b4
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:30 ; elapsed = 00:01:10 . Memory (MB): peak = 2129.371 ; gain = 129.6332default:defaulth px? 
w

Phase %s%s
101*constraints2
13 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
13.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
C
.Phase 13.1 Create Timer | Checksum: 100099849
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:31 ; elapsed = 00:01:10 . Memory (MB): peak = 2134.512 ; gain = 134.7732default:defaulth px? 
|

Phase %s%s
101*constraints2
13.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
O
:Phase 13.2 Fix Topology Constraints | Checksum: 100099849
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:31 ; elapsed = 00:01:10 . Memory (MB): peak = 2140.578 ; gain = 140.8402default:defaulth px? 
u

Phase %s%s
101*constraints2
13.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
H
3Phase 13.3 Pre Route Cleanup | Checksum: 100099849
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:31 ; elapsed = 00:01:10 . Memory (MB): peak = 2140.578 ; gain = 140.8402default:defaulth px? 
w

Phase %s%s
101*constraints2
13.4 2default:default2'
Timing Verification2default:defaultZ18-101h px? 
s

Phase %s%s
101*constraints2
13.4.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
F
1Phase 13.4.1 Update Timing | Checksum: 1741377dd
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:40 ; elapsed = 00:01:15 . Memory (MB): peak = 2142.812 ; gain = 143.0742default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-1.714 | TNS=-5901.139| WHS=0.052  | THS=0.000  |
2default:defaultZ35-416h px? 
J
5Phase 13.4 Timing Verification | Checksum: 1741377dd
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:40 ; elapsed = 00:01:15 . Memory (MB): peak = 2142.812 ; gain = 143.0742default:defaulth px? 
q

Phase %s%s
101*constraints2
13.5 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 13.5 Update Timing | Checksum: 9fb7a6a9
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:49 ; elapsed = 00:01:21 . Memory (MB): peak = 2143.539 ; gain = 143.8012default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-1.831 | TNS=-6698.212| WHS=-0.144 | THS=-17.511|
2default:defaultZ35-416h px? 
I
4Phase 13 Router Initialization | Checksum: 7fe74795
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:52 ; elapsed = 00:01:23 . Memory (MB): peak = 2150.934 ; gain = 151.1952default:defaulth px? 
q

Phase %s%s
101*constraints2
14 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
14.1 2default:default2"
Global Routing2default:defaultZ18-101h px? 
D
/Phase 14.1 Global Routing | Checksum: 7fe74795
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:53 ; elapsed = 00:01:23 . Memory (MB): peak = 2155.855 ; gain = 156.1172default:defaulth px? 
D
/Phase 14 Initial Routing | Checksum: 13edb174c
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:53 ; elapsed = 00:01:23 . Memory (MB): peak = 2155.855 ; gain = 156.1172default:defaulth px? 
?
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
7672default:default2?
?The top 5 pins with tight setup and hold constraints:

+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|       Launch Clock       |      Capture Clock       |                                                 Pin                                                      |
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|                      CLK |                      CLK |neuron_2_CompExpo/U0/i_synth/i_synth/gen_cordic.cordic_engine/gen_para_arch.gen_iteration[10].eng/phase_slice/phase_plus_atan/inst/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/i_no_async_controls.output_reg[34]/D|
|                      CLK |                      CLK |neuron_1_CompExpo/U0/i_synth/i_synth/gen_cordic.cordic_engine/gen_para_arch.gen_iteration[18].eng/phase_slice/phase_plus_atan/inst/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/i_no_async_controls.output_reg[34]/D|
|                      CLK |                      CLK |neuron_1_CompExpo/U0/i_synth/i_synth/gen_cordic.cordic_engine/gen_para_arch.gen_iteration[1].eng/phase_slice/phase_plus_atan/inst/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/i_no_async_controls.output_reg[34]/D|
|                      CLK |                      CLK |neuron_2_CompExpo/U0/i_synth/i_synth/gen_cordic.cordic_engine/gen_para_arch.gen_iteration[14].eng/data_slice/x_plus_y_shift/inst/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/i_no_async_controls.output_reg[37]/D|
|                      CLK |                      CLK |neuron_1_CompExpo/U0/i_synth/i_synth/gen_cordic.cordic_engine/gen_para_arch.gen_iteration[1].eng/phase_slice/phase_plus_atan/inst/i_baseblox.i_baseblox_addsub/no_pipelining.the_addsub/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/i_no_async_controls.output_reg[36]/D|
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+

File with complete list of pins: tight_setup_hold_pins.txt
2default:defaultZ35-580h px? 
t

Phase %s%s
101*constraints2
15 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
v

Phase %s%s
101*constraints2
15.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-1.829 | TNS=-6692.922| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
I
4Phase 15.1 Global Iteration 0 | Checksum: 16690d3b6
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:57 ; elapsed = 00:01:26 . Memory (MB): peak = 2155.855 ; gain = 156.1172default:defaulth px? 
v

Phase %s%s
101*constraints2
15.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-1.846 | TNS=-6670.914| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
I
4Phase 15.2 Global Iteration 1 | Checksum: 155f7712f
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:01 ; elapsed = 00:01:29 . Memory (MB): peak = 2155.855 ; gain = 156.1172default:defaulth px? 
G
2Phase 15 Rip-up And Reroute | Checksum: 155f7712f
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:01 ; elapsed = 00:01:29 . Memory (MB): peak = 2155.855 ; gain = 156.1172default:defaulth px? 
}

Phase %s%s
101*constraints2
16 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
16.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
s

Phase %s%s
101*constraints2
16.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
F
1Phase 16.1.1 Update Timing | Checksum: 11b1203cc
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:02 ; elapsed = 00:01:30 . Memory (MB): peak = 2155.855 ; gain = 156.1172default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-1.714 | TNS=-5900.856| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
D
/Phase 16.1 Delay CleanUp | Checksum: 20a709476
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:02 ; elapsed = 00:01:31 . Memory (MB): peak = 2155.855 ; gain = 156.1172default:defaulth px? 
{

Phase %s%s
101*constraints2
16.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
N
9Phase 16.2 Clock Skew Optimization | Checksum: 20a709476
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:02 ; elapsed = 00:01:31 . Memory (MB): peak = 2155.855 ; gain = 156.1172default:defaulth px? 
P
;Phase 16 Delay and Skew Optimization | Checksum: 20a709476
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:02 ; elapsed = 00:01:31 . Memory (MB): peak = 2155.855 ; gain = 156.1172default:defaulth px? 
o

Phase %s%s
101*constraints2
17 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
17.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
s

Phase %s%s
101*constraints2
17.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
F
1Phase 17.1.1 Update Timing | Checksum: 1a5c3ba43
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:04 ; elapsed = 00:01:32 . Memory (MB): peak = 2155.855 ; gain = 156.1172default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-1.714 | TNS=-5897.009| WHS=0.053  | THS=0.000  |
2default:defaultZ35-416h px? 
D
/Phase 17.1 Hold Fix Iter | Checksum: 1a5c3ba43
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:04 ; elapsed = 00:01:32 . Memory (MB): peak = 2155.855 ; gain = 156.1172default:defaulth px? 
B
-Phase 17 Post Hold Fix | Checksum: 1a5c3ba43
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:04 ; elapsed = 00:01:32 . Memory (MB): peak = 2155.855 ; gain = 156.1172default:defaulth px? 
u

Phase %s%s
101*constraints2
18 2default:default2'
Timing Verification2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
18.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 18.1 Update Timing | Checksum: 24b2b728d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:08 ; elapsed = 00:01:34 . Memory (MB): peak = 2155.855 ; gain = 156.1172default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-1.714 | TNS=-5897.009| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 18 Timing Verification | Checksum: 24b2b728d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:08 ; elapsed = 00:01:34 . Memory (MB): peak = 2155.855 ; gain = 156.1172default:defaulth px? 
n

Phase %s%s
101*constraints2
19 2default:default2 
Reset Design2default:defaultZ18-101h px? 
a
&%s nets already restored were skipped.120*route2
94292default:defaultZ35-307h px? 
A
,Phase 19 Reset Design | Checksum: 1f84ae3ff
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:10 ; elapsed = 00:01:36 . Memory (MB): peak = 2158.844 ; gain = 159.1052default:defaulth px? 
t

Phase %s%s
101*constraints2
20 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Post Routing Timing Summary %s
20*route2L
8| WNS=-1.714 | TNS=-5901.139| WHS=0.052  | THS=0.000  |
2default:defaultZ35-20h px? 
G
2Phase 20 Post Router Timing | Checksum: 1bf88a17a
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:17 ; elapsed = 00:01:39 . Memory (MB): peak = 2158.844 ; gain = 159.1052default:defaulth px? 
?
fThe design did not meet timing requirements. Please run report_timing_summary for detailed reports.%s
39*route2
 2default:defaultZ35-39h px? 
?
?TNS is the sum of the worst slack violation on every endpoint in the design. Review the paths with the biggest WNS violations in the timing reports and modify your constraints or your design to improve both WNS and TNS.
96*routeZ35-253h px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:17 ; elapsed = 00:01:39 . Memory (MB): peak = 2158.844 ; gain = 159.1052default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
12722default:default2
02default:default2
12default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:02:252default:default2
00:01:442default:default2
2158.8442default:default2
162.5902default:defaultZ17-268h px? 
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
00:00:062default:default2
00:00:022default:default2
2164.9612default:default2
6.1172default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?E:/FPGAProject/01102022/FPGAResearch/5_Final_Submission/Vivado_Desgin/SumofTwoNeuron_32bit/sumofTwoNeuron_32bit/sumofTwoNeuron_32bit.runs/impl_1/sumofTwoNeuron_32bit_routed.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:152default:default2
00:00:082default:default2
2164.9612default:default2
6.1172default:defaultZ17-268h px? 
?
%s4*runtcl2?
?Executing : report_drc -file sumofTwoNeuron_32bit_drc_routed.rpt -pb sumofTwoNeuron_32bit_drc_routed.pb -rpx sumofTwoNeuron_32bit_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_drc -file sumofTwoNeuron_32bit_drc_routed.rpt -pb sumofTwoNeuron_32bit_drc_routed.pb -rpx sumofTwoNeuron_32bit_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
586*	vivadotcl2?
?E:/FPGAProject/01102022/FPGAResearch/5_Final_Submission/Vivado_Desgin/SumofTwoNeuron_32bit/sumofTwoNeuron_32bit/sumofTwoNeuron_32bit.runs/impl_1/sumofTwoNeuron_32bit_drc_routed.rpt?E:/FPGAProject/01102022/FPGAResearch/5_Final_Submission/Vivado_Desgin/SumofTwoNeuron_32bit/sumofTwoNeuron_32bit/sumofTwoNeuron_32bit.runs/impl_1/sumofTwoNeuron_32bit_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file sumofTwoNeuron_32bit_methodology_drc_routed.rpt -pb sumofTwoNeuron_32bit_methodology_drc_routed.pb -rpx sumofTwoNeuron_32bit_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file sumofTwoNeuron_32bit_methodology_drc_routed.rpt -pb sumofTwoNeuron_32bit_methodology_drc_routed.pb -rpx sumofTwoNeuron_32bit_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
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
?E:/FPGAProject/01102022/FPGAResearch/5_Final_Submission/Vivado_Desgin/SumofTwoNeuron_32bit/sumofTwoNeuron_32bit/sumofTwoNeuron_32bit.runs/impl_1/sumofTwoNeuron_32bit_methodology_drc_routed.rpt?E:/FPGAProject/01102022/FPGAResearch/5_Final_Submission/Vivado_Desgin/SumofTwoNeuron_32bit/sumofTwoNeuron_32bit/sumofTwoNeuron_32bit.runs/impl_1/sumofTwoNeuron_32bit_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_power -file sumofTwoNeuron_32bit_power_routed.rpt -pb sumofTwoNeuron_32bit_power_summary_routed.pb -rpx sumofTwoNeuron_32bit_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_power -file sumofTwoNeuron_32bit_power_routed.rpt -pb sumofTwoNeuron_32bit_power_summary_routed.pb -rpx sumofTwoNeuron_32bit_power_routed.rpx2default:defaultZ4-113h px? 
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
28*	vivadotcl2
12842default:default2
02default:default2
12default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
%s4*runtcl2?
uExecuting : report_route_status -file sumofTwoNeuron_32bit_route_status.rpt -pb sumofTwoNeuron_32bit_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file sumofTwoNeuron_32bit_timing_summary_routed.rpt -pb sumofTwoNeuron_32bit_timing_summary_routed.pb -rpx sumofTwoNeuron_32bit_timing_summary_routed.rpx -warn_on_violation 
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
%s4*runtcl2q
]Executing : report_incremental_reuse -file sumofTwoNeuron_32bit_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2q
]Executing : report_clock_utilization -file sumofTwoNeuron_32bit_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file sumofTwoNeuron_32bit_bus_skew_routed.rpt -pb sumofTwoNeuron_32bit_bus_skew_routed.pb -rpx sumofTwoNeuron_32bit_bus_skew_routed.rpx
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