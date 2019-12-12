! ./example/kuncir | awk 'sub(/x = /, "")' > /tmp/q
set term svg lw 3
set output "img/kuncir.svg"
set key off
plot sin(x*x), "/tmp/q" u 1:(0) w p ps 1 pt 6
