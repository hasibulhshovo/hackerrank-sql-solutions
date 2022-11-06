-- Author: Md. Hasibul Hasan Shovo
-- Email: hasibulhshovo@gmail.com
-- LinkedIn: https://www.linkedin.com/in/iam-hasibul/
WITH result(hacker_id, name, total_challenges) AS
(
    SELECT h.hacker_id, h.name, COUNT(c.challenge_id) AS total_challenges
    FROM hackers h
    LEFT JOIN challenges c ON h.hacker_id = c.hacker_id 
    GROUP BY h.hacker_id, h.name
)
SELECT *
FROM result 
WHERE total_challenges NOT IN 
(SELECT total_challenges FROM result WHERE total_challenges != (SELECT MAX(total_challenges) FROM result) GROUP BY total_challenges HAVING COUNT(total_challenges) > 1 )
ORDER BY total_challenges DESC, hacker_id;