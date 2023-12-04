/*Show the number of lessons given per month during a specified year. */
 CREATE VIEW lessons_given_per_month AS
 SELECT
    TO_CHAR(time, 'Mon') AS "Month",
	COUNT(l.lesson_id) AS "Total",
    SUM(CASE WHEN il.lesson_id IS NOT NULL THEN 1 ELSE 0 END) AS "Individual",
    SUM(CASE WHEN gl.lesson_id IS NOT NULL THEN 1 ELSE 0 END) AS "Group",
    SUM(CASE WHEN el.lesson_id IS NOT NULL THEN 1 ELSE 0 END) AS "Ensemble"
    
FROM
    lesson_schedule l
LEFT JOIN
    individual_lesson il ON l.lesson_id = il.lesson_id
LEFT JOIN
    group_lesson gl ON l.lesson_id = gl.lesson_id
LEFT JOIN
    ensemble el ON l.lesson_id = el.lesson_id

WHERE 
  EXTRACT(YEAR FROM l.time) = 2023
GROUP BY 
  TO_CHAR(l.time, 'Mon')
ORDER BY 
  TO_CHAR(l.time, 'Mon')


/*Show how many students there are with no sibling, with one sibling, with two siblings, etc.*/
CREATE VIEW count_siblings AS
WITH FamilySiblings AS (
  SELECT family_id, COUNT(family_id) as siblings
  FROM student
  GROUP BY family_id
)
SELECT siblings - 1 as "No of Siblings", SUM(siblings) as "No of Students"
FROM FamilySiblings
WHERE siblings <= 3 
GROUP BY siblings
ORDER BY siblings ASC;


/*Instructor lessons*/

	CREATE MATERIALIZED VIEW instructor_lessons  AS
SELECT instructor.instructor_id AS "Instructor Id",
    person.first_name as "First Name",
    person.last_name as "Last Name", COUNT(lesson_schedule.lesson_id) AS "No of Lessons"
  FROM lesson_schedule
  INNER JOIN 
  instructor ON lesson_schedule.instructor_id = instructor.instructor_id
  INNER JOIN 
  person ON instructor.person_id = person.person_id 
  GROUP BY
    instructor.instructor_id, person.first_name, person.last_name
  HAVING COUNT(lesson_schedule.instructor_id) > 3
   ORDER BY
  "No of Lessons" DESC;


/*List all ensembles held during the next week*/
CREATE VIEW ensemble_next_week AS
SELECT to_char(time, 'Day') as Day,  g.name AS Genre,
   
    CASE
        WHEN CAST(el.number_of_students AS INT) = CAST(el.max_students AS INT) THEN 'No Seats'
        WHEN CAST(el.number_of_students AS INT) >= CAST(el.max_students AS INT) - 2 THEN '1 or 2 Seats'
        ELSE 'Many Seats'
    END AS "No of Free Seats"
FROM 
    ensemble el
JOIN 
    genre g ON el.genre_id = g.genre_id
JOIN 
    lesson_schedule l ON el.lesson_id = l.lesson_id
	WHERE date_trunc('week', l.time) = date_trunc('week', now()) + interval '1 week' 
	ORDER BY 
    Time ASC, Genre ASC;