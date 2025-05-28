#!/bin/bash
MIN=$1
URL="https://api.npoint.io/c42052220f3a30904017"

curl -s "$URL" | jq -r 'to_entries | map("\(.key)=\(.value)") | .[]' > data.txt
while true; do
    python3 main.py $MIN --dataset=data.txt --output=result.txt
    sleep 30
done
