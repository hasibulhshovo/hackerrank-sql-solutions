-- Author: Md. Hasibul Hasan Shovo
-- Email: hasibulhshovo@gmail.com
-- LinkedIn: https://www.linkedin.com/in/iam-hasibul/
WITH pivot_tbl AS (SELECT *, row_number() OVER(PARTITION BY occupation ORDER BY name) AS row_data FROM OCCUPATIONS)
SELECT 
    MAX(CASE WHEN OCCUPATION ='Doctor' THEN NAME ELSE NULL END),
    MAX(CASE WHEN OCCUPATION = 'Professor' THEN NAME ELSE NULL END),
    MAX(CASE WHEN OCCUPATION = 'Singer' THEN NAME ELSE NULL END),
    MAX(CASE WHEN OCCUPATION = 'Actor' THEN NAME ELSE NULL END) 
FROM pivot_tbl GROUP BY row_data;