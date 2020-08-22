# Problem : Read in one character from the user (this may be 'Y', 'y', 'N', 'n'). If the character is 'Y' or 'y' display "YES". If the character is 'N' or 'n' display "NO". No other character will be provided as input.

#!/bin/bash

read character

if [ $character == 'Y' ] || [ $character == 'y' ]
then
    echo "YES"
elif [ $character == 'N' ] || [ $character == 'n' ]
then
    echo "NO"
fi
