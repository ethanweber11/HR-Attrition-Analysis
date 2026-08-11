SELECT * FROM HR_data;
DROP TABLE HR_data;
CREATE TABLE HR_data (age int, 
						attrition text, 
						businesstravel text, 
						dailyrate int, 
						department text,
						distancefromhome int, 
						education int, 
						educationfield text, 
						employeecount int,
						employeenumber int, 
						environmentsatisfaction int, 
						gender text, 
						hourlyrate int,
						jobinvolvement int, 
						joblevel int, 
						jobrole text, 
						jobsatisfaction int,
						maritalstatus text, 
						monthlyincome int, 
						monthlyrate int, 
						numcompaniesworked int,
						over18 text, 
						overtime text, 
						percentsalaryhike int, 
						performancerating int,
						relationshipsatisfaction int, 
						standardhours int, 
						stockoptionlevel int,
						totalworkingyears int, 
						trainingtimeslastyear int, 
						worklifebalance int,
						yearsatcompany int,
						yearsincurrentrole int,
						yearssincelastpromotion int,
						yearswithcurrmanager int,
						agegroup text);





--Main KPIs

--Total Employee count
SELECT count(*) AS total_employees
	FROM HR_data;

--Total Employees who have left the company
SELECT count(*) AS employees_left
	FROM HR_data
	WHERE attrition = 'Yes';

--Average years at company
SELECT round(avg(yearsatcompany), 1) AS average_tenure
	FROM HR_data;

--Overall attrition rate %
SELECT ROUND(100.0 * COUNT(*) FILTER (WHERE attrition = 'Yes') / COUNT(*), 2) AS attrition_rate
	FROM HR_data;

--Average age
SELECT round(avg(age), 1) AS average_age
	FROM HR_data;

--Average job satisfaction
SELECT avg(jobsatisfaction) AS average_job_satisfaction
	FROM HR_data;



--Attrition rate comparison section

--Attrition rate by department

SELECT
    department,
    COUNT(*) AS employees,
    COUNT(*) FILTER (WHERE attrition = 'Yes') AS employees_left,
    round(100.0 * COUNT(*) FILTER (WHERE attrition = 'Yes') / COUNT(*), 2) AS attrition_rate
	FROM HR_data
	GROUP BY department
	ORDER BY attrition_rate DESC;


--Attrition rate by age group

SELECT
    agegroup,
	COUNT(*) AS empoyees,
    COUNT(*) FILTER (WHERE attrition = 'Yes') AS employees_left,
    round(100.0 * COUNT(*) FILTER (WHERE attrition = 'Yes') / COUNT(*), 2) AS attrition_rate
	FROM HR_data
	GROUP BY agegroup
	ORDER BY attrition_rate DESC;

	
--Attrition rate by overtime status

SELECT
    overtime,
	COUNT(*) AS empoyees,
    COUNT(*) FILTER (WHERE attrition = 'Yes') AS employees_left,
    round(100.0 * COUNT(*) FILTER (WHERE attrition = 'Yes') / COUNT(*), 2) AS attrition_rate
	FROM HR_data
	GROUP BY overtime
	ORDER BY attrition_rate DESC;


--Attrition rate by job role

SELECT
    jobrole,
	COUNT(*) AS empoyees,
    COUNT(*) FILTER (WHERE attrition = 'Yes') AS employees_left,
    round(100.0 * COUNT(*) FILTER (WHERE attrition = 'Yes') / COUNT(*), 2) AS attrition_rate
	FROM HR_data
	GROUP BY jobrole
	ORDER BY attrition_rate DESC;


--Attrition rate by frequency of business traveling

SELECT
    businesstravel,
	COUNT(*) AS empoyees,
    COUNT(*) FILTER (WHERE attrition = 'Yes') AS employees_left,
    round(100.0 * COUNT(*) FILTER (WHERE attrition = 'Yes') / COUNT(*), 2) AS attrition_rate
	FROM HR_data
	GROUP BY businesstravel
	ORDER BY attrition_rate DESC;
























