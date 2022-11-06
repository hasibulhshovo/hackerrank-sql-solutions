-- Author: Md. Hasibul Hasan Shovo
-- Email: hasibulhshovo@gmail.com
-- LinkedIn: https://www.linkedin.com/in/iam-hasibul/
SELECT
    (CASE WHEN mtbl.grade < 8 THEN NULL ELSE mtbl.name END) AS
    name, mtbl.grade, mtbl.marks
FROM (
    SELECT s.name, s.marks, (SELECT grade FROM Grades WHERE s.marks BETWEEN min_mark AND max_mark) AS grade
    FROM Students s
) mtbl
ORDER BY
    mtbl.grade DESC,
    CASE WHEN mtbl.grade >= 8 THEN mtbl.name END ASC,
    CASE WHEN mtbl.grade < 8 THEN mtbl.grade END DESC,
    CASE WHEN mtbl.grade < 8 THEN mtbl.marks END ASC;