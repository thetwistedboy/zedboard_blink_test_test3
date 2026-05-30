onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib zb_blinky_block3_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {zb_blinky_block3.udo}

run 1000ns

quit -force
