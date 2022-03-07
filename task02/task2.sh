#!/bin/bash
for file in ./{2010..2017}/{01..12}/{001..003};
do
    mkdir -p "$(dirname $file)" && echo "File $(echo $file | cut -d'/' -f4)" > "$file.txt"
done
