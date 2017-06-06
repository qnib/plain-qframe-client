#!/bin/bash

DELAY=${DELAY:-2}
LOOP=${1:--1}
CNT=${1:-5}
MSG=$2
trap exit INT

while [[ ${LOOP} != 0 ]]; do
  curl -s ${HOST}:8080/pi/$(((${RANDOM}%9999)*10))
  sleep ${DELAY}
  if [[ ${LOOP} > 0 ]];then
    LOOP=$(echo $((${LOOP}-1)))
  fi
done
