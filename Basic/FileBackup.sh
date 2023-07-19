#!/bin/bash

# File Backup Script

read -p "Enter the source Dir: " SOURCE_DIR
read -p "Enter the destnation Dir:" DEST_DIR # Specify the source directory
  # Specify the destination directory

# Backup files in the source directory to the destination directory
backup_files() {
    for file in $SOURCE_DIR/*; do
        if [ -f "$file" ]; then
            cp "$file" "$DEST_DIR"
            echo "File $file backed up successfully."
        fi
    done

    echo "Backup completed     ."
}

# Main script
echo "File Backup Script"
echo "------------------"
backup_files

