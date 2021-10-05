# RiscVAsmPOC
*RISC-V Assembler POC for the ESP32-C3*

**C** call to **RISC-V ASM** routine that passes a variable and a pointer and expects an output value. 

The ASM routine, moves the pointer dereference value to the output and replaces it with the passed in variable. 
C then displays the value of the output.

```
Calling the ASM C header with values
	In1: 0x00000011 	In2: 0x00000022 	Out: 0000000000

Call Complete.
	In1: 0x00000011 	In2: 0x00000011 	Out: 0x00000022
```
