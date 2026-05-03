-- ============================================================
-- project_ARMS - Sample Data for Sri Lankan Technology Faculty
-- Department of ICT | Level 01 Semester 02
-- ============================================================

USE project_ARMS;

-- ============================================================
-- 1. USER TABLE (all persons)
-- ============================================================
INSERT INTO User (NIC, address, gender, fName, mName, lName, dob, email) VALUES
-- Students (10 proper + 5 repeat = 15 students => user_id 1-15)
('200112345678', '12, Galle Road, Colombo 03', 'M', 'Kasun', 'Dilshan', 'Perera', '2001-03-15', 'kasun.perera@student.tech.ac.lk'),
('200223456789', '45, Kandy Road, Peradeniya', 'F', 'Nimasha', 'Dilrukshi', 'Silva', '2002-07-22', 'nimasha.silva@student.tech.ac.lk'),
('200134567890', '78, Negombo Road, Wattala', 'M', 'Tharindu', 'Asel', 'Fernando', '2001-11-05', 'tharindu.fernando@student.tech.ac.lk'),
('200245678901', '23, Station Road, Kurunegala', 'F', 'Sanduni', 'Prabha', 'Rajapaksha', '2002-01-30', 'sanduni.rajapaksha@student.tech.ac.lk'),
('200156789012', '67, Temple Road, Matara', 'M', 'Dasun', 'Chamara', 'Jayawardena', '2001-09-18', 'dasun.jayawardena@student.tech.ac.lk'),
('200267890123', '34, Lake Road, Batticaloa', 'F', 'Hiruni', 'Malsha', 'Wickramasinghe', '2002-04-12', 'hiruni.wickramasinghe@student.tech.ac.lk'),
('200178901234', '90, Main Street, Jaffna', 'M', 'Ashan', 'Nuwan', 'Bandara', '2001-06-25', 'ashan.bandara@student.tech.ac.lk'),
('200289012345', '15, Beach Road, Galle', 'F', 'Dilhani', 'Sachini', 'Kumari', '2002-08-09', 'dilhani.kumari@student.tech.ac.lk'),
('200190123456', '55, Hill Street, Nuwara Eliya', 'M', 'Ravindu', 'Chamika', 'Dissanayake', '2001-12-20', 'ravindu.dissanayake@student.tech.ac.lk'),
('200201234567', '28, Church Road, Anuradhapura', 'F', 'Thilini', 'Nadeesha', 'Rathnayake', '2002-02-14', 'thilini.rathnayake@student.tech.ac.lk'),
-- Repeat students (user_id 11-15)
('199911111111', '10, Old Road, Colombo 10', 'M', 'Buddhika', 'Sampath', 'Gunawardena', '1999-05-10', 'buddhika.gunawardena@student.tech.ac.lk'),
('199922222222', '22, New Town, Kandy', 'F', 'Chamari', 'Renuka', 'Seneviratne', '1999-09-03', 'chamari.seneviratne@student.tech.ac.lk'),
('200033333333', '33, Garden Road, Gampaha', 'M', 'Lahiru', 'Pradeep', 'Liyanage', '2000-03-27', 'lahiru.liyanage@student.tech.ac.lk'),
('200044444444', '44, Park Lane, Kalutara', 'F', 'Maleesha', 'Sewwandi', 'Herath', '2000-07-16', 'maleesha.herath@student.tech.ac.lk'),
('200055555555', '55, Castle Street, Ratnapura', 'M', 'Nuwan', 'Isuru', 'Madushanka', '2000-11-22', 'nuwan.madushanka@student.tech.ac.lk'),
-- Lecturers (user_id 16-20)
('197601010001', 'No. 5, University Road, Peradeniya', 'M', 'Rohan', 'Chandra', 'Wijesinghe', '1976-01-01', 'r.wijesinghe@tech.ac.lk'),
('198202020002', 'No. 18, Faculty Lane, Colombo 07', 'F', 'Nirosha', 'Kumudini', 'Amarasinghe', '1982-02-02', 'n.amarasinghe@tech.ac.lk'),
('197903030003', 'No. 9, Campus Avenue, Peradeniya', 'M', 'Prasanna', 'Harsha', 'Gunasekara', '1979-03-03', 'p.gunasekara@tech.ac.lk'),
('198504040004', 'No. 12, Hilltop Drive, Kandy', 'F', 'Sewwandi', 'Madhuri', 'Jayasinghe', '1985-04-04', 's.jayasinghe@tech.ac.lk'),
('198005050005', 'No. 7, Lecture Row, Peradeniya', 'M', 'Chaminda', 'Ruwan', 'Karunaratne', '1980-05-05', 'c.karunaratne@tech.ac.lk'),
-- Technical Officers (user_id 21-25)
('198806060006', '3, Service Road, Peradeniya', 'M', 'Amila', 'Suranga', 'Pathirana', '1988-06-06', 'a.pathirana@tech.ac.lk'),
('199107070007', '14, Campus Staff Qtrs, Peradeniya', 'F', 'Roshani', 'Dilanka', 'Mendis', '1991-07-07', 'r.mendis@tech.ac.lk'),
('198708080008', '25, Lab Street, Peradeniya', 'M', 'Sachith', 'Eranda', 'Weerasinghe', '1987-08-08', 's.weerasinghe@tech.ac.lk'),
('199209090009', '6, Technical Ave, Kandy', 'F', 'Dilini', 'Piyumi', 'Udayangani', '1992-09-09', 'd.udayangani@tech.ac.lk'),
('198910100010', '19, Officers Lane, Peradeniya', 'M', 'Kasun', 'Priyantha', 'Rathnasekara', '1989-10-10', 'k.rathnasekara@tech.ac.lk'),
-- Dean (user_id 26)
('196511110011', "Dean's Residence", 'University of Peradeniya', 'M', 'Sarath', 'Bandula', 'Koswatte', '1965-11-11', 's.koswatte@tech.ac.lk'),
-- Admin (user_id 27)
('197012120012', 'Admin Block, Faculty of Technology', 'F', 'Kumari', 'Malkanthi', 'Peiris', '1970-12-12', 'k.peiris@tech.ac.lk');

-- ============================================================
-- 2. DEPARTMENT TABLE (inserted before Dean/Admin to avoid circular FK)
-- ============================================================
INSERT INTO Department (name, Dean_id, admin_id) VALUES
('Department of Information and Communication Technology', NULL, NULL);
-- Department_id = 1 (ICT dept), Dean/admin refs updated after insert

-- ============================================================
-- 3. DEAN TABLE
-- ============================================================
INSERT INTO Dean (dp_id, user_id) VALUES
(1, 26);
-- Dean_id = 1

-- ============================================================
-- 4. ADMIN TABLE
-- ============================================================
INSERT INTO Admin (role_desc, dp_id, user_id) VALUES
('Faculty Administrator - ICT Department', 1, 27);
-- admin_id = 1

-- Update Department with Dean and Admin references
UPDATE Department SET Dean_id = 1, admin_id = 1 WHERE Department_id = 1;

-- ============================================================
-- 5. TECHNICAL OFFICERS
-- ============================================================
INSERT INTO TO_Officer (joined_date, user_id) VALUES
('2015-01-15', 21),  -- to_id = 1
('2017-06-01', 22),  -- to_id = 2
('2013-03-20', 23),  -- to_id = 3
('2019-08-10', 24),  -- to_id = 4
('2016-11-05', 25);  -- to_id = 5

-- ============================================================
-- 6. LECTURERS
-- ============================================================
INSERT INTO Lecturer (designation, joined_date, dp_id, user_id) VALUES
('Senior Lecturer Grade I', '2005-02-01', 1, 16),   -- lecturer_id = 1
('Senior Lecturer Grade II', '2010-07-15', 1, 17),  -- lecturer_id = 2
('Lecturer', '2008-04-10', 1, 18),                   -- lecturer_id = 3
('Lecturer', '2012-09-01', 1, 19),                   -- lecturer_id = 4
('Senior Lecturer Grade I', '2006-01-20', 1, 20);   -- lecturer_id = 5

-- ============================================================
-- 7. STUDENTS
-- ============================================================
-- Proper students (Level 1, batch 2024/25)
INSERT INTO Student (reg_no, status, batch, user_id) VALUES
('ICT/2024/001', 'Active', '2024/25', 1),
('ICT/2024/002', 'Active', '2024/25', 2),
('ICT/2024/003', 'Active', '2024/25', 3),
('ICT/2024/004', 'Active', '2024/25', 4),
('ICT/2024/005', 'Active', '2024/25', 5),
('ICT/2024/006', 'Active', '2024/25', 6),
('ICT/2024/007', 'Active', '2024/25', 7),
('ICT/2024/008', 'Active', '2024/25', 8),
('ICT/2024/009', 'Active', '2024/25', 9),
('ICT/2024/010', 'Active', '2024/25', 10),
-- Repeat students (repeating Level 1 Sem 2)
('ICT/2022/011', 'Repeat', '2022/23', 11),
('ICT/2022/012', 'Repeat', '2022/23', 12),
('ICT/2023/013', 'Repeat', '2023/24', 13),
('ICT/2023/014', 'Repeat', '2023/24', 14),
('ICT/2023/015', 'Repeat', '2023/24', 15);

-- ============================================================
-- 8. STUDENT CONTACTS
-- ============================================================
INSERT INTO Student_contact (reg_no, contact) VALUES
('ICT/2024/001', '0771234567'), ('ICT/2024/001', '0112345678'),
('ICT/2024/002', '0762345678'),
('ICT/2024/003', '0753456789'), ('ICT/2024/003', '0113456789'),
('ICT/2024/004', '0774567890'),
('ICT/2024/005', '0765678901'),
('ICT/2024/006', '0756789012'), ('ICT/2024/006', '0116789012'),
('ICT/2024/007', '0777890123'),
('ICT/2024/008', '0768901234'),
('ICT/2024/009', '0759012345'),
('ICT/2024/010', '0770123456'),
('ICT/2022/011', '0711111111'),
('ICT/2022/012', '0722222222'),
('ICT/2023/013', '0733333333'),
('ICT/2023/014', '0744444444'),
('ICT/2023/015', '0755555555');

