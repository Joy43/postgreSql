CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR (25) not NULL
);
CREATE Table post (
    id SERIAL PRIMARY KEY,
    title text Not NULL,
    user_id INTEGER REFERENCES "user"
);

INSERT INTO "user"(username) VALUES
('akash'),
('joy'),
('sagor'),
('nodi')

INSERT INTO post (title,user_id) VALUES
('Engjoing the campus yar',1),
('new world cup today',2),
('Nodi wisdom alwaya leaves me inspired',3),
('mask wisdom alwaya leaves me inspired',4);

-- join-----------
SELECT title,username FROM post
JOIN "user" on post.user_id="user".id;
-- join-----------
SELECT *FROM post
JOIN "user" on post.user_id="user".id;
SELECT "user".id FROM post
JOIN "user" on post.user_id="user".id;
SELECT p.id FROM post p
JOIN "user" u on p.user_id=u.id;

-- -----------left join-----
SELECT *FROM post as P
LEFT JOIN "user" u on p.user_id=u.id;
-- ---------right join----------
SELECT *FROM post as P
RIGHT JOIN "user" u on p.user_id=u.id;
SELECT *FROM "user" as u
RIGHT JOIN post p on p.user_id=p.id;
SELECT *from post as P
full OUTER join "user" u on p.user_id=u.id;
SELECT *FROM post;