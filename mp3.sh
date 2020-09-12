#!/bin/bash
echo "Enviando Arquivos MP3 para iMAC. Aguarde...:"
rsync3 -rtv --log-file=./rsync_log_nas.txt --progress --stats ubuntu@192.168.0.251:/home/ubuntu/MP3-youtube/*.mp3 ./Documents/DOCUMENTOS/MP3-youtube
echo "Cópia finalizada."
