<div align="center">

<!-- ANIMATED HEADER BANNER -->
<img width="100%" src="https://capsule-render.vercel.app/api?type=waving&color=0:0f0c29,50:302b63,100:24243e&height=200&section=header&text=ICT1222%20Mini%20Project&fontSize=45&fontColor=ffffff&fontAlignY=38&desc=Database%20Management%20Systems%20Practicum&descAlignY=58&descSize=18&animation=fadeIn"/>

<!-- BADGES ROW 1 -->
<p>
  <img src="https://img.shields.io/badge/University-University%20of%20Ruhuna-6C63FF?style=for-the-badge&logo=graduation-cap&logoColor=white"/>
  <img src="https://img.shields.io/badge/Faculty-Technology-FF6B6B?style=for-the-badge&logo=flask&logoColor=white"/>
  <img src="https://img.shields.io/badge/Department-ICT-4ECDC4?style=for-the-badge&logo=cpu&logoColor=white"/>
</p>

<!-- BADGES ROW 2 -->
<p>
  <img src="https://img.shields.io/badge/Course-ICT1222-FFE66D?style=for-the-badge&logo=database&logoColor=black"/>
  <img src="https://img.shields.io/badge/Level-I%20Semester%20II-FF6B6B?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Duration-13%20Weeks-4ECDC4?style=for-the-badge&logo=clock&logoColor=white"/>
</p>

<!-- TECH BADGES -->
<p>
  <img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white"/>
  <img src="https://img.shields.io/badge/SQL-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white"/>
  <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white"/>
  <img src="https://img.shields.io/badge/draw.io-F08705?style=for-the-badge&logo=diagrams.net&logoColor=white"/>
</p>

<!-- STATUS BADGES -->
<p>
  <img src="https://img.shields.io/badge/Status-In%20Progress-yellow?style=flat-square"/>
  <img src="https://img.shields.io/badge/Build-Passing-brightgreen?style=flat-square"/>
  <img src="https://img.shields.io/badge/PRs-Welcome-blue?style=flat-square"/>
</p>

</div>

---

<div align="center">

## ✨ Faculty Student Management System ✨

> **A complete MySQL-based solution for managing students, marks, attendance and results**  
> _Built for the Faculty of Technology · University of Ruhuna_

</div>

---

## 📌 Table of Contents

<details open>
<summary>Click to expand / collapse</summary>

