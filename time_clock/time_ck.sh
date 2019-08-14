#!/bin/bash

start_s=`date +%S | sed -r 's/^0+//'`
start_m=`date +%M | sed -r 's/^0+//'`
start_h=`date +%H | sed -r 's/^0+//'`
run=1
index=0
while [[ run -eq 1 ]]; do
    if [[ index -eq 10 ]];then 
        break
    fi
    end_s=`date +%S | sed -r 's/^0+//'`
    end_m=`date +%M | sed -r 's/^0+//'`
    end_h=`date +%H | sed -r 's/^0+//'`
    if [[ end_s -eq 0 ]];then
       # if [[ end_m -eq 0 ]];then
            export DISPLAY=:0.0 && notify-send "当前时间：${end_h}点整"
       # fi
    fi
    tmp=$[ ($end_m - $start_m)*60 + ($end_s - $start_s) ]
    if [[ tmp -eq 15 ]]; then
        export DISPLAY=:0.0 && notify-send "已学习45分钟，请进行运动休息"
    fi
    if [[ tmp -eq 15 ]];then
        export DISPLAY=:0.0 && notify-send "休息时间已结束"
        index=$[$index + 1]
        start_s=`date +%S | sed -r 's/^0+//'`
        start_h=`date +%H | sed -r 's/^0+//'`
        start_m=`date +%M | sed -r 's/^0+//'` 
    fi
    sleep 1
done


