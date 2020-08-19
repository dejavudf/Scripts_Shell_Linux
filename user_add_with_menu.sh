#!/bin/bash
#Read User's name and password from standard input.
read -p "user:"   user
read -s -p "Password:"  pass
useradd "$user"
echo "$pass" | passwd --stdin "$user"
