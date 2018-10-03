
#include "Vtop.h"
#include "verilated.h"
#include "verilated_vcd_c.h"
// #include "Vtop__Dpi.h"
#include "svdpi.h"

#include <iostream>
using namespace std;

int main(int argc, char **argv, char **env) {
    int i;
    int clk;
    Verilated::commandArgs(argc, argv);
    // init top verilog instance
    Vtop *top = new Vtop;
	Verilated::scopesDump();
	svScope x = svSetScope(svGetScopeFromName("TOP.top"));
	cout << x << endl;

	// cout << svGetScope() << endl;

    // init trace dump
    Verilated::traceEverOn(true);
    VerilatedVcdC *tfp = new VerilatedVcdC;
    top->trace(tfp, 99);
    tfp->open("trace.vcd");

    // initialize simulation inputs
    top->clk = 1;
    top->rst = 1;

    // run simulation for X clock periods
    for (i = 0; i < 100000; i++) {
        top->rst = (i < 2);
        tfp->dump(i);
        top->clk = !top->clk;
        top->eval();
        if (Verilated::gotFinish()) {
            break;
        }

        if (i%2==1) {
            clearbyte(0);
        }

        switch(i) {
            case 12:
                sendbyte(0, 0xf8);
                break;
            case 16:
                sendbyte(0, 0x90);
                break;
            case 20:
                sendbyte(0, 0x55);
                break;
            case 24:
                sendbyte(0, 0xaa);
                break;
        }
		if (i==52) {
			// top->txdata[0] = 0xf8;
			// top->txdv[0] = 1;
			sendbyte(1, 0xf8);
		}
    }
    tfp->close();
    exit(0);
}