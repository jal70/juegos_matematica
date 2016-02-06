set terminal png notransparent nocrop enhanced size 600,300 font "Helvetica,12" 
#set time "%d/%m/%y %H:%M" top norotate font "Helvetica"
unset key
#set xdata int
set xtics 1
#set mxtics 4
set timefmt "%s"
#set format x "%s"
set xrange [ "1":"10" ] # está aquí como referencia a la forma manual de establecer los límites
set output 'promedios_temp.png'
set title "Promedio temporal"
set xlabel "Tabla"
set ylabel "s"
set grid
#plot for [col=1:2] "grafica_promedios_temp" using 0:col with lines
plot "grafica_promedios_temp" with lines #pointtype 1 lc rgb '#1c5c11'
