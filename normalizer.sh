#!/bin/bash
mkdir -p normalized #creates directory if it doesn't exist
for file in raw_data/*.txt
do
    output="normalized/$(basename "$file")"
    head -n 1 "$file" > "$output"
    tail -n +2 "$file" | awk '{print $1 " " $2 " " $3/100}' >> "$output"
done

