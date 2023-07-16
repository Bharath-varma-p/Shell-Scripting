<<command
    Write a shell script that takes a file name as 
    input and checks if the file exists. If it exists,
     make a copy of the file in a backup directory.
     If it doesn't exist, display an error message.
command


echo "Enter the file name:"
read file_name

# Check if the file exists
if [ -f "$file_name" ]; then
    backup_dir="backup"
    # Create the backup directory if it doesn't exist
    mkdir -p "$backup_dir"
    
    # Create a timestamp for the backup file
    timestamp=$(date +"%Y%m%d%H%M%S")
    
    # Create the backup file name
    backup_file="$backup_dir/$file_name.$timestamp"
    
    # Copy the file to the backup directory
    cp "$file_name" "$backup_file"
    
    echo "File $file_name copied to $backup_file."
else
    echo "Error: File $file_name does not exist."
fi
