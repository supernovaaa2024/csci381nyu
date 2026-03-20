#!/bin/bash

# --- BASH SPECIAL VARIABLES ---

# $0: Name of the script
echo "Running script: $0"

# $#: Number of arguments (Check if user provided exactly 1 argument)
if [ $# -ne 1 ]; then
    echo "Error: Expected 1 argument, but got $#."
    echo "Usage: $0 filename"
    exit 1 # $?: This will set the exit status to 1
fi

# $1: The first argument (the filename)
FILE=$1

echo "Analyzing file: $FILE"

# --- AWK BUILT-IN VARIABLES ---

# We pass the filename ($1 from Bash) into awk
awk '
BEGIN { 
    print "Line# | Total Fields | Last Word"
    print "---------------------------------"
}
{
    # NR: Number of Records (Current Line Number)
    # NF: Number of Fields (Total columns in this line)
    # $NF: Content of the last field
    print "Line " NR " | Fields: " NF " | Last: " $NF
}
END {
    print "---------------------------------"
    print "Processing complete."
}' $FILE

# $?: Check if the awk command succeeded
if [ $? -eq 0 ]; then
    echo "Success!"
else
    echo "Something went wrong during processing."
fi