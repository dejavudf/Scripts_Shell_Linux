#!/bin/sh

OLDSTRING="string to be replaced"
NEWSTRING="String to be replaced with"
FOLDERPATH="/opt/lampp/htdocs/test/shell/*.php"
NEWFOLDERPATH="/opt/lampp/htdocs/test/shell-test/"
[ ! -d $NEWFOLDERPATH ] && mkdir -p $NEWFOLDERPATH || :
for f in $FOLDERPATH
doecho $ffname=`basename $f`
sed "s#$OLDSTRING#$NEWSTRING#g" "$f" > "$NEWFOLDERPATH""$fname"
echo $fname
done
# OLDSTRING
- String to be replaced #
# NEWSTRING
- String to be replaced with OLDSTRING #
# FOLDERPATH
- Folder path with files #
# NEWFOLDERPATH- Result folder with replaced strings in all files #



