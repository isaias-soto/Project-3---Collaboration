from jobspy import scrape_jobs
import csv

'''
Script to adjust parameters for finding different sets of job board data.
'''
# jobs = scrape_jobs(
#     site_name=["indeed", "zip_recruiter", "glassdoor"],
#     search_term="data analyst",
#     google_search_term="data analyst jobs in USA",
#     location="USA",
#     results_wanted=50,
#     hours_old=500,
#     country_indeed='USA',
# )

jobs = scrape_jobs(
    site_name=["indeed", "linkedin", "zip_recruiter", "glassdoor", "google"],
    search_term="data scientist",
    google_search_term="data scientist jobs in USA",
    location="USA",
    results_wanted=40,
    hours_old=72,
    country_indeed='USA',
)

jobs.to_csv("jobs_cleaner.csv", quoting=csv.QUOTE_NONNUMERIC, escapechar="\\", index=False)

