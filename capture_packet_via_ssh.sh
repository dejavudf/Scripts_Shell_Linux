sudo ssh root@192.168.0.64 "tcpdump -s0 -i eth0 -w -" | sudo wireshark -k -i -
