#!/bin/bash

# Read words from file into an array
mapfile -t words < "file.txt"

# Replace "n" with dot in each element of the array
for (( i=0; i<${#words[@]}; i++ )); do
  words[i]=${words[i]//n/.}
done

# Display the modified array with spaces between each name
echo "${words[@]}"

