#!/bin/bash

echo "OS Version:"
cat /etc/os-release | grep "PRETTY_NAME" | cut -d "\"" -f 2

echo

echo "Users with bash shell:"
cat /etc/passwd | grep "/bin/bash" | cut -d ":" -f 1

echo

echo "Open Ports:"
netstat -tuln