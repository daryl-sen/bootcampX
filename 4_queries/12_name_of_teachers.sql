-- SELECT DISTINCT
--   teachers.name as teacher,
--   cohorts.name as cohort
-- FROM teachers
-- JOIN assistance_requests on teachers.id = assistance_requests.teacher_id
-- JOIN cohorts ON teachers.start_date = cohorts.start_date
-- WHERE cohorts.name = 'JUL02'
-- ORDER BY teachers.name;

---- correct answer
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;