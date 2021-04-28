# data-analyst-job-title-project

# Introduction
For this project, I used a dataset from Kaggle to get experience running SQL queries, and gaining insights about the dataset by asking questions.

Data Source: [Kaggle Dataset](https://www.kaggle.com/elroyggj/indeed-dataset-data-scientistanalystengineer)

# Table of Contents
* [Introduction](#Introduction)
* [SQL Walkthrough](#SQL-Walkthrough)

# SQL Walkthrough
1. So the first question to ask is how many rows are in the dataset, and after selecting all from the dataset it looks like it has 1,793 rows

2. Secondly, I wanted to see what companies appeared in the first 10 rows of the dataset, and what company appeared in the last row was ExxonMobile

3. Thirdly, I wanted to see how many job postings were in the state of Tennessee and how many jobs were in the state of Kentucky using `WHERE`

4. For the fourth question, I wanted to know how many postings in Tennessee have a star rating above four starts

5. For the fifth question, for all job postings in the dataset, 151 postings have a review count between 500 and 1,000

6. Sixth, I wanted to show the average star rating for companies in each state, aliasing `location` as `state`, and we see that Nebraska has the highest average rating for data analyst jobs

7. For the seventh question, I wanted to see how many unique job titles there were for the dataset, and there were 881 unique job titles

8. Eighth, I was curious about California's unique job titles, and there are 230 unique job titles in California

9. With question nine, I wanted to find out how many companies had more than 5,000 reviews across all locations, and there were 40 companies in total

10. For question ten, I took the code for question nine and did an `GROUP BY` company, and did a `ORDER BY` `average_start_rating` descending to find the company with the highest star rating in the dataset

11. For question eleven, I wanted to see how many unique job titles there were that had the word `Analyst`, and there are 774 unique job titles

12. For question twelve, I wanted to see what jobs in the dataset don't have the word `Analyst` or `Analytics` and what those job listings had in common, and they all have Tableau in their listing

13. As a bonus question, I wanted to see what jobs requiring SQL were hard to fill, and it seems to primarily be health care, computer electronics, and consulting