Production CSC DDU firmware used for all 2012-2013 operations at CMS, developed with the Workview program (see also ViewLogic and Mentor Graphics).  This repo includes all the Workview schematic, symbol & project files, the generated EDIF files and Xilinx ISE project files (.ise, .bit, .ipf/.cdf, .mcs and .svf).   Compiling was done initially with ISE 5.2 and later 9.2.  There are three separate FPGA types on the DDUs, so there are three different firmware projects (all have a "5" that corresponds to the final DDU PCB production board version).

DDU5in is for the DDU Input FPGAs (Xilinx XC2VP20-FG676-7C).  Version 25 rev 6 has been used since April 2009.  ISE files are located in DDU5in/In5Ctrl.

DDU5ctrl is for the DDU Control FPGA (Xilinx XC2VP7-FF672-6C).  Version 48 rev 1 was used from June 2009 until the end of 2011.  Version 54 rev 2 was used from March 2012 through 2013.  The DCC firmware version must be selected to match this DDU version for proper operation in a FED crate.  Unfortunately, the PDF file included here for the DDUctrl schematic prints come from the older firmware used for 2009-2011 operations.  ISE files are located in DDU5ctrl/DDU5ctrl.

DDU5vme is for the DDU VME FPGA (Xilinx XC2V500-FG456-5C). Version 20 rev 4 has been used since April 2009.  The ISE files are not available for this project.

