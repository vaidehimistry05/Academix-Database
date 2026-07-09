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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Role` varchar(50) NOT NULL,
  `CollegeID` int NOT NULL,
  `FacultyID` int DEFAULT NULL,
  `StudentID` int DEFAULT NULL,
  `Status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `Username` (`Username`),
  KEY `FacultyID` (`FacultyID`),
  KEY `StudentID` (`StudentID`),
  KEY `CollegeID` (`CollegeID`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`FacultyID`) REFERENCES `faculty` (`FacultyID`),
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`),
  CONSTRAINT `users_ibfk_3` FOREIGN KEY (`CollegeID`) REFERENCES `college` (`CollegeID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin123','Admin',1,NULL,NULL,1),(2,'amit.patel','faculty123','Faculty',1,1,NULL,1),(3,'rahul.shah','faculty123','Faculty',1,2,NULL,1),(4,'neha.desai','faculty123','Faculty',1,3,NULL,1),(5,'priya.joshi','faculty123','Faculty',1,4,NULL,1),(6,'kunal.mehta','faculty123','Faculty',1,5,NULL,1),(7,'harsh.patel','faculty123','Faculty',2,31,NULL,1),(8,'jignesh.shah','faculty123','Faculty',2,32,NULL,1),(9,'pooja.desai','faculty123','Faculty',2,33,NULL,1),(10,'ankit.patel','faculty123','Faculty',2,34,NULL,1),(11,'nidhi.shah','faculty123','Faculty',2,35,NULL,1),(12,'parth.patel','faculty123','Faculty',3,46,NULL,1),(13,'heena.shah','faculty123','Faculty',3,47,NULL,1),(14,'sagar.desai','faculty123','Faculty',3,48,NULL,1),(15,'nilesh.patel','faculty123','Faculty',3,49,NULL,1),(16,'khushbu.mehta','faculty123','Faculty',3,50,NULL,1),(17,'UTU25CE001','student123','Student',1,NULL,1,1),(18,'UTU25CE002','student123','Student',1,NULL,2,1),(19,'UTU25CE003','student123','Student',1,NULL,3,1),(20,'UTU25CE004','student123','Student',1,NULL,4,1),(21,'UTU25IT001','student123','Student',1,NULL,5,1),(22,'UTU25IT002','student123','Student',1,NULL,6,1),(23,'UTU25IT003','student123','Student',1,NULL,7,1),(24,'UTU25IT004','student123','Student',1,NULL,8,1),(25,'UTU25BCA001','student123','Student',1,NULL,9,1),(26,'UTU25BCA002','student123','Student',1,NULL,10,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
