-- Active: 1742240762482@@127.0.0.1@5432@ph
SELECT * from person2;

ALTER TABLE person2
DROP COLUMN email;
ALTER TABLE person2
ADD COLUMN email VARCHAR(25) DEFAULT 'ssjoy4@gmail.com' NOT NULL;
-- colum type change--------
ALTER TABLE person2
ADD COLUMN user_age set NOT NULL;
INSERT into person2 values (8,'test',56,'joy@gmail.com');

