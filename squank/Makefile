.POSIX:
.SUFFIXES: .f .o

FC = gfortran
FFLAGS = -Og -g
L = libsquank.a
O = \
main.o\

$L: $O; ar rv $@ $O && ranlib $@
.f.o:; $(FC) $< -c

clean:; rm -f $L $O
