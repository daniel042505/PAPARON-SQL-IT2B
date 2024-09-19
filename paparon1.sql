 CREATE DATABASE paparondaniel_2b;
 USE paparondaniel_2b;
 
 
 
 CREATE TABLE Students(
 StudentID INT AUTO_INCREMENT PRIMARY KEY,
 FirstName VARCHAR (50) NOT NULL,
 LastName VARCHAR (50) NOT NULL, 
 DateOfBirth DATE,
 Email VARCHAR (100) UNIQUE,
 Gender ENUM ('MALE', 'FEMALE', 'OTHER')
 );
 
 CREATE TABLE Courses(
 CourseID INT AUTO_INCREMENT PRIMARY KEY,
 CourseName VARCHAR (100) NOT NULL,
 CourseDescription TEXT,
 Credits INT
 );
 
 CREATE TABLE Enrollments(
 StudentID INT AUTO_INCREMENT PRIMARY KEY,
 CourseID INT,
 EnrollmentDate Date NOT NULL DEFAULT (CURRENT_DATE),
 Grade DECIMAL (4,2),
 FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
 FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
 );
 
 INSERT INTO Students(FirstName, LastName, DateOfBirth, Email, Gender)
 VALUES('Daniel', 'Paparon', '2005-04-25', 'daniel1231@gmail.com', 'Male'),
 ('Isabel', 'Largo', '2006-07-08', 'maisabel@gmail.com', 'Female');

 INSERT INTO Courses(CourseName, CourseDescription, Credits)
 VALUES('BSIT', 'COMPUTER', 26),
 ('CRIM', 'POLICE', 24);
 
 INSERT INTO Enrollments(StudentID, CourseID, EnrollmentDate)
  VALUES(1, 1, '2024-02-17', 2.0),
  (2, 2, '2024-02-16', 1.8);
 
 SELECT * FROM Students;
  SELECT * FROM Courses;
   SELECT * FROM Enrollments;