#!/bin/bash

# System Resource Monitoring Script

# Function to monitor CPU usage (Linux)
monitor_cpu_linux() {
    cpu_usage=$(top -bn1 | awk '/%Cpu/ {print $2}')
    echo "CPU Usage: $cpu_usage%"
}

# Function to monitor CPU usage (macOS)
monitor_cpu_macos() {
    cpu_usage=$(top -l 1 -s 0 | awk '/CPU usage/ {print $3}' | tr -d '%')
    echo "CPU Usage: $cpu_usage%"
}

# Function to monitor memory usage (Linux)
monitor_memory_linux() {
    memory_usage=$(free -m | awk '/Mem/ {printf "%.2f", $3/$2 * 100}')
    echo "Memory Usage: $memory_usage%"
}

# Function to monitor memory usage (macOS)
monitor_memory_macos() {
    memory_usage=$(top -l 1 -s 0 | awk '/PhysMem/ {printf "%.2f", $8/$2 * 100}')
    echo "Memory Usage: $memory_usage%"
}

# Function to monitor disk usage (Linux)
monitor_disk_linux() {
    disk_usage=$(df -h / | awk '/\// {print $5}')
    echo "Disk Usage: $disk_usage"
}

# Function to monitor disk usage (macOS)
monitor_disk_macos() {
    disk_usage=$(df -h / | awk '/\// {print $9}')
    echo "Disk Usage: $disk_usage"
}

# Main script
echo "System Resource Monitoring"
echo "--------------------------"

# Check the operating system and call the appropriate monitoring functions
case "$(uname)" in
    Linux*)  # For Linux systems
        monitor_cpu_linux
        monitor_memory_linux
        monitor_disk_linux
        ;;
    Darwin*)  # For macOS systems
        monitor_cpu_macos
        monitor_memory_macos
        monitor_disk_macos
        ;;
    *) echo "Unsupported operating system.";;
esac