-- ============================================================
-- 9. COURSE UNITS - Level 01 Semester 02 ICT Timetable
-- ============================================================
INSERT INTO Course_unit (course_code, name, credits, type, has_practical, has_theory, dp_id) VALUES
('ICT1202', 'Programming Fundamentals II',       3, 'Core',     1, 1, 1),
('ICT1204', 'Data Structures and Algorithms',    3, 'Core',     1, 1, 1),
('ICT1206', 'Database Management Systems',       3, 'Core',     1, 1, 1),
('ICT1208', 'Digital Logic Design',              3, 'Core',     0, 1, 1),
('ICT1210', 'Web Technologies',                  3, 'Core',     1, 1, 1),
('ICT1212', 'Mathematics for Computing II',      3, 'Core',     0, 1, 1);

-- ============================================================
-- 10. LECTURER-COURSE UNIT ASSIGNMENTS
-- ============================================================
INSERT INTO Lecturer_Course_Unit (course_code, lecturer_id) VALUES
('ICT1202', 1),
('ICT1204', 2),
('ICT1206', 3),
('ICT1208', 4),
('ICT1210', 5),
('ICT1212', 1);

-- ============================================================
-- 11. STUDENT-COURSE UNIT ENROLLMENTS
-- ============================================================
-- All 15 students enrolled in all 6 course units for L1S2
INSERT INTO Student_Course_Unit (reg_no, course_code, academic_year, semester) VALUES
('ICT/2024/001','ICT1202','2024/25','S2'), ('ICT/2024/001','ICT1204','2024/25','S2'),
('ICT/2024/001','ICT1206','2024/25','S2'), ('ICT/2024/001','ICT1208','2024/25','S2'),
('ICT/2024/001','ICT1210','2024/25','S2'), ('ICT/2024/001','ICT1212','2024/25','S2'),

('ICT/2024/002','ICT1202','2024/25','S2'), ('ICT/2024/002','ICT1204','2024/25','S2'),
('ICT/2024/002','ICT1206','2024/25','S2'), ('ICT/2024/002','ICT1208','2024/25','S2'),
('ICT/2024/002','ICT1210','2024/25','S2'), ('ICT/2024/002','ICT1212','2024/25','S2'),

('ICT/2024/003','ICT1202','2024/25','S2'), ('ICT/2024/003','ICT1204','2024/25','S2'),
('ICT/2024/003','ICT1206','2024/25','S2'), ('ICT/2024/003','ICT1208','2024/25','S2'),
('ICT/2024/003','ICT1210','2024/25','S2'), ('ICT/2024/003','ICT1212','2024/25','S2'),

('ICT/2024/004','ICT1202','2024/25','S2'), ('ICT/2024/004','ICT1204','2024/25','S2'),
('ICT/2024/004','ICT1206','2024/25','S2'), ('ICT/2024/004','ICT1208','2024/25','S2'),
('ICT/2024/004','ICT1210','2024/25','S2'), ('ICT/2024/004','ICT1212','2024/25','S2'),

('ICT/2024/005','ICT1202','2024/25','S2'), ('ICT/2024/005','ICT1204','2024/25','S2'),
('ICT/2024/005','ICT1206','2024/25','S2'), ('ICT/2024/005','ICT1208','2024/25','S2'),
('ICT/2024/005','ICT1210','2024/25','S2'), ('ICT/2024/005','ICT1212','2024/25','S2'),

('ICT/2024/006','ICT1202','2024/25','S2'), ('ICT/2024/006','ICT1204','2024/25','S2'),
('ICT/2024/006','ICT1206','2024/25','S2'), ('ICT/2024/006','ICT1208','2024/25','S2'),
('ICT/2024/006','ICT1210','2024/25','S2'), ('ICT/2024/006','ICT1212','2024/25','S2'),

('ICT/2024/007','ICT1202','2024/25','S2'), ('ICT/2024/007','ICT1204','2024/25','S2'),
('ICT/2024/007','ICT1206','2024/25','S2'), ('ICT/2024/007','ICT1208','2024/25','S2'),
('ICT/2024/007','ICT1210','2024/25','S2'), ('ICT/2024/007','ICT1212','2024/25','S2'),

('ICT/2024/008','ICT1202','2024/25','S2'), ('ICT/2024/008','ICT1204','2024/25','S2'),
('ICT/2024/008','ICT1206','2024/25','S2'), ('ICT/2024/008','ICT1208','2024/25','S2'),
('ICT/2024/008','ICT1210','2024/25','S2'), ('ICT/2024/008','ICT1212','2024/25','S2'),

('ICT/2024/009','ICT1202','2024/25','S2'), ('ICT/2024/009','ICT1204','2024/25','S2'),
('ICT/2024/009','ICT1206','2024/25','S2'), ('ICT/2024/009','ICT1208','2024/25','S2'),
('ICT/2024/009','ICT1210','2024/25','S2'), ('ICT/2024/009','ICT1212','2024/25','S2'),

('ICT/2024/010','ICT1202','2024/25','S2'), ('ICT/2024/010','ICT1204','2024/25','S2'),
('ICT/2024/010','ICT1206','2024/25','S2'), ('ICT/2024/010','ICT1208','2024/25','S2'),
('ICT/2024/010','ICT1210','2024/25','S2'), ('ICT/2024/010','ICT1212','2024/25','S2'),

-- Repeat students
('ICT/2022/011','ICT1202','2024/25','S2'), ('ICT/2022/011','ICT1204','2024/25','S2'),
('ICT/2022/011','ICT1206','2024/25','S2'), ('ICT/2022/011','ICT1208','2024/25','S2'),
('ICT/2022/011','ICT1210','2024/25','S2'), ('ICT/2022/011','ICT1212','2024/25','S2'),

('ICT/2022/012','ICT1202','2024/25','S2'), ('ICT/2022/012','ICT1204','2024/25','S2'),
('ICT/2022/012','ICT1206','2024/25','S2'), ('ICT/2022/012','ICT1208','2024/25','S2'),
('ICT/2022/012','ICT1210','2024/25','S2'), ('ICT/2022/012','ICT1212','2024/25','S2'),

('ICT/2023/013','ICT1202','2024/25','S2'), ('ICT/2023/013','ICT1204','2024/25','S2'),
('ICT/2023/013','ICT1206','2024/25','S2'), ('ICT/2023/013','ICT1208','2024/25','S2'),
('ICT/2023/013','ICT1210','2024/25','S2'), ('ICT/2023/013','ICT1212','2024/25','S2'),

('ICT/2023/014','ICT1202','2024/25','S2'), ('ICT/2023/014','ICT1204','2024/25','S2'),
('ICT/2023/014','ICT1206','2024/25','S2'), ('ICT/2023/014','ICT1208','2024/25','S2'),
('ICT/2023/014','ICT1210','2024/25','S2'), ('ICT/2023/014','ICT1212','2024/25','S2'),

('ICT/2023/015','ICT1202','2024/25','S2'), ('ICT/2023/015','ICT1204','2024/25','S2'),
('ICT/2023/015','ICT1206','2024/25','S2'), ('ICT/2023/015','ICT1208','2024/25','S2'),
('ICT/2023/015','ICT1210','2024/25','S2'), ('ICT/2023/015','ICT1212','2024/25','S2');

-- ============================================================
-- 12. SESSIONS
-- Session logic:
--   * 15 weeks, theory = 15 sessions, practical = 15 sessions (where applicable)
--   * ICT1202, ICT1204, ICT1206, ICT1210 => has_theory=1, has_practical=1
--   * ICT1208, ICT1212               => has_theory=1, has_practical=0
--   * Semester starts 2025-01-06 (Monday)
--   * Theory sessions: Mondays weekly; Practical sessions: Thursdays weekly
-- ============================================================

-- ICT1202 - Programming Fundamentals II (Theory + Practical)
INSERT INTO Session (session_type, week_no, time_allocation_date, course_code) VALUES
-- Theory (week 1-15, Mondays 08:00)
('Theory', 1,  '2025-01-06 08:00:00', 'ICT1202'),
('Theory', 2,  '2025-01-13 08:00:00', 'ICT1202'),
('Theory', 3,  '2025-01-20 08:00:00', 'ICT1202'),
('Theory', 4,  '2025-01-27 08:00:00', 'ICT1202'),
('Theory', 5,  '2025-02-03 08:00:00', 'ICT1202'),
('Theory', 6,  '2025-02-10 08:00:00', 'ICT1202'),
('Theory', 7,  '2025-02-17 08:00:00', 'ICT1202'),
('Theory', 8,  '2025-02-24 08:00:00', 'ICT1202'),
('Theory', 9,  '2025-03-03 08:00:00', 'ICT1202'),
('Theory', 10, '2025-03-10 08:00:00', 'ICT1202'),
('Theory', 11, '2025-03-17 08:00:00', 'ICT1202'),
('Theory', 12, '2025-03-24 08:00:00', 'ICT1202'),
('Theory', 13, '2025-03-31 08:00:00', 'ICT1202'),
('Theory', 14, '2025-04-07 08:00:00', 'ICT1202'),
('Theory', 15, '2025-04-14 08:00:00', 'ICT1202'),
-- Practical (week 1-15, Thursdays 14:00)
('Practical', 1,  '2025-01-09 14:00:00', 'ICT1202'),
('Practical', 2,  '2025-01-16 14:00:00', 'ICT1202'),
('Practical', 3,  '2025-01-23 14:00:00', 'ICT1202'),
('Practical', 4,  '2025-01-30 14:00:00', 'ICT1202'),
('Practical', 5,  '2025-02-06 14:00:00', 'ICT1202'),
('Practical', 6,  '2025-02-13 14:00:00', 'ICT1202'),
('Practical', 7,  '2025-02-20 14:00:00', 'ICT1202'),
('Practical', 8,  '2025-02-27 14:00:00', 'ICT1202'),
('Practical', 9,  '2025-03-06 14:00:00', 'ICT1202'),
('Practical', 10, '2025-03-13 14:00:00', 'ICT1202'),
('Practical', 11, '2025-03-20 14:00:00', 'ICT1202'),
('Practical', 12, '2025-03-27 14:00:00', 'ICT1202'),
('Practical', 13, '2025-04-03 14:00:00', 'ICT1202'),
('Practical', 14, '2025-04-10 14:00:00', 'ICT1202'),
('Practical', 15, '2025-04-17 14:00:00', 'ICT1202');
-- session_id 1-15 = ICT1202 Theory, 16-30 = ICT1202 Practical

