# Introduction

# Install

Needs GNU MARST.

  make
  (cd example; make)

# Example


   ! ./algol | awk '/x = / {print $3}' > q
   plot [0:3] sin(x*x), "q" u 1:(0.1*0) w points ps 1 pt 7

# References

- https://www.gnu.org/software/marst
