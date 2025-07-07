-- Sample SQL Queries for College Database Capstone Project

-- 1. List all students with their enrolled courses and grades
SELECT s.student_id, s.first_name, s.last_name, 
       c.course_name, e.semester, e.year, e.grade
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
ORDER BY s.last_name, s.first_name, e.year, e.semester;

-- 2. Find all courses taught by a specific instructor
SELECT i.first_name, i.last_name, c.course_name, 
       ci.semester, ci.year
FROM Instructors i
JOIN Course_Instructors ci ON i.instructor_id = ci.instructor_id
JOIN Courses c ON ci.course_id = c.course_id
WHERE i.instructor_id = 1;

-- 3. Calculate average GPA per department
SELECT d.department_name, 
       ROUND(AVG(CASE 
           WHEN e.grade = 'A' THEN 4.0
           WHEN e.grade = 'A-' THEN 3.7
           WHEN e.grade = 'B+' THEN 3.3
           WHEN e.grade = 'B' THEN 3.0
           WHEN e.grade = 'B-' THEN 2.7
           WHEN e.grade = 'C+' THEN 2.3
           WHEN e.grade = 'C' THEN 2.0
           WHEN e.grade = 'C-' THEN 1.7
           WHEN e.grade = 'D+' THEN 1.3
           WHEN e.grade = 'D' THEN 1.0
           ELSE 0
       END), 2) AS avg_gpa
FROM Departments d
JOIN Courses c ON d.department_id = c.department_id
JOIN Enrollments e ON c.course_id = e.course_id
WHERE e.grade IS NOT NULL
GROUP BY d.department_name
ORDER BY avg_gpa DESC;

-- 4. Find students who haven't enrolled in any courses
SELECT s.student_id, s.first_name, s.last_name
FROM Students s
LEFT JOIN Enrollments e ON s.student_id = e.student_id
WHERE e.enrollment_id IS NULL;

-- 5. List courses with enrollment counts
SELECT c.course_id, c.course_name, 
       COUNT(e.student_id) AS enrollment_count
FROM Courses c
LEFT JOIN Enrollments e ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name
ORDER BY enrollment_count DESC;

-- 6. Find instructors teaching multiple courses in the same semester
SELECT i.instructor_id, i.first_name, i.last_name,
       ci.semester, ci.year, COUNT(*) AS courses_taught
FROM Instructors i
JOIN Course_Instructors ci ON i.instructor_id = ci.instructor_id
GROUP BY i.instructor_id, i.first_name, i.last_name, ci.semester, ci.year
HAVING COUNT(*) > 1
ORDER BY ci.year, ci.semester;

-- 7. Calculate department budgets per student
SELECT d.department_name, 
       d.budget, 
       COUNT(DISTINCT e.student_id) AS student_count,
       ROUND(d.budget / NULLIF(COUNT(DISTINCT e.student_id), 0), 2) AS budget_per_student
FROM Departments d
LEFT JOIN Courses c ON d.department_id = c.department_id
LEFT JOIN Enrollments e ON c.course_id = e.course_id
GROUP BY d.department_id, d.department_name, d.budget
ORDER BY budget_per_student DESC;

-- 8. Find students taking more than 12 credits in a semester
SELECT s.student_id, s.first_name, s.last_name,
       e.semester, e.year, SUM(c.credits) AS total_credits
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
GROUP BY s.student_id, s.first_name, s.last_name, e.semester, e.year
HAVING SUM(c.credits) > 12
ORDER BY total_credits DESC;