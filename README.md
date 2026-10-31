# 🛒 Olist E-Commerce Analytics: Diagnosing Profit Margin Erosion

[![Power BI Desktop](https://img.shields.io/badge/Power%20BI-Desktop-yellow?style=flat&logo=powerbi)](https://powerbi.microsoft.com/)
[![SQL Database](https://img.shields.io/badge/SQL-Data%20Extraction%20%26%20Querying-blue?style=flat&logo=postgresql)](https://www.postgresql.org/)
[![Dataset](https://img.shields.io/badge/Dataset-Kaggle%20Olist-orange)](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

---

## Project Overview
As e-commerce operations scale, top-line revenue expansion can frequently mask hidden profitability leaks. This end-to-end data analytics project investigates the Brazilian Olist e-commerce dataset to diagnose why sustained revenue growth exceeding R$3.3M quarterly peaks failed to translate into proportional net profitability.

By combining relational SQL queries with an interactive multi-page Power BI dashboard, this project uncovers structural cost compression drivers, specifically highlighting regional freight drag and high-volume, low-margin product categories.

---

## Dashboard Architecture & Visual Previews
The Power BI solution is structured into three executive views designed for multi-layered operational analysis:

### 1. Summary (Executive Overview)
<img width="1322" height="742" alt="01_Summary" src="https://github.com/user-attachments/assets/ae28b065-bf1d-49fc-b8a3-2d464cff0b7d" />
* **High-Level KPIs:** Tracks aggregate Total Revenue (R$15.84M), Net Profit (R$3.18M), overall Net Profit Margin (20.10%), Total Orders (99K), and enterprise Average Freight Cost.
* **Macro Divergence:** Highlights quarterly trends demonstrating how profit margins stagnated despite accelerating top-line revenue growth from 2017 to 2018.

### 2. Logistics & Freight (Regional Drag Analysis)
<img width="1140" height="667" alt="02_Logistics_and_Freight_Cost" src="https://github.com/user-attachments/assets/0b9a4cdc-f055-4969-a126-713606597c3a" />
* **Freight Cost Leakage:** Analyzes R$2.25M in total freight expenditures across the fulfillment network.
* **Geographic Vulnerability:** Identifies state-level outliers (such as remote northern and northeastern regions) where shipping overhead heavily compresses net margins.

### 3. Category Profitability (Product Mix Dynamics)
<img width="1130" height="652" alt="03_Category_Profitability" src="https://github.com/user-attachments/assets/43bcbb49-2de0-4fae-84c6-219dd5a2af43" />
* **Core Margin Drivers:** Pinpoints high-value product categories (such as watches, gifts, beauty, and health) that sustain the baseline profit margin.
* **Volume vs. Profit Disconnect:** Uncovers high-volume categories (such as bed, bath, and housewares) that generate high gross volume but carry disproportionate fulfillment and handling drag.

---

## Technical Stack & Methodology

* **Data Extraction & Pre-Cleaning (SQL):** Extracted, joined, and aggregated multi-table relational schemas (Orders, Order Items, Customers, Products, and Geolocation) to ensure clean transactional tracking.
* **Data Modeling:** Built a robust star/snowflake schema in Power BI with properly configured relationships and cardinality.
* **DAX Calculations:** Engineered custom dynamic measures for complex business metrics:
  ```dax
  Total Revenue = SUM('olist_order_items_dataset'[price])<img width="1322" height="742" alt="01_Summary" src="https://github.com/user-attachments/assets/b4c2efc6-ce75-4fd2-91b9-9e72967fd999" />
