#!/bin/bash

# Log File Analysis Script

LOG_FILE="/path/to/log/file.log"  # Specify the path to your log file

# Function to analyze log file
analyze_log_file() {
    read -p "Enter search keyword: " keyword

    echo "Occurrences of '$keyword' in the log file:"
    grep -i "$keyword" "$LOG_FILE"
}

# Main script
echo "Log File Analysis"
echo "-----------------"
analyze_log_file

