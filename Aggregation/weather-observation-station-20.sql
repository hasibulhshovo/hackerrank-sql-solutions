-- Author: Md. Hasibul Hasan Shovo
-- Email: hasibulhshovo@gmail.com
-- LinkedIn: https://www.linkedin.com/in/iam-hasibul/
SELECT round(lat_n, 4)
FROM station s
WHERE (SELECT count(lat_n) FROM station WHERE lat_n > s.lat_n) = (SELECT count(lat_n) FROM station WHERE lat_n < s.lat_n);