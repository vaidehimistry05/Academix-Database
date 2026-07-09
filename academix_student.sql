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
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `StudentID` int NOT NULL AUTO_INCREMENT,
  `EnrollmentNo` varchar(20) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `DateofBirth` date DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Joiningyear` year DEFAULT NULL,
  `CurrentSemester` int DEFAULT NULL,
  `CollegeID` int NOT NULL,
  `DepartmentID` int NOT NULL,
  `CourseID` int NOT NULL,
  `MentorID` int DEFAULT NULL,
  `Status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`StudentID`),
  UNIQUE KEY `EnrollmentNo` (`EnrollmentNo`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `Phone` (`Phone`),
  KEY `CollegeID` (`CollegeID`),
  KEY `MentorID` (`MentorID`),
  KEY `CourseID` (`CourseID`),
  KEY `DepartmentID` (`DepartmentID`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`CollegeID`) REFERENCES `college` (`CollegeID`),
  CONSTRAINT `student_ibfk_2` FOREIGN KEY (`MentorID`) REFERENCES `faculty` (`FacultyID`),
  CONSTRAINT `student_ibfk_3` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`),
  CONSTRAINT `student_ibfk_4` FOREIGN KEY (`DepartmentID`) REFERENCES `department` (`DepartmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'UTU25CE001','Jugal','Mistry','Male','2003-04-12','jugal.mistry@utu.ac.in','9876510001','Surat',2025,1,1,1,1,1,1),(2,'UTU25CE002','Harsh','Patel','Male','2004-01-20','harsh.patel@utu.ac.in','9876510002','Surat',2025,1,1,1,1,1,1),(3,'UTU25CE003','Krish','Shah','Male','2003-09-11','krish.shah@utu.ac.in','9876510003','Bardoli',2025,1,1,1,1,1,1),(4,'UTU25CE004','Meet','Desai','Male','2004-06-30','meet.desai@utu.ac.in','9876510004','Navsari',2025,1,1,1,1,1,1),(5,'UTU25IT001','Riya','Patel','Female','2004-02-15','riya.patel@utu.ac.in','9876510005','Surat',2025,1,1,2,2,4,1),(6,'UTU25IT002','Khushi','Shah','Female','2003-07-09','khushi.shah@utu.ac.in','9876510006','Surat',2025,1,1,2,2,4,1),(7,'UTU25IT003','Yash','Gajera','Male','2004-11-18','yash.gajera@utu.ac.in','9876510007','Bardoli',2025,1,1,2,2,4,1),(8,'UTU25IT004','Dhruv','Patel','Male','2003-12-05','dhruv.patel@utu.ac.in','9876510008','Surat',2025,1,1,2,2,4,1),(9,'UTU25BCA001','Nidhi','Mehta','Female','2004-08-22','nidhi.mehta@utu.ac.in','9876510009','Surat',2025,1,1,3,3,7,1),(10,'UTU25BCA002','Dev','Kansara','Male','2003-03-18','dev.kansara@utu.ac.in','9876510010','Surat',2025,1,1,3,3,7,1),(11,'UTU25BCA003','Anjali','Patel','Female','2004-10-10','anjali.patel@utu.ac.in','9876510011','Navsari',2025,1,1,3,3,7,1),(12,'UTU25BCA004','Parth','Shah','Male','2003-05-27','parth.shah@utu.ac.in','9876510012','Surat',2025,1,1,3,3,7,1),(13,'UTU25MCA001','Vraj','Patel','Male','2002-01-17','vraj.patel@utu.ac.in','9876510013','Surat',2025,1,1,4,4,10,1),(14,'UTU25MCA002','Heena','Desai','Female','2002-06-12','heena.desai@utu.ac.in','9876510014','Surat',2025,1,1,4,4,10,1),(15,'UTU25MCA003','Smit','Bhatt','Male','2001-09-09','smit.bhatt@utu.ac.in','9876510015','Bardoli',2025,1,1,4,4,10,1),(16,'UTU25MCA004','Komal','Patel','Female','2002-11-03','komal.patel@utu.ac.in','9876510016','Surat',2025,1,1,4,4,10,1),(17,'UTU25AI001','Aarav','Patel','Male','2004-04-01','aarav.patel@utu.ac.in','9876510017','Surat',2025,1,1,5,5,13,1),(18,'UTU25AI002','Diya','Shah','Female','2004-09-15','diya.shah@utu.ac.in','9876510018','Surat',2025,1,1,5,5,13,1),(19,'UTU25AI003','Rohan','Mehta','Male','2003-08-20','rohan.mehta@utu.ac.in','9876510019','Navsari',2025,1,1,5,5,13,1),(20,'UTU25AI004','Priyanshi','Patel','Female','2004-12-08','priyanshi.patel@utu.ac.in','9876510020','Surat',2025,1,1,5,5,13,1),(22,'GECS25CE001','Aryan','Patel','Male','2004-01-15','aryan.patel@gecsurat.ac.in','9876510021','Surat',2025,1,2,6,6,NULL,1),(23,'GECS25CE002','Mihir','Shah','Male','2003-05-20','mihir.shah@gecsurat.ac.in','9876510022','Surat',2025,1,2,6,6,NULL,1),(24,'GECS25CE003','Het','Desai','Male','2004-03-11','het.desai@gecsurat.ac.in','9876510023','Navsari',2025,1,2,6,6,NULL,1),(25,'GECS25CE004','Krunal','Patel','Male','2004-08-09','krunal.patel@gecsurat.ac.in','9876510024','Bharuch',2025,1,2,6,6,NULL,1),(26,'GECS25IT001','Soham','Mehta','Male','2004-02-18','soham.mehta@gecsurat.ac.in','9876510025','Surat',2025,1,2,7,7,NULL,1),(27,'GECS25IT002','Nisarg','Patel','Male','2003-12-21','nisarg.patel@gecsurat.ac.in','9876510026','Surat',2025,1,2,7,7,NULL,1),(28,'GECS25IT003','Jiya','Shah','Female','2004-06-07','jiya.shah@gecsurat.ac.in','9876510027','Navsari',2025,1,2,7,7,NULL,1),(29,'GECS25IT004','Mansi','Desai','Female','2004-11-30','mansi.desai@gecsurat.ac.in','9876510028','Surat',2025,1,2,7,7,NULL,1),(30,'GECS25ME002','Dev','Shah','Male','2004-07-08','dev.shah@gecsurat.ac.in','9876510030','Bharuch',2025,1,2,8,8,NULL,1),(31,'GECS25ME003','Yug','Bhatt','Male','2003-04-28','yug.bhatt@gecsurat.ac.in','9876510031','Surat',2025,1,2,8,8,NULL,1),(32,'GECS25ME004','Kishan','Desai','Male','2004-09-12','kishan.desai@gecsurat.ac.in','9876510032','Navsari',2025,1,2,8,8,NULL,1),(33,'GECS25EE001','Rohan','Patel','Male','2004-02-25','rohan.patel@gecsurat.ac.in','9876510033','Surat',2025,1,2,9,9,NULL,1),(34,'GECS25EE002','Vivek','Shah','Male','2003-08-17','vivek.shah@gecsurat.ac.in','9876510034','Bardoli',2025,1,2,9,9,NULL,1),(35,'GECS25EE003','Khushi','Patel','Female','2004-10-05','khushi.patel@gecsurat.ac.in','9876510035','Surat',2025,1,2,9,9,NULL,1),(36,'GECS25EE004','Nikita','Mehta','Female','2003-06-16','nikita.mehta@gecsurat.ac.in','9876510036','Navsari',2025,1,2,9,9,NULL,1),(37,'GECS25DE001','Prince','Patel','Male','2004-05-14','prince.patel@gecsurat.ac.in','9876510037','Surat',2025,1,2,10,10,NULL,1),(38,'GECS25DE002','Akash','Desai','Male','2003-11-11','akash.desai@gecsurat.ac.in','9876510038','Surat',2025,1,2,10,10,NULL,1),(39,'GECS25DE003','Pooja','Patel','Female','2004-01-22','pooja.patel@gecsurat.ac.in','9876510039','Bharuch',2025,1,2,10,10,NULL,1),(40,'GECS25DE004','Riddhi','Shah','Female','2003-07-04','riddhi.shah@gecsurat.ac.in','9876510040','Surat',2025,1,2,10,10,NULL,1),(41,'BMU25BCA001','Rohit','Patel','Male','2004-01-14','rohit.patel@bmu.ac.in','9876510041','Surat',2025,1,3,11,11,NULL,1),(42,'BMU25BCA002','Nikhil','Shah','Male','2003-06-22','nikhil.shah@bmu.ac.in','9876510042','Navsari',2025,1,3,11,11,NULL,1),(43,'BMU25BCA003','Priya','Desai','Female','2004-03-08','priya.desai@bmu.ac.in','9876510043','Valsad',2025,1,3,11,11,NULL,1),(44,'BMU25BCA004','Hetal','Patel','Female','2004-10-19','hetal.patel@bmu.ac.in','9876510044','Surat',2025,1,3,11,11,NULL,1),(45,'BMU25BBA001','Karan','Mehta','Male','2004-04-12','karan.mehta@bmu.ac.in','9876510045','Surat',2025,1,3,12,12,NULL,1),(46,'BMU25BBA002','Dhruvi','Shah','Female','2003-12-15','dhruvi.shah@bmu.ac.in','9876510046','Bharuch',2025,1,3,12,12,NULL,1),(47,'BMU25BBA003','Sagar','Patel','Male','2004-07-20','sagar.patel@bmu.ac.in','9876510047','Navsari',2025,1,3,12,12,NULL,1),(48,'BMU25BBA004','Mitali','Joshi','Female','2004-09-05','mitali.joshi@bmu.ac.in','9876510048','Surat',2025,1,3,12,12,NULL,1),(49,'BMU25BSC001','Vivek','Patel','Male','2004-02-17','vivek.patel@bmu.ac.in','9876510049','Surat',2025,1,3,13,13,NULL,1),(50,'BMU25BSC002','Krupa','Desai','Female','2003-08-11','krupa.desai@bmu.ac.in','9876510050','Valsad',2025,1,3,13,13,NULL,1),(51,'BMU25BSC003','Yatin','Shah','Male','2004-11-02','yatin.shah@bmu.ac.in','9876510051','Surat',2025,1,3,13,13,NULL,1),(52,'BMU25BSC004','Nisha','Patel','Female','2004-05-26','nisha.patel@bmu.ac.in','9876510052','Vyara',2025,1,3,13,13,NULL,1),(53,'BMU25MCA001','Aakash','Patel','Male','2002-01-16','aakash.patel@bmu.ac.in','9876510053','Surat',2025,1,3,14,14,NULL,1),(54,'BMU25MCA002','Rina','Shah','Female','2002-06-18','rina.shah@bmu.ac.in','9876510054','Navsari',2025,1,3,14,14,NULL,1),(55,'BMU25MCA003','Parth','Desai','Male','2001-09-09','parth.desai@bmu.ac.in','9876510055','Valsad',2025,1,3,14,14,NULL,1),(56,'BMU25MCA004','Heena','Patel','Female','2002-12-01','heena.patel@bmu.ac.in','9876510056','Surat',2025,1,3,14,14,NULL,1),(57,'BMU25MBA001','Manav','Patel','Male','2003-03-10','manav.patel@bmu.ac.in','9876510057','Surat',2025,1,3,15,15,NULL,1),(58,'BMU25MBA002','Khushi','Mehta','Female','2003-07-14','khushi.mehta@bmu.ac.in','9876510058','Bharuch',2025,1,3,15,15,NULL,1),(59,'BMU25MBA003','Ronak','Shah','Male','2003-10-08','ronak.shah@bmu.ac.in','9876510059','Navsari',2025,1,3,15,15,NULL,1),(60,'BMU25MBA004','Pallavi','Desai','Female','2003-05-21','pallavi.desai@bmu.ac.in','9876510060','Surat',2025,1,3,15,15,NULL,1);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-09 23:07:43
