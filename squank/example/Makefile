.POSIX:
.SUFFIXES: .f

FFLAGS = -Og -g
FC = gfortran
M_LDFLAGS =-L.. -lsquank
M = \
driver\
squank\

all: $M
.f:; $(FC) $< $(M_LDFLAGS) $(LDFLAGS) -o $@

clean:; rm -f $M $(M:=.o) $(M:=.c)
