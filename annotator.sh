#!/bin/bash
mkdir -p labeled
for file in normalized/*.txt
do
    output="labeled/$(basename "$file")"

    awk '
    NR==1 {
        print "id name score quality"
        next
    }
    {
        if ($3 < 0.5)
            quality = "Low"
        else if ($3 > 0.5)
            quality = "High"
        else
            quality = "Good"

        print $1, $2, $3, quality
    }
    ' "$file" > "$output"
done
