-- creating Assign3_users database
CREATE DATABASE Assign3_users;
SHOW DATABASES;
-- using Assign3_users database
USE Assign3_users;
SELECT DATABASE();
-- creating table
-- users(user_id, password);
CREATE TABLE users(
  userid VARCHAR(15),
  password VARCHAR(25),
  PRIMARY KEY (userid)
);
SHOW TABLES;
DROP TABLE users;
-- inserting data into users table
INSERT INTO users VALUES('10001', 'qwertyui');
INSERT INTO users VALUES('10002', 'asdfghjk');
INSERT INTO users VALUES('10003', 'zxcvbnmm');
INSERT INTO users VALUES('10004', '12345678');
INSERT INTO users VALUES('10005', 'asdf1234');