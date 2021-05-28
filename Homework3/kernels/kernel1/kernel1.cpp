#include "kernel1.h"

void kernel1( int array[ARRAY_SIZE] )
{
    int i;
    kernel1_loop:for(i=0; i<ARRAY_SIZE; i++)
        array[i] = array[i] * 5;
}


/******** Original code: solution 1 ********

void kernel1( int array[ARRAY_SIZE] )
{
    int i;
    for(i=0; i<ARRAY_SIZE; i++)
        array[i] = array[i] * 5;
}

*/

/******** Final code: solution 2, 3 ********

void kernel1( int array[ARRAY_SIZE] )
{
    int i;
    kernel1_loop:for(i=0; i<ARRAY_SIZE; i++)
        array[i] = array[i] * 5;
}

*/
