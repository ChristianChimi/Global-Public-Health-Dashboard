## Global-Public-Health-Dashboard

This project focuses on combining multiple public health datasets to create a unified view that enables analysis of global health trends. SQL queries are used to join and clean the data, providing a solid foundation for statistical analysis, reporting, or interactive dashboard development.

## **Pre-Processing**
- Create all the tables on my PosteSql server.
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
- Applies ROUND(..., 2) to numeric fields to limit the number of decimal places to 2, improving readability.
- Export to unique dataset for PowerBI

## **PowerBI**
- Visualized trends:
    - Coverage of DTP3.
    - Coverage of POL3.
    - Child Mortality rate.
    - Life Expectancy.
- Median value for each one, as KPI.
- Created a filter to visualize data for a selected country.

## **Technologies Used**
    - ** pgAdmin4**, **SQL**, **PowerBI**.
