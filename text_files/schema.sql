use religion_db;
-- drop table religion;
CREATE TABLE religion (
    id INT PRIMARY KEY auto_increment,
    name VARCHAR(25) NOT NULL,
    description TEXT,
    origin VARCHAR(25)
);

--seed to test religion
INSERT INTO religion (name, description, origin, beliefs, practices)
VALUES 
('Animism', 'A belief that all things, including objects in nature, have spirits or souls.'),
('Shamanism', 'A set of spiritual practices that involve communicating with spirits and other non-physical entities.'),
('Ancient Egyptian religion', 'A complex set of beliefs and practices that developed in ancient Egypt around 4,000 years ago, and which involved the worship of a pantheon of gods and goddesses.', 'Egypt'),
('Hinduism', 'A complex and diverse set of religious beliefs and practices that originated in the Indus Valley civilization of ancient India around 4,000 years ago.', 'India'),
('Judaism', 'The monotheistic religion of the Jewish people, dating back to the ancient Israelites in the Middle East around 3,500 years ago.', 'Israel'),
('Zoroastrianism', 'An ancient Persian religion that originated in Iran around 3,000 years ago, and which influenced many other religions in the region, including Judaism, Christianity, and Islam.', 'Iran'),
('Buddhism', 'A spiritual tradition that originated in ancient India around 2,500 years ago, and which emphasizes the teachings of the Buddha and the pursuit of enlightenment.', 'India'),
('Taoism', 'A Chinese philosophy and religion that originated in ancient China around 2,500 years ago, and which emphasizes the pursuit of harmony with nature and the cultivation of inner wisdom.', 'China'),
('Christianity', 'A monotheistic religion based on the life and teachings of Jesus of Nazareth, which emerged in the Roman Empire around 2,000 years ago.', 'Israel'),
('Islam', 'A monotheistic religion founded by the prophet Muhammad in the Arabian Peninsula around 1,400 years ago.', 'Saudi Arabia');


CREATE TABLE User (
    id INT PRIMARY KEY auto_increment,
    name VARCHAR(25) NOT NULL,
    email VARCHAR(25) NOT NULL,
    phone VARCHAR(25),
    address VARCHAR(25),
    other_info VARCHAR(255),
    password VARCHAR(50) NOT NULL
);

CREATE TABLE denomination (
  denomination_id INTEGER PRIMARY KEY,
  denomination_name TEXT,
  description TEXT,
  religion_id INTEGER,
  other_info TEXT,
  FOREIGN KEY (religion_id) REFERENCES religion(id)
);

CREATE TABLE user_preferences (
  user_id INTEGER,
  religion_id INTEGER,
  beliefs TEXT,
  user_values TEXT,
  other_info TEXT,
  FOREIGN KEY (user_id) REFERENCES User(id),
  FOREIGN KEY (religion_id) REFERENCES religion(id)
);