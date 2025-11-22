#!/bin/bash

# Trigger event: codespace-started
/home/vscode/.vscode-remote/data/Machine/exercise-monitor/codespace-started.sh

# Watch the Git config
tmux new-session -d -s git_config_monitor '/home/vscode/.vscode-remote/data/Machine/exercise-monitor/git-config-monitor.sh'

# Show running background processes and commands to manually stop.
# tmux ls
# tmux kill-session -t git_config_monitor
# pgrep inotifywait
# for pid in $(pgrep inotifywait); do kill -- "$pid"; done

echo "Exercise Monitor: Started" >> /workspaces/exercise-monitor.log
