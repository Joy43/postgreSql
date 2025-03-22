show timezone;
---- show timezone;
SELECT now();

CREATE TABLE timeZ(TS TIMESTAMP WITHOUT TIME ZONE, tsz TIMESTAMP WITH TIME ZONE);

SELECT *FROM timez;
SELECT CURRENT_DATE;
SELECT now ()::time;
SELECT to_char(now(),'yyy/mm/dd');
SELECT to_char (now(),'DDD');
SELECT CURRENT_DATE - INTERVAL '1 year 2 month';
SELECT age(CURRENT_DATE,'1996-07-28');
SELECT *, age(CURRENT_DATE,dob)FROM students;
SELECT extract(month from '1996-01-20'::date);
