#!/bin/bash

if [ $# -eq 0 ];then
    echo "A ejecutar el main"
    python /code/main.py & pid=$!
    wait $pid
else
    echo "A ejecutar el second"
    python /code/second.py & pid=$!
    wait $pid
fi
