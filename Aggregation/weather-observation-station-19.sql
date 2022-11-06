-- Author: Md. Hasibul Hasan Shovo
-- Email: hasibulhshovo@gmail.com
-- LinkedIn: https://www.linkedin.com/in/iam-hasibul/
SELECT round(sqrt(power(max(lat_n)-min(lat_n),2) + power(max(long_w)-min(long_w),2)),4)
FROM station;