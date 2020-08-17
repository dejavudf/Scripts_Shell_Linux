#!/bin/bash
#copia arquivos para servidor de arquivos windows
cd /backup_fw/data
sudo smbclient -U domain/user //ip_hostname/Backup-Servicos/ -c 'prompt ; cd /FIREWALLS ; mput *201905*'
