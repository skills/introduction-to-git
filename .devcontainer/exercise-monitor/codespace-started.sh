#!/bin/bash

# If not running in a Codespace, exit
if [ -z "${CODESPACE_NAME}" ]; then
  echo "Not running in a Codespace. Exiting."
  exit 0
fi

echo "Exercise Monitor: Codespace Started"

# Get Codespace information
REPO_NAME=$(basename "$(git rev-parse --show-toplevel)")
CODESPACE_NAME="${CODESPACE_NAME}"

# Send repository dispatch event
curl -X POST \
  -H "Accept: application/vnd.github.v3+json" \
  -H "Authorization: token ${GITHUB_TOKEN}" \
  "https://api.github.com/repos/${GITHUB_REPOSITORY}/dispatches" \
  -d '{
    "event_type": "codespace-started",
    "client_payload": {
      "repository_name": "'"$REPO_NAME"'",
      "timestamp": "'"$(date -u +"%Y-%m-%dT%H:%M:%SZ")"'"
    }
  }' 2>/dev/null || echo "Failed to send repository dispatch event"

