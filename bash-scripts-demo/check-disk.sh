#!/bin/bash

# you can use tail -n +2 to skip the first line (header) from the df output.
alert=20
backup_date=$(date +'%m/%d/%Y %H:%M:%S')
df -H | tail -n +2 | awk '{print $5 " " $1}' | while read output;
do
    # Extract usage percentage and filesystem name
    usage=$(echo $output | awk '{print $1}' | cut -d'%' -f1)
    file_sys=$(echo $output | awk '{print $2}')
    
    # Debugging output to check values
    # echo "Checking filesystem: $file_sys with usage: $usage%"   [add if needed]

    # Check if usage is greater than or equal to 70%, Adjust threshold for testing purposes
    if [ "$usage" -ge "$alert" ]; then  
        echo "CRITICAL for $file_sys on $backup_date"
    fi
done
