
#!/bin/bash
echo "Enter Folder Name Under which filename is to be renamed:";
read fname
//foldername
echo "Enter the File Name:";
read name1
//filename without extension
cd $fname
for x in *.png// Change extension as per your need
do n=${x/.png/.png};
mv $x $name1$n;
done


