-- Insert Departments
INSERT INTO departments (name) VALUES 
('Computer Science'), ('Mathematics'), ('Physics');

-- Insert Instructors
INSERT INTO instructors (name, email, department_id) VALUES
('Alice Kim', 'alice@college.edu', 1),
('Bob Njoroge', 'bob@college.edu', 2),
('Cynthia Wang', 'cynthia@college.edu', 3);

-- Insert Courses
INSERT INTO courses (title, credits, department_id, instructor_id) VALUES
('Database Systems', 3, 1, 1),
('Calculus II', 4, 2, 2),
('Quantum Mechanics', 3, 3, 3);

-- Insert Students
INSERT INTO students (name, email, dob) VALUES
('John Doe', 'john@example.com', '2001-05-15'),
('Jane Mugo', 'jane@example.com', '2002-11-10'),
('Alex Kip', 'alex@example.com', '2000-03-22');

-- Insert Enrollments
INSERT INTO enrollments (student_id, course_id, semester, grade) VALUES
(1, 1, 'Fall 2023', 'A'),
(1, 2, 'Fall 2023', 'B+'),
(2, 1, 'Fall 2023', 'B'),
(3, 3, 'Fall 2023', 'A-');
