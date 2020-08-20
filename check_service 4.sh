#!/bin/bash

date_time=$(date +'%Y-%m-%dT%H:%M:%S%z')

function check_services() {
    for i in "$@"
    do
        if systemctl --quiet is-active ${i}.service; then
            echo -e "[$date_time)]: \033[92mservice $i is active\033[0m"
        else
            echo "[$date_time]: service $i is not active" >&2
        fi
    done
}

check_services httpd sshd vsftpd
