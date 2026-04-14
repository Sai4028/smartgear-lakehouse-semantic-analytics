**Architecture Explanation**

The data platform is designed using a Lakehouse architecture integrating streaming, batch, and semantic processing.

Kafka is used as the ingestion layer to capture real-time order data (smartgear_orders). Databricks processes this data using Structured Streaming and batch capabilities.

The Medallion architecture is implemented with Bronze, Silver, and Gold layers. Bronze stores raw data in Delta format, Silver performs cleaning and transformations, and Gold generates business KPIs and analytics.

Delta Lake ensures data reliability through ACID transactions, schema enforcement, and consistent data handling across streaming and batch workloads.

Batch data (smartgear_sales.csv) is used for validation and reconciliation of streaming outputs.

Synapse is used as the reporting layer where SQL queries are executed on Gold data for business insights.

A vector search layer is implemented using product metadata embeddings to enable semantic search, improving product discovery based on user intent.
