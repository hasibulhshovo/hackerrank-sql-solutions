-- Author: Md. Hasibul Hasan Shovo
-- Email: hasibulhshovo@gmail.com
-- LinkedIn: https://www.linkedin.com/in/iam-hasibul/
SELECT Name
FROM Students
WHERE Marks > 75
ORDER BY right(Name, 3), ID ASC;