
--#1--
SELECT count(booked_lesson_id), extract(month from date) as month
from booked_lesson
WHERE extract(year from date) = 2022
group by month

SELECT count(ensemble_id) as ensembles, extract(month from ensemble.date) as month
from ensemble, booked_lesson
where ensemble.booked_lesson_id = booked_lesson.booked_lesson_id
AND extract(year from ensemble.date) = 2022
group by month

SELECT count(group_lesson.group_lesson_id) as group_lessons, extract(month from group_lesson.date) as month
from group_lesson, booked_lesson
where group_lesson.booked_lesson_id = booked_lesson.booked_lesson_id
AND extract(year from group_lesson.date) = 2022
group by month


SELECT count(individual_lesson.individual_lesson_id) as individual_lessons, extract(month from individual_lesson.date) as month
FROM individual_lesson
JOIN booked_lesson ON individual_lesson.booked_lesson_id = booked_lesson.booked_lesson_id
WHERE extract(year from individual_lesson.date) = 2022
GROUP BY month


--#2--
SELECT COUNT(DISTINCT s.student_id) as num_students,
        s.sibling_count as num_siblings
FROM (
    SELECT student.student_id as student_id, COUNT(sibling.student_id_2) as sibling_count
    FROM student
    INNER JOIN sibling
    ON student.student_id = sibling.student_id_1
    WHERE sibling.student_id_2 IS NOT NULL
    GROUP BY student.student_id
    UNION ALL
    SELECT student.student_id as student_id, COUNT(sibling.student_id_2) as sibling_count
    FROM student
    INNER JOIN sibling
    ON student.student_id = sibling.student_id_2
    WHERE sibling.student_id_2 IS NOT NULL
    GROUP BY student.student_id
    UNION ALL
    SELECT student.student_id as student_id, 0 as sibling_count
    FROM student
    INNER JOIN sibling
    ON student.student_id = sibling.student_id_1
    WHERE sibling.student_id_2 IS NULL
) s
GROUP BY s.sibling_count
ORDER BY s.sibling_count ASC;

--#3--
SELECT count(booked_lesson_id), booked_lesson.instructor_id
from booked_lesson, instructor_id
where instructor.instructor_id = booked_lesson.instructor_id
AND extract(month from date) = extract(month from NOW())
group by booked_lesson.instructor_id
having count(booked_lesson_id) > 8

--#4--
SELECT e.ensemble_id, e.date, e.genre,
        CASE
            WHEN e.current_enrrollments = e.maximum_enrollments THEN 'full booked'
            WHEN e.current_entrollments + 2 >= e.maximum_enrollments THEN '1-2 seats left'
            ELSE 'more seats left'
        END as seats_status
FROM ensemble e
WHERE e.date BETWEEN (CURRENT_TIMESTAMP + INTERVAL '1' DAY) AND (CURRENT_TIMESTAMP + INTERVAL '7' DAY)
ORDER BY e.genre, e.date;