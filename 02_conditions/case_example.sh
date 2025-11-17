#!/bin/bash
read -p "Enter a fruit (apple/orange/banana): " fruit
case $fruit in
    apple) echo "You chose apple";;
    orange) echo "You chose orange";;
    banana) echo "You chose banana";;
    *) echo "Unknown fruit";;
esac
