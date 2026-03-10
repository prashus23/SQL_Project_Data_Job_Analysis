/*
 Find the companies that have the most job openingss.
 -Get the total number of job postings per company id
 -Return the total number of jobs with the company name
 */
WITH company_job_counts AS (
    SELECT company_id,
        COUNT(*) AS total_jobs
    FROM job_postings_fact
    GROUP BY company_id
)

SELECT company_dim.name AS company_name,
       company_job_counts.total_jobs
FROM company_dim
LEFT JOIN company_job_counts 
ON company_job_counts.company_id = company_dim.company_id
ORDER BY total_jobs DESC;