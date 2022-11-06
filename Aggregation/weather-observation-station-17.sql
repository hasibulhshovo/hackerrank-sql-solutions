-- Author: Md. Hasibul Hasan Shovo
-- Email: hasibulhshovo@gmail.com
-- LinkedIn: https://www.linkedin.com/in/iam-hasibul/
SELECT round(long_w,4)
FROM station
WHERE lat_n = (SELECT min(lat_n) FROM station WHERE lat_n > 38.7780);