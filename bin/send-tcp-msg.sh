#!/bin/bash

HOST=${HOST:-172.17.0.2}
PORT=${PORT:-11001}
MSG=$1
if [[ "X${MSG}" == "X" ]];then
  MSG="My message is $(date)"
fi
msg="${MSG}"
echo "Send: $msg"
echo $msg |nc ${HOST} ${PORT}
