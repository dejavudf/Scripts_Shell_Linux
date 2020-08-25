sudo dpkg --list 'linux-image*'|awk '{ if ($1=="ii") print $2}'|grep -v `uname -r`
echo "Get image name and type command: sudo apt-get purge linux-image-X.Y.Z-H-generic"
