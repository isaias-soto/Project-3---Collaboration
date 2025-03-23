##### Tidying data scraped from Coursera.org

# Load libraries
library(tidyverse)
library(RCurl)
library(stringr)

# Load data from github repository and read data
url <- getURL("https://raw.githubusercontent.com/isaias-soto/Project-3---Collaboration/refs/heads/main/data/coursera_course_dataset.csv")
courses <- read_csv(url)

### Tidy data
# Rename columns to fit sql db and delete unnecessary columns 
test_courses <- courses |>
  rename(CourseID = ...1, Name = Title, Provider = Organization,
         SkillID = Skills, EnrollmentCount = `Review counts`) |>
  select(-c(5,7))

# Separate df into 3 by EnrollmentCount to transform column to numeric
# Finally bind all rows to get og df with numeric EnrollmentCount column

test1 <- test_courses |>  # remove character string from "numeric" values K
  mutate(EnrollmentCount = gsub("K reviews","",EnrollmentCount,fixed = TRUE)) 

test2 <- test1 |>  # subset with "numeric" in hundreds
  filter(str_detect(EnrollmentCount,fixed(" reviews"))) |>
  mutate(EnrollmentCount = 
           as.numeric(gsub(" reviews","",EnrollmentCount,fixed = TRUE)))

test_na <- test1 |>  # subset with "numeric" NAs
  filter(is.na(EnrollmentCount)) |>
  mutate(EnrollmentCount = as.numeric(EnrollmentCount))
  
test1 <- test1 |> # subset with "numeric" in thousands
  filter(!str_detect(EnrollmentCount,fixed(" reviews"))) |>
  mutate(EnrollmentCount = as.numeric(EnrollmentCount)*1000)

test_courses <- bind_rows(test1,test2,test_na) |>  # combined rows w/ numeric
  arrange(CourseID)                                # EnrollmentCount

# Expand SkillsID for each 
cleaned_courses <- test_courses |>
  mutate(SkillID = strsplit(as.character(SkillID),", ")) |>
  unnest(SkillID)

# write csv with clean data
# write_csv(cleaned_courses,"clean_coursera_course_dataset.csv")


         