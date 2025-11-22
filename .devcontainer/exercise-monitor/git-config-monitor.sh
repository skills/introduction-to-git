#!/bin/bash

# Monitor global config changes
inotifywait -m --include '\.gitconfig$' -e close_write,move,delete /home/vscode | \
while read -r file; do
  config_type="global"
  /home/vscode/.vscode-remote/data/Machine/exercise-monitor/git-config-changed.sh $config_type
done &

# Monitor .git/config changes in repos of /workspaces directory
inotifywait -m -r --include '\.git/config$' -e close_write,move,delete /workspaces | \
while read -r file; do
  config_type="repository"
  /home/vscode/.vscode-remote/data/Machine/exercise-monitor/git-config-changed.sh $config_type
done &

echo "Exercise Monitor: Enabled event: git-config-changed" >> /workspaces/exercise-monitor.log

# Heartbeat to keep above monitors alive
while  true; do
  sleep $((60*5)) # 5 minutes
  echo "Exercise Monitor: hearbeat: git-config-monitor" >> /workspaces/exercise-monitor.log
done