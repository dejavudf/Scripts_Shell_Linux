#!/bin/bash
echo "Copiando pasta CISCO:"
sleep 5
rsync3 -rtv --log-file=./rsync_log_nas.txt --progress --stats ./Documents/CISCO/ nas@192.168.0.254:/mnt/soho_storage/samba/shares/NAS/CISCO
echo "Copiando pasta DOCUMENTOS:"
sleep 5
rsync3 -rtv --log-file=./rsync_log_nas.txt --progress --stats ./Documents/DOCUMENTOS/ nas@192.168.0.254:/mnt/soho_storage/samba/shares/NAS/DOCUMENTOS
echo "Copiando pasta FOTOS:"
sleep 5
rsync3 -rtv --log-file=./rsync_log_nas.txt --progress --stats ./Documents/FOTOS/ nas@192.168.0.254:/mnt/soho_storage/samba/shares/NAS/FOTOS
echo "Cópia finalizada."
