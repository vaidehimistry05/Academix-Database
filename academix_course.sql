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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `CourseID` int NOT NULL AUTO_INCREMENT,
  `CourseCode` varchar(10) NOT NULL,
  `CourseName` varchar(100) NOT NULL,
  `DurationINYearS` int DEFAULT NULL,
  `TotalSemester` int DEFAULT NULL,
  `CollegeID` int NOT NULL,
  `Status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`CourseID`),
  UNIQUE KEY `CourseCode` (`CourseCode`),
  KEY `CollegeID` (`CollegeID`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`CollegeID`) REFERENCES `college` (`CollegeID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'UTU-BE','Bachelor of Engineering',4,8,1,1),(2,'UTU-BTECH','Bachelor of Technology',4,8,1,1),(3,'UTU-BCA','Bachelor of Computer Applications',3,6,1,1),(4,'UTU-MCA','Master of Computer Applications',2,4,1,1),(5,'UTU-MTECH','Master of Technology',2,4,1,1),(6,'GECS-BE','Bachelor of Engineering',4,8,2,1),(7,'GECS-BTECH','Bachelor of Technology',4,8,2,1),(8,'GECS-ME','Master of Engineering',2,4,2,1),(9,'GECS-MTECH','Master of Technology',2,4,2,1),(10,'GECS-DIP','Diploma Engineering',3,6,2,1),(11,'BMU-BCA','Bachelor of Computer Applications',3,6,3,1),(12,'BMU-BBA','Bachelor of Business Administration',3,6,3,1),(13,'BMU-BSC','Bachelor of Science',3,6,3,1),(14,'BMU-MCA','Master of Computer Applications',2,4,3,1),(15,'BMU-MBA','Master of Business Administration',2,4,3,1);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
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
