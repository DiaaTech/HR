REATE DATABASE EMPLOYEE;
CREATE TABLE EMPLOYEE
(
    EMPLOYEE_ID INT NOT NULL,
    -- You forgot to add a PRIMARY KEY--
    FIRST_NAME VARCHAR(50) NOT NULL,
    LAST_NAME VARCHAR(50) NOT NULL,
    DOB DATE,
    SALARY DECIMAL(4,2),
    EMPLOYEE_NAME INT NOT NULL,
    -- Why you added this here. Please read the assignment question to get the column names--
)
