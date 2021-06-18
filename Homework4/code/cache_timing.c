#include <stdint.h>
#include <stdio.h>
#include <inttypes.h>
#include <x86intrin.h>


int main(int argc, const char **argv) {
    int variable_to_flush = 100, junk;
    
    // Flush the variable
    _mm_clflush(&variable_to_flush);

    // Memory fence, wait several cycles for clflush to commit
    for (volatile int i = 0; i < 100; i++);
    _mm_mfence();

    // Trigger and measure the cache MISS
    uint64_t t0 = __rdtscp(&junk);
    variable_to_flush = 200;
    uint64_t t1 = __rdtscp(&junk);

    // Trigger and measure the cache HIT
    variable_to_flush = 201;
    uint64_t t2 = __rdtscp(&junk);
    
    printf("%" PRIu64 "\n",t1 - t0);
    printf("%" PRIu64 "\n",t2 - t1);
    printf("var = %d\n", variable_to_flush);
    
    return (0);
}
