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

/* https://www.hackerrank.com/challenges/the-report/problem */
SELECT
  CASE
    WHEN grades.grade > 7 THEN students.name
    ELSE 'NULL'
  END,
grades.grade, students.marks FROM students
INNER JOIN grades
ON students.marks BETWEEN grades.min_mark AND grades.max_mark
ORDER BY grades.grade DESC, students.name, students.marks;

/* https://www.hackerrank.com/challenges/full-score/problem */


/* ---------------------------------------------------------------------------------------------------------------------- */

/* ---------------------------------------------------------------------------------------------------------------------- */

/* ---------------------------------------------------------------------------------------------------------------------- */

/* ---------------------------------------------------------------------------------------------------------------------- */

/* ---------------------------------------------------------------------------------------------------------------------- */

/* ---------------------------------------------------------------------------------------------------------------------- */

/* ---------------------------------------------------------------------------------------------------------------------- */
