#!/bin/bash
dt=$(date '+%d%m%Y');
echo Pinging Host...Wait...
cat ./ping.txt |  while read output
do
nohup ping -DO -c $1 $output > ./results/$output"_"$dt.txt &
	echo Starting Next Host...Wait... 
done
