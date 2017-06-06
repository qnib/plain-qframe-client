#!/bin/bash

HOST=${HOST:-172.17.0.2}
PORT=${PORT:-11001}
LOOP=${1:--1}
NAME=${2:-testmetric}
DELAY=${DELAY:-2}
MIN=${MIN:-1000}

trap exit INT

while [[ ${LOOP} != 0 ]]; do
  msg="put ${NAME} $(date +%s) $((${RANDOM}%${MIN}+${MIN})) ${3}"
  echo "Send: $msg"
  echo $msg |nc ${HOST} ${PORT}
  sleep ${DELAY}
  if [[ ${LOOP} > 0 ]];then
    LOOP=$(echo $((${LOOP}-1)))
  fi
done
