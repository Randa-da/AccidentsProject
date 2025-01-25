-- Looking at the number of accidents by country

SELECT
    "Country",count(*) AS "accident_count"
FROM 
    road_accident_dataset
GROUP BY 
    "Country"
ORDER BY
    "accident_count" DESC
	
-- Looking at what time of day has the highest number of accidents
SELECT 
    "Time of Day" , count(*) as "accidents_time_counts" 
FROM 
    road_accident_dataset
GROUP BY 
    "Time of Day"
ORDER BY 
    "accidents_time_counts" DESC
	  
-- Looking at accidents causes Counts

SELECT 
    "Accident Cause" ,count(*) AS "accident_cause_count"
FROM 
    road_accident_dataset
GROUP BY 
    "Accident Cause"

--Looking at accident severity count

SELECT 
    "Accident Severity" ,count(*) AS "accident_severity_count"
FROM 
    road_accident_dataset
GROUP BY 
    "Accident Severity"
	
--Looking at the country with the highest number of injuries
SELECT
    "Country",SUM("Number of Injuries") AS "total_injuries"
FROM 
   road_accident_dataset
GROUP BY 
   "Country"
ORDER BY 
   "total_injuries" DESC 
LIMIT 1;

--The percentage of drivers who have an alcohol level > 0.08 (which is considered high for driving)
SELECT 
   ROUND(count(*)FILTER(WHERE "Driver Alcohol Level" > 0.08)*100.0/count(*)) 
FROM 
    road_accident_dataset

-- Looking at the number of accidents by region

SELECT
    "Region",count(*) AS "accident_count"
FROM 
    road_accident_dataset
GROUP BY 
    "Region"
ORDER BY
    "accident_count" DESC
	
-- Looking at the number of accidents by driver age group

SELECT
    "Driver Age Group",count(*) AS "accident_count"
FROM 
    road_accident_dataset
GROUP BY 
    "Driver Age Group"
ORDER BY
    "accident_count" DESC
	
--Looking at the average Emergency response Time(in minutes)
SELECT 
    AVG("Emergency Response Time")
FROM
    road_accident_dataset
	
--Looking at the number of accidents by Weather Conditions

SELECT
    "Weather Conditions",count(*) AS "accident_count"
FROM 
    road_accident_dataset
GROUP BY 
    "Weather Conditions"
ORDER BY
    "accident_count" DESC