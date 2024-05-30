buffer: main.o bufferPool.o bufferManager.o Interfaz.o Bloque.o DiskManager.o
	g++ -o buffer main.o bufferPool.o bufferManager.o Interfaz.o Bloque.o DiskManager.o
	./buffer

main.o: main.cpp Interfaz.h
	g++ -c main.cpp

Interfaz.o: Interfaz.cpp Interfaz.h bufferManager.h DiskManager.h
	g++ -c Interfaz.cpp

bufferManager.o: bufferManager.cpp bufferManager.h bufferPool.h Bloque.h DiskManager.h
	g++ -c bufferManager.cpp

DiskManager.o: DiskManager.cpp DiskManager.h Bloque.h
	g++ -c DiskManager.cpp

Bloque.o: Bloque.cpp Bloque.h
	g++ -c Bloque.cpp

bufferPool.o: bufferPool.cpp bufferPool.h
	g++ -c bufferPool.cpp

clean:
	rm -f *.o buffer