
CREATE TYPE low_fat_enum AS ENUM ('Y', 'N');
CREATE TYPE recyclable_enum AS ENUM ('Y', 'N');


CREATE TABLE product(
    product_id SERIAL PRIMARY KEY,
    low_fats low_fat_enum,
    recyclable recyclable_enum
);


INSERT INTO product (low_fats, recyclable) VALUES
('Y', 'N'),
('Y', 'Y'),
('N', 'Y'),
('Y', 'Y'),
('N', 'N');
SELECT product_id
FROM product
WHERE low_fats = 'Y' AND recyclable = 'Y';
SELECT *from Product;
DROP TABLE product;
