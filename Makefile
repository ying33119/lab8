tetris: tetris.o genMino.o MinoL.o MinoI.o MinoS.o MinoT.o MinoZ.o Mino.o
	g++ -o tetris tetris.o genMino.o MinoL.o MinoI.o MinoS.o MinoT.o MinoZ.o Mino.o

tetris.o: tetris.cpp genMino.h
	g++ -c tetris.cpp

genMino.o: genMino.cpp genMino.h
	g++ -c genMino.cpp

MinoL.o: MinoL.cpp MinoL.h
	g++ -c MinoL.cpp

MinoI.o: MinoI.cpp MinoI.h
	g++ -c MinoI.cpp

MinoS.o: MinoS.cpp MinoS.h
	g++ -c MinoS.cpp

MinoT.o: MinoT.cpp MinoT.h
	g++ -c MinoT.cpp

MinoZ.o: MinoZ.cpp MinoZ.h
	g++ -c MinoZ.cpp

Mino.o: Mino.cpp Mino.h
	g++ -c Mino.cpp