SELECT 
    job_title_short,
    salary_year_avg AS salary,
    CASE
        WHEN salary_year_avg > 250000 THEN 'High Salaery'
        WHEN salary_year_avg < 95000 THEN 'Low Salaery'
        ELSE 'Standard Salaery'
    END AS salary_category
FROM job_postings_fact
WHERE salary_year_avg IS NOT NULL
LIMIT 100

SELECT 
    COUNT(job_id) AS number_of_jobs,
    CASE
        WHEN salary_year_avg > 250000 THEN 'High Salaery'
        WHEN salary_year_avg >= 95000 AND salary_year_avg <= 250000 THEN 'Standard Salaery'
        WHEN salary_year_avg < 95000 THEN 'Low Salaery'
    END AS salary_category
FROM job_postings_fact
WHERE salary_year_avg IS NOT NULL AND job_title_short = 'Data Analyst'
GROUP BY salary_category
LIMIT 100