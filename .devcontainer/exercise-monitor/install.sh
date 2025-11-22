#!/bin/bash

echo "Exercise Monitor: Installation started"

# Install exercise monitor
cp -r /workspaces/${RepositoryName}/.devcontainer/exercise-monitor /home/vscode/.vscode-remote/data/Machine/exercise-monitor
echo "Exercise Monitor: Copied monitor files to codespace"

# Enable Git hook events
git config --global core.hooksPath /home/vscode/.vscode-remote/data/Machine/exercise-monitor/.githooks
echo "Exercise Monitor: Enabled event: post-commit"
echo "Exercise Monitor: Enabled event: post-checkout"
echo "Exercise Monitor: Enabled event: post-merge"

# Add support for running monitors in the background using tmux and inotify
sudo apk add tmux
sudo apk add inotify-tools

# Trigger codespace created event
/home/vscode/.vscode-remote/data/Machine/exercise-monitor/codespace-created.sh

echo "Exercise Monitor: Installation finished"
