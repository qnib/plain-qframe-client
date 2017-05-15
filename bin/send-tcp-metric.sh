#!/bin/bash

HOST=${HOST:-172.17.0.2}
PORT=${PORT:-11001}
NAME=${1:-testmetric}
if [[ "X${2}" == "X" ]];then
  VALUE=${RANDOM}
fi

msg="put ${NAME} $(date +%s) ${VALUE} ${3}"
echo "Send: $msg"
echo $msg |nc ${HOST} ${PORT}
