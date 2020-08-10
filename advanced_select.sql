/* https://www.hackerrank.com/challenges/binary-search-tree-1/problem */

/* https://www.hackerrank.com/challenges/occupations */
SELECT MAX(CASE
               WHEN occupation = 'Doctor' THEN name
               ELSE NULL
           END) D,
       MAX(CASE
               WHEN occupation = 'Professor' THEN name
               ELSE NULL
           END) P,
       MAX(CASE
               WHEN occupation = 'Singer' THEN name
               ELSE NULL
           END) S,
       MAX(CASE
               WHEN occupation = 'Actor' THEN name
               ELSE NULL
           END) A
FROM
  (SELECT *,
          RANK() OVER(PARTITION BY occupation
                      ORDER BY name) ranked
   FROM occupations) temp
GROUP BY ranked;

/* https://www.hackerrank.com/challenges/the-company/problem */

/* https://www.hackerrank.com/challenges/the-pads/problem */
SELECT CONCAT(name, '(', LEFT(occupation, 1), ')')
FROM occupations
ORDER BY name;

SELECT CONCAT('There are a total of ', COUNT(occupation), ' ', LOWER(occupation), 's.') total_jobs
FROM occupations
GROUP BY occupation
ORDER BY total_jobs;

/* https://www.hackerrank.com/challenges/what-type-of-triangle/problem */
SELECT CASE
           WHEN A+B > C
                AND A+C > B
                AND B+C > A THEN CASE
                                   WHEN A=C
                                        AND B=C THEN 'Equilateral'
                                   WHEN A=B
                                        OR A=C
                                        OR B=C THEN 'Isosceles'
                                   ELSE 'Scalene'
                               END
           ELSE 'Not A Triangle'
       END
FROM triangles;
