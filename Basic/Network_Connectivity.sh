#!/bin/bash

# Network Connectivity Test Script

# Function to check internet connectivity
check_internet_connectivity() {
    ping -c 3 www.google.com > /dev/null 2>&1

    if [ $? -eq 0 ]; then
        echo "Internet connection is active."
    else
        echo "No internet connection."
    fi
}

# Function to check host connectivity
check_host_connectivity() {
    read -p "Enter hostname or IP address to check connectivity: " host

    ping -c 3 $host > /dev/null 2>&1

    if [ $? -eq 0 ]; then
        echo "Host $host is reachable."
    else
        echo "Host $host is not reachable."
    fi
}

# Main menu
while true; do
    echo
    echo "Network Connectivity Test"
    echo "-------------------------"
    echo "1. Check Internet Connectivity"
    echo "2. Check Host Connectivity"
    echo "3. Exit"
    read -p "Enter your choice (1-3): " choice

    case $choice in
        1) check_internet_connectivity;;
        2) check_host_connectivity;;
        3) exit;;
        *) echo "Invalid choice. Please try again.";;
    esac
done
