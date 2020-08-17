#!/bin/bash
#copia arquivos para servidor de arquivos windows no azure
cd /backup_sw/data
sudo smbclient -U ihb.local/hepta.alexsandro.f //10.100.0.10/Backup-Servicos/ -c 'prompt ; cd /SWITCHES ; mput *201905*'

