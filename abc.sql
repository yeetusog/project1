-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: abc_telco
-- ------------------------------------------------------
-- Server version	8.0.26

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
INSERT INTO `hibernate_sequence` VALUES (13);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `tkt_id` bigint NOT NULL AUTO_INCREMENT,
  `date` datetime(6) DEFAULT NULL,
  `descript` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `raised_by` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tkt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,'2021-11-19 14:21:32.111000','Network Issue','123456','Ashish Vyas','Resolved'),(2,'2021-11-19 14:21:29.816000','Incoming Call Issue','123456','Ashish Vyas','Resolved'),(3,'2021-11-19 13:43:10.996000','Internet Speed Issue','123457','Aryan','Raised'),(4,'2021-11-19 13:43:17.605000','Calling Issue','123457','Aryan','Raised'),(5,'2021-11-19 13:49:28.291000','Calling Issue','123458','Akash','Raised'),(6,'2021-11-19 14:17:40.840000','Internet Problems faced in my area','123459','Rohit','Assigned'),(7,'2021-12-30 12:41:39.711000','some error','123459','Rohit','Assigned');
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Bikaner','ashish.vyas81@gmail.com','Ashish Vyas','abcd','123456','customer'),(2,'Ranchi','mahi7781@ict.com','MS Dhoni','msd7','123456','manager'),(3,'Delhi','vk18@ict.com','Virat Kohli','vk18','123456','engineer'),(4,'Mumbai','rs45@ict.com','Rohit Sharma','rs45','123457','engineer'),(5,'Gurgaon','mp@ict.com','Manish Pandey','mp','123458','engineer'),(6,'Delhi','sk@gmail.com','Sachin','sk','123459','engineer'),(7,'Jaipur','lkp@gmail.com','Lokesh','lkp','123460','engineer'),(8,'Indore','rs@ict.com','Ravi Shashtri','rs','201566','manager'),(9,'Mumbai','av@gmail.com','Aryan','av','123457','customer'),(10,'Gurgaon','ac@gmail.com','Akash','ac','123458','customer'),(11,'Delhi','rv@gmail.com','Rohit','rv','123459','customer'),(12,'abc','abc@abc.com','abc','abc','123459','engineer');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_tkts`
--

DROP TABLE IF EXISTS `users_tkts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_tkts` (
  `id` bigint NOT NULL,
  `tkt_id` bigint NOT NULL,
  KEY `FK353oqc0ry1ljfaboa90jr104h` (`tkt_id`),
  KEY `FKr5wycxd68x901vc8npyh5x8no` (`id`),
  CONSTRAINT `FK353oqc0ry1ljfaboa90jr104h` FOREIGN KEY (`tkt_id`) REFERENCES `tickets` (`tkt_id`),
  CONSTRAINT `FKr5wycxd68x901vc8npyh5x8no` FOREIGN KEY (`id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_tkts`
--

LOCK TABLES `users_tkts` WRITE;
/*!40000 ALTER TABLE `users_tkts` DISABLE KEYS */;
INSERT INTO `users_tkts` VALUES (1,1),(1,2),(9,3),(9,4),(10,5),(3,2),(3,1),(11,6),(11,7),(6,6),(6,7);
/*!40000 ALTER TABLE `users_tkts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-07  0:10:59
