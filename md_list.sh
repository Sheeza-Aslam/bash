#!/bin/bash

md_list() {
  local items=("$@")  # Store the function arguments in an array

  # Loop through each item in the array and generate the Markdown list
  for item in "${items[@]}"; do
    echo "- $item"
  done
}

# Example usage
my_array=("Item 1" "Item 2" "Item 3")

# Call the md_list function and pass the array as an argument
md_list "${my_array[@]}"
