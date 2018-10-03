
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
				// first test byte
                sendbyte(0, 0xf8, 0);
                break;
            case 16:
				// send note off sequence sourceport 0 destport 0
                sendbyte(0, 0x90, 0);
                break;
            case 18:
				// send note on sequence sourceport 1 destport 0
				// this should be merged after note off sequence
                sendbyte(0, 0x80, 1);
                break;
            case 20:
                sendbyte(0, 0x55, 0);
                break;
            case 22:
                sendbyte(0, 0x44, 1);
                break;
            case 24:
                sendbyte(0, 0xaa, 0);
                break;
            case 26:
                sendbyte(0, 0xcc, 1);
                break;
			case 125:
				// should be merged with priority
				sendbyte(1, 0xf8, 0);
				break;
		}
    }
    tfp->close();
    exit(0);
}