INSERT INTO Session (session_type, week_no, time_allocation_date, course_code) VALUES
-- ICT1204 - Data Structures and Algorithms (Theory + Practical)
('Theory', 1,  '2025-01-06 10:00:00', 'ICT1204'),
('Theory', 2,  '2025-01-13 10:00:00', 'ICT1204'),
('Theory', 3,  '2025-01-20 10:00:00', 'ICT1204'),
('Theory', 4,  '2025-01-27 10:00:00', 'ICT1204'),
('Theory', 5,  '2025-02-03 10:00:00', 'ICT1204'),
('Theory', 6,  '2025-02-10 10:00:00', 'ICT1204'),
('Theory', 7,  '2025-02-17 10:00:00', 'ICT1204'),
('Theory', 8,  '2025-02-24 10:00:00', 'ICT1204'),
('Theory', 9,  '2025-03-03 10:00:00', 'ICT1204'),
('Theory', 10, '2025-03-10 10:00:00', 'ICT1204'),
('Theory', 11, '2025-03-17 10:00:00', 'ICT1204'),
('Theory', 12, '2025-03-24 10:00:00', 'ICT1204'),
('Theory', 13, '2025-03-31 10:00:00', 'ICT1204'),
('Theory', 14, '2025-04-07 10:00:00', 'ICT1204'),
('Theory', 15, '2025-04-14 10:00:00', 'ICT1204'),
('Practical', 1,  '2025-01-09 09:00:00', 'ICT1204'),
('Practical', 2,  '2025-01-16 09:00:00', 'ICT1204'),
('Practical', 3,  '2025-01-23 09:00:00', 'ICT1204'),
('Practical', 4,  '2025-01-30 09:00:00', 'ICT1204'),
('Practical', 5,  '2025-02-06 09:00:00', 'ICT1204'),
('Practical', 6,  '2025-02-13 09:00:00', 'ICT1204'),
('Practical', 7,  '2025-02-20 09:00:00', 'ICT1204'),
('Practical', 8,  '2025-02-27 09:00:00', 'ICT1204'),
('Practical', 9,  '2025-03-06 09:00:00', 'ICT1204'),
('Practical', 10, '2025-03-13 09:00:00', 'ICT1204'),
('Practical', 11, '2025-03-20 09:00:00', 'ICT1204'),
('Practical', 12, '2025-03-27 09:00:00', 'ICT1204'),
('Practical', 13, '2025-04-03 09:00:00', 'ICT1204'),
('Practical', 14, '2025-04-10 09:00:00', 'ICT1204'),
('Practical', 15, '2025-04-17 09:00:00', 'ICT1204');
-- session_id 31-45 = ICT1204 Theory, 46-60 = ICT1204 Practical

INSERT INTO Session (session_type, week_no, time_allocation_date, course_code) VALUES
-- ICT1206 - Database Management Systems (Theory + Practical)
('Theory', 1,  '2025-01-07 08:00:00', 'ICT1206'),
('Theory', 2,  '2025-01-14 08:00:00', 'ICT1206'),
('Theory', 3,  '2025-01-21 08:00:00', 'ICT1206'),
('Theory', 4,  '2025-01-28 08:00:00', 'ICT1206'),
('Theory', 5,  '2025-02-04 08:00:00', 'ICT1206'),
('Theory', 6,  '2025-02-11 08:00:00', 'ICT1206'),
('Theory', 7,  '2025-02-18 08:00:00', 'ICT1206'),
('Theory', 8,  '2025-02-25 08:00:00', 'ICT1206'),
('Theory', 9,  '2025-03-04 08:00:00', 'ICT1206'),
('Theory', 10, '2025-03-11 08:00:00', 'ICT1206'),
('Theory', 11, '2025-03-18 08:00:00', 'ICT1206'),
('Theory', 12, '2025-03-25 08:00:00', 'ICT1206'),
('Theory', 13, '2025-04-01 08:00:00', 'ICT1206'),
('Theory', 14, '2025-04-08 08:00:00', 'ICT1206'),
('Theory', 15, '2025-04-15 08:00:00', 'ICT1206'),
('Practical', 1,  '2025-01-10 14:00:00', 'ICT1206'),
('Practical', 2,  '2025-01-17 14:00:00', 'ICT1206'),
('Practical', 3,  '2025-01-24 14:00:00', 'ICT1206'),
('Practical', 4,  '2025-01-31 14:00:00', 'ICT1206'),
('Practical', 5,  '2025-02-07 14:00:00', 'ICT1206'),
('Practical', 6,  '2025-02-14 14:00:00', 'ICT1206'),
('Practical', 7,  '2025-02-21 14:00:00', 'ICT1206'),
('Practical', 8,  '2025-02-28 14:00:00', 'ICT1206'),
('Practical', 9,  '2025-03-07 14:00:00', 'ICT1206'),
('Practical', 10, '2025-03-14 14:00:00', 'ICT1206'),
('Practical', 11, '2025-03-21 14:00:00', 'ICT1206'),
('Practical', 12, '2025-03-28 14:00:00', 'ICT1206'),
('Practical', 13, '2025-04-04 14:00:00', 'ICT1206'),
('Practical', 14, '2025-04-11 14:00:00', 'ICT1206'),
('Practical', 15, '2025-04-18 14:00:00', 'ICT1206');
-- session_id 61-75 = ICT1206 Theory, 76-90 = ICT1206 Practical

INSERT INTO Session (session_type, week_no, time_allocation_date, course_code) VALUES
-- ICT1208 - Digital Logic Design (Theory ONLY, no practical)
('Theory', 1,  '2025-01-07 10:00:00', 'ICT1208'),
('Theory', 2,  '2025-01-14 10:00:00', 'ICT1208'),
('Theory', 3,  '2025-01-21 10:00:00', 'ICT1208'),
('Theory', 4,  '2025-01-28 10:00:00', 'ICT1208'),
('Theory', 5,  '2025-02-04 10:00:00', 'ICT1208'),
('Theory', 6,  '2025-02-11 10:00:00', 'ICT1208'),
('Theory', 7,  '2025-02-18 10:00:00', 'ICT1208'),
('Theory', 8,  '2025-02-25 10:00:00', 'ICT1208'),
('Theory', 9,  '2025-03-04 10:00:00', 'ICT1208'),
('Theory', 10, '2025-03-11 10:00:00', 'ICT1208'),
('Theory', 11, '2025-03-18 10:00:00', 'ICT1208'),
('Theory', 12, '2025-03-25 10:00:00', 'ICT1208'),
('Theory', 13, '2025-04-01 10:00:00', 'ICT1208'),
('Theory', 14, '2025-04-08 10:00:00', 'ICT1208'),
('Theory', 15, '2025-04-15 10:00:00', 'ICT1208');
-- session_id 91-105 = ICT1208 Theory

INSERT INTO Session (session_type, week_no, time_allocation_date, course_code) VALUES
-- ICT1210 - Web Technologies (Theory + Practical)
('Theory', 1,  '2025-01-08 08:00:00', 'ICT1210'),
('Theory', 2,  '2025-01-15 08:00:00', 'ICT1210'),
('Theory', 3,  '2025-01-22 08:00:00', 'ICT1210'),
('Theory', 4,  '2025-01-29 08:00:00', 'ICT1210'),
('Theory', 5,  '2025-02-05 08:00:00', 'ICT1210'),
('Theory', 6,  '2025-02-12 08:00:00', 'ICT1210'),
('Theory', 7,  '2025-02-19 08:00:00', 'ICT1210'),
('Theory', 8,  '2025-02-26 08:00:00', 'ICT1210'),
('Theory', 9,  '2025-03-05 08:00:00', 'ICT1210'),
('Theory', 10, '2025-03-12 08:00:00', 'ICT1210'),
('Theory', 11, '2025-03-19 08:00:00', 'ICT1210'),
('Theory', 12, '2025-03-26 08:00:00', 'ICT1210'),
('Theory', 13, '2025-04-02 08:00:00', 'ICT1210'),
('Theory', 14, '2025-04-09 08:00:00', 'ICT1210'),
('Theory', 15, '2025-04-16 08:00:00', 'ICT1210'),
('Practical', 1,  '2025-01-10 09:00:00', 'ICT1210'),
('Practical', 2,  '2025-01-17 09:00:00', 'ICT1210'),
('Practical', 3,  '2025-01-24 09:00:00', 'ICT1210'),
('Practical', 4,  '2025-01-31 09:00:00', 'ICT1210'),
('Practical', 5,  '2025-02-07 09:00:00', 'ICT1210'),
('Practical', 6,  '2025-02-14 09:00:00', 'ICT1210'),
('Practical', 7,  '2025-02-21 09:00:00', 'ICT1210'),
('Practical', 8,  '2025-02-28 09:00:00', 'ICT1210'),
('Practical', 9,  '2025-03-07 09:00:00', 'ICT1210'),
('Practical', 10, '2025-03-14 09:00:00', 'ICT1210'),
('Practical', 11, '2025-03-21 09:00:00', 'ICT1210'),
('Practical', 12, '2025-03-28 09:00:00', 'ICT1210'),
('Practical', 13, '2025-04-04 09:00:00', 'ICT1210'),
('Practical', 14, '2025-04-11 09:00:00', 'ICT1210'),
('Practical', 15, '2025-04-18 09:00:00', 'ICT1210');
-- session_id 106-120 = ICT1210 Theory, 121-135 = ICT1210 Practical

