#include <emmintrin.h>
#include <stdint.h>
#include <stdio.h>
#include <x86intrin.h>

#include <stdlib.h>

uint8_t LUT[256 * 512];

int victim(int input) {
  int index = (input * 163) & 0xFF;
  volatile int internal_value = LUT[index * 512];
  return (internal_value * 233) & 0xFFFF;
}

void attack(int input) {
  // TODO: Specify the threshold

  // TODO: Build a table to store the hit time of each block

  // TODO: Perform repeated attack to improve precision

    // 1. Flush cache

    // 2. Call victim
      victim(input);

    // 3. Check each block to see if it's hit


  // TODO: Find the index with maximum probability
  int guessed_index = 0;

  // compute the expected index
  int oracle_index = (input * 163) & 0xFF;

  // print the attack result
  printf("Attack index: %d, Correct index: %d \n", guessed_index, oracle_index);
}

int main() {
  // initialize LUT
  for (int i = 0; i < 256; i++) {
    LUT[i * 512] = rand();
  }

  // perform attacks
  attack(10);
  attack(35);
  attack(100);

  // you may add more testing cases here

  return 0;
}
