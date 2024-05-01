all: tamagoshi.o newcow.o wildcow.o reading_cow.o crazycow.o

tamagoshi.o:
	clang tamagoshi.c -o tamagoshi.o

newcow.o: newcow.h
	clang newcow.c -o newcow.o

wildcow.o:
	clang wildcow.c -o wildcow.o

reading_cow.o:
	clang reading_cow.c -o reading_cow.o

crazycow.o:
	clang crazycow.c -o crazycow.o

clean:
	rm *.o