/* ------------------------------------------------------------------------------- */

/* https://www.hackerrank.com/challenges/average-population/problem */
SELECT FLOOR(AVG(population)) FROM city;

/* https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem */
SELECT COUNT(name) FROM city WHERE population > 100000;

/* https://www.hackerrank.com/challenges/revising-aggregations-sum/problem */
SELECT SUM(population) FROM city WHERE district = 'California';

/* https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem */
SELECT AVG(population) FROM city WHERE district = 'California';
