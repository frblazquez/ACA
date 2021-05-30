#include <stdio.h>
#include <stdlib.h>
#include "kernel3.h"

int main()
{
    float input_hist[ARRAY_SIZE], output_hist[ARRAY_SIZE], weight[ARRAY_SIZE];
    int index[ARRAY_SIZE];
    for ( int i = 0; i < ARRAY_SIZE; i++ )
    {
        index[i] = rand()%1024;
        input_hist[i] = (float)rand();
        output_hist[i] = input_hist[i];
        weight[i] = (float)rand();
    }

    kernel3(output_hist, weight, index);

    for ( int i = 0; i < ARRAY_SIZE; i++)
    {
        input_hist[index[i]] = input_hist[index[i]]+ weight[i];
    }

    for ( int i = 0; i < ARRAY_SIZE; i++)
    {
        if(input_hist[i] != output_hist[i])
        {
            printf("Test failed  !!!\n");
            return i;
        }
    }
    printf("Test passed !\n");
    return 0;
}