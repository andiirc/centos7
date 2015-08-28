#!/bin/bash

if [ ! -f ${SETUP_RES_CONTAINER}/.root_pw ]; then
    /${SETUP_RES_CONTAINER}/set_root_pw.sh
fi

echo "run at "$(date +"%Y-%m-%d %k:%M:%S")

exec /usr/sbin/sshd -D


