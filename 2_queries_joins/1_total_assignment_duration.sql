SELECT sum(assignment_submissions.duration)
FROM assignment_submissions
JOIN students
ON (assignment_submissions.student_id = students.id)
WHERE students.name = 'Ibrahim Schimmel';

-- -- answer
-- SELECT sum(assignment_submissions.duration)
-- FROM assignment_submissions
-- JOIN students
-- ON (assignment_submissions.student_id = students.id)
-- WHERE students.name = 'Ibrahim Schimmel';