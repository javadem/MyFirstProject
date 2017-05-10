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
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `_name` varchar(255) DEFAULT NULL,
  `producer_id` int(11) DEFAULT NULL,
  `typeProduct_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDXfc9re1k12cqu70v334b809f26` (`_name`),
  KEY `FKrml145o6nc62smx2cmi73hl1k` (`producer_id`),
  KEY `FK442vi6pclfy1g6tywlcmqagc6` (`typeProduct_id`),
  CONSTRAINT `FK442vi6pclfy1g6tywlcmqagc6` FOREIGN KEY (`typeProduct_id`) REFERENCES `type_product` (`id`),
  CONSTRAINT `FKrml145o6nc62smx2cmi73hl1k` FOREIGN KEY (`producer_id`) REFERENCES `producer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES (1,'ant60',1,2),(2,'ant90',1,2),(3,'ant120',1,2),(4,'dm800 hd',2,1),(5,'dm800 hd clon',17,1),(6,'dm800 se',2,1),(7,'dm800 se clon',17,1),(8,'8900',3,1),(9,'mini',3,1),(10,'solo',4,1),(11,'zero',4,1),(12,'duo',4,1),(13,'solo2',4,1),(14,'solo4k',4,1),(15,'duo2',4,1),(16,'9500',5,1),(17,'1218',6,1),(18,'1228',6,1),(19,'1227',6,1),(20,'1237',6,1),(21,'et7000',7,1),(22,'et10000',7,1),(23,'x90',8,1),(24,'4100hd',8,1),(25,'q44',9,1),(26,'q02',9,1),(27,'x4',10,1),(28,'alter',13,1),(29,'k0 mini',13,1),(30,'8120',14,1),(31,'micro',14,1),(32,'4050hd',18,1),(33,'single',18,3),(34,'twin',18,3),(35,'quad',18,3),(36,'twin ort',19,3),(37,'euro4x1',18,4),(38,'sat4x1',6,4),(39,'tiger4x1',8,4),(40,'qsat6x1',9,4),(41,'t57',7,5),(42,'2017',11,5),(43,'5050',8,5),(44,'es108',18,5),(45,'uhf19',1,6),(46,'023',20,7),(47,'021',20,8),(48,'x96',5,9),(49,'premium',7,10),(50,'remtuner',21,11),(51,'remanten',21,12),(52,'montage',21,13),(53,'fin660',15,14),(54,'fin690',15,14),(55,'sp660',16,14),(56,'sp690',16,14),(57,'cons30',1,15),(58,'cons40',1,1),(59,'trin30',1,15),(60,'trin40',1,15),(61,'x800',22,16),(62,'4100c',19,16),(63,'4000',17,16),(64,'steker',17,17),(65,'F',17,17),(66,'skoba',17,17),(67,'dubel14',17,17),(68,'5370',6,18),(69,'7601',6,18);
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
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
