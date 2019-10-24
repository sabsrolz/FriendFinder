-- Drops the friends_db if it exists currently --
DROP DATABASE IF EXISTS friends_db;
-- Creates the "friends_db" database --
CREATE DATABASE friends_db;

USE friends_db;

CREATE TABLE friends (
friend_id INTEGER NOT NULL AUTO_INCREMENT, 
friend_name VARCHAR(100) NOT NULL, 
image_url VARCHAR(100) NOT NULL,
score1 INTEGER(10) NOT NULL, 
score2 INTEGER(10) NOT NULL,
score3 INTEGER(10) NOT NULL,
PRIMARY KEY (friend_id)
);

SELECT * FROM friends;

INSERT INTO friends (friend_name, image_url, score1, score2, score3) VALUES ("Aysu", "img", 2, 1, 2);
INSERT INTO friends (friend_name, image_url, score1, score2, score3) VALUES ("Helen", "img", 1, 1, 1);
INSERT INTO friends (friend_name, image_url, score1, score2, score3) VALUES ("Ahmed", "img", 3, 3, 3);

DELETE FROM friends WHERE friend_name = "Aysu";
DELETE FROM friends WHERE friend_name = "Sabrina";