    # 🎓 College DB Capstone Project

This project showcases a structured relational database for managing a college system. It includes table creation scripts, mock data insertion, and sample queries for interacting with the database.

## 📁 Project Structure
college-db-capstone/

├── schema.sql # SQL script to create tables

├── data.sql # SQL script to insert mock data

├── queries.sql # Example SQL queries for analysis

├── er_diagram.png # Entity Relationship Diagram (provided separately)

└── README.md # Project documentation


---

## 🛠️ Setup Instructions

### Requirements
- PostgreSQL or any SQL-compatible RDBMS
- SQL client (e.g. DBeaver, pgAdmin, CLI)

### Steps

1. **Create the database**
   ```sql
   CREATE DATABASE college_db;

2.**Import schema**
psql -d college_db -f schema.sql

3.**insert mock data**
psql -d college_db -f data.sql

4.**run sample queries**
psql -d college_db -f queries.sql


## 📄 Description
schema.sql: Defines all necessary tables (students, courses, instructors, enrollments) and their relationships.

data.sql: Inserts sample data into all tables.

queries.sql: Provides a variety of example SQL queries, including joins, aggregations, and filters.

er_diagram.png: Visual representation of relationships among entities.