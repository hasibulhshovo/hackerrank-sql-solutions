-- Author: Md. Hasibul Hasan Shovo
-- Email: hasibulhshovo@gmail.com
-- LinkedIn: https://www.linkedin.com/in/iam-hasibul/
SELECT 
    c.contest_id,
    c.hacker_id,
    c.name,
    SUM(ss.total_submissions) AS total_submissions,
    SUM(ss.total_accepted_submissions) AS total_accepted_submissions,
    SUM(vs.total_views) AS total_views,
    SUM(vs.total_unique_views) AS total_unique_views
FROM contests c
JOIN colleges co ON co.contest_id = c.contest_id
JOIN challenges ch ON ch.college_id = co.college_id
LEFT JOIN (SELECT
           challenge_id,
           SUM(total_views) AS total_views,
           SUM(total_unique_views) AS total_unique_views
           FROM view_stats
           GROUP BY challenge_id) vs ON vs.challenge_id = ch.challenge_id
LEFT JOIN (SELECT
           challenge_id,
           SUM(total_submissions) AS total_submissions,
           SUM(total_accepted_submissions) AS total_accepted_submissions
           FROM submission_stats
           GROUP BY challenge_id) ss ON ss.challenge_id = ch.challenge_id
GROUP BY c.contest_id, c.hacker_id, c.name
HAVING
    SUM(ss.total_submissions) != 0 OR
    SUM(ss.total_accepted_submissions) != 0 OR
    SUM(vs.total_views) != 0 OR
    SUM(vs.total_unique_views) != 0
ORDER BY c.contest_id;