-- ICT1222 Mini Project - Database Schema
-- DDL - Table Creation

-- Drop existing tables if they exist
-- DROP TABLE IF EXISTS table_name;

CREATE DATABASE project_ARMS;

USE project_ARMS;


--1. Create User table
CREATE TABLE User (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    NIC VARCHAR(20),
    address VARCHAR(255),
    gender VARCHAR(5),
    fName VARCHAR(50),
    mName VARCHAR(50),
    lName VARCHAR(50),
    dob DATE,
    email VARCHAR(100)
);

--2. Create Student table (inherits from User)

CREATE TABLE Student(
    reg_no VARCHAR(20) PRIMARY KEY AUTO_INCRMENT,
    status VARCHAR(30),
    batch VARCHAR(10)
);

--3. create Dean table

CREATE TABLE Dean(
    Dean_id INT PRIMARY KEY AUTO_INCREMENT,
    dp_id INT,
    user_id INT
);


--4.Create Table Admin

CREATE TABLE Admin(
    admin_id INT PRIMARY KEY AUTO_INCREMENT,
    role_desc VARCHAR(100),
    dp_id INT,
    user_id INT
);

--5. Create table TO_Officer
CREATE TABLE TO_Officer(
    to_id INT PRIMARY KEY AUTO_INCREMENT,
    joined_date DATE,
    user_id INT
);

--6. Create Department table

CREATE  TABLE Department(
    Department_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    Dean_id INT,
    admin_id INT
);

--7. Create table Lecturer

CREATE TABLE Lecturer(
    lecturer_id INT PRIMARY KEY AUTO AUTO_INCREMENT,
    designation VARCHAR(100),
    joined_date DATE
    dp_id INT,
    user_id INT
);

--8. Create Student_contact Table
CREATE TABLE Student_contact (
    reg_no VARCHAR(4),
    contact VARCHAR(15),
    PRIMARY KEY (reg_no,contact)
);

--9. Create Course_Unit table

CREATE TABLE Course_unit(
    course_code VARCHAR(20),
    name VARCHAR(100),
    credits INT,
    type VARCHAR(50),
    has_practical TINYINT(1),
    has_theory TINYINT(1),
    dp_id INT
);

--10. Create Lecturer_course_unit table

CREATE TABLE Lectuter_Course_Unit(
    course_code VARCHAR(20),
    lecturer_id INT,
    PRIMARY KEY(course_code,lecturer_id)
);

--11. Create student_course_unit

CREATE TABLE Student_Course_Unit(
    reg_no VARCHAR(20),
    course_code VARCHAR(20),
    academic_year VARCHAR(10),
    semester VARCHAR(10),
    PRIMARY KEY (reg_no,course_code)
);

--12. Create Session Table

CREATE TABLE Session(
    session_id INT PRIMARY KEY AUTO_INCREMENT,
    session_type VARCHAR(20),
    week_no INT,
    time_allocation_date DATETIME,
    course_code VARCHAR(20)
);

--13. Create Attendance_record Table

CREATE TABLE Attendence_Record (
    attendance_id INT PRIMARY KEY,
    session_id INT,
    reg_no VARCHAR(20),
    status ENUM('Present','Absent'),
    FR_to_id INT
);

--14. Create Assignment Table

CREATE TABLE Assignment(
    Assignment_id INT PRIMARY KEY AUTO_INCREMENT,
    Assignment_name VARCHAR(100),
    type VARHAR(50),
    max_marks DECIMAL(5,2),
    course_code VARCHAR(20)
);

--15. Create Student_marks table

CREATE TABLE Student_Marks(
    reg_no VARCHAR(20),
    Assignment_id INT,
    mark_obtained DECIMAL(5,2),
    is_medical TINYINT(1),
    PRIMARY KEY (reg_no, Assignment_id)
);

--16.Create Medical Table

CREATE TABLE Medical(
    medical_id INT PRIMARY KEY AUTO_INCREMENT,
    approval TINYINT(1),
    submitted_date INT,
    session_id INT,
    department_id INT,
    reg_no VARCHAR(20)
);

--17. Create Medical_Cover_Date Table

CREATE TABLE Medical_Cover_Date (
    medical_id INT,
    covers_date DATE,
    PRIMARY KEY (medical_id, covers_date)
);

--18. Create GPA Table

CREATE TABLE GPA(
    reg_no VARCHAR(20) PRIMARY KEY,
    sgpa DECIMAL(4,2),
    cgpa DECIMAL(4,2)
);


--19.Create Eligibility Table

CREATE TABLE Eligibility(
    Student_id VARCHAR(20),
    Course_id VARCHAR(20),
    attendence_eligibily TINYINT(1),
    ca_eligibilty TINYINT(1)
);

--20.Create Final_marks Table

CREATE TABLE Final_Mark(
    student_id VARCHAR(20),
    course_id VARCHAR(20),
    final_mark DECIMAL(5,2),
    grade VARCHAR(5)
);




