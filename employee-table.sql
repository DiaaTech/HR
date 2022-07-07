create table employee(
  emp_id INT PRIMARY KEY NOT NULL,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  date_of_birth  INT NOT NULL,
  salary DECIMAL(6,2) NOT NULL,
  department_id INT NOT NULL,

)