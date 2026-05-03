-- ICT1222 Mini Project - MySQL User Accounts
-- User creation and privilege management

-- Create users
-- Example:
-- CREATE USER 'app_user'@'localhost' IDENTIFIED BY 'password';

-- Grant privileges
-- Example:
-- GRANT SELECT, INSERT, UPDATE, DELETE ON database_name.* TO 'app_user'@'localhost';
-- FLUSH PRIVILEGES;

-- 1. System Admin (Full Control)
CREATE USER 'arms_admin'@'localhost' IDENTIFIED BY 'Admin@123';
GRANT ALL PRIVILEGES ON project_ARMS.* TO 'arms_admin'@'localhost';

-- 2. Lecturer (Manage Marks and Attendance)
CREATE USER 'arms_lecturer'@'localhost' IDENTIFIED BY 'Lecturer@456';
GRANT SELECT ON project_ARMS.* TO 'arms_lecturer'@'localhost';
GRANT INSERT, UPDATE ON project_ARMS.Attendance_Record TO 'arms_lecturer'@'localhost';
GRANT INSERT, UPDATE ON project_ARMS.Student_Marks TO 'arms_lecturer'@'localhost';
GRANT EXECUTE ON PROCEDURE project_ARMS.add_marks TO 'arms_lecturer'@'localhost'; --[cite: 7]
GRANT EXECUTE ON PROCEDURE project_ARMS.mark_attendance TO 'arms_lecturer'@'localhost'; --[cite: 8]

-- 3. Technical Officer (Attendance Tracking)
CREATE USER 'arms_to'@'localhost' IDENTIFIED BY 'TO_Officer@789';
GRANT SELECT ON project_ARMS.User TO 'arms_to'@'localhost';
GRANT SELECT ON project_ARMS.Student TO 'arms_to'@'localhost';
GRANT INSERT ON project_ARMS.Attendance_Record TO 'arms_to'@'localhost';
GRANT EXECUTE ON PROCEDURE project_ARMS.mark_attendance TO 'arms_to'@'localhost'; --[cite: 8]

-- 4. Student (Read-only access to own data)
CREATE USER 'arms_student'@'localhost' IDENTIFIED BY 'Student@000';
GRANT SELECT ON project_ARMS.student_grade_summary TO 'arms_student'@'localhost'; --[cite: 12]
GRANT SELECT ON project_ARMS.student_attendance_summary TO 'arms_student'@'localhost'; --[cite: 13]
GRANT SELECT ON project_ARMS.GPA TO 'arms_student'@'localhost';
GRANT SELECT ON project_ARMS.Final_Mark TO 'arms_student'@'localhost';


FLUSH PRIVILEGES; 