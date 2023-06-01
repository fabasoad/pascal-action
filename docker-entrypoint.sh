#!/usr/bin/env bash
fpc "$1"
result=$(${1%.*})
echo "result=${result}" >> "$GITHUB_OUTPUT"
