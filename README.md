# SmartGear Lakehouse Semantic Analytics

## Overview
This project implements an end-to-end data platform using Kafka, Databricks, Delta Lake, and semantic search.

## Components
- Kafka for real-time ingestion
- Databricks for streaming and transformations
- Medallion architecture (Bronze → Silver → Gold)
- Synapse SQL for reporting
- Vector search for semantic product discovery

## Note
Kafka consumer logic is implemented within Databricks notebooks using Spark Structured Streaming.
