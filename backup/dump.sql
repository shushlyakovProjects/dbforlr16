-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: DB_platform_knock-knock
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ADVERTISEMENT_LIST`
--

DROP TABLE IF EXISTS `ADVERTISEMENT_LIST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ADVERTISEMENT_LIST` (
  `id_advertisement` int NOT NULL AUTO_INCREMENT,
  `type_of_service` tinytext NOT NULL,
  `type_of_estate` tinytext NOT NULL,
  `owner_name` tinytext NOT NULL,
  `owner_tel` tinytext NOT NULL,
  `owner_type` tinytext NOT NULL,
  `name` tinytext NOT NULL,
  `address` tinytext NOT NULL,
  `price` int NOT NULL,
  `description` text NOT NULL,
  `rooms` int NOT NULL,
  `square` int NOT NULL,
  `image_name` tinytext NOT NULL,
  PRIMARY KEY (`id_advertisement`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ADVERTISEMENT_LIST`
--

LOCK TABLES `ADVERTISEMENT_LIST` WRITE;
/*!40000 ALTER TABLE `ADVERTISEMENT_LIST` DISABLE KEYS */;
INSERT INTO `ADVERTISEMENT_LIST` VALUES (1,'commerceBuy','Офис','Никита','89280140532','Риелтор','Офис 170кв.м.','Ставрополь, Кулакова 45.',23000000,'Продам офис',1,170,'gajergjpwoje;ls;lgwe.jpg');
/*!40000 ALTER TABLE `ADVERTISEMENT_LIST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENTS`
--

DROP TABLE IF EXISTS `CLIENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENTS` (
  `C_NO` int NOT NULL,
  `FIO` char(40) NOT NULL,
  `ADDR` char(30) NOT NULL,
  `CITY` char(15) NOT NULL,
  `PHONE` char(11) NOT NULL,
  PRIMARY KEY (`C_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENTS`
--

LOCK TABLES `CLIENTS` WRITE;
/*!40000 ALTER TABLE `CLIENTS` DISABLE KEYS */;
INSERT INTO `CLIENTS` VALUES (2,'Петров','Мира 29','Екатеринбург','-');
/*!40000 ALTER TABLE `CLIENTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ORDERS`
--

DROP TABLE IF EXISTS `ORDERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ORDERS` (
  `O_NO` int NOT NULL,
  `DATE` date NOT NULL,
  `C_NO` int NOT NULL,
  `T_NO` int NOT NULL,
  `QUANTITY` double(9,2) NOT NULL,
  `AMOUNT` double(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORDERS`
--

LOCK TABLES `ORDERS` WRITE;
/*!40000 ALTER TABLE `ORDERS` DISABLE KEYS */;
INSERT INTO `ORDERS` VALUES (1,'2010-01-03',1,1,1.00,340.98);
/*!40000 ALTER TABLE `ORDERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TOOLS`
--

DROP TABLE IF EXISTS `TOOLS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TOOLS` (
  `T_NO` int NOT NULL,
  `DSEC` char(40) NOT NULL,
  `PRICE` double(9,2) NOT NULL,
  `QTY` double(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TOOLS`
--

LOCK TABLES `TOOLS` WRITE;
/*!40000 ALTER TABLE `TOOLS` DISABLE KEYS */;
/*!40000 ALTER TABLE `TOOLS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_LIST`
--

DROP TABLE IF EXISTS `USER_LIST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_LIST` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NUMBER` char(11) NOT NULL,
  `PASSWORD` tinytext NOT NULL,
  `ROLE` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '''USER''',
  `TYPE_OWNER` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `SURNAME` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `NAME` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_LIST`
--

LOCK TABLES `USER_LIST` WRITE;
/*!40000 ALTER TABLE `USER_LIST` DISABLE KEYS */;
INSERT INTO `USER_LIST` VALUES (15,'89998887766','rrrrrrrr','\'USER\'','Собственник','Алексеев','Иван'),(19,'root','pass','\'USER\'','Собственник','Шушляков','Никита'),(20,'root','pass','\'USER\'','Собственник','Федоров','Федор'),(21,'root','pass','\'USER\'','Собственник','Васильев','Василий');
/*!40000 ALTER TABLE `USER_LIST` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-01 15:13:46
