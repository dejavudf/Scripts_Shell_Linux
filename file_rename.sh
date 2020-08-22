
#!/bin/sh
#string to be replaced in the filename - argument 1 val1=$1 #to be replaced with - argument 2 val2=$2
for filename in ./* do
if [ ! -d "$filename" ]; then
#sed 's/sd/tt/g' tarnn.txt > temp; mv temp tarnn.txt
var3=`echo $filename | sed -e "s;$val1;$val2;g"`
mv $filename $var3 fi


