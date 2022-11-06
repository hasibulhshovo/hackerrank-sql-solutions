-- Author: Md. Hasibul Hasan Shovo
-- Email: hasibulhshovo@gmail.com
-- LinkedIn: https://www.linkedin.com/in/iam-hasibul/
SET @var:=0; 
SELECT repeat('* ', @var:= @var + 1) 
FROM information_schema.tables
WHERE @var < 20;