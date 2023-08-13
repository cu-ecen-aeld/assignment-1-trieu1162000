#!/bin/bash

# Check if the required arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi

writefile="$1"
writestr="$2"

# Create the directory path if it doesn't exist
dir_path=$(dirname "$writefile")
mkdir -p "$dir_path"

# Attempt to write the content to the file
echo "$writestr" > "$writefile"

# Check if the write operation was successful
if [ $? -ne 0 ]; then
    echo "Error: Could not write to $writefile."
    exit 1
fi

echo "Content written to $writefile."
