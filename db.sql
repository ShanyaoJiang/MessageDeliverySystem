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
  PRIMARY KEY (`messageid`),
  UNIQUE KEY `messageid_UNIQUE` (`messageid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES ('0f17b0c2-cc43-44b8-b489-069201c4748e','11','11','ctrilld@tom.com',NULL,'OH',NULL,'\0'),('11c65423-b963-40b0-9505-baf8d4511690','6','6','ctrilld@tom.com',NULL,'CT',NULL,'\0'),('139fb097-3ad5-442b-bcc3-a119e64516f2','dsaf','dfsa','ctrilld@tom.com',NULL,'RL',NULL,'\0'),('22b42058-6c98-4f34-862f-1fe57164b924','12','12','ctrilld@tom.com',NULL,'RL',NULL,'\0'),('22edd064-a475-4a05-b2a9-728d7c8beca7','20','20','bwang24@buffalo.edu',NULL,'DE',NULL,'\0'),('34ea43b9-1a2d-4731-b36f-46124f9adf24','14','14','ctrilld@tom.com',NULL,'MD',NULL,'\0'),('3d064540-0dd7-430d-9ec7-08931158c5d4','4','4','ctrilld@tom.com',NULL,'NJ',NULL,'\0'),('4341e929-27b3-49be-8408-97218c937f97','1','1','ctrilld@tom.com',NULL,'NY',NULL,'\0'),('47e67b7e-55d1-48cf-95ce-60744440be30','13','13','ctrilld@tom.com',NULL,'RL',NULL,'\0'),('57588ba5-ee63-4fb9-bec8-b64db1ce1e46','dfsa','dfsa','ctrilld@tom.com',NULL,'RL',NULL,'\0'),('5a9ce04f-ad69-4621-8c98-37743bca40b2','dsafds','asdfdsa','ctrilld@tom.com',NULL,'Select',NULL,'\0'),('604d3b82-5199-4cad-9a45-29ef2d51b4c9','wf','safd','ctrilld@tom.com',NULL,'VA',NULL,'\0'),('6c168d7a-60d1-48f0-b0dd-2bc3c543e12b','sad','fdas','ctrilld@tom.com',NULL,'OH',NULL,'\0'),('6e0e7113-5d9d-4bb9-874f-e991575ebfc5','dfas','dfasf','ctrilld@tom.com',NULL,'DE',NULL,'\0'),('7514112a-b621-45c6-8549-bed77759a4f5','asdf','dfsa','ctrilld@tom.com',NULL,'PA',NULL,'\0'),('759eb503-2f7a-4c8f-9b31-fa6658899b97','8','8','ctrilld@tom.com',NULL,'MA',NULL,'\0'),('8210408c-5861-4197-8dec-bff78c7f6971','3','3','ctrilld@tom.com',NULL,'NH',NULL,'\0'),('8361e51b-e09f-4cdf-8142-5a76b5fe490b','heh','fjasd;l','ctrilld@tom.com',NULL,'RL',NULL,'\0'),('943dcb20-4454-4da9-b7c5-afa8fef416fa','2','2','ctrilld@tom.com',NULL,'CA',NULL,'\0'),('98d08a7a-37da-4172-82d0-71071d27f72b','10','10','ctrilld@tom.com',NULL,'SC',NULL,'\0'),('a471e008-5709-4ddd-81ef-3785ea376947','15','15','ctrilld@tom.com',NULL,'VA',NULL,'\0'),('b82ef654-36fe-4043-a27e-a57d60432776','sadf','dfsa','ctrilld@tom.com',NULL,'OH',NULL,'\0'),('bf754149-4c1a-40d1-bf9b-561b67f0f63f','9','9','ctrilld@tom.com',NULL,'PA',NULL,'\0'),('d2f35461-81df-49f6-a0b3-66874ab7d8c2','5','5','ctrilld@tom.com',NULL,'GA',NULL,'\0'),('e28d2d89-dfdd-4082-9308-309848b6b989','ewr','w','ctrilld@tom.com',NULL,'RL',NULL,'\0'),('e4141441-8ab6-49df-b4da-a3f69ac682cc','7','7','ctrilld@tom.com',NULL,'DE',NULL,'\0'),('e454bde1-59e1-4422-9146-e6f6b0596725','sadf','fggggggg','ctrilld@tom.com',NULL,'SC',NULL,'\0'),('f07d6268-7401-4e58-9517-d8ee732fcd31','bwang24','safsdafsadfdsaf','ctrilld@tom.com',NULL,'MA',NULL,'\0');
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
INSERT INTO `userinfo` VALUES ('','','',0),('bwang24@buffalo.edu','123456','King',0),('ctrilld@tom.com','123456','jackjiang2',0),('dsafdfsdafdsa@sadfa','dsaf','dasf',0),('ldsjfaslkfj@dsafa','123456','dfasklafsd',0),('sadfsf@sadfa','dfsa','dsaf',0);
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

-- Dump completed on 2015-04-29 14:22:11
