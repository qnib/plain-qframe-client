#!/bin/bash

HOST=${HOST:-172.17.0.2}
PORT=${PORT:-11001}
LOG_LEVEL=${1:-INFO}
MSG=$2
if [[ "X${MSG}" == "X" ]];then
  MSG="My message is $(date)"
fi
msg="[${LOG_LEVEL}] ${MSG}"
echo "Send: $msg"
echo $msg |nc ${HOST} ${PORT}
