#!/bin/bash

echo "parent process.."

{
    sleep 2
    echo "child process.."
} &

sleep 2
