# Install Git hooks to monitor exercise progress
cp -r /workspaces/${RepositoryName}/.devcontainer/.githooks /home/vscode/.vscode-remote/data/Machine/.githooks
git config --global core.hooksPath /home/vscode/.vscode-remote/data/Machine/.githooks

# Only use paging if the results are longer than one screen
git config --global core.pager "less -FX"

# Remove original repository, to keep the workspace clean
sleep 5
rm -R -f /workspaces/${RepositoryName}