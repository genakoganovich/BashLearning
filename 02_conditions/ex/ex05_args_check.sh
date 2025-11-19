#!/bin/bash
if (( $# != 2 )); then
  echo "Usage: $0 num1 num2"
  exit 1
fi

# Если аргументов нет — выводим ошибку
if (( $# == 0 )); then
    echo "No arguments provided"
    exit 1
fi

# Проверяем каждый аргумент в цикле
for arg in "$@"; do
    if ! [[ $arg =~ ^-?[0-9]+$ ]]; then
        echo "Argument '$arg' is not an integer"
        exit 1
    fi
done

if (( $1 > $2 )); then
  echo "first bigger"
elif (( $1 < $2 )); then
  echo "second bigger"
else
  echo "equal"  
fi