INSERT INTO job_applied 
                (job_id,
                 application_sent_date,
                 custome_resume,
                 resume_file_name,
                 cover_letter_sent,
                 cover_letter_file_name,
                 status,
                 contact
                 )
VALUES  (4,'2025-02-13', FALSE,'resume4.pdf', TRUE,'cover_letter4.pdf','Accepted', 'Saphina'),
        (5,'2025-01-21', TRUE,'resume5.pdf', FALSE,'cover_letter5.pdf','Submited', 'Fred'),
        (6,'2024-03-05', FALSE,'resume6.pdf', TRUE,'cover_letter6.pdf','Rejected', 'Ndosa')


SELECT * FROM job_applied;