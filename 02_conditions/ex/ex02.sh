#!/bin/bash
readonly SHIRAZ_NAME="Shiraz"
read -r -p "Enter name: " name
if [[ "$name" == "$SHIRAZ_NAME" ]]; then
    echo "Welcome!"
else
    echo "Access denied"
fi
