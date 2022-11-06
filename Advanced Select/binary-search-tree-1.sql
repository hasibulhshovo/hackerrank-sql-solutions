-- Author: Md. Hasibul Hasan Shovo
-- Email: hasibulhshovo@gmail.com
-- LinkedIn: https://www.linkedin.com/in/iam-hasibul/
SELECT N,
CASE
WHEN P IS NULL THEN 'Root'
WHEN N IN (SELECT DISTINCT P FROM BST WHERE P IS NOT NULL) THEN 'Inner'
ELSE 'Leaf'
END
FROM BST
ORDER BY N;