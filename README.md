# Superstore Sales Analytics Dashboard

An end-to-end business intelligence project analyzing global sales data using **MySQL** and **Power BI**, featuring real-time insights into revenue, product performance, customer behavior, and regional trends.

---

## 📌 Project Overview

**Objective:**
Build a professional-grade, interactive dashboard for Superstore sales data (2003–2005) connected directly to a MySQL database.

**Key Outcomes:**

* Total Revenue: \$10.03M from 307 orders (2003–May 2005)
* Top Customers: Euro Shopping Channel, Mini Gifts Distributors Ltd.
* Top Products: Classic Cars category dominates product sales
* Most Profitable Region: USA with \$1.46M profit

---

## 🛠 Tools & Technologies

| Tool        | Purpose                         |
| ----------- | ------------------------------- |
| Python      | CSV cleaning & encoding fixes   |
| MySQL       | Data storage & query execution  |
| Power BI    | Dashboard design & data visuals |
| ODBC Driver | MySQL-to-Power BI connectivity  |

---

## 🧪 Methodology

1. **Initial Setup:**

   * Installed MySQL and configured local database
   * Set up MySQL Connector/ODBC for Power BI integration

2. **Data Cleaning with Python:**

   * Fixed file encoding issues (UTF-8 handling)
   * Converted `ORDERDATE` from string to datetime format
   * Cleaned `PHONE` numbers: removed special characters like `+`, `-`, `()`, and retained valid international formats
   * Verified nulls, duplicates, and ensured consistency across 2,900+ rows

3. **SQL Querying:**

   * Wrote and optimized SQL queries for sales, products, discounts, and trends

4. **Database Connection:**

   * Established live connection using MySQL ODBC Connector

5. **Power BI Visualization:**

   * KPI cards, trend lines, bar charts, maps, slicers

6. **Dashboard Interactivity:**

   * Filters for Year, Country, Deal Size, and Product Line

---

## 📊 Dashboard Features

* **KPI Cards:** Total Revenue, Total Orders
* **Trend Analysis:** Monthly Sales (2003–2005)
* **Product Performance:** Top 10 products by revenue
* **Customer Insights:** Top 10 customers by revenue
* **Geographical View:** Sales distribution by country (map)
* **Category Analysis:** Average discount by product line
* **Deal Size Analysis:** Donut chart visualization
* **Slicers:** Interactive filters for exploratory analysis

---

## 🔎 SQL Queries Used

> SQL queries are provided in the `superstore_queries.sql` file.

---

## 💼 Freelance Pitch

> As a data analyst, I specialize in uncovering business insights from complex datasets. In this project, I connected a live MySQL database to Power BI to deliver a dynamic dashboard for Superstore sales. With optimized SQL queries and strategic KPIs, I helped transform static transaction records into a scalable business reporting tool.
>
> Ready to turn your raw data into decision-ready dashboards? Let's work together!

---

## 📸 Screenshots

*.screenshots/*

---

## 📂 Files Included

| File                                  | Description                             |
| --------------------------------------| --------------------------------------- |
| `Superstore_Data_Transformation.ipynb`| Colab Notebook Data Cleaning 		  |
| `superstore_dashboard.pbix`  		| Power BI dashboard file                 |
| `superstore_queries.sql`   	        | Full list of SQL queries used           |
| `README.md`               	        | Project overview & documentation        |
| `/screenshots/`                       | Dashboard screenshots folder (optional) |

---

## 🔗 Live Demo / Portfolio Link

*Coming soon*

---

## 🧾 Project Summary & Insights

This Superstore sales analytics project revealed valuable insights into business performance over a three-year period:

* **Strongest Performing Year:** 2004 with \$4.72M in revenue and 144 orders
* **Top Performing Product:** S18\_3232 (Classic Cars) with \$288K revenue
* **Highest Spending Customer:** Euro Shopping Channel (\$912K in purchases)
* **Most Profitable Country:** USA with over \$1.46M in estimated profit
* **Loss-Making Segments:** None identified—all product lines showed positive returns
* **Key Seasonal Trends:** Peak sales consistently observed in November and October
* **Pricing Insight:** 'Trains' category showed unusually high discount behavior (negative margin) possibly due to data or pricing errors

The dashboard supports decision-makers in identifying which product categories and regions to prioritize, when seasonal marketing campaigns are most effective, and where pricing strategy may need adjustment.

This project is a strong demonstration of my capabilities in full-stack data analytics — from data cleaning and SQL querying to dashboard design and data storytelling.
