#!/bin/bash

trap "exit" SIGHUP SIGINT SIGTERM

HOST=${HOST:-172.17.0.1}
CNT=${1:-10}
for x in $(seq 1 ${CNT});do 
    delay=$(((${RANDOM}%100)*100))
    padDelay=$(seq -f "%04g" ${delay} ${delay})
    msg="delay:${delay}|ms"
	echo "Send: $msg to ${HOST} && sleep 0.${padDelay}"
    echo $msg |nc -w1 -u ${HOST} 8125 
    sleep 0.${padDelay}
done
