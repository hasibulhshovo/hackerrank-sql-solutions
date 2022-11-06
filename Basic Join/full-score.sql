-- Author: Md. Hasibul Hasan Shovo
-- Email: hasibulhshovo@gmail.com
-- LinkedIn: https://www.linkedin.com/in/iam-hasibul/
SELECT CONCAT(mtbl.hacker_id, " ", mtbl.name) AS hacker
FROM (
    SELECT h.hacker_id, h.name, COUNT(c.challenge_id) AS count
    FROM hackers h
    LEFT JOIN submissions s ON s.hacker_id = h.hacker_id
    LEFT JOIN challenges c ON c.challenge_id = s.challenge_id
    LEFT JOIN difficulty d ON d.difficulty_level = c.difficulty_level
    WHERE s.score = d.score
    GROUP BY h.hacker_id, h.name
    ORDER BY hacker_id ASC
) mtbl
WHERE mtbl.count > 1
ORDER BY mtbl.count DESC, hacker_id ASC;