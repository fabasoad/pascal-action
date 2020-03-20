#!/bin/sh -l
# while true; do sleep 30; done;
fpc "$1"
result=$(${1%.*})
echo ::set-output name=result::"$result"