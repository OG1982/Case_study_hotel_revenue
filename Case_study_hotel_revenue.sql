
WITH hotels as (
SELECT * FROM dbo.data_2018
UNION
SELECT * FROM dbo.data_2019
UNION
SELECT * FROM dbo.data_2020)



--Joining market segment from (hotels) from 2018-2020 tables with market segmet table
--Joining meal cost table with hotels 

SELECT * FROM hotels
LEFT JOIN dbo.market_segment
ON hotels.market_segment = dbo.market_segment.market_segment
LEFT JOIN dbo.meal_cost
ON dbo.meal_cost.meal = hotels.meal



--Calculating the revenue by 2018-2020 years

--SELECT 
--arrival_date_year, hotel,
--ROUND(SUM((stays_in_week_nights + stays_in_weekend_nights)*adr),2) as revenue
--FROM hotels
--GROUP BY arrival_date_year, hotel



