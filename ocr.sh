#!/bin/bash
sleep 1200
for d in {1..20}
do
echo "---> Site OCR"
./youtube-dl -i https://www.youtube.com/playlist?list=PLR8KQrarkFdGmXIzEmxp1uWyuMd_k4Lbb | tee /tmp/OCR.txt
done
