
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
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
place_design2default:defaultZ4-22h px? 
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
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0112default:default2
1823.5902default:default2
0.0002default:defaultZ17-268h px? 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: bfdda086
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.034 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0112default:default2
1823.5902default:default2
0.0002default:defaultZ17-268h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: addcfa4f
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 15f88287c
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 15f88287c
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
I
4Phase 1 Placer Initialization | Checksum: 15f88287c
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px? 
C
.Phase 2.1 Floorplanning | Checksum: 1568af2e9
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:04 ; elapsed = 00:00:02 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
2.2 2default:default25
!Update Timing before SLR Path Opt2default:defaultZ18-101h px? 
W
BPhase 2.2 Update Timing before SLR Path Opt | Checksum: 191a63e2a
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:04 ; elapsed = 00:00:03 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
2.3 2default:default24
 Post-Processing in Floorplanning2default:defaultZ18-101h px? 
V
APhase 2.3 Post-Processing in Floorplanning | Checksum: 15400f9d2
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:04 ; elapsed = 00:00:03 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
x

Phase %s%s
101*constraints2
2.4 2default:default2)
Global Placement Core2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
2.4.1 2default:default20
Physical Synthesis In Placer2default:defaultZ18-101h px? 
?
YBreak lutnm for timing: one critical %s, two critical %s, total %s, new lutff created %s
561*physynth2
02default:default2
02default:default2
02default:default2
02default:defaultZ32-1044h px? 
?
^End %s Pass. Optimized %s %s. Breaked %s %s, combined %s existing %s and moved %s existing %s
576*physynth2
12default:default2
02default:default2

