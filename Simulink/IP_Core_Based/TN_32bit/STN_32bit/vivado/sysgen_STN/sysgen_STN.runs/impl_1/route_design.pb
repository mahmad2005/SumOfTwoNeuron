
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
-Phase 1 Build RT Design | Checksum: aae8b7a4
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:24 ; elapsed = 00:00:19 . Memory (MB): peak = 2080.152 ; gain = 93.5122default:defaulth px? 
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
,Phase 2.1 Create Timer | Checksum: aae8b7a4
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:24 ; elapsed = 00:00:19 . Memory (MB): peak = 2080.152 ; gain = 93.5122default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
M
8Phase 2.2 Fix Topology Constraints | Checksum: aae8b7a4
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:20 . Memory (MB): peak = 2087.242 ; gain = 100.6022default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.3 Pre Route Cleanup | Checksum: aae8b7a4
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:20 . Memory (MB): peak = 2087.242 ; gain = 100.6022default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 173c42491
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:27 ; elapsed = 00:00:22 . Memory (MB): peak = 2111.742 ; gain = 125.1022default:defaulth px? 
?
Intermediate Timing Summary %s164*route2M
9| WNS=-72.815| TNS=-15244.545| WHS=-0.157 | THS=-8.843 |
2default:defaultZ35-416h px? 
I
4Phase 2 Router Initialization | Checksum: 1801148e4
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:29 ; elapsed = 00:00:23 . Memory (MB): peak = 2205.473 ; gain = 218.8322default:defaulth px? 
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
/Phase 3.1 Global Routing | Checksum: 1801148e4
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:29 ; elapsed = 00:00:23 . Memory (MB): peak = 2205.473 ; gain = 218.8322default:defaulth px? 
C
.Phase 3 Initial Routing | Checksum: 1aa8a27ed
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:34 ; elapsed = 00:00:26 . Memory (MB): peak = 2205.473 ; gain = 218.8322default:defaulth px? 
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
Intermediate Timing Summary %s164*route2M
9| WNS=-79.578| TNS=-16646.927| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 189793c93
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:45 ; elapsed = 00:00:34 . Memory (MB): peak = 2205.473 ; gain = 218.8322default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2M
9| WNS=-79.305| TNS=-16688.480| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 153c7f9bc
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:54 ; elapsed = 00:00:41 . Memory (MB): peak = 2205.473 ; gain = 218.8322default:defaulth px? 
u

Phase %s%s
101*constraints2
4.3 2default:default2&
Global Iteration 22default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2M
9| WNS=-79.770| TNS=-16694.172| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.3 Global Iteration 2 | Checksum: 1bb260f77
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:02 ; elapsed = 00:00:46 . Memory (MB): peak = 2205.473 ; gain = 218.8322default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 1bb260f77
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:02 ; elapsed = 00:00:46 . Memory (MB): peak = 2205.473 ; gain = 218.8322default:defaulth px? 
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
0Phase 5.1.1 Update Timing | Checksum: 1d985eb1d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:02 ; elapsed = 00:00:46 . Memory (MB): peak = 2205.473 ; gain = 218.8322default:defaulth px? 
?
Intermediate Timing Summary %s164*route2M
9| WNS=-79.305| TNS=-16688.480| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 23e4b5e3b
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:03 ; elapsed = 00:00:47 . Memory (MB): peak = 2205.473 ; gain = 218.8322default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 23e4b5e3b
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:03 ; elapsed = 00:00:47 . Memory (MB): peak = 2205.473 ; gain = 218.8322default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 23e4b5e3b
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:03 ; elapsed = 00:00:47 . Memory (MB): peak = 2205.473 ; gain = 218.8322default:defaulth px? 
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
0Phase 6.1.1 Update Timing | Checksum: 18624a075
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:04 ; elapsed = 00:00:47 . Memory (MB): peak = 2205.473 ; gain = 218.8322default:defaulth px? 
?
Intermediate Timing Summary %s164*route2M
9| WNS=-79.216| TNS=-16682.616| WHS=0.144  | THS=0.000  |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 18624a075
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:04 ; elapsed = 00:00:47 . Memory (MB): peak = 2205.473 ; gain = 218.8322default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 18624a075
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:04 ; elapsed = 00:00:47 . Memory (MB): peak = 2205.473 ; gain = 218.8322default:defaulth px? 
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
.Phase 7.1 Update Timing | Checksum: 1e869ee84
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:05 ; elapsed = 00:00:48 . Memory (MB): peak = 2205.473 ; gain = 218.8322default:defaulth px? 
?
Intermediate Timing Summary %s164*route2M
9| WNS=-79.216| TNS=-16682.616| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
G
2Phase 7 Timing Verification | Checksum: 1e869ee84
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:05 ; elapsed = 00:00:48 . Memory (MB): peak = 2205.473 ; gain = 218.8322default:defaulth px? 
o

