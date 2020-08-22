#!/bin/bash

read -p "Enter the URL : " url 
read -p "Enter the text : " text

wget "$url" --no-check-certificate --timeout=30 --tries=3 --retry-connrefused -O - 2>/dev/null | grep "$text" -q 

if [ $? -eq 0 ]
then
   echo "Found text $text on URL $url, site is OK"
   exit 0
else
   echo "Cannot find text $text on URL $url, site is NOT OK"
   exit 1
fi