net or LUT2default:default2
02default:default2
LUT2default:default2
02default:default2
LUT2default:default2
02default:default2
LUT2default:defaultZ32-1138h px? 
K
)No high fanout nets found in the design.
65*physynthZ32-65h px? 
?
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
;Identified %s candidate %s for critical-cell optimization.
46*physynth2
222default:default2
nets2default:defaultZ32-46h px? 
?
-Processed net %s. Net driver %s was replaced
317*physynth2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[0]?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[0]2default:default2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[0].bit_is_0.fdre_comp	?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[0].bit_is_0.fdre_comp2default:default8Z32-601h px? 
?
-Processed net %s. Net driver %s was replaced
317*physynth2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[1]?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[1]2default:default2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[1].bit_is_0.fdre_comp	?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[1].bit_is_0.fdre_comp2default:default8Z32-601h px? 
?
-Processed net %s. Net driver %s was replaced
317*physynth2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[3]?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[3]2default:default2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[3].bit_is_0.fdre_comp	?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[3].bit_is_0.fdre_comp2default:default8Z32-601h px? 
?
-Processed net %s. Net driver %s was replaced
317*physynth2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[2]?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[2]2default:default2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[2].bit_is_0.fdre_comp	?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[2].bit_is_0.fdre_comp2default:default8Z32-601h px? 
?
-Processed net %s. Net driver %s was replaced
317*physynth2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[9]?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[9]2default:default2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[9].bit_is_0.fdre_comp	?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[9].bit_is_0.fdre_comp2default:default8Z32-601h px? 
?
-Processed net %s. Net driver %s was replaced
317*physynth2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[1]?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[1]2default:default2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[1].bit_is_0.fdre_comp	?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[1].bit_is_0.fdre_comp2default:default8Z32-601h px? 
?
-Processed net %s. Net driver %s was replaced
317*physynth2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[8]?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[8]2default:default2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[8].bit_is_0.fdre_comp	?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[8].bit_is_0.fdre_comp2default:default8Z32-601h px? 
?
-Processed net %s. Net driver %s was replaced
317*physynth2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[4]?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[4]2default:default2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[4].bit_is_0.fdre_comp	?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[4].bit_is_0.fdre_comp2default:default8Z32-601h px? 
?
-Processed net %s. Net driver %s was replaced
317*physynth2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[10]?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[10]2default:default2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[10].bit_is_0.fdre_comp	?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[10].bit_is_0.fdre_comp2default:default8Z32-601h px? 
?
-Processed net %s. Net driver %s was replaced
317*physynth2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[6]?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[6]2default:default2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[6].bit_is_0.fdre_comp	?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[6].bit_is_0.fdre_comp2default:default8Z32-601h px? 
?
-Processed net %s. Net driver %s was replaced
317*physynth2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[7]?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[7]2default:default2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[7].bit_is_0.fdre_comp	?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[7].bit_is_0.fdre_comp2default:default8Z32-601h px? 
?
-Processed net %s. Net driver %s was replaced
317*physynth2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[7]?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[7]2default:default2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[7].bit_is_0.fdre_comp	?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[7].bit_is_0.fdre_comp2default:default8Z32-601h px? 
?
-Processed net %s. Net driver %s was replaced
317*physynth2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[2]?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[2]2default:default2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[2].bit_is_0.fdre_comp	?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[2].bit_is_0.fdre_comp2default:default8Z32-601h px? 
?
-Processed net %s. Net driver %s was replaced
317*physynth2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[8]?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[8]2default:default2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[8].bit_is_0.fdre_comp	?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[8].bit_is_0.fdre_comp2default:default8Z32-601h px? 
?
-Processed net %s. Net driver %s was replaced
317*physynth2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[4]?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[4]2default:default2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[4].bit_is_0.fdre_comp	?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[4].bit_is_0.fdre_comp2default:default8Z32-601h px? 
?
-Processed net %s. Net driver %s was replaced
317*physynth2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[6]?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[6]2default:default2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[6].bit_is_0.fdre_comp	?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[6].bit_is_0.fdre_comp2default:default8Z32-601h px? 
?
-Processed net %s. Net driver %s was replaced
317*physynth2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[10]?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[10]2default:default2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[10].bit_is_0.fdre_comp	?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[10].bit_is_0.fdre_comp2default:default8Z32-601h px? 
?
-Processed net %s. Net driver %s was replaced
317*physynth2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[3]?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[3]2default:default2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[3].bit_is_0.fdre_comp	?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[3].bit_is_0.fdre_comp2default:default8Z32-601h px? 
?
-Processed net %s. Net driver %s was replaced
317*physynth2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[5]?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[5]2default:default2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[5].bit_is_0.fdre_comp	?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[5].bit_is_0.fdre_comp2default:default8Z32-601h px? 
?
-Processed net %s. Net driver %s was replaced
317*physynth2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[0]?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[0]2default:default2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[0].bit_is_0.fdre_comp	?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[0].bit_is_0.fdre_comp2default:default8Z32-601h px? 
?
-Processed net %s. Net driver %s was replaced
317*physynth2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[9]?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/o[9]2default:default2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[9].bit_is_0.fdre_comp	?your_instance_name/U0/bram_stn_16bit_struct/subsystem/subsystem1/bram_cordic/register3/synth_reg_inst/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[9].bit_is_0.fdre_comp2default:default8Z32-601h px? 
?
$Optimized %s %s. Created %s new %s.
216*physynth2
212default:default2
nets2default:default2
02default:default2
instance2default:defaultZ32-232h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
212default:default2!
nets or cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0092default:default2
1823.5902default:default2
0.0002default:defaultZ17-268h px? 
?
CPass %s. Identified %s candidate %s for DSP register optimization.
275*physynth2
12default:default2
42default:default2
cells2default:defaultZ32-457h px? 
?
Processed cell %s. No change.340*physynth2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/mult1/comp0.core_instance0/U0/i_mult/gDSP.gDSP_only.iDSP/inferred_dsp.use_p_reg.p_reg_reg	?your_instance_name/U0/bram_stn_16bit_struct/subsystem/mult1/comp0.core_instance0/U0/i_mult/gDSP.gDSP_only.iDSP/inferred_dsp.use_p_reg.p_reg_reg2default:default8Z32-666h px? 
?
Processed cell %s. No change.340*physynth2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/mult/comp0.core_instance0/U0/i_mult/gDSP.gDSP_only.iDSP/inferred_dsp.use_p_reg.p_reg_reg	?your_instance_name/U0/bram_stn_16bit_struct/subsystem/mult/comp0.core_instance0/U0/i_mult/gDSP.gDSP_only.iDSP/inferred_dsp.use_p_reg.p_reg_reg2default:default8Z32-666h px? 
?
Processed cell %s. No change.340*physynth2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/mult4/comp0.core_instance0/U0/i_mult/gDSP.gDSP_only.iDSP/inferred_dsp.use_p_reg.p_reg_reg	?your_instance_name/U0/bram_stn_16bit_struct/subsystem/mult4/comp0.core_instance0/U0/i_mult/gDSP.gDSP_only.iDSP/inferred_dsp.use_p_reg.p_reg_reg2default:default8Z32-666h px? 
?
Processed cell %s. No change.340*physynth2?
?your_instance_name/U0/bram_stn_16bit_struct/subsystem/mult5/comp0.core_instance0/U0/i_mult/gDSP.gDSP_only.iDSP/inferred_dsp.use_p_reg.p_reg_reg	?your_instance_name/U0/bram_stn_16bit_struct/subsystem/mult5/comp0.core_instance0/U0/i_mult/gDSP.gDSP_only.iDSP/inferred_dsp.use_p_reg.p_reg_reg2default:default8Z32-666h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0132default:default2
1823.5902default:default2
0.0002default:defaultZ17-268h px? 
i
DNo candidate cells found for Shift Register to Pipeline optimization564*physynthZ32-1123h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
h
DNo candidate cells for SRL register optimization found in the design349*physynthZ32-677h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
i
ENo candidate cells for BRAM register optimization found in the design297*physynthZ32-526h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
j
FNo candidate cells for URAM register optimization found in the design
437*physynthZ32-846h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
o
KNo candidate nets found for dynamic/static region interface net replication521*physynthZ32-949h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0102default:default2
1823.5902default:default2
0.0002default:defaultZ17-268h px? 
B
-
Summary of Physical Synthesis Optimizations
*commonh px? 
B
-============================================
*commonh px? 


