#!/bin/bash

set -u
useradd $1
echo "$2" | passwd --stdin $1
