# Superstore Data Pipeline 🚀

An end-to-end data pipeline project simulating a superstore's transaction data and real-time dashboard.

## 📦 Architecture Overview
- Data Generation: Google Colab scripts (historical + live simulation)
- Transaction DB: IBM Db2
- Data Warehouse: BigQuery (ELT, data marts, KPIs)
- Dashboard: R + Flexdashboard using SQLite/BigQuery

## 📁 Folder Structure
01_data_generation/ → Scripts to load historical and live data
02_data_ingestion/ → Scripts to ingest into Db2
03_data_warehouse/ → Schema, transformations, data marts in BigQuery
04_dashboard/ → R Flexdashboard with SQLite connector
05_orchestration/ → Scheduling and orchestration flows
06_docs/ → Architecture diagrams, glossary, data dictionary

## 📊 KPIs Tracked
- Total Sales
- Transaction Volume
- 
- 
- 
- 

## ⚙️ Setup
1. Install requirements from `requirements.txt`
2. See each folder’s README for local setup instructions

echo "Project structure for '$PROJECT_NAME' created successfully!"