INSERT INTO Session (session_type, week_no, time_allocation_date, course_code) VALUES
-- ICT1212 - Mathematics for Computing II (Theory ONLY, no practical)
('Theory', 1,  '2025-01-08 10:00:00', 'ICT1212'),
('Theory', 2,  '2025-01-15 10:00:00', 'ICT1212'),
('Theory', 3,  '2025-01-22 10:00:00', 'ICT1212'),
('Theory', 4,  '2025-01-29 10:00:00', 'ICT1212'),
('Theory', 5,  '2025-02-05 10:00:00', 'ICT1212'),
('Theory', 6,  '2025-02-12 10:00:00', 'ICT1212'),
('Theory', 7,  '2025-02-19 10:00:00', 'ICT1212'),
('Theory', 8,  '2025-02-26 10:00:00', 'ICT1212'),
('Theory', 9,  '2025-03-05 10:00:00', 'ICT1212'),
('Theory', 10, '2025-03-12 10:00:00', 'ICT1212'),
('Theory', 11, '2025-03-19 10:00:00', 'ICT1212'),
('Theory', 12, '2025-03-26 10:00:00', 'ICT1212'),
('Theory', 13, '2025-04-02 10:00:00', 'ICT1212'),
('Theory', 14, '2025-04-09 10:00:00', 'ICT1212'),
('Theory', 15, '2025-04-16 10:00:00', 'ICT1212');
-- session_id 136-150 = ICT1212 Theory

-- ============================================================
-- 13. ATTENDANCE RECORDS
-- Session ID ranges (reference):
--   ICT1202: Theory  1-15,  Practical 16-30
--   ICT1204: Theory 31-45,  Practical 46-60
--   ICT1206: Theory 61-75,  Practical 76-90
--   ICT1208: Theory 91-105  (no practical)
--   ICT1210: Theory 106-120, Practical 121-135
--   ICT1212: Theory 136-150 (no practical)
--
-- Strategy:
--   Most students ~90%+ attendance (present for 13-15 sessions)
--   ICT/2024/005: low attendance (borderline ~70%)
--   ICT/2022/011: medical submitted for one session
--   A few absences scattered for realism
--   FR (Facial Recognition) done by TO Officers (to_id 1-5 rotating)
-- ============================================================

-- Helper: generate attendance for all 15 students across a set of session_ids
-- We'll do per-course blocks for clarity

-- === ICT1202 Theory (session_id 1-15) ===
INSERT INTO Attendance_Record (session_id, reg_no, status, FR_to_id) VALUES
(1,'ICT/2024/001','Present',1),(2,'ICT/2024/001','Present',1),(3,'ICT/2024/001','Present',1),
(4,'ICT/2024/001','Present',1),(5,'ICT/2024/001','Present',1),(6,'ICT/2024/001','Present',2),
(7,'ICT/2024/001','Absent',2),(8,'ICT/2024/001','Present',2),(9,'ICT/2024/001','Present',2),
(10,'ICT/2024/001','Present',2),(11,'ICT/2024/001','Present',3),(12,'ICT/2024/001','Present',3),
(13,'ICT/2024/001','Present',3),(14,'ICT/2024/001','Present',3),(15,'ICT/2024/001','Present',3),

(1,'ICT/2024/002','Present',1),(2,'ICT/2024/002','Present',1),(3,'ICT/2024/002','Present',1),
(4,'ICT/2024/002','Absent',1),(5,'ICT/2024/002','Present',1),(6,'ICT/2024/002','Present',2),
(7,'ICT/2024/002','Present',2),(8,'ICT/2024/002','Present',2),(9,'ICT/2024/002','Present',2),
(10,'ICT/2024/002','Present',2),(11,'ICT/2024/002','Present',3),(12,'ICT/2024/002','Present',3),
(13,'ICT/2024/002','Present',3),(14,'ICT/2024/002','Present',3),(15,'ICT/2024/002','Present',3),

(1,'ICT/2024/003','Present',1),(2,'ICT/2024/003','Present',1),(3,'ICT/2024/003','Present',1),
(4,'ICT/2024/003','Present',1),(5,'ICT/2024/003','Present',1),(6,'ICT/2024/003','Present',2),
(7,'ICT/2024/003','Present',2),(8,'ICT/2024/003','Present',2),(9,'ICT/2024/003','Present',2),
(10,'ICT/2024/003','Present',2),(11,'ICT/2024/003','Absent',3),(12,'ICT/2024/003','Present',3),
(13,'ICT/2024/003','Present',3),(14,'ICT/2024/003','Present',3),(15,'ICT/2024/003','Present',3),

(1,'ICT/2024/004','Present',1),(2,'ICT/2024/004','Present',1),(3,'ICT/2024/004','Present',1),
(4,'ICT/2024/004','Present',1),(5,'ICT/2024/004','Present',1),(6,'ICT/2024/004','Present',2),
(7,'ICT/2024/004','Present',2),(8,'ICT/2024/004','Present',2),(9,'ICT/2024/004','Present',2),
(10,'ICT/2024/004','Present',2),(11,'ICT/2024/004','Present',3),(12,'ICT/2024/004','Present',3),
(13,'ICT/2024/004','Present',3),(14,'ICT/2024/004','Present',3),(15,'ICT/2024/004','Present',3),

-- ICT/2024/005: low attendance student (~67% - 10/15)
(1,'ICT/2024/005','Present',1),(2,'ICT/2024/005','Absent',1),(3,'ICT/2024/005','Present',1),
(4,'ICT/2024/005','Absent',1),(5,'ICT/2024/005','Present',1),(6,'ICT/2024/005','Absent',2),
(7,'ICT/2024/005','Present',2),(8,'ICT/2024/005','Present',2),(9,'ICT/2024/005','Absent',2),
(10,'ICT/2024/005','Present',2),(11,'ICT/2024/005','Present',3),(12,'ICT/2024/005','Absent',3),
(13,'ICT/2024/005','Present',3),(14,'ICT/2024/005','Absent',3),(15,'ICT/2024/005','Present',3),

(1,'ICT/2024/006','Present',4),(2,'ICT/2024/006','Present',4),(3,'ICT/2024/006','Present',4),
(4,'ICT/2024/006','Present',4),(5,'ICT/2024/006','Present',4),(6,'ICT/2024/006','Present',4),
(7,'ICT/2024/006','Present',4),(8,'ICT/2024/006','Present',4),(9,'ICT/2024/006','Present',4),
(10,'ICT/2024/006','Absent',4),(11,'ICT/2024/006','Present',5),(12,'ICT/2024/006','Present',5),
(13,'ICT/2024/006','Present',5),(14,'ICT/2024/006','Present',5),(15,'ICT/2024/006','Present',5),

(1,'ICT/2024/007','Present',4),(2,'ICT/2024/007','Present',4),(3,'ICT/2024/007','Present',4),
(4,'ICT/2024/007','Present',4),(5,'ICT/2024/007','Present',4),(6,'ICT/2024/007','Present',4),
(7,'ICT/2024/007','Present',4),(8,'ICT/2024/007','Absent',4),(9,'ICT/2024/007','Present',4),
(10,'ICT/2024/007','Present',4),(11,'ICT/2024/007','Present',5),(12,'ICT/2024/007','Present',5),
(13,'ICT/2024/007','Present',5),(14,'ICT/2024/007','Present',5),(15,'ICT/2024/007','Present',5),

(1,'ICT/2024/008','Present',1),(2,'ICT/2024/008','Present',1),(3,'ICT/2024/008','Present',1),
(4,'ICT/2024/008','Present',1),(5,'ICT/2024/008','Present',1),(6,'ICT/2024/008','Present',2),
(7,'ICT/2024/008','Present',2),(8,'ICT/2024/008','Present',2),(9,'ICT/2024/008','Present',2),
(10,'ICT/2024/008','Present',2),(11,'ICT/2024/008','Present',3),(12,'ICT/2024/008','Absent',3),
(13,'ICT/2024/008','Present',3),(14,'ICT/2024/008','Present',3),(15,'ICT/2024/008','Present',3),

(1,'ICT/2024/009','Present',5),(2,'ICT/2024/009','Present',5),(3,'ICT/2024/009','Present',5),
(4,'ICT/2024/009','Present',5),(5,'ICT/2024/009','Present',5),(6,'ICT/2024/009','Present',5),
(7,'ICT/2024/009','Present',5),(8,'ICT/2024/009','Present',5),(9,'ICT/2024/009','Present',5),
(10,'ICT/2024/009','Present',5),(11,'ICT/2024/009','Present',5),(12,'ICT/2024/009','Present',5),
(13,'ICT/2024/009','Absent',5),(14,'ICT/2024/009','Present',5),(15,'ICT/2024/009','Present',5),

(1,'ICT/2024/010','Present',2),(2,'ICT/2024/010','Present',2),(3,'ICT/2024/010','Present',2),
(4,'ICT/2024/010','Present',2),(5,'ICT/2024/010','Present',2),(6,'ICT/2024/010','Present',2),
(7,'ICT/2024/010','Present',2),(8,'ICT/2024/010','Present',2),(9,'ICT/2024/010','Present',2),
(10,'ICT/2024/010','Absent',2),(11,'ICT/2024/010','Present',2),(12,'ICT/2024/010','Present',2),
(13,'ICT/2024/010','Present',2),(14,'ICT/2024/010','Present',2),(15,'ICT/2024/010','Present',2),

-- Repeat students - ICT1202 Theory
(1,'ICT/2022/011','Present',3),(2,'ICT/2022/011','Present',3),(3,'ICT/2022/011','Absent',3),
(4,'ICT/2022/011','Present',3),(5,'ICT/2022/011','Present',3),(6,'ICT/2022/011','Present',3),
(7,'ICT/2022/011','Present',3),(8,'ICT/2022/011','Present',3),(9,'ICT/2022/011','Present',3),
(10,'ICT/2022/011','Present',3),(11,'ICT/2022/011','Present',3),(12,'ICT/2022/011','Present',3),
(13,'ICT/2022/011','Present',3),(14,'ICT/2022/011','Present',3),(15,'ICT/2022/011','Present',3),

