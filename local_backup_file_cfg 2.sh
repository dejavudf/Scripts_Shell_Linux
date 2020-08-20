#!/bin/bash
#Script de Backup das configuracoes arquivo local cfg
cd /backup_fw
#dt=$(date '+%d%m%Y');
dt=$(date '+%Y%m%d');
echo Starting Backup...Wait...
tar -cvf fw_$dt.tar /tftp/backup.cfg
rm -rf /tftp/backup.cfg
mv -f /backup_fw/fw_$dt.tar /backup_fw/data
 

