#!/bin/bash 
CC="gcc -lm -wall"
GPP="g++ -std=c++11"

function CheckType() {
    Type=`echo $1 | tr "." "\n" | tail -n 1`
    if [[ ${Type} == "c" ]];then
        return 0
    elif [[ ${Type} == "cpp" ]];then
        return 1
    elif [[ ${Type} == "sh" ]];then
        return 2
    else 
        exit
    fi
}

File=$1

for (( i=2; i<=$#; i++));do
    $j=$i
    Args+=($j)
done

OutFile=`echo $1 | tr "." "\n" | head -n -1 | tr "\n" "."`
CheckType ${File} 
if [[ $? -eq 0 ]];then 
    ${CC} ${File} -o ${OutFile}exe && time ./${OutFile}exe ${Args} && rm -f ${OutFile}exe
else
    CheckType ${File} 
    if [[ $? -eq 1 ]];then
    ${GPP} ${File} -o ${OutFile}exe && time ./${OutFile}exe ${Args} && rm -f ${OutFile}exe
    else
    time bash ${File} ${Args}
    fi
fi 
