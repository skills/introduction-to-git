#!/bin/bash

# Get config type from argument
CONFIG_TYPE=$1

echo "Exercise Monitor: Event: git-config-changed ($CONFIG_TYPE)" >> /workspaces/exercise-monitor.log

# Send repository dispatch event
curl -X POST \
  -H "Accept: application/vnd.github.v3+json" \
  -H "Authorization: token ${GITHUB_TOKEN}" \
  "https://api.github.com/repos/${GITHUB_REPOSITORY}/dispatches" \
  -d '{
    "event_type": "git-config-changed",
    "client_payload": {
      "config_type": "'"$CONFIG_TYPE"'",
      "timestamp": "'"$(date -u +"%Y-%m-%dT%H:%M:%SZ")"'"
    }
  }' 2>/dev/null || echo "Failed to send repository dispatch event"
