CC = gcc
CFLAGS = -Wall -g
TARGET = main

all: $(TARGET)

$(TARGET): main.o isOdd.o isEven.o
	$(CC) $(CFLAGS) -o $(TARGET) main.o isOdd.o isEven.o

main.o: main.c isOdd.h isEven.h
	$(CC) $(CFLAGS) -c main.c

isOdd.o: isOdd.c isOdd.h
	$(CC) $(CFLAGS) -c isOdd.c

isEven.o: isEven.c isEven.h
	$(CC) $(CFLAGS) -c isEven.c

clean:
	rm -f *.o $(TARGET) $(TARGET).exe