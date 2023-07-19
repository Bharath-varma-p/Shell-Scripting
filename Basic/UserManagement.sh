#!/bin/bash

# User Management Script

# Function to add a user
add_user() {
    read -p "Enter username: " username
    read -p "Enter password: " password

    # Create user with password
    useradd -m -p $(openssl passwd -1 $password) $username

    echo "User $username created successfully."
}

# Function to delete a user
delete_user() {
    read -p "Enter username to delete: " username

    # Delete user
    userdel -r $username

    echo "User $username deleted successfully."
}

# Function to list all users
list_users() {
    echo "List of Users:"
    echo "--------------"
    awk -F':' '{ print $1 }' /etc/passwd
}

# Main menu
while true; do
    echo
    echo "User Management Script"
    echo "----------------------"
    echo "1. Add User"
    echo "2. Delete User"
    echo "3. List Users"
    echo "4. Exit"
    read -p "Enter your choice (1-4): " choice

    case $choice in
        1) add_user;;
        2) delete_user;;
        3) list_users;;
        4) exit;;
        *) echo "Invalid choice. Please try again.";;
    esac
done
