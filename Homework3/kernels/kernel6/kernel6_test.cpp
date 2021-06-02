#include <stdio.h>
#include <stdlib.h>
#include "kernel6.h"

int main()
{
    int x, y, index;
    x = 378;

    y = kernel6(x);

    index = 0;
    while (index*index<x)
        index++;

    if(y != index)
    {
        printf("Test failed  !!!\n");
        return 1;
    }

    printf("Test passed !\n");
    return 0;
}