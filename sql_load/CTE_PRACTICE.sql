/*
    find the count of the number of remote job postings per skill
        - Display the top 5 skills by their demand in remote jobs
        - Include Skill ID, name and count of postings requiring the skill
*/

WITH remote_jobs AS (

SELECT 
    skill_id,
    COUNT(*) AS skill_count
FROM 
    skills_job_dim AS skills_to_job
INNER JOIN 
    job_postings_fact AS job_postings 
    ON job_postings.job_id = skills_to_job.job_id
WHERE
    job_postings.job_work_from_home = TRUE AND
    job_postings.job_title_short = 'Data Analyst'
GROUP BY
    skill_id
)

SELECT 
    skills.skill_id,
    skills as skill_name,
    skill_count
FROM remote_jobs
INNER JOIN skills_dim AS skills ON skills.skill_id = remote_jobs.skill_id
ORDER BY skill_count DESC
LIMIT 5