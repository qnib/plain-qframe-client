#!/bin/bash

HOST=${HOST:-172.17.0.2}
PORT=${PORT:-11001}
EVENT_CODE=${1:-001.001}
MSG=$2
if [[ "X${MSG}" == "X" ]];then
  MSG="My message is $(date)"
fi
echo "cee{\"msg\":\"${MSG}\", \"event_code\":\"${EVENT_CODE}\"}" |nc ${HOST} ${PORT}
