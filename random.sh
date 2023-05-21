#!/bin/bash


random_number=$((RANDOM % 100 + 1))

# If the random number is 1, then print "It's a lucky day!".
if [ $random_number -eq 1 ]; then
  echo "It's a lucky day!"
else
  echo "Sorry, no luck today."
fi
