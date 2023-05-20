#!/bin/bash

hostname_file="/proc/sys/kernel/hostname"

if [[ ! -f "$hostname_file" ]]; then
    echo "Failed to open $hostname_file"
    exit 1
fi

hostname=$(<"$hostname_file")

echo "Hostname: $hostname"

exit 0


