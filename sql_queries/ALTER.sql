ALTER TABLE job_applied
ADD contact VARCHAR(255);

ALTER TABLE job_applied
RENAME COLUMN contact TO contact_name

ALTER TABLE job_applied
ALTER COLUMN contact_name TYPE TEXT;

ALTER TABLE job_applied
DROP COLUMN contact_name


DROP TABLE job_applied;

SELECT * FROM job_applied;



UPDATE job_applied
SET contact = 'Henry'
WHERE job_id = 1;


UPDATE job_applied
SET contact = 'Maliseli'
WHERE job_id = 2;

UPDATE job_applied
SET contact = 'Amara'
WHERE job_id = 3;
