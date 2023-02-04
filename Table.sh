#!/bin/bash

# GETTING USER INPUT
read -p "Enter a number to display its table " num

# CHECKING THAT THE NUMBER IS VALID OR NOT
if ! [[ $num =~ ^[0-9]+ ]]
then
    echo "Enter a valid number"
    exit 1
fi

# VARIABLE TO BE MULTIPLIED BY USER INPUT
multiplier=1

# LOOP TO PRINT THE TABLE
while [[ $multiplier -lt 11 ]]
do
    echo "$num X $multiplier = $(($num*$multiplier))"
    ((multiplier++))
done