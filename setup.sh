#!/bin/bash

# Define project root
PROJECT_NAME="superstore-data-pipeline"
mkdir -p $PROJECT_NAME && cd $PROJECT_NAME

# Create root files
touch README.md LICENSE .gitignore requirements.txt

# Folders with README
folders=(
  "01_data_generation"
  "01_data_generation/config"
  "02_data_ingestion"
  "02_data_ingestion/utils"
  "03_data_warehouse"
  "03_data_warehouse/schema"
  "03_data_warehouse/transformations"
  "04_dashboard"
  "04_dashboard/utils"
  "05_orchestration"
  "06_docs"
)

for folder in "${folders[@]}"; do
  mkdir -p "$folder"
  echo "# $(basename "$folder")" > "$folder/README.md"
done

# Sample README.md content
cat > README.md << 'EOF'
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
