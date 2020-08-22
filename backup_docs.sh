#!/bin/bash
#rsync3 -av --progress --no-perms --no-owner --no-group ./Documents/DOCUMENTOS/ root@172.16.0.254:/mnt/soho_storage/samba/shares/NAS128/DOCUMENTOS
rsync3 -rtv --log-file=./rsync_log_nas.txt --progress --stats ./Documents/DOCUMENTOS/ root@192.168.0.254:/mnt/soho_storage/samba/shares/NAS/DOCUMENTOS
