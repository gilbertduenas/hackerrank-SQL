/* https://www.hackerrank.com/challenges/african-cities/problem */
SELECT city.name
FROM city
JOIN country ON city.countrycode = country.code
WHERE country.continent = 'Africa';

/* https://www.hackerrank.com/challenges/asian-population/problem */
SELECT SUM(city.population)
FROM city
JOIN country ON city.countrycode = country.code
WHERE country.continent = 'Asia';

/* https://www.hackerrank.com/challenges/average-population-of-each-continent/problem */
SELECT country.continent,
       FLOOR(AVG(city.population))
FROM city
JOIN country ON city.countrycode = country.code
GROUP BY country.continent;

/* https://www.hackerrank.com/challenges/challenges/problem */
SELECT C.hacker_id,
       H.name,
       COUNT(C.hacker_id) AS counted
FROM hackers H
JOIN challenges C ON H.hacker_id = C.hacker_id
GROUP BY C.hacker_id
HAVING counted =
  (SELECT MAX(max_count.counted_max)
   FROM
     (SELECT COUNT(hacker_id) AS counted_max
      FROM challenges
      GROUP BY hacker_id
      ORDER BY hacker_id) max_count)
OR counted IN
  (SELECT all_count.counted_all
   FROM
     (SELECT COUNT(*) AS counted_all
      FROM challenges
      GROUP BY hacker_id) all_count
   GROUP BY all_count.counted_all
   HAVING COUNT(all_count.counted_all) = 1)
ORDER BY counted DESC,
         C.hacker_id;

/* https://www.hackerrank.com/challenges/full-score/problem */
SELECT H.hacker_id,
       H.name
FROM hackers H
JOIN submissions S ON H.hacker_id = S.hacker_id
JOIN challenges C ON S.challenge_id = C.challenge_id
JOIN difficulty D ON C.difficulty_level = D.difficulty_level
WHERE D.score = S.score
GROUP BY H.hacker_id,
         H.name
HAVING COUNT(S.hacker_id) > 1
ORDER BY COUNT(S.hacker_id) DESC, S.hacker_id;

/* https://www.hackerrank.com/challenges/harry-potter-and-wands/problem */
SELECT W.id,
       P.age,
       W.coins_needed,
       W.power
FROM wands W
JOIN wands_property P ON W.code = P.code
WHERE is_evil = 0
  AND W.coins_needed =
    (SELECT MIN(coins_needed)
     FROM WANDS AS W1
     JOIN WANDS_PROPERTY AS P1 ON W1.code = P1.code
     WHERE W1.power = W.power
       AND P1.age = P.age)
ORDER BY W.power DESC,
         P.age DESC;

/* https://www.hackerrank.com/challenges/the-report/problem */
SELECT CASE
           WHEN grades.grade > 7 THEN students.name
           ELSE 'NULL'
       END,
       grades.grade,
       students.marks
FROM students
JOIN grades ON students.marks BETWEEN grades.min_mark AND grades.max_mark
ORDER BY grades.grade DESC,
         students.name,
         students.marks;

