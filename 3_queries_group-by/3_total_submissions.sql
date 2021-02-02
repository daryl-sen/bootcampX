SELECT cohorts.name, count(assignment_submissions.*) AS count
FROM cohorts
JOIN students
ON students.cohort_id = cohorts.id
JOIN assignment_submissions
ON assignment_submissions.student_id = students.id
GROUP BY cohorts.name
ORDER BY count DESC;