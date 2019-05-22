onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib rate10thousandth_opt

do {wave.do}

view wave
view structure
view signals

do {rate10thousandth.udo}

run -all

quit -force
