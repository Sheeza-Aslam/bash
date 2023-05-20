#!/bin/bash

echo "parent process.. $$"

if child_pid=$(fork); then
    if [ "$child_pid" -eq 0 ]; then
        echo "child process.. $$"
    fi
else
    echo "failed to fork.."
    exit 1
fi

sleep 2

if [ "$child_pid" -eq 0 ]; then
    echo "child process resumes after sleep"
else
    echo "parent process resumes after sleep"
fi

exit 0
