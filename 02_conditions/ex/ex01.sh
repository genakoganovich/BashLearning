#!/bin/bash
read -r -p "Enter number: " n
if (( n > 100 )); then
    echo "big"
else
    echo "small"
fi
