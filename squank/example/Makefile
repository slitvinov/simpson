.POSIX:
.SUFFIXES: .o .f
.PHONY: all lint clean

FFLAGS = -Og -g
FC = gfortran
LINK = $(FC)
M_LDFLAGS =-L.. -lsquank
M = \
driver\
squank\

all: $M
.o:; $(LINK) $< $(M_LDFLAGS) $(LDFLAGS) -o $@
.c.o:; $(CC) $(CFLAGS) $< -c

.f:
%: %.f

lint:; make CFLAGS='-Wall -Wextra -g -O2'
clean:; rm -f $M $(M:=.o) $(M:=.c)