(1,'ICT/2022/012','Present',4),(2,'ICT/2022/012','Present',4),(3,'ICT/2022/012','Present',4),
(4,'ICT/2022/012','Present',4),(5,'ICT/2022/012','Absent',4),(6,'ICT/2022/012','Present',4),
(7,'ICT/2022/012','Present',4),(8,'ICT/2022/012','Present',4),(9,'ICT/2022/012','Present',4),
(10,'ICT/2022/012','Present',4),(11,'ICT/2022/012','Present',4),(12,'ICT/2022/012','Present',4),
(13,'ICT/2022/012','Present',4),(14,'ICT/2022/012','Present',4),(15,'ICT/2022/012','Present',4),

(1,'ICT/2023/013','Present',5),(2,'ICT/2023/013','Present',5),(3,'ICT/2023/013','Present',5),
(4,'ICT/2023/013','Present',5),(5,'ICT/2023/013','Present',5),(6,'ICT/2023/013','Present',5),
(7,'ICT/2023/013','Absent',5),(8,'ICT/2023/013','Present',5),(9,'ICT/2023/013','Present',5),
(10,'ICT/2023/013','Present',5),(11,'ICT/2023/013','Present',5),(12,'ICT/2023/013','Present',5),
(13,'ICT/2023/013','Present',5),(14,'ICT/2023/013','Present',5),(15,'ICT/2023/013','Present',5),

(1,'ICT/2023/014','Present',1),(2,'ICT/2023/014','Present',1),(3,'ICT/2023/014','Present',1),
(4,'ICT/2023/014','Present',1),(5,'ICT/2023/014','Present',1),(6,'ICT/2023/014','Present',1),
(7,'ICT/2023/014','Present',1),(8,'ICT/2023/014','Present',1),(9,'ICT/2023/014','Present',1),
(10,'ICT/2023/014','Present',1),(11,'ICT/2023/014','Present',1),(12,'ICT/2023/014','Present',1),
(13,'ICT/2023/014','Absent',1),(14,'ICT/2023/014','Present',1),(15,'ICT/2023/014','Present',1),

(1,'ICT/2023/015','Present',2),(2,'ICT/2023/015','Present',2),(3,'ICT/2023/015','Present',2),
(4,'ICT/2023/015','Absent',2),(5,'ICT/2023/015','Present',2),(6,'ICT/2023/015','Present',2),
(7,'ICT/2023/015','Present',2),(8,'ICT/2023/015','Present',2),(9,'ICT/2023/015','Present',2),
(10,'ICT/2023/015','Present',2),(11,'ICT/2023/015','Present',2),(12,'ICT/2023/015','Present',2),
(13,'ICT/2023/015','Present',2),(14,'ICT/2023/015','Present',2),(15,'ICT/2023/015','Present',2);

-- === ICT1202 Practical (session_id 16-30) - sample for all students ===
INSERT INTO Attendance_Record (session_id, reg_no, status, FR_to_id) VALUES
(16,'ICT/2024/001','Present',1),(17,'ICT/2024/001','Present',1),(18,'ICT/2024/001','Present',1),
(19,'ICT/2024/001','Present',1),(20,'ICT/2024/001','Present',2),(21,'ICT/2024/001','Present',2),
(22,'ICT/2024/001','Absent',2),(23,'ICT/2024/001','Present',2),(24,'ICT/2024/001','Present',3),
(25,'ICT/2024/001','Present',3),(26,'ICT/2024/001','Present',3),(27,'ICT/2024/001','Present',3),
(28,'ICT/2024/001','Present',4),(29,'ICT/2024/001','Present',4),(30,'ICT/2024/001','Present',4),

(16,'ICT/2024/002','Present',1),(17,'ICT/2024/002','Present',1),(18,'ICT/2024/002','Present',1),
(19,'ICT/2024/002','Present',1),(20,'ICT/2024/002','Present',2),(21,'ICT/2024/002','Present',2),
(22,'ICT/2024/002','Present',2),(23,'ICT/2024/002','Present',2),(24,'ICT/2024/002','Absent',3),
(25,'ICT/2024/002','Present',3),(26,'ICT/2024/002','Present',3),(27,'ICT/2024/002','Present',3),
(28,'ICT/2024/002','Present',4),(29,'ICT/2024/002','Present',4),(30,'ICT/2024/002','Present',4),

(16,'ICT/2024/003','Present',1),(17,'ICT/2024/003','Present',1),(18,'ICT/2024/003','Present',1),
(19,'ICT/2024/003','Present',1),(20,'ICT/2024/003','Present',2),(21,'ICT/2024/003','Present',2),
(22,'ICT/2024/003','Present',2),(23,'ICT/2024/003','Present',2),(24,'ICT/2024/003','Present',3),
(25,'ICT/2024/003','Present',3),(26,'ICT/2024/003','Present',3),(27,'ICT/2024/003','Present',3),
(28,'ICT/2024/003','Present',4),(29,'ICT/2024/003','Present',4),(30,'ICT/2024/003','Present',4),

(16,'ICT/2024/004','Present',1),(17,'ICT/2024/004','Present',1),(18,'ICT/2024/004','Absent',1),
(19,'ICT/2024/004','Present',1),(20,'ICT/2024/004','Present',2),(21,'ICT/2024/004','Present',2),
(22,'ICT/2024/004','Present',2),(23,'ICT/2024/004','Present',2),(24,'ICT/2024/004','Present',3),
(25,'ICT/2024/004','Present',3),(26,'ICT/2024/004','Present',3),(27,'ICT/2024/004','Present',3),
(28,'ICT/2024/004','Present',4),(29,'ICT/2024/004','Present',4),(30,'ICT/2024/004','Present',4),

-- Low attendance student - ICT1202 Practical
(16,'ICT/2024/005','Present',1),(17,'ICT/2024/005','Absent',1),(18,'ICT/2024/005','Absent',1),
(19,'ICT/2024/005','Present',1),(20,'ICT/2024/005','Present',2),(21,'ICT/2024/005','Absent',2),
(22,'ICT/2024/005','Present',2),(23,'ICT/2024/005','Absent',2),(24,'ICT/2024/005','Present',3),
(25,'ICT/2024/005','Absent',3),(26,'ICT/2024/005','Present',3),(27,'ICT/2024/005','Present',3),
(28,'ICT/2024/005','Absent',4),(29,'ICT/2024/005','Present',4),(30,'ICT/2024/005','Present',4),

(16,'ICT/2024/006','Present',4),(17,'ICT/2024/006','Present',4),(18,'ICT/2024/006','Present',4),
(19,'ICT/2024/006','Present',4),(20,'ICT/2024/006','Present',5),(21,'ICT/2024/006','Present',5),
(22,'ICT/2024/006','Present',5),(23,'ICT/2024/006','Present',5),(24,'ICT/2024/006','Present',1),
(25,'ICT/2024/006','Present',1),(26,'ICT/2024/006','Present',1),(27,'ICT/2024/006','Absent',1),
(28,'ICT/2024/006','Present',2),(29,'ICT/2024/006','Present',2),(30,'ICT/2024/006','Present',2),

(16,'ICT/2024/007','Present',4),(17,'ICT/2024/007','Present',4),(18,'ICT/2024/007','Present',4),
(19,'ICT/2024/007','Present',4),(20,'ICT/2024/007','Present',5),(21,'ICT/2024/007','Present',5),
(22,'ICT/2024/007','Present',5),(23,'ICT/2024/007','Present',5),(24,'ICT/2024/007','Present',1),
(25,'ICT/2024/007','Present',1),(26,'ICT/2024/007','Present',1),(27,'ICT/2024/007','Present',1),
(28,'ICT/2024/007','Present',2),(29,'ICT/2024/007','Absent',2),(30,'ICT/2024/007','Present',2),

(16,'ICT/2024/008','Present',1),(17,'ICT/2024/008','Present',1),(18,'ICT/2024/008','Present',1),
(19,'ICT/2024/008','Present',1),(20,'ICT/2024/008','Present',2),(21,'ICT/2024/008','Present',2),
(22,'ICT/2024/008','Present',2),(23,'ICT/2024/008','Present',2),(24,'ICT/2024/008','Present',3),
(25,'ICT/2024/008','Present',3),(26,'ICT/2024/008','Present',3),(27,'ICT/2024/008','Present',3),
(28,'ICT/2024/008','Present',4),(29,'ICT/2024/008','Present',4),(30,'ICT/2024/008','Present',4),

(16,'ICT/2024/009','Present',5),(17,'ICT/2024/009','Present',5),(18,'ICT/2024/009','Present',5),
(19,'ICT/2024/009','Present',5),(20,'ICT/2024/009','Present',5),(21,'ICT/2024/009','Present',5),
(22,'ICT/2024/009','Present',5),(23,'ICT/2024/009','Present',5),(24,'ICT/2024/009','Present',5),
(25,'ICT/2024/009','Present',5),(26,'ICT/2024/009','Present',5),(27,'ICT/2024/009','Present',5),
(28,'ICT/2024/009','Present',5),(29,'ICT/2024/009','Present',5),(30,'ICT/2024/009','Present',5),

(16,'ICT/2024/010','Present',2),(17,'ICT/2024/010','Present',2),(18,'ICT/2024/010','Present',2),
(19,'ICT/2024/010','Present',2),(20,'ICT/2024/010','Present',3),(21,'ICT/2024/010','Present',3),
(22,'ICT/2024/010','Present',3),(23,'ICT/2024/010','Present',3),(24,'ICT/2024/010','Absent',4),
(25,'ICT/2024/010','Present',4),(26,'ICT/2024/010','Present',4),(27,'ICT/2024/010','Present',4),
(28,'ICT/2024/010','Present',5),(29,'ICT/2024/010','Present',5),(30,'ICT/2024/010','Present',5),

(16,'ICT/2022/011','Present',3),(17,'ICT/2022/011','Present',3),(18,'ICT/2022/011','Present',3),
(19,'ICT/2022/011','Present',3),(20,'ICT/2022/011','Present',3),(21,'ICT/2022/011','Present',3),
(22,'ICT/2022/011','Present',3),(23,'ICT/2022/011','Present',3),(24,'ICT/2022/011','Present',3),
(25,'ICT/2022/011','Present',3),(26,'ICT/2022/011','Present',3),(27,'ICT/2022/011','Present',3),
(28,'ICT/2022/011','Absent',3),(29,'ICT/2022/011','Present',3),(30,'ICT/2022/011','Present',3),

