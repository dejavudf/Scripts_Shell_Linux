Search and replace text inside files (linux and Mac OS X):

MAC OS X:
find ./ -type f -exec sed -i '' -e "s/GigabitEthernet1/eth0\/0/" {} \;
find /home/hepta.alexsandro.f@ihb.local/.config/ -type f -exec grep -H '/home/alexsandro' {} \;

Linux:
find /home/hepta.alexsandro.f@ihb.local/.config/ -type f -exec sed -i "s/\/home\/alexsandro/\/home\/hepta.alexsandro.f@ihb.local/" {} \;
find /home/hepta.alexsandro.f@ihb.local/.config/ -type f -exec grep -H '/home/alexsandro' {} \;
