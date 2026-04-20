/*
What skills are required for these top paying jobs?
*/


WITH top_paying_jobs AS (
    SELECT 
        job_id,
        job_title,
        job_location,
        job_schedule_type,
        salary_year_avg,
        job_posted_date,
        name AS company_name

    FROM job_postings_fact 
    LEFT JOIN company_dim on job_postings_fact.company_id = company_dim.company_id
    WHERE job_title_short = 'Software Engineer' AND job_location = 'Anywhere' AND salary_year_avg IS NOT NULL
    ORDER BY salary_year_avg DESC
    LIMIT 10
)


SELECT 
    top_paying_jobs.*,
    skills_dim.skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON  top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY top_paying_jobs.salary_year_avg DESC


/*
[
  {
    "job_id": 562251,
    "job_title": "Senior Software Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "225000.0",
    "job_posted_date": "2023-11-07 17:33:33",
    "company_name": "Datavant",
    "skills": "python"
  },
  {
    "job_id": 562251,
    "job_title": "Senior Software Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "225000.0",
    "job_posted_date": "2023-11-07 17:33:33",
    "company_name": "Datavant",
    "skills": "javascript"
  },
  {
    "job_id": 562251,
    "job_title": "Senior Software Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "225000.0",
    "job_posted_date": "2023-11-07 17:33:33",
    "company_name": "Datavant",
    "skills": "typescript"
  },
  {
    "job_id": 562251,
    "job_title": "Senior Software Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "225000.0",
    "job_posted_date": "2023-11-07 17:33:33",
    "company_name": "Datavant",
    "skills": "azure"
  },
  {
    "job_id": 562251,
    "job_title": "Senior Software Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "225000.0",
    "job_posted_date": "2023-11-07 17:33:33",
    "company_name": "Datavant",
    "skills": "aws"
  },
  {
    "job_id": 562251,
    "job_title": "Senior Software Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "225000.0",
    "job_posted_date": "2023-11-07 17:33:33",
    "company_name": "Datavant",
    "skills": "snowflake"
  },
  {
    "job_id": 562251,
    "job_title": "Senior Software Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "225000.0",
    "job_posted_date": "2023-11-07 17:33:33",
    "company_name": "Datavant",
    "skills": "spark"
  },
  {
    "job_id": 562251,
    "job_title": "Senior Software Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "225000.0",
    "job_posted_date": "2023-11-07 17:33:33",
    "company_name": "Datavant",
    "skills": "react"
  },
  {
    "job_id": 365528,
    "job_title": "Engineering",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "205000.0",
    "job_posted_date": "2023-10-05 07:03:21",
    "company_name": "Huckleberry Labs",
    "skills": "python"
  },
  {
    "job_id": 365528,
    "job_title": "Engineering",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "205000.0",
    "job_posted_date": "2023-10-05 07:03:21",
    "company_name": "Huckleberry Labs",
    "skills": "aws"
  },
  {
    "job_id": 365528,
    "job_title": "Engineering",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "205000.0",
    "job_posted_date": "2023-10-05 07:03:21",
    "company_name": "Huckleberry Labs",
    "skills": "gcp"
  },
  {
    "job_id": 1356375,
    "job_title": "Senior Software Engineer, Full Stack",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "205000.0",
    "job_posted_date": "2023-11-21 23:42:52",
    "company_name": "SmarterDx",
    "skills": "python"
  },
  {
    "job_id": 1356375,
    "job_title": "Senior Software Engineer, Full Stack",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "205000.0",
    "job_posted_date": "2023-11-21 23:42:52",
    "company_name": "SmarterDx",
    "skills": "elasticsearch"
  },
  {
    "job_id": 1356375,
    "job_title": "Senior Software Engineer, Full Stack",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "205000.0",
    "job_posted_date": "2023-11-21 23:42:52",
    "company_name": "SmarterDx",
    "skills": "dynamodb"
  },
  {
    "job_id": 1356375,
    "job_title": "Senior Software Engineer, Full Stack",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "205000.0",
    "job_posted_date": "2023-11-21 23:42:52",
    "company_name": "SmarterDx",
    "skills": "aws"
  },
  {
    "job_id": 1356375,
    "job_title": "Senior Software Engineer, Full Stack",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "205000.0",
    "job_posted_date": "2023-11-21 23:42:52",
    "company_name": "SmarterDx",
    "skills": "snowflake"
  },
  {
    "job_id": 1356375,
    "job_title": "Senior Software Engineer, Full Stack",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "205000.0",
    "job_posted_date": "2023-11-21 23:42:52",
    "company_name": "SmarterDx",
    "skills": "pandas"
  },
  {
    "job_id": 1356375,
    "job_title": "Senior Software Engineer, Full Stack",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "205000.0",
    "job_posted_date": "2023-11-21 23:42:52",
    "company_name": "SmarterDx",
    "skills": "airflow"
  },
  {
    "job_id": 1356375,
    "job_title": "Senior Software Engineer, Full Stack",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "205000.0",
    "job_posted_date": "2023-11-21 23:42:52",
    "company_name": "SmarterDx",
    "skills": "react"
  },
  {
    "job_id": 1356375,
    "job_title": "Senior Software Engineer, Full Stack",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "205000.0",
    "job_posted_date": "2023-11-21 23:42:52",
    "company_name": "SmarterDx",
    "skills": "graphql"
  },
  {
    "job_id": 1356375,
    "job_title": "Senior Software Engineer, Full Stack",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "205000.0",
    "job_posted_date": "2023-11-21 23:42:52",
    "company_name": "SmarterDx",
    "skills": "node.js"
  },
  {
    "job_id": 64759,
    "job_title": "Senior Ruby Engineer - Analytics Platform - $190-210k+",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "200000.0",
    "job_posted_date": "2023-10-22 09:06:38",
    "company_name": "Orbis",
    "skills": "typescript"
  },
  {
    "job_id": 64759,
    "job_title": "Senior Ruby Engineer - Analytics Platform - $190-210k+",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "200000.0",
    "job_posted_date": "2023-10-22 09:06:38",
    "company_name": "Orbis",
    "skills": "ruby"
  },
  {
    "job_id": 64759,
    "job_title": "Senior Ruby Engineer - Analytics Platform - $190-210k+",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "200000.0",
    "job_posted_date": "2023-10-22 09:06:38",
    "company_name": "Orbis",
    "skills": "ruby"
  },
  {
    "job_id": 1398776,
    "job_title": "Senior Software Engineer, Cluster Scalability",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "200000.0",
    "job_posted_date": "2023-11-29 15:11:06",
    "company_name": "MongoDB",
    "skills": "mongodb"
  },
  {
    "job_id": 1398776,
    "job_title": "Senior Software Engineer, Cluster Scalability",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "200000.0",
    "job_posted_date": "2023-11-29 15:11:06",
    "company_name": "MongoDB",
    "skills": "mongodb"
  },
  {
    "job_id": 1231528,
    "job_title": "Senior Software Engineer, Server Security",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "200000.0",
    "job_posted_date": "2023-09-29 19:25:30",
    "company_name": "MongoDB",
    "skills": "mongodb"
  },
  {
    "job_id": 1231528,
    "job_title": "Senior Software Engineer, Server Security",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "200000.0",
    "job_posted_date": "2023-09-29 19:25:30",
    "company_name": "MongoDB",
    "skills": "mongodb"
  },
  {
    "job_id": 946351,
    "job_title": "Staff Frontend Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "191000.0",
    "job_posted_date": "2023-02-18 13:19:29",
    "company_name": "Webflow",
    "skills": "javascript"
  },
  {
    "job_id": 946351,
    "job_title": "Staff Frontend Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "191000.0",
    "job_posted_date": "2023-02-18 13:19:29",
    "company_name": "Webflow",
    "skills": "css"
  },
  {
    "job_id": 946351,
    "job_title": "Staff Frontend Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "191000.0",
    "job_posted_date": "2023-02-18 13:19:29",
    "company_name": "Webflow",
    "skills": "react"
  },
  {
    "job_id": 946351,
    "job_title": "Staff Frontend Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "191000.0",
    "job_posted_date": "2023-02-18 13:19:29",
    "company_name": "Webflow",
    "skills": "graphql"
  },
  {
    "job_id": 946351,
    "job_title": "Staff Frontend Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "191000.0",
    "job_posted_date": "2023-02-18 13:19:29",
    "company_name": "Webflow",
    "skills": "node.js"
  },
  {
    "job_id": 946351,
    "job_title": "Staff Frontend Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "191000.0",
    "job_posted_date": "2023-02-18 13:19:29",
    "company_name": "Webflow",
    "skills": "react.js"
  },
  {
    "job_id": 1054268,
    "job_title": "Staff Software Engineer, AI",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "185000.0",
    "job_posted_date": "2023-12-07 20:31:33",
    "company_name": "Pulley",
    "skills": "python"
  },
  {
    "job_id": 1054268,
    "job_title": "Staff Software Engineer, AI",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "185000.0",
    "job_posted_date": "2023-12-07 20:31:33",
    "company_name": "Pulley",
    "skills": "javascript"
  },
  {
    "job_id": 1054268,
    "job_title": "Staff Software Engineer, AI",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "185000.0",
    "job_posted_date": "2023-12-07 20:31:33",
    "company_name": "Pulley",
    "skills": "typescript"
  },
  {
    "job_id": 1054268,
    "job_title": "Staff Software Engineer, AI",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "185000.0",
    "job_posted_date": "2023-12-07 20:31:33",
    "company_name": "Pulley",
    "skills": "golang"
  },
  {
    "job_id": 182858,
    "job_title": "Senior Software Engineer (Confirmations - System)",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "184500.0",
    "job_posted_date": "2023-09-29 12:40:08",
    "company_name": "ConsenSys",
    "skills": "javascript"
  },
  {
    "job_id": 182858,
    "job_title": "Senior Software Engineer (Confirmations - System)",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "184500.0",
    "job_posted_date": "2023-09-29 12:40:08",
    "company_name": "ConsenSys",
    "skills": "typescript"
  },
  {
    "job_id": 182858,
    "job_title": "Senior Software Engineer (Confirmations - System)",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "184500.0",
    "job_posted_date": "2023-09-29 12:40:08",
    "company_name": "ConsenSys",
    "skills": "react"
  },
  {
    "job_id": 117409,
    "job_title": "Director of Software Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "182500.0",
    "job_posted_date": "2023-02-06 18:40:14",
    "company_name": "Robert Half",
    "skills": "python"
  },
  {
    "job_id": 117409,
    "job_title": "Director of Software Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "182500.0",
    "job_posted_date": "2023-02-06 18:40:14",
    "company_name": "Robert Half",
    "skills": "javascript"
  },
  {
    "job_id": 117409,
    "job_title": "Director of Software Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "182500.0",
    "job_posted_date": "2023-02-06 18:40:14",
    "company_name": "Robert Half",
    "skills": "html"
  },
  {
    "job_id": 117409,
    "job_title": "Director of Software Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "182500.0",
    "job_posted_date": "2023-02-06 18:40:14",
    "company_name": "Robert Half",
    "skills": "css"
  },
  {
    "job_id": 117409,
    "job_title": "Director of Software Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "182500.0",
    "job_posted_date": "2023-02-06 18:40:14",
    "company_name": "Robert Half",
    "skills": "c#"
  },
  {
    "job_id": 117409,
    "job_title": "Director of Software Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "182500.0",
    "job_posted_date": "2023-02-06 18:40:14",
    "company_name": "Robert Half",
    "skills": "mongodb"
  },
  {
    "job_id": 117409,
    "job_title": "Director of Software Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "182500.0",
    "job_posted_date": "2023-02-06 18:40:14",
    "company_name": "Robert Half",
    "skills": "redis"
  },
  {
    "job_id": 117409,
    "job_title": "Director of Software Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "182500.0",
    "job_posted_date": "2023-02-06 18:40:14",
    "company_name": "Robert Half",
    "skills": "mysql"
  },
  {
    "job_id": 117409,
    "job_title": "Director of Software Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "182500.0",
    "job_posted_date": "2023-02-06 18:40:14",
    "company_name": "Robert Half",
    "skills": "elasticsearch"
  },
  {
    "job_id": 117409,
    "job_title": "Director of Software Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "182500.0",
    "job_posted_date": "2023-02-06 18:40:14",
    "company_name": "Robert Half",
    "skills": "mongodb"
  },
  {
    "job_id": 117409,
    "job_title": "Director of Software Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "182500.0",
    "job_posted_date": "2023-02-06 18:40:14",
    "company_name": "Robert Half",
    "skills": "dynamodb"
  },
  {
    "job_id": 117409,
    "job_title": "Director of Software Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "182500.0",
    "job_posted_date": "2023-02-06 18:40:14",
    "company_name": "Robert Half",
    "skills": "couchbase"
  },
  {
    "job_id": 117409,
    "job_title": "Director of Software Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "182500.0",
    "job_posted_date": "2023-02-06 18:40:14",
    "company_name": "Robert Half",
    "skills": "azure"
  },
  {
    "job_id": 117409,
    "job_title": "Director of Software Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "182500.0",
    "job_posted_date": "2023-02-06 18:40:14",
    "company_name": "Robert Half",
    "skills": "aws"
  },
  {
    "job_id": 117409,
    "job_title": "Director of Software Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "182500.0",
    "job_posted_date": "2023-02-06 18:40:14",
    "company_name": "Robert Half",
    "skills": "asp.net"
  }
]
*/