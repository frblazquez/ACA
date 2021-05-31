#include <stdio.h>
#include <stdlib.h>
#include "kernel4.h"

int main()
{
    int input_array[ARRAY_SIZE], output_array[ARRAY_SIZE], index[ARRAY_SIZE], offset;
    offset = rand()%35;
    for(int i = 0; i < ARRAY_SIZE; i++ )
    {
        input_array[i] = rand()%16;
        output_array[i] = input_array[i];
        index[i] = rand()%16;
    }

    kernel4(output_array, index, offset);

    for(int i=offset+1; i<ARRAY_SIZE-1; i++)
    {
        input_array[offset] = input_array[offset]-index[i]*input_array[i]+index[i]*input_array[i+1];
    }

    for(int i = 0; i < ARRAY_SIZE; i++)
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