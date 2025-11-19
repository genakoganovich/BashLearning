#!/bin/bash
read -r -p "Enter a file name: " file_name
if [[ "$file_name" == *.sh ]]; then
    echo "bash script"
elif [[ "$file_name" == *.txt ]]; then
    echo "text file"
else
    echo "unknown"
fi