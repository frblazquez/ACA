#include "kernel4.h"

void kernel4(int array[ARRAY_SIZE], int index[ARRAY_SIZE] , int offset)
{
	if (offset >= ARRAY_SIZE-2)
		return;

	int res = array[offset];
	int arr1 = array[offset+1], arr2;
    kernel4_loop:for (int i=offset+1; i<ARRAY_SIZE-1; ++i) {
    	arr2 = array[i+1];
        res = res -index[i]*arr1+index[i]*arr2;
        arr1 = arr2;
    }
    array[offset]=res;
}


/******** Original code, synthesis done with offset=0: solutions 1, 2 ********

void kernel4(int array[ARRAY_SIZE], int index[ARRAY_SIZE] , int offset)
{
    kernel4_loop:for (int i=offset+1; i<ARRAY_SIZE-1; ++i)
    {
        array[offset] = array[offset]-index[i]*array[i]+index[i]*array[i+1];
    }
}

*/


/******** : solution 3 ********

void kernel4(int array[ARRAY_SIZE], int index[ARRAY_SIZE], int offset)
{
	if(offset < ARRAY_SIZE-2) {
		int res, arr1, arr2, idx;
		res = array[offset];
		arr1 = index[offset+1];

		kernel4_loop:for (int i=offset+1; i<ARRAY_SIZE-1; ++i) {
			idx = index[i];
			arr2 = array[i+1];
			res = res-idx*arr1+idx*arr2;
			arr1 = arr2;
		}
	}
}

*/
