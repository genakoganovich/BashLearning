#!/bin/bash
for i in {01..05}; do
    mkdir -p "M$i"
    touch "M$i/file1.txt"
done
