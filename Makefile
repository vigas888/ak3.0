TARGET = MyProject
CC = gcc
LIBS = -lm

SRC = $(wildcard *.c)
OBJ = $(patsubst %.c, %.o, $(SRC))

$(TARGET) : $(OBJ)
        $(CC) $(OBJ) -o $(TARGET) $(LIBS)

%.o : %.c
        $(CC) -c $< -o $@

clean :
        rm $(TARGET) *.o
