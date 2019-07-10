.PHONY: help spice install

.DEFAULT: help
help:
	@echo "make spice"
	@echo "       Simulate circuit. Must be run from root of repo, requires ngspice. Exit by typing 'exit'"

spice:
	ngspice circuit_simulation/light.sp
