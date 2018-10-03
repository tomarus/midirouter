# use this to view
# open /Applications/gtkwave.app trace.vcd
# gtkwave trace.vcd trace.sav

all:
	@#verilator -Wno-lint --cc --trace top.v --exe top.cpp -I. -I../midirouter.srcs/sources_1/new
	verilator --cc --trace top.v --exe top.cpp -I. -I../midirouter.srcs/sources_1/new
	make -j -C obj_dir -f Vtop.mk Vtop
	obj_dir/Vtop

clean:
	rm -rf obj_dir trace.vcd
