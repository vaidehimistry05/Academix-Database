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
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `SubjectID` int NOT NULL AUTO_INCREMENT,
  `SubjectCode` varchar(10) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `Semester` int NOT NULL,
  `Credits` int NOT NULL,
  `CollegeID` int NOT NULL,
  `CourseID` int NOT NULL,
  `Department` int NOT NULL,
  `FacultyID` int NOT NULL,
  `Status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`SubjectID`),
  UNIQUE KEY `SubjectCode` (`SubjectCode`),
  KEY `CollegeID` (`CollegeID`),
  KEY `CourseID` (`CourseID`),
  KEY `FacultyID` (`FacultyID`),
  KEY `Department` (`Department`),
  CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`CollegeID`) REFERENCES `college` (`CollegeID`),
  CONSTRAINT `subject_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`),
  CONSTRAINT `subject_ibfk_3` FOREIGN KEY (`FacultyID`) REFERENCES `faculty` (`FacultyID`),
  CONSTRAINT `subject_ibfk_4` FOREIGN KEY (`Department`) REFERENCES `department` (`DepartmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (31,'CE101','Programming in C',1,4,1,1,1,1,1),(32,'CE102','Data Structures',2,4,1,1,1,2,1),(33,'IT101','Web Technology',1,4,1,2,2,4,1),(34,'IT102','Computer Networks',2,4,1,2,2,5,1),(35,'BCA101','Programming Fundamentals',1,4,1,3,3,7,1),(36,'BCA102','Database Management System',2,4,1,3,3,8,1),(37,'MCA101','Java Programming',1,4,1,4,4,10,1),(38,'MCA102','Software Engineering',2,4,1,4,4,11,1),(39,'AI101','Artificial Intelligence',1,4,1,5,5,13,1),(40,'AI102','Machine Learning',2,4,1,5,5,14,1),(41,'CE201','Operating Systems',1,4,2,6,6,31,1),(42,'CE202','Computer Architecture',2,4,2,6,6,32,1),(43,'IT201','Cloud Computing',1,4,2,7,7,34,1),(44,'IT202','Cyber Security',2,4,2,7,7,35,1),(45,'ME201','Thermodynamics',1,4,2,8,8,37,1),(46,'ME202','Fluid Mechanics',2,4,2,8,8,38,1),(47,'EE201','Electrical Machines',1,4,2,9,9,40,1),(48,'EE202','Power Systems',2,4,2,9,9,41,1),(49,'DE201','Engineering Drawing',1,4,2,10,10,43,1),(50,'DE202','Workshop Technology',2,4,2,10,10,44,1),(51,'BCA201','Python Programming',1,4,3,11,11,46,1),(52,'BCA202','PHP Programming',2,4,3,11,11,47,1),(53,'BBA201','Business Management',1,4,3,12,12,49,1),(54,'BBA202','Financial Accounting',2,4,3,12,12,50,1),(55,'BSC201','Physics',1,4,3,13,13,52,1),(56,'BSC202','Chemistry',2,4,3,13,13,53,1),(57,'MCA201','Advanced Java',1,4,3,14,14,55,1),(58,'MCA202','Data Mining',2,4,3,14,14,56,1),(59,'MBA201','Marketing Management',1,4,3,15,15,58,1),(60,'MBA202','Human Resource Management',2,4,3,15,15,59,1);
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
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
