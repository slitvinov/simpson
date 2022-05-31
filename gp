! for i in hennion kuncir mckeeman; do ./example/$i | awk 'sub(/x = /, "")' > /tmp/$i; done
! ./squank/example/squank | awk 'sub(/x = /, "")' > /tmp/squank

set term svg lw 3
set output "img/all.svg"
set key off
plot sin(x*x) lc 'black', \
"/tmp/hennion" u 1:(0.60) w p lc 'black' pt 6, \
"/tmp/kuncir" u 1:(0.20) w p lc 'black' pt 6, \
"/tmp/mckeeman" u 1:(-0.20) w p lc 'black' pt 6, \
"/tmp/squank" u 1:(-0.60) w p lc 'black' pt 6
