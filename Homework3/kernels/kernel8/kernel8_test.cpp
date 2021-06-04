#include <stdio.h>
#include <stdlib.h>
#include "kernel8.h"

int main()
{
    int input_array[ARRAY_SIZE], output_array[ARRAY_SIZE], offset, multiplier;
    multiplier = 2;
    offset = rand()%12;
    for(int i = 0; i < ARRAY_SIZE; i++ )
    {
        input_array[i] = rand()%32;
        output_array[i] = input_array[i];
    }

    kernel8(output_array, multiplier, offset);

    for (int i=6; i<ARRAY_SIZE-1-offset; ++i)
    {
        input_array[i] = input_array[i-6+offset]*multiplier;
    }

    for(int i=0; i<ARRAY_SIZE; i++)
    {
        if(input_array[i] != output_array[i])
        {
            printf("Test failed  !!!\n");
            return i;
        }
    }
    printf("Test passed !\n");
    return 0;
}