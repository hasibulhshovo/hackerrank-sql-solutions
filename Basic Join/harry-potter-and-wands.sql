-- Author: Md. Hasibul Hasan Shovo
-- Email: hasibulhshovo@gmail.com
-- LinkedIn: https://www.linkedin.com/in/iam-hasibul/
SELECT w.id, wp.age, w.coins_needed, w.power
FROM wands w
JOIN wands_property wp ON wp.code = w.code
WHERE wp.is_evil = 0 AND w.coins_needed = (SELECT MIN(w1.coins_needed) 
                                           FROM wands w1
                                           JOIN wands_property wp1
                                           ON wp1.code = w1.code
                                           WHERE wp.age = wp1.age
                                           AND w.power = w1.power) 
ORDER BY w.power DESC, wp.age DESC;