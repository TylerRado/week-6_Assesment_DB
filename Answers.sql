
-- 1. Simple Join
SELECT first_name, provider_specialty As Providers_details 
FROM providers;

-- 2 Inner Join
SELECT p.patient_id, p.last_name, pr.provider_specialty 
FROM patients p 
INNER JOIN providers pr
ON p.first_name = pr.first_name; 

-- 3 Left Join 

Select p.first_name, p.last_name, v.date_of_visit
FROM patients p
LEFT JOIN visits v 
ON p.patient_id = v.patient_id;

-- 4 Join with Aggregation

SELECT pr.first_name, v.date_of_visit,
Count(*)
FROM providers pr
Inner Join visits v
ON pr.provider_id = v.provider_id
Group by pr.first_name; 

-- 5. Complex Join With Conditions
Select p.first_name, p.last_name, v.date_of_visit
FROM patients p
RIGHT JOIN visits v 
ON p.patient_id = v.patient_id
UNION
Select p.first_name, p.last_name, v.date_of_visit
FROM patients p
RIGHT JOIN visits v 
ON p.patient_id = v.patient_id;