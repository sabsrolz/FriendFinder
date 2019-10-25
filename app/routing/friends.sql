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

INSERT INTO friends (friend_name, image_url, score1, score2, score3, score4, score5, score6, score7, score8, score9, score10) VALUES ("Aysu", "img", 2, 1, 2, 1, 3, 1, 2, 3, 1, 1);
INSERT INTO friends (friend_name, image_url, score1, score2, score3, score4, score5, score6, score7, score8, score9, score10) VALUES ("Helen", "img", 1, 1, 1, 3, 3, 2, 1, 3, 1, 1);
INSERT INTO friends (friend_name, image_url, score1, score2, score3, score4, score5, score6, score7, score8, score9, score10) VALUES ("Ahmed", "img", 3, 3, 3, 2, 2, 3, 1, 2, 1, 1);

DELETE FROM friends WHERE friend_name = "Aysu";
DELETE FROM friends WHERE friend_name = "Sabrina";

DELETE FROM friends;

ALTER TABLE friends
ADD COLUMN score4 INTEGER(10) NOT NULL,
ADD COLUMN score5 INTEGER(10) NOT NULL,
ADD COLUMN score6 INTEGER(10) NOT NULL,
ADD COLUMN score7 INTEGER(10) NOT NULL,
ADD COLUMN score8 INTEGER(10) NOT NULL,
ADD COLUMN score9 INTEGER(10) NOT NULL,
ADD COLUMN score10 INTEGER(10) NOT NULL;

ALTER TABLE friends
MODIFY image_url VARCHAR(500) NOT NULL;

DELETE FROM friends;

INSERT INTO friends (friend_name, image_url, score1, score2, score3, score4, score5, score6, score7, score8, score9, score10) VALUES ("Aysu", "https://www.clipartwiki.com/clipimg/detail/12-122806_transparent-stick-figure-clipart-stick-figure-transparent-background.png", 2, 1, 2, 1, 3, 1, 2, 3, 1, 1);
INSERT INTO friends (friend_name, image_url, score1, score2, score3, score4, score5, score6, score7, score8, score9, score10) VALUES ("Helen", "https://www.pngtube.com/myfile/detail/1-17145_girl-clipart-person-woman-stick-figure-clipart.png", 1, 1, 1, 3, 3, 2, 1, 3, 1, 1);
INSERT INTO friends (friend_name, image_url, score1, score2, score3, score4, score5, score6, score7, score8, score9, score10) VALUES ("Ahmed", "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTEqMr_79jr3iHnDa0u2yUCZzmTzT0ujcVbvzRPFEZicmOvCAJM", 3, 3, 3, 2, 2, 3, 1, 2, 1, 1);