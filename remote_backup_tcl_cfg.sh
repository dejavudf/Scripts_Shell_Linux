#!/bin/bash
#Script de Backup das configuracoes dos switches via telnet
cd /backup_sw
#dt=$(date '+%d%m%Y');
dt=$(date '+%Y%m%d');
echo Starting Backup...Wait...
cat /backup_sw/ips_list.txt |  while read output
do
expect sw_get_backup $output | tee -a /backup_sw/results/$dt"_"$1.txt
	clear
	echo Starting Next Host...Wait... 
done
tar -cvf sw_$dt.tar /tftp/sw*.cfg
rm -rf /tftp/sw*.cfg
mv -f /backup_sw/sw_$dt.tar /backup_sw/data
 

