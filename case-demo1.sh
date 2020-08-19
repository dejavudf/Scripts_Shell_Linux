#!/bin/bash

read -p "请输入一个a-f之间的字母:" key
case $key in
a)
    echo "I am a.";;
b)
    echo "I am b.";;
c)  echo "I am c.";;
d)  echo "I am d.";;
e)
    echo "I am e.";;
f)
    echo "I am f.";;
*)
    echo "Out of range.";;
esac
