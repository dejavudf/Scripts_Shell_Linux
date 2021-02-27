#!/bin/bash
sleep 1300
for b in {1..20}
do 
echo "---> Site SS"
 ./youtube-dl -i https://www.youtube.com/playlist?list=PLqxm-RrKbwnQ4F_x7sDvTf4dPpDYk9-x7 | tee /tmp/SS.txt
done
