#!/bin/bash

# Input number
echo "Enter number :"
read number

# Calculate square root
sqrt=$(echo "scale=2; sqrt($number)" | bc)

# Print the result
echo "Square root of $number is $sqrt"
