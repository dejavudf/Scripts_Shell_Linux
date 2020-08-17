#!/bin/bash
#Script de Backup do banco de dados do NAV
cd /backup_nav
#dt=$(date '+%d%m%Y');
dt=$(date '+%Y%m%d');
echo Starting NAV Database Backup...Wait...
navpgdump --only-open-arp --only-open-cam > /tmp/$dt-navdata_base.sql
navpgdump > /tmp/$dt-navdata_full.sql
tar -cvf /backup_nav/$dt-navdata_base.tar /tmp/$dt-navdata_base.sql
tar -cvf /backup_nav/$dt-navdata_full.tar /tmp/$dt-navdata_full.sql
rm -rf /tmp/$dt-navdata_base.sql
rm -rf /tmp/$dt-navdata_full.sql 
cd /backup_nav
smbclient -U user@domain%password //ip_hostname/nav -c 'put "'$dt'-navdata_base.tar"'
smbclient -U user@domain%password //ip_hostname/nav -c 'put "'$dt'-navdata_full.tar"'

