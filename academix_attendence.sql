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
-- Table structure for table `attendence`
--

DROP TABLE IF EXISTS `attendence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendence` (
  `AttendanceID` int NOT NULL AUTO_INCREMENT,
  `StudentID` int NOT NULL,
  `SubjectID` int NOT NULL,
  `FacultyID` int NOT NULL,
  `AttendanceDATE` date NOT NULL,
  `Status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`AttendanceID`),
  KEY `FacultyID` (`FacultyID`),
  KEY `SubjectID` (`SubjectID`),
  KEY `StudentID` (`StudentID`),
  CONSTRAINT `attendence_ibfk_1` FOREIGN KEY (`FacultyID`) REFERENCES `faculty` (`FacultyID`),
  CONSTRAINT `attendence_ibfk_2` FOREIGN KEY (`SubjectID`) REFERENCES `subject` (`SubjectID`),
  CONSTRAINT `attendence_ibfk_3` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendence`
--

LOCK TABLES `attendence` WRITE;
/*!40000 ALTER TABLE `attendence` DISABLE KEYS */;
INSERT INTO `attendence` VALUES (31,1,31,1,'2026-07-01',1),(32,2,31,1,'2026-07-01',1),(33,3,31,1,'2026-07-01',1),(34,4,31,1,'2026-07-01',0),(35,5,32,2,'2026-07-02',1),(36,6,33,4,'2026-07-02',1),(61,7,33,4,'2026-07-02',0),(62,8,35,7,'2026-07-03',1),(63,9,35,7,'2026-07-03',1),(64,10,36,8,'2026-07-03',0),(65,11,37,10,'2026-07-04',1),(66,12,37,10,'2026-07-04',1),(67,13,39,13,'2026-07-05',1),(68,14,39,13,'2026-07-05',0),(69,15,40,14,'2026-07-05',1),(80,16,41,31,'2026-07-06',1),(81,17,41,31,'2026-07-06',0),(82,18,42,32,'2026-07-06',1),(83,19,43,34,'2026-07-07',1),(84,20,43,34,'2026-07-07',0),(94,22,45,37,'2026-07-08',1),(95,23,46,38,'2026-07-08',0),(96,24,47,40,'2026-07-09',1),(97,25,47,40,'2026-07-09',1),(98,25,47,40,'2026-07-09',1),(99,26,48,41,'2026-07-09',0),(100,27,49,43,'2026-07-10',1),(101,28,49,43,'2026-07-10',1),(102,29,50,44,'2026-07-10',0),(103,30,50,44,'2026-07-10',1);
/*!40000 ALTER TABLE `attendence` ENABLE KEYS */;
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