(16,'ICT/2022/012','Present',4),(17,'ICT/2022/012','Present',4),(18,'ICT/2022/012','Present',4),
(19,'ICT/2022/012','Present',4),(20,'ICT/2022/012','Present',4),(21,'ICT/2022/012','Present',4),
(22,'ICT/2022/012','Present',4),(23,'ICT/2022/012','Absent',4),(24,'ICT/2022/012','Present',4),
(25,'ICT/2022/012','Present',4),(26,'ICT/2022/012','Present',4),(27,'ICT/2022/012','Present',4),
(28,'ICT/2022/012','Present',4),(29,'ICT/2022/012','Present',4),(30,'ICT/2022/012','Present',4),

(16,'ICT/2023/013','Present',5),(17,'ICT/2023/013','Present',5),(18,'ICT/2023/013','Present',5),
(19,'ICT/2023/013','Present',5),(20,'ICT/2023/013','Present',5),(21,'ICT/2023/013','Present',5),
(22,'ICT/2023/013','Present',5),(23,'ICT/2023/013','Present',5),(24,'ICT/2023/013','Present',5),
(25,'ICT/2023/013','Present',5),(26,'ICT/2023/013','Present',5),(27,'ICT/2023/013','Present',5),
(28,'ICT/2023/013','Present',5),(29,'ICT/2023/013','Present',5),(30,'ICT/2023/013','Present',5),

(16,'ICT/2023/014','Present',1),(17,'ICT/2023/014','Present',1),(18,'ICT/2023/014','Present',1),
(19,'ICT/2023/014','Present',1),(20,'ICT/2023/014','Present',2),(21,'ICT/2023/014','Present',2),
(22,'ICT/2023/014','Present',2),(23,'ICT/2023/014','Present',2),(24,'ICT/2023/014','Present',3),
(25,'ICT/2023/014','Present',3),(26,'ICT/2023/014','Present',3),(27,'ICT/2023/014','Present',3),
(28,'ICT/2023/014','Present',4),(29,'ICT/2023/014','Present',4),(30,'ICT/2023/014','Present',4),

(16,'ICT/2023/015','Present',2),(17,'ICT/2023/015','Present',2),(18,'ICT/2023/015','Present',2),
(19,'ICT/2023/015','Present',2),(20,'ICT/2023/015','Present',3),(21,'ICT/2023/015','Present',3),
(22,'ICT/2023/015','Present',3),(23,'ICT/2023/015','Present',3),(24,'ICT/2023/015','Present',4),
(25,'ICT/2023/015','Present',4),(26,'ICT/2023/015','Absent',4),(27,'ICT/2023/015','Present',4),
(28,'ICT/2023/015','Present',5),(29,'ICT/2023/015','Present',5),(30,'ICT/2023/015','Present',5);

-- NOTE: For brevity, attendance for ICT1204-ICT1212 follows the same
-- Present/Absent pattern. A production script would repeat the above
-- pattern for session_id ranges 31-60, 61-90, 91-105, 106-135, 136-150.
-- Below we insert representative records for sessions 31-45 (ICT1204 Theory)
-- to demonstrate the pattern is consistent and referentially intact.

INSERT INTO Attendance_Record (session_id, reg_no, status, FR_to_id) VALUES
-- ICT1204 Theory (31-45) - selected students for demonstration
(31,'ICT/2024/001','Present',1),(32,'ICT/2024/001','Present',1),(33,'ICT/2024/001','Present',1),
(34,'ICT/2024/001','Present',2),(35,'ICT/2024/001','Present',2),(36,'ICT/2024/001','Present',2),
(37,'ICT/2024/001','Absent',3),(38,'ICT/2024/001','Present',3),(39,'ICT/2024/001','Present',3),
(40,'ICT/2024/001','Present',4),(41,'ICT/2024/001','Present',4),(42,'ICT/2024/001','Present',4),
(43,'ICT/2024/001','Present',5),(44,'ICT/2024/001','Present',5),(45,'ICT/2024/001','Present',5),

(31,'ICT/2024/005','Present',1),(32,'ICT/2024/005','Absent',1),(33,'ICT/2024/005','Absent',1),
(34,'ICT/2024/005','Present',2),(35,'ICT/2024/005','Present',2),(36,'ICT/2024/005','Absent',2),
(37,'ICT/2024/005','Present',3),(38,'ICT/2024/005','Absent',3),(39,'ICT/2024/005','Present',3),
(40,'ICT/2024/005','Present',4),(41,'ICT/2024/005','Absent',4),(42,'ICT/2024/005','Present',4),
(43,'ICT/2024/005','Present',5),(44,'ICT/2024/005','Absent',5),(45,'ICT/2024/005','Present',5),

-- ICT1206 Theory (61-75) - sample
(61,'ICT/2024/001','Present',1),(62,'ICT/2024/001','Present',1),(63,'ICT/2024/001','Present',2),
(64,'ICT/2024/001','Present',2),(65,'ICT/2024/001','Present',3),(66,'ICT/2024/001','Present',3),
(67,'ICT/2024/001','Present',4),(68,'ICT/2024/001','Absent',4),(69,'ICT/2024/001','Present',5),
(70,'ICT/2024/001','Present',5),(71,'ICT/2024/001','Present',1),(72,'ICT/2024/001','Present',1),
(73,'ICT/2024/001','Present',2),(74,'ICT/2024/001','Present',2),(75,'ICT/2024/001','Present',3),

-- ICT1208 Theory (91-105) - sample
(91,'ICT/2024/001','Present',1),(92,'ICT/2024/001','Present',1),(93,'ICT/2024/001','Present',2),
(94,'ICT/2024/001','Present',2),(95,'ICT/2024/001','Present',3),(96,'ICT/2024/001','Present',3),
(97,'ICT/2024/001','Present',4),(98,'ICT/2024/001','Present',4),(99,'ICT/2024/001','Present',5),
(100,'ICT/2024/001','Absent',5),(101,'ICT/2024/001','Present',1),(102,'ICT/2024/001','Present',1),
(103,'ICT/2024/001','Present',2),(104,'ICT/2024/001','Present',2),(105,'ICT/2024/001','Present',3),

-- ICT1210 Theory (106-120) - sample
(106,'ICT/2024/001','Present',1),(107,'ICT/2024/001','Present',2),(108,'ICT/2024/001','Present',3),
(109,'ICT/2024/001','Present',4),(110,'ICT/2024/001','Present',5),(111,'ICT/2024/001','Present',1),
(112,'ICT/2024/001','Present',2),(113,'ICT/2024/001','Present',3),(114,'ICT/2024/001','Present',4),
(115,'ICT/2024/001','Present',5),(116,'ICT/2024/001','Absent',1),(117,'ICT/2024/001','Present',2),
(118,'ICT/2024/001','Present',3),(119,'ICT/2024/001','Present',4),(120,'ICT/2024/001','Present',5),

-- ICT1212 Theory (136-150) - sample
(136,'ICT/2024/001','Present',1),(137,'ICT/2024/001','Present',2),(138,'ICT/2024/001','Present',3),
(139,'ICT/2024/001','Present',4),(140,'ICT/2024/001','Present',5),(141,'ICT/2024/001','Present',1),
(142,'ICT/2024/001','Present',2),(143,'ICT/2024/001','Present',3),(144,'ICT/2024/001','Present',4),
(145,'ICT/2024/001','Present',5),(146,'ICT/2024/001','Present',1),(147,'ICT/2024/001','Present',2),
(148,'ICT/2024/001','Absent',3),(149,'ICT/2024/001','Present',4),(150,'ICT/2024/001','Present',5);

-- ============================================================
-- 14. MEDICAL RECORDS
-- ICT/2022/011 was absent in ICT1202 Theory Week 3 (session_id=3)
-- and submitted a medical certificate for that day
-- ============================================================
INSERT INTO Medical (approval, submitted_date, session_id, department_id, reg_no) VALUES
(1, '2025-01-23', 3, 1, 'ICT/2022/011'),   -- medical_id = 1
(0, '2025-02-06', 20, 1, 'ICT/2024/005'),  -- pending medical for low-attendance student, practical week 5
(1, '2025-02-18', 37, 1, 'ICT/2024/005');  -- approved medical ICT1204 practical week 7

INSERT INTO Medical_Cover_Date (medical_id, covers_date) VALUES
(1, '2025-01-20'),   -- covers the date of session_id=3 (ICT1202 Theory Week 3)
(2, '2025-02-06'),   -- covers ICT1202 Practical Week 5
(3, '2025-02-20');   -- covers ICT1204 Practical Week 7

-- Update attendance to reflect medical for ICT/2022/011 session 3
-- (The attendance_id for this record would be looked up; is_medical flag is in Student_Marks,
--  but the Medical table links session and student directly as per schema)

-- ============================================================
-- 15. ASSIGNMENTS
-- ============================================================
INSERT INTO Assignment (Assignment_name, type, max_marks, course_code) VALUES
-- ICT1202
('ICT1202 Assignment 01 - Basic OOP',      'Assignment', 25.00, 'ICT1202'),
('ICT1202 Mid-Semester Test',              'CA Test',   30.00, 'ICT1202'),
('ICT1202 Assignment 02 - File Handling',  'Assignment', 20.00, 'ICT1202'),
('ICT1202 Practical Assessment',           'Practical',  25.00, 'ICT1202'),
-- ICT1204
('ICT1204 Assignment 01 - Array Problems', 'Assignment', 25.00, 'ICT1204'),
('ICT1204 Mid-Semester Test',              'CA Test',   30.00, 'ICT1204'),
('ICT1204 Lab Assessment',                 'Practical',  25.00, 'ICT1204'),
-- ICT1206
('ICT1206 Assignment 01 - ER Diagrams',    'Assignment', 20.00, 'ICT1206'),
('ICT1206 Mid-Semester Test',              'CA Test',   30.00, 'ICT1206'),
('ICT1206 SQL Lab Assessment',             'Practical',  25.00, 'ICT1206'),
-- ICT1208
('ICT1208 Assignment 01 - Boolean Algebra','Assignment', 25.00, 'ICT1208'),
('ICT1208 Mid-Semester Test',              'CA Test',   30.00, 'ICT1208'),
-- ICT1210
('ICT1210 Assignment 01 - HTML/CSS',       'Assignment', 20.00, 'ICT1210'),
('ICT1210 Mid-Semester Test',              'CA Test',   30.00, 'ICT1210'),
('ICT1210 Web Project',                    'Practical',  30.00, 'ICT1210'),
-- ICT1212
('ICT1212 Assignment 01 - Set Theory',     'Assignment', 25.00, 'ICT1212'),
('ICT1212 Mid-Semester Test',              'CA Test',   30.00, 'ICT1212');

