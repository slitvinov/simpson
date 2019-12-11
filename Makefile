.POSIX:
.SUFFIXES: .c .o
.PHONY: lint clean

CFLAGS = -Og -g
LINK = $(CC)
M = \
kuncir\

all: $M
.o:; $(LINK) $< $(LDFLAGS) -o $@
.c.o:; $(CC) $(CFLAGS) $< -c -o $@

.c:
%: %.c

lint:; make CFLAGS='-Wall -Wextra -g -O2'
clean:; rm -f $M $(M:=.o)
