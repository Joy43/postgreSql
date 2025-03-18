-- Active: 1742240762482@@127.0.0.1@5432@ph
SELECT * from person2;
-- ALTER TABLE person2
-- RENAME COLUMN age to user_age;
ALTER TABLE person2
DROP COLUMN email;
-- -------add colum & value set------------
ALTER TABLE person2

ADD COLUMN email VARCHAR(25) DEFAULT 'ssjoy4@gmail.com' NOT NULL;
-- colum type change--------
ALTER TABLE person2
ADD COLUMN user_age set NOT NULL;
-- inset row value ------
INSERT into person2 values (8,'test',56,'joy@gmail.com');
-- ---------constant add
ALTER TABLE person2
ADD constraint pk_person2_user_age UNIQUE(user_age)

TRUNCATE TABLE person2;