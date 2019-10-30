iCEBreaker development on Windows
======

*1. Get the toolchain* (icestudio, nextpnr-ice40, yosys, make, iceprog) 

The Fomu project (https://fomu.im/) has a ready-to-use download to be used on Windows. Get it at https://github.com/im-tomu/fomu-toolchain, extract it and add the bin directory to your PATH (details are explained there).

*2. Install USB driver* 

iceprog uses libusb. In order to get it working, you need to enable the correct driver:

* Download and run the Zadig tool from https://zadig.akeo.ie/
* Connect the iCEBreaker board to your computer with a USB cable
* Select Options->List all devices in Zadig
* Select "iCEBreaker Vx.x (interface 0)" from the drop down
* Select "libusbK" driver
* Press "Replace driver"
* Close Zadig

You are now ready to use your iCEBreaker board. You can skip the WTFpga section on setup, the only thing you need is cloning the WTFpga git repository.

