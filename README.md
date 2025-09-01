# 🛍️ Fashion Retail Sales Report  

<p align="center">
  <img src="images/customer_report.jpg" alt="Customer Report" width="45%"/>
  <img src="images/inventory_report.jpg" alt="Inventory Report" width="45%"/>
</p>

<p align="center">
  <img src="images/sales_report.jpg" alt="Sales Report" width="90%"/>
</p>

---

## 📌 Overview  

<p align="center">
  <img src="images/workflow_diagrampng.png" alt="Workflow Diagram" width="70%"/>
</p>

This project focuses on analyzing **fashion retail sales data** to uncover customer trends, inventory performance, and sales insights.  

**Main Goals:**  
- 📥 Integrate raw **CSV data** into a **PostgreSQL database** using **Docker containers**.  
- 🗂️ Design a **data schema** that supports efficient storage and querying.  
- 📊 Visualize insights in **Power BI dashboards** for better business decision-making.  

This project solves the problem of **fragmented retail data** by creating a structured pipeline for **data ingestion, transformation, and visualization**, enabling businesses to make **data-driven decisions** in areas like:  
- Customer segmentation  
- Inventory optimization  
- Sales performance analysis  

---

## 📊 Dataset, Database & Data Schema  

<p align="center">
  <img src="images/Schema.png" alt="Database Schema" width="75%"/>
</p>

### 🔹 Dataset  
The dataset contains retail transaction data including:  
- 👥 **Customers**: demographics, city, country, gender, age  
- 🛒 **Products**: categories, sub-categories, size, color, production cost  
- 💳 **Transactions**: purchases with invoice details, unit price, discount, payment method  
- 🏬 **Stores & Employees**: store locations, employee information  

### 🔹 Database  
- Hosted on **PostgreSQL** in a **Docker container**  
- Data ingested from **CSV files** and cleaned before loading  
- Supports **transformations and reporting** in Power BI  

### 🔹 Data Schema (ERD)  
The schema is designed with four main tables:  
- **customers** – customer demographics  
- **products** – product catalog details  
- **transactions** – transaction-level details (linked to customer, product, store, employee)  
- **stores & employees** – store and employee information  

This relational schema enables efficient **joins and aggregations** to support reporting.  

---

## 📈 Insights from Dashboards  

Three **Power BI dashboards** were created to provide business insights:  

### 1️⃣ Customer Segmentation Report  
- 👥 **Customer base**: 1.6M customers across **7 countries** and **763 cities**  
- 🏙️ **Top cities**: Shenzhen, Beijing, New York lead in customer count  
- 🧑‍🤝‍🧑 **Demographics**:  
  - Majority **male (58.62%)**  
  - Largest age group: **18–29 years old (0.88M customers)**  
- 🌍 **Geography**: strong markets in **US and China**  

---

### 2️⃣ Inventory Management Report  
- 💰 **Revenue breakdown by sub-category**:  
  - Top contributors: *Coats & Blazers, Pants & Jeans, Suits*  
- 📂 **Category revenue share**:  
  - Feminine (46.26%), Masculine (44.85%), Children (8.89%)  
- 📏 **Units sold analysis**: smaller sizes (S, M) dominate  
- 📊 **Production cost vs revenue**: Feminine & Masculine categories generate the highest margins  

---

### 3️⃣ Sales Performance Report  
- 🌎 **Revenue by country**: US leads, followed by China  
- 📅 **Yearly trends**: steady growth in 2023–2024, slight dip in 2025  
- 📆 **Quarterly & monthly breakdowns**:  
  - Peak in **Q4 and December** due to seasonal demand  
- 📈 **Daily & hourly performance**:  
  - Higher on **weekends** and **evenings**  
- 💳 **Payment methods**:  
  - Credit card (59.6%) preferred over cash (40.4%)  

---

## 🛠️ Tech Stack  

- **📥 Data Source**: CSV files  
- **🗄️ Database**: PostgreSQL (Docker containerized)  
- **📊 Visualization**: Power BI  
- **🔗 Pipeline**: Data ingestion → Database transformation → BI dashboard reporting  

---

✨ With this project, we demonstrate an end-to-end **data analytics pipeline**, from raw data ingestion to insightful reporting, supporting **data-driven decision-making in fashion retail**.  
