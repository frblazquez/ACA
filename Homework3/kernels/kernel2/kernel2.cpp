#include "kernel2.h"

void kernel2( int array[ARRAY_SIZE] )
{
    int i, aux1, aux2, aux3, res;
    aux1 = array[2];
    aux2 = array[1];
    aux3 = array[0];
    kernel2_loop:
	for(i=3; i<ARRAY_SIZE; i++){
        res = aux1 + aux2 * aux3;
		array[i] = res;
        aux3 = aux2;
        aux2 = aux1;
        aux1 = res;
	}
}


/******** Original code: solutions 1, 2, 3 ********

void kernel2( int array[ARRAY_SIZE] )
{
    int i;
    for(i=3; i<ARRAY_SIZE; i++)
        array[i] = array[i-1] + array[i-2] * array[i-3];
}

*/

/******** Explicit loop-carry dependencies code: solution 4 ********

void kernel2( int array[ARRAY_SIZE] )
{
    int i, aux1, aux2, aux3;
    aux2 = array[1];
    aux3 = array[0];
    kernel2_loop:
	for(i=3; i<ARRAY_SIZE; i++){
		aux1 = array[i-1];
        array[i] = aux1 + aux2 * aux3;
        aux3 = aux2;
        aux2 = aux1;
	}
}

*/

/******** Explicit loop-carry dependencies code improved: solution 5 ********

void kernel2( int array[ARRAY_SIZE] )
{
    int i, aux1, aux2, aux3, res;
    aux1 = array[2];
    aux2 = array[1];
    aux3 = array[0];
    kernel2_loop:
	for(i=3; i<ARRAY_SIZE; i++){
        res = aux1 + aux2 * aux3;
		array[i] = res;
        aux3 = aux2;
        aux2 = aux1;
        aux1 = res;
	}
}

*/

// Solution 2 and Solution 5 are both the same but, in case of 5, with auxiliar variables,
// Vivado HLS fails to detect the loop-carry dependency between array elements, in the Docs:
//
// "Under certain circumstances, such as variable dependent array indexing, or when an external
//  requirement needs to be enforced (for example, two inputs are never the same index), the
//  dependence analysis might be too conservative. The DEPENDENCE pragma allows you to explicitly
//  specify the dependence and resolve a false dependence."

/******** Loop-Carry dependencies detection code: solution 6 ********

void kernel2( int array[ARRAY_SIZE] )
{
    int i;
    kernel_2_loop: for(i=3; i<ARRAY_SIZE; i++)
        array[i] = array[i-1] + array[i-2] * array[i-3];
}

*/
