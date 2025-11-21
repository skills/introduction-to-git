#!/bin/bash

# Trigger event: codespace-started
/home/vscode/.vscode-remote/data/Machine/exercise-monitor/codespace-started.sh

# Watch the Git config
tmux new-session -d -s git_config_monitor 'inotifyd /home/vscode/.vscode-remote/data/Machine/exercise-monitor/git-config-changed.sh /home/vscode/.gitconfig:w'
echo "Exercise Monitor: Enabled event: git-config-changed" >> /workspaces/exercise-monitor.log

# Show running background processes
# pgrep inotifyd

echo "Exercise Monitor: Started" >> /workspaces/exercise-monitor.log
