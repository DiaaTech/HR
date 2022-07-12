use HR
GO:

--Drop primary key
alter table jobs
DROP CONSTRAINT [PK__jobs__6E32B6A5529B25E3]

SET identity_insert jobs on
--change data type
alter table jobs
alter column job_id varchar(9) NOT NULL ;

--recreate primary key
alter table jobs
add primary key (job_id)

--job table insert
SET IDENTITY_INSERT jobs ON 
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
	VALUES ('E1', 'Engineer', 50000, 80000), ('S1', 'sales', 40000, 60000), ('M1', 'Marketing', 30000, 60000);

--delete all the records inserted to jobs table.
TRUNCATE TABLE jobs;

	select * from jobs;

--department table insert
SET IDENTITY_INSERT departments ON		  
INSERT INTO departments (department_id, department_name)
	VALUES (3, 'Engineering'), (4, 'sales'), (5, 'Marketing');

-- delete all the records inserted to departments table.
TRUNCATE TABLE departments;

	select * from departments;

--employees table insert	
INSERT INTO employees (employee_id, first_name, last_name, job_id, department_id)
	VALUES (01, 'John', 'Doe', 'S1', 3), (02, 'Helen', 'Awet', 'M1', 5), (03, 'Bilal', 'Nassir', 'E1', 3)

--delete all the records inserted to employees table.
TRUNCATE TABLE employees;

	select * from employees
