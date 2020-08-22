# Problem : Use for loops to display only odd natural numbers from 1 to 99.
#!/bin/bash

for i in {1..99}
do 
  result=$(( $i % 2 ))
  if [ $result -ne 0 ]
  then
      echo "$i"
  fi
done
