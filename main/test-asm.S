/*
 * The RISC-V ASM test code to test
 * 
 * Called via a CALLX from C++/.ino
 * Input params are in a0-a1, output goes to a0
 * 
 */

// Use defines to reference registers
#define out a0
#define inputone a0
#define inputtwo a1
#define swap t0

  .text                   # Code section
  .global asmtest         # Make the symbol available to C++ for call
  .type   asmtest,@function
  
asmtest:
  mv swap, inputone     # Copy value in reg a0 (inputone) to reg t0
  lb out, 0(inputtwo)   # Load byte in address stored in reg a1 (inputtwo) to reg a0 (output)
  sb swap, 0(inputtwo)  # Store byte in reg t0 to address in a1 (inputtwo
  ret

