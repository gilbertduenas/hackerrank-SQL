/* https://www.hackerrank.com/challenges/draw-the-triangle-1/problem */
SET @star = 21;

SELECT REPEAT('* ', @star := @star - 1) 
FROM information_schema.TABLES;

/* https://www.hackerrank.com/challenges/draw-the-triangle-2/problem */
SET @star = 0;

SELECT REPEAT('* ', @star := @star + 1)
FROM information_schema.TABLES
WHERE @star < 20;
