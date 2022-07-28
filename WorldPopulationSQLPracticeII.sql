SELECT COUNT(*)
FROM countries 
WHERE continent = 'Africa';

SELECT SUM(population)
FROM countries 
JOIN population_years ON
countries.id = population_years.country_id
WHERE year=2005
AND continent = 'Oceania';

SELECT AVG(population)
FROM countries 
JOIN population_years ON
countries.id = population_years.country_id
WHERE year=2003
AND continent = 'South America';

SELECT name, MIN(population)
FROM countries 
JOIN population_years ON
countries.id = population_years.country_id
WHERE year=2007;

SELECT AVG(population)
FROM countries 
JOIN population_years ON
countries.id = population_years.country_id
WHERE name = 'Poland';

SELECT COUNT(name) 
FROM countries
WHERE name LIKE "%The%";

SELECT SUM(population), continent
FROM countries 
JOIN population_years ON
countries.id = population_years.country_id
WHERE year = 2010
GROUP BY continent;

