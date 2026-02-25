#!/bin/bash

# Question 3: Cleaning Error Logs (clean_logs.sh)

# Write a shell script called: clean_logs.sh

# that:

# Extracts only lines containing ERROR

# Saves them into a new file called: error_logs.txt

# After running the script, error_logs.txt should contain only ERROR lines

#!/bin/bash

# Grep looks for "ERROR" in the input file ($1)
# > redirects the output to a new file named error_logs.txt

grep "ERROR" "$1" > error_logs.txt

echo "Saved ERROR lines to error_logs.txt"

