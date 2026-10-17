#!/bin/bash
echo "=============================="
echo "Student Information"
echo "=============================="
echo "Name: Ramazan"
echo "Surname: Ospan"
echo "Group: IT2-2310"
echo "Student ID: 38045"
echo "=============================="
echo "System Information"
echo "=============================="
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname -s) $(uname -r)"
echo "Disk Usage:"
df -h / | tail -1
echo "Memory Usage:"
top -l 1 | grep PhysMem

if [ -f "Ospan_Ramazan_info.txt" ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi
