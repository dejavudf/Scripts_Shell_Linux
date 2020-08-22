#!/bin/bash

for var in /*
do
  if [ -d $var ]
  then
     echo "$var is a directory"
  elif [ -f $var ]
  then
     echo "$var is a file"
  fi
done