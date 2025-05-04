CREATE OR REPLACE VIEW GlobalHealth AS
SELECT 
    "DTP3"."Entity", 
    "DTP3"."Year",
    "DTP3"."DTP3",
    "POL3"."POL3",
    "ChildMortalityRate"."Child Mortality Rate",
    "LifeExpectancy"."Life Expectancy"
FROM 
    "DTP3"
INNER JOIN 
    "POL3"
ON 
    "POL3"."Year" = "DTP3"."Year"
    AND "DTP3"."Entity" = "POL3"."Entity"
INNER JOIN 
    "ChildMortalityRate"
ON 
    "DTP3"."Year" = "ChildMortalityRate"."Year"
    AND "DTP3"."Entity" = "ChildMortalityRate"."Entity"
INNER JOIN 
    "LifeExpectancy"
ON 
    "DTP3"."Year" = "LifeExpectancy"."Year"
    AND "DTP3"."Entity" = "LifeExpectancy"."Entity";

SELECT 
    "Entity" AS "Country",
    "Year",
    "DTP3" as "DTP3_Share",
    "POL3" as "POL3_Share",
    Round("Child Mortality Rate",2) as "Child_Mortality_Rate", 
    Round("Life Expectancy",2) as "Life_Expectancy"
FROM globalhealth
ORDER BY "Year"
