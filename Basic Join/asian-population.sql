-- Author: Md. Hasibul Hasan Shovo
-- Email: hasibulhshovo@gmail.com
-- LinkedIn: https://www.linkedin.com/in/iam-hasibul/
SELECT sum(City.Population)
FROM City 
INNER JOIN Country ON City.CountryCode = Country.Code 
WHERE Country.Continent = 'Asia';