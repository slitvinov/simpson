.POSIX:
.SUFFIXES: .c .o .a60
.PHONY: all lint clean

MARST_LDFLAGS = -static  -L.. -lkuncir -lalgol -lm
CFLAGS = -Og -g
LINK = $(CC)
MARST = marst
M = \
hennion\
kuncir\
mckeeman\

all: $M
.o:; $(LINK) $< $(MARST_LDFLAGS) $(LDFLAGS) -o $@
.c.o:; $(CC) $(CFLAGS) $< -c
.a60.c:; $(MARST) $< -o $@

clean:; rm -f $M $(M:=.o) $(M:=.c)
