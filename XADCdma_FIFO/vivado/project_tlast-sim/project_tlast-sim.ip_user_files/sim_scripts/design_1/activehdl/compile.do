vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ipshared/7498/hdl/tlast_generator_v1_0.v" \
"../../../bd/design_1/ip/design_1_tlast_generator_0_0/sim/design_1_tlast_generator_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

