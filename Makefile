.POSIX:
.SUFFIXES: .c .o .a60
.PHONY: lint clean

CFLAGS = -Og -g
MARST = marst
L = libkuncir.a
O = \
hennion.o\
kuncir.o\
mckeeman.o\

$L: $O; ar rv $@ $O && ranlib $@
.c.o:; $(CC) $(CFLAGS) $< -c
.a60.c:; $(MARST) $< -o $@

.c:
%: %.c

lint:; make CFLAGS='-Wall -Wextra -g -O2'
clean:; rm -f $L $O
