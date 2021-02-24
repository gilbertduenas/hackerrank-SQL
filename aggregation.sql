/* https://www.hackerrank.com/challenges/average-population/problem */
SELECT FLOOR(AVG(population))
FROM city; 

/* https://www.hackerrank.com/challenges/earnings-of-employees/problem */
SELECT months * salary earnings,
       COUNT(*)
FROM employee
GROUP BY earnings
ORDER BY earnings DESC
LIMIT 1;

/* https://www.hackerrank.com/challenges/japan-population/problem */
SELECT SUM(population)
FROM city
WHERE countrycode = 'JPN';

/* https://www.hackerrank.com/challenges/population-density-difference/problem */
SELECT MAX(population) - MIN(population)
FROM city;

/* https://www.hackerrank.com/challenges/revising-aggregations-sum/problem */
SELECT SUM(population)
FROM city
WHERE district = 'California';

/* https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem */
SELECT AVG(population)
FROM city
WHERE district = 'California';

/* https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem */
SELECT COUNT(name)
FROM city
WHERE population > 100000;

/* https://www.hackerrank.com/challenges/the-blunder/problem */
SELECT CEIL(AVG(salary) - AVG(REPLACE(salary, '0', '')))
FROM employees;

/* https://www.hackerrank.com/challenges/weather-observation-station-13/problem */
SELECT ROUND(SUM(lat_n), 4)
FROM station
WHERE lat_n > 38.7880
  AND lat_n < 137.2345;

/* https://www.hackerrank.com/challenges/weather-observation-station-14/problem */
SELECT ROUND(MAX(lat_n), 4)
FROM station
WHERE lat_n < 137.2345;

/* https://www.hackerrank.com/challenges/weather-observation-station-15/problem */
SELECT ROUND(long_w, 4)
FROM station
WHERE lat_n < 137.2345
ORDER BY lat_n DESC
LIMIT 1;

/* https://www.hackerrank.com/challenges/weather-observation-station-16/problem */
SELECT ROUND(lat_n, 4)
FROM station
WHERE lat_n > 38.7780
ORDER BY lat_n
LIMIT 1;

/* https://www.hackerrank.com/challenges/weather-observation-station-17/problem */
SELECT ROUND(long_w, 4)
FROM station
WHERE lat_n > 38.7780
ORDER BY lat_n ASC
LIMIT 1;

/* https://www.hackerrank.com/challenges/weather-observation-station-18/problem */
SELECT ROUND(ABS(MIN(lat_n) - MAX(lat_n)) + ABS(MIN(long_w) - MAX(long_w)), 4)
FROM station;

/* https://www.hackerrank.com/challenges/weather-observation-station-19/problem */
SELECT ROUND(SQRT(POW((MIN(lat_n) - MAX(lat_n)), 2) + POW(ABS(MIN(long_w) - MAX(long_w)), 2)), 4)
FROM station;

/* https://www.hackerrank.com/challenges/weather-observation-station-20/problem */
SELECT ROUND(S.lat_n, 4)
FROM station S
WHERE
    (SELECT COUNT(lat_n)
     FROM station
     WHERE lat_n < S.lat_n) =
    (SELECT COUNT(lat_n)
     FROM station
     WHERE lat_n > S.lat_n)

                                                              