- [📖 About the Project](#-about-the-project)
- [👥 Team Members](#-team-members)
- [🗂️ Project Structure](#️-project-structure)
- [🗃️ Database Architecture](#️-database-architecture)
- [👤 MySQL User Roles](#-mysql-user-roles)
- [📋 Features](#-features)
- [🚀 Getting Started](#-getting-started)
- [📊 Sample Data Requirements](#-sample-data-requirements)
- [🌿 Git Branching Strategy](#-git-branching-strategy)
- [📅 Timeline](#-timeline)
- [📄 Report Checklist](#-report-checklist)
- [📚 References](#-references)

</details>

---

## 📖 About the Project

<table>
<tr>
<td width="60%">

This mini project develops a **comprehensive Faculty Management System** for the Faculty of Technology at the University of Ruhuna. The system manages:

- 🎓 Student records, status & enrollment
- 📅 Attendance tracking with medical support
- 📝 Marks for quizzes, assessments, mid & final exams
- 📊 Automated grading using UGC Circular No. 12-2024
- 🏆 SGPA & CGPA calculation
- 🔐 Role-based MySQL user access control

</td>
<td width="40%" align="center">

```
╔══════════════════════╗
║   SYSTEM OVERVIEW    ║
╠══════════════════════╣
║  👤 Users    : 5     ║
║  📦 Tables   : 12+   ║
║  👁️ Views    : 10+   ║
║  ⚙️  Procs   : 8+    ║
║  🎓 Students : 15+   ║
║  📚 Subjects : 8+    ║
╚══════════════════════╝
```

</td>
</tr>
</table>

---

## 👥 Team Members

<div align="center">

| # | Index No | Name | Role | Responsibility |
|:-:|:--------:|:----:|:----:|:--------------|
| 1 | `ICT/21/XXX` | Member 1 | 🏗️ **Architect** | Schema Design, ER Diagram, MySQL Users & Privileges |
| 2 | `ICT/21/XXX` | Member 2 | 📅 **Attendance Lead** | Attendance Tables, Views, Medical Recording |
| 3 | `ICT/21/XXX` | Member 3 | 📝 **Marks Lead** | Marks Tables, CA Eligibility, Stored Procedures |
| 4 | `ICT/21/XXX` | Member 4 | 🏆 **Grading Lead** | SGPA/CGPA, Final Views, Report & Documentation |

</div>

---

## 🗂️ Project Structure

```
📦 ict1222-mini-project/
│
├── 📁 docs/
│   ├── 📄 data-requirements.md          # Data requirement document
│   ├── 🖼️  er-diagram.png               # Entity Relationship Diagram
│   ├── 🖼️  relational-mapping.png       # Relational Mapping Diagram
│   └── 📄 solution-architecture.md      # System architecture overview
│
├── 📁 sql/
│   ├── 🔷 01_schema.sql                 # DDL — all table definitions
│   ├── 🔷 02_users.sql                  # MySQL user accounts & privileges
│   ├── 🔷 03_sample_data.sql            # INSERT statements (students, marks, etc.)
│   │
│   ├── 📁 views/
│   │   ├── 👁️  attendance_views.sql     # All attendance-related views
│   │   └── 👁️  marks_views.sql          # CA marks, final marks, grade views
│   │
│   └── 📁 procedures/
│       ├── ⚙️  attendance_procs.sql     # Attendance stored procedures
│       ├── ⚙️  marks_procs.sql          # Marks & eligibility procedures
│       └── ⚙️  grading_procs.sql        # SGPA/CGPA calculation procedures
│
├── 📁 report/
│   └── 📝 final_report.docx             # Final submission report
│
└── 📄 README.md                         # This file
```

---

## 🗃️ Database Architecture

### 🔑 Core Tables

<div align="center">

| Table | Description | Key Fields |
|:-----:|:-----------:|:----------:|
| `Student` | All student records | `reg_no`, `status` (proper/repeat/suspended) |
| `Lecturer` | Lecturer details | `lecturer_id`, `department` |
| `TechnicalOfficer` | TO records | `to_id`, `assigned_lab` |
| `CourseUnit` | Course info | `course_code`, `credits`, `type` |
| `Enrollment` | Student-Course link | `reg_no`, `course_code`, `semester` |
| `Attendance` | Session attendance | `session_type`, `is_present`, `has_medical` |
| `Marks` | All exam marks | `mark_type`, `mark_value`, `is_medical` |

</div>

### 🔄 Entity Relationships

```
┌─────────────┐       ┌──────────────┐       ┌─────────────┐
│   Student   │──────▶│  Enrollment  │◀──────│  CourseUnit │
└─────────────┘       └──────────────┘       └─────────────┘
       │                                             │
       │              ┌──────────────┐               │
       └─────────────▶│  Attendance  │◀──────────────┘
                      └──────────────┘
       │              ┌──────────────┐               │
       └─────────────▶│    Marks     │◀──────────────┘
                      └──────────────┘
                             │
                      ┌──────────────┐
                      │   Grading    │
                      │(SGPA / CGPA) │
                      └──────────────┘
```

---

## 👤 MySQL User Roles

<div align="center">

| 👤 Role | Privileges | Grant Option | Tables Accessible |
|:-------:|:----------:|:------------:|:-----------------:|
| 🔴 **Admin** | ALL | ✅ Yes | All tables |
| 🟠 **Dean** | ALL | ❌ No | All tables |
| 🟡 **Lecturer** | SELECT, INSERT, UPDATE, DELETE | ❌ No | All tables |
| 🔵 **Technical Officer** | SELECT, INSERT, UPDATE | ❌ No | Attendance tables/views |
| 🟢 **Student** | SELECT only | ❌ No | Final attendance & marks views |

</div>

```sql
-- Quick Reference: Privilege Hierarchy
Admin  ──▶  Dean  ──▶  Lecturer  ──▶  Technical Officer  ──▶  Student
 ALL          ALL        CRUD              Read/Write            Read
+GRANT       -GRANT     -GRANT            (Attendance)          (Final)
```

---

## 📋 Features

### 📅 Attendance Management

- [x] Record theory & practical sessions separately (15 sessions each)
- [x] Medical certificate recording per student per session
- [x] Eligibility calculation — **≥ 80% = Eligible**
- [x] View by course code (batch summary)
- [x] View by registration number (individual)
- [x] Combined / theory-only / practical-only attendance views

### 📝 Marks Management

- [x] Quiz marks, Assessment marks, Mid-Semester (Theory + Practical), Final (Theory + Practical)
- [x] All marks stored out of 100
- [x] CA eligibility per UGC Circular No. 12-2024
- [x] Batch and individual CA mark views
- [x] Medical marks displayed as **MC**

### 🏆 Grading & Results

- [x] Grading per UGC Circular No. 12-2024 (A+ to E)
- [x] Suspended student results shown as **WH**
- [x] Repeat student maximum grade capped at **C**
- [x] SGPA and CGPA calculation (credit-weighted)
- [x] Combined eligibility check (attendance + CA)

---

## 🚀 Getting Started

### ✅ Prerequisites

```bash
# Required software
MySQL Server   >= 8.0
MySQL Workbench (optional but recommended)
Git            >= 2.x
```

### 📥 Clone the Repository

```bash
git clone https://github.com/YOUR_USERNAME/ict1222-mini-project.git
cd ict1222-mini-project
```

### ▶️ Execute in This Order

```bash
# Step 1 — Create all tables
mysql -u root -p < sql/01_schema.sql

# Step 2 — Create MySQL users & assign privileges
mysql -u root -p < sql/02_users.sql

# Step 3 — Insert all sample data
mysql -u root -p < sql/03_sample_data.sql

# Step 4 — Create views
mysql -u root -p < sql/views/attendance_views.sql
mysql -u root -p < sql/views/marks_views.sql

# Step 5 — Create stored procedures
mysql -u root -p < sql/procedures/attendance_procs.sql
mysql -u root -p < sql/procedures/marks_procs.sql
mysql -u root -p < sql/procedures/grading_procs.sql
```

### 🧪 Quick Test Queries

```sql
-- Check attendance summary for a course
SELECT * FROM AttendanceSummary WHERE course_code = 'ICT1201';

-- Check individual student attendance
SELECT * FROM AttendanceSummary WHERE reg_no = 'ICT/21/001';

-- Check all not-eligible students
SELECT * FROM AttendanceSummary WHERE eligibility = 'Not Eligible';

-- Check SGPA for a student
CALL GetStudentSGPA('ICT/21/001');
```

---

## 📊 Sample Data Requirements

<div align="center">

| Category | Minimum Required | Status |
|:--------:|:---------------:|:------:|
| 🎓 Proper Students | 10 | ⬜ |
| 🔁 Repeat Students | 5 | ⬜ |
| 👨‍🏫 Lecturers | 5 | ⬜ |
| 🔧 Technical Officers | 5 | ⬜ |
| 👤 Admin | 1 | ⬜ |
| 🎓 Dean | 1 | ⬜ |
| 📚 Course Units | 8+ (L1S2 timetable) | ⬜ |

### Attendance Scenarios to Cover

| Scenario | Description |
|:--------:|:-----------:|
| ✅ `>= 80%` | Eligible — Present enough sessions |
| ❌ `< 80%` | Not Eligible — Too many absences |
| 🏥 `With Medical >= 80%` | Eligible with medical consideration |
| 🏥 `With Medical < 80%` | Not Eligible even with medical |

</div>

---

## 🌿 Git Branching Strategy

```
main ──────────────────────────────────────────▶ (stable releases only)
  │
  └── dev ──────────────────────────────────────▶ (integration branch)
        │
        ├── feature/schema-and-users       (Member 1)
        ├── feature/attendance             (Member 2)
        ├── feature/marks-and-ca           (Member 3)
        └── feature/grading-and-report     (Member 4)
```

### 📌 Commit Message Convention

```bash
✅ Good commits:
git commit -m "Add attendance view for course code lookup"
git commit -m "Fix CGPA calculation for repeat students"
git commit -m "Insert sample data for 10 proper students"

❌ Bad commits:
git commit -m "update"
git commit -m "fix stuff"
git commit -m "done"
```

### 🔄 Daily Workflow

```bash
# 1. Pull latest changes
git checkout dev && git pull origin dev

# 2. Work on your feature branch
git checkout feature/your-feature

# 3. Stage and commit your work
git add . && git commit -m "Your descriptive message"

# 4. Push and open a Pull Request → dev
git push origin feature/your-feature
```

> ⚠️ **Rule:** Never push directly to `main`. Always open a PR with at least **1 reviewer approval**.

---

## 📅 Timeline

<div align="center">

| Week | Milestone | Owner |
|:----:|:---------:|:-----:|
| 1–2 | Requirements analysis, Data Requirements Document | All |
| 2–3 | ER Diagram + Relational Mapping | Member 1 |
| 3–5 | Schema creation (DDL), MySQL users setup | Member 1 |
| 5–7 | Attendance tables + views + medical logic | Member 2 |
| 6–8 | Marks tables + CA eligibility + procedures | Member 3 |
| 8–10 | Grading logic + SGPA/CGPA + WH/MC handling | Member 4 |
| 10–11 | Sample data insertion + testing | All |
| 11–12 | Report writing + documentation | Member 4 + All |
| 13 | Final review + demo preparation | All |

</div>

---

## 📄 Report Checklist

<details>
<summary>📝 Click to expand the full report checklist</summary>

- [ ] Brief introduction about the problem
- [ ] Brief introduction to the solution
- [ ] Proposed ER / EER Diagram
- [ ] Proposed Relational Mapping Diagram
- [ ] Table structure of the solution
- [ ] Architecture of the solution
- [ ] Tools and technologies used
- [ ] Security measures taken
- [ ] DB Accounts/Users — description & justification
- [ ] Stored procedures — code snippets
- [ ] Views — code snippets
- [ ] Problems faced during development
- [ ] How problems were overcome
- [ ] Hosting plan (cloud/local) with reasons
- [ ] Cloud deployment considerations
- [ ] Individual contributions
- [ ] References

</details>

---

## 📚 References

- 📜 [UGC Commission Circular No. 12-2024](https://www.ugc.ac.lk) — Grading & CA eligibility guidelines
- 🐬 [MySQL 8.0 Documentation](https://dev.mysql.com/doc/refman/8.0/en/)
- 🎓 University of Ruhuna — Faculty of Technology ICT Department
- 📘 ICT1222 DBMS Practicum Lecture Notes

---

<div align="center">

<!-- FOOTER WAVE -->
<img width="100%" src="https://capsule-render.vercel.app/api?type=waving&color=0:24243e,50:302b63,100:0f0c29&height=120&section=footer"/>

**ICT1222 — Database Management Systems Practicum · University of Ruhuna**

*Made with ❤️ by Group [No] · Faculty of Technology · Department of ICT*

![MySQL](https://img.shields.io/badge/Powered%20by-MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white)
![GitHub](https://img.shields.io/badge/Hosted%20on-GitHub-181717?style=flat-square&logo=github&logoColor=white)

</div>