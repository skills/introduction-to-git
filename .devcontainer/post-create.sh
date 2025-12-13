#!/bin/bash

# Only use paging if the results are longer than one screen.
# Do this before installing the exercise monitor
git config --global pager.log false
git config --global core.pager "less -FX"

# Install exercise monitor - Do this last to avoid accidental triggers during startup.
/workspaces/${RepositoryName}/.devcontainer/exercise-monitor/install.sh

# Delete the .git folder in the exercise repo to prevent from showing in version control
rm -R -f /workspaces/${RepositoryName}/.git

# Create sample project if it doesn't exist
REPO_DIR="/workspaces/stack-overflown"
if [ ! -d "$REPO_DIR" ]; then
  #  Create project folder
  mkdir -p "$REPO_DIR"

  # Copy sample source code
  cp -r /workspaces/${RepositoryName}/src/. $REPO_DIR/src/
fi