onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib pr_region_2_opt

do {wave.do}

view wave
view structure
view signals

do {pr_region_2.udo}

run -all

quit -force
