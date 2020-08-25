#!/bin/bash

# Remove the telnet:// and change the colon before the port
# number to a space.
WIRE_STRING=$(echo $1 | sed -e 's/capture:\/\/192.168.0.64\///')

# Telnet to the remote session
ssh root@192.168.0.64 "tcpdump -s0 -i eth0 -w -" | wireshark -k -i -

# Don't close out the terminal unless we are done
read -p "Press a key to exit"
