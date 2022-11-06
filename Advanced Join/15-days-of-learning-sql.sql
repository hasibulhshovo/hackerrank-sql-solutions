-- Author: Md. Hasibul Hasan Shovo
-- Email: hasibulhshovo@gmail.com
-- LinkedIn: https://www.linkedin.com/in/iam-hasibul/
WITH
daily_sub AS (
    SELECT submission_date, 
    COUNT(DISTINCT hacker_id) sub_cnt 
    FROM
    (
        SELECT submission_date, hacker_id,
        DENSE_RANK() OVER (PARTITION BY hacker_id ORDER BY submission_date ASC)
        AS hacker_id_dr, 
        DENSE_RANK() OVER (ORDER BY submission_date ASC) AS DATE_DR
        FROM SUBMISSIONS
    ) WHERE hacker_id_dr = date_dr
    GROUP BY submission_date
),
max_sub AS (
    SELECT submission_date, hacker_id FROM
    (
        SELECT submission_date, hacker_id, cnt,
        ROW_NUMBER() OVER (PARTITION BY submission_date ORDER BY cnt DESC,
                           hacker_id ASC) AS row_num FROM
        (
            SELECT submission_date, hacker_id, COUNT(submission_id) AS cnt
            FROM submissions
            GROUP BY submission_date, hacker_id
        )
    ) WHERE row_num = 1
)
SELECT ms.submission_date, sub_cnt, ms.hacker_id, h.name
FROM max_sub ms
LEFT JOIN hackers h ON h.hacker_id = ms.hacker_id
LEFT JOIN daily_sub ds ON ms.submission_date = ds.submission_date;
