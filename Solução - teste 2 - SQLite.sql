SELECT count(*) FROM countries
WHERE continent = 'Africa';

SELECT sum(population) FROM countries
LEFT JOIN population_years
ON countries.id = population_years.country_id
WHERE continent like 'Oceania' AND year = '2005';

SELECT avg(population) FROM countries
LEFT JOIN population_years
ON countries.id = population_years.country_id
WHERE continent like 'South America' AND year = '2003';

SELECT * FROM countries
LEFT JOIN population_years
ON countries.id = population_years.country_id
WHERE  year = '2007' AND population is not null
ORDER BY population ASC
LIMIT 1;

SELECT avg(population) FROM countries
LEFT JOIN population_years
ON countries.id = population_years.country_id
WHERE name = 'Poland';

SELECT * FROM countries
LEFT JOIN population_years
ON countries.id = population_years.country_id
WHERE name like '%The%'
GROUP BY name;

SELECT continent, sum(population) FROM countries
LEFT JOIN population_years
ON countries.id = population_years.country_id
WHERE year = '2010'
GROUP BY continent ;
