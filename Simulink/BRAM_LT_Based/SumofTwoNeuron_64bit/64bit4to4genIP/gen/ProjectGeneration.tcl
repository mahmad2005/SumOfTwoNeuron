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
	set FPGAClockPeriod 10
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
	set IP_Revision {302153965}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {User_Company}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {fourto4genip}
	set ProjectFiles {
		{{conv_pkg.vhd} -lib {xil_defaultlib}}
		{{synth_reg.vhd} -lib {xil_defaultlib}}
		{{synth_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{srl17e.vhd} -lib {xil_defaultlib}}
		{{srl33e.vhd} -lib {xil_defaultlib}}
		{{synth_reg_reg.vhd} -lib {xil_defaultlib}}
		{{single_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{xlclockdriver_rd.vhd} -lib {xil_defaultlib}}
		{{xpm_d4b9e8_vivado.mem}}
		{{fourto4genip_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{fourto4genip.vhd} -lib {xil_defaultlib}}
		{{fourto4genip_clock.xdc}}
		{{fourto4genip.xdc}}
	}
	set SimPeriod 1
	set SimTime 800
	set SimulationTime {8210.00000000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {E:/FPGAProject/01102022/FPGAResearch/5_Final_Submission/Simulink/BRAM_LT_Based/SumofTwoNeuron_64bit/64bit4to4genIP/gen}
	set TopLevelModule {fourto4genip}
	set TopLevelSimulinkHandle 0.000366211
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface gateway_in Name {gateway_in}
	dict set TopLevelPortInterface gateway_in Type UFix_10_0
	dict set TopLevelPortInterface gateway_in ArithmeticType xlUnsigned
	dict set TopLevelPortInterface gateway_in BinaryPoint 0
	dict set TopLevelPortInterface gateway_in Width 10
	dict set TopLevelPortInterface gateway_in DatFile {fourto4genip_gateway_in.dat}
	dict set TopLevelPortInterface gateway_in IconText {Gateway In}
	dict set TopLevelPortInterface gateway_in Direction in
	dict set TopLevelPortInterface gateway_in Period 1
	dict set TopLevelPortInterface gateway_in Interface 0
	dict set TopLevelPortInterface gateway_in InterfaceName {}
	dict set TopLevelPortInterface gateway_in InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_in ClockDomain {fourto4genip}
	dict set TopLevelPortInterface gateway_in Locs {}
	dict set TopLevelPortInterface gateway_in IOStandard {}
	dict set TopLevelPortInterface gateway_out Name {gateway_out}
	dict set TopLevelPortInterface gateway_out Type Fix_64_59
	dict set TopLevelPortInterface gateway_out ArithmeticType xlSigned
	dict set TopLevelPortInterface gateway_out BinaryPoint 59
	dict set TopLevelPortInterface gateway_out Width 64
	dict set TopLevelPortInterface gateway_out DatFile {fourto4genip_gateway_out.dat}
	dict set TopLevelPortInterface gateway_out IconText {Gateway Out}
	dict set TopLevelPortInterface gateway_out Direction out
	dict set TopLevelPortInterface gateway_out Period 1
	dict set TopLevelPortInterface gateway_out Interface 0
	dict set TopLevelPortInterface gateway_out InterfaceName {}
	dict set TopLevelPortInterface gateway_out InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_out ClockDomain {fourto4genip}
	dict set TopLevelPortInterface gateway_out Locs {}
	dict set TopLevelPortInterface gateway_out IOStandard {}
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
	dict set TopLevelPortInterface clk ClockDomain {fourto4genip}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project