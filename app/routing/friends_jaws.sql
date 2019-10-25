-- Drops the friends_db if it exists currently --
DROP DATABASE IF EXISTS `xsp8cc702lvsgwvf`;
-- Creates the "friends_db" database --
CREATE DATABASE `xsp8cc702lvsgwvf`;

USE `xsp8cc702lvsgwvf`;

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