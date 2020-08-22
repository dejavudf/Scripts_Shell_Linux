#!/bin/bash

for i in /*
do
  if [ -f $i ]
  then
     echo "$i is a file"
  else
      continue
  fi
done