#include "kernel5.h"

float kernel5(float bound, float a[ARRAY_SIZE], float b[ARRAY_SIZE])
{
    int i=0;
    float sum;
    kernel5_loop:while (sum<bound && i<ARRAY_SIZE)
    {
        sum = a[i] + b[i];
        i++;
    }
    return sum;
}


/******** Original code, synthesis done with offset=0: solution 1 ********

float kernel5(float bound, float a[ARRAY_SIZE], float b[ARRAY_SIZE])
{
    int i=0;
    float sum;
    while (sum<bound && i<ARRAY_SIZE)
    {
        sum = a[i] + b[i];
        i++;
    }
    return sum;
}

*/

/******** Original code, synthesis done with offset=0: solutions 2, 3 ********

float kernel5(float bound, float a[ARRAY_SIZE], float b[ARRAY_SIZE])
{
    int i=0;
    while (a[i] + b[i]<bound && i<ARRAY_SIZE)
        i++;

    return a[i] + b[i];
}

*/
