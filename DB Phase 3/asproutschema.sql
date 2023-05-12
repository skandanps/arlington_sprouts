-- MySQL dump 10.13  Distrib 8.0.32, for macos13.0 (arm64)
--
-- Host: localhost    Database: arlington_sprouts_schema
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `CONTRACT`
--

DROP TABLE IF EXISTS `CONTRACT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CONTRACT` (
  `vId` int NOT NULL,
  `ctId` int NOT NULL,
  `Sdate` date NOT NULL,
  `Ctime` time NOT NULL,
  `Cname` varchar(100) NOT NULL,
  PRIMARY KEY (`vId`,`ctId`),
  CONSTRAINT `contract_ibfk_1` FOREIGN KEY (`vId`) REFERENCES `VENDOR` (`vId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CONTRACT`
--

LOCK TABLES `CONTRACT` WRITE;
/*!40000 ALTER TABLE `CONTRACT` DISABLE KEYS */;
INSERT INTO `CONTRACT` VALUES (2,1,'2024-06-24','13:00:00','Sprout Buddies'),(2,2,'2024-07-01','13:00:00','Sprout Buddies'),(2,3,'2024-07-07','13:00:00','Sprout Buddies'),(2,4,'2024-07-14','14:00:00','Sprout Sandwiches'),(3,1,'2024-06-25','15:00:00','Sprout Greens'),(4,1,'2024-06-25','16:00:00','Sprout Certifications'),(4,2,'2024-06-26','16:00:00','Sprout Certifications'),(5,1,'2024-07-26','13:00:00','Sprout Certifications'),(5,2,'2024-07-26','14:00:00','Sprout Buddies'),(5,3,'2024-07-26','15:00:00','Sprout Sandwiches'),(5,4,'2024-07-26','16:00:00','Sprout Sandwiches'),(5,5,'2024-07-26','17:00:00','Microgreens');
/*!40000 ALTER TABLE `CONTRACT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER`
--

DROP TABLE IF EXISTS `CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CUSTOMER` (
  `cId` int NOT NULL,
  `Cname` varchar(60) NOT NULL,
  `Street` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `StateAb` char(2) NOT NULL,
  `Zipcode` char(12) NOT NULL,
  PRIMARY KEY (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER`
--

LOCK TABLES `CUSTOMER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER` DISABLE KEYS */;
INSERT INTO `CUSTOMER` VALUES (1,'Abed Abdi','309 Hcounty Road','Abbott','TX','76621-0057'),(2,'Ismail Gulg','405 E Mesquite Street','Abbott','TX','76621-0057'),(3,'Shakir Ali','5000 Spectrum Street','Addison','TX','75001-6880'),(4,'Abdur Rahman','1000 County Road','Bradley','Ok','73011-0121'),(5,'Kalipada Ghoshal','Boundary Road','Bradley','OK','73011-9600'),(6,'Manishi Dey','450 Main Street','Mound City','KS','66056-0001'),(7,'Nandalal Bose','S Metcalf Road','Louisburg','KS','66053-0541'),(8,'Raja Ravi Varma','2000 Forest Grove blvd','Allen','TX','75002-8811'),(9,'Sunil Das','4000 Woodcreek Road','Carrollton','TX','75006-1911'),(10,'Jasper Johns','2500 Sunset Ridge Drive','Rockwall','TX','75032-0006'),(11,'Winslow Homer','11300 Juniper Lane','Irving','TX','75039-0101'),(12,'Albert Bierstadt','400 Spruce Street','Leavenworth','KS','66048-0001'),(13,'Edward Hopper','1500 255th Street','Hillsdale','KS','66036-0061'),(14,'Georgia O\'Keeffe','3000 Weiss Lane','Irving','TX','75039-0006'),(15,'Modupeola Fadugba','1112 18TH Street','Plano','TX','75086-0019'),(16,'Ekene Maduka','15TH Street','Plano','TX','75086-0015'),(17,'Olu Amoda','200 Travis Street','Sherman','TX','75090-0005'),(18,'Koki Tanaka','5000 W Holiday Road','Fate','TX','75087-2136'),(19,'Tatsuo Miyajima','Bella Ranch Drive','Choctaw','OK','73020-0017'),(20,'Li Chen','2090 County Road','Cement','OK','73017-1100'),(21,'Zhan Wang','1600 N Santa Fe','Edmond','OK','73003-3661');
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEE`
--

DROP TABLE IF EXISTS `EMPLOYEE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EMPLOYEE` (
  `sId` int NOT NULL,
  `SSN` int NOT NULL,
  `Ename` varchar(50) NOT NULL,
  `Etype` varchar(1) NOT NULL,
  `Bdate` date NOT NULL,
  `Edate` date DEFAULT NULL,
  `Sdate` date NOT NULL,
  `Level` varchar(20) DEFAULT NULL,
  `Asalary` decimal(10,2) DEFAULT NULL,
  `Agency` varchar(100) DEFAULT NULL,
  `Hsalary` decimal(10,2) DEFAULT NULL,
  `Institute` varchar(100) DEFAULT NULL,
  `Itype` varchar(50) DEFAULT NULL,
  `Street` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `StateAb` char(2) NOT NULL,
  `Zipcode` char(12) NOT NULL,
  PRIMARY KEY (`SSN`),
  KEY `sId` (`sId`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`sId`) REFERENCES `STORE` (`sId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEE`
--

LOCK TABLES `EMPLOYEE` WRITE;
/*!40000 ALTER TABLE `EMPLOYEE` DISABLE KEYS */;
INSERT INTO `EMPLOYEE` VALUES (1,123456666,'Olampiosi Pi','T','2005-02-01',NULL,'2023-01-20',NULL,NULL,'Top Performers',10.00,NULL,NULL,'100 Varsity Circle','Arlington','TX','76019-1111'),(1,123456777,'Radha Gupta','T','2005-01-20',NULL,'2023-01-20',NULL,NULL,'AR Manpower',10.00,NULL,NULL,'200 Nedderman Dr','Arlington','TX','76019-1111'),(1,123456780,'Cao Peng','I','2008-01-20',NULL,'2023-01-20',NULL,NULL,NULL,NULL,'UTA','U','12 W. Mitchell St.','Arlington','TX','76019-1111'),(1,123456781,'Giun Seong','I','2007-01-01',NULL,'2023-01-20',NULL,NULL,NULL,NULL,'Arlington High School','S','12 S. Pecan St.','Arlington','TX','76019-1111'),(1,123456788,'Christian Cart','F','2001-01-02',NULL,'2023-01-20','Associate 1',25000.00,NULL,NULL,NULL,NULL,'20 Main Street','Arlington','TX','76019-1111'),(1,123456789,'Mary Durer','F','2000-01-20',NULL,'2023-01-20','Associate 2',30000.00,NULL,NULL,NULL,NULL,'11 Cooper Street','Arlington','TX','76019-1111');
/*!40000 ALTER TABLE `EMPLOYEE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ITEM`
--

DROP TABLE IF EXISTS `ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ITEM` (
  `iId` int NOT NULL,
  `Iname` varchar(100) NOT NULL,
  `Sprice` decimal(10,2) NOT NULL,
  PRIMARY KEY (`iId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ITEM`
--

LOCK TABLES `ITEM` WRITE;
/*!40000 ALTER TABLE `ITEM` DISABLE KEYS */;
INSERT INTO `ITEM` VALUES (1,'Broccoli Sprouts',3.00),(2,'Kale Sprouts',3.00),(3,'Alfalfa Sprouts',3.00),(4,'Mung Sprouts',4.00),(5,'Chickpeas Sprouts',4.00),(6,'Onion Sprouts',4.00),(7,'Soyabean Sprouts',5.00),(8,'Clover Sprouts',3.00),(9,'Kidney Beans Sprouts',4.00),(10,'Adzuki Bean Sprouts',4.00),(11,'Beet Sprouts',5.00),(12,'Green Pea Sprouts',5.00),(13,'Radish Sprouts',6.00),(14,'Lentil Sprouts',4.00);
/*!40000 ALTER TABLE `ITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OLDPRICE`
--

DROP TABLE IF EXISTS `OLDPRICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OLDPRICE` (
  `iId` int NOT NULL,
  `Sprice` decimal(10,2) NOT NULL,
  `Sdate` date NOT NULL,
  `Edate` date DEFAULT NULL,
  PRIMARY KEY (`iId`,`Sdate`),
  CONSTRAINT `oldprice_ibfk_1` FOREIGN KEY (`iId`) REFERENCES `ITEM` (`iId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OLDPRICE`
--

LOCK TABLES `OLDPRICE` WRITE;
/*!40000 ALTER TABLE `OLDPRICE` DISABLE KEYS */;
INSERT INTO `OLDPRICE` VALUES (1,3.00,'2023-01-20',NULL),(2,3.00,'2023-01-20',NULL),(3,1.00,'2023-01-20','2023-01-25'),(3,2.00,'2023-01-26','2023-01-28'),(3,3.00,'2023-01-29',NULL),(4,4.00,'2023-01-20',NULL),(5,4.00,'2023-01-20',NULL),(6,4.00,'2023-01-20',NULL),(7,5.00,'2023-01-20',NULL),(8,3.00,'2023-01-20',NULL),(9,4.00,'2023-01-20',NULL),(10,4.00,'2023-01-20',NULL),(11,5.00,'2023-01-20',NULL),(12,5.00,'2023-01-20',NULL),(13,6.00,'2023-01-20',NULL),(14,2.00,'2023-01-20','2023-01-27'),(14,3.00,'2023-01-28','2023-01-30'),(14,4.00,'2023-01-31','2023-02-10');
/*!40000 ALTER TABLE `OLDPRICE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ORDER_ITEM`
--

DROP TABLE IF EXISTS `ORDER_ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ORDER_ITEM` (
  `oId` int NOT NULL,
  `sId` int DEFAULT NULL,
  `iId` int NOT NULL,
  `Icount` int NOT NULL,
  PRIMARY KEY (`oId`,`iId`),
  KEY `sId` (`sId`),
  KEY `iId` (`iId`),
  CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`oId`) REFERENCES `ORDERS` (`oId`),
  CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`sId`) REFERENCES `STORE` (`sId`),
  CONSTRAINT `order_item_ibfk_3` FOREIGN KEY (`iId`) REFERENCES `ITEM` (`iId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORDER_ITEM`
--

LOCK TABLES `ORDER_ITEM` WRITE;
/*!40000 ALTER TABLE `ORDER_ITEM` DISABLE KEYS */;
INSERT INTO `ORDER_ITEM` VALUES (1,1,1,1),(2,1,2,1),(3,1,4,1),(4,1,5,1),(4,1,6,2),(5,1,5,1),(6,1,5,1),(6,1,6,2),(6,1,7,3),(7,1,6,1),(8,1,7,1),(9,1,7,1),(10,1,7,1),(11,1,8,1),(12,1,9,1),(13,1,10,1),(14,1,10,1),(15,1,4,1),(15,1,5,1),(15,1,6,1),(15,1,7,2),(16,1,12,1),(17,1,13,1),(18,1,13,1),(19,1,1,1),(20,1,2,1),(21,1,4,1),(22,1,4,1),(23,1,4,1),(24,1,4,1),(25,1,5,1),(26,1,5,1),(27,1,14,1);
/*!40000 ALTER TABLE `ORDER_ITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ORDERS`
--

DROP TABLE IF EXISTS `ORDERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ORDERS` (
  `oId` int NOT NULL,
  `sId` int DEFAULT NULL,
  `Odate` date NOT NULL,
  `Ddate` date NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `cId` int NOT NULL,
  PRIMARY KEY (`oId`),
  KEY `sId` (`sId`),
  KEY `cId` (`cId`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`sId`) REFERENCES `STORE` (`sId`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`cId`) REFERENCES `CUSTOMER` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORDERS`
--

LOCK TABLES `ORDERS` WRITE;
/*!40000 ALTER TABLE `ORDERS` DISABLE KEYS */;
INSERT INTO `ORDERS` VALUES (1,1,'2023-01-20','2023-01-21',3.00,1),(2,1,'2023-01-20','2023-01-21',3.00,2),(3,1,'2023-01-20','2023-01-21',4.00,3),(4,1,'2023-01-20','2023-01-21',12.00,4),(5,1,'2023-01-20','2023-01-21',4.00,5),(6,1,'2023-01-20','2023-01-21',27.00,6),(7,1,'2023-01-20','2023-01-21',4.00,7),(8,1,'2023-01-20','2023-01-21',5.00,8),(9,1,'2023-01-20','2023-01-21',5.00,9),(10,1,'2023-01-20','2023-01-21',5.00,10),(11,1,'2023-01-20','2023-01-21',3.00,11),(12,1,'2023-01-25','2023-01-26',4.00,12),(13,1,'2023-01-25','2023-01-26',4.00,13),(14,1,'2023-01-25','2023-01-26',4.00,14),(15,1,'2023-01-25','2023-01-26',22.00,2),(16,1,'2023-01-25','2023-01-26',5.00,5),(17,1,'2023-01-25','2023-01-26',6.00,9),(18,1,'2023-01-30','2023-01-31',6.00,15),(19,1,'2023-01-30','2023-01-31',3.00,16),(20,1,'2023-01-30','2023-01-31',3.00,17),(21,1,'2023-01-30','2023-01-31',4.00,2),(22,1,'2023-01-30','2023-01-31',4.00,9),(23,1,'2023-02-05','2023-02-06',4.00,18),(24,1,'2023-02-05','2023-02-06',4.00,19),(25,1,'2023-02-05','2023-02-06',4.00,20),(26,1,'2023-02-10','2023-02-11',4.00,21),(27,1,'2023-02-12','2023-02-13',4.00,21);
/*!40000 ALTER TABLE `ORDERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STORE`
--

DROP TABLE IF EXISTS `STORE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STORE` (
  `sId` int NOT NULL,
  `Sname` varchar(100) NOT NULL,
  `Street` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `StateAb` char(2) NOT NULL,
  `ZipCode` char(12) NOT NULL,
  `Sdate` date NOT NULL,
  `Telno` varchar(20) NOT NULL,
  `URL` varchar(500) NOT NULL,
  PRIMARY KEY (`sId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STORE`
--

LOCK TABLES `STORE` WRITE;
/*!40000 ALTER TABLE `STORE` DISABLE KEYS */;
INSERT INTO `STORE` VALUES (1,'Arlington Sprouts-1','1 Cooper Street','Arlington','TX','76019-0012','2023-01-10','8172721111','www.ArlingtonSprouts-1.com');
/*!40000 ALTER TABLE `STORE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STORE_CUSTOMER`
--

DROP TABLE IF EXISTS `STORE_CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STORE_CUSTOMER` (
  `sId` int NOT NULL,
  `cId` int NOT NULL,
  PRIMARY KEY (`sId`,`cId`),
  KEY `cId` (`cId`),
  CONSTRAINT `store_customer_ibfk_1` FOREIGN KEY (`sId`) REFERENCES `STORE` (`sId`),
  CONSTRAINT `store_customer_ibfk_2` FOREIGN KEY (`cId`) REFERENCES `CUSTOMER` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STORE_CUSTOMER`
--

LOCK TABLES `STORE_CUSTOMER` WRITE;
/*!40000 ALTER TABLE `STORE_CUSTOMER` DISABLE KEYS */;
INSERT INTO `STORE_CUSTOMER` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21);
/*!40000 ALTER TABLE `STORE_CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STORE_ITEM`
--

DROP TABLE IF EXISTS `STORE_ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STORE_ITEM` (
  `sId` int NOT NULL,
  `iId` int NOT NULL,
  `Scount` int NOT NULL,
  PRIMARY KEY (`sId`,`iId`),
  KEY `iId` (`iId`),
  CONSTRAINT `store_item_ibfk_1` FOREIGN KEY (`sId`) REFERENCES `STORE` (`sId`),
  CONSTRAINT `store_item_ibfk_2` FOREIGN KEY (`iId`) REFERENCES `ITEM` (`iId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STORE_ITEM`
--

LOCK TABLES `STORE_ITEM` WRITE;
/*!40000 ALTER TABLE `STORE_ITEM` DISABLE KEYS */;
INSERT INTO `STORE_ITEM` VALUES (1,1,10),(1,2,10),(1,3,10),(1,4,10),(1,5,10),(1,6,10),(1,7,10),(1,8,10),(1,9,10),(1,10,12),(1,11,13),(1,12,10),(1,13,16),(1,14,15);
/*!40000 ALTER TABLE `STORE_ITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VENDOR`
--

DROP TABLE IF EXISTS `VENDOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VENDOR` (
  `vId` int NOT NULL,
  `Vname` varchar(100) NOT NULL,
  `Street` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `StateAb` char(2) NOT NULL,
  `Zipcode` char(12) NOT NULL,
  PRIMARY KEY (`vId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VENDOR`
--

LOCK TABLES `VENDOR` WRITE;
/*!40000 ALTER TABLE `VENDOR` DISABLE KEYS */;
INSERT INTO `VENDOR` VALUES (1,'Organic Nature','1500 E Exchange Road','Allen','TX','75002-4504'),(2,'Green Valley','1405 Julian Street','Addison','TX','75001-4633'),(3,'Green Mountains','800 Preston Road','Gunter','TX','75058-0001'),(4,'Whole Foods','1010 Spicewood Drive','Garland','TX','75044-2569'),(5,'LA Queen','500 Angi Road','Minden','LA','71055-1004'),(6,'Castor Sprouts','100 New Ramah Road','Castor','LA','71016-2402');
/*!40000 ALTER TABLE `VENDOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VENDOR_ITEM`
--

DROP TABLE IF EXISTS `VENDOR_ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VENDOR_ITEM` (
  `vId` int NOT NULL,
  `iId` int NOT NULL,
  `Vprice` decimal(10,2) NOT NULL,
  PRIMARY KEY (`vId`,`iId`),
  KEY `iId` (`iId`),
  CONSTRAINT `vendor_item_ibfk_1` FOREIGN KEY (`vId`) REFERENCES `VENDOR` (`vId`),
  CONSTRAINT `vendor_item_ibfk_2` FOREIGN KEY (`iId`) REFERENCES `ITEM` (`iId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VENDOR_ITEM`
--

LOCK TABLES `VENDOR_ITEM` WRITE;
/*!40000 ALTER TABLE `VENDOR_ITEM` DISABLE KEYS */;
INSERT INTO `VENDOR_ITEM` VALUES (1,1,2.00),(1,2,2.00),(1,3,1.00),(1,14,1.00),(2,4,3.00),(2,5,2.00),(2,6,2.00),(2,13,4.00),(3,7,3.00),(3,8,2.00),(3,9,2.00),(3,10,2.00),(4,11,3.00),(4,12,3.00),(4,13,2.00),(4,14,2.00),(5,7,3.00),(5,11,2.00),(5,13,5.00),(5,14,3.00),(6,7,2.00),(6,8,1.00),(6,9,3.00),(6,10,4.00);
/*!40000 ALTER TABLE `VENDOR_ITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VENDOR_STORE`
--

DROP TABLE IF EXISTS `VENDOR_STORE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VENDOR_STORE` (
  `vId` int NOT NULL,
  `sId` int NOT NULL,
  PRIMARY KEY (`vId`,`sId`),
  KEY `sId` (`sId`),
  CONSTRAINT `vendor_store_ibfk_1` FOREIGN KEY (`vId`) REFERENCES `VENDOR` (`vId`),
  CONSTRAINT `vendor_store_ibfk_2` FOREIGN KEY (`sId`) REFERENCES `STORE` (`sId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VENDOR_STORE`
--

LOCK TABLES `VENDOR_STORE` WRITE;
/*!40000 ALTER TABLE `VENDOR_STORE` DISABLE KEYS */;
INSERT INTO `VENDOR_STORE` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1);
/*!40000 ALTER TABLE `VENDOR_STORE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-15 23:11:58
