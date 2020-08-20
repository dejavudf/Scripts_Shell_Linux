#!/bin/sh
# On Azure attach data disk
azure_disk_tune () {
ls -l /dev/disk/by-id/ | grep -q sdc && (
echo o # Create a new empty DOS partition table
echo n # Add a new partition
echo p # Primary partition
echo 1 # Partition number
echo   # First sector (Accept default: 1)
echo   # Last sector (Accept default: varies)
echo w # Write changes
) | sudo fdisk /dev/sdc && (
mke2fs -F /dev/sdc1
echo /dev/sdc1  /opt    ext4    defaults,discard        0 0 >> /etc/fstab
mount /opt
)
}

uname -a | grep -q -- "-azure " && azure_disk_tune

#Modify /etc/ssh/sshd_config with: PermitRootLogin yes
sed -i -e "s/PermitRootLogin .*/PermitRootLogin yes/" /etc/ssh/sshd_config
wget -O - http://www.eve-ng.net/repo/eczema@ecze.com.gpg.key | sudo apt-key add -
apt-get update
apt-get -y install software-properties-common
#sudo add-apt-repository "deb [arch=amd64]  http://www.eve-ng.net/repo xenial main"
echo "deb [arch=amd64] http://www.eve-ng.net/repo xenial main" > /etc/apt/sources.list.d/eve-ng.list
apt-get update
#DEBIAN_FRONTEND=noninteractive apt-get -y docker-engine
DEBIAN_FRONTEND=noninteractive apt-get -y install eve-ng
/etc/init.d/mysql restart
DEBIAN_FRONTEND=noninteractive apt-get -y install eve-ng
rm -fr /var/lib/docker/aufs
DEBIAN_FRONTEND=noninteractive apt-get -y install eve-ng
cp /lib/firmware/bnx2/*.fw /lib/firmware/4.9.40-eve-ng-ukms-2+/bnx2/
# Detect cloud


gcp_tune () {
sed -i -e 's/NAME="ens.*/NAME="eth0"/' /etc/udev/rules.d/70-persistent-net.rules
sed -i -e 's/PasswordAuthentication.*/PasswordAuthentication yes/' /etc/ssh/sshd_config
mv /boot/vmlinuz-*gcp /root
update-grub2
}

azure_kernel_tune () {
apt update
apt install linux-image-4.20.17-eve-ng-azure+
echo "options kvm_intel nested=1 vmentry_l1d_flush=never" > /etc/modprobe.d/qemu-system-x86.conf
sed -i -e 's/PasswordAuthentication.*/PasswordAuthentication yes/' /etc/ssh/sshd_config
}


# GCP
uname -a | grep -q -- "-gcp " && gcp_tune

# Azure

uname -a | grep -q -- "-azure " && azure_kernel_tune
