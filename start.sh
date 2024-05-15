#!/bin/bash


# Find the latest Minecraft session number
latest_session=$(tmux ls -F '#{session_name}' | grep -o 'minecraft[0-9]*' | sed 's/minecraft//' | sort -n | tail -n 1)

# If no sessions exist, set the latest session to 0
if [ -z "$latest_session" ]; then
    latest_session=0
fi

# Increment the latest session number to create a new session name
next_session=$((latest_session + 1))
session_name="minecraft$next_session"

# Create a new tmux session with the new session name
tmux new-session -d -s "$session_name"

# Send the Minecraft server start command to the tmux session
tmux send-keys -t "$session_name" 'cd minecraftserver/ || true && java -Xmx7G -jar paper.jar' C-m

# Attach to the tmux session to view the server console
# tmux attach -t "$session_name"
