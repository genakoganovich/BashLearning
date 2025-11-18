#!/bin/bash
readonly file="$1"
if [[ -f "$file" ]]; then
    echo "OK"
else
    echo "NO FILE"
fi