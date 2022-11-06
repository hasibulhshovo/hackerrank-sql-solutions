-- Author: Md. Hasibul Hasan Shovo
-- Email: hasibulhshovo@gmail.com
-- LinkedIn: https://www.linkedin.com/in/iam-hasibul/
SELECT co.Continent, floor(avg(ci.Population))
FROM City ci
INNER JOIN Country co ON ci.CountryCode = co.Code
GROUP BY co.Continent;