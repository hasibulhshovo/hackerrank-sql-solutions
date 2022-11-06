-- Author: Md. Hasibul Hasan Shovo
-- Email: hasibulhshovo@gmail.com
-- LinkedIn: https://www.linkedin.com/in/iam-hasibul/
SELECT round(sum(lat_n),4)
FROM station
WHERE lat_n > 38.7880 AND lat_n < 137.2345;