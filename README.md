# Introduction

# Install

Needs GNU MARST.

  make
  (cd example; make)

# Example


   ! ./mckeeman | awk 'sub(/x = /, "")' > /tmp/q
   ! ./kuncir | awk 'sub(/x = /, "")' > /tmp/q
   plot [0:3] sin(x*x), "/tmp/q" u 1:(0) w points ps 1 pt 7

# References

- https://www.gnu.org/software/marst
- G.F. Kuncir (1962), "Algorithm 103: Simpson's rule integrator",
  Communications of the ACM, 5 (6): 347, doi:10.1145/367766.368179
