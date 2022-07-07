create  table jobs(
  job_id INT PRIMARY KEY NOT NULL,
  job_title VARCHAR not NULL,
  min_salary DECIMAL(6,2)  NOT NULL,
  max_salary DECIMAL(6,2) NOT NULL,
  
)