*commonh px? 


*commonh px? 
?
?-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Optimization                                     |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  LUT Combining                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Retime                                           |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Very High Fanout                                 |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Critical Cell                                    |            0  |              0  |                    21  |           0  |           1  |  00:00:00  |
|  DSP Register                                     |            0  |              0  |                     0  |           0  |           1  |  00:00:01  |
|  Shift Register to Pipeline                       |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register                                   |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  BRAM Register                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  URAM Register                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Dynamic/Static Region Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                                            |            0  |              0  |                    21  |           0  |          10  |  00:00:01  |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
S
>Phase 2.4.1 Physical Synthesis In Placer | Checksum: 95c1c668
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:18 ; elapsed = 00:00:11 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
J
5Phase 2.4 Global Placement Core | Checksum: 8f777c74
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:19 ; elapsed = 00:00:11 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
C
.Phase 2 Global Placement | Checksum: 8f777c74
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:19 ; elapsed = 00:00:11 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px? 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px? 
O
:Phase 3.1 Commit Multi Column Macros | Checksum: 9ce417e5
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:19 ; elapsed = 00:00:12 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 13b5a335e
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:20 ; elapsed = 00:00:12 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 10834e873
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:20 ; elapsed = 00:00:12 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
S
>Phase 3.4 Pipeline Register Optimization | Checksum: bd3fff43
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:20 ; elapsed = 00:00:13 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
t

Phase %s%s
101*constraints2
3.5 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
F
1Phase 3.5 Fast Optimization | Checksum: 433e8e2f
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:21 ; elapsed = 00:00:13 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 


Phase %s%s
101*constraints2
3.6 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
Q
<Phase 3.6 Small Shape Detail Placement | Checksum: 895ce7a6
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:22 ; elapsed = 00:00:14 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
u

Phase %s%s
101*constraints2
3.7 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
G
2Phase 3.7 Re-assign LUT pins | Checksum: 895ce7a6
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:22 ; elapsed = 00:00:14 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
3.8 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.8 Pipeline Register Optimization | Checksum: 1861a00be
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:22 ; elapsed = 00:00:15 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
t

Phase %s%s
101*constraints2
3.9 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
G
2Phase 3.9 Fast Optimization | Checksum: 158940a6b
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:26 ; elapsed = 00:00:18 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 158940a6b
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:26 ; elapsed = 00:00:18 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px? 
U
@Post Placement Optimization Initialization | Checksum: fd05026c
*commonh px? 
u

Phase %s%s
101*constraints2
4.1.1.1 2default:default2"
BUFG Insertion2default:defaultZ18-101h px? 
a

