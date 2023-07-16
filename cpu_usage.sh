<<command
    Write a shell script that collects 
    system information such as CPU usage, 
    memory usage, and disk space utilization 
    and displays it in a formatted manner.
command



# Get CPU usage
cpu_usage=$(top -l 1 | grep "CPU usage" | awk '{print $3}')

# Get memory usage
memory_usage=$(top -l 1 | grep PhysMem | awk '{print $2}')

# Get disk space utilization
disk_utilization=$(df -h / | awk 'NR==2 {print $5}')

# Display system information
echo "System Information:"
echo "-------------------"
echo "CPU Usage: $cpu_usage"
echo "Memory Usage: $memory_usage"
echo "Disk Space Utilization: $disk_utilization"




