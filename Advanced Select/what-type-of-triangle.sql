-- Author: Md. Hasibul Hasan Shovo
-- Email: hasibulhshovo@gmail.com
-- LinkedIn: https://www.linkedin.com/in/iam-hasibul/
SELECT (CASE WHEN (A = B AND B = C AND C = A) THEN 'Equilateral' ELSE 
CASE WHEN ((A + B) <= C OR (C + B) <= A OR (C + A) <= B) THEN 'Not A Triangle' ELSE
CASE WHEN (A != B AND B != C AND C != A) THEN 'Scalene' ELSE 'Isosceles'
END END END) AS type
FROM triangles;