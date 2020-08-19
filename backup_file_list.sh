#!/bin/bash

for i in `ls /etc/*.conf`
do
    tar -czf /root/log/$(basename $i).tar.gz $i
done
