# Install exercise monitor
/workspaces/${RepositoryName}/.devcontainer/exercise-monitor/install-monitor.sh

# Only use paging if the results are longer than one screen
git config --global core.pager "less -FX"

# Remove original repository, to keep the workspace clean
sleep 5
rm -R -f /workspaces/${RepositoryName}