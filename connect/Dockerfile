ARG CP_VERSION=8.0.0
FROM confluentinc/cp-kafka-connect:${CP_VERSION}

# Install the Datagen connector from Confluent Hub (latest that matches CP version)
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-datagen:latest

# Keep image small
USER root
RUN rm -rf /tmp/*
USER appuser