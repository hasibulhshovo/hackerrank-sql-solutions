-- Author: Md. Hasibul Hasan Shovo
-- Email: hasibulhshovo@gmail.com
-- LinkedIn: https://www.linkedin.com/in/iam-hasibul/
SELECT stbl.start_date, MIN(etbl.end_date) AS end_date
FROM
(SELECT start_date FROM projects WHERE start_date NOT IN (SELECT end_date FROM projects)) stbl,
(SELECT end_date FROM projects WHERE end_date NOT IN (SELECT start_date FROM projects)) etbl
WHERE stbl.start_date < etbl.end_date
GROUP BY stbl.start_date
ORDER BY DATEDIFF(MIN(etbl.end_date), stbl.start_date) ASC, stbl.start_date ASC;