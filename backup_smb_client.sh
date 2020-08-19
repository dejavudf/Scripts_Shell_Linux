cd /backup_sw/data
sudo smbclient -U ihb.local/hepta.alexsandro.f //10.100.0.10/Backup-Servicos/ -c 'prompt ; cd /SWITCHES ; mput *201904*'
cd /backup_fw/data
sudo smbclient -U ihb.local/hepta.alexsandro.f //10.100.0.10/Backup-Servicos/ -c 'prompt ; cd /FIREWALLS ; mput *201904*'



