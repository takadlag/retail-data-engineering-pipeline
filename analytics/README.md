# Analytics & BI Layer

## 📌 Purpose
This folder contains all business-facing outputs of the data engineering pipeline.

The analytics layer is responsible for transforming clean, structured data into insights that can be consumed by analysts, managers, and decision-makers.

---

## 🎯 Business Use Case
The primary goal of this analytics layer is to answer:

“How is retail sales performance changing over time, by product and by region?”

---

## 📊 Core Metrics
The following metrics are derived from the cleaned sales dataset:

- **Total Revenue**  
  Sum of total sales amount

- **Total Quantity Sold**  
  Total units sold

- **Number of Orders**  
  Count of distinct invoices

- **Average Order Value (AOV)**  
  Total revenue divided by number of orders

---

## 🧮 Dimensions
Metrics can be analyzed across the following dimensions:

- Invoice date
- Product
- Country

---

## 📈 Dashboard Design (Conceptual)
The planned dashboard includes:

1. KPI summary section (revenue, orders, AOV)
2. Time-series analysis of sales performance
3. Top products by revenue and quantity
4. Geographic breakdown of sales by country

This design mirrors common executive and analyst dashboards used in retail organizations.

---

## 🛠️ BI Tools
The dashboard will be implemented using one of the following free tools:

- Tableau Public  
- Power BI (Free version)

---

## 📖 Notes
- Dashboards will be built on top of analytics-ready tables
- Screenshots or links to published dashboards will be added in later iterations
