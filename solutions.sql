-- hackerrank - sql
-- ----------------------------------------------------------------------------------
-- https://www.hackerrank.com/challenges/japanese-cities-attributes/problem
SELECT * FROM city WHERE countrycode = 'JPN'

-- https://www.hackerrank.com/challenges/select-by-id/problem
SELECT * FROM city WHERE id = 1661

-- https://www.hackerrank.com/challenges/select-all-sql/problem
SELECT * FROM city

-- https://www.hackerrank.com/challenges/revising-the-select-query-2/problem
SELECT name FROM city WHERE countrycode = 'USA' AND population > 120000

-- https://www.hackerrank.com/challenges/revising-the-select-query/problem
SELECT * FROM city WHERE countrycode = 'USA' AND population > 100000
