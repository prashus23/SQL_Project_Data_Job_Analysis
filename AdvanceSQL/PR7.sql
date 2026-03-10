/* Find the count of the number of remote jobs 
 -Display the top 5 skills by their demand in remote jobs
 -Include skill ID, name and the count of remote jobs that require that skill
 */
 
SELECT job_postings.job_id,
    skill_id,
    job_postings
FROM skills_job_dim AS skills_to_job
    INNER JOIN job_postings_fact As job_postings ON job_postings.job_id = skills_to_job.job_id