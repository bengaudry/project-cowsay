all: tamagoshi.o newcow.o wildcow.o reading_cow.o crazy_cow.o

tamagoshi.o:
	clang tamagoshi.c -o tamagoshi.o

newcow.o: newcow.h
	clang newcow.h newcow.c -o newcow.o

wildcow.o:
	clang wildcow.c -o wildcow.o

reading_cow.o:
	clang reading_cow.c -o reading_cow.o

crazy_cow.o:
	clang crazy_cow.c -o crazy_cow.o

clean:
	rm *.o