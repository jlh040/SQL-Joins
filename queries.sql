-- This query will join the tables together but will perform a left join. That is, it will match all cars with their owner's information
-- and will include any owners that do not have a matching owner id.

SELECT * FROM owners o 
LEFT JOIN vehicles v 
ON v.owner_id = o.id