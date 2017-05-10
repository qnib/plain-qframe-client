#!/bin/bash

DELAY=${DELAY:-2}
CNT=${1:-5}
for x in $(seq 1 ${CNT});do
   echo "Log message No${x} at unixepoch $(date +%s)"
   sleep ${DELAY}
done
