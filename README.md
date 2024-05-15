# ubuntu-minecraft-server-start.sh

Start script for Minecraft servers running on Ubuntu Linux.

### Configuration:

On line 20:
- Change `"cd minecraftserver/"` to the path to the working directory of your server.
- Modify `"java -Xmx7G -jar"` to allocate the desired amount of RAM to the server (e.g., `"java -Xmx7G -jar"` for 7 gigabytes).
- Update `"paper.jar"` with the name of your server.jar file (e.g., `"spigot.jar"`, `"paper-1.20.4-496.jar"`).

### Other Useful Commands:

- View all active tmux sessions using: `tmux ls`
- Remove old tmux sessions using: `tmux kill-session -t sessionname`
- Attach to the tmux session to view the console by using: `tmux attach -t sessionname`
- Detatch from a tmux session by pressing `Ctrl+B` followed by `D`
