# Problem : We provide you with expressions containing +,-,*,^, / and parenthesis. 
# None of the numbers in the expression involved will exceed 999. 

#!/bin/bash

read line;
printf "%.3f" $(echo "scale = 4; $line" | bc);
