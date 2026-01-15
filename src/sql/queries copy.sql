-- PLEASE READ THIS BEFORE RUNNING THE EXERCISE

-- ⚠️ IMPORTANT: This SQL file may crash due to two common issues: comments and missing semicolons.

-- ✅ Suggestions:
-- 1) Always end each SQL query with a semicolon `;`
-- 2) Ensure comments are well-formed:
--    - Use `--` for single-line comments only
--    - Avoid inline comments after queries
--    - Do not use `/* */` multi-line comments, as they may break execution

-- -----------------------------------------------
-- queries.sql
-- Complete each mission by writing your SQL query
-- directly below the corresponding instruction
-- -----------------------------------------------

SELECT * FROM regions;
SELECT * FROM species;
SELECT * FROM climate;
SELECT * FROM observations;


-- MISSION 1
-- Your query here;
-- 1a Pregunta.
SELECT * FROM observations LIMIT 10 OFFSET 0;
SELECT * FROM species LIMIT 10 OFFSET 0;
SELECT * FROM climate LIMIT 10 OFFSET 0;
SELECT * FROM regions LIMIT 10 OFFSET 0;

-- 2a Pregunta
SELECT DISTINCT region_id FROM observations;

--3a Pregunta
SELECT DISTINCT SUM (species_id) FROM observations;

-- 4a Pregunta
SELECT COUNT(*) FROM observations WHERE region_id = 2;

-- 5a Pregunta
SELECT observation_date FROM observations WHERE obsevation_date=1998-08-08;


-- MISSION 2
-- Your query here;
--1a Pregunta
SELECT region_id, COUNT (region_id) AS number_observations FROM observations GROUP BY region_id ORDER BY number_observations DESC;

 --2a Pregunta
SELECT species_id, COUNT (region_id) AS number_observations FROM observations GROUP BY region_id ORDER BY number_observations DESC LIMIT 5;

--3a Pregunta
SELECT species_id, COUNT(*) AS qty_observations FROM observations GROUP BY species_id HAVING qty_observations < 5 ORDER BY qty_observations DESC;

-- 4a Pregunta
SELECT observer, COUNT(*) AS qty_observations FROM observations GROUP BY observer ORDER BY qty_observations DESC;


-- MISSION 3
-- Your query here;
-- 1a Pregunta
SELECT * FROM observations JOIN regions ON observations.region_id=regions.id;

-- 2a Pregunta
SELECT * FROM observations JOIN species ON observations.species_id=species.id;

-- 3a Pregunta
SELECT regions.name AS region_name, species.scientific_name, COUNT(*) AS observed_species FROM observations JOIN species ON observations.species_id = species.id JOIN regions ON observations.region_id = regions.id GROUP BY region_name, species.scientific_name ORDER BY region_name, observed_species DESC;

