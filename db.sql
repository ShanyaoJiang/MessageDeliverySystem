-- MySQL dump 10.13  Distrib 5.5.35, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: messagedelivery
-- ------------------------------------------------------
-- Server version	5.5.35-1ubuntu1

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
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `path` varchar(45) DEFAULT NULL,
  `messageid` varchar(45) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `messageid_UNIQUE` (`messageid`),
  UNIQUE KEY `path_UNIQUE` (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locationcount`
--

DROP TABLE IF EXISTS `locationcount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locationcount` (
  `state` varchar(2) NOT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`state`),
  UNIQUE KEY `state_UNIQUE` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locationcount`
--

LOCK TABLES `locationcount` WRITE;
/*!40000 ALTER TABLE `locationcount` DISABLE KEYS */;
INSERT INTO `locationcount` VALUES ('CA',3),('CT',3),('DE',5),('GA',1),('MA',3),('MD',3),('NH',1),('NJ',0),('NY',4),('OH',8),('PA',2),('RL',6),('SC',6),('VA',2);
/*!40000 ALTER TABLE `locationcount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `messageid` varchar(45) NOT NULL,
  `title` text,
  `content` text,
  `author` varchar(45) DEFAULT NULL,
  `tag` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `gallery` bit(1) DEFAULT b'0',
  `authorid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`messageid`),
  UNIQUE KEY `messageid_UNIQUE` (`messageid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES ('19d3670a-4447-44c3-9d30-618550812be6','heheheda','heheda','ctrilld@tom.com',NULL,'MD','2015-05-01 15:03:24','\0','jackjiang2'),('1bd074cb-4d1e-4e07-a22e-65d1588275cc','SC problem','heheda ','ctrilld@tom.com',NULL,'SC','2015-05-01 15:09:06','\0','jackjiang2'),('4d2ac7e8-bcfa-4684-b407-eac958af7a52','This is the King test','test','bwang24@buffalo.edu',NULL,'OH','2015-05-01 16:09:58','\0','King'),('4de2fe12-3c0b-4676-89b0-a88f676e8a13','This is the test for date','test for date','ctrilld@tom.com',NULL,'OH','2015-05-01 15:03:11','\0','jackjiang2'),('b0a50f5adbeb4caeb27c4ab25b7cba84','Another long text test','11111111111111111111111111111111111111111111111111111111111111111111 22222222222222222222222222222222222222222222222222222222222222222222 33333333333333333333333333333333333333333333333333333333333333333333 44444444444444444444444444444444444444444444444444444444444444444444 55555555555555555555555555555555555555555555555555555555555555555555 66666666666666666666666666666666666666666666666666666666666666666666 77777777777777777777777777777777777777777777777777777777777777777777 88888888888888888888888888888888888888888888888888888888888888888888 99999999999999999999999999999999999999999999999999999999999999999999 AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n','ctrilld@tom.com',NULL,'NY','2015-05-03 11:50:51','\0','jackjiang2'),('bc229029-4276-4643-bfe2-30df4ff2e9c4','Boyu Wang is facing a problem','this is test for date.','ctrilld@tom.com',NULL,'SC','2015-05-01 15:06:46','\0','jackjiang2'),('bfa574a6d1c4468b870b47284cbeed55','Long text test','11111111111111111111111111111111111111111111111111111111111111111111\r\n22222222222222222222222222222222222222222222222222222222222222222222\r\n33333333333333333333333333333333333333333333333333333333333333333333\r\n44444444444444444444444444444444444444444444444444444444444444444444\r\n55555555555555555555555555555555555555555555555555555555555555555555\r\n66666666666666666666666666666666666666666666666666666666666666666666\r\n77777777777777777777777777777777777777777777777777777777777777777777\r\n88888888888888888888888888888888888888888888888888888888888888888888\r\n99999999999999999999999999999999999999999999999999999999999999999999\r\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\r\nBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB\r\nCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC\r\nDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD\r\nEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE\r\nFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF','ctrilld@tom.com',NULL,'NY','2015-05-03 11:48:19','\0','jackjiang2');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userinfo` (
  `email` varchar(45) NOT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  `userid` varchar(45) DEFAULT NULL,
  `messagecount` int(11) DEFAULT '0',
  PRIMARY KEY (`email`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES ('','','',0),('bwang24@buffalo.edu','123456','King',0),('ctrilld@tom.com','123456','jackjiang2',0),('dsafdfsdafdsa@sadfa','dsaf','dasf',0),('ldsjfaslkfj@dsafa','123456','dfasklafsd',0),('sadfsf@sadfa','dfsa','dsaf',0),('wangboyu@gmail.com','1234567','King',0);
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'messagedelivery'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-03 11:59:42
