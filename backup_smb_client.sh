cd /backup_sw/data
sudo smbclient -U domain/user //ip_hostname/Backup-Servicos/ -c 'prompt ; cd /SWITCHES ; mput *201904*'
cd /backup_fw/data
sudo smbclient -U domain/user //ip_hostname/Backup-Servicos/ -c 'prompt ; cd /FIREWALLS ; mput *201904*'



