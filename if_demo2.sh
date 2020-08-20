#!/bin/bash


if grep -q AMD /proc/cpuinfo; then
echo "AMD CPU"
fi
if grep -q Intel /proc/cpuinfo; then
echo "Intel CPU"
fi

