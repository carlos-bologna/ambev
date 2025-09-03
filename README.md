# Data Ingestion from Kafka using PySpark

This repository demonstrates how to ingest data from a Kafka topic into a PySpark structured streaming application. It includes a sample notebook that connects to a Kafka topic, reads the data as a stream.

## The Dev Container
This project is set up to run in a VSCode Dev Container. The container includes all necessary dependencies such as PySpark and Kafka clients.
To open the project in a dev container, use the VSCode command palette and select "Dev Containers: Reopen in Container".

## Running the Example
1. Ensure you have Docker installed.
2. Start the Kafka streaming:
   ```bash
   ./main.sh
   ```
3. Open the notebook `kafka_datagen_demo.ipynb` in VSCode and run the cells to see the data ingestion in action.

## Demo Video

You can watch a demonstration of the data ingestion process in the following video:

![Demo of Data Ingestion](ScreenRecording.gif)