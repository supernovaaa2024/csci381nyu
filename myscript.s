#!/bin/bash
IDS=($(cut -d " " -f1 names.txt))
NAMES=($(cut -d " " -f2 names.txt))
echo "${IDS[@]}"
echo "Script name: $0"
echo "First arg: $1, Second arg: $2"
mkdir -p ./students
for idx in "${!IDS[@]}"
do
    touch "./students/${IDS[$idx]}_${NAMES[$idx]}.txt"
done
for arg in "$@"; do
    echo "$arg"
done

