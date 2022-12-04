onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xpm -L xbip_utils_v3_0_10 -L c_reg_fd_v12_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_pipe_v3_0_6 -L xbip_dsp48_addsub_v3_0_6 -L xbip_addsub_v3_0_6 -L c_addsub_v12_0_14 -L xil_defaultlib -L axi_utils_v2_0_6 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_17 -L floating_point_v7_0_19 -L xbip_dsp48_mult_v3_0_6 -L xbip_dsp48_multadd_v3_0_6 -L div_gen_v5_1_18 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.bram_stn_16bit_0 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {bram_stn_16bit_0.udo}

run -all

quit -force
