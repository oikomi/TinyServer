CC=gcc
CFLAGS=-O2 -W -Werror -Wall --std=c99 -D_GNU_SOURCE -I/usr/local/include -L/usr/local/lib -lmongoc

PROG=tinyserver
OBJS=tinyserver.o


all: $(PROG)


%.o: %.c
	        $(CC) -c $(CFLAGS) $< -o $@


$(PROG): $(OBJS)
	        $(CC) $(OBJS) -o $(PROG) -lpthread


.PHONY:clean


clean:
	        rm -rf *.o $(PROG)
