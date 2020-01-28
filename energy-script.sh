#!/bin/bash


for j in `seq 1 15`

    do

    num=$j

 for i in `seq 1 25`

    do

    grep -A 1 "EOMEA transition $num/A" uracil_$i.out  | tail -1 | awk '{print $9}' > energy

    echo $(expr $i*0.1 | bc) > alpha

    paste alpha energy >> uracil-stab-ev-state$j.dat

    done

    done 
