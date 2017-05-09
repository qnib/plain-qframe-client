#!/bin/bash

HOST=${HOST:-172.17.0.2}
PORT=${PORT:-11001}
EVENT_CODE=${1:-001.001}
DATA=${2}
if [[ "X${DATA}" == "X" ]];then
  DATA=$(date)
fi
echo "cee{\"data\":\"${DATA}\", \"event_code\":\"${EVENT_CODE}\"}" |nc ${HOST} ${PORT}
