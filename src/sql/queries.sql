SELECT species_id, COUNT (region_id) AS number_observations FROM observations GROUP BY region_id ORDER BY number_observations DESC LIMIT 5;
