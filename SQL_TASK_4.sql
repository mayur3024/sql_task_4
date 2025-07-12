ALTER TABLE colleges
ADD CONSTRAINT chk_student_count CHECK (student_count >= 0);

ALTER TABLE colleges
ADD CONSTRAINT chk_dept_count CHECK (dept_count >= 0);

ALTER TABLE colleges
ADD CONSTRAINT chk_prof_count CHECK (prof_count >= 0);

--also add contraint to not allow date before 2000

ALTER TABLE colleges
ADD CONSTRAINT chk_establishment_date CHECK (establishment_date >= '2000-01-01');

--select student_count from college
--where not NULL student_count  
--order by student_count desc limit 1

SELECT * 
FROM colleges
WHERE student_count IS NOT NULL
ORDER BY student_count DESC
LIMIT 1;

SELECT * 
FROM colleges
WHERE student_count IS NOT NULL
ORDER BY student_count ASC
LIMIT 1;




