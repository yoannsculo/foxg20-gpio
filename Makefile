EXEC	 = led
CC	 = gcc
SRC      = led.c io.c
OBJ      = $(SRC:.c=.o)


LDFLAGS  =
LIBS     = -L/usr/lib

CFLAGS   = -W -Wall -g
INCLUDES = -I/usr/include

all: $(EXEC)

# LINKER
$(EXEC): $(OBJ)
	$(CC) $(LIBS) -o $@ $^ $(LDFLAGS)

# COMPILER
%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDES) -o $@ -c $<

clean:
	rm -f $(EXEC) *.o
