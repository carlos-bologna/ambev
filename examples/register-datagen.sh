#!/usr/bin/env bash
set -euo pipefail # Treat unset variables as an error when substituting.
curl -s -X POST -H "Content-Type: application/json" \
  --data @/workspaces/kafka-testdata-spark/examples/datagen/orders.json \
  http://connect:8083/connectors | jq .