use HR
GO:

--Add a new column called prefix to employees 
ALTER TABLE employees
ADD prefix VARCHAR(5)

/*b) Modify the datatype in both employees table and jobs table
Drop primary key*/
alter table jobs
DROP CONSTRAINT [PK__jobs__6E32B6A5529B25E3]

SET identity_insert jobs on
--change data type
alter table jobs
alter column job_id varchar(9) NOT NULL ;

--recreate primary key
alter table jobs
add primary key (job_id)

--Modify the constraint of first_name and last_name of employees table to NOT NULL
alter table employees
alter column first_name varchar(50) NOT NULL
alter table employees
alter column last_name varchar(50) NOT NULL;

--b) Make department_id column in employees table as FOREIGN KEY that references department_id of departments table.
ALTER TABLE employees
ADD FOREIGN KEY (department_id)
REFERENCES departments(department_id)