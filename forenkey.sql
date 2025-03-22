CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR (25) not NULL
);
CREATE Table post (
    id SERIAL PRIMARY KEY,
    title text Not NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE set DEFAULT DEFAULT 2
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
DROP TABLE post;
DROP TABLE "user";
SELECT *FROM post;
DELETE FROM "user"
WHERE id=4;