-- ============================================================
-- 16. STUDENT MARKS
-- ============================================================
INSERT INTO Student_Marks (reg_no, Assignment_id, mark_obtained, is_medical) VALUES
-- ICT/2024/001 - Kasun Perera (good student)
(('ICT/2024/001'), 1,  22.00, 0), (('ICT/2024/001'), 2,  26.00, 0),
(('ICT/2024/001'), 3,  18.00, 0), (('ICT/2024/001'), 4,  23.00, 0),
(('ICT/2024/001'), 5,  21.00, 0), (('ICT/2024/001'), 6,  25.00, 0),
(('ICT/2024/001'), 7,  22.00, 0), (('ICT/2024/001'), 8,  17.00, 0),
(('ICT/2024/001'), 9,  27.00, 0), (('ICT/2024/001'), 10, 23.00, 0),
(('ICT/2024/001'), 11, 22.00, 0), (('ICT/2024/001'), 12, 26.00, 0),
(('ICT/2024/001'), 13, 18.00, 0), (('ICT/2024/001'), 14, 24.00, 0),
(('ICT/2024/001'), 15, 27.00, 0), (('ICT/2024/001'), 16, 20.00, 0),
(('ICT/2024/001'), 17, 25.00, 0),

-- ICT/2024/002 - Nimasha Silva
(('ICT/2024/002'), 1,  20.00, 0), (('ICT/2024/002'), 2,  24.00, 0),
(('ICT/2024/002'), 3,  16.00, 0), (('ICT/2024/002'), 4,  21.00, 0),
(('ICT/2024/002'), 5,  19.00, 0), (('ICT/2024/002'), 6,  22.00, 0),
(('ICT/2024/002'), 7,  20.00, 0), (('ICT/2024/002'), 8,  15.00, 0),
(('ICT/2024/002'), 9,  25.00, 0), (('ICT/2024/002'), 10, 21.00, 0),
(('ICT/2024/002'), 11, 20.00, 0), (('ICT/2024/002'), 12, 24.00, 0),
(('ICT/2024/002'), 13, 16.00, 0), (('ICT/2024/002'), 14, 22.00, 0),
(('ICT/2024/002'), 15, 25.00, 0), (('ICT/2024/002'), 16, 18.00, 0),
(('ICT/2024/002'), 17, 23.00, 0),

-- ICT/2024/003
(('ICT/2024/003'), 1, 23.00, 0), (('ICT/2024/003'), 2, 27.00, 0),
(('ICT/2024/003'), 3, 19.00, 0), (('ICT/2024/003'), 4, 22.00, 0),
(('ICT/2024/003'), 5, 22.00, 0), (('ICT/2024/003'), 6, 26.00, 0),
(('ICT/2024/003'), 7, 23.00, 0), (('ICT/2024/003'), 8, 18.00, 0),
(('ICT/2024/003'), 9, 28.00, 0), (('ICT/2024/003'), 10, 22.00, 0),
(('ICT/2024/003'), 11, 21.00, 0), (('ICT/2024/003'), 12, 25.00, 0),
(('ICT/2024/003'), 13, 17.00, 0), (('ICT/2024/003'), 14, 25.00, 0),
(('ICT/2024/003'), 15, 28.00, 0), (('ICT/2024/003'), 16, 22.00, 0),
(('ICT/2024/003'), 17, 26.00, 0),

-- ICT/2024/004
(('ICT/2024/004'), 1, 18.00, 0), (('ICT/2024/004'), 2, 22.00, 0),
(('ICT/2024/004'), 3, 14.00, 0), (('ICT/2024/004'), 4, 20.00, 0),
(('ICT/2024/004'), 5, 17.00, 0), (('ICT/2024/004'), 6, 20.00, 0),
(('ICT/2024/004'), 7, 18.00, 0), (('ICT/2024/004'), 8, 13.00, 0),
(('ICT/2024/004'), 9, 22.00, 0), (('ICT/2024/004'), 10, 19.00, 0),
(('ICT/2024/004'), 11, 18.00, 0), (('ICT/2024/004'), 12, 21.00, 0),
(('ICT/2024/004'), 13, 14.00, 0), (('ICT/2024/004'), 14, 20.00, 0),
(('ICT/2024/004'), 15, 22.00, 0), (('ICT/2024/004'), 16, 16.00, 0),
(('ICT/2024/004'), 17, 20.00, 0),

-- ICT/2024/005 - low performer
(('ICT/2024/005'), 1, 12.00, 0), (('ICT/2024/005'), 2, 15.00, 0),
(('ICT/2024/005'), 3, 10.00, 0), (('ICT/2024/005'), 4, 13.00, 1),
(('ICT/2024/005'), 5, 11.00, 0), (('ICT/2024/005'), 6, 14.00, 0),
(('ICT/2024/005'), 7, 12.00, 1), (('ICT/2024/005'), 8, 9.00,  0),
(('ICT/2024/005'), 9, 16.00, 0), (('ICT/2024/005'), 10, 12.00, 0),
(('ICT/2024/005'), 11, 11.00, 0), (('ICT/2024/005'), 12, 14.00, 0),
(('ICT/2024/005'), 13, 9.00, 0),  (('ICT/2024/005'), 14, 13.00, 0),
(('ICT/2024/005'), 15, 15.00, 0), (('ICT/2024/005'), 16, 11.00, 0),
(('ICT/2024/005'), 17, 14.00, 0),

-- Repeat students
(('ICT/2022/011'), 1, 21.00, 0), (('ICT/2022/011'), 2, 25.00, 0),
(('ICT/2022/011'), 3, 17.00, 0), (('ICT/2022/011'), 4, 22.00, 1),
(('ICT/2022/011'), 5, 20.00, 0), (('ICT/2022/011'), 6, 24.00, 0),
(('ICT/2022/011'), 7, 21.00, 0), (('ICT/2022/011'), 8, 16.00, 0),
(('ICT/2022/011'), 9, 26.00, 0), (('ICT/2022/011'), 10, 22.00, 0),
(('ICT/2022/011'), 11, 21.00, 0), (('ICT/2022/011'), 12, 25.00, 0),
(('ICT/2022/011'), 13, 17.00, 0), (('ICT/2022/011'), 14, 23.00, 0),
(('ICT/2022/011'), 15, 26.00, 0), (('ICT/2022/011'), 16, 19.00, 0),
(('ICT/2022/011'), 17, 24.00, 0);

-- ============================================================
-- 17. GPA TABLE
-- ============================================================
INSERT INTO GPA (reg_no, sgpa, cgpa) VALUES
('ICT/2024/001', 3.70, 3.70),
('ICT/2024/002', 3.30, 3.30),
('ICT/2024/003', 3.80, 3.80),
('ICT/2024/004', 2.90, 2.90),
('ICT/2024/005', 2.10, 2.10),
('ICT/2024/006', 3.50, 3.50),
('ICT/2024/007', 3.40, 3.40),
('ICT/2024/008', 3.60, 3.60),
('ICT/2024/009', 3.90, 3.90),
('ICT/2024/010', 3.20, 3.20),
('ICT/2022/011', 2.80, 2.60),
('ICT/2022/012', 3.00, 2.70),
('ICT/2023/013', 2.50, 2.40),
('ICT/2023/014', 3.10, 2.90),
('ICT/2023/015', 2.70, 2.50);

-- ============================================================
-- 18. ELIGIBILITY TABLE
-- ============================================================
-- Attendance eligibility: >= 80% attendance required (theory + practical weighted)
-- CA eligibility: >= 40% of CA marks required
-- ICT/2024/005 fails attendance eligibility for ICT1202 and ICT1204
INSERT INTO Eligibility (Student_id, Course_id, attendance_eligibility, ca_eligibility) VALUES
('ICT/2024/001','ICT1202',1,1), ('ICT/2024/001','ICT1204',1,1), ('ICT/2024/001','ICT1206',1,1),
('ICT/2024/001','ICT1208',1,1), ('ICT/2024/001','ICT1210',1,1), ('ICT/2024/001','ICT1212',1,1),

('ICT/2024/002','ICT1202',1,1), ('ICT/2024/002','ICT1204',1,1), ('ICT/2024/002','ICT1206',1,1),
('ICT/2024/002','ICT1208',1,1), ('ICT/2024/002','ICT1210',1,1), ('ICT/2024/002','ICT1212',1,1),

('ICT/2024/003','ICT1202',1,1), ('ICT/2024/003','ICT1204',1,1), ('ICT/2024/003','ICT1206',1,1),
('ICT/2024/003','ICT1208',1,1), ('ICT/2024/003','ICT1210',1,1), ('ICT/2024/003','ICT1212',1,1),

('ICT/2024/004','ICT1202',1,1), ('ICT/2024/004','ICT1204',1,1), ('ICT/2024/004','ICT1206',1,1),
('ICT/2024/004','ICT1208',1,1), ('ICT/2024/004','ICT1210',1,1), ('ICT/2024/004','ICT1212',1,1),

-- Low attendance student - fails attendance for ICT1202 and ICT1204
('ICT/2024/005','ICT1202',0,1), ('ICT/2024/005','ICT1204',0,0), ('ICT/2024/005','ICT1206',1,1),
('ICT/2024/005','ICT1208',1,1), ('ICT/2024/005','ICT1210',1,1), ('ICT/2024/005','ICT1212',1,1),

