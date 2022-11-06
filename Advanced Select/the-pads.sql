-- Author: Md. Hasibul Hasan Shovo
-- Email: hasibulhshovo@gmail.com
-- LinkedIn: https://www.linkedin.com/in/iam-hasibul/
SELECT concat(name, '(',substr(occupation,1,1),')')
FROM occupations
ORDER BY name;
SELECT concat('There are a total of ',count(occupation),' ',lower(occupation),'s.')
FROM occupations
GROUP BY occupation
ORDER BY count(occupation), occupation;