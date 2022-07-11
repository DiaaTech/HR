use HR
GO

DROP TABLE IF EXISTS employees;
CREATE TABLE employees(
   employee_id INT PRIMARY KEY IDENTITY  (1,1),
    first_name 	VARCHAR(50), 	
    last_name 	VARCHAR(50),	
    phone_number INT, 	
    email 	VARCHAR(50),
    job_id INT FOREIGN KEY REFERENCES JOBS(job_id),
    department_id INT
);

DROP TABLE IF EXISTS jobs;
CREATE TABLE jobs(
    job_id INT PRIMARY KEY IDENTITY  (101,1),
    job_title 	VARCHAR(25) NOT NULL,
    min_salary 	DECIMAL (3,2),
    max_salary 	DECIMAL (5,2),
);

DROP TABLE IF EXISTS departments;
CREATE TABLE departments(
    department_id INT PRIMARY KEY IDENTITY  (201,1),
    department_name VARCHAR(25) NOT NULL,
);