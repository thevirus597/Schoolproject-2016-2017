-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: rsautowerkplaats
-- ------------------------------------------------------
-- Server version	5.6.34

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
-- Table structure for table `rs_car`
--

DROP TABLE IF EXISTS `rs_car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rs_car` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `rs_car_carplate` varchar(6) NOT NULL,
  `rs_cust_id` int(100) NOT NULL,
  `rs_car_carmake` varchar(100) NOT NULL,
  `rs_car_carmodel` varchar(100) NOT NULL,
  `rs_car_carchas` varchar(100) NOT NULL,
  `rs_car_caryear` year(4) NOT NULL,
  `rs_carkeur` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rs_car_carplate` (`rs_car_carplate`),
  KEY `rs_cust_id` (`rs_cust_id`),
  CONSTRAINT `rs_car_ibfk_1` FOREIGN KEY (`rs_cust_id`) REFERENCES `rs_customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_car`
--

LOCK TABLES `rs_car` WRITE;
/*!40000 ALTER TABLE `rs_car` DISABLE KEYS */;
INSERT INTO `rs_car` VALUES (85,'1121AA',131,'MITSUBISHI','L200','4E',2001,NULL),(86,'1222QP',132,'ISUZU','DMAX','HELLO',2001,NULL),(88,'3232WP',146,'TOYOTA','4RUNNER','4GB1',2004,'2018-07-08'),(93,'1212QQ',158,'TOYOTA','CARINA','4E',2001,'2018-07-10'),(96,'5654QQ',149,'ACURA','M4','4E',2001,NULL),(97,'1225WP',149,'ASTON MARTIN','GRAN VITARA','4E',2001,NULL),(98,'1212WP',145,'ASTON MARITN','GRAND VITARA','4E',2001,'2018-07-10'),(99,'1212SQ',156,'TOYOTA','CARINA','4E',2001,NULL),(100,'1111AP',161,'AUDI','A7','4BG1',2017,NULL),(101,'1112AP',160,'ISUZU','TRANSMANX','5E',2016,NULL),(102,'11113',162,'ASTON MARITN','DB11','6TR1',2017,'2018-07-10'),(103,'1113WP',163,'FERRARI','F430','4E',2001,NULL);
/*!40000 ALTER TABLE `rs_car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_customer`
--

DROP TABLE IF EXISTS `rs_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rs_customer` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `rs_cust_name` varchar(100) NOT NULL,
  `rs_cust_surname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_customer`
--

LOCK TABLES `rs_customer` WRITE;
/*!40000 ALTER TABLE `rs_customer` DISABLE KEYS */;
INSERT INTO `rs_customer` VALUES (131,'Shayants','Soebasmanie'),(132,'Shayant','Sello'),(134,'Zoe','Jadi'),(144,'Shin','Uchiha'),(145,'Shayant','Sital'),(146,'Abdoel','Gow'),(147,'Shayant','Faide'),(148,'Ram','Gobiemd'),(149,'Trex','Tyran'),(150,'Qubert','Nintendo'),(151,'Kevin','Edoo'),(152,'Abdoel',''),(153,'Remi','Abdoel'),(154,'Staatsolie',''),(155,'Heyman','Tyran'),(156,'Shayant','Tyran'),(157,'Staatsolie','Sital'),(158,'Cic',''),(159,'Tony','Stark'),(160,'Steve','Rogers'),(161,'Shield',''),(162,'Dracula','Alucard'),(163,'G','Shimada');
/*!40000 ALTER TABLE `rs_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_service`
--

DROP TABLE IF EXISTS `rs_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rs_service` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `rs_service` varchar(100) NOT NULL,
  `rs_custid` int(100) NOT NULL,
  `rs_userid` int(100) NOT NULL,
  `rs_carplate` varchar(100) NOT NULL,
  `rs_serviceinfo` text NOT NULL,
  `rs_towstatus` int(1) DEFAULT NULL,
  `rs_price` int(100) NOT NULL,
  `rs_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rs_custid` (`rs_custid`),
  KEY `rs_userid` (`rs_userid`),
  KEY `rs_carplate` (`rs_carplate`),
  KEY `rs_custid_2` (`rs_custid`),
  CONSTRAINT `rs_service_ibfk_1` FOREIGN KEY (`rs_carplate`) REFERENCES `rs_car` (`rs_car_carplate`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rs_service_ibfk_2` FOREIGN KEY (`rs_custid`) REFERENCES `rs_customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rs_service_ibfk_3` FOREIGN KEY (`rs_userid`) REFERENCES `rs_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_service`
--

LOCK TABLES `rs_service` WRITE;
/*!40000 ALTER TABLE `rs_service` DISABLE KEYS */;
INSERT INTO `rs_service` VALUES (113,'service',159,22,'1111AP','Smeerolie Filter,Lucht Filter',NULL,450,'2017-07-10'),(114,'reparatie',160,41,'1112AP','Alles was kapot',NULL,450,'2017-07-10'),(115,'sleepdienst',161,22,'1111AP','Kwattaweg 431',0,450,'2017-07-10'),(116,'keuring',162,41,'11113','gekeurd',NULL,450,'2017-07-10'),(117,'reparatie',163,41,'1113WP','Venders vervangen',NULL,450,'2017-07-10');
/*!40000 ALTER TABLE `rs_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_user`
--

DROP TABLE IF EXISTS `rs_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rs_user` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `rs_name` varchar(100) NOT NULL,
  `rs_surname` varchar(100) NOT NULL,
  `rs_username` varchar(100) NOT NULL,
  `rs_password` varchar(100) NOT NULL,
  `rs_level` enum('standard','admin') NOT NULL DEFAULT 'standard',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_user`
--

LOCK TABLES `rs_user` WRITE;
/*!40000 ALTER TABLE `rs_user` DISABLE KEYS */;
INSERT INTO `rs_user` VALUES (22,'Kevin','Edoo','kevinedoo15','$2y$10$26YmwmGG2B14O90Yvw9tzONrcyqOqvCsqp1IiJ8xFuMrQKbEdAxS.','standard'),(40,'shayant','sital','shayantsital1','$2y$10$M/aSnTtryRP8.zYPpBrD9OleCRBxeEl9P94Gng75DC3lH37Ur85TC','admin'),(41,'Nirul','Sultans','nirulsultan32','$2y$10$umNdq9JGhVL.ArekjNuU9ublDIcbzmpcWmD8V30WZEljk4KqHMkQ.','standard');
/*!40000 ALTER TABLE `rs_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-18 20:55:05