Starting %s Task
103*constraints2&
Physical Synthesis2default:defaultZ18-103h px? 
?

Phase %s%s
101*constraints2
1 2default:default25
!Physical Synthesis Initialization2default:defaultZ18-101h px? 
?
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
22default:defaultZ32-721h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-1.3192default:default2
-352.9532default:defaultZ32-619h px? 
T
?Phase 1 Physical Synthesis Initialization | Checksum: f08fefb2
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.182 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
?
?BUFG insertion identified %s candidate nets. Inserted BUFG: %s, Replicated BUFG Driver: %s, Skipped due to Placement/Routing Conflicts: %s, Skipped due to Timing Degradation: %s, Skipped due to Illegal Netlist: %s.43*	placeflow2
02default:default2
02default:default2
02default:default2
02default:default2
02default:default2
02default:defaultZ46-56h px? 
I
4Ending Physical Synthesis Task | Checksum: d3701b53
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.199 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
G
2Phase 4.1.1.1 BUFG Insertion | Checksum: fd05026c
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:29 ; elapsed = 00:00:20 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
4.1.1.2 2default:default26
"Post Placement Timing Optimization2default:defaultZ18-101h px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
-1.1842default:defaultZ30-746h px? 
\
GPhase 4.1.1.2 Post Placement Timing Optimization | Checksum: 17354a1c8
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:44 ; elapsed = 00:00:37 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:44 ; elapsed = 00:00:37 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
N
9Phase 4.1 Post Commit Optimization | Checksum: 17354a1c8
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:44 ; elapsed = 00:00:37 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 17354a1c8
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:45 ; elapsed = 00:00:37 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 


Phase %s%s
101*constraints2
4.3.1 2default:default2.
Print Estimated Congestion2default:defaultZ18-101h px? 
?
'Post-Placement Estimated Congestion %s
38*	placeflow2?
?
 ____________________________________________________
|           | Global Congestion | Short Congestion  |
| Direction | Region Size       | Region Size       |
|___________|___________________|___________________|
|      North|                1x1|                2x2|
|___________|___________________|___________________|
|      South|                1x1|                1x1|
|___________|___________________|___________________|
|       East|                1x1|                1x1|
|___________|___________________|___________________|
|       West|                1x1|                1x1|
|___________|___________________|___________________|
2default:defaultZ30-612h px? 
R
=Phase 4.3.1 Print Estimated Congestion | Checksum: 17354a1c8
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:45 ; elapsed = 00:00:37 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
F
1Phase 4.3 Placer Reporting | Checksum: 17354a1c8
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:45 ; elapsed = 00:00:37 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0112default:default2
1823.5902default:default2
0.0002default:defaultZ17-268h px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:45 ; elapsed = 00:00:37 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 20b4d0994
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:45 ; elapsed = 00:00:37 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
>
)Ending Placer Task | Checksum: 14e8b072e
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:45 ; elapsed = 00:00:37 . Memory (MB): peak = 1823.590 ; gain = 0.0002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
992default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
place_design: 2default:default2
00:00:472default:default2
00:00:382default:default2
1823.5902default:default2
4.0392default:defaultZ17-268h px? 
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
00:00:00.4472default:default2
1823.5902default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?E:/FPGAProject/01102022/FPGAResearch/5_Final_Submission/Simulink/BRAM_LT_Based/BRAM16bit/vivado/sysgen_STN/sysgen_STN.runs/impl_1/sysgen_STN_placed.dcp2default:defaultZ17-1381h px? 
e
%s4*runtcl2I
5Executing : report_io -file sysgen_STN_io_placed.rpt
2default:defaulth px? 
?
kreport_io: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.127 . Memory (MB): peak = 1823.590 ; gain = 0.000
*commonh px? 
?
%s4*runtcl2?
lExecuting : report_utilization -file sysgen_STN_utilization_placed.rpt -pb sysgen_STN_utilization_placed.pb
2default:defaulth px? 
?
%s4*runtcl2f
RExecuting : report_control_sets -verbose -file sysgen_STN_control_sets_placed.rpt
2default:defaulth px? 
?
ureport_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.019 . Memory (MB): peak = 1823.590 ; gain = 0.000
*commonh px? 


End Record