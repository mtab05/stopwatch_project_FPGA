onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib refreshrate_opt

do {wave.do}

view wave
view structure
view signals

do {refreshrate.udo}

run -all

quit -force
