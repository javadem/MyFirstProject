CREATE DATABASE  IF NOT EXISTS `shopsat` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `shopsat`;
-- MySQL dump 10.13  Distrib 5.5.55, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: shopsat
-- ------------------------------------------------------
-- Server version	5.5.55-0+deb8u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `_user`
--

DROP TABLE IF EXISTS `_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `_email` varchar(255) DEFAULT NULL,
  `_password` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `_name` varchar(255) DEFAULT NULL,
  `shopingCart_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX5f942gk656mptvmko5ok15g7t` (`_name`),
  KEY `FKt2crjfr9u4h6taxkl1die2dl3` (`shopingCart_id`),
  CONSTRAINT `FKt2crjfr9u4h6taxkl1die2dl3` FOREIGN KEY (`shopingCart_id`) REFERENCES `shopingCart` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_user`
--

LOCK TABLES `_user` WRITE;
/*!40000 ALTER TABLE `_user` DISABLE KEYS */;
INSERT INTO `_user` VALUES (1,'admin@com.ua','$2a$05$E6sncXYcs4lxtAm8m9zpwO9GnDsBew8x/hawqemEr4zuXtS/l18K6',1,'admin',1),(2,NULL,NULL,0,NULL,2),(3,'user1@com.ua','$2a$05$bnybBzG8YWkwkTa7IXtMm.lPb0nQTAkUdyyzsNR/GrTFJjcDaINXS',0,'user1',3),(4,'user2@com.ua','$2a$05$Mp1rUfVgbspL/RFIPKlBau1HF/eE06WhwgImFX0YUWau8PgJi7SKS',0,'user2',4),(10,NULL,NULL,0,NULL,10);
/*!40000 ALTER TABLE `_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-10 20:34:13
