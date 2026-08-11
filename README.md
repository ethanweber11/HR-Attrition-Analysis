# HR Attrition Analysis

## Project Description
This project analyzes HR worker data to identify trends across departments, age groups, overtime status, and business travel status. 
PostgreSQL was used to create the database, import and transform the data, and answer the initial business questions. R was also used
for more statistically heavy analysis, and multiple regression models were fit and analyzed. 


## Project Objectives
- Find the total number of workers and the number of cases where Attrition = 1, which means that the worker had left the company.
- Find the overall attrition rate for the company
- Identify average job satisfaction
- Analyze attrition between age groups
- Analyze attrition between job types, business travel amount, and overtime status
- Use R to fit appropriate models for the data


## Business Questions
- What is the total number of employees and how many have left?
- How satisfied are the employees with their jobs?
- What are the attrition rates between departments?
- Do different age groups have higher attrition?
- Do some variables contribute more than others to higher attrition rates?



## Tools Used:
- PostgreSQL
- pgAdmin 4
- SQL
- R
- GitHub


## Dataset
The dataset used contains individual records for each employee of the company. Each row represents an employee and data collected about them.
The dataset includes information about:
- Age and gender
- Attrition Yes/No
- How much they travel for business
- Education
- Job description
- Income
- Time variables relating to time at company


## Dataset Size
- Number of rows: 1,470
- Number of columns: 36


## Data Preparation for Analysis
1. Create HR_data dataframe and include all variables in the dataset
2. Import CSV data into the dataframe
3. Check data types and null counts
4. Create an age group variable from the age column


## SQL Analysis
The SQL analysis was organized into:
- Key performance indicators
  - Total employee count
  - Total employees who have left the company
  - Average years at company
  - Overall attrition rate
  - Average age
  - Average job satisfaction
- Attrition rate comparison between
  - Department
  - Age Group
  - Overtime Status
  - Job Role
  - Business Travel Frequency


## R Analysis
The R analysis was organized into:
- Changing attrition values from Yes/No to 1/0
- Fitting a logistic regression model where attrition is the dependent variable, and overtime is the only predictor
- Fitting a second logistic regression model where attrition is the dependent variable and the predictors are:
  - Age
  - Monthly Income
  - Distance from home
  - Overtime
  - Business travel frequency
  - Job satisfaction
  - Environment satisfaction
  - Years at company
- Exponentiating results to get ratios instead of odds-ratios
- Creating an ANOVA chi-squared test to validate variable importance to the model
- Visualizing a decision tree on the second model


## Key Findings
- The total number of employees who left was 237
- The overall attrition rate for this time period was 16.12%
- The average job satisfaction out of 5 was 2.73
- Sales had the highest attrition rate out of all departments
- Younger people were more likely to leave
- It was much more common for employees who participated in overtime to leave the company
- Employees who traveled more had higher rates of leaving
- Overtime and frequent business travelling are the variables most associated with employees leaving 
 

## Business Recommendations



## Author

Ethan Weber

LinkedIn: www.linkedin.com/in/ethan-weber-a98770229

GitHub: www.github.com/ethanweber11





























