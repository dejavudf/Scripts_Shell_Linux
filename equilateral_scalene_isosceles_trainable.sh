# Given three integers (, , and ) representing the three sides of a triangle, identify whether the triangle is Scalene, Isosceles, or Equilateral.
# Equilateral = having all its sides of the same length
# Scalene = having three unequal sides
# Isosceles = having two sides of equal length

#!/bin/bash

read x
read y
read z

if [ $x -eq $y ] && [ $y -eq $z ]
then
   echo "EQUILATERAL"

elif [ $x -ne $y ] && [ $x -ne $z ] && [ $y -ne $z ]
then 
    echo "SCALENE"
else
    echo "ISOSCELES"
fi
