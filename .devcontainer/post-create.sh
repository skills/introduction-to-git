#!/bin/bash

# Only use paging if the results are longer than one screen.
# Do this before installing the execise monitor
git config --global core.pager "less -FX"

# Install exercise monitor - Do this last to avoid accidental triggers during startup.
/workspaces/${RepositoryName}/.devcontainer/exercise-monitor/install.sh

# Remove original repository, to keep the workspace clean
sleep 5
rm -R -f /workspaces/${RepositoryName}