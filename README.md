# Project-3---Collaboration
A project for DATA607 where we use data to answer the question, "What are the most valuable data science skills?", and to demonstrate team collaboration. 


# DATA607 - Most Valuable Data Science Skills Analysis

## Overview

The goal of this research is to determine the most useful data science skills by looking at career trends, course enrollments, and industry demand. To address the main study question, "What are the most valuable data science skills?" the analysis draws on a range of data sources, such as surveys, job advertisements, and online learning environments.

This project is to assist educators, professionals, and job seekers in identifying the competencies that will propel success in the data science industry through the use of SQL queries, data analysis methods, and visualizations. Additionally, by having several contributors who each concentrate on a particular facet of the investigation, the project exhibits cooperation and teamwork.

## Data Sources

Job Postings Data: Information about the skills most commonly required in data science job listings from sites such as Glassdoor, Indeed, and ZipRecruiter. Mostly obtained using https://github.com/cullenwatson/JobSpy.

Course Data: Information on course enrollments and the skills taught in each course, gathered from platforms such as Coursera, edX, and DataCamp.

Survey Data: Information gathered from data science experts' questionnaires that shows the abilities they believe are most crucial to their jobs.

## Project Structure

The following essential elements are present in this repository:

Data: Unprocessed and unfiltered data from surveys, courses, and job advertisements.

Non-analysis code: Files for scraping and tidying data.

SQL scripts are SQL queries used for data aggregation and analysis, such as filtering, table joining, and key metric summarization.

Visualizations: Charts and graphs made with Python (Matplotlib, Seaborn, or comparable tools) that display information about course enrollments, skill popularity, and trends over time.

Analysis: Comprehensive analysis using statistical techniques and important conclusions in Jupyter notebooks or Python scripts.

Reports: A final report that compiles the analysis's results, conclusions, and practical suggestions.

## Key Findings

Among the most important abilities noted in the project are:

Python: The most sought-after programming language in the field of data science.

SQL is a prerequisite for working with databases and is frequently listed in job advertising.

Proficiency in machine learning frameworks like TensorFlow and Scikit-Learn is highly valued.

Cloud and Big Data Technologies: AWS, Spark, Hadoop, and other tools are becoming more popular in data engineering positions.

Communication: Despite being crucial, communication skills are not as often given priority when enrolling in courses as technical skills.

## Teamwork

This project demonstrates teamwork as each member focused on particular data sources, analysis activities, or graphical elements to contribute. To guarantee efficient collaboration and progress, regular meetings and GitHub project management tools were employed.

## 👩🏽‍💻 Team & Roles:

- **Sheriann McLarty** – *Project Lead & ETL Engineer*  
  Responsible for:
  - Cleaning and standardizing all datasets  
  - Designing and implementing the relational database (MySQL)  
  - Building and running the ETL pipeline using Python  
  - ER diagram creation and final documentation  
  - Coordinating project scope and execution

- **Lawrence Yu** – Provided a supplementary dataset scraped from Glassdoor, Google, ZipRecruiter, Indeed, and more, along with an R script to extract skill frequencies from job descriptions. Proposed a binning system to categorize skills (technical vs. soft) and assign a 10-point popularity score, which informed the `Skills` table’s `PopularityScore` metric.

- **Isaias Soto** – Hosted a shared GitHub repository for collaboration and contributed course data scraping using BeautifulSoup. Owns the GitHub project folder that stored interim datasets and team files during development.

- **Tanzil Ehsan & Woodelyne Durosier** – Retrieved saved and cleaned data to create visualizations and analysis, culiminating in the Pro3_visual_data.rmd file. 


## How to Use This Repository

1. Go to https://github.com/Isaia_soto/project-3---collaboration/most-valuable-data-science-skills.git and clone the repository.

2. Install dependencies: Install the required libraries, such as sqlalchemy, seaborn, matplotlib, numpy, and pandas.

3. Run the analysis: To replicate the analysis, run the Jupyter notebooks or SQL scripts.

4. Visualize the data: Examine the data analysis-generated graphics.

## Wrap-up

Teachers and course providers can improve their curricula to make sure they are imparting the most pertinent data science skills by utilizing the insights gained from this study. The results can also help job searchers concentrate on honing the talents that employers value most.

## Participating

Contributions are welcome in the form of pull requests, issues, or feedback. Collaboration and additional improvement are welcome on this project.
