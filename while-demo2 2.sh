#!/bin/bash

i=1
while [ $i -le 5 ]
do
    echo "hello world"
    echo "$i"
    let i++
done
