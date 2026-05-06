-- Marks & Results Views
-- project_ARMS

USE project_ARMS;

-- vw_student_marks_detail
CREATE VIEW vw_student_marks_detail AS
SELECT
    sm.reg_no,
    CONCAT(u.fName, ' ', u.lName) AS student_name,
    st.batch,
    a.Assignment_id,
    a.Assignment_name,
    a.type AS assignment_type,
    a.course_code,
    cu.name AS course_name,
    a.max_marks,
    sm.mark_obtained,
    ROUND(sm.mark_obtained / a.max_marks * 100, 2) AS mark_pct,
    sm.is_medical
FROM Student_Marks sm
JOIN Student st ON st.reg_no = sm.reg_no
JOIN `User` u ON u.user_id = st.user_id
JOIN Assignment a ON a.Assignment_id = sm.Assignment_id
JOIN Course_unit cu ON cu.course_code = a.course_code;


-- vw_ca_summary
CREATE VIEW vw_ca_summary AS
SELECT
    sm.reg_no,
    CONCAT(u.fName, ' ', u.lName) AS student_name,
    st.batch,
    a.course_code,
    cu.name AS course_name,
    SUM(a.max_marks) AS total_ca_max,
    ROUND(SUM(sm.mark_obtained), 2) AS total_ca_obtained,
    ROUND(
        SUM(sm.mark_obtained) /
        SUM(a.max_marks) * 100, 2
    ) AS ca_pct
FROM Student_Marks sm
JOIN Student st ON st.reg_no = sm.reg_no
JOIN `User` u ON u.user_id = st.user_id
JOIN Assignment a ON a.Assignment_id = sm.Assignment_id
JOIN Course_unit cu ON cu.course_code = a.course_code
GROUP BY
    sm.reg_no, u.fName, u.lName,
    st.batch, a.course_code, cu.name;


-- vw_ca_eligibility
CREATE VIEW vw_ca_eligibility AS
SELECT
    e.Student_id AS reg_no,
    CONCAT(u.fName, ' ', u.lName) AS student_name,
    st.batch,
    e.Course_id AS course_code,
    cu.name AS course_name,
    e.ca_eligibility,
    CASE e.ca_eligibility
        WHEN 1 THEN 'Eligible'
        ELSE 'Not Eligible'
    END AS ca_status
FROM Eligibility e
JOIN Student st ON st.reg_no = e.Student_id
JOIN `User` u ON u.user_id = st.user_id
JOIN Course_unit cu ON cu.course_code = e.Course_id;


-- vw_eligibility_full
CREATE VIEW vw_eligibility_full AS
SELECT
    e.Student_id AS reg_no,
    CONCAT(u.fName, ' ', u.lName) AS student_name,
    st.batch,
    st.status AS student_status,
    e.Course_id AS course_code,
    cu.name AS course_name,
    e.attendance_eligibility,
    e.ca_eligibility,
    CASE
        WHEN e.attendance_eligibility = 1
         AND e.ca_eligibility = 1
        THEN 'Eligible for Final Exam'
        WHEN e.attendance_eligibility = 0
         AND e.ca_eligibility = 0
        THEN 'Barred - Attendance & CA'
        WHEN e.attendance_eligibility = 0
        THEN 'Barred - Attendance'
        ELSE 'Barred - CA Marks'
    END AS exam_eligibility_status
FROM Eligibility e
JOIN Student st ON st.reg_no = e.Student_id
JOIN `User` u ON u.user_id = st.user_id
JOIN Course_unit cu ON cu.course_code = e.Course_id;


-- vw_final_results
CREATE VIEW vw_final_results AS
SELECT
    fm.student_id AS reg_no,
    CONCAT(u.fName, ' ', u.lName) AS student_name,
    st.batch,
    st.status AS student_status,
    fm.course_id AS course_code,
    cu.name AS course_name,
    cu.credits,
    fm.final_mark,
    fm.grade,
    CASE
        WHEN fm.grade = 'X' THEN 'Barred'
        WHEN fm.grade = 'F' THEN 'Fail'
        ELSE 'Pass'
    END AS result_status
FROM Final_Mark fm
JOIN Student st ON st.reg_no = fm.student_id
JOIN `User` u ON u.user_id = st.user_id
JOIN Course_unit cu ON cu.course_code = fm.course_id;


-- vw_student_transcript
CREATE VIEW vw_student_transcript AS
SELECT
    scu.reg_no,
    CONCAT(u.fName, ' ', u.lName) AS student_name,
    st.batch,
    st.status AS student_status,
    scu.academic_year,
    scu.semester,
    scu.course_code,
    cu.name AS course_name,
    cu.credits,
    fm.final_mark,
    fm.grade,
    g.sgpa,
    g.cgpa
FROM Student_Course_Unit scu
JOIN Student st ON st.reg_no = scu.reg_no
JOIN `User` u ON u.user_id = st.user_id
JOIN Course_unit cu ON cu.course_code = scu.course_code
LEFT JOIN Final_Mark fm ON fm.student_id = scu.reg_no
                       AND fm.course_id = scu.course_code
LEFT JOIN GPA g ON g.reg_no = scu.reg_no;


-- vw_course_result_sheet
CREATE VIEW vw_course_result_sheet AS
SELECT
    fm.course_id AS course_code,
    cu.name AS course_name,
    fm.student_id AS reg_no,
    CONCAT(u.fName, ' ', u.lName) AS student_name,
    st.batch,
    e.attendance_eligibility,
    e.ca_eligibility,
    fm.final_mark,
    fm.grade,
    CASE
        WHEN fm.grade = 'X' THEN 'Barred'
        WHEN fm.grade = 'F' THEN 'Fail'
        ELSE 'Pass'
    END AS result_status
FROM Final_Mark fm
JOIN Student st ON st.reg_no = fm.student_id
JOIN `User` u ON u.user_id = st.user_id
JOIN Course_unit cu ON cu.course_code = fm.course_id
LEFT JOIN Eligibility e ON e.Student_id = fm.student_id
                       AND e.Course_id = fm.course_id
ORDER BY fm.course_id, fm.final_mark DESC;


-- vw_top_performers
CREATE VIEW vw_top_performers AS
SELECT
    fm.student_id AS reg_no,
    CONCAT(u.fName, ' ', u.lName) AS student_name,
    st.batch,
    fm.course_id AS course_code,
    cu.name AS course_name,
    fm.final_mark,
    fm.grade
FROM Final_Mark fm
JOIN Student st ON st.reg_no = fm.student_id
JOIN `User` u ON u.user_id = st.user_id
JOIN Course_unit cu ON cu.course_code = fm.course_id
WHERE fm.final_mark >= 80.00
  AND fm.grade != 'X'
ORDER BY fm.final_mark DESC;


-- END
