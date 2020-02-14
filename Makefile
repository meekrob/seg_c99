CC=gcc
CFLAGS= -g
LIBS=-lm
HEADERS=lnfac.h genwin.h

all: seg

seg: seg.o genwin.o
	$(CC) $^ $(LIBS) -o $@

hiseg: hiseg.o genwin.o
	$(CC) $^ $(LIBS) -o $@

%.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f seg seg.o genwin.o

