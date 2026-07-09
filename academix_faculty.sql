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
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `FacultyID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `Qualification` varchar(100) DEFAULT NULL,
  `Designation` varchar(50) DEFAULT NULL,
  `JoiningDate` date DEFAULT NULL,
  `CollegeID` int NOT NULL,
  `DepartmentID` int NOT NULL,
  `IsMentor` tinyint(1) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`FacultyID`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `Phone` (`Phone`),
  KEY `CollegeID` (`CollegeID`),
  KEY `DepartmentID` (`DepartmentID`),
  CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`CollegeID`) REFERENCES `college` (`CollegeID`),
  CONSTRAINT `faculty_ibfk_2` FOREIGN KEY (`DepartmentID`) REFERENCES `department` (`DepartmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (1,'Amit','Patel','amit.patel@utu.ac.in','9876500001','Male','Ph.D. Computer Engineering','Professor','2014-06-15',1,1,1,1),(2,'Rahul','Shah','rahul.shah@utu.ac.in','9876500002','Male','M.Tech Computer Engineering','Associate Professor','2017-07-10',1,1,0,1),(3,'Neha','Desai','neha.desai@utu.ac.in','9876500003','Female','M.Tech Computer Engineering','Assistant Professor','2020-08-01',1,1,1,1),(4,'Priya','Joshi','priya.joshi@utu.ac.in','9876500004','Female','Ph.D. Information Technology','Professor','2013-01-20',1,2,1,1),(5,'Kunal','Mehta','kunal.mehta@utu.ac.in','9876500005','Male','M.Tech Information Technology','Associate Professor','2018-06-01',1,2,0,1),(6,'Dhara','Patel','dhara.patel@utu.ac.in','9876500006','Female','M.Tech Information Technology','Assistant Professor','2021-07-15',1,2,1,1),(7,'Rakesh','Trivedi','rakesh.trivedi@utu.ac.in','9876500007','Male','MCA','Associate Professor','2016-04-18',1,3,1,1),(8,'Sneha','Shah','sneha.shah@utu.ac.in','9876500008','Female','MCA','Assistant Professor','2019-05-22',1,3,0,1),(9,'Hiren','Modi','hiren.modi@utu.ac.in','9876500009','Male','MCA','Assistant Professor','2022-01-10',1,3,1,1),(10,'Vishal','Bhatt','vishal.bhatt@utu.ac.in','9876500010','Male','Ph.D. Computer Science','Professor','2012-11-05',1,4,1,1),(11,'Krupa','Patel','krupa.patel@utu.ac.in','9876500011','Female','MCA','Associate Professor','2017-08-12',1,4,0,1),(12,'Jay','Desai','jay.desai@utu.ac.in','9876500012','Male','MCA','Assistant Professor','2023-06-20',1,4,1,1),(13,'Mehul','Gajjar','mehul.gajjar@utu.ac.in','9876500013','Male','M.Tech Artificial Intelligence','Assistant Professor','2022-06-01',1,5,1,1),(14,'Bhavna','Shah','bhavna.shah@utu.ac.in','9876500014','Female','M.Tech Machine Learning','Assistant Professor','2023-01-15',1,5,0,1),(15,'Nirav','Patel','nirav.patel@utu.ac.in','9876500015','Male','Ph.D. Artificial Intelligence','Associate Professor','2021-09-01',1,5,1,1),(31,'Harsh','Patel','harsh.patel@gecsurat.ac.in','9876500016','Male','Ph.D. Computer Engineering','Professor','2013-06-15',2,6,1,1),(32,'Jignesh','Shah','jignesh.shah@gecsurat.ac.in','9876500017','Male','M.Tech Computer Engineering','Associate Professor','2017-08-10',2,6,0,1),(33,'Pooja','Desai','pooja.desai@gecsurat.ac.in','9876500018','Female','M.Tech Computer Engineering','Assistant Professor','2021-07-01',2,6,1,1),(34,'Ankit','Patel','ankit.patel@gecsurat.ac.in','9876500019','Male','Ph.D. Information Technology','Professor','2014-02-15',2,7,1,1),(35,'Nidhi','Shah','nidhi.shah@gecsurat.ac.in','9876500020','Female','M.Tech Information Technology','Associate Professor','2018-04-20',2,7,0,1),(36,'Yash','Mehta','yash.mehta@gecsurat.ac.in','9876500021','Male','M.Tech Information Technology','Assistant Professor','2022-06-10',2,7,1,1),(37,'Manish','Patel','manish.patel@gecsurat.ac.in','9876500022','Male','M.E. Mechanical','Professor','2012-09-12',2,8,1,1),(38,'Komal','Trivedi','komal.trivedi@gecsurat.ac.in','9876500023','Female','M.E. Mechanical','Assistant Professor','2019-01-15',2,8,0,1),(39,'Deep','Bhatt','deep.bhatt@gecsurat.ac.in','9876500024','Male','M.E. Mechanical','Assistant Professor','2020-05-08',2,8,1,1),(40,'Viral','Modi','viral.modi@gecsurat.ac.in','9876500025','Male','M.Tech Electrical','Professor','2011-03-18',2,9,1,1),(41,'Riddhi','Patel','riddhi.patel@gecsurat.ac.in','9876500026','Female','M.Tech Electrical','Associate Professor','2016-08-11',2,9,0,1),(42,'Chirag','Shah','chirag.shah@gecsurat.ac.in','9876500027','Male','M.Tech Electrical','Assistant Professor','2021-12-05',2,9,1,1),(43,'Bhavesh','Desai','bhavesh.desai@gecsurat.ac.in','9876500028','Male','B.E. Mechanical','Lecturer','2018-06-15',2,10,1,1),(44,'Kinjal','Patel','kinjal.patel@gecsurat.ac.in','9876500029','Female','M.Tech Civil','Lecturer','2020-09-22',2,10,0,1),(45,'Milan','Joshi','milan.joshi@gecsurat.ac.in','9876500030','Male','M.E. Production','Lecturer','2019-11-30',2,10,1,1),(46,'Parth','Patel','parth.patel@bmusurat.ac.in','9876500031','Male','MCA','Professor','2015-06-15',3,11,1,1),(47,'Heena','Shah','heena.shah@bmusurat.ac.in','9876500032','Female','MCA','Associate Professor','2018-07-10',3,11,0,1),(48,'Sagar','Desai','sagar.desai@bmusurat.ac.in','9876500033','Male','MCA','Assistant Professor','2022-08-01',3,11,1,1),(49,'Nilesh','Patel','nilesh.patel@bmusurat.ac.in','9876500034','Male','MBA','Professor','2014-01-20',3,12,1,1),(50,'Khushbu','Mehta','khushbu.mehta@bmusurat.ac.in','9876500035','Female','MBA','Associate Professor','2017-06-01',3,12,0,1),(51,'Vivek','Trivedi','vivek.trivedi@bmusurat.ac.in','9876500036','Male','MBA','Assistant Professor','2021-07-15',3,12,1,1),(52,'Rohan','Bhatt','rohan.bhatt@bmusurat.ac.in','9876500037','Male','M.Sc Physics','Professor','2012-04-18',3,13,1,1),(53,'Pinal','Patel','pinal.patel@bmusurat.ac.in','9876500038','Female','M.Sc Chemistry','Assistant Professor','2019-05-22',3,13,0,1),(54,'Karan','Joshi','karan.joshi@bmusurat.ac.in','9876500039','Male','M.Sc Mathematics','Assistant Professor','2020-01-10',3,13,1,1),(55,'Hardik','Shah','hardik.shah@bmusurat.ac.in','9876500040','Male','Ph.D. Computer Science','Professor','2011-11-05',3,14,1,1),(56,'Monika','Patel','monika.patel@bmusurat.ac.in','9876500041','Female','MCA','Associate Professor','2016-08-12',3,14,0,1),(57,'Tushar','Desai','tushar.desai@bmusurat.ac.in','9876500042','Male','MCA','Assistant Professor','2023-06-20',3,14,1,1),(58,'Aakash','Modi','aakash.modi@bmusurat.ac.in','9876500043','Male','MBA','Professor','2013-06-01',3,15,1,1),(59,'Rupal','Shah','rupal.shah@bmusurat.ac.in','9876500044','Female','MBA','Assistant Professor','2020-01-15',3,15,0,1),(60,'Darshan','Patel','darshan.patel@bmusurat.ac.in','9876500045','Male','MBA','Associate Professor','2018-09-01',3,15,1,1);
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
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
