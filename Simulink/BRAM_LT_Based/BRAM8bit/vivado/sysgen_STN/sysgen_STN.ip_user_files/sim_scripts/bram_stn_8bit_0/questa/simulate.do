onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib bram_stn_8bit_0_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {bram_stn_8bit_0.udo}

run -all

quit -force
