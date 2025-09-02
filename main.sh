#!/usr/bin/env bash
echo "Creating Kafka topic 'orders' and sending test data to it..."
docker exec -it kafka bash -lc 'kafka-topics --bootstrap-server localhost:9092 --create --topic orders --if-not-exists'
sleep 5
#docker exec -it kafka kafka-topics --bootstrap-server localhost:9092 --list
echo "Creating Kafka Connect connector to load data from JSON file to 'orders' topic..."
curl -s -X POST -H "Content-Type: application/json" \
  --data @/workspaces/kafka-testdata-spark/examples/datagen/orders.json \
  http://connect:8083/connectors | jq .
sleep 5
echo "Consuming last 10 messages from 'orders' topic..."
kcat -b kafka:29092 -t orders -C -o -10 -q