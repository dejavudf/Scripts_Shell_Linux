#!/bin/bash

read -p "您确定需要执行该操作吗(y|n)?" key
case $key in
[Yy]|[Yy][Ee][Ss])
    echo "注意:您选择的是yes.";;
[Nn]|[Nn][Oo])
    echo "您选择的是no.";;
*)
    echo "无效的输入";;
esac

