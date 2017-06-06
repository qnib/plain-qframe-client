#!/bin/bash

DELAY=${DELAY:-2}
CNT=${1:-5}
MSG=$2
for x in $(seq 1 ${CNT});do
   curl ${HOST}:8080/pi/$(((${RANDOM}%9999)*10))
   sleep ${DELAY}
done
