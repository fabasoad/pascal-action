#!/bin/sh -l
result=$(fpc "$1")
echo ::set-output name=result::"$result"