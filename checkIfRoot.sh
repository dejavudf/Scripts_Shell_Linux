# Shell script to check if a user is a root

#!/bin/bash

if [ $EUID == 0 ]
then
    echo "You are a root"
else
    echo "You are not a root user"
fi
