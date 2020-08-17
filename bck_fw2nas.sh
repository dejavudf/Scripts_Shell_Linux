#!/bin/bash
#copia arquivos para servidor de arquivos windows no azure
cd /backup_fw/data
sudo smbclient -U ihb.local/hepta.alexsandro.f //10.100.0.10/Backup-Servicos/ -c 'prompt ; cd /FIREWALLS ; mput *201905*'
