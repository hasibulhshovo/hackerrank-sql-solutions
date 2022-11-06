-- Author: Md. Hasibul Hasan Shovo
-- Email: hasibulhshovo@gmail.com
-- LinkedIn: https://www.linkedin.com/in/iam-hasibul/
SELECT max(salary*months), count(*)
FROM employee
WHERE (salary*months) = (SELECT max(salary*months) FROM employee);