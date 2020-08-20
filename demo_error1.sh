#!/bin/bash

user1=jacob
user2=tintin
user3=demo

for i in user1 user2 user3
do
    useradd $i
    echo "123456" | passwd --stdin $i &>/dev/null
done
echo "创建账户完成."
