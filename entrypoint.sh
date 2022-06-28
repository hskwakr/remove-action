#!/bin/sh -l

# Remove selected files in a directory
# Used in GitHub Action

# $1 The dir path to remove files
# $2 Newline-delimited list of paths

# Make "new line" the delimiter so "for loop" will loop over each line instead over each word.
# Default value for IFS is space and tab so it would loop over each word instead over each line.
IFS='
'

for file in $(ls $1)
do
  echo $file
done

# Determine the file is in $2
