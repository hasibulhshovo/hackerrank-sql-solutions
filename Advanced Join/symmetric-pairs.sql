-- Author: Md. Hasibul Hasan Shovo
-- Email: hasibulhshovo@gmail.com
-- LinkedIn: https://www.linkedin.com/in/iam-hasibul/
SELECT f1.x, f1.y
FROM functions f1
JOIN functions f2 ON f1.x = f2.y AND f1.y = f2.x
GROUP BY f1.x, f1.y
HAVING COUNT(f1.x) > 1 OR f1.x < f1.y
ORDER BY f1.x;