CC = mpicc

SRC = main.c 
OBJ = $(SRC:.c=.o)

all: main

main:	$(OBJ)
	@echo LINK $(OBJ) INTO $@
	$(CC) $(OBJ) -lm -o $@

clean:
	rm -f *.o *~ main
