create table employee
(
    emp_id int primary key NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth date,
    SALARY DECIMAL(4,2),
    department_id INT NOT NULL
)