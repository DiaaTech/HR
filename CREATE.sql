DROP TABLE IF EXISTS  employee
CREATE table employee(
employee_id INT PRIMARY KEY ,
first_name VARCHAR(50),
last_name VARCHAR(50),
phone_number INT,
email VARCHAR(50),
job_id INT FOREIGN KEY REFERENCES jobs(job_id),
department_id INT
) 



DROP TABLE IF EXISTS jobs
CREATE table jobs (
job_id INT PRIMARY KEY ,
job_title VARCHAR(25) NOT NULL,
min_salary DECIMAL(7,2),
max_salary DECIMAL(7,2),
)


DROP TABLE IF EXISTS department
CREATE table department(
department_id INT PRIMARY KEY ,
department_name vARCHAR(25) NOT NULL,
)

