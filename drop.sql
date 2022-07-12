use HR
GO:

--Drop column prefix of employees table
ALTER TABLE employees
	DROP COLUMN prefix;

-- Drop all 3 tables you created.
DROP TABLE IF EXISTS employees ,jobs,departments;

--c)	Drop the HR database.
use master
GO:
ALTER DATABASE HR SET SINGLE_USER WITH ROLLBACK IMMEDIATE /* in csae of error message use this line to drop your db*/
DROP DATABASE HR;


