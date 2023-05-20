#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename="$1"

if ! fd=$(exec 3< "$filename"); then
    echo "failed to open $filename for reading"
    exit 1
fi

while IFS= read -r -u "$fd" line || [ -n "$line" ]; do
    echo "$line"
done

exec 3<&-

exit 0
