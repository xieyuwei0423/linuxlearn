main: main.c ./lib/libcal.a
	gcc main.c -L ./lib/ -lcal -I ./include/ -o main

./lib/libcal.a: ./src/add.o ./src/sub.o
	ar rcs ./lib/libcal.a ./src/add.o ./src/sub.o

./src/add.o: ./src/add.c
	gcc -c ./src/add.c -I ./include/ -o ./src/add.o

./src/sub.o: ./src/sub.c
	gcc -c ./src/sub.c -I ./include/ -o ./src/sub.o

.PHONY: clean
clean:
	rm -f ./src/*.o main
