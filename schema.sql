-- MariaDB dump 10.19-11.2.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: schema
-- ------------------------------------------------------
-- Server version	11.2.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `newtable`
--

DROP TABLE IF EXISTS `newtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newtable` (
  `Column1` int(11) NOT NULL AUTO_INCREMENT,
  `Column2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Column1`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newtable`
--

LOCK TABLES `newtable` WRITE;
/*!40000 ALTER TABLE `newtable` DISABLE KEYS */;
/*!40000 ALTER TABLE `newtable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `Test` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Test`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test3`
--

DROP TABLE IF EXISTS `test3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test3` (
  `Test3` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Test3`),
  KEY `Test_Test_IDX` (`Test3`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test3`
--

LOCK TABLES `test3` WRITE;
/*!40000 ALTER TABLE `test3` DISABLE KEYS */;
/*!40000 ALTER TABLE `test3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv`
--

DROP TABLE IF EXISTS `tv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv` (
  `idtv` int(11) NOT NULL AUTO_INCREMENT,
  `Acheter` tinyint(4) DEFAULT NULL,
  `Marque` varchar(45) DEFAULT NULL,
  `Prix` int(11) DEFAULT NULL,
  `Taille` int(11) DEFAULT NULL,
  `Fonctionnel` tinyint(4) DEFAULT NULL,
  `Cause` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtv`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv`
--

LOCK TABLES `tv` WRITE;
/*!40000 ALTER TABLE `tv` DISABLE KEYS */;
INSERT INTO `tv` VALUES
(2,NULL,'samsung',100,267,NULL,NULL),
(3,NULL,'Sam',3,34,NULL,NULL),
(4,NULL,'Philips',599,55,NULL,NULL),
(6,1,'Pillips',348,45,NULL,NULL),
(7,1,'test  ',343,23,NULL,NULL),
(8,1,'fdsfesf',343,34,NULL,NULL),
(9,1,'Samsung',456,54,NULL,NULL),
(11,1,'Samsung',4435,34,NULL,NULL),
(12,1,'Samsung',345,23,NULL,NULL),
(13,1,'fdsfd',434,34,NULL,NULL),
(14,1,'dz',1,2,NULL,NULL),
(18,1,'Samsung',590,55,0,'Batte de base ball'),
(20,0,'Phillips',456,35,1,NULL),
(21,1,'Samsung',800,60,0,'Coup de pied'),
(23,1,'LG',450,45,1,NULL),
(24,1,'Samsung',2400,60,1,NULL);
/*!40000 ALTER TABLE `tv` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-14 11:05:41
