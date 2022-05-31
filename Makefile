.POSIX:
.SUFFIXES: .c .o .a60

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

clean:; rm -f $L $O
