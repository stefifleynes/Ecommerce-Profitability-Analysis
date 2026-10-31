# Olist E-Commerce Analytics: Diagnosing Profit Margin Erosion

![Summary Overview](./01_Summary.png)

---

## Project Overview
As e-commerce operations scale, top-line revenue expansion can frequently mask hidden profitability leaks. This end-to-end data analytics project investigates the Brazilian Olist e-commerce dataset to diagnose why sustained revenue growth exceeding R$3.3M quarterly peaks failed to translate into proportional net profitability.

By combining relational SQL queries with an interactive multi-page Power BI dashboard, this project uncovers structural cost compression drivers, specifically highlighting regional freight drag and high-volume, low-margin product categories.

---

## Technical Stack and Methodology

* **Database and Querying:** SQL for relational data extraction, joining multi-table schemas, aggregation, and pre-cleaning.
* **Business Intelligence Tool:** Power BI Desktop (Olist_Profit_Erosion_Analysis.pbix) for star schema data modeling and visual reporting.
* **Core Calculations:** Applied DAX dynamic measures to calculate Total Revenue, Total Freight Cost, Net Profit, Net Profit Margin, and Freight Drag Percentage across all transaction categories.

---

## Dashboard Architecture and Previews

### 1. Summary Dashboard (Executive Overview)
<img width="1322" height="742" alt="01_Summary" src="https://github.com/user-attachments/assets/831e8593-8c41-4d34-9f90-230914f677ff" />

The Summary page provides an executive view of overall business performance:
* **Key Performance Indicators:** Tracks aggregate Total Revenue of R$15.84M, Net Profit of R$3.18M, overall Net Profit Margin of 20.10%, Total Orders of 99K, and Average Freight Cost of R$19.99 per order.
* **Macro Divergence:** Features a line and bar chart tracking quarterly revenue trajectories against net profit performance, demonstrating how profit margins stagnated despite accelerating sales growth from 2017 to 2018.

---

### 2. Logistics and Freight Dashboard (Regional Drag Analysis)
<img width="1140" height="667" alt="02_Logistics_and_Freight_Cost" src="https://github.com/user-attachments/assets/f713f441-cb9a-4d1f-a14f-320e0ffc9b75" />

The Logistics page highlights cost leakage across regional fulfillment networks:
* **Freight Spend Leakage:** Details total freight expenditures of R$2.25M across the entire enterprise fulfillment network.
* **Regional Drag Analysis:** Pinpoints state-level shipping overhead, identifying remote northern and northeastern regions where freight costs heavily consume unit profit margins.

---

### 3. Category Profitability Dashboard (Product Mix Dynamics)
<img width="1130" height="652" alt="03_Category_Profitability" src="https://github.com/user-attachments/assets/0f2d433e-6cc0-4538-a504-de057918f1c3" />

The Category Profitability page evaluates product performance across sales channels:
* **Profit Drivers:** Categorizes top net profit drivers led by high-value product lines such as watches, gifts, beauty, and health items.
* **Volume Disconnect:** Uncovers high-volume items such as bed, bath, and housewares that generate large order counts but carry high volumetric shipping drag relative to their net margin contribution.

---

## Key Findings and Analytical Results

1. **Revenue Expansion vs. Margin Compression**
Enterprise revenue expanded to R$15.84M across 99K orders, reaching quarterly peaks over R$3.3M in 2018. However, net profit plateaued at R$3.18M, locking the overall net profit margin near 20.10% due to rising fulfillment spend.

2. **Enterprise Freight Drag Impact**
Total logistics costs reached R$2.25M, establishing an overall Freight Drag Ratio of 14.21%. The average freight cost per transaction stood at R$19.99, compressing unit economics on lower-priced merchandise.

3. **Geographic Logistics Vulnerability**
Distant northern and northeastern Brazilian states (specifically Roraima, Amapá, Acre, Amazonas, and Rondônia) exhibit extreme shipping overhead, where regional freight costs equal or surpass the net profit generated per order.

4. **Product Mix Disconnect**
Core profit drivers are concentrated in high-value categories. Conversely, high-volume categories generate high transaction counts but contribute disproportionate volumetric weight and shipping drag relative to their net margin contribution.

---

## Strategic Recommendations

1. **Implement Tiered Regional Shipping and Surcharges**
Establish minimum order values or distance-adjusted shipping surcharges for high-drag states (Roraima, Amapá, Acre, Amazonas, and Rondônia) to prevent long-haul logistics fees from eroding unit margins.

2. **Optimize Fulfillment Hubs and Warehousing Network**
Shift from a centralized fulfillment model toward secondary regional distribution hubs closer to high-density customer clusters to reduce long-haul transit fees and lower average per-order freight spend.

3. **Rebalance Portfolio Mix and Promotional Strategy**
Reallocate marketing acquisition spend toward high-margin categories such as watches, beauty, and health, while restructuring pricing models or carrier shipping contracts for heavy-weight, low-margin items.

---