('ICT/2024/006','ICT1202',1,1), ('ICT/2024/006','ICT1204',1,1), ('ICT/2024/006','ICT1206',1,1),
('ICT/2024/006','ICT1208',1,1), ('ICT/2024/006','ICT1210',1,1), ('ICT/2024/006','ICT1212',1,1),

('ICT/2024/007','ICT1202',1,1), ('ICT/2024/007','ICT1204',1,1), ('ICT/2024/007','ICT1206',1,1),
('ICT/2024/007','ICT1208',1,1), ('ICT/2024/007','ICT1210',1,1), ('ICT/2024/007','ICT1212',1,1),

('ICT/2024/008','ICT1202',1,1), ('ICT/2024/008','ICT1204',1,1), ('ICT/2024/008','ICT1206',1,1),
('ICT/2024/008','ICT1208',1,1), ('ICT/2024/008','ICT1210',1,1), ('ICT/2024/008','ICT1212',1,1),

('ICT/2024/009','ICT1202',1,1), ('ICT/2024/009','ICT1204',1,1), ('ICT/2024/009','ICT1206',1,1),
('ICT/2024/009','ICT1208',1,1), ('ICT/2024/009','ICT1210',1,1), ('ICT/2024/009','ICT1212',1,1),

('ICT/2024/010','ICT1202',1,1), ('ICT/2024/010','ICT1204',1,1), ('ICT/2024/010','ICT1206',1,1),
('ICT/2024/010','ICT1208',1,1), ('ICT/2024/010','ICT1210',1,1), ('ICT/2024/010','ICT1212',1,1),

('ICT/2022/011','ICT1202',1,1), ('ICT/2022/011','ICT1204',1,1), ('ICT/2022/011','ICT1206',1,1),
('ICT/2022/011','ICT1208',1,1), ('ICT/2022/011','ICT1210',1,1), ('ICT/2022/011','ICT1212',1,1),

('ICT/2022/012','ICT1202',1,1), ('ICT/2022/012','ICT1204',1,1), ('ICT/2022/012','ICT1206',1,1),
('ICT/2022/012','ICT1208',1,1), ('ICT/2022/012','ICT1210',1,1), ('ICT/2022/012','ICT1212',1,1),

('ICT/2023/013','ICT1202',1,1), ('ICT/2023/013','ICT1204',1,1), ('ICT/2023/013','ICT1206',1,1),
('ICT/2023/013','ICT1208',1,1), ('ICT/2023/013','ICT1210',1,1), ('ICT/2023/013','ICT1212',1,1),

('ICT/2023/014','ICT1202',1,1), ('ICT/2023/014','ICT1204',1,1), ('ICT/2023/014','ICT1206',1,1),
('ICT/2023/014','ICT1208',1,1), ('ICT/2023/014','ICT1210',1,1), ('ICT/2023/014','ICT1212',1,1),

('ICT/2023/015','ICT1202',1,1), ('ICT/2023/015','ICT1204',1,1), ('ICT/2023/015','ICT1206',1,1),
('ICT/2023/015','ICT1208',1,1), ('ICT/2023/015','ICT1210',1,1), ('ICT/2023/015','ICT1212',1,1);

-- ============================================================
-- 19. FINAL MARKS TABLE
-- (Final examination marks - out of 100 per course)
-- Students with eligibility=0 are marked as absent (NULL-like 0.00)
-- ============================================================
INSERT INTO Final_Mark (student_id, course_id, final_mark, grade) VALUES
('ICT/2024/001','ICT1202',72.00,'B+'), ('ICT/2024/001','ICT1204',68.00,'B'),
('ICT/2024/001','ICT1206',75.00,'A-'), ('ICT/2024/001','ICT1208',70.00,'B+'),
('ICT/2024/001','ICT1210',73.00,'B+'), ('ICT/2024/001','ICT1212',69.00,'B'),

('ICT/2024/002','ICT1202',65.00,'B'),  ('ICT/2024/002','ICT1204',60.00,'B-'),
('ICT/2024/002','ICT1206',67.00,'B'),  ('ICT/2024/002','ICT1208',63.00,'B-'),
('ICT/2024/002','ICT1210',66.00,'B'),  ('ICT/2024/002','ICT1212',61.00,'B-'),

('ICT/2024/003','ICT1202',78.00,'A-'), ('ICT/2024/003','ICT1204',74.00,'B+'),
('ICT/2024/003','ICT1206',80.00,'A'),  ('ICT/2024/003','ICT1208',76.00,'A-'),
('ICT/2024/003','ICT1210',79.00,'A-'), ('ICT/2024/003','ICT1212',75.00,'A-'),

('ICT/2024/004','ICT1202',55.00,'C+'), ('ICT/2024/004','ICT1204',52.00,'C'),
('ICT/2024/004','ICT1206',58.00,'C+'), ('ICT/2024/004','ICT1208',53.00,'C'),
('ICT/2024/004','ICT1210',56.00,'C+'), ('ICT/2024/004','ICT1212',50.00,'C'),

-- ICT/2024/005 ineligible for ICT1202 and ICT1204 finals
('ICT/2024/005','ICT1202',0.00,'X'),   ('ICT/2024/005','ICT1204',0.00,'X'),
('ICT/2024/005','ICT1206',42.00,'C-'), ('ICT/2024/005','ICT1208',45.00,'C'),
('ICT/2024/005','ICT1210',40.00,'C-'), ('ICT/2024/005','ICT1212',38.00,'D+'),

('ICT/2024/006','ICT1202',70.00,'B+'), ('ICT/2024/006','ICT1204',66.00,'B'),
('ICT/2024/006','ICT1206',72.00,'B+'), ('ICT/2024/006','ICT1208',68.00,'B'),
('ICT/2024/006','ICT1210',71.00,'B+'), ('ICT/2024/006','ICT1212',65.00,'B'),

('ICT/2024/007','ICT1202',68.00,'B'),  ('ICT/2024/007','ICT1204',64.00,'B-'),
('ICT/2024/007','ICT1206',70.00,'B+'), ('ICT/2024/007','ICT1208',66.00,'B'),
('ICT/2024/007','ICT1210',69.00,'B'),  ('ICT/2024/007','ICT1212',62.00,'B-'),

('ICT/2024/008','ICT1202',73.00,'B+'), ('ICT/2024/008','ICT1204',69.00,'B'),
('ICT/2024/008','ICT1206',76.00,'A-'), ('ICT/2024/008','ICT1208',71.00,'B+'),
('ICT/2024/008','ICT1210',74.00,'B+'), ('ICT/2024/008','ICT1212',70.00,'B+'),

('ICT/2024/009','ICT1202',85.00,'A'),  ('ICT/2024/009','ICT1204',82.00,'A'),
('ICT/2024/009','ICT1206',88.00,'A+'), ('ICT/2024/009','ICT1208',83.00,'A'),
('ICT/2024/009','ICT1210',86.00,'A'),  ('ICT/2024/009','ICT1212',80.00,'A'),

('ICT/2024/010','ICT1202',62.00,'B-'), ('ICT/2024/010','ICT1204',58.00,'C+'),
('ICT/2024/010','ICT1206',64.00,'B-'), ('ICT/2024/010','ICT1208',60.00,'B-'),
('ICT/2024/010','ICT1210',63.00,'B-'), ('ICT/2024/010','ICT1212',56.00,'C+'),

-- Repeat students
('ICT/2022/011','ICT1202',67.00,'B'),  ('ICT/2022/011','ICT1204',63.00,'B-'),
('ICT/2022/011','ICT1206',69.00,'B'),  ('ICT/2022/011','ICT1208',65.00,'B'),
('ICT/2022/011','ICT1210',68.00,'B'),  ('ICT/2022/011','ICT1212',64.00,'B-'),

('ICT/2022/012','ICT1202',60.00,'B-'), ('ICT/2022/012','ICT1204',56.00,'C+'),
('ICT/2022/012','ICT1206',62.00,'B-'), ('ICT/2022/012','ICT1208',58.00,'C+'),
('ICT/2022/012','ICT1210',61.00,'B-'), ('ICT/2022/012','ICT1212',55.00,'C+'),

('ICT/2023/013','ICT1202',50.00,'C'),  ('ICT/2023/013','ICT1204',47.00,'C-'),
('ICT/2023/013','ICT1206',52.00,'C'),  ('ICT/2023/013','ICT1208',48.00,'C-'),
('ICT/2023/013','ICT1210',51.00,'C'),  ('ICT/2023/013','ICT1212',45.00,'C-'),

('ICT/2023/014','ICT1202',63.00,'B-'), ('ICT/2023/014','ICT1204',59.00,'C+'),
('ICT/2023/014','ICT1206',65.00,'B'),  ('ICT/2023/014','ICT1208',61.00,'B-'),
('ICT/2023/014','ICT1210',64.00,'B-'), ('ICT/2023/014','ICT1212',57.00,'C+'),

('ICT/2023/015','ICT1202',54.00,'C+'), ('ICT/2023/015','ICT1204',50.00,'C'),
('ICT/2023/015','ICT1206',56.00,'C+'), ('ICT/2023/015','ICT1208',52.00,'C'),
('ICT/2023/015','ICT1210',55.00,'C+'), ('ICT/2023/015','ICT1212',48.00,'C-');

-- ============================================================
-- END OF SAMPLE DATA
-- ============================================================
-- Summary of data inserted:
--   Users        : 27 (10 proper students, 5 repeat students, 5 lecturers,
--                      5 TO officers, 1 dean, 1 admin)
--   Department   : 1 (ICT)
--   Course Units : 6 (L01S02 ICT timetable)
--   Sessions     : 150 (theory + practical for 15 weeks per course)
--   Attendance   : Full records for ICT1202 (all 15 students x 30 sessions)
--                  + representative records for other courses
--   Medical      : 3 records (1 approved, 1 pending, 1 approved for 005/011)
--   Assignments  : 17 across all 6 course units
--   Student Marks: Records for students 001-005 and 011 across all assignments
--   GPA          : All 15 students
--   Eligibility  : All 15 students x 6 courses (005 fails ICT1202,ICT1204)
--   Final Marks  : All 15 students x 6 courses
-- ============================================================