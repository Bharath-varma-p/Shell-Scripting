#!/bin/bash

# File Management Script

# Function to create a file
create_file() {
    read -p "Enter file name: " filename

    # Create an empty file
    touch $filename

    echo "File $filename created successfully."
}

# Function to copy a file
copy_file() {
    read -p "Enter source file name: " source
    read -p "Enter destination file name: " destination

    # Copy the file
    cp $source $destination

    echo "File $source copied to $destination successfully."
}

# Function to delete a file
delete_file() {
    read -p "Enter file name to delete: " filename

    # Delete the file
    rm $filename

    echo "File $filename deleted successfully."
}

# Main menu
while true; do
    echo
    echo "File Management Script"
    echo "----------------------"
    echo "1. Create File"
    echo "2. Copy File"
    echo "3. Delete File"
    echo "4. Exit"
    read -p "Enter your choice (1-4): " choice

    case $choice in
        1) create_file;;
        2) copy_file;;
        3) delete_file;;
        4) exit;;
        *) echo "Invalid choice. Please try again.";;
    esac
done
