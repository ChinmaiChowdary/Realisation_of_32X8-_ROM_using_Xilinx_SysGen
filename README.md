# Realisation_of_32X8-_ROM_using_Xilinx_SysGen
Xilinx System Generator for DSP (SysGen) is a MATLAB Simulink add-on that enables the development of architecture-level FPGA designs using graphical block programming. Simulink allows users to simulate their ideas, which may be packaged as a Vivado IP and quickly imported into a Vivado project.


REALISATION OF 32X8 ROM USING 8X8 ROM

![image](https://github.com/ChinmaiChowdary/Realisation_of_32X8-_ROM_using_Xilinx_SysGen/assets/119433702/7ae96d44-af3d-41e4-b4a5-a9e08511bcf5)


                        
3.6  USE OF BLACKBOX IN THE PROJECT
•	Black-box modeling is helpful when your primary interest is in fitting the data regardless of the particular mathematical structure of the model. 
•	The toolbox provides several linear and nonlinear black-box model structures, which have traditionally been useful for representing dynamic systems. 
•	These model structures vary in complexity depending on the flexibility you need to account for the dynamics and noise in your system. 
•	You can choose one of these structures and compute its parameters to fit the measured response data.
•	Black-box modeling is usually a trial-and-error process, where you estimate the parameters of various structures and compare the results.
•	The Model Composer Black Box block provides a way to incorporate hardware description language (HDL) models into Model Composer.
•	When a black box is translated into hardware, the associated HDL entity is automatically incorporated and wired to other blocks in the resulting design.
•	The black box can be used to incorporate either VHDL or Verilog into a Simulink model. 
    


![image](https://github.com/ChinmaiChowdary/Realisation_of_32X8-_ROM_using_Xilinx_SysGen/assets/119433702/54d12c06-f24c-4798-ae35-40f9dba333b8)


BLACK BOX
       
                                                                                 
SYSTEM GENERATOR DESIGN MODEL



![image](https://github.com/ChinmaiChowdary/Realisation_of_32X8-_ROM_using_Xilinx_SysGen/assets/119433702/22769147-ab39-4e47-8c25-c287339c0d27)


 


DESIGN DESCRIPTION

•	In the above design model, you can see that there are four blocks which are black boxes in which ROM code is incorporated

•	Number of 8x8 ROMS required to design 32x8 ROM = 256/64 = 4

•	The four blocks of rom are connected with inputs ( en and addr).

•	Clock inputs are also given.

•	The outputs are connected to a 4x1 multiplexer with s0 and s1 as enable pins.

•	According to the inputs given to the enable pins the output will be displayed as follows

S0	      S1	      OUTPUT DISPLAYED FROM
0  	      0        	        BLOCK 1
0	        1        	        BLOCK 2
1	        0	                BLOCK 3
1	        1	                BLOCK 4


RESULT



 ![image](https://github.com/ChinmaiChowdary/Realisation_of_32X8-_ROM_using_Xilinx_SysGen/assets/119433702/e6494011-56f7-4b70-9f3a-e735adbc25ec)



•	In the above figure the inputs 1 – en and 7 – addr are given for block 1
•	In blocks 2,3 and 4 the en is kept at 0
•	Now the final output will be displayed only if s0 and s1 of the 4x1 mux is kept 0 and 0.
•	The result is displayed using the display box. 
•	Output – 8
