#!/bin/bash

sum=0;i=1
while [ $i -le 100 ]
do
    let sum+=$i
    let i++
done
echo -e "1+2+3+...+100的总和为:\033[1;32m$sum\033[0m"
