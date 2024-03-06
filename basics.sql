
--  Create a table named Students with columns for student_id, first_name, last_name, date_of_birth, and course_id.
CREATE TABLE dbo.Students
(
    Id INT NOT NULL, -- Primary Key column
    First_Name NVARCHAR(50) NOT NULL,
    Last_Name NVARCHAR(50) NOT NULL,
    DOB NVARCHAR(50) NOT NULL,
    Course_Id INT NOT NULL
);
GO

--   Insert student records into the Students table with relevant information.
INSERT INTO dbo.Students
VALUES
( 1, N'John', N'Doe', N'1998-05-15',101),
( 2, N'Jane', N'Smith', N'1999-02-20',102),
( 3, N'Alex', N'Johnson', N'1997-09-10',103),
( 4, N'Emily', N'Davis', N'2000-07-03',104),
( 5, N'Chris', N'Miller', N'1998-12-22',105),
( 6, N'Sarah', N'Wilson', N'1999-08-30',106),
( 7, N'Michael', N'Taylor', N'1997-04-18',103),
( 8, N'Jessica', N'Brown', N'2001-01-25',102),
( 9, N'David', N'Anderson', N'1998-11-08',105),
( 10, N'Emma', N'Garcia', N'1999-06-12',104),
( 11, N'Daniel', N'Martinez', N'2000-03-07',101),
( 12, N'Olivia', N'Thomas', N'1997-12-04',102),
( 13, N'Ethan', N'Robinson', N'1998-09-17',103),
( 14, N'Ava', N'White', N'1999-07-20',104),
( 15, N'Noah', N'Hall', N'1998-02-11',105),
( 16, N'Sophia', N'Adams', N'2000-10-03',106),
( 17, N'Liam', N'Clark', N'1997-05-26',102),
( 18, N'Isabella', N'Hill', N'1999-11-15',103),
( 19, N'Lucas', N'Nelson', N'1998-08-07',104),
( 20, N'Mia', N'Baker', N'2001-04-22',105),
( 21, N'Amelia', N'Morris', N'1997-01-14',106),
( 22, N'Benjamin', N'Turner', N'1999-10-09',102),
( 23, N'Harper', N'King', N'2000-06-02',103),
( 24, N'Jackson', N'Perez', N'1998-03-25',104),
( 25, N'Evelyn', N'Scott', N'1999-12-18',105),
( 26, N'Lincoln', N'Stewart', N'1998-07-11',106),
( 27, N'Aria', N'Cooper', N'2000-04-04',102),
( 28, N'Jack', N'Ross', N'1997-09-27',103),
( 29, N'Lily', N'Foster', N'1998-06-19',104),
( 30, N'Owen', N'Powell', N'2001-02-02',105)
GO

-- Create a table named Courses with columns for course_id, course_name, instructor, and credits. 
CREATE TABLE dbo.Courses
(
    Course_Id INT NOT NULL,
    Course_Name NVARCHAR(50) NOT NULL,
    Instructor NVARCHAR(50) NOT NULL,
    Credits INT NOT NULL
);
GO

-- Insert courses into the Courses table with relevant information.
INSERT INTO dbo.Courses
VALUES
(101, N'Introduction to CS', N'Prof. Anderson', 3),
(102, N'Biology 101', N'Prof. White', 4),
(103, N'Physics for Majors', N'Prof. Rodriguez', 4),
(104, N'Calculus I', N'Prof. Brown', 3),
(105, N'Organic Chemistry', N'Prof. Taylor', 4),
( 106, N'Data Structures', N'Prof. Martinez', 3),
( 107, N'Genetics', N'Prof. Johnson', 4),
( 108, N'Quantum Physics', N'Prof. Adams', 4),
( 109, N'Linear Algebra', N'Prof. Turner', 3),
( 110, N'Analytical Chemistry', N'Prof. Hall', 4),
( 111, N'Algorithms', N'Prof. Morris', 3),
( 112, N'Ecology', N'Prof. Stewart', 4),
( 113, N'Astrophysics', N'Prof. Nelson', 4),
( 114, N'Discrete Mathematics', N'Prof. Hill', 3),
( 115, N'Inorganic Chemistry', N'Prof. Baker', 4),
( 116, N'Artificial Intelligence', N'Prof. Clark', 3),
( 117, N'Cell Biology', N'Prof. Scott', 4),
( 118, N'Thermodynamics', N'Prof. Cooper', 4),
( 119, N'Probability Theory', N'Prof. Foster', 3),
( 120, N'Human Anatomy', N'Prof. Powell', 4),
( 121 , N'Software Engineering', N'Prof. King', 3),
( 122, N'Microbiology', N'Prof. Perez', 4),
( 123, N'Electromagnetism', N'Prof. Thomas', 4),
( 124, N'Number Theory', N'Prof. Davis', 3),
( 125, N'Organic Synthesis', N'Prof. Miller', 4),
( 126 , N'Computer Networks', N'Prof. Brown', 3),
( 127, N'Animal Physiology', N'Prof. Taylor', 4),
( 128, N'Machine Learning', N'Prof. Robinson', 4),
( 129, N'Differential Equations', N'Prof. Adams', 3),
( 130, N'Virology', N'Prof. Turner', 4)
GO

-- Retrieve all records from the Students table.
SELECT *
FROM dbo.Students
GO

--Retrieve all records from the Students table.
SELECT *
FROM dbo.Courses
GO

--Find the students who are enrolled in the course with course_id 102.
SELECT First_Name, Last_Name
FROM dbo.Students
WHERE Course_Id = 102;
GO

-- Find the courses taught by the instructor 'Prof. White'.
SELECT Course_Name
FROM dbo.Courses
WHERE Instructor = 'Prof. White'
GO

-- Retrieve the names of students and their courses.
SELECT First_Name, Last_Name, Course_Id
FROM dbo.Students
GO

-- Find the total number of students in the Students table.
SELECT COUNT(*) AS Total_number_of_Students
FROM dbo.Students
GO

-- Calculate the average number of credits for all courses in the Courses table.
SELECT Course_Name,
AVG(Credits) AS TotalCredits
from dbo.Courses
GROUP BY Course_Name
GO

-- Calculate the average number of credits for all courses in the Courses table.
SELECT AVG(Credits)
FROM dbo.Courses
GO

-- Retrieve students who were born after the year 1999.
SELECT First_Name, Last_Name, DOB
FROM dbo.Students
WHERE YEAR(DOB) > 1999;
GO

--  Retrieve courses with more than 3 credits, sorted by the number of credits in descending order.
SELECT Course_Name, Credits
FROM dbo.Courses
WHERE Credits > 3
ORDER BY Credits DESC
GO

--  Retrieve a list of students with their names and the names of the courses they are enrolled in.
SELECT Students.First_Name, Students.Last_Name, Courses.Course_Name
FROM dbo.Students
JOIN dbo.Courses ON Students.Course_Id = Courses.Course_Id;
GO

--Retrieve the course details along with the names of students enrolled in each course.
Select Courses.Course_Name, Courses.Instructor, Courses.Credits, Courses.Course_Id, Students.First_Name, Students.Last_Name
FROM dbo.Courses
JOIN dbo.Students ON Courses.Course_Id = Students.Course_Id;
GO
