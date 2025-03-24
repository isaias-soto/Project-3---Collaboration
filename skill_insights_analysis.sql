-- Project: Skill Insights - Group 3
-- Author: Sheriann McLarty (Project Lead)
-- Description: Full schema and sample data for data science skill analysis
-- Last Updated: 2025-03-22

-- Drop database if exists (for reset)
DROP DATABASE IF EXISTS skill_insights_db;
CREATE DATABASE skill_insights_db;
USE skill_insights_db;

-- Table: Skills
CREATE TABLE Skills (
    SkillID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Category VARCHAR(100),
    PopularityScore FLOAT
);

-- Table: Courses
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255),
    Provider VARCHAR(100),
    SkillID INT,
    EnrollmentCount INT,
    FOREIGN KEY (SkillID) REFERENCES Skills(SkillID)
);

-- Insert sample Skills
INSERT INTO Skills (Name, Category, PopularityScore) VALUES
('Python', 'Programming Language', 9.8),
('SQL', 'Database Language', 9.5),
('R', 'Programming Language', 8.7),
('Excel', 'Tool', 7.0),
('Machine Learning', 'Concept', 9.2),
('Data Visualization', 'Tool', 8.5),
('Tableau', 'Visualization Tool', 8.0),
('Power BI', 'Visualization Tool', 7.8),
('AWS', 'Cloud Platform', 8.3),
('Spark', 'Big Data Tool', 7.5),
('TensorFlow', 'Machine Learning Framework', 8.9),
('Communication', 'Soft Skill', 9.0);

-- Insert sample Courses
INSERT INTO Courses (Name, Provider, SkillID, EnrollmentCount) VALUES
('Python for Data Science', 'Coursera', 1, 42350),
('Data Visualization with Tableau', 'Udemy', 7, 19000),
('Power BI for Beginners', 'edX', 8, 15000),
('AWS Fundamentals', 'Coursera', 9, 27000),
('Big Data with Apache Spark', 'DataCamp', 10, 22000),
('TensorFlow for Deep Learning', 'Coursera', 11, 33000),
('Effective Communication for Data Scientists', 'LinkedIn Learning', 12, 12000);

-- Preview Query to Join Courses and Skills
SELECT
    c.CourseID,
    c.Name AS CourseName,
    c.Provider,
    s.Name AS SkillName,
    s.PopularityScore,
    c.EnrollmentCount
FROM Courses c
JOIN Skills s ON c.SkillID = s.SkillID;

-- End of Script
/*
Skill Insights Database Analysis

By monitoring the popularity and enrollment trends of the courses, the Skill Insights database is intended to examine the relationship between skills and courses. There are two important tables in the dataset:

Table of Skills:
- Includes 12 skills in various areas, including Cloud Platforms, Database Languages, Visualization Tools, Programming Languages, and Soft Skills.
- Each skill has a Popularity Score that measures its demand in the market.

Table of Courses:
- Keeps track of providers, enrollment numbers, and courses matched to particular skills to gauge student interest.
- Major platforms include Coursera, Udemy, edX, DataCamp, and LinkedIn Learning.

Important Takeaways from Data Analysis:

1. Most Needed Proficiencies:
   - Python (9.8), SQL (9.5), and Machine Learning (9.2) are the top skills.
   - Python and SQL remain dominant in data science and analytics workflows.

2. Popularity of Skills vs. Course Enrollment:
   - "Python for Data Science" has the highest enrollment (42,350), reinforcing Python’s demand.
   - TensorFlow has strong enrollment (33,000), highlighting deep learning’s growth.
   - "AWS Fundamentals" (27,000 enrollments) indicates rising cloud platform importance.

3. The Need for Visualization Tools:
   - Tableau (8.0) and Power BI (7.8) have lower enrollments (19,000 and 15,000).
   - Visualization tools are important but may not attract as many learners as programming courses.

4. Data Science Soft Skills:
   - Communication (9.0 popularity) is valued but has fewer enrollments (12,000).
   - Learners prioritize technical over soft skills.

Conclusion and Recommendations:

1. Programming Skills Drive Demand:
   - More advanced Python and SQL courses should be offered to meet industry needs.

2. Cloud and Big Data Skills Are Growing:
   - Hands-on training in AWS and Apache Spark should be expanded.

3. Soft Skills Should Be Integrated:
   - Instead of separate soft skills courses, they should be included in technical training.

4. Visualization Tools Require Engagement Strategies:
   - Real-world case studies and business intelligence projects can improve enrollment in Tableau and Power BI courses.

These insights help educators and course providers design effective curriculums aligned with industry demand.
*/

