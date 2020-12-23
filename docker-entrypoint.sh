#!/bin/sh -l
fpc "$1"
result=$(${1%.*})
echo ::set-output name=result::"$result"