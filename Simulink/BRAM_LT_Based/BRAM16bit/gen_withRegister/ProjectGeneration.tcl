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
	set IP_Revision {300996735}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {User_Company}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {bram_stn_16bit}
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
		{{xpm_f4a64b_vivado.mem}}
		{{xpm_efb81c_vivado.mem}}
		{{bram_stn_16bit_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{bram_stn_16bit.vhd} -lib {xil_defaultlib}}
		{{bram_stn_16bit_clock.xdc}}
		{{bram_stn_16bit.xdc}}
	}
	set SimPeriod 1
	set SimTime 7500
	set SimulationTime {750300.00000000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {E:/FPGAProject/01102022/FPGAResearch/5_Final_Submission/Simulink/BRAM_LT_Based/BRAM16bit/gen_withRegister}
	set TopLevelModule {bram_stn_16bit}
	set TopLevelSimulinkHandle 0.000610352
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface input_t Name {input_t}
	dict set TopLevelPortInterface input_t Type Fix_16_11
	dict set TopLevelPortInterface input_t ArithmeticType xlSigned
	dict set TopLevelPortInterface input_t BinaryPoint 11
	dict set TopLevelPortInterface input_t Width 16
	dict set TopLevelPortInterface input_t DatFile {bram_stn_16bit_subsystem_input_t.dat}
	dict set TopLevelPortInterface input_t IconText {input_t}
	dict set TopLevelPortInterface input_t Direction in
	dict set TopLevelPortInterface input_t Period 1
	dict set TopLevelPortInterface input_t Interface 0
	dict set TopLevelPortInterface input_t InterfaceName {}
	dict set TopLevelPortInterface input_t InterfaceString {DATA}
	dict set TopLevelPortInterface input_t ClockDomain {bram_stn_16bit}
	dict set TopLevelPortInterface input_t Locs {}
	dict set TopLevelPortInterface input_t IOStandard {}
	dict set TopLevelPortInterface out_imag Name {out_imag}
	dict set TopLevelPortInterface out_imag Type Fix_16_11
	dict set TopLevelPortInterface out_imag ArithmeticType xlSigned
	dict set TopLevelPortInterface out_imag BinaryPoint 11
	dict set TopLevelPortInterface out_imag Width 16
	dict set TopLevelPortInterface out_imag DatFile {bram_stn_16bit_subsystem_out_imag.dat}
	dict set TopLevelPortInterface out_imag IconText {out_imag}
	dict set TopLevelPortInterface out_imag Direction out
	dict set TopLevelPortInterface out_imag Period 1
	dict set TopLevelPortInterface out_imag Interface 0
	dict set TopLevelPortInterface out_imag InterfaceName {}
	dict set TopLevelPortInterface out_imag InterfaceString {DATA}
	dict set TopLevelPortInterface out_imag ClockDomain {bram_stn_16bit}
	dict set TopLevelPortInterface out_imag Locs {}
	dict set TopLevelPortInterface out_imag IOStandard {}
	dict set TopLevelPortInterface out_real Name {out_real}
	dict set TopLevelPortInterface out_real Type Fix_16_11
	dict set TopLevelPortInterface out_real ArithmeticType xlSigned
	dict set TopLevelPortInterface out_real BinaryPoint 11
	dict set TopLevelPortInterface out_real Width 16
	dict set TopLevelPortInterface out_real DatFile {bram_stn_16bit_subsystem_out_real.dat}
	dict set TopLevelPortInterface out_real IconText {out_real}
	dict set TopLevelPortInterface out_real Direction out
	dict set TopLevelPortInterface out_real Period 1
	dict set TopLevelPortInterface out_real Interface 0
	dict set TopLevelPortInterface out_real InterfaceName {}
	dict set TopLevelPortInterface out_real InterfaceString {DATA}
	dict set TopLevelPortInterface out_real ClockDomain {bram_stn_16bit}
	dict set TopLevelPortInterface out_real Locs {}
	dict set TopLevelPortInterface out_real IOStandard {}
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
	dict set TopLevelPortInterface clk ClockDomain {bram_stn_16bit}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project