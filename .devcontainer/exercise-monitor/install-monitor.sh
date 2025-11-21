echo "Exercise Monitor: Installing"

# Install exercise monitor
cp -r /workspaces/${RepositoryName}/.devcontainer/exercise-monitor /home/vscode/.vscode-remote/data/Machine/exercise-monitor
echo "Exercise Monitor: Copied monitor files to codespace"

# Enable Git hooks
git config --global core.hooksPath /home/vscode/.vscode-remote/data/Machine/exercise-monitor/.githooks
echo "Exercise Monitor: Enabled event: post-commit"
echo "Exercise Monitor: Enabled event: post-checkout"
echo "Exercise Monitor: Enabled event: post-merge"

# Watch the Git config
echo ~/.gitconfig | entr /home/vscode/.vscode-remote/data/Machine/exercise-monitor/git-config-changed.sh
echo "Exercise Monitor: Enabled event: codespace-started"
echo "Exercise Monitor: Enabled event: git-config-changed"

echo "Exercise Monitor: Installation finished"
