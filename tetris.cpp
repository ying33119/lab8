#include <iostream>
#include <cstdlib>
#include <ctime>
#include <new>
#include "genMino.h"

using namespace std;

int main()
{
    Mino * mino_ptr;

    srandom(time(NULL));

    try {
        while(true){
            mino_ptr = genMino();
            mino_ptr->paint();
        }
    } catch(bad_alloc &memoryAlloc){
        cerr << "Exception: " << memoryAlloc.what() << endl;
    }


    return 0;
}
