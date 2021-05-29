#include <stdio.h>
#include <stdlib.h>
#include "kernel2.h"

int main()
{
    int input_array[ARRAY_SIZE], output_array[ARRAY_SIZE];
    for ( int i = 0; i < ARRAY_SIZE; i++ )
    {
        input_array[i] = rand()%1024;
        output_array[i] = input_array[i];
    }

    kernel2(output_array);

    for ( int i = 3; i < ARRAY_SIZE; i++)
    {
        if(input_array[i-1] + input_array[i-2] * input_array[i-3] != output_array[i])
        {
            printf("Test failed  !!!\n");
            return i;
        }
        input_array[i] = input_array[i-1] + input_array[i-2] * input_array[i-3];
    }
    printf("Test passed !\n");
    return 0;
}

