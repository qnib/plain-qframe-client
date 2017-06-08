#!/bin/bash

trap exit INT

DELAY=${DELAY:-2}
LOG_LEVEL=${1:-INFO}
LOOP=${2:--1}
trap exit INT

cnt=1
while [[ true ]]; do
  echo "[${LOG_LEVEL}] Log message No${cnt} at unixepoch $(date +%s)"
  if [[ ${LOOP} > 0 ]];then
    LOOP=$(echo $((${LOOP}-1)))
    if [[ ${LOOP} == 0 ]];then
      break
    fi
  fi
  sleep ${DELAY}
  cnt=$((${cnt}+1))
done
