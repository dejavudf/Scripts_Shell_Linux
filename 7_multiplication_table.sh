#!/bin/bash

read -p "Enter a number : " number
i=0

while (( i <= 10 ))
do 
  echo "$number x $i = $(( number*i ))"
  (( i++ ))
done