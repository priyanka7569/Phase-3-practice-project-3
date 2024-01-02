drop database RainbowSchoolDb
create database RainbowSchoolDb
use RainbowSchoolDb

CREATE TABLE students (
    student_id INT  PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    class VARCHAR(50),
    date_of_birth datetime
)

CREATE TABLE subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL,
)

CREATE TABLE Teachers (
    Teacher_id INT PRIMARY KEY,
    Teacher_name VARCHAR(100) NOT NULL
)

CREATE TABLE marks (
    mark_id INT  PRIMARY KEY,
    student_id INT,
    subject_id INT,
    teacher_id INT,
    marks_obtained DECIMAL(5,2),
    date_recorded DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id),
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
)
insert into subjects values(1,'Maths')
insert into subjects values(2,'physics')

insert into Teachers values(1,'priya')
insert into Teachers values(2,'vinod')

insert into students values(1,'Mahesh','X','10/22/2000')
insert into students values(2,'Madhu','XI','12/22/2000')
insert into students values(3,'Mohan','XII','12/22/2000')

insert into marks values(1,2,2,2,85.56,'02/01/2024')
insert into marks values(2,3,1,1,90.56,'02/01/2024')
insert into marks values(3,1,2,1,95.56,'02/01/2024')

select * from students
select * from subjects
select * from Teachers
select * from marks