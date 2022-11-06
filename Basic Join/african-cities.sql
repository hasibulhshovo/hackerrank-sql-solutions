-- Author: Md. Hasibul Hasan Shovo
-- Email: hasibulhshovo@gmail.com
-- LinkedIn: https://www.linkedin.com/in/iam-hasibul/
SELECT City.Name 
FROM City
INNER JOIN Country ON City.CountryCode = Country.Code
WHERE Continent = 'Africa';