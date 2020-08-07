/* ---------------------------------------------------------------------------------------------------------------------- */

/* https://www.hackerrank.com/challenges/african-cities/problem */
SELECT city.name FROM city 
INNER JOIN country ON city.countrycode = country.code
WHERE country.continent = 'Africa';

/* https://www.hackerrank.com/challenges/asian-population/problem */
SELECT SUM(city.population) FROM city 
INNER JOIN country ON city.countrycode = country.code
WHERE country.continent = 'Asia';

/* https://www.hackerrank.com/challenges/average-population-of-each-continent/problem */
SELECT country.continent, FLOOR(AVG(city.population)) FROM city 
INNER JOIN country ON city.countrycode = country.code
GROUP BY country.continent;


/* ---------------------------------------------------------------------------------------------------------------------- */

/* ---------------------------------------------------------------------------------------------------------------------- */

/* ---------------------------------------------------------------------------------------------------------------------- */

/* ---------------------------------------------------------------------------------------------------------------------- */

/* ---------------------------------------------------------------------------------------------------------------------- */

/* ---------------------------------------------------------------------------------------------------------------------- */

/* ---------------------------------------------------------------------------------------------------------------------- */
