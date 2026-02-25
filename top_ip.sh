# Question 2: Most Frequent IP Address (top_ip.sh)

# Write a shell script called: top_ip.sh

# that:

# Finds the most frequent IP address in the log file

# Prints the IP address 

# Expected output: The most frequent IP address is: 67.159.9.83

# Important Note:
# In mock_logs.txt, each IP appears only once, so there is no true “most frequent” IP.

# To make this question meaningful for testing, use mock_logs_practice.txt, which contains one IP repeated 3 times.

# For this question, You should test your script on mock_logs_practice.txt.

#!/bin/bash
filename="mock_logs_practice.txt"

top_ip = $(awk '{print $3}' "$1" | sort | uniq -c | sort -nr | head -1 | awk "{print $2}")