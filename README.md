<h1>Introduction</h1>

Adaptive Simpson's numerical integration method.

<p align="center"><img src="img/all.svg"/></p>
From top to bottom: Hennion, Kuncir, McKeeman, and squank methods.

<h1>Install</h1>

Needs GNU MARST and GNU Fortran.

    $ make
    $ (cd example; make)

<h1>Example</h1>

    $ ./mckeeman | awk 'sub(/x = /, "")' > /tmp/q
    $ ./kuncir | awk 'sub(/x = /, "")' > /tmp/q
    $ gnuplot
    gnuplot> plot sin(x*x), "/tmp/q" u 1:(0) w points ps 1 pt 7

<h1>References</h1>

- https://www.gnu.org/software/marst
- https://gcc.gnu.org/fortran
- Hennion, P. E. (1962). Algorithm 84: Simpson's
  integration. Communications of the ACM, 5(4), 208.
- Kuncir, G. F. (1962). Algorithm 103: Simpson's rule
  integrator. Communications of the ACM, 5(6), 347.
- McKeeman, W. M. (1962). Algorithm 145: Adaptive numerical
  integration by Simpson's rule. Communications of the ACM, 5(12),
  604.
- Lyness, J. N. (1970). Algorithm 379: Squank (Simpson Quadrature used
  adaptivity—noise killed)[D1]. Communications of the ACM, 13(4),
  260-262
