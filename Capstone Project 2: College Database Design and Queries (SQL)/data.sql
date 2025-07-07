-- Insert sample data for College Database Capstone Project

-- Departments
INSERT INTO Departments (department_name, building, budget) VALUES
('Computer Science', 'Engineering', 500000.00),
('Mathematics', 'Science', 350000.00),
('Physics', 'Science', 400000.00),
('English', 'Humanities', 300000.00),
('History', 'Humanities', 280000.00),
('Biology', 'Science', 450000.00),
('Chemistry', 'Science', 420000.00),
('Economics', 'Business', 380000.00),
('Psychology', 'Social Sciences', 320000.00),
('Art', 'Fine Arts', 250000.00);

-- Courses
INSERT INTO Courses (department_id, course_name, credits, description) VALUES
(1, 'Introduction to Programming', 4, 'Basic programming concepts using Python'),
(1, 'Data Structures', 4, 'Fundamental data structures and algorithms'),
(1, 'Database Systems', 3, 'Relational database design and SQL'),
(2, 'Calculus I', 4, 'Limits, derivatives, and integrals'),
(2, 'Linear Algebra', 3, 'Vector spaces and linear transformations'),
(3, 'Classical Mechanics', 4, 'Newtonian mechanics and kinematics'),
(4, 'English Composition', 3, 'College-level writing skills'),
(5, 'World History', 3, 'Survey of world civilizations'),
(6, 'Cell Biology', 4, 'Structure and function of cells'),
(7, 'Organic Chemistry', 4, 'Structure and reactions of organic compounds');

-- Instructors
INSERT INTO Instructors (department_id, first_name, last_name, email, hire_date, salary) VALUES
(1, 'John', 'Smith', 'jsmith@college.edu', '2010-08-15', 85000.00),
(1, 'Sarah', 'Johnson', 'sjohnson@college.edu', '2015-01-20', 78000.00),
(2, 'Robert', 'Williams', 'rwilliams@college.edu', '2008-09-01', 92000.00),
(3, 'Emily', 'Brown', 'ebrown@college.edu', '2012-03-10', 88000.00),
(4, 'Michael', 'Davis', 'mdavis@college.edu', '2018-08-25', 75000.00),
(5, 'Jennifer', 'Miller', 'jmiller@college.edu', '2016-06-15', 77000.00),
(6, 'David', 'Wilson', 'dwilson@college.edu', '2014-02-01', 83000.00),
(7, 'Lisa', 'Moore', 'lmoore@college.edu', '2019-01-10', 79000.00),
(8, 'James', 'Taylor', 'jtaylor@college.edu', '2011-09-05', 87000.00),
(9, 'Patricia', 'Anderson', 'panderson@college.edu', '2017-08-20', 76000.00);

-- Students
INSERT INTO Students (first_name, last_name, email, enrollment_date, date_of_birth) VALUES
('Alice', 'Johnson', 'alice.j@student.edu', '2022-09-01', '2003-05-15'),
('Bob', 'Williams', 'bob.w@student.edu', '2022-09-01', '2002-11-22'),
('Charlie', 'Brown', 'charlie.b@student.edu', '2021-09-01', '2001-07-30'),
('Diana', 'Miller', 'diana.m@student.edu', '2023-01-15', '2004-02-10'),
('Edward', 'Davis', 'edward.d@student.edu', '2021-09-01', '2000-12-05'),
('Fiona', 'Garcia', 'fiona.g@student.edu', '2022-09-01', '2003-09-18'),
('George', 'Rodriguez', 'george.r@student.edu', '2023-01-15', '2004-04-25'),
('Hannah', 'Martinez', 'hannah.m@student.edu', '2020-09-01', '1999-08-12'),
('Ian', 'Hernandez', 'ian.h@student.edu', '2022-09-01', '2002-06-20'),
('Jessica', 'Lopez', 'jessica.l@student.edu', '2021-09-01', '2001-03-08');

-- Course_Instructors
INSERT INTO Course_Instructors (course_id, instructor_id, semester, year) VALUES
(1, 1, 'Fall', 2023),
(2, 1, 'Fall', 2023),
(3, 2, 'Spring', 2024),
(4, 3, 'Fall', 2023),
(5, 3, 'Spring', 2024),
(6, 4, 'Fall', 2023),
(7, 5, 'Spring', 2024),
(8, 6, 'Fall', 2023),
(9, 7, 'Spring', 2024),
(10, 8, 'Fall', 2023);

-- Enrollments
INSERT INTO Enrollments (student_id, course_id, semester, year, grade) VALUES
(1, 1, 'Fall', 2023, 'A'),
(1, 4, 'Fall', 2023, 'B+'),
(2, 1, 'Fall', 2023, 'B'),
(2, 6, 'Fall', 2023, 'A-'),
(3, 2, 'Fall', 2023, 'B+'),
(3, 8, 'Fall', 2023, 'A'),
(4, 1, 'Fall', 2023, 'A-'),
(4, 7, 'Spring', 2024, NULL),
(5, 3, 'Spring', 2024, NULL),
(5, 9, 'Spring', 2024, NULL),
(6, 4, 'Fall', 2023, 'C+'),
(6, 10, 'Fall', 2023, 'B'),
(7, 5, 'Spring', 2024, NULL),
(7, 1, 'Fall', 2023, 'B+'),
(8, 6, 'Fall', 2023, 'A'),
(8, 2, 'Fall', 2023, 'A-'),
(9, 7, 'Spring', 2024, NULL),
(9, 3, 'Spring', 2024, NULL),
(10, 8, 'Fall', 2023, 'B'),
(10, 4, 'Fall', 2023, 'A');