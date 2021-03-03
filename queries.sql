-- This query will join the tables together but will perform a left join. That is, it will match all cars with their owner's information
-- and will include any owners that do not have a matching owner id.

SELECT * FROM owners o 
LEFT JOIN vehicles v 
ON v.owner_id = o.id;

-- In this query, we count the number of cars for each owner and display the results in ascending order by the owner's first name.

SELECT o.first_name, o.last_name, COUNT(*) AS count 
FROM owners o 
JOIN vehicles v 
ON v.owner_id = o.id 
GROUP BY o.first_name, o.last_name
ORDER BY o.first_name;

-- With this query, we select the owner's name along with the number of cars that they own, and the average price for those cars.
-- The number of cars that they own must be at least 2 and the average price for their cars must be more than 10000.

SELECT o.first_name, o.last_name, ROUND(AVG(price)) as average_price, COUNT(*) 
FROM owners o 
JOIN vehicles v 
ON v.owner_id = o.id 
GROUP BY o.first_name, o.last_name 
HAVING COUNT(*) > 1 AND ROUND(AVG(price)) > 10000
ORDER BY o.first_name DESC;