all: tamagoshi.o newcow.o wildcow.o reading_cow.o

tamagoshi.o:
	clang -o tamagoshi.c

newcow.o:
	clang -o newcow.c

wildcow.o:
	clang -o wildcow.c

reading_cow.o:
	clang -o reading_cow.c

clean:
	rm *.o