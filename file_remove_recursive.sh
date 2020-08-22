
#!/bin/bash
echo "Enter Folder Name under which you want to remove files:";
read fname
echo "Enter the pattern to remove (for eg, if swap files give as *~ else if thumbs.db give as Thumbs.db)";
read name1
echo "Total Count of files found on the pattern" $name1;
find $fname -type f -name "$name1" | xargs wc -l
find $fname -type f -name "$name1" -exec rm {} \;


