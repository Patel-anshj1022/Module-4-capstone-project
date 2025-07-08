Capstone Project 1: Student Course Management System (Python)
---

### 🎓 Student Course Management System (SCMS)

A lightweight and powerful Python-based system for managing students, courses, and enrollments — complete with a custom-built linked list tracker and SQL database integration.

---

## 🚀 About the Project

This system was built as a capstone project to demonstrate the use of:
- 🔧 Object-Oriented Programming (OOP)
- 🔗 Data structures (Linked Lists)
- 🛢️ ORM with SQLAlchemy
- ✅ Unit testing using Pytest

It’s simple, clean, and shows how core backend components come together — perfect for learning and extending.

---

## 💡 Features

- Add and manage students
- Add and manage courses
- Enroll students in courses
- Track recent enrollment activity using a custom linked list
- Data persistence with SQLite (via SQLAlchemy)
- Easy-to-run unit tests for critical logic

---

## 📁 Project Structure
```
student_course_management/
├── database/ # SQLAlchemy DB setup
├── linked_list/ # Custom Linked List implementation
├── models/ # ORM models: Student, Course, Enrollment
├── tests/ # Pytest test cases
├── main.py # CLI-based interface
├── requirements.txt # Dependencies
└── README.md # You're reading it!
```

---

## ⚙️ Getting Started

### 1. Clone or Download
```bash
git clone https://github.com/Patel-anshj1022/Module-4-capstone-project.git
cd Module-4-capstone-project
```
### Download the requiremets in the txt in vs terminal
```bash
pip install -r requirements.txt
```

---


Capstone Project 2: College Database Design and Queries (SQL)
---
# 🎓 College DB Capstone Project

This project showcases a structured relational database for managing a college system. It includes table creation scripts, mock data insertion, and sample queries for interacting with the database.

## 📁 Project Structure

```
college-db-capstone/
├── schema.sql            # SQL script to create tables
├── data.sql              # SQL script to insert mock data
├── queries.sql           # Example SQL queries for analysis
├── er_diagram.png        # Entity Relationship Diagram (provided separately)
└── README.md             # Project documentation
```

---

## 🛠️ Setup Instructions

### Requirements
- PostgreSQL or any SQL-compatible RDBMS
- SQL client (e.g. DBeaver, pgAdmin, CLI)

### Steps

1. **Create the database**
   ```sql
   CREATE DATABASE college_db;
   ```

2. **Import table schema**
   ```bash
   psql -d college_db -f schema.sql
   ```

3. **Insert mock data**
   ```bash
   psql -d college_db -f data.sql
   ```

4. **Run sample queries**
   ```bash
   psql -d college_db -f queries.sql
   ```

---

## 🧩 ER Diagram (Entity Relationship)

```
+-------------+     +--------------+     +---------------+
|   Students  |     |  Enrollments |     |   Courses     |
+-------------+     +--------------+     +---------------+
| id (PK)     |<----| student_id   |     | id (PK)       |
| name        |     | course_id    |---->| name          |
| age         |     | semester     |     | instructor_id |
| major       |     +--------------+     +---------------+
+-------------+

     +-------------+
     | Instructors |
     +-------------+
     | id (PK)     |
     | name        |
     | department  |
     +-------------+
```

---

## 📄 Description

- `schema.sql`: Defines all necessary tables (`students`, `courses`, `instructors`, `enrollments`) and their relationships.
- `data.sql`: Inserts sample data into all tables.
- `queries.sql`: Provides a variety of example SQL queries, including joins, aggregations, and filters.
- `er_diagram.png`: Visual representation of relationships among entities.

---

```
### Run the project and see the magic
```bash
python3main.py

```
