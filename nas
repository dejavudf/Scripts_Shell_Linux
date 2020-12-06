#!/bin/bash
#umount /mnt/soho_storage/samba/shares/MIDIA
#umount /mnt/soho_storage/samba/shares/PUB
#umount /mnt/soho_storage/samba/shares/NAS
sleep 2
mkdir /home/nas
sleep 2
mkdir /home/nas/.ssh
sleep 2
cp /etc/authorized_keys /home/nas/.ssh
sleep 2
ln -s /mnt/soho_storage/samba/shares/NAS /NAS
sleep 2
ln -s /mnt/soho_storage/samba/shares/PUB /PUB
sleep 2
ln -s /mnt/soho_storage/samba/shares/MEDIA /MEDIA
sleep 2
chown -R nas:1001 /home/nas
sleep 2
groupadd -g 1001 nas
addgroup -q nas
echo 'nas:x:1001:' >> /etc/group

