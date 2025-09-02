#!/usr/bin/env bash
set -euo pipefail # Treat unset variables as an error when substituting.
curl -s -X POST -H "Content-Type: application/json" \
  --data @$(dirname "$0")/orders.json \
  http://localhost:8083/connectors | jq .