## Global-Public-Health-Dashboard
## **Overview**
This project focuses on combining multiple public health datasets to create a unified view that enables analysis of global health trends. SQL queries are used to join and clean the data, providing a solid foundation for statistical analysis, reporting, or interactive dashboard development.
Datasets: https://ourworldindata.org/explorers/global-health?tab=table&pickerSort=asc&pickerMetric=entityName&Health+Area=Life+expectancy&Indicator=Life+expectancy+at+birth&Metric=Rate&Source=UN+WPP&country=OWID_WRL~CHN~ZAF~BRA~USA~GBR~IND~RWA

## **Pre-Processing**
- Created all the tables on my PosteSql server.
- Created a SQL view called GlobalHealth that merges four different datasets:
  - DTP3: Coverage of DTP3 (Diphtheria, Tetanus, Pertussis) vaccine.
    - POL3: Coverage of POL3 (Polio) vaccine.
    - ChildMortalityRate: Mortality rate of children under five years of age.
    - LifeExpectancy: Average life expectancy at birth.
- These datasets are joined using INNER JOINs on both:
  - Entity (country or region).
  - Year (the year of the record).
- Renamed Entity to Country for readability.
- Renames the vaccine columns to make it clear they represent a share/percentage.
- Applied ROUND(..., 2) to numeric fields to limit the number of decimal places to 2, improving readability.
- Exported to unique dataset for PowerBI

## **PowerBI**
    - Visualized trends:
        - Coverage of DTP3.
        - Coverage of POL3.
        - Child Mortality rate.
        - Life Expectancy.
    - Median value for each one, as KPI.
    - Created a filter to visualize data for a selected country.

## **Key Insights**
    - Life expectancy has increased significantly.
    - World's life expectancy is 73 years while child mortality is 3,6%.
    - POL3 and DPT3 vaccines have reached 83% coverage.  
    - The use of interactive dashboards allows stakeholders to filter data by country and track health trends over time, making this a valuable tool for policy analysis and targeted intervention planning.

## **Conclusions**     
This analysis highlights important global health trends derived from the integration of vaccine coverage, child mortality, and life expectancy data. By unifying multiple datasets and visualizing key indicators in Power BI, we gained clear insights into long-term improvements and current challenges in public health.

## **Technologies Used**
- **pgAdmin4**, **SQL**, **PowerBI**.
