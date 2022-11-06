-- Author: Md. Hasibul Hasan Shovo
-- Email: hasibulhshovo@gmail.com
-- LinkedIn: https://www.linkedin.com/in/iam-hasibul/
SELECT mtbl.hacker_id, mtbl.name, SUM(mtbl.score) AS score
FROM (
    SELECT h.hacker_id, h.name, MAX(s.score) AS score
    FROM hackers h
    JOIN submissions s ON s.hacker_id = h.hacker_id
    WHERE s.score != 0
    GROUP BY h.hacker_id, h.name, challenge_id
) mtbl
GROUP BY mtbl.hacker_id, mtbl.name
ORDER BY SUM(mtbl.score) DESC, mtbl.hacker_id ASC;