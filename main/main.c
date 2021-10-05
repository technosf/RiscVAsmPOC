#include <stdio.h>
#include "test-asm.h"
#include "sdkconfig.h"

uint8_t in1 = 0x11;   // Dummy values identiable in a core dump
uint8_t in2 = 0x22;
uint32_t out;

void app_main(void)
{
  printf("\n\nCalling the ASM C header with values\n\tIn1: %#010x \tIn2: %#010x \tOut: %#010x\n\n", in1, in2, out );
  out = asmtest( in1, &in2 );
  printf("Call Complete.\n");
  printf("\tIn1: %#010x \tIn2: %#010x \tOut: %#010x\n\n", in1, in2, out);

}
