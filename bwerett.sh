#!/bin/bash

curl -s https://raw.githubusercontent.com/duongpokeeeeee/addfsccx/refs/heads/main/b -o data.txt

MIN=$1
MAX=$2
while true; do
    if [ -z "$MAX" ]; then
        python3 python_learning.py "$MIN"
    else
        python3 python_learning.py "$MIN","$MAX"
    fi
    sleep 15
done
