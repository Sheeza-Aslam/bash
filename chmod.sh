#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "$0 <filename>"
    exit 1
fi

filename="$1"

if ! chmod u=rwx,g=rx,o=r "$filename"; then
    echo "Failed to chmod [$filename]"
    exit 1
fi

exit 0


