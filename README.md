# Azure Medallion Data Pipeline


.

🚀 Scalable Data Pipeline Using Azure ADF, Databricks, Synapse & Medallion Architecture
📌 Overview

This project demonstrates how to build a scalable, production-grade data pipeline using Azure Data Factory, Azure Data Lake Gen2, Azure Databricks, and Azure Synapse Analytics. It follows the Medallion Architecture (Bronze → Silver → Gold) and covers real-world scenarios commonly asked in data engineering interviews. The solution ingests raw files from GitHub APIs, transforms them using PySpark, loads structured data into Synapse, and visualizes insights with Power BI.

⭐ Features

API-based ingestion of GitHub-hosted CSV files into Azure Data Lake Bronze layer

PySpark transformations in Azure Databricks → Silver layer

Data warehousing using Azure Synapse (Gold layer)

Dynamic & parameterized pipelines in Azure Data Factory

Power BI dashboards connected to Synapse

End-to-end implementation of Medallion Architecture

🛠️ Technologies Used

Azure Data Factory – orchestration & pipeline scheduling

Azure Data Lake Gen2 – hierarchical storage layers

Azure Databricks (Apache Spark & PySpark) – scalable data transformations

Azure Synapse Analytics – SQL data warehouse, external tables

Power BI – reporting & KPI dashboards

REST API – GitHub raw CSV data extraction

📁 Project Architecture
1. Data Ingestion (Bronze Layer)

Source: GitHub REST API containing AdventureWorks CSVs

ADF Copy Activity loads raw files exactly as received

Stored in Bronze container: /bronze/<dataset_name>/<YYYY>/<MM>/<DD>/

2. Data Transformation (Silver Layer)

Databricks notebooks clean, validate, join, apply schema

PySpark transformations

Output stored in Silver container: optimized Delta format

3. Data Warehousing (Gold Layer)

Synapse Analytics external tables referencing Silver data

Fact & Dimension models created

Data ready for BI consumption

4. Reporting

Power BI connects to Synapse using DirectQuery

Dashboards for Sales, Products, Customers & Returns

📦 Dataset

Uses AdventureWorks (2015–2017) dataset containing:

Sales

Returns

Products

Customers

Calendar

Sources: Kaggle Adventure Works

Kaggle Adventure Works Dataset

GitHub API-hosted CSV files

🚀 Getting Started
Prerequisites

Azure account (Free tier + $200 credits recommended)

Basic Spark & Azure knowledge

Power BI Desktop (optional)

Step-by-Step Setup
1. Create Azure Resources

Resource Group

ADLS Gen2

Azure Data Factory

Databricks Workspace

Synapse Analytics Workspace

2. Configure Storage Layers

Create containers:

bronze/

silver/

gold/

3. Build Data Ingestion (ADF)

Create Linked Services (HTTP, ADLS)

Create datasets for GitHub & ADLS

Build parameterized pipelines → Copy Activity

4. Build Transformations (Databricks)

Use PySpark to clean & enrich Bronze data

Write optimized Delta files into Silver

5. Load into Synapse

Create external tables using OPENROWSET

Build Fact & Dimension tables in the Gold layer

6. Visualization (Power BI)

Connect Power BI to Synapse

Design reports and dashboards



📊 End-to-End Architecture Diagram
<img width="1529" height="1079" alt="image" src="https://github.com/user-attachments/assets/9c37f12a-4866-4705-8e1c-bd449ee891d4" />

