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

-- seed users
INSERT INTO User (name, email, phone, address, other_info, password)
VALUES ('John Smith', 'john.smith@example.com', '555-1234', '123 Main St', 'Some other info', 'password123'),
       ('Jane Doe', 'jane.doe@example.com', '555-5678', '456 Elm St', 'Some more info', 'secret456'),
       ('Bob Johnson', 'bob.johnson@example.com', '555-2468', '789 Oak St', 'Even more info', 'password789');

CREATE TABLE denomination (
  denomination_id INTEGER PRIMARY KEY,
  denomination_name TEXT,
  description TEXT,
  religion_id INTEGER,
  other_info TEXT,
  FOREIGN KEY (religion_id) REFERENCES religion(id)
);

-- denomination seeds
INSERT INTO denomination (denomination_id, denomination_name, description, religion_id, other_info)
VALUES
  (1, 'Roman Catholic', 'The largest Christian denomination, led by the Pope in Vatican City.', 9, 'Founded in the 1st century AD.'),
  (2, 'Eastern Orthodox', 'A Christian denomination primarily based in Eastern Europe and the Middle East.', 9, 'Split from Roman Catholicism in the Great Schism of 1054.'),
  (3, 'Protestantism', 'A diverse group of Christian denominations that originated in the Reformation era.', 9, 'Includes Lutheranism, Calvinism, Anglicanism, and many others.'),
  (4, 'Islamism', 'A movement within Islam that seeks to return to traditional Islamic values and institutions.', 10, 'Includes both peaceful and militant factions.'),
  (5, 'Sufism', 'A mystical branch of Islam that emphasizes the inner spiritual experience.', 10, 'Practiced by both Sunni and Shia Muslims.'),
  (6, 'Mahayana Buddhism', 'A branch of Buddhism that emphasizes compassion and wisdom.', 7, 'Predominant in China, Japan, Korea, and Vietnam.'),
  (7, 'Theravada Buddhism', 'A branch of Buddhism that emphasizes the historical teachings of the Buddha.', 7, 'Predominant in Sri Lanka, Myanmar, Thailand, Cambodia, and Laos.'),
  (8, 'Judaism (Orthodox)', 'A traditional Jewish denomination that emphasizes adherence to Jewish law.', 5, 'Believes that the Torah was given to Moses at Mount Sinai.'),
  (9, 'Judaism (Reform)', 'A modern Jewish denomination that emphasizes individual autonomy and social justice.', 5, 'Emphasizes ethical values over ritual observance.'),
  (10, 'Hinduism (Vaishnavism)', 'A major branch of Hinduism that emphasizes devotion to the god Vishnu.', 4, 'Includes the worship of other gods and goddesses as well.'),
  (11, 'Hinduism (Shaivism)', 'A major branch of Hinduism that emphasizes the god Shiva as the supreme being.', 4, 'Includes the worship of other gods and goddesses as well.');

CREATE TABLE user_preferences (
  user_id INTEGER,
  religion_id INTEGER,
  beliefs TEXT,
  user_values TEXT,
  other_info TEXT,
  FOREIGN KEY (user_id) REFERENCES User(id),
  FOREIGN KEY (religion_id) REFERENCES religion(id)
);

-- seed user_preferences
INSERT INTO user_preferences (user_id, religion_id, beliefs, user_values, other_info)
VALUES 
  (1, 5, 'I believe in the Jewish faith and follow its traditions', 'Honesty, kindness, and hard work are important to me', 'I attend synagogue every week'),
  (2, 9, 'I am a Christian and believe in the teachings of Jesus', 'Love, compassion, and forgiveness are my guiding values', 'I attend church every Sunday'),
  (3, 7, 'I am a Buddhist and strive for inner peace and mindfulness', 'Compassion, wisdom, and equanimity are important to me', 'I meditate regularly');