#!/bin/bash

CNT=${1:-5}
for x in $(seq 1 ${CNT});do
   echo "Log message No${x} at unixepoch $(date +%s)"
done
