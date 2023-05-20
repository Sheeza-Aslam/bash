#!/bin/bash

echo "parent process.. $$"

child_process() {
    echo "child process.. $$"
    sleep 2
    echo "child process resumes after sleep"
}

if child_pid=$(bash -c 'child_process' &); then
    echo "parent process.. $$"
    sleep 2
    echo "parent process resumes after sleep"
else
    echo "failed to fork.."
    exit 1
fi

exit 0
