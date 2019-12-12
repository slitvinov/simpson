      program main
      implicit none
      double precision result
      double precision squank
      double precision fifth
      double precision a
      double precision big
      double precision error
      external fun
      double precision rum
      integer no
      a = 0.0
      big = 3.0
      error = 0.001
      result = squank ( a, big, error, fifth, rum, no, fun)
      write (*, '(e30.16)') result
      end
      function fun(x)
      implicit none
      double precision fun
      double precision x
      write (*, '(a,e30.16)') "x = ", x
      fun = sin(x*x)
      return
      end
