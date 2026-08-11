# Cafe Sales Analysis

## Project Description
This project analyzes transaction data to identify trends across store locations, product categories, product types, days of the week, and hours of the day. 
PostgreSQL was used to create the database, import and transform the data, and answer business questions. Power BI was used to create visualizations in a report to showcase results and key metrics.


## Project Objectives
- Find the total number of products sold and total revenue
- Analyze revenue over time
- Identify any differences in store performance
- Identify the highest-performing hours of the day and days of the week
- Determine the highest-performing and lowest-performing product categories and types
- Use visualizations through Power BI to showcase results


## Business Questions
- How much revenue was generated and how many products were sold?
- What is the average revenue per transaction?
- Has revenue increased or decreased over time?
- Do any stores perform better than others?
- What are the highest-selling hours and days of the week?
- What are the lowest-performing products?


## Tools Used:
- PostgreSQL
- pgAdmin 4
- SQL
- Power BI
- GitHub


## Dataset
The dataset used contains individual coffee shop sale records. Each row in the dataset represents a product purchased by a customer.
The dataset includes information about:
- Transaction date and time
- Store location
- Product category
- Product type
- Product details
- Quantity sold
- Unit price
- Revenue


## Dataset Size
- Number of rows: 149116
- Number of columns: 14
- Date range: 1/1/2023 to 6/30/2023
- Number of store locations: 3


## Data Preperation For Analysis
1. Create coffee_sales table and variables in dataset
2. Import original coffee sales data csv file
3. Check data types and null counts
4. Created revenue column from transaction quantity and unit price of product
5. Extracted the hour purchased as a new variable from transaction_time column
6. Extracted day of the week in text as a new variable from transaction_time column
7. Prepared data for export to Power BI


## SQL Analysis
The SQL analysis was organized into:
- Key performance indicators
- Store performance
- Hourly sales performance
- Daily sales performance
- Revenue trends

## Key Performance Indicators:
- Total revenue from purchases
- Total products purchased
- Average revenue per transaction
- Average number of products per purchase


## Power BI Dashboard

This dashboard contains two pages. 
The first page is to show overall business performance, including:
- Revenue over time
- Total revenue by store
- Total revenue by product category
- Total sold products
- Average revenue per purchase
- Total revenue

The second page includes time analysis and product analysis, including:
- Total revenue per hour
- Total revenue per day
- Total products sold per hour
- Highest and Lowest performing products and product types


## Key Findings
- Total revenue was $698,812
- The number of products sold was 214470
- Hell's Kitchen was the top-performing store location
- Coffee generated the most revenue
- Sales are highest during the morning, and peak hours are 7-10 am
- Mondays and Fridays led with the highest revenue in that order
- Revenue has increased for almost this entire time period included
- The top five least selling products were:
  1. Dark Chocolate
  2. Earl Grey
  3. Spicy Eye Opener Chai
  4. Guatemalan Sustainable Grown
  5. Lemon Grass
 

## Business Recommendations
- Make sure to properly schedule during peak hours so there is less risk of bottlenecking service
- Maintain high amounts of inventory for the popular products
- Perform more analysis to determine the causes of the highest and lowest performing stores
- Feature the top-selling products in marketing
- Review lowest-selling products and determine if they should be removed from the stores


## Author

Ethan Weber

LinkedIn: www.linkedin.com/in/ethan-weber-a98770229

GitHub: www.github.com/ethanweber11





























