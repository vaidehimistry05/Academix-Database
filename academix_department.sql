-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: academix
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `DepartmentID` int NOT NULL AUTO_INCREMENT,
  `DepartmentCode` varchar(15) NOT NULL,
  `DepartmentName` varchar(100) NOT NULL,
  `CollegeID` int NOT NULL,
  `CourseID` int NOT NULL,
  `HODID` int DEFAULT NULL,
  `EstablishedYear` int DEFAULT NULL,
  `Status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`DepartmentID`),
  UNIQUE KEY `DepartmentCode` (`DepartmentCode`),
  KEY `CollegeID` (`CollegeID`),
  KEY `CourseID` (`CourseID`),
  KEY `HODID` (`HODID`),
  CONSTRAINT `department_ibfk_1` FOREIGN KEY (`CollegeID`) REFERENCES `college` (`CollegeID`),
  CONSTRAINT `department_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`),
  CONSTRAINT `department_ibfk_3` FOREIGN KEY (`HODID`) REFERENCES `faculty` (`FacultyID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'CE','Computer Engineering',1,1,NULL,2005,1),(2,'IT','Information Technology',1,2,NULL,2006,1),(3,'BCA','Computer Applications',1,3,NULL,2008,1),(4,'MCA','Master of Computer Applications',1,4,NULL,2010,1),(5,'AIML','Artificial Intelligence & Machine Learning',1,5,NULL,2022,1),(6,'CE-G','Computer Engineering',2,6,NULL,2004,1),(7,'IT-G','Information Technology',2,7,NULL,2005,1),(8,'ME-G','Mechanical Engineering',2,8,NULL,1998,1),(9,'EE-G','Electrical Engineering',2,9,NULL,1999,1),(10,'DIP-G','Diploma Engineering',2,10,NULL,2000,1),(11,'BCA-B','Computer Applications',3,11,NULL,2014,1),(12,'BBA-B','Business Administration',3,12,NULL,2013,1),(13,'BSC-B','Bachelor of Science',3,13,NULL,2012,1),(14,'MCA-B','Master of Computer Applications',3,14,NULL,2015,1),(15,'MBA-B','Master of Business Administration',3,15,NULL,2016,1);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-09 23:07:42
