# Question 1: Counting a Specific Message (count_message.sh) 

# Write a shell script called: count_message.sh

# that:

# Takes a filename and a message as arguments

# Counts how many times that message appears in the file

# Example usage for : "Disk full"

# Expected output format: The message "Disk full" appears X times.
#!/bin/bash

filename="$1"
message="$2"
count=$(grep -c "$message" "$filename")