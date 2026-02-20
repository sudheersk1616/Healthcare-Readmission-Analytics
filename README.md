# Healthcare Readmission Analytics Dashboard

##  Project Overview
This project analyzes hospital patient data to identify patterns and risk factors contributing to hospital readmissions.  
It simulates a **real-world healthcare analytics workflow**, covering data modeling, SQL-based analytics, and interactive dashboarding using Power BI.

The goal is to help hospitals **identify high-risk patients and departments** and support data-driven decision-making.

---

## Business Problem
Hospital readmissions increase operational costs and often indicate gaps in patient care.  
Healthcare organizations need analytical insights to:
- Monitor readmission trends
- Identify high-risk patient groups
- Improve clinical and operational efficiency

---

## Tools & Technologies
- **SQL (MySQL Workbench)** – Data modeling, ETL, analytics queries  
- **Power BI** – Interactive dashboards & DAX measures  
- **Python (Pandas, NumPy)** – Synthetic data generation & preprocessing  
- **CSV** – Source dataset (synthetic healthcare data)

---

## Project Architecture
The project follows a **three-layer data architecture**:

1. **Source Layer**
   - Synthetic hospital readmission dataset (CSV)

2. **Staging Layer**
   - Raw data loaded into SQL staging tables

3. **Analytics Layer**
   - Star schema data warehouse optimized for BI reporting

---

## Data Model (Star Schema)
The analytics layer is designed using a **star schema** for performance and simplicity.

### Fact Table
- **fact_readmission**
  - One row per patient admission
  - Stores clinical and operational metrics

### Dimension Tables
- **dim_patient** – Patient demographics
- **dim_department** – Hospital departments
- **dim_diagnosis** – Medical diagnoses
- **dim_admission** – Admission & discharge details

This structure enables fast aggregation and seamless integration with Power BI.

---

## ETL Process
- Loaded CSV data into SQL staging tables
- Populated dimension tables using DISTINCT transformations
- Built fact table using joins across dimensions
- Applied business logic using SQL CASE statements
- Created DAX calculations for KPIs and risk segmentation

---

## Dashboard Features
- KPI cards: Total Patients, Readmission Rate %, High-Risk Patients
- Monthly readmission trend analysis
- Department-wise and age-group risk analysis
- Risk segmentation using DAX logic
- Interactive slicers for dynamic exploration

---

## Key Insights
- Elderly patients show significantly higher readmission risk
- Longer hospital stays increase the likelihood of readmission
- Certain departments consistently contribute to higher readmission rates

---

## Dashboard Preview
<img width="1146" height="646" alt="dashboard_overview" src="https://github.com/user-attachments/assets/744e534a-b7c5-4eeb-a104-c7293447e22c" />

---

## Conclusion
This project demonstrates an end-to-end healthcare analytics solution, combining **SQL data modeling, ETL logic, and Power BI dashboards**.  
It closely reflects how analytics projects are implemented in real-world healthcare and business intelligence environments.

---

## Note
Due to healthcare data privacy constraints, this project uses **synthetic data** while maintaining realistic data distributions and business logic.

---

## 🤝 Connect
If you’d like to discuss this project or explore similar analytics use cases, feel free to connect.
