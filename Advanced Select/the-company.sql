-- Author: Md. Hasibul Hasan Shovo
-- Email: hasibulhshovo@gmail.com
-- LinkedIn: https://www.linkedin.com/in/iam-hasibul/
SELECT company_code, founder, 
(SELECT count(DISTINCT lead_manager_code) FROM lead_manager WHERE company_code = c.company_code), (select count(distinct senior_manager_code) from senior_manager where company_code = c.company_code), (select count(distinct manager_code) from manager where company_code = c.company_code), (select count(distinct employee_code) from employee where company_code = c.company_code)
FROM company c
ORDER BY company_code;