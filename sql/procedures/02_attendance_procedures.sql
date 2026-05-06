-- =============================================
-- Attendance Management Procedures
-- =============================================

USE project_ARMS;

DELIMITER $$

-- Procedure 1: Mark Attendance
CREATE PROCEDURE MarkAttendance(
    IN p_session_id INT,
    IN p_reg_no VARCHAR(20),
    IN p_status ENUM('Present','Absent'),
    IN p_to_id INT
)
BEGIN
    INSERT INTO Attendance_Record (session_id, reg_no, status, FR_to_id)
    VALUES (p_session_id, p_reg_no, p_status, p_to_id);
    
    SELECT 'Attendance marked successfully' AS message;
END $$

-- Procedure 2: Get Student Attendance for Course
CREATE PROCEDURE GetStudentAttendance(
    IN p_reg_no VARCHAR(20),
    IN p_course_code VARCHAR(20)
)
BEGIN
    SELECT 
        s.session_id,
        s.session_type,
        s.week_no,
        s.time_allocation_date,
        ar.status
    FROM Session s
    LEFT JOIN Attendance_Record ar 
        ON s.session_id = ar.session_id AND ar.reg_no = p_reg_no
    WHERE s.course_code = p_course_code
    ORDER BY s.time_allocation_date;
END $$

-- Procedure 3: Calculate Attendance Percentage
CREATE PROCEDURE CalculateAttendancePercentage(
    IN p_reg_no VARCHAR(20),
    IN p_course_code VARCHAR(20)
)
BEGIN
    SELECT 
        p_reg_no AS reg_no,
        p_course_code AS course_code,
        COUNT(*) AS total_sessions,
        SUM(CASE WHEN ar.status = 'Present' THEN 1 ELSE 0 END) AS present_count,
        ROUND((SUM(CASE WHEN ar.status = 'Present' THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) AS attendance_percentage
    FROM Session s
    LEFT JOIN Attendance_Record ar 
        ON s.session_id = ar.session_id AND ar.reg_no = p_reg_no
    WHERE s.course_code = p_course_code;
END $$

DELIMITER ;
