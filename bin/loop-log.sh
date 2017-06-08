#!/bin/bash

trap exit INT

DELAY=${DELAY:-2}
LOG_LEVEL=${2:-INFO}
CNT=${1:-5}
for x in $(seq 1 ${CNT});do
   echo "[${LOG_LEVEL}] Log message No${x} at unixepoch $(date +%s)"
   sleep ${DELAY}
done
