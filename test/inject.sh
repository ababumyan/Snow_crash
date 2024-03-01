#!/bin/bash

username="level00"
hostname="localhost"
port="4242"

# Function to display level00 tasks
level00_tasks() {
    echo "Welcome to Level 00! Complete tasks for this level with token: $token"
    # Add your level00 tasks here

    # Attempt to connect to level00 using ssh and run getflag command
    password=$token

    # Use expect to automate password input
expect <<EOF
    expect <<eof
    spawn bash -c ssh level00@localhost -p 4242
    set timeout 100
    expect "level00@localhost's password:" {send "level00\r"}
EOF
echo "Exit code: $?"
echo "Output: $output"
}

# Function to display level01 tasks
level01_tasks() {
    echo "Congratulations! You have passed Level 00."
    echo "Welcome to Level 01! Complete tasks for this level with token: $token"
    # Add your level01 tasks here

    # Attempt to connect to level01 using ssh and run getflag command
    # echo "$token" | ssh -p 4242 "level@$HOSTNAME" 'bash -s' <<< "getflag"
}

# Main script
echo "Enter your token:"
read token  # Use -s to hide input (password)

echo "Choose a level (level00, level01):"
read user_input

case "$user_input" in
    "level00")
        level00_tasks
        ;;
    "level01")
        level01_tasks
        ;;
    *)
        echo "Invalid level. Please choose either level00 or level01."
        exit 1
        ;;
esac
