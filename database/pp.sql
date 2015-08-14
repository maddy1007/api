-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: placementportal
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.04.1

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
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `districts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) NOT NULL,
  `district_name` varchar(45) COLLATE utf8_bin NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `excel_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `districts`
--

LOCK TABLES `districts` WRITE;
/*!40000 ALTER TABLE `districts` DISABLE KEYS */;
INSERT INTO `districts` VALUES (1,1,'Raipur','2015-08-11 17:10:13','2015-08-11 17:10:13',2),(2,1,'Bilaspur','2015-08-11 17:10:13','2015-08-11 17:10:13',2),(3,1,'Janjgir Champa','2015-08-11 17:10:13','2015-08-11 17:10:13',2),(4,1,'Durg','2015-08-11 17:10:13','2015-08-11 17:10:13',2),(5,1,'Korba','2015-08-11 17:10:13','2015-08-11 17:10:13',2),(6,1,'Rajnandgaon','2015-08-11 17:10:13','2015-08-11 17:10:13',2),(7,1,'Raigarh','2015-08-11 17:10:13','2015-08-11 17:10:13',2),(8,1,'Sarguja','2015-08-11 17:10:14','2015-08-11 17:10:14',2),(9,1,'Jashpur','2015-08-11 17:10:14','2015-08-11 17:10:14',2),(10,1,'Mahasamund','2015-08-11 17:10:14','2015-08-11 17:10:14',2),(11,2,'Surat','2015-08-11 17:10:14','2015-08-11 17:10:14',2),(12,3,'Pune','2015-08-11 17:10:14','2015-08-11 17:10:14',2),(13,3,'Mumbai','2015-08-11 17:10:14','2015-08-11 17:10:14',2),(14,3,'Thane','2015-08-11 17:10:14','2015-08-11 17:10:14',2),(15,3,'Nashik','2015-08-11 17:10:14','2015-08-11 17:10:14',2),(16,3,'Satara','2015-08-11 17:10:14','2015-08-11 17:10:14',2),(17,3,'Ahmednagar','2015-08-11 17:10:14','2015-08-11 17:10:14',2),(18,3,'Kolhapur','2015-08-11 17:10:14','2015-08-11 17:10:14',2),(19,3,'Jalgaon','2015-08-11 17:10:14','2015-08-11 17:10:14',2),(20,3,'Amravati','2015-08-11 17:10:14','2015-08-11 17:10:14',2),(21,3,'Aurangabad','2015-08-11 17:10:14','2015-08-11 17:10:14',2),(22,3,'Akola','2015-08-11 17:10:15','2015-08-11 17:10:15',2),(23,3,'Nagpur','2015-08-11 17:10:15','2015-08-11 17:10:15',2),(24,4,'Bangalore','2015-08-11 17:10:15','2015-08-11 17:10:15',2),(25,4,'Mysore','2015-08-11 17:10:15','2015-08-11 17:10:15',2),(26,4,'Kolar','2015-08-11 17:10:15','2015-08-11 17:10:15',2),(27,4,'Bangalore Rural','2015-08-11 17:10:15','2015-08-11 17:10:15',2),(28,4,'Chikballapur','2015-08-11 17:10:15','2015-08-11 17:10:15',2),(29,4,'Hassan','2015-08-11 17:10:15','2015-08-11 17:10:15',2),(30,4,'Tumkur','2015-08-11 17:10:15','2015-08-11 17:10:15',2),(31,5,'Chennai','2015-08-11 17:10:15','2015-08-11 17:10:15',2),(32,5,'Kancheepuram','2015-08-11 17:10:15','2015-08-11 17:10:15',2),(33,5,'Thiruvallur','2015-08-11 17:10:15','2015-08-11 17:10:15',2),(34,5,'Vellore','2015-08-11 17:10:15','2015-08-11 17:10:15',2),(35,5,'Coimbatore','2015-08-11 17:10:15','2015-08-11 17:10:15',2),(36,6,'North Goa','2015-08-11 17:10:15','2015-08-11 17:10:15',2),(37,2,'Ahmedabad','2015-08-11 17:10:16','2015-08-11 17:10:16',2),(38,2,'Vadodara','2015-08-11 17:10:16','2015-08-11 17:10:16',2),(39,2,'Bharuch','2015-08-11 17:10:16','2015-08-11 17:10:16',2),(40,2,'Kheda','2015-08-11 17:10:16','2015-08-11 17:10:16',2),(41,2,'Patan','2015-08-11 17:10:16','2015-08-11 17:10:16',2),(42,2,'Gandhinagar','2015-08-11 17:10:16','2015-08-11 17:10:16',2),(43,7,'Indore','2015-08-11 17:10:16','2015-08-11 17:10:16',2),(44,7,'Ratlam','2015-08-11 17:10:16','2015-08-11 17:10:16',2),(45,7,'Dhar','2015-08-11 17:10:16','2015-08-11 17:10:16',2),(46,7,'Vidisha','2015-08-11 17:10:16','2015-08-11 17:10:16',2),(47,8,'Bhilwara','2015-08-11 17:10:16','2015-08-11 17:10:16',2),(48,8,'Jodhpur','2015-08-11 17:10:16','2015-08-11 17:10:16',2),(49,8,'Nagaur','2015-08-11 17:10:16','2015-08-11 17:10:16',2),(50,8,'Dungarpur','2015-08-11 17:10:16','2015-08-11 17:10:16',2),(51,8,'Ajmer','2015-08-11 17:10:16','2015-08-11 17:10:16',2),(52,8,'Bundi','2015-08-11 17:10:16','2015-08-11 17:10:16',2),(53,8,'Pali','2015-08-11 17:10:16','2015-08-11 17:10:16',2),(54,8,'Sawai Madhopur','2015-08-11 17:10:16','2015-08-11 17:10:16',2),(55,8,'Baran','2015-08-11 17:10:16','2015-08-11 17:10:16',2),(56,8,'Kota','2015-08-11 17:10:16','2015-08-11 17:10:16',2),(57,9,'Sirmur','2015-08-11 17:10:16','2015-08-11 17:10:16',2),(58,9,'Solan','2015-08-11 17:10:16','2015-08-11 17:10:16',2),(59,9,'Shimla','2015-08-11 17:10:16','2015-08-11 17:10:16',2),(60,10,'Patiala','2015-08-11 17:10:16','2015-08-11 17:10:16',2),(61,10,'Gurdaspur','2015-08-11 17:10:16','2015-08-11 17:10:16',2),(62,10,'Ludhiana','2015-08-11 17:10:16','2015-08-11 17:10:16',2),(63,10,'Amritsar','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(64,10,'Hoshiarpur','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(65,10,'Jalandhar','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(66,10,'Chandigarh','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(67,11,'Dehradun','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(68,11,'Haridwar','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(69,12,'Gurgaon','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(70,12,'Hisar','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(71,12,'Panipat','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(72,12,'Sonepat','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(73,12,'Jhajjar','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(74,12,'Karnal','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(75,12,'Faridabad','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(76,12,'Rohtak','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(77,8,'Jaipur','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(78,8,'Jhunjhunu','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(79,8,'Alwar','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(80,8,'Bharatpur','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(81,8,'Churu','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(82,13,'Ghaziabad','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(83,13,'Meerut','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(84,13,'Gautam Budh Nagar','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(85,13,'Aligarh','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(86,13,'Agra','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(87,13,'Bijnor','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(88,13,'Mathura','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(89,13,'Bulandshahar','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(90,13,'Lucknow','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(91,13,'KanpurNagar','2015-08-11 17:10:17','2015-08-11 17:10:17',2),(92,13,'Barabanki','2015-08-11 17:10:18','2015-08-11 17:10:18',2),(93,13,'Allahabad','2015-08-11 17:10:18','2015-08-11 17:10:18',2),(94,13,'Faizabad','2015-08-11 17:10:18','2015-08-11 17:10:18',2),(95,13,'Sitapur','2015-08-11 17:10:18','2015-08-11 17:10:18',2),(96,13,'Unnao','2015-08-11 17:10:18','2015-08-11 17:10:18',2),(97,13,'Jhansi','2015-08-11 17:10:18','2015-08-11 17:10:18',2),(98,14,'Patna','2015-08-11 17:10:18','2015-08-11 17:10:18',2),(99,15,'East Sikkim','2015-08-11 17:10:18','2015-08-11 17:10:18',2),(100,15,'South Sikkim','2015-08-11 17:10:18','2015-08-11 17:10:18',2),(101,16,'Arwal','2015-08-11 17:10:35','2015-08-11 17:10:35',0),(102,14,'Gaya','2015-08-11 17:10:45','2015-08-11 17:10:45',0),(103,16,'Harda','2015-08-12 15:21:07','2015-08-12 15:21:07',0);
/*!40000 ALTER TABLE `districts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_levels`
--

DROP TABLE IF EXISTS `education_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `education_level_name` varchar(45) COLLATE utf8_bin NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_levels`
--

LOCK TABLES `education_levels` WRITE;
/*!40000 ALTER TABLE `education_levels` DISABLE KEYS */;
INSERT INTO `education_levels` VALUES (1,'Graduate','2015-07-08 15:25:00','2015-07-08 15:25:00'),(2,'Under Graduate','2015-07-08 15:25:00','2015-07-08 15:25:00'),(3,'11th to 12th','2015-07-08 15:25:00','2015-07-08 15:25:00'),(4,'Post Graduate','2015-07-08 15:25:00','2015-07-08 15:25:00'),(5,'9th to 10th','2015-07-08 15:25:00','2015-07-08 15:25:00'),(6,'5th to 8th','2015-07-08 15:25:00','2015-07-08 15:25:00'),(7,'Polytechnic','2015-07-08 15:25:00','2015-07-08 15:25:00'),(8,'Diploma','2015-07-08 15:26:00','2015-07-08 15:26:00'),(9,'ITI','2015-07-08 15:26:00','2015-07-08 15:26:00');
/*!40000 ALTER TABLE `education_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `excels`
--

DROP TABLE IF EXISTS `excels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `excels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `excel_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `total_rows` int(11) DEFAULT NULL,
  `total_upload` int(11) DEFAULT NULL,
  `total_rejected` int(11) DEFAULT NULL,
  `total_empty` int(11) DEFAULT NULL,
  `csv_path` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `error_csv_path` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8_bin DEFAULT 'admin',
  `type` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `excels`
--

LOCK TABLES `excels` WRITE;
/*!40000 ALTER TABLE `excels` DISABLE KEYS */;
INSERT INTO `excels` VALUES (1,'States.csv',15,15,0,0,'uploads/states/input/20150811050949States.csv','/home/manav/public_html/placementportal/app/webroot/uploads/states/output/20150811050949States.csv','2015-08-11 05:09:50','Administrator','States Data'),(2,'Districts.csv',100,100,0,0,'uploads/districts/input/20150811051013Districts.csv','/home/manav/public_html/placementportal/app/webroot/uploads/districts/output/20150811051013Districts.csv','2015-08-11 05:10:13','Administrator','Districts Data'),(3,'Sector.csv',34,34,0,0,'uploads/sectors/input/20150811051111Sector.csv','/home/manav/public_html/placementportal/app/webroot/uploads/sectors/output/20150811051111Sector.csv','2015-08-11 05:11:11','Administrator','Sectors Data'),(4,'Stepwise process 20150724 version 2-1.csv',7,2,5,0,'uploads/sdms/input/20150811051133Stepwise_process_20150724_version_2-1.csv','/home/manav/public_html/placementportal/app/webroot/uploads/sdms/output/20150811051133Stepwise_process_20150724_version_2-1.csv','2015-08-11 05:11:33','Administrator','SDMS Data'),(5,'Stepwise process 20150724 version 2-1.csv',7,0,7,0,'uploads/sdms/input/20150812122347Stepwise_process_20150724_version_2-1.csv','/home/manav/public_html/placementportal/app/webroot/uploads/sdms/output/20150812122347Stepwise_process_20150724_version_2-1.csv','2015-08-12 12:23:47','Administrator','SDMS Data'),(6,'Stepwise process 20150724 version 2-1.csv',7,2,5,0,'uploads/sdms/input/20150812123606Stepwise_process_20150724_version_2-1.csv','/home/manav/public_html/placementportal/app/webroot/uploads/sdms/output/20150812123606Stepwise_process_20150724_version_2-1.csv','2015-08-12 12:36:06','Administrator','SDMS Data'),(7,'Stepwise process 20150724 version 2-1.csv',7,NULL,NULL,NULL,'uploads/sdms/input/20150812032321Stepwise_process_20150724_version_2-1.csv',NULL,'2015-08-12 03:23:21','Administrator','SDMS Data'),(8,'Stepwise process 20150724 version 2-1.csv',7,NULL,NULL,NULL,'uploads/sdms/input/20150812032347Stepwise_process_20150724_version_2-1.csv',NULL,'2015-08-12 03:23:47','Administrator','SDMS Data'),(9,'Stepwise process 20150724 version 2-1.csv',7,5,2,0,'uploads/sdms/input/20150812032443Stepwise_process_20150724_version_2-1.csv','/home/manav/public_html/placementportal/app/webroot/uploads/sdms/output/20150812032443Stepwise_process_20150724_version_2-1.csv','2015-08-12 03:24:43','Administrator','SDMS Data'),(10,'Stepwise process 20150724 version 2-1.csv',7,5,2,0,'uploads/sdms/input/20150812032719Stepwise_process_20150724_version_2-1.csv','/home/manav/public_html/placementportal/app/webroot/uploads/sdms/output/20150812032719Stepwise_process_20150724_version_2-1.csv','2015-08-12 03:27:19','Administrator','SDMS Data'),(11,'Stepwise process 20150724 version 2-1.csv',7,5,2,0,'uploads/sdms/input/20150812032838Stepwise_process_20150724_version_2-1.csv','/home/manav/public_html/placementportal/app/webroot/uploads/sdms/output/20150812032838Stepwise_process_20150724_version_2-1.csv','2015-08-12 03:28:38','Administrator','SDMS Data'),(12,'Stepwise process 20150724 version 2-1.csv',7,5,2,0,'uploads/sdms/input/20150812032945Stepwise_process_20150724_version_2-1.csv','/home/manav/public_html/placementportal/app/webroot/uploads/sdms/output/20150812032945Stepwise_process_20150724_version_2-1.csv','2015-08-12 03:29:45','Administrator','SDMS Data'),(13,'Stepwise process 20150724 version 2-1.csv',7,5,2,0,'uploads/sdms/input/20150812034511Stepwise_process_20150724_version_2-1.csv','/home/manav/public_html/placementportal/app/webroot/uploads/sdms/output/20150812034511Stepwise_process_20150724_version_2-1.csv','2015-08-12 03:45:11','Administrator','SDMS Data'),(14,'Stepwise process 20150724 version 2-1.csv',7,5,2,0,'uploads/sdms/input/20150812034604Stepwise_process_20150724_version_2-1.csv','/home/manav/public_html/placementportal/app/webroot/uploads/sdms/output/20150812034604Stepwise_process_20150724_version_2-1.csv','2015-08-12 03:46:04','Administrator','SDMS Data'),(15,'Stepwise process 20150724 version 2-1.csv',7,5,2,0,'uploads/sdms/input/20150812035148Stepwise_process_20150724_version_2-1.csv','/home/manav/public_html/placementportal/app/webroot/uploads/sdms/output/20150812035148Stepwise_process_20150724_version_2-1.csv','2015-08-12 03:51:48','Administrator','SDMS Data'),(16,'Stepwise process 20150724 version 2-1.csv',7,5,2,0,'uploads/sdms/input/20150812035303Stepwise_process_20150724_version_2-1.csv','/home/manav/public_html/placementportal/app/webroot/uploads/sdms/output/20150812035303Stepwise_process_20150724_version_2-1.csv','2015-08-12 03:53:03','Administrator','SDMS Data'),(17,'SDMS.csv',7,NULL,NULL,NULL,'uploads/sdms/input/20150812051958SDMS.csv',NULL,'2015-08-12 05:19:58','Administrator','SDMS Data'),(18,'SDMS.csv',7,NULL,NULL,NULL,'uploads/sdms/input/20150812052056SDMS.csv',NULL,'2015-08-12 05:20:56','Administrator','SDMS Data'),(19,'SDMS.csv',7,NULL,NULL,NULL,'uploads/sdms/input/20150812052127SDMS.csv',NULL,'2015-08-12 05:21:27','Administrator','SDMS Data'),(20,'SDMS.csv',7,NULL,NULL,NULL,'uploads/sdms/input/20150812052357SDMS.csv',NULL,'2015-08-12 05:23:57','Administrator','SDMS Data'),(21,'SDMS.csv',7,NULL,NULL,NULL,'uploads/sdms/input/20150812052441SDMS.csv',NULL,'2015-08-12 05:24:41','Administrator','SDMS Data'),(22,'SDMS.csv',7,NULL,NULL,NULL,'uploads/sdms/input/20150812052516SDMS.csv',NULL,'2015-08-12 05:25:16','Administrator','SDMS Data'),(23,'SDMS.csv',7,NULL,NULL,NULL,'uploads/sdms/input/20150812052540SDMS.csv',NULL,'2015-08-12 05:25:40','Administrator','SDMS Data'),(24,'SDMS.csv',7,NULL,NULL,NULL,'uploads/sdms/input/20150813095855SDMS.csv',NULL,'2015-08-13 09:58:55','Administrator','SDMS Data'),(25,'SDMS.csv',7,NULL,NULL,NULL,'uploads/sdms/input/20150813095935SDMS.csv',NULL,'2015-08-13 09:59:35','Administrator','SDMS Data'),(26,'SDMS.csv',7,NULL,NULL,NULL,'uploads/sdms/input/20150813100230SDMS.csv',NULL,'2015-08-13 10:02:30','Administrator','SDMS Data'),(27,'SDMS.csv',7,NULL,NULL,NULL,'uploads/sdms/input/20150813100255SDMS.csv',NULL,'2015-08-13 10:02:55','Administrator','SDMS Data'),(28,'SDMS.csv',7,NULL,NULL,NULL,'uploads/sdms/input/20150813100450SDMS.csv',NULL,'2015-08-13 10:04:50','Administrator','SDMS Data'),(29,'SDMS.csv',7,NULL,NULL,NULL,'uploads/sdms/input/20150813100508SDMS.csv',NULL,'2015-08-13 10:05:08','Administrator','SDMS Data'),(30,'SDMS.csv',7,NULL,NULL,NULL,'uploads/sdms/input/20150813100628SDMS.csv',NULL,'2015-08-13 10:06:28','Administrator','SDMS Data'),(31,'SDMS.csv',7,NULL,NULL,NULL,'uploads/sdms/input/20150813100708SDMS.csv',NULL,'2015-08-13 10:07:08','Administrator','SDMS Data'),(32,'SDMS.csv',7,NULL,NULL,NULL,'uploads/sdms/input/20150813100713SDMS.csv',NULL,'2015-08-13 10:07:13','Administrator','SDMS Data'),(33,'SDMS.csv',7,NULL,NULL,NULL,'uploads/sdms/input/20150813101436SDMS.csv',NULL,'2015-08-13 10:14:36','Administrator','SDMS Data'),(34,'SDMS.csv',7,NULL,NULL,NULL,'uploads/sdms/input/20150813101457SDMS.csv',NULL,'2015-08-13 10:14:57','Administrator','SDMS Data'),(35,'SDMS.csv',7,2,5,0,'uploads/sdms/input/20150813103632SDMS.csv','/home/manav/public_html/placementportal/app/webroot/uploads/sdms/output/20150813103632SDMS.csv','2015-08-13 10:36:32','Administrator','SDMS Data');
/*!40000 ALTER TABLE `excels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sdms_data`
--

DROP TABLE IF EXISTS `sdms_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sdms_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_id` varchar(40) COLLATE utf8_bin NOT NULL,
  `certified` enum('Y','N') COLLATE utf8_bin DEFAULT NULL,
  `account_name` varchar(500) COLLATE utf8_bin NOT NULL,
  `candidate_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `gender` enum('M','F') COLLATE utf8_bin NOT NULL,
  `dob` date NOT NULL,
  `exp_year` int(11) DEFAULT NULL,
  `exp_month` int(11) DEFAULT NULL,
  `contact_no` varchar(15) COLLATE utf8_bin NOT NULL,
  `education_level` int(11) NOT NULL,
  `candidate_state_id` int(11) NOT NULL,
  `candidate_district_id` int(11) NOT NULL,
  `sector_id` int(11) NOT NULL,
  `skill_flag1` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `skill_flag2` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `skill_flag3` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `nsqf_level` int(11) DEFAULT NULL,
  `centre_state_id` int(11) DEFAULT NULL,
  `centre_district_id` int(11) DEFAULT NULL,
  `dummy_field1` int(11) DEFAULT NULL,
  `dummy_field2` int(11) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `modified` date DEFAULT NULL,
  `excel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdms_data`
--

LOCK TABLES `sdms_data` WRITE;
/*!40000 ALTER TABLE `sdms_data` DISABLE KEYS */;
INSERT INTO `sdms_data` VALUES (1,'6872657','Y','Safeducate Learning Private Limited','Ramdas Yadav','M','1993-10-05',1,3,'7770882397',6,16,103,3,'6','7','',NULL,5,33,NULL,NULL,'2015-08-13','2015-08-13',35),(2,'6872198','Y','Safeducate Learning Private Limited','Laxchman Baghel','M','1993-10-05',NULL,0,'8754671875',6,16,103,3,'7','','6',NULL,5,33,NULL,NULL,'2015-08-13','2015-08-13',35);
/*!40000 ALTER TABLE `sdms_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sectors`
--

DROP TABLE IF EXISTS `sectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sectors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sector_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `excel_id` int(11) DEFAULT '0',
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `image_type` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sectors`
--

LOCK TABLES `sectors` WRITE;
/*!40000 ALTER TABLE `sectors` DISABLE KEYS */;
INSERT INTO `sectors` VALUES (1,'IT and ITES (Formal Employment)','2015-08-11 17:11:11','2015-08-11 17:11:11',3,NULL,NULL),(2,'Media and Entertainment','2015-08-11 17:11:11','2015-08-11 17:11:11',3,NULL,NULL),(3,'Agriculture','2015-08-11 17:11:11','2015-08-11 17:11:11',3,NULL,NULL),(4,'IT and ITES (Informal Employment)','2015-08-11 17:11:11','2015-08-11 17:11:11',3,NULL,NULL),(5,'Electronics and IT Hardware','2015-08-11 17:11:11','2015-08-11 17:11:11',3,NULL,NULL),(6,'Banking and Financial Services','2015-08-11 17:11:11','2015-08-11 17:11:11',3,NULL,NULL),(7,'Building, Construction and Real Estate Services','2015-08-11 17:11:11','2015-08-11 17:11:11',3,NULL,NULL),(8,'Security','2015-08-11 17:11:11','2015-08-11 17:11:11',3,NULL,NULL),(9,'Organised Retail','2015-08-11 17:11:11','2015-08-11 17:11:11',3,NULL,NULL),(10,'Auto and Auto components','2015-08-11 17:11:12','2015-08-11 17:11:12',3,NULL,NULL),(11,'Healthcare','2015-08-11 17:11:12','2015-08-11 17:11:12',3,NULL,NULL),(12,'Soft Skills and English Communication','2015-08-11 17:11:12','2015-08-11 17:11:12',3,NULL,NULL),(13,'Textiles and Clothing','2015-08-11 17:11:12','2015-08-11 17:11:12',3,NULL,NULL),(14,'Toursim and Hospitality Services','2015-08-11 17:11:12','2015-08-11 17:11:12',3,NULL,NULL),(15,'Food Processing/Cold Chain/Refrigeration','2015-08-11 17:11:12','2015-08-11 17:11:12',3,NULL,NULL),(16,'Telecom','2015-08-11 17:11:12','2015-08-11 17:11:12',3,NULL,NULL),(17,'Informal Sectors (Domestic help, Beauticians, Facility Management)','2015-08-11 17:11:12','2015-08-11 17:11:12',3,NULL,NULL),(18,'Capital Goods','2015-08-11 17:11:12','2015-08-11 17:11:12',3,NULL,NULL),(19,'Rubber','2015-08-11 17:11:12','2015-08-11 17:11:12',3,NULL,NULL),(20,'Transportation, Logistics, Warehousing and Packaging','2015-08-11 17:11:12','2015-08-11 17:11:12',3,NULL,NULL),(21,'Plumbing','2015-08-11 17:11:12','2015-08-11 17:11:12',3,NULL,NULL),(22,'Gems and Jewellery','2015-08-11 17:11:12','2015-08-11 17:11:12',3,NULL,NULL),(23,'Handloom and Handicrafts','2015-08-11 17:11:12','2015-08-11 17:11:12',3,NULL,NULL),(24,'Leather and Leather Goods','2015-08-11 17:11:13','2015-08-11 17:11:13',3,NULL,NULL),(25,'Apparel Sector Skill Council','2015-08-11 17:11:13','2015-08-11 17:11:13',3,NULL,NULL),(26,'Education and Skill Development Services','2015-08-11 17:11:13','2015-08-11 17:11:13',3,NULL,NULL),(27,'Chemicals and Pharmaceuticals','2015-08-11 17:11:13','2015-08-11 17:11:13',3,NULL,NULL),(28,'Government','2015-08-11 17:11:13','2015-08-11 17:11:13',3,NULL,NULL),(29,'Manufacturing','2015-08-11 17:11:13','2015-08-11 17:11:13',3,NULL,NULL),(30,'Furniture and Furnishings','2015-08-11 17:11:13','2015-08-11 17:11:13',3,NULL,NULL),(31,'Enterprenurial skills','2015-08-11 17:11:13','2015-08-11 17:11:13',3,NULL,NULL),(32,'Engineering','2015-08-11 17:11:13','2015-08-11 17:11:13',3,NULL,NULL),(33,'Other Management Courses','2015-08-11 17:11:13','2015-08-11 17:11:13',3,NULL,NULL),(34,'Mining','2015-08-11 17:11:13','2015-08-11 17:11:13',3,NULL,NULL);
/*!40000 ALTER TABLE `sectors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sector_id` int(11) NOT NULL,
  `skill_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,20,'PHP'),(2,20,'MYSQL'),(3,3,'PHP'),(4,3,'HTML'),(5,3,'.NET'),(6,3,'JAVA'),(7,3,'CSS');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(45) COLLATE utf8_bin NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `excel_id` varchar(45) COLLATE utf8_bin DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Chhattisgarh','2015-08-11 17:09:50','2015-08-11 17:09:50','1'),(2,'Gujarat','2015-08-11 17:09:50','2015-08-11 17:09:50','1'),(3,'Maharashtra','2015-08-11 17:09:50','2015-08-11 17:09:50','1'),(4,'Karnataka','2015-08-11 17:09:50','2015-08-11 17:09:50','1'),(5,'Tamil Nadu','2015-08-11 17:09:50','2015-08-11 17:09:50','1'),(6,'Goa','2015-08-11 17:09:50','2015-08-11 17:09:50','1'),(7,'Madhya','2015-08-11 17:09:50','2015-08-11 17:09:50','1'),(8,'Rajasthan','2015-08-11 17:09:50','2015-08-11 17:09:50','1'),(9,'Himachal Pradesh','2015-08-11 17:09:50','2015-08-11 17:09:50','1'),(10,'Punjab','2015-08-11 17:09:51','2015-08-11 17:09:51','1'),(11,'Uttarakhand','2015-08-11 17:09:51','2015-08-11 17:09:51','1'),(12,'Haryana','2015-08-11 17:09:51','2015-08-11 17:09:51','1'),(13,'Uttar Pradesh','2015-08-11 17:09:51','2015-08-11 17:09:51','1'),(14,'Bihar','2015-08-11 17:09:51','2015-08-11 17:09:51','1'),(15,'Sikkim','2015-08-11 17:09:51','2015-08-11 17:09:51','1'),(16,'Madhya Pradesh','2015-08-11 17:10:01','2015-08-11 17:10:01','0');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `role` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `token` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mobile` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abhilash','7d804780fb101c4046c3fd1693a303deb33c312b','abhilash@ess.com','king',NULL,'2015-07-09 12:01:35','2015-07-16 15:53:04',1,'fab105646fcf0b0f967e0112427dc94c5f238b0c842ef906e2490f0857fb588286d51cb44a580d18fbd80b4c0bfa1f53abc141bc31d93dd63e7cd8d4117788f8fef63ac056927a5f6b77737d33cd','9899297551'),(2,'admin','7d804780fb101c4046c3fd1693a303deb33c312b','admin@ess.com','hr',NULL,'2015-07-09 12:10:44','2015-07-09 12:10:44',1,'d26c23b31e0496c9890e25a1afe3a1058bbd407339b5c935345fb6f1bd8de8d0c20fdc152888ced6f926431e3c8573dbbc491ae5c2a17952489ba842a60d130cf517f86fe59bc2bf469e48c8bb08','8604404808');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-14 12:27:38
