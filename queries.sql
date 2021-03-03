-- This query will join the tables together but will perform a left join. That is, it will match all cars with their owner's information
-- and will include any owners that do not have a matching owner id.

SELECT * FROM owners o 
LEFT JOIN vehicles v 
ON v.owner_id = o.id

-- In this query, we count the number of cars for each owner and display the results in ascending order by the owner's first name.

SELECT o.first_name, o.last_name, COUNT(*) AS count 
FROM owners o 
JOIN vehicles v 
ON v.owner_id = o.id 
GROUP BY o.first_name, o.last_name
ORDER BY o.first_name;