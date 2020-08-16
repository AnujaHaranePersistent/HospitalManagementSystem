-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital_data
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `appointment_info`
--

DROP TABLE IF EXISTS `appointment_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment_info` (
  `patid` int DEFAULT NULL,
  `apptid` int DEFAULT NULL,
  `apptdate` datetime DEFAULT NULL,
  `operatory` int DEFAULT NULL,
  `provider` int DEFAULT NULL,
  `appttime` datetime DEFAULT NULL,
  `apptlength` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `clinicid` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_info`
--

LOCK TABLES `appointment_info` WRITE;
/*!40000 ALTER TABLE `appointment_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointmentinfo`
--

DROP TABLE IF EXISTS `appointmentinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointmentinfo` (
  `patientId` int DEFAULT NULL,
  `appdate` date DEFAULT NULL,
  `provider` int DEFAULT NULL,
  `apptime` time DEFAULT NULL,
  `applength` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `operatory` int DEFAULT NULL,
  `appId` int NOT NULL AUTO_INCREMENT,
  `clinicId` int DEFAULT NULL,
  PRIMARY KEY (`appId`),
  KEY `patient_FK_idx` (`patientId`),
  KEY `clinicId_fk_idx` (`clinicId`),
  CONSTRAINT `clinicId_fk` FOREIGN KEY (`clinicId`) REFERENCES `clinicinfo` (`clinicId`),
  CONSTRAINT `patient_FK` FOREIGN KEY (`patientId`) REFERENCES `patientinfo` (`patientId`)
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointmentinfo`
--

LOCK TABLES `appointmentinfo` WRITE;
/*!40000 ALTER TABLE `appointmentinfo` DISABLE KEYS */;
INSERT INTO `appointmentinfo` VALUES (202,'2020-08-14',1,'23:59:59',60,300,1,1001,102),(202,'2020-08-14',1,'23:59:59',60,300,1,1002,102),(202,'2020-08-14',1,'23:59:59',60,300,1,1003,102),(202,'2020-08-14',1,'23:59:59',60,300,1,1004,102);
/*!40000 ALTER TABLE `appointmentinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinicinfo`
--

DROP TABLE IF EXISTS `clinicinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinicinfo` (
  `clinicId` int NOT NULL,
  `clinicName` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`clinicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinicinfo`
--

LOCK TABLES `clinicinfo` WRITE;
/*!40000 ALTER TABLE `clinicinfo` DISABLE KEYS */;
INSERT INTO `clinicinfo` VALUES (101,'Deskmukh Hospital','Pune','Maharashtra'),(102,'Kate Hospital','Mumbai','Maharashtra');
/*!40000 ALTER TABLE `clinicinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctorinfo`
--

DROP TABLE IF EXISTS `doctorinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctorinfo` (
  `id` int NOT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `clinicID` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clinic_fk1_idx` (`clinicID`),
  CONSTRAINT `clinic_fk1` FOREIGN KEY (`clinicID`) REFERENCES `clinicinfo` (`clinicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctorinfo`
--

LOCK TABLES `doctorinfo` WRITE;
/*!40000 ALTER TABLE `doctorinfo` DISABLE KEYS */;
INSERT INTO `doctorinfo` VALUES (1000,'Harane','Anuja','Pune',101),(1001,'Magar','Surekha','Nagar',102);
/*!40000 ALTER TABLE `doctorinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (3);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientinfo`
--

DROP TABLE IF EXISTS `patientinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patientinfo` (
  `patientId` int NOT NULL AUTO_INCREMENT,
  `practiceId` int DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `patientagegroup` varchar(45) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`patientId`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientinfo`
--

LOCK TABLES `patientinfo` WRITE;
/*!40000 ALTER TABLE `patientinfo` DISABLE KEYS */;
INSERT INTO `patientinfo` VALUES (201,1,'anita','harane','pune','maharashtra','female','Adult','1998-04-06',23),(202,1,'anita','harane','pune','maharashtra','female','Adult','1998-04-06',23),(203,1,'anita','harane','pune','maharashtra','female','Adult','1998-04-06',22),(204,1,'anita','harane','pune','maharashtra','female','Adult','1998-04-06',22);
/*!40000 ALTER TABLE `patientinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-16 19:54:11
