# 02: Coverage

Now it is time to add coverage collection to our randomized test.

In order to do this, just add another Makefile target:

```makefile
cpu_tb_v01_cov: clean
	vlib work
	vmap work work
	vlog +cover -sv ./riscv_v01/cpu_tb.sv ./riscv_v01/cpu.sv ./riscv_v01/imem.sv
	vsim -c -coverage work.cpu_tb -do "coverage save -onexit coverage.ucdb; run -all; quit -f;"
	vcover report coverage.ucdb
```

Try with random seeds to see who of the class can get the most coverage. This is done by adding `-sv_seed random` to the `vlog` command.

Also, give it more time in the `cpu_tb.sv` until you reach 'enough' coverage. 
