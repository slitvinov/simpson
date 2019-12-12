.POSIX:
.SUFFIXES: .f .o
.PHONY: all lint clean

FC = gfortran
FFLAGS = -Og -g
L = libsquank.a
O = \
main.o\

$L: $O; ar rv $@ $O && ranlib $@
.f.c:; $(FC) $< -o $@

lint:; make FFLAGS='-Wall -Wextra -g -O2'
clean:; rm -f $L $O
