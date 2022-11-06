-- Author: Md. Hasibul Hasan Shovo
-- Email: hasibulhshovo@gmail.com
-- LinkedIn: https://www.linkedin.com/in/iam-hasibul/
SELECT round((abs(min(lat_n)-max(lat_n)) + abs(min(long_w)-max(long_w))),4)
FROM station;