-- Students who scored in the exam and the course in which they passed the exam will be listed.
SELECT
    u.firstname AS student_firstname,
    u.lastname AS student_lastname,
    s.title AS subject_title,
    es.score AS exam_score
FROM   exam_score es  JOIN   user u ON es.user_id = u.id JOIN
subject_assign sa ON es.subject_assign_id = sa.id JOIN
subject s ON sa.subject_id = s.id JOIN semester sem ON sa.semester_id = sem.id;

-- Returns the number of students and teachers members in each faculty
SELECT
    f.title AS faculty_title,
    COUNT(DISTINCT u.id) AS student_count,
    COUNT(DISTINCT p.id) AS teacher_count
FROM faculty f
         LEFT JOIN user u ON f.id = u.faculty_id AND u.role = 'STUDENT'
         LEFT JOIN user p ON f.id = p.faculty_id AND p.role = 'TEACHER'
GROUP BY f.title;

-- each student count in each group
SELECT
    sg.title AS group_title,
    COUNT(u.id) AS student_count
FROM student_group sg
         LEFT JOIN user u ON sg.id = u.group_id
WHERE u.role = 'STUDENT' GROUP BY sg.title;
