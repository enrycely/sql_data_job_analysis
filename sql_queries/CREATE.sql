CREATE TABLE job_applied (
    job_id INT,
    application_sent_date DATE,
    custome_resume BOOLEAN,
    resume_file_name VARCHAR(255),
    cover_letter_sent BOOLEAN,
    cover_letter_file_name VARCHAR(255),
    status  VARCHAR(255)
);

INSERT INTO job_applied 
                (job_id,
                 application_sent_date,
                 custome_resume,
                 resume_file_name,
                 cover_letter_sent,
                 cover_letter_file_name,
                 status
                 )
VALUES  (1,'2025-01-01', TRUE,'resume1.pdf', TRUE,'cover_letter1.pdf','Applied'),
        (2,'2025-01-03', TRUE,'resume2.pdf', FALSE,'cover_letter2.pdf','Submited'),
        (3,'2024-01-10', TRUE,'resume3.pdf', FALSE,'cover_letter3.pdf','On-progress')

SELECT * FROM job_applied;

