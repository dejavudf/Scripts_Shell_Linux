#!/bin/bash
#eve-ng labs backup scripts
cd /tmp
dt=$(date '+%Y%m%d');
echo Starting Backup...Wait...
tar -czvf /tmp/"$dt"_bcklabs.tar /opt/unetlab/labs/
mount -a
mv -f /tmp/"$dt"_bcklabs.tar /eve/bcklabs/
 

