-- Author: Md. Hasibul Hasan Shovo
-- Email: hasibulhshovo@gmail.com
-- LinkedIn: https://www.linkedin.com/in/iam-hasibul/
SELECT s.name
FROM students s
JOIN friends f ON f.id = s.id
JOIN packages p ON p.id = f.id
JOIN packages fp ON fp.id = f.friend_id
WHERE fp.salary > p.salary
ORDER BY fp.salary;