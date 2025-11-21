#!/bin/bash

echo "Exercise Monitor: Event: git-config-changed" >> /workspaces/exercise-monitor.log

# Get repository information
REPO_NAME=$(basename "$(git rev-parse --show-toplevel)")

# Send repository dispatch event
curl -X POST \
  -H "Accept: application/vnd.github.v3+json" \
  -H "Authorization: token ${GITHUB_TOKEN}" \
  "https://api.github.com/repos/${GITHUB_REPOSITORY}/dispatches" \
  -d '{
    "event_type": "git-config-changed",
    "client_payload": {
      "repository_name": "'"$REPO_NAME"'",
      "timestamp": "'"$(date -u +"%Y-%m-%dT%H:%M:%SZ")"'"
    }
  }' 2>/dev/null || echo "Failed to send repository dispatch event"

