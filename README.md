# data-warehouse-analysis-SQL-Python-Power-BI
An end-to-end data warehousing and analytics project demonstrating how raw data can be transformed into actionable business insights using SQL Server, Python, and Power BI.

Inspired by Baraa Salkini, this project extends the original scope with data enrichment, enhanced modelling, and deeper analytical insights.
---
## 🏗️ Data Architecture

The data architecture for this project follows Medallion Architecture **Bronze**, **Silver**, and **Gold** layers:

<img width="479" height="271" alt="image" src="https://github.com/user-attachments/assets/748a2024-ab35-4b2b-b8c8-e8854ab462f1" />

<img width="485" height="273" alt="image" src="https://github.com/user-attachments/assets/6c4534da-3020-409b-b22f-d05c844c4b59" />



## Layers:

- **Bronze** → Raw ingestion from ERP & CRM CSV files into SQL Server

- **Silver** → Data cleansing, validation, and standardisation

- **Gold** → Business-ready star schema optimised for analytics

---

## 📖 Project Overview

This solution covers the full data lifecycle:

- **Data Engineering**  
  Built ETL pipelines to ingest, clean, and transform multi-source data  

- **Data Enrichment (Python)**  
  Expanded dataset from ~60K → ~640K rows with realistic patterns, variability, and controlled data quality issues  

- **Data Modelling**  
  Designed a **star schema** with fact and dimension tables to support scalable analytics  

- **Analytics & BI**  
  Delivered insights using **SQL and Power BI**, including DAX measures and interactive dashboards  

---

## 🚀 Key Features

- 🔄 End-to-end ETL pipeline (SQL + Python)  
- 🧱 Medallion architecture implementation  
- 📊 Star schema data model for performance  
- 🧹 Data quality handling (nulls, inconsistencies, validation rules)  
- 📈 Power BI dashboard with KPI-driven insights  
- 🧠 Advanced DAX measures (AOV, profit trends, product performance)  

---

## 📊 Analytics Delivered

The project provides actionable insights into:

- **Customer Behaviour**  
  - Segmentation by age, geography, and purchasing patterns  

- **Product Performance**  
  - Identification of top-performing products and categories  
  - Analysis of volume vs value (e.g. high-performers vs low-performers)  

- **Sales Trends**  
  - Revenue and profit trends over time  
  - Seasonal patterns and growth opportunities  

---

## 🧠 Example Insights

- Bikes dominate revenue, with Road Bikes leading in volume  
- Mountain Bikes generate the highest average order value  
- High-performing products drive significantly more revenue per order despite lower sales volume  
- Clothing and Accessories present opportunities for growth  

---

## 🛠️ Tech Stack

- **SQL Server** → Data warehouse + transformations  
- **Python** → Data generation & enrichment  
- **Power BI** → Data modelling (DAX) + dashboards  
- **GitHub** → Version control & documentation  

---

## 📌 Project Scope

- Integrated ERP & CRM datasets  
- Focused on latest-state analytics (no historisation)  
- Designed for analytical querying and dashboard consumption  

---

## 🛡️ License

This project is licensed under the MIT License.
