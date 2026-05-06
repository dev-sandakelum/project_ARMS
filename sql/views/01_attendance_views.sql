-- Attendance Views
-- project_ARMS

USE project_ARMS;

-- vw_student_profile
CREATE VIEW vw_student_profile AS
SELECT
    s.reg_no,
    CONCAT(u.fName, ' ', u.mName, ' ', u.lName)  AS full_name,
    u.fName,
    u.lName,
    u.NIC,
    u.gender,
    u.dob,
    u.email,
    u.address,
    s.batch,
    s.status                                       AS student_status
FROM Student s
JOIN `User` u ON u.user_id = s.user_id;


-- vw_session_details
CREATE VIEW vw_session_details AS
SELECT
    se.session_id,
    se.session_type,
    se.week_no,
    DATE(se.time_allocation_date)   AS session_date,
    TIME(se.time_allocation_date)   AS session_time,
    se.course_code,
    cu.name                         AS course_name,
    cu.credits,
    cu.has_practical,
    cu.has_theory,
    d.name                          AS department_name
FROM Session se
JOIN Course_unit cu ON cu.course_code = se.course_code
JOIN Department  d  ON d.Department_id = cu.dp_id;


-- vw_attendance_full
CREATE VIEW vw_attendance_full AS
SELECT
    ar.attendance_id,
    ar.reg_no,
    CONCAT(u.fName, ' ', u.lName)           AS student_name,
    st.batch,
    st.status                                AS student_status,
    se.session_id,
    se.session_type,
    se.week_no,
    DATE(se.time_allocation_date)            AS session_date,
    se.course_code,
    cu.name                                  AS course_name,
    ar.status                                AS attendance_status,
    CONCAT(tu.fName, ' ', tu.lName)          AS to_officer_name
FROM Attendance_Record ar
JOIN Student        st  ON st.reg_no    = ar.reg_no
JOIN `User`         u   ON u.user_id    = st.user_id
JOIN Session        se  ON se.session_id = ar.session_id
JOIN Course_unit    cu  ON cu.course_code = se.course_code
JOIN TO_Officer     tof ON tof.to_id    = ar.FR_to_id
JOIN `User`         tu  ON tu.user_id   = tof.user_id;


-- vw_student_attendance_summary
CREATE VIEW vw_student_attendance_summary AS
SELECT
    ar.reg_no,
    CONCAT(u.fName, ' ', u.lName)            AS student_name,
    st.batch,
    se.course_code,
    cu.name                                   AS course_name,
    se.session_type,
    COUNT(ar.attendance_id)                   AS total_sessions,
    SUM(ar.status = 'Present')                AS present_count,
    SUM(ar.status = 'Absent')                 AS absent_count
FROM Attendance_Record ar
JOIN Student        st  ON st.reg_no     = ar.reg_no
JOIN `User`         u   ON u.user_id     = st.user_id
JOIN Session        se  ON se.session_id = ar.session_id
JOIN Course_unit    cu  ON cu.course_code = se.course_code
GROUP BY
    ar.reg_no, u.fName, u.lName, st.batch,
    se.course_code, cu.name, se.session_type;


-- vw_attendance_percentage
CREATE VIEW vw_attendance_percentage AS
SELECT
    ar.reg_no,
    CONCAT(u.fName, ' ', u.lName)            AS student_name,
    st.batch,
    st.status                                 AS student_status,
    se.course_code,
    cu.name                                   AS course_name,
    COUNT(ar.attendance_id)                   AS total_sessions,
    SUM(ar.status = 'Present')                AS sessions_present,
    SUM(ar.status = 'Absent')                 AS sessions_absent,
    ROUND(
        SUM(ar.status = 'Present') /
        COUNT(ar.attendance_id) * 100 , 2
    )                                         AS attendance_pct
FROM Attendance_Record ar
JOIN Student        st  ON st.reg_no     = ar.reg_no
JOIN `User`         u   ON u.user_id     = st.user_id
JOIN Session        se  ON se.session_id = ar.session_id
JOIN Course_unit    cu  ON cu.course_code = se.course_code
GROUP BY
    ar.reg_no, u.fName, u.lName,
    st.batch, st.status,
    se.course_code, cu.name;


-- vw_attendance_eligibility
CREATE VIEW vw_attendance_eligibility AS
SELECT
    e.Student_id                              AS reg_no,
    CONCAT(u.fName, ' ', u.lName)            AS student_name,
    st.batch,
    st.status                                 AS student_status,
    e.Course_id                               AS course_code,
    cu.name                                   AS course_name,
    e.attendance_eligibility,
    CASE e.attendance_eligibility
        WHEN 1 THEN 'Eligible'
        ELSE        'Not Eligible'
    END                                       AS attendance_status
FROM Eligibility e
JOIN Student        st  ON st.reg_no      = e.Student_id
JOIN `User`         u   ON u.user_id      = st.user_id
JOIN Course_unit    cu  ON cu.course_code = e.Course_id;


-- vw_low_attendance
CREATE VIEW vw_low_attendance AS
SELECT
    reg_no,
    student_name,
    batch,
    student_status,
    course_code,
    course_name,
    total_sessions,
    sessions_present,
    sessions_absent,
    attendance_pct
FROM vw_attendance_percentage
WHERE attendance_pct < 80.00
ORDER BY attendance_pct ASC;


-- vw_medical_status
CREATE VIEW vw_medical_status AS
SELECT
    m.medical_id,
    m.reg_no,
    CONCAT(u.fName, ' ', u.lName)            AS student_name,
    m.submitted_date,
    mcd.covers_date,
    se.course_code,
    se.session_type,
    se.week_no,
    DATE(se.time_allocation_date)            AS absent_date,
    d.name                                   AS department,
    m.approval,
    CASE m.approval
        WHEN 1 THEN 'Approved'
        ELSE        'Pending'
    END                                      AS approval_status
FROM Medical m
JOIN Student        st   ON st.reg_no      = m.reg_no
JOIN `User`         u    ON u.user_id      = st.user_id
JOIN Session        se   ON se.session_id  = m.session_id
JOIN Department     d    ON d.Department_id = m.department_id
LEFT JOIN Medical_Cover_Date mcd ON mcd.medical_id = m.medical_id;


-- END
