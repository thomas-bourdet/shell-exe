#!/bin/bash


user="Thomas_PC"

log_files="/var/log/syslog"

current_time=$(date +"%d-%m-%Y-%H:%M")

folder="/home/debian/Shell.exe/Job08/Backup"
file="number_connection-$current_time"

confirmation="Logs Archive Successful"


touch "$folder/$file"

grep "$user" "$log_files" | wc -l >> "$folder/$file"

tar -czf "$folder/$file.tar.gz" "$folder/$file"

rm "$folder/$file" && echo $confirmation