Phase %s%s
101*constraints2
8 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 8 Route finalize | Checksum: 1e869ee84
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:05 ; elapsed = 00:00:48 . Memory (MB): peak = 2205.473 ; gain = 218.8322default:defaulth px? 
v

Phase %s%s
101*constraints2
9 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 9 Verifying routed nets | Checksum: 1e869ee84
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:05 ; elapsed = 00:00:48 . Memory (MB): peak = 2205.473 ; gain = 218.8322default:defaulth px? 
s

Phase %s%s
101*constraints2
10 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
F
1Phase 10 Depositing Routes | Checksum: 162c38429
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:06 ; elapsed = 00:00:49 . Memory (MB): peak = 2205.473 ; gain = 218.8322default:defaulth px? 
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
00:00:00.0142default:default2
2205.4732default:default2
0.0002default:defaultZ17-268h px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
-78.8972default:defaultZ30-746h px? 
@
+Ending IncrPlace Task | Checksum: 6718aaf2
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:11 ; elapsed = 00:00:09 . Memory (MB): peak = 2205.473 ; gain = 0.0002default:defaulth px? 
J
5Phase 11 Incr Placement Change | Checksum: 162c38429
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:17 ; elapsed = 00:00:58 . Memory (MB): peak = 2205.473 ; gain = 218.8322default:defaulth px? 
q

Phase %s%s
101*constraints2
12 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
D
/Phase 12 Build RT Design | Checksum: 15a548688
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:18 ; elapsed = 00:00:59 . Memory (MB): peak = 2205.473 ; gain = 218.8322default:defaulth px? 
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
B
-Phase 13.1 Create Timer | Checksum: 261a7326
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:18 ; elapsed = 00:00:59 . Memory (MB): peak = 2205.473 ; gain = 218.8322default:defaulth px? 
|

Phase %s%s
101*constraints2
13.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
N
9Phase 13.2 Fix Topology Constraints | Checksum: 261a7326
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:18 ; elapsed = 00:00:59 . Memory (MB): peak = 2205.473 ; gain = 218.8322default:defaulth px? 
u

Phase %s%s
101*constraints2
13.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
H
3Phase 13.3 Pre Route Cleanup | Checksum: 14eebaf75
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:18 ; elapsed = 00:00:59 . Memory (MB): peak = 2205.473 ; gain = 218.8322default:defaulth px? 
q

Phase %s%s
101*constraints2
13.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 13.4 Update Timing | Checksum: 1d840d9ea
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:23 ; elapsed = 00:01:02 . Memory (MB): peak = 2205.473 ; gain = 218.8322default:defaulth px? 
?
Intermediate Timing Summary %s164*route2M
9| WNS=-78.869| TNS=-16546.064| WHS=-0.157 | THS=-8.698 |
2default:defaultZ35-416h px? 
J
5Phase 13 Router Initialization | Checksum: 18fd2c4f8
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:25 ; elapsed = 00:01:04 . Memory (MB): peak = 2230.871 ; gain = 244.2302default:defaulth px? 
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
E
0Phase 14.1 Global Routing | Checksum: 18fd2c4f8
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:25 ; elapsed = 00:01:04 . Memory (MB): peak = 2230.871 ; gain = 244.2302default:defaulth px? 
D
/Phase 14 Initial Routing | Checksum: 15bdde51e
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:25 ; elapsed = 00:01:04 . Memory (MB): peak = 2230.871 ; gain = 244.2302default:defaulth px? 
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
Intermediate Timing Summary %s164*route2M
9| WNS=-79.177| TNS=-16672.746| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
I
4Phase 15.1 Global Iteration 0 | Checksum: 1ef502cc2
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:31 ; elapsed = 00:01:09 . Memory (MB): peak = 2230.871 ; gain = 244.2302default:defaulth px? 
v

