CREATE TABLE Employee
(
    Emp_id INT IDENTITY (1,1) NOT NULL,
    -- You forgot to add a primary key for this table--
    first_name VARCHAR (20) NOT NULL,
    last_name VARCHAR (20) NOT NULL,
    DOB DATE NOT NULL,
    salary DECIMAL (8,2),
    department_id INT NOT NULL,
)
