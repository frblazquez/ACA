#include "kernel3.h"

void kernel3( float hist[ARRAY_SIZE], float weight[ARRAY_SIZE], int index[ARRAY_SIZE])
{
	kernel3_loop:for (int i=0; i<ARRAY_SIZE; ++i) {
        hist[index[i]] = hist[index[i]]+ weight[i];
      }
}

/******** Original code: solutions 1, 2, 3 ********

void kernel3( float hist[ARRAY_SIZE], float weight[ARRAY_SIZE], int index[ARRAY_SIZE])
{
    for (int i=0; i<ARRAY_SIZE; ++i) {
        hist[index[i]] = hist[index[i]]+ weight[i];
      }
}

*/

/******** Attempt to detect conflicts manually: solution 4 ********

void kernel3( float hist[ARRAY_SIZE], float weight[ARRAY_SIZE], int index[ARRAY_SIZE])
{
	int index1, index2, index3, index4;
	float hist1, hist2, hist3, hist4, weighti;

	index4 = index[0];
	index3 = index[1];
	index2 = index[2];
	hist4 = hist[index4] + weight[0];

	if(index4 == index3){
		index4 = -1;
		hist3 = hist4 + weight[1];
	} else {
		hist3 = hist[index3] + weight[1];
	}

	if(index2 == index3){
		index3 = -1;
		hist2 = hist3 + weight[2];
	} else if (index2 == index4) {
		index4 = -1;
		hist2 = hist4 + weight[2];
	} else {
		hist2 = hist[index2] + weight[2];
	}

    kernel3_loop:for (int i=3; i<ARRAY_SIZE; ++i) {
    	index1 = index[i];
    	weighti = weight[i];

    	if(index1 == index2){
    		index2 = -1;
    		hist1  = hist2 + weighti;
    	} else if (index1 == index3) {
    		index3 = -1;
    		hist1 = hist3 + weighti;
    	} else if (index1 == index4) {
    		index4 = -1;
    		hist1 = hist4 + weighti;
    	}

    	if(index4 != -1){
    		hist[index4] = hist4;
    	}

        index4 = index3; index3 = index2; index2 = index1;
        hist4 = hist3;   hist3 = hist2;   hist2 = hist1;
      }
}

*/
