# Retail Sales Dashboard

## 📌 Purpose
This dashboard represents the **business-facing output** of the data engineering pipeline.

It is designed for:
- Business analysts
- Sales managers
- Operations teams

The dashboard is built on top of the `clean_sales` analytics table.

---

## 🎯 Business Questions Answered
- How much revenue are we generating?
- How many orders are being placed?
- How does sales change over time?
- Which products and countries perform best?

---

## 📊 KPI Summary
The top section of the dashboard contains:

- **Total Revenue**
- **Total Orders**
- **Total Quantity Sold**
- **Average Order Value (AOV)**

---

## 📈 Visualizations
The dashboard includes the following charts:

1. **Revenue Over Time**  
   Line chart showing daily or monthly revenue trends

2. **Orders Over Time**  
   Line chart showing order volume trends

3. **Top Products by Revenue**  
   Bar chart highlighting best-performing products

4. **Revenue by Country**  
   Bar or map-based visualization

---

## 🧠 Data Source
- Table: `clean_sales`
- Grain: One row per product per invoice
- Update frequency: Daily (via pipeline orchestration)

---

## 🛠️ BI Tools (Planned)
This dashboard can be implemented using:
- Tableau Public
- Power BI (Free)

Screenshots or links will be added once the dashboard is built.
