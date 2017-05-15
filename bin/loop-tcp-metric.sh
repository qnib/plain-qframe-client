#!/bin/bash

HOST=${HOST:-172.17.0.2}
PORT=${PORT:-11001}
LOOP=${1:-1}
NAME=${2:-testmetric}

for x in $(seq 1 ${LOOP});do 
  msg="put ${NAME} $(date +%s) ${RANDOM} ${3}"
  echo "Send: $msg"
  echo $msg |nc ${HOST} ${PORT}
  sleep 2
done
