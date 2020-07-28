/* hackerrank - sql */
/* ------------------------------------------------------------------------------- */

/* https://www.hackerrank.com/challenges/select-all-sql/problem */
SELECT * FROM city

/* https://www.hackerrank.com/challenges/select-by-id/problem */
SELECT * FROM city WHERE id = 1661

/* ------------------------------------------------------------------------------- */

/* https://www.hackerrank.com/challenges/revising-the-select-query/problem */
SELECT * FROM city WHERE countrycode = 'USA' AND population > 100000

/* https://www.hackerrank.com/challenges/revising-the-select-query-2/problem */
SELECT name FROM city WHERE countrycode = 'USA' AND population > 120000

/* ------------------------------------------------------------------------------- */

/* https://www.hackerrank.com/challenges/japanese-cities-attributes/problem */
SELECT * FROM city WHERE countrycode = 'JPN'

/* https://www.hackerrank.com/challenges/japanese-cities-name/problem */
SELECT name FROM city WHERE countrycode = 'JPN'

/* ------------------------------------------------------------------------------- */

/* https://www.hackerrank.com/challenges/weather-observation-station-1/problem */
SELECT city, state FROM station

/* https://www.hackerrank.com/challenges/weather-observation-station-2/problem */
SELECT ROUND(SUM(lat_n), 2), ROUND(SUM(long_w), 2) FROM station

/* https://www.hackerrank.com/challenges/weather-observation-station-3/problem */
SELECT DISTINCT city FROM station WHERE id%2 LIKE 0

/* https://www.hackerrank.com/challenges/weather-observation-station-4/problem */

/* ------------------------------------------------------------------------------- */
/* ------------------------------------------------------------------------------- */
/* ------------------------------------------------------------------------------- */
/* ------------------------------------------------------------------------------- */
/* ------------------------------------------------------------------------------- */
