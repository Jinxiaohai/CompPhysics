reset
set terminal lua #fulldoc \
#solid originreset plotsize 9,6.5
set output 'plotExecTimeMixedVsPlainSmall.tex'

set format x "%g"
set format y "%g"

#set label 1 '' #at 5.5, 0.0193014, 0 left norotate back nopoint offset character 0, 0, 0
#set label 2 '$\sigma$' at 7.73607, 0.108213, 0 left norotate back nopoint offset character 0, 0, 0

set xlabel 'Monte Carlo cycles'  
set xrange [5000 : 150000] noreverse nowriteback
set mxtics 5

set ylabel 'Execution time, s'
set yrange [0 : 2.5] noreverse nowriteback
set mytics 5

set key 56000,2.4#top left

plot 'execTimeMixedHeSmallOpt1.data' using 1:2 lt 1 lw 3 w lp t 'Mixed -O1', 'performancePlainCppSmallOpt1.data' using 2:1 lt 2 lw 3 w lp t 'C++ -O1','execTimeMixedHeSmallOpt2.data' using 1:2 lt 3 lw 3 w lp t 'Mixed -O2','performancePlainCppSmallOpt2.data' using 2:1 lt 4 lw 5 w lp t 'C++ -O2','execTimeMixedHeSmallOpt3.data' using 1:2 lt 5 lw 3 w lp t 'Mixed -O3','performancePlainCppSmallOpt3.data' using 2:1 lt 6 lw 3 w lp t 'C++ -O3'












        
