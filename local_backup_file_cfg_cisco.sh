
#!/bin/bash
#Script de Backup das configuracoes dos switches
cd /backup_sw
#dt=$(date '+%d%m%Y');
dt=$(date '+%Y%m%d');
tar -cvf sw_cisco_$dt.tar /tftp/backup_sw_cisco/*-*-*
rm -rf /tftp/backup_sw_cisco/*-*-*
mv -f /backup_sw/sw_cisco_$dt.tar /backup_sw/data
 

