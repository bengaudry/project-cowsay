all: tamagoshi.o newcow.o wildcow.o reading_cow.o

tamagoshi.o:
	clang -o tamagoshi.c tamagoshi.o

newcow.o:
	clang -o newcow.c newcow.o

wildcow.o:
	clang -o wildcow.c wildcow.o

reading_cow.o:
	clang -o reading_cow.c reading_cow.o

clean:
	rm *.o