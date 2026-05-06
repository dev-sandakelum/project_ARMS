-- =============================================
-- Eligibility Management Procedures
-- =============================================

USE project_ARMS;

DELIMITER $$

-- Procedure 1: Check Attendance Eligibility (80% rule)
CREATE PROCEDURE CheckAttendanceEligibility(
    IN p_reg_no VARCHAR(20),
    IN p_course_code VARCHAR(20)
)
BEGIN
    DECLARE v_attendance_percentage DECIMAL(5,2);
    DECLARE v_is_eligible TINYINT(1);
    
    -- Calculate attendance percentage
    SELECT 
        ROUND((SUM(CASE WHEN ar.status = 'Present' THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2)
    INTO v_attendance_percentage
    FROM Session s
    LEFT JOIN Attendance_Record ar 
        ON s.session_id = ar.session_id AND ar.reg_no = p_reg_no
    WHERE s.course_code = p_course_code;
    
    -- Check if eligible (80% or more)
    SET v_is_eligible = IF(v_attendance_percentage >= 80, 1, 0);
    
    SELECT 
        p_reg_no AS reg_no,
        p_course_code AS course_code,
        v_attendance_percentage AS attendance_percentage,
        v_is_eligible AS is_eligible;
END $$

-- Procedure 2: Update Eligibility Status
CREATE PROCEDURE UpdateEligibilityStatus(
    IN p_reg_no VARCHAR(20),
    IN p_course_code VARCHAR(20),
    IN p_attendance_eligibility TINYINT(1),
    IN p_ca_eligibility TINYINT(1)
)
BEGIN
    INSERT INTO Eligibility (Student_id, Course_id, attendance_eligibility, ca_eligibility)
    VALUES (p_reg_no, p_course_code, p_attendance_eligibility, p_ca_eligibility)
    ON DUPLICATE KEY UPDATE
        attendance_eligibility = p_attendance_eligibility,
        ca_eligibility = p_ca_eligibility;
    
    SELECT 'Eligibility status updated' AS message;
END $$

-- Procedure 3: Get Student Eligibility
CREATE PROCEDURE GetStudentEligibility(
    IN p_reg_no VARCHAR(20)
)
BEGIN
    SELECT 
        e.Course_id,
        cu.name AS course_name,
        e.attendance_eligibility,
        e.ca_eligibility
    FROM Eligibility e
    JOIN Course_Unit cu ON e.Course_id = cu.course_code
    WHERE e.Student_id = p_reg_no;
END $$

DELIMITER ;
