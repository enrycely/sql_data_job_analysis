SELECT
    job_title_short,
    company_id,
    job_location
FROM
    january_table

UNION 

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    february_table

UNION ALL

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    march_table

SELECT *
FROM skills_dim


/*  PRACTICE 1
    get the corresponding skill and the skill type for each job posting in q1
    Include those without any skills too,
    Why? Look at the skills and the type for each job in the first quarter that has a salary > $70,000
*/
/* 
    PRACTICE 2
    find the job postings from the first quarter that have salary greater than $70K
    - Combine job posting tables from the first quater of 2023 (jan-mar)
    - Gets job postings with an average yearly salary > $70,000
*/
SELECT *
FROM (
        SELECT *
        FROM january_table
        UNION ALL
        SELECT *
        FROM february_table
        UNION ALL
        SELECT *
        FROM march_table
) AS quarter1_job_postings
WHERE 
    quarter1_job_postings.salary_year_avg > 70000 AND
    quarter1_job_postings.job_title_short = 'Data Analyst'
ORDER BY
    quarter1_job_postings.salary_year_avg DESC