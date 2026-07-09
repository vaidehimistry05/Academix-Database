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
-- Table structure for table `assessment`
--

DROP TABLE IF EXISTS `assessment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessment` (
  `AssesssmentID` int NOT NULL AUTO_INCREMENT,
  `StudentID` int NOT NULL,
  `SubjectID` int NOT NULL,
  `FacultyID` int NOT NULL,
  `AssessmentType` varchar(30) NOT NULL,
  `MaxMarks` int NOT NULL,
  `ObtainedMarks` int NOT NULL,
  `AssessmentDate` date NOT NULL,
  `Status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`AssesssmentID`),
  KEY `StudentID` (`StudentID`),
  KEY `SubjectID` (`SubjectID`),
  KEY `FacultyID` (`FacultyID`),
  CONSTRAINT `assessment_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`),
  CONSTRAINT `assessment_ibfk_2` FOREIGN KEY (`SubjectID`) REFERENCES `subject` (`SubjectID`),
  CONSTRAINT `assessment_ibfk_3` FOREIGN KEY (`FacultyID`) REFERENCES `faculty` (`FacultyID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessment`
--

LOCK TABLES `assessment` WRITE;
/*!40000 ALTER TABLE `assessment` DISABLE KEYS */;
INSERT INTO `assessment` VALUES (31,1,31,1,'Mid Exam',100,85,'2026-07-15',1),(32,2,31,1,'Mid Exam',100,78,'2026-07-15',1),(33,3,31,1,'Mid Exam',100,91,'2026-07-15',1),(34,4,31,2,'Mid Exam',100,69,'2026-07-15',1),(35,5,32,2,'Mid Exam',100,74,'2026-07-16',1),(36,6,33,4,'Mid Exam',100,88,'2026-07-16',1),(37,7,33,4,'Mid Exam',100,81,'2026-07-16',1),(38,8,35,7,'Mid Exam',100,93,'2026-07-17',1),(39,9,35,7,'Mid Exam',100,76,'2026-07-17',1),(40,10,36,8,'Mid Exam',100,84,'2026-07-17',1),(41,11,37,10,'Assignment',50,45,'2026-07-18',1),(42,12,37,10,'Assignment',50,41,'2026-07-18',1),(43,13,39,13,'Assignment',50,48,'2026-07-18',1),(44,14,39,13,'Assignment',50,36,'2026-07-18',1),(45,15,40,14,'Assignment',50,44,'2026-07-19',1),(46,16,41,31,'Assignment',50,40,'2026-07-19',1),(47,17,41,31,'Assignment',50,46,'2026-07-19',1),(48,18,42,32,'Assignment',50,39,'2026-07-19',1),(49,19,43,34,'Assignment',50,47,'2026-07-20',1),(50,20,43,34,'Assignment',50,43,'2026-07-20',1),(51,22,45,37,'Practical',30,25,'2026-07-21',1),(52,23,46,38,'Practical',30,29,'2026-07-21',1),(53,24,47,40,'Practical',30,24,'2026-07-22',1),(54,25,47,40,'Practical',30,27,'2026-07-22',1),(55,26,48,41,'Practical',30,26,'2026-07-22',1),(56,27,49,43,'Practical',30,30,'2026-07-23',1),(57,28,49,43,'Practical',30,23,'2026-07-23',1),(58,29,50,44,'Practical',30,25,'2026-07-23',1),(59,30,50,44,'Practical',30,29,'2026-07-23',1),(60,31,51,46,'Mid Exam',100,82,'2026-07-24',1);
/*!40000 ALTER TABLE `assessment` ENABLE KEYS */;
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
