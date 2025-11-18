#!/bin/bash
readonly regex='^[0-9]+$'
read -r -p "Enter a number: " num

if [[ $num =~ $regex ]]; then
    echo "OK"
else
    echo "NO"
fi
