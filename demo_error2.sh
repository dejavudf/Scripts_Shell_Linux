#!/bin/bash


i=1
while [ $i -le 100 ]
do
echo "i=$i ; sum=$sum"
   let  sum+=i
done
echo $sum
