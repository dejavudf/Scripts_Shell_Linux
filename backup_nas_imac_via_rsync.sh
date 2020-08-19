#!/bin/bash
rsync -unvr --progress --no-perms --no-owner --no-group ./Documents/DOCUMENTOS/ root@172.16.0.254:/mnt/soho_storage/samba/shares/NAS128/DOCUMENTOS
