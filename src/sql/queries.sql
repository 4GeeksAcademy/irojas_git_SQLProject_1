
SELECT regions.name AS region_name, species.scientific_name, COUNT(*) AS observed_species FROM observations JOIN species ON observations.species_id = species.id JOIN regions ON observations.region_id = regions.id GROUP BY region_name, species.scientific_name ORDER BY region_name, observed_species DESC;
