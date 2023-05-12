use religion_db;
-- drop table religion;
CREATE TABLE religion (
    id INT PRIMARY KEY auto_increment	,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    origin VARCHAR(255),
    beliefs TEXT,
    practices TEXT
);

-- one seed to test
INSERT INTO religion_db.Religion (name, description, origin, beliefs, practices)
VALUES ('Christianity', 'A monotheistic religion based on the life and teachings of Jesus of Nazareth.', 'Middle East', 'Trinity, salvation, resurrection, sin, atonement', 'Baptism, Eucharist, prayer, worship, service');
