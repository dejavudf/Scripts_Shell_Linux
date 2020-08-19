#!/bin/bash

while ps aux | grep -v grep | grep -q httpd
do
    clear
    echo "      httpd运行状况:              "
    echo "----------------------------------"
    echo -e "\033[32mhttpd 正在运行中...\033[0m"
    echo "----------------------------------"
    sleep 0.5
done
    echo "httpd 被关闭"
