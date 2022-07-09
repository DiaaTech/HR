USE NewHRdb
Go;
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    employee_id INT,
    first_name VARCHAR (50),
    last_name VARCHAR (50),
    phone_number	INT,
    email VARCHAR (50),
    job_id INT,
    department_id INT,
    PRIMARY KEY (employee_id),
);

USE NewHRdb
Go;
DROP TABLE IF EXISTS jobs;
CREATE TABLE jobs (
    job_id INT,
    job_title VARCHAR (25) NOT NULL,
    min_salary DECIMAL (2,2),
    max_salary DECIMAL (2,2),
    PRIMARY KEY (job_id),
);

USE NewHRdb
Go;
DROP TABLE IF EXISTS departments;
CREATE TABLE departments (
    department_id INT,
    department_name VARCHAR (25) NOT NULL,
    PRIMARY KEY (department_id),
);

ALTER TABLE employees
ADD CONSTRAINT FK_job_id
FOREIGN KEY (job_id) REFERENCES jobs(job_id);