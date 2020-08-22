#!/bin/bash

myarray=(one two three four) # declaring an array

echo "${myarray[0]}" #prints array element

echo "${myarray[*]}" #prints all elements of an array

unset $myarray[1]  #removes the second element

unset myarray #removes all elements

