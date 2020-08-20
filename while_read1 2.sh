#!/bin/bash


IFS=":"
while read user pass uid gid info home shell
do
    echo -e "My UID:$uid,\tMy home:$home"
done < /etc/passwd
