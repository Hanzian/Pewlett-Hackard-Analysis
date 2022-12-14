# Pewlett-Hackard-Analysis

## Overview of the Project

This project utilizes Data Analysis to build a SQL database of employees of a corporation called Pewlett Hackard.
Our purpose was to retrieve all the employees who are about to retire (employees born between 1952-01-01 and 1955-12-31) currently in the company. with this information, we were been assigned to create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program ((employees born between 1965-01-01 and 1965-12-31)
There are four CSV files holding the data of employees. The SQL tables were designed and the data in the CSVs were successfully imported into a SQL database.

## Results

- The Number of Retiring Employees by Title

![Retirement Titles](https://github.com/Hanzian/Pewlett-Hackard-Analysis/blob/main/PH%20Pictures/retirement_titles.png)

- Retirement employees by current title

![Unique titles](https://github.com/Hanzian/Pewlett-Hackard-Analysis/blob/main/PH%20Pictures/unique_titles.png)

- The count of retirement by title

![Retiring Title](https://github.com/Hanzian/Pewlett-Hackard-Analysis/blob/main/PH%20Pictures/retiring_titles.png)

- The list of Mentorship Eligibility

![Mentorship Program](https://github.com/Hanzian/Pewlett-Hackard-Analysis/blob/main/PH%20Pictures/mentorship_eligibilty.png)

## Summary

Based on our analysis, we noticed that 72.458 roles will impacted by the "Silver Tsunami"

```
-- COUNT OF RETIREMENT 
SELECT count(first_name) 
-- INTO retiring_titles
FROM unique_titles;

```
It will be a real challenge that the HR team will face. We know that such a drastic change can unbalance the smooth running of society. This is why the Mentorship program is welcome.
Our next question is to know if we have enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
Let's take a look...

- Mentorship Title

![mentorship_titles](https://github.com/Hanzian/Pewlett-Hackard-Analysis/blob/main/PH%20Pictures/mentorship_titles.png)

- Retiring Title

![Retiring Title](https://github.com/Hanzian/Pewlett-Hackard-Analysis/blob/main/PH%20Pictures/retiring_titles.png)

We can clearly see that the number of vacancies is significantly higher than the number of employees eligible for the mentor program.





