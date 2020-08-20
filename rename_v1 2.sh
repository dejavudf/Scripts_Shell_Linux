#!/bin/bash


if [[ -z "$1" || -z "$2" ]];then
    echo "Usage:$0 旧扩展名 新扩展名."
    exit
fi

for i in `ls *.$1`
do
    mv $i ${i%.$1}.$2
done
