#include <stdio.h>
#include <stdlib.h>
#include "kernel5.h"

int main()
{
    float sum, sum_check, bound, a[ARRAY_SIZE], b[ARRAY_SIZE];
    bound = 1000.0;
    for(int i = 0; i < ARRAY_SIZE; i++ )
    {
        a[i] = (float) i;
        b[i] = (float) i*2 + 3;
    }

    sum = kernel5(bound, a, b);

    int index=0;
    while (sum_check<bound && index<ARRAY_SIZE)
    {
        sum_check = a[index] + b[index];
        index++;
    }

    if(sum != sum_check)
    {
        printf("Test failed  !!!\n");
        return 1;
    }

    printf("Test passed !\n");
    return 0;
}