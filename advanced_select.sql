/* https://www.hackerrank.com/challenges/binary-search-tree-1/problem */
SELECT N,
       IF(P IS NULL, 'Root', IF(
                                  (SELECT COUNT(*)
                                   FROM BST
                                   WHERE P=B.N)>0, 'Inner', 'Leaf'))
FROM BST AS B
ORDER BY N;

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
SELECT C.company_code,
       C.founder,
       COUNT(DISTINCT LM.lead_manager_code),
       COUNT(DISTINCT SM.senior_manager_code),
       COUNT(DISTINCT M.manager_code),
       COUNT(DISTINCT E.employee_code)
FROM company C,
     lead_manager LM,
     senior_manager SM,
     manager M,
     employee E
WHERE C.company_code = LM.company_code
  AND LM.lead_manager_code = SM.lead_manager_code
  AND SM.senior_manager_code = M.senior_manager_code
  AND M.manager_code = E.manager_code
GROUP BY c.company_code,
         c.founder
ORDER BY C.company_code ASC;

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
 
/**/
