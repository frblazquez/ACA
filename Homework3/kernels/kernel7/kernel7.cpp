#include "kernel7.h"

float kernel7(float a[ARRAY_SIZE], float b[ARRAY_SIZE])
{
    float sum = 0;
    kernel7_loop:for(int i=0; i<ARRAY_SIZE; i++)
    {
        float diff = a[i] - b[i];
        if (diff > 0)
            sum = (sum + diff);
    }
    return sum;
}



/******** Original code: solutions 1, 2 ********

float kernel7(float a[ARRAY_SIZE], float b[ARRAY_SIZE])
{
    float sum = 0;
    kernel7_loop:for(int i=0; i<ARRAY_SIZE; i++)
    {
        float diff = a[i] - b[i];
        if (diff > 0)
            sum = (sum + diff);
    }
    return sum;
}

*/


/******** Original code: solution 3 ********

// This code is no improvement because for the comparison between a[i] and b[i]
// we are doing a float substraction

float kernel7(float a[ARRAY_SIZE], float b[ARRAY_SIZE])
{
    float sum = 0;
    kernel7_loop:for(int i=0; i<ARRAY_SIZE; i++)
    {
        if(a[i] > b[i])
            sum += (a[i] - b[i]);
    }
    return sum;
}

*/


/******** Original code: solution 7 ********

float kernel7(float a[ARRAY_SIZE], float b[ARRAY_SIZE])
{
    float sum = 0, diff1, diff2, diff3, diff4;

    // Control ARRAY_SIZE (it can be lower than 3!)
    diff1 = a[0] - b[0];
    diff2 = a[1] - b[1];
    diff3 = a[2] - b[2];

    kernel7_loop:for(int i=3; i<ARRAY_SIZE; i++)
    {
        diff4 = a[i] - b[i];

        if (diff1 > 0)
            sum += diff1;

        diff1 = diff2; diff2 = diff3; diff3 = diff4;
    }

    if(diff1 > 0)
    	sum += diff1;
    if(diff2 > 0)
    	sum += diff2;
    if(diff3 > 0)
    	sum += diff3;

    return sum;
}

*/
