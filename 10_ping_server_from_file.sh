#!/bin/bash

if [ ! -f "$1"]
then
    echo "The input to $0 should be a filename"
    exit 1
fi
echo "The following servers are up on $(date +%x)" > server.out

while read server
do
  ping -c1 "$server" && echo "Server up: $server" >> server.out
done < $1

cat server.out
