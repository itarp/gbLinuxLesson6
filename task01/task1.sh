#!/bin/bash
if [ -z "$2" ]
then
    echo no 2 arguments
    echo example: ./transf file_in file_out
    exit 1
fi
sed /^$/d "$1" | sed 's/[a-z]/\U&/g' > "$2"
