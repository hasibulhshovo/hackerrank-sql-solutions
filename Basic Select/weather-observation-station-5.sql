-- Author: Md. Hasibul Hasan Shovo
-- Email: hasibulhshovo@gmail.com
-- LinkedIn: https://www.linkedin.com/in/iam-hasibul/
SELECT City, length(City) FROM Station ORDER BY length(City) desc, City asc LIMIT 1;
SELECT City, length(City) FROM Station ORDER BY length(City) asc, City asc LIMIT 1;