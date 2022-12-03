# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator. 
#


namespace eval ::xilinx::dsp::planaheaddriver {
	set Compilation {IP Catalog}
	set CompilationFlow {IP}
	set CreateInterfaceDocument {off}
	set DSPDevice {xc7z020}
	set DSPFamily {zynq}
	set DSPPackage {clg484}
	set DSPSpeed {-1}
	set FPGAClockPeriod 100
	set GenerateTestBench 0
	set HDLLanguage {vhdl}
	set IPOOCCacheRootPath {C:/Users/maruf/AppData/Local/Xilinx/Sysgen/SysgenVivado/win64.o/ip}
	set IP_Auto_Infer {1}
	set IP_Categories_Text {System_Generator_for_DSP}
	set IP_Common_Repos {0}
	set IP_Description {}
	set IP_Dir {}
	set IP_Library_Text {SysGen}
	set IP_LifeCycle_Menu {2}
	set IP_Logo {sysgen_icon_100.png}
	set IP_Name {}
	set IP_Revision {299632362}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {User_Company}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {twoneuronhdl}
	set ProjectFiles {
		{{conv_pkg.vhd} -lib {xil_defaultlib}}
		{{synth_reg.vhd} -lib {xil_defaultlib}}
		{{synth_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{srl17e.vhd} -lib {xil_defaultlib}}
		{{srl33e.vhd} -lib {xil_defaultlib}}
		{{synth_reg_reg.vhd} -lib {xil_defaultlib}}
		{{single_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{xlclockdriver_rd.vhd} -lib {xil_defaultlib}}
		{{vivado_ip.tcl}}
		{{twoneuronhdl_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{twoneuronhdl.vhd} -lib {xil_defaultlib}}
		{{twoneuronhdl_clock.xdc}}
		{{twoneuronhdl.xdc}}
	}
	set SimPeriod 1
	set SimTime 7200
	set SimulationTime {720300.00000000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {E:/FPGAProject/01102022/FPGAResearch/5_Final_Submission/Simulink/TN_16bit/gen}
	set TopLevelModule {twoneuronhdl}
	set TopLevelSimulinkHandle 267
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface gateway_in Name {gateway_in}
	dict set TopLevelPortInterface gateway_in Type Fix_16_11
	dict set TopLevelPortInterface gateway_in ArithmeticType xlSigned
	dict set TopLevelPortInterface gateway_in BinaryPoint 11
	dict set TopLevelPortInterface gateway_in Width 16
	dict set TopLevelPortInterface gateway_in DatFile {twoneuronhdl_subsystem_gateway_in.dat}
	dict set TopLevelPortInterface gateway_in IconText {Gateway In}
	dict set TopLevelPortInterface gateway_in Direction in
	dict set TopLevelPortInterface gateway_in Period 1
	dict set TopLevelPortInterface gateway_in Interface 0
	dict set TopLevelPortInterface gateway_in InterfaceName {}
	dict set TopLevelPortInterface gateway_in InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_in ClockDomain {twoneuronhdl}
	dict set TopLevelPortInterface gateway_in Locs {}
	dict set TopLevelPortInterface gateway_in IOStandard {}
	dict set TopLevelPortInterface gateway_out Name {gateway_out}
	dict set TopLevelPortInterface gateway_out Type Fix_16_13
	dict set TopLevelPortInterface gateway_out ArithmeticType xlSigned
	dict set TopLevelPortInterface gateway_out BinaryPoint 13
	dict set TopLevelPortInterface gateway_out Width 16
	dict set TopLevelPortInterface gateway_out DatFile {twoneuronhdl_subsystem_gateway_out.dat}
	dict set TopLevelPortInterface gateway_out IconText {Gateway Out}
	dict set TopLevelPortInterface gateway_out Direction out
	dict set TopLevelPortInterface gateway_out Period 1
	dict set TopLevelPortInterface gateway_out Interface 0
	dict set TopLevelPortInterface gateway_out InterfaceName {}
	dict set TopLevelPortInterface gateway_out InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_out ClockDomain {twoneuronhdl}
	dict set TopLevelPortInterface gateway_out Locs {}
	dict set TopLevelPortInterface gateway_out IOStandard {}
	dict set TopLevelPortInterface gateway_out1 Name {gateway_out1}
	dict set TopLevelPortInterface gateway_out1 Type Fix_16_13
	dict set TopLevelPortInterface gateway_out1 ArithmeticType xlSigned
	dict set TopLevelPortInterface gateway_out1 BinaryPoint 13
	dict set TopLevelPortInterface gateway_out1 Width 16
	dict set TopLevelPortInterface gateway_out1 DatFile {twoneuronhdl_subsystem_gateway_out1.dat}
	dict set TopLevelPortInterface gateway_out1 IconText {Gateway Out1}
	dict set TopLevelPortInterface gateway_out1 Direction out
	dict set TopLevelPortInterface gateway_out1 Period 1
	dict set TopLevelPortInterface gateway_out1 Interface 0
	dict set TopLevelPortInterface gateway_out1 InterfaceName {}
	dict set TopLevelPortInterface gateway_out1 InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_out1 ClockDomain {twoneuronhdl}
	dict set TopLevelPortInterface gateway_out1 Locs {}
	dict set TopLevelPortInterface gateway_out1 IOStandard {}
	dict set TopLevelPortInterface clk Name {clk}
	dict set TopLevelPortInterface clk Type -
	dict set TopLevelPortInterface clk ArithmeticType xlUnsigned
	dict set TopLevelPortInterface clk BinaryPoint 0
	dict set TopLevelPortInterface clk Width 1
	dict set TopLevelPortInterface clk DatFile {}
	dict set TopLevelPortInterface clk Direction in
	dict set TopLevelPortInterface clk Period 1
	dict set TopLevelPortInterface clk Interface 6
	dict set TopLevelPortInterface clk InterfaceName {}
	dict set TopLevelPortInterface clk InterfaceString {CLOCK}
	dict set TopLevelPortInterface clk ClockDomain {twoneuronhdl}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project