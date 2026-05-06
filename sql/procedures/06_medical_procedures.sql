-- =============================================
-- Medical Submission Procedures
-- =============================================

USE project_ARMS;

DELIMITER $$

-- Procedure 1: Submit Medical
CREATE PROCEDURE SubmitMedical(
    IN p_reg_no VARCHAR(20),
    IN p_session_id INT,
    IN p_department_id INT,
    IN p_submitted_date DATE
)
BEGIN
    INSERT INTO Medical (approval, submitted_date, session_id, department_id, reg_no)
    VALUES (0, p_submitted_date, p_session_id, p_department_id, p_reg_no);
    
    SELECT LAST_INSERT_ID() AS medical_id, 'Medical submitted successfully' AS message;
END $$

-- Procedure 2: Approve Medical
CREATE PROCEDURE ApproveMedical(
    IN p_medical_id INT,
    IN p_approval TINYINT(1)
)
BEGIN
    UPDATE Medical
    SET approval = p_approval
    WHERE medical_id = p_medical_id;
    
    SELECT 'Medical approval status updated' AS message;
END $$

-- Procedure 3: Get Student Medicals
CREATE PROCEDURE GetStudentMedicals(
    IN p_reg_no VARCHAR(20)
)
BEGIN
    SELECT 
        m.medical_id,
        m.submitted_date,
        m.approval,
        s.session_type,
        s.time_allocation_date,
        cu.name AS course_name
    FROM Medical m
    JOIN Session s ON m.session_id = s.session_id
    JOIN Course_Unit cu ON s.course_code = cu.course_code
    WHERE m.reg_no = p_reg_no
    ORDER BY m.submitted_date DESC;
END $$

DELIMITER ;
