-- =============================================
-- Course Management Procedures
-- =============================================

USE project_ARMS;

DELIMITER $$

-- Procedure 1: Enroll Student in Course
CREATE PROCEDURE EnrollStudentInCourse(
    IN p_reg_no VARCHAR(20),
    IN p_course_code VARCHAR(20),
    IN p_academic_year VARCHAR(10),
    IN p_semester VARCHAR(10)
)
BEGIN
    INSERT INTO Student_Course_Unit (reg_no, course_code, academic_year, semester)
    VALUES (p_reg_no, p_course_code, p_academic_year, p_semester);
    
    SELECT 'Student enrolled successfully' AS message;
END $$

-- Procedure 2: Get Student Courses
CREATE PROCEDURE GetStudentCourses(
    IN p_reg_no VARCHAR(20)
)
BEGIN
    SELECT 
        cu.course_code,
        cu.name,
        cu.credits,
        cu.type,
        scu.academic_year,
        scu.semester
    FROM Student_Course_Unit scu
    JOIN Course_Unit cu ON scu.course_code = cu.course_code
    WHERE scu.reg_no = p_reg_no
    ORDER BY scu.academic_year, scu.semester;
END $$

-- Procedure 3: Get Course Students
CREATE PROCEDURE GetCourseStudents(
    IN p_course_code VARCHAR(20)
)
BEGIN
    SELECT 
        s.reg_no,
        u.fName,
        u.mName,
        u.lName,
        s.batch,
        s.status
    FROM Student_Course_Unit scu
    JOIN Student s ON scu.reg_no = s.reg_no
    JOIN `User` u ON s.user_id = u.user_id
    WHERE scu.course_code = p_course_code
    ORDER BY s.reg_no;
END $$

DELIMITER ;
