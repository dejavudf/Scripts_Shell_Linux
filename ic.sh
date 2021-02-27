#!/bin/bash
sleep 1000
for a in {1..20}
do
echo "---> Site IC"
./youtube-dl -i https://www.youtube.com/playlist?list=PL9En-ULMgPslsYWbeYDmS8BywQfURi0Mt | tee /tmp/IC.txt 
done
