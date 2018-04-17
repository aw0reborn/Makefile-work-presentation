






















# all:
# 	g++ -c returnNumber.cpp main.cpp factorial.cpp
#
#




# all: prog
# prog: main.o returnNumber.o factorial.o
# 	g++ main.o returnNumber.o factorial.o -o prog
# main.o: main.cpp
# 	g++ -c main.cpp
# returnNumber.o: returnNumber.cpp
# 	g++ -c returnNumber.cpp
# factorial.o: factorial.cpp
# 	g++ -c factorial.cpp
# run:
# 	./prog
# clean:
# 	rm -rf *.o

# This is a comment line
CC=g++
RR=./
# CFLAGS will be the options passed to the compiler.
CFLAGS= -c
all: prog

prog: main.o returnNumber.o factorial.o
	$(CC) main.o returnNumber.o factorial.o -o prog
main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp
returnNumber.o: returnNumber.cpp
	$(CC) $(CFLAGS) returnNumber.cpp
factorial.o: factorial.cpp
	$(CC) $(CFLAGS) factorial.cpp

#
run:
	$(RR)prog

clean:
	rm -rf *.o
