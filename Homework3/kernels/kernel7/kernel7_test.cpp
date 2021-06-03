#include <stdio.h>
#include <stdlib.h>
#include "kernel7.h"

int main()
{
    float sum, sum_check, a[ARRAY_SIZE], b[ARRAY_SIZE];

    for(int i = 0; i < ARRAY_SIZE; i++ )
    {
        a[i] = (float) rand();
        b[i] = (float) rand();
    }

    sum = kernel7(a, b);

    sum_check=0;
    for(int i=0; i<ARRAY_SIZE; i++)
    {
        float diff = a[i] - b[i];
        if (diff > 0)
            sum_check = (sum_check + diff);
    }

    if(sum != sum_check)
    {
        printf("Test failed  !!!\n");
        return 1;
    }

    printf("Test passed !\n");
    return 0;
}