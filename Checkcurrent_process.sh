<<command
    Write a shell script that prompts the user for a process name and checks 
    if the process is currently running. 
    If it is running, display its process ID (PID). If it is not running,
     start the process.
command



echo "Please enter the process name I will check it for you if it is runnig or not:"
read -r process_name

# Check if the process is running
if pgrep "$process_name" >/dev/null; then
    echo "$process_name is already running with PID $(pgrep "$process_name")."
else
    echo "$process_name is not currently running. Starting $process_name..."
    
    # Start the process
    "$process_name" &
    
    echo "$process_name started with PID $!"
fi
