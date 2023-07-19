#!/bin/bash

# Display system information
echo "System Information:"
echo "-------------------"
echo "Hostname: $(hostname)"
echo "Kernel Version: $(uname -r)"
echo "Processor: $(uname -p)"
echo "Memory: $(free -h | awk '/^Mem:/ {print $2}')"
echo "Disk Usage: $(df -h )"