Phase %s%s
101*constraints2
15.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2M
9| WNS=-79.396| TNS=-16659.169| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
I
4Phase 15.2 Global Iteration 1 | Checksum: 1921e1f19
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:37 ; elapsed = 00:01:14 . Memory (MB): peak = 2230.871 ; gain = 244.2302default:defaulth px? 
G
2Phase 15 Rip-up And Reroute | Checksum: 1921e1f19
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:37 ; elapsed = 00:01:14 . Memory (MB): peak = 2230.871 ; gain = 244.2302default:defaulth px? 
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
1Phase 16.1.1 Update Timing | Checksum: 17290b542
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:37 ; elapsed = 00:01:14 . Memory (MB): peak = 2230.871 ; gain = 244.2302default:defaulth px? 
?
Intermediate Timing Summary %s164*route2M
9| WNS=-79.177| TNS=-16672.746| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
D
/Phase 16.1 Delay CleanUp | Checksum: 16d1c9162
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:38 ; elapsed = 00:01:15 . Memory (MB): peak = 2230.871 ; gain = 244.2302default:defaulth px? 
{

Phase %s%s
101*constraints2
16.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
N
9Phase 16.2 Clock Skew Optimization | Checksum: 16d1c9162
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:38 ; elapsed = 00:01:15 . Memory (MB): peak = 2230.871 ; gain = 244.2302default:defaulth px? 
P
;Phase 16 Delay and Skew Optimization | Checksum: 16d1c9162
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:38 ; elapsed = 00:01:15 . Memory (MB): peak = 2230.871 ; gain = 244.2302default:defaulth px? 
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
1Phase 17.1.1 Update Timing | Checksum: 17d016570
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:39 ; elapsed = 00:01:15 . Memory (MB): peak = 2230.871 ; gain = 244.2302default:defaulth px? 
?
Intermediate Timing Summary %s164*route2M
9| WNS=-79.163| TNS=-16670.067| WHS=0.144  | THS=0.000  |
2default:defaultZ35-416h px? 
D
/Phase 17.1 Hold Fix Iter | Checksum: 17d016570
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:39 ; elapsed = 00:01:15 . Memory (MB): peak = 2230.871 ; gain = 244.2302default:defaulth px? 
B
-Phase 17 Post Hold Fix | Checksum: 17d016570
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:39 ; elapsed = 00:01:15 . Memory (MB): peak = 2230.871 ; gain = 244.2302default:defaulth px? 
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
/Phase 18.1 Update Timing | Checksum: 18b82bf8e
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:40 ; elapsed = 00:01:16 . Memory (MB): peak = 2230.871 ; gain = 244.2302default:defaulth px? 
?
Intermediate Timing Summary %s164*route2M
9| WNS=-79.163| TNS=-16670.067| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 18 Timing Verification | Checksum: 18b82bf8e
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:40 ; elapsed = 00:01:16 . Memory (MB): peak = 2230.871 ; gain = 244.2302default:defaulth px? 
p

Phase %s%s
101*constraints2
19 2default:default2"
Route finalize2default:defaultZ18-101h px? 
C
.Phase 19 Route finalize | Checksum: 18b82bf8e
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:41 ; elapsed = 00:01:16 . Memory (MB): peak = 2230.871 ; gain = 244.2302default:defaulth px? 
w

Phase %s%s
101*constraints2
20 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
J
5Phase 20 Verifying routed nets | Checksum: 18b82bf8e
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:41 ; elapsed = 00:01:16 . Memory (MB): peak = 2230.871 ; gain = 244.2302default:defaulth px? 
s

Phase %s%s
101*constraints2
21 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
F
1Phase 21 Depositing Routes | Checksum: 1f75177a6
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:41 ; elapsed = 00:01:17 . Memory (MB): peak = 2230.871 ; gain = 244.2302default:defaulth px? 
t

Phase %s%s
101*constraints2
22 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Post Routing Timing Summary %s
20*route2M
9| WNS=-79.163| TNS=-16669.922| WHS=0.146  | THS=0.000  |
2default:defaultZ35-20h px? 
G
2Phase 22 Post Router Timing | Checksum: 1fff6bbf9
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:45 ; elapsed = 00:01:19 . Memory (MB): peak = 2230.871 ; gain = 244.2302default:defaulth px? 
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
]Time (s): cpu = 00:01:45 ; elapsed = 00:01:19 . Memory (MB): peak = 2230.871 ; gain = 244.2302default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
11112default:default2
12default:default2
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
00:01:492default:default2
00:01:212default:default2
2230.8712default:default2
244.8872default:defaultZ17-268h px? 
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
00:00:032default:default2
00:00:012default:default2
2230.8712default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?E:/FPGAProject/01102022/FPGAResearch/5_Final_Submission/Simulink/IP_Core_Based/TN_32bit/STN_32bit/vivado/sysgen_STN/sysgen_STN.runs/impl_1/sysgen_STN_routed.dcp2default:defaultZ17-1381h px? 
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
?E:/FPGAProject/01102022/FPGAResearch/5_Final_Submission/Simulink/IP_Core_Based/TN_32bit/STN_32bit/vivado/sysgen_STN/sysgen_STN.runs/impl_1/sysgen_STN_drc_routed.rpt?E:/FPGAProject/01102022/FPGAResearch/5_Final_Submission/Simulink/IP_Core_Based/TN_32bit/STN_32bit/vivado/sysgen_STN/sysgen_STN.runs/impl_1/sysgen_STN_drc_routed.rpt2default:default8Z2-168h px? 
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
?E:/FPGAProject/01102022/FPGAResearch/5_Final_Submission/Simulink/IP_Core_Based/TN_32bit/STN_32bit/vivado/sysgen_STN/sysgen_STN.runs/impl_1/sysgen_STN_methodology_drc_routed.rpt?E:/FPGAProject/01102022/FPGAResearch/5_Final_Submission/Simulink/IP_Core_Based/TN_32bit/STN_32bit/vivado/sysgen_STN/sysgen_STN.runs/impl_1/sysgen_STN_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
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
28*	vivadotcl2
11232default:default2
12default:default2
12default:default2
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