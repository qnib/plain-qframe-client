#!/bin/bash

trap "exit" SIGTERM SIGKILL

DELAY=${DELAY:-2}
CNT=${1:-5}
NAME=${2:-testTimer}
for x in $(seq 1 ${CNT});do
   MSG="${NAME}:${RANDOM}|ms"
   send-tcp-msg.sh ${MSG}
   sleep ${DELAY}
done
