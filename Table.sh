#!/bin/bash

# CHECKING THAT THE NUMBER IS VALID OR NOT
if ! [[ $1 =~ ^[0-9]+ ]]
then
    echo "Enter a valid number"
    exit 1
fi

# VARIABLE TO BE MULTIPLIED BY USER INPUT
multiplier=1

# LOOP TO PRINT THE TABLE
while [[ $multiplier -lt 11 ]]
do
    echo "$1 X $multiplier = $(($1*$multiplier))"
    ((multiplier++))
done