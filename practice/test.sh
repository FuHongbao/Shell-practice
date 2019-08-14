#!/bin/bash

declare -a prime

function init() {
    for i in seq 1 1000;do
        eval $1[$i]=0
    done
}

init prime

#for ((i=0; i<1000; i++));do
#    prime[$i]=0
#done

for ((i=2; i<1000; i++));do
    if [[ ${prime[$i]} -eq 0 ]]; then
        for ((j=2; j < i && i * $prime[j] <= 1000; j++));do
            prime[$i*$j]=1
            if [[ $i%${prime[j]} -eq 0 ]]; then
                break;
            fi
        done
    fi
done

for ((i=2; i<=1000; i++)); do
    if [[ ${prime[$i]} -ne 1 ]]; then
        echo $i
    fi
done
