#!/bin/bash

# Disk Space Alert Script

THRESHOLD=90  # Set the disk usage threshold in percentage

# Check disk usage and send alert if threshold is exceeded
check_disk_space() {
    disk_usage=$(df -h / | awk '/\// {print $5}' | tr -d '%')
    
    if [ $disk_usage -gt $THRESHOLD ]; then
        echo "Disk usage is above the threshold of $THRESHOLD%."
        echo "Sending alert..."
        # Add code here to send an alert (e.g., email, notification)
    else
        echo "Disk usage is within the threshold."
    fi
}

# Main script
echo "Disk Space Alert"
echo "----------------"
check_disk_space

