#include "kernel6.h"

int kernel6(int x)
{
    int i=0;
    while(i*i < x)
        i++;
    return i;
}

// Possible software improvements:
// https://helloacm.com/coding-exercise-implement-integer-square-root-c-online-judge/
