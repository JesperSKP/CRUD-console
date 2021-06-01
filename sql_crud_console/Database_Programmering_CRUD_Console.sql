DROP DATABASE IF EXISTS Mercantec;

CREATE DATABASE Mercantec;
USE Mercantec;

CREATE TABLE people (
  userID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(64),
  age INT,
  sex VARCHAR(10),
  salary INT,
  personType VARCHAR(10)
);

CREATE TABLE classes (
  classID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  className VARCHAR(64)
);

CREATE TABLE rooms (
  roomID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  roomName VARCHAR(64)
);

CREATE TABLE lectures (
  lectureID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  lectureName VARCHAR(64)
);

CREATE TABLE school (
  userID INT NOT NULL,
  classID INT NOT NULL,
  roomID INT NOT NULL,
  lectureID INT NOT NULL,
  FOREIGN KEY (userID) REFERENCES people(userID),
  FOREIGN KEY (classID) REFERENCES classes(classID),
  FOREIGN KEY (roomID) REFERENCES rooms(roomID),
  FOREIGN KEY (lectureID) REFERENCES lectures(lectureID)
);

INSERT INTO people (name, age, sex, personType, salary) VALUES 
('Stevie Long', 21, 'M', 'student', 0),
('Bryon Cobb', 17, 'M', 'student', 0),
('Joanna Hale', 27, 'F', 'student', 0),
('Shana Collins', 26, 'M', 'student', 0),
('Violette Shan', 22, 'F', 'student', 0),
('Kent Bershadsky', 24, 'M', 'student', 0),
('Bershadsky Kent', 29, 'M', 'student', 0),
('Perla Harmeling', 37, 'F', 'teacher', 6000),
('Nevins Cassano', 57, 'M', 'teacher', 5900),
('Shelba Hopper', 42, 'F', 'teacher', 7200);

INSERT INTO rooms (roomName) VALUES 
('F28'),
('F29'),
('F30'),
('F31'), 
('N17'),
('N18'),
('N19'),
('N20'), 
('N21'),
('N22');

INSERT INTO classes (className) VALUES 
('1.g'),
('2.g'),
('3.g'),
('1.a'),
('2.a'),
('3.a'),
('1.h'),
('2.h'),
('3.h'),
('1.q');

INSERT INTO lectures (lectureName) VALUES 
('danish'),
('math'),
('english'),
('france'),
('german'),
('history'),
('Christian knowledge'),
('biology'),
('geography'),
('art');

INSERT INTO school (userID, classID, roomID, lectureID) VALUES
(1, 1, 1, 1),
(2, 1, 1, 1),
(3, 1, 1, 1),
(4, 1, 1, 1),
(5, 2, 2, 2),
(6, 2, 2, 2),
(7, 2, 2, 2),
(8, 2, 2, 2),
(9, 2, 2, 2),
(10, 1, 1, 1);