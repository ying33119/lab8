question 1

the result:
$ ./q1
terminate called without an active exception
Aborted (core dumped)

The program terminates without showing ¡§I love C++.¡¨, because executing an empty 
throw statement outside a catch handler calls function terminate, which abandons
exception processing and terminates the program immediately.


question 2

the result: 
$ ./q2
terminate called after throwing an instance of 'double'

The program doesn't show ¡§I love C++¡¨, because if an exception that occurs in 
a try block has no matching catch handler, the function that contains the statement 
terminates immediately.

modified program:
  #include <iostream>
  using namespace std;
  int main()
  {
      try{
          throw 3.0;
      } catch (double) {
          cout << "exception caught" << endl;
      }
      cout << "I love C++" << endl;
      return 0;
  }
the result: 
$ ./q2
exception caught
I love C++


question 3

how to compile:
$ make
g++ -c tetris.cpp
g++ -c genMino.cpp
g++ -c MinoL.cpp
g++ -c MinoI.cpp
g++ -c MinoS.cpp
g++ -c MinoT.cpp
g++ -c MinoZ.cpp
g++ -c Mino.cpp
g++ -o tetris tetris.o genMino.o MinoL.o MinoI.o MinoS.o MinoT.o MinoZ.o Mino.o
