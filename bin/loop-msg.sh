#!/bin/bash

DELAY=${DELAY:-2}
CNT=${1:-5}
MSG=$2
for x in $(seq 1 ${CNT});do
   send-tcp-msg.sh ${MSG}
   sleep ${DELAY}
done
