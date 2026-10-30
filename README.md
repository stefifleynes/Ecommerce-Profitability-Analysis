# E-Commerce Profitability & Margin Analysis
An end-to-end data analytics project auditing revenue vs. profit divergence in an e-commerce platform using relational SQL.

---

## Executive Summary
Over a 12-month period, the e-commerce platform experienced steady top-line order volumes and revenue, but net profitability declined. This project utilizes relational SQL queries to audit the underlying database (Olist Brazilian E-Commerce dataset), identifying key cost drivers—specifically high freight values and low-margin product lines—that eroded overall business profit margins.

---

## The Business Problem
> **"Over the past year, order volume and gross revenue remained stable. However, net profit dropped over the same period. The business lacked visibility into where margin erosion was occurring across product lines, customer groups, and fulfillment channels, preventing leadership from restoring profitability."**

* **The Symptom:** Healthy, steady top-line sales masked a shrinking bottom-line net profit.
* **The Analytical Gap:** No granular view connecting transactional revenue to true net margins after factoring in shipping and operational costs.
* **The Investigation:** Using SQL to isolate cost leaks by analyzing product category margins, shipping weights, and regional delivery costs.

---

## Data Source
The analysis uses the publicly available **Brazilian E-Commerce Public Dataset by Olist** on Kaggle.
* **Source:** [Kaggle - Olist E-Commerce Dataset](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)
* **Core Tables Used:**
  * `olist_orders_dataset`: Timestamped order lifecycle tracking.
  * `olist_order_items_dataset`: Item unit prices and shipping (`freight_value`) costs.
  * `olist_products_dataset`: Product taxonomy and dimension attributes.
  * `olist_customers_dataset`: Customer state and geographic location details.

---

## SQL Analytical Architecture
The project repository is structured into modular SQL scripts located in the `/sql` directory:

1. **`01_master_view.sql`**: Joins the core transactional tables into a master view (`vw_order_profitability`) and models net profit by factoring in unit price, simulated COGS, and freight expenses.
2. **`02_monthly_trend.sql`**: Evaluates monthly order volume, total revenue, and net profit trends to prove top-line stability vs. bottom-line margin compression.
3. **`03_category_profitability.sql`**: Aggregates gross revenue and freight spend by product category to surface high-volume items with negative net margins.
4. **`04_regional_shipping.sql`**: Audits logistics costs by customer state to isolate high-freight delivery zones.

---

## Strategic Recommendations
1. **Implement Freight Caps & Minimum Spend:** Establish minimum order values for free shipping on product categories where freight value exceeds 25% of the item price.
2. **Dynamic Regional Pricing:** Adjust shipping surcharges for distant customer states that display disproportionately high average delivery expenses.
3. **Product Line Rationalization:** Re-evaluate supplier costs or adjust pricing for product lines operating on negative net margins due to high freight-to-price ratios.

---
*Project created as part of a Data Analyst Portfolio.*
