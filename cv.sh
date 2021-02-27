#!/bin/bash
sleep 900
for e in {1..20}
do
echo "---> Site CV"
 ./youtube-dl -i https://www.youtube.com/playlist?list=PLu2eUnIxGDBaqd1WguzpLI2tQI62YFZg8 | tee /tmp/CV.txt
done
