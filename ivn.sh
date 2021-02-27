#!/bin/bash
sleep 1100
for c in {1..20}
do
echo "---> Site IVN"
 ./youtube-dl -i https://www.youtube.com/playlist?list=PLaBzv3mcHzDALK-DoarPFzb2dzu0UuE4A | tee /tmp/IVN.txt
done
