#!/bin/bash
if (( $1 > $2 )); then
  echo "first bigger"
elif (( $1 < $2 )); then
  echo "second bigger"
else
  echo "equal"  
fi