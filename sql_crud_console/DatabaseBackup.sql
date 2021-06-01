-- MySqlBackup.NET 2.3.4
-- Dump Time: 2021-06-01 09:32:27
-- --------------------------------------
-- Server version 10.4.19-MariaDB mariadb.org binary distribution


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 
-- Definition of classes
-- 

DROP TABLE IF EXISTS `classes`;
CREATE TABLE IF NOT EXISTS `classes` (
  `classID` int(11) NOT NULL AUTO_INCREMENT,
  `className` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`classID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- 
-- Dumping data for table classes
-- 

/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes`(`classID`,`className`) VALUES
(1,'1.g'),
(2,'2.g'),
(3,'3.g'),
(4,'1.a'),
(5,'2.a'),
(6,'3.a'),
(7,'1.h'),
(8,'2.h'),
(9,'3.h'),
(10,'1.q');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;

-- 
-- Definition of lectures
-- 

DROP TABLE IF EXISTS `lectures`;
CREATE TABLE IF NOT EXISTS `lectures` (
  `lectureID` int(11) NOT NULL AUTO_INCREMENT,
  `lectureName` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`lectureID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- 
-- Dumping data for table lectures
-- 

/*!40000 ALTER TABLE `lectures` DISABLE KEYS */;
INSERT INTO `lectures`(`lectureID`,`lectureName`) VALUES
(1,'danish'),
(2,'math'),
(3,'english'),
(4,'france'),
(5,'german'),
(6,'history'),
(7,'Christian knowledge'),
(8,'biology'),
(9,'geography'),
(10,'art');
/*!40000 ALTER TABLE `lectures` ENABLE KEYS */;

-- 
-- Definition of people
-- 

DROP TABLE IF EXISTS `people`;
CREATE TABLE IF NOT EXISTS `people` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `personType` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- 
-- Dumping data for table people
-- 

/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people`(`userID`,`name`,`age`,`sex`,`salary`,`personType`) VALUES
(1,'Stevie Long',21,'M',0,'student'),
(2,'Bryon Cobb',17,'M',0,'student'),
(3,'Joanna Hale',27,'F',0,'student'),
(4,'Shana Collins',26,'M',0,'student'),
(5,'Violette Shan',22,'F',0,'student'),
(6,'Kent Bershadsky',24,'M',0,'student'),
(7,'Bershadsky Kent',29,'M',0,'student'),
(8,'Perla Harmeling',37,'F',6000,'teacher'),
(9,'Nevins Cassano',57,'M',5900,'teacher'),
(10,'Shelba Hopper',42,'F',7200,'teacher'),
(11,'john213',5,'F',4000,'teacher');
/*!40000 ALTER TABLE `people` ENABLE KEYS */;

-- 
-- Definition of rooms
-- 

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE IF NOT EXISTS `rooms` (
  `roomID` int(11) NOT NULL AUTO_INCREMENT,
  `roomName` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`roomID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- 
-- Dumping data for table rooms
-- 

/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms`(`roomID`,`roomName`) VALUES
(1,'F28'),
(2,'F29'),
(3,'F30'),
(4,'F31'),
(5,'N17'),
(6,'N18'),
(7,'N19'),
(8,'N20'),
(9,'N21'),
(10,'N22');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;

-- 
-- Definition of school
-- 

DROP TABLE IF EXISTS `school`;
CREATE TABLE IF NOT EXISTS `school` (
  `userID` int(11) NOT NULL,
  `classID` int(11) NOT NULL,
  `roomID` int(11) NOT NULL,
  `lectureID` int(11) NOT NULL,
  KEY `userID` (`userID`),
  KEY `classID` (`classID`),
  KEY `roomID` (`roomID`),
  KEY `lectureID` (`lectureID`),
  CONSTRAINT `school_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `people` (`userID`),
  CONSTRAINT `school_ibfk_2` FOREIGN KEY (`classID`) REFERENCES `classes` (`classID`),
  CONSTRAINT `school_ibfk_3` FOREIGN KEY (`roomID`) REFERENCES `rooms` (`roomID`),
  CONSTRAINT `school_ibfk_4` FOREIGN KEY (`lectureID`) REFERENCES `lectures` (`lectureID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 
-- Dumping data for table school
-- 

/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school`(`userID`,`classID`,`roomID`,`lectureID`) VALUES
(1,1,1,1),
(2,1,1,1),
(3,1,1,1),
(4,1,1,1),
(5,2,2,2),
(6,2,2,2),
(7,2,2,2),
(8,2,2,2),
(9,2,2,2),
(10,1,1,1);
/*!40000 ALTER TABLE `school` ENABLE KEYS */;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- Dump completed on 2021-06-01 09:32:28
-- Total time: 0:0:0:0:113 (d:h:m:s:ms)
