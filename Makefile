clean:
	rm ./vsim.wlf -f
	rm ./vsim.dbg -f
	rm ./modelsim.ini -f
	rm ./coverage.ucdb -f
	rm ./coverage.txt -f
	rm ./work/ -rf
	rm ./transcript -f

cpu_tb: clean
	vlib work
	vmap work work
	vlog -sv ./riscv/cpu_tb.sv ./riscv/cpu.sv
	vsim -c work.cpu_tb -do "run -all; quit -f;"


