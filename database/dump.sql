-- MariaDB dump 10.19  Distrib 10.6.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: mate_laravel_homework_2
-- ------------------------------------------------------
-- Server version	10.6.12-MariaDB-0ubuntu0.22.04.1

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
-- Table structure for table `blog_posts`
--

DROP TABLE IF EXISTS `blog_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_posts_user_id_foreign` (`user_id`),
  CONSTRAINT `blog_posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_posts`
--

LOCK TABLES `blog_posts` WRITE;
/*!40000 ALTER TABLE `blog_posts` DISABLE KEYS */;
INSERT INTO `blog_posts` VALUES (1,1,'Indulge in the Sweet Delights of Chocolate Truffles','Chocolate truffles are a heavenly treat that melts in your mouth. Learn about different flavors and recipes to enjoy these luxurious confections.','2023-05-21 18:30:51','2023-05-21 18:30:51'),(2,1,'The Art of Perfecting French Macarons','Discover the secrets behind creating the perfect French macarons. From tips on achieving the delicate shells to filling ideas, elevate your baking skills.','2023-05-21 18:30:51','2023-05-21 18:30:51'),(3,1,'Decadent Cakes for Special Occasions','Celebrate your special moments with delectable cakes that are a feast for the eyes and taste buds. Explore various cake designs and flavors for every occasion.','2023-05-21 18:30:51','2023-05-21 18:30:51'),(4,1,'Exploring the World of Gourmet Cupcakes','Delve into the world of gourmet cupcakes and experience a burst of flavors. Discover unique cupcake recipes and decorating techniques to impress your guests.','2023-05-21 18:30:51','2023-05-21 18:30:51'),(5,2,'Delicious Homemade Ice Cream Recipes','Beat the heat with homemade ice cream that is creamy and delicious. Learn how to make classic and innovative flavors using simple ingredients and techniques.','2023-05-21 18:30:51','2023-05-21 18:30:51');
/*!40000 ALTER TABLE `blog_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `confections`
--

DROP TABLE IF EXISTS `confections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `confections` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `prizewinning` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confections`
--

LOCK TABLES `confections` WRITE;
/*!40000 ALTER TABLE `confections` DISABLE KEYS */;
INSERT INTO `confections` VALUES (1,'Süni','mixed',0,NULL,NULL),(2,'Gesztenyealagút','mixed',0,NULL,NULL),(3,'Sajtos pogácsa','salty biscuit',0,NULL,NULL),(4,'Diós-mákos','roll',0,NULL,NULL),(5,'Sajttorta (málnás)','cake',0,NULL,NULL),(6,'Citrom','cake',0,NULL,NULL),(7,'Eszterházy','cake slice',0,NULL,NULL),(8,'Rákóczi-túrós','pie',0,NULL,NULL),(9,'Meggyes kocka','creamy cake',0,NULL,NULL),(10,'Legényfogó','cake',-1,NULL,NULL),(11,'Alpesi karamell','cake slice',0,NULL,NULL),(12,'Kókuszcsók','sweet biscuit',0,NULL,NULL),(13,'Habos mákos','pie',0,NULL,NULL),(14,'Szilvás','pie',0,NULL,NULL),(15,'Juhtúrós párna','salty biscuit',0,NULL,NULL),(16,'Mákos guba','cake slice',0,NULL,NULL),(17,'Néró','sweet biscuit',0,NULL,NULL),(18,'Sacher','cake slice',0,NULL,NULL),(19,'Citrom','cake slice',0,NULL,NULL),(20,'Ribizlihabos-almás réteges','special cake',-1,NULL,NULL),(21,'Három kívánság','cake',-1,NULL,NULL),(22,'Dobos','cake',0,NULL,NULL),(23,'Epres mascarpone','cake slice',0,NULL,NULL),(24,'Csokoládémousse','cake',0,NULL,NULL),(25,'Oroszkrém','cake',0,NULL,NULL),(26,'Medvetalp','mixed',0,NULL,NULL),(27,'Trüffel','cake',0,NULL,NULL),(28,'Tejszínes gyümölcsös (meggy)','cake',0,NULL,NULL),(29,'Mákos-szilvalekváros','roll',0,NULL,NULL),(30,'Ribizlihabos-﻿almá﻿s réteges tortaszelet','cake slice',0,NULL,NULL),(31,'Marcipános vágott','sweet biscuit',0,NULL,NULL),(32,'Indiáner','mixed',0,NULL,NULL),(33,'Meggyes','pie',0,NULL,NULL),(34,'Mákos','roll',0,NULL,NULL),(35,'Sós karamella','cake',0,NULL,NULL),(36,'Legényfogó','cake slice',0,NULL,NULL),(37,'Rigó Jancsi','cake',0,NULL,NULL),(38,'Tejszínes gyümölcsös (erdei gyümölcs)','cake',0,NULL,NULL),(39,'Ez+Az (csokoládé és gesztenye)','cake',0,NULL,NULL),(40,'Málnás mascarpone','cake',0,NULL,NULL),(41,'Dobos','cake slice',0,NULL,NULL),(42,'Ferrero','cake',0,NULL,NULL),(43,'Vegyes házi pitefalatok','pie',0,NULL,NULL),(44,'Ökörszem','sweet biscuit',0,NULL,NULL),(45,'Danubius kocka','creamy cake',0,NULL,NULL),(46,'Sajtkrémmel töltött fánkocska','salty biscuit',0,NULL,NULL),(47,'Túrókrém gyümölccsel díszítve','cake slice',0,NULL,NULL),(48,'Almás','pie',0,NULL,NULL),(49,'Mignon','mixed',0,NULL,NULL),(50,'Csokoládémousse fényes csokoládéval','cake',0,NULL,NULL),(51,'Vágott sós (sós omlós)','salty biscuit',0,NULL,NULL),(52,'Nagyi sós','salty biscuit',0,NULL,NULL),(53,'Vegyes sós','salty biscuit',0,NULL,NULL),(54,'Somlói','cake slice',0,NULL,NULL),(55,'Tiramisu','cake slice',0,NULL,NULL),(56,'Hegyvidék','cake slice',0,NULL,NULL),(57,'Szedres csokoládé','cake slice',0,NULL,NULL),(58,'Pogácsák mixeden','salty biscuit',0,NULL,NULL),(59,'Lúdláb','cake',0,NULL,NULL),(60,'Sacher','cake',0,NULL,NULL),(61,'Eszterházy','cake',0,NULL,NULL),(62,'Zalavári gesztenye','cake slice',0,NULL,NULL),(63,'Gesztenyegolyó','mixed',0,NULL,NULL),(64,'Pisztáciás-málnás mascarpone','cake slice',0,NULL,NULL),(65,'Habos mákos','mixed',0,NULL,NULL),(66,'Franciakrémes','pastry',0,NULL,NULL),(67,'Gesztenye kocka','creamy cake',0,NULL,NULL),(68,'Pisztáciás-málnás mascarpone','cake',0,NULL,NULL),(69,'Málnás kocka','creamy cake',0,NULL,NULL),(70,'Sajttorta (málnás)','cake slice',0,NULL,NULL),(71,'Túrókrém gyümölccsel','cake',0,NULL,NULL),(72,'Csokis kaland','special cake',-1,NULL,NULL),(73,'Somlói','cake',0,NULL,NULL),(74,'Palermo','cake',0,NULL,NULL),(75,'Szilvalekváros','roll',0,NULL,NULL),(76,'Ünnepi diótorta grillázzsal','cake',0,NULL,NULL),(77,'Oroszkrém','cake slice',0,NULL,NULL),(78,'Mini zserbó','sweet biscuit',0,NULL,NULL),(79,'Sajtos masni','salty biscuit',0,NULL,NULL),(80,'Zserbó','pie',0,NULL,NULL),(81,'Tejszínes gyümölcsös (málna)','cake',0,NULL,NULL),(82,'Marcipános csokoládé','cake',0,NULL,NULL),(83,'Csokis kaland','cake slice',0,NULL,NULL),(84,'Marcipán tekercs','sweet biscuit',0,NULL,NULL),(85,'Képviselőfánk','mixed',0,NULL,NULL),(86,'Epres omlett','mixed',0,NULL,NULL),(87,'Mini linzer','sweet biscuit',0,NULL,NULL),(88,'Linzerkarika','mixed',0,NULL,NULL),(89,'Szedres csokoládé','cake',0,NULL,NULL),(90,'Narancsív','sweet biscuit',0,NULL,NULL),(91,'Gesztenyepüré','mixed',0,NULL,NULL),(92,'Palermo','creamy cake',0,NULL,NULL),(93,'Csokis néró','sweet biscuit',0,NULL,NULL),(94,'Flódni','pie',0,NULL,NULL),(95,'Mézeskalács','cake',0,NULL,NULL),(96,'Olívás pogácsa','salty biscuit',0,NULL,NULL),(97,'Florentin','sweet biscuit',0,NULL,NULL),(98,'Tiramisu','cake',0,NULL,NULL),(99,'Zoli kedvence (vágott édes tea)','sweet biscuit',0,NULL,NULL),(100,'Erdei gyümölcs kocka','creamy cake',0,NULL,NULL),(101,'Rákóczi-túrós','cake slice',0,NULL,NULL),(102,'Mézeskrémes','pie',0,NULL,NULL),(103,'Trüffel','cake slice',0,NULL,NULL),(104,'Szilvás papucs','sweet biscuit',0,NULL,NULL),(105,'Zalavári gesztenye','cake',-1,NULL,NULL),(106,'Danubius','cake',0,NULL,NULL),(107,'Alpesi karamell','cake',0,NULL,NULL),(108,'Puncs','cake',0,NULL,NULL),(109,'Gesztenye szív','mixed',0,NULL,NULL),(110,'Ez+Az (csokoládé és gesztenye)','cake slice',0,NULL,NULL),(111,'Tökmagos félhold','salty biscuit',0,NULL,NULL),(112,'Burgonyás pogácsa','salty biscuit',0,NULL,NULL),(113,'Somlói galuska','mixed',0,NULL,NULL),(114,'Puncs','cake slice',0,NULL,NULL),(115,'Lekváros vágott','sweet biscuit',0,NULL,NULL),(116,'Oreo','cake',0,NULL,NULL),(117,'Vintage','cake',0,NULL,NULL),(118,'Rigó Jancsi','creamy cake',0,NULL,NULL),(119,'Feketeerdő','cake',0,NULL,NULL),(120,'Kókuszos vágott','sweet biscuit',0,NULL,NULL),(121,'Feketeerdő','cake slice',0,NULL,NULL),(122,'Moscauer','sweet biscuit',0,NULL,NULL),(123,'Diós','roll',0,NULL,NULL),(124,'Rákóczi-túrós','cake',0,NULL,NULL),(125,'Három kívánság','special cake',0,NULL,NULL),(126,'Gesztenyés-karamellás','roll',0,NULL,NULL),(127,'Gesztenyés szív','sweet biscuit',0,NULL,NULL),(128,'Ropi','salty biscuit',0,NULL,NULL),(129,'Paleolit étcsokoládé','special cake',0,NULL,NULL),(130,'Túrós','pie',0,NULL,NULL),(131,'Ischler','mixed',0,NULL,NULL),(132,'Lúdláb','cake slice',0,NULL,NULL),(133,'Csokoládémousse','cake slice',0,NULL,NULL),(134,'Dió','cake',0,NULL,NULL),(135,'Krémes','pastry',0,NULL,NULL),(136,'Mini ischler','sweet biscuit',0,NULL,NULL),(137,'Paleolit étcsokoládé','cake slice',0,NULL,NULL),(138,'Tejfölös túrós hajtogatott','salty biscuit',0,NULL,NULL),(139,'Mákos guba','cake',0,NULL,NULL);
/*!40000 ALTER TABLE `confections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `confid` bigint(20) unsigned NOT NULL,
  `free` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contents_confid_foreign` (`confid`),
  CONSTRAINT `contents_confid_foreign` FOREIGN KEY (`confid`) REFERENCES `confections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents`
--

LOCK TABLES `contents` WRITE;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
INSERT INTO `contents` VALUES (1,26,'G',NULL,NULL),(2,37,'L',NULL,NULL),(3,83,'HC',NULL,NULL),(4,91,'G',NULL,NULL),(5,137,'G',NULL,NULL),(6,60,'Te',NULL,NULL),(7,129,'HC',NULL,NULL),(8,122,'To',NULL,NULL),(9,90,'G',NULL,NULL),(10,26,'To',NULL,NULL),(11,94,'L',NULL,NULL),(12,46,'É',NULL,NULL),(13,72,'HC',NULL,NULL),(14,114,'Te',NULL,NULL),(15,63,'To',NULL,NULL),(16,12,'Te',NULL,NULL),(17,128,'É',NULL,NULL),(18,51,'É',NULL,NULL),(19,109,'To',NULL,NULL),(20,109,'G',NULL,NULL),(21,97,'G',NULL,NULL),(22,97,'To',NULL,NULL),(23,24,'L',NULL,NULL),(24,91,'To',NULL,NULL),(25,137,'L',NULL,NULL),(26,84,'G',NULL,NULL),(27,30,'HC',NULL,NULL),(28,108,'Te',NULL,NULL),(29,84,'To',NULL,NULL),(30,6,'L',NULL,NULL),(31,108,'L',NULL,NULL),(32,12,'L',NULL,NULL),(33,79,'É',NULL,NULL),(34,72,'G',NULL,NULL),(35,118,'L',NULL,NULL),(36,60,'L',NULL,NULL),(37,52,'É',NULL,NULL),(38,137,'HC',NULL,NULL),(39,114,'L',NULL,NULL),(40,90,'To',NULL,NULL),(41,20,'HC',NULL,NULL),(42,63,'G',NULL,NULL),(43,129,'G',NULL,NULL),(44,129,'L',NULL,NULL),(45,15,'É',NULL,NULL);
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_05_20_070606_create_permission_tables',1),(6,'2023_05_20_125445_create_blog_posts_table',1),(7,'2023_05_21_144257_add_is_admin_to_users_table',1),(8,'2023_05_21_172422_create_confections_table',1),(9,'2023_05_21_172427_create_contents_table',1),(10,'2023_05_21_172431_create_prices_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\User',1),(1,'App\\Models\\User',2),(2,'App\\Models\\User',3);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'view content','web','2023-05-21 18:30:51','2023-05-21 18:30:51'),(2,'edit own content','web','2023-05-21 18:30:51','2023-05-21 18:30:51'),(3,'edit all content','web','2023-05-21 18:30:51','2023-05-21 18:30:51'),(4,'manage-users','web','2023-05-21 18:30:51','2023-05-21 18:30:51');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `confid` bigint(20) unsigned NOT NULL,
  `price` double NOT NULL,
  `unit` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prices_confid_foreign` (`confid`),
  CONSTRAINT `prices_confid_foreign` FOREIGN KEY (`confid`) REFERENCES `confections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prices`
--

LOCK TABLES `prices` WRITE;
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
INSERT INTO `prices` VALUES (1,32,500,'pce',NULL,NULL),(2,76,10900,'16 slices',NULL,NULL),(3,106,4300,'8 slices',NULL,NULL),(4,88,300,'pce',NULL,NULL),(5,116,16200,'24 slices',NULL,NULL),(6,135,250,'pce',NULL,NULL),(7,127,4400,'kg',NULL,NULL),(8,50,13400,'24 slices',NULL,NULL),(9,70,700,'pce',NULL,NULL),(10,31,5200,'kg',NULL,NULL),(11,96,3300,'kg ​​',NULL,NULL),(12,116,5700,'8 slices',NULL,NULL),(13,22,9000,'16 slices',NULL,NULL),(14,138,4400,'kg',NULL,NULL),(15,112,2900,'kg',NULL,NULL),(16,58,3200,'kg',NULL,NULL),(17,98,10400,'16 slices',NULL,NULL),(18,75,2100,'bar',NULL,NULL),(19,24,11400,'24 slices',NULL,NULL),(20,62,600,'pce',NULL,NULL),(21,61,8400,'16 slices',NULL,NULL),(22,105,10900,'16 slices',NULL,NULL),(23,20,4700,'8 slices',NULL,NULL),(24,123,1800,'bar',NULL,NULL),(25,60,8200,'16 slices',NULL,NULL),(26,24,3900,'8 slices',NULL,NULL),(27,38,4300,'8 slices',NULL,NULL),(28,126,2100,'bar',NULL,NULL),(29,64,750,'pce',NULL,NULL),(30,109,300,'pce',NULL,NULL),(32,89,13200,'24 slices',NULL,NULL),(33,98,15400,'24 slices',NULL,NULL),(34,24,7400,'16 slices',NULL,NULL),(35,76,5700,'8 slices',NULL,NULL),(36,131,250,'pce',NULL,NULL),(37,50,9200,'16 slices',NULL,NULL),(38,55,600,'pce',NULL,NULL),(39,87,3400,'kg',NULL,NULL),(40,4,3500,'wreath',NULL,NULL),(41,8,400,'pce',NULL,NULL),(42,100,450,'pce',NULL,NULL),(43,129,5300,'8 slices',NULL,NULL),(44,35,4700,'8 slices',NULL,NULL),(45,47,490,'pce',NULL,NULL),(46,89,9000,'16 slices',NULL,NULL),(47,111,3300,'kg',NULL,NULL),(48,94,400,'pce',NULL,NULL),(49,42,16200,'24 slices',NULL,NULL),(50,80,350,'pce',NULL,NULL),(51,134,4700,'8 slices',NULL,NULL),(52,128,4000,'kg',NULL,NULL),(53,90,5200,'kg',NULL,NULL),(54,39,13200,'24 slices',NULL,NULL),(55,71,7400,'16 slices',NULL,NULL),(56,17,3400,'kg',NULL,NULL),(57,68,18400,'24 slices',NULL,NULL),(58,81,8200,'16 slices',NULL,NULL),(59,134,9000,'16 slices',NULL,NULL),(60,108,11400,'24 slices',NULL,NULL),(61,97,5200,'kg',NULL,NULL),(62,81,4300,'8 slices',NULL,NULL),(63,44,3800,'kg',NULL,NULL),(64,72,5700,'8 slices',NULL,NULL),(65,49,250,'pce',NULL,NULL),(66,48,350,'pce',NULL,NULL),(67,14,350,'pce',NULL,NULL),(68,107,12200,'24 slices',NULL,NULL),(69,27,15400,'24 slices',NULL,NULL),(70,106,12100,'24 slices',NULL,NULL),(71,74,7400,'16 slices',NULL,NULL),(72,40,5700,'8 slices',NULL,NULL),(73,133,450,'pce',NULL,NULL),(74,77,490,'pce',NULL,NULL),(75,22,13200,'24 slices',NULL,NULL),(76,119,9000,'16 slices',NULL,NULL),(77,120,3400,'kg',NULL,NULL),(78,105,5700,'8 slices',NULL,NULL),(79,119,13200,'24 slices',NULL,NULL),(80,99,4600,'kg',NULL,NULL),(81,61,12200,'24 slices',NULL,NULL),(82,93,4200,'kg',NULL,NULL),(83,59,13200,'24 slices',NULL,NULL),(84,82,5700,'8 slices',NULL,NULL),(85,56,600,'pce',NULL,NULL),(86,23,550,'pce',NULL,NULL),(87,81,12100,'24 slices',NULL,NULL),(88,67,500,'pce',NULL,NULL),(89,68,6400,'8 slices',NULL,NULL),(90,38,8200,'16 slices',NULL,NULL),(91,139,4700,'8 slices',NULL,NULL),(92,30,530,'pce',NULL,NULL),(93,95,16200,'24 slices',NULL,NULL),(94,101,400,'pce',NULL,NULL),(95,65,400,'pce',NULL,NULL),(96,10,12100,'24 slices',NULL,NULL),(97,59,9000,'16 slices',NULL,NULL),(98,119,4700,'8 slices',NULL,NULL),(99,82,16200,'24 slices',NULL,NULL),(100,3,3300,'kg',NULL,NULL),(101,104,4200,'kg',NULL,NULL),(102,110,530,'pce',NULL,NULL),(103,1,300,'pce',NULL,NULL),(104,25,8200,'16 slices',NULL,NULL),(105,40,16200,'24 slices',NULL,NULL),(106,36,490,'pce',NULL,NULL),(107,124,3900,'8 slices',NULL,NULL),(108,16,530,'pce',NULL,NULL),(109,29,3500,'wreath',NULL,NULL),(110,116,10900,'16 slices',NULL,NULL),(111,71,3900,'8 slices',NULL,NULL),(112,2,500,'pce',NULL,NULL),(113,71,11400,'24 slices',NULL,NULL),(114,10,4300,'8 slices',NULL,NULL),(115,108,3900,'8 slices',NULL,NULL),(116,69,450,'pce',NULL,NULL),(117,39,9000,'16 slices',NULL,NULL),(118,25,4300,'8 slices',NULL,NULL),(119,107,8400,'16 slices',NULL,NULL),(120,5,9000,'12 slices',NULL,NULL),(121,106,8200,'16 slices',NULL,NULL),(122,114,450,'pce',NULL,NULL),(123,26,400,'pce',NULL,NULL),(124,82,10900,'16 slices',NULL,NULL),(125,28,8200,'16 slices',NULL,NULL),(126,42,10900,'16 slices',NULL,NULL),(127,35,13200,'24 slices',NULL,NULL),(128,74,3900,'8 slices',NULL,NULL),(129,19,450,'pce',NULL,NULL),(130,25,12100,'24 slices',NULL,NULL),(131,125,5700,'8 slices',NULL,NULL),(132,95,5700,'8 slices',NULL,NULL),(133,34,1700,'bar',NULL,NULL),(134,121,530,'pce',NULL,NULL),(135,76,16200,'24 slices',NULL,NULL),(136,13,400,'pce',NULL,NULL),(137,60,12100,'24 slices',NULL,NULL),(138,33,350,'pce',NULL,NULL),(139,132,530,'pce',NULL,NULL),(140,117,9900,'16 slices',NULL,NULL),(141,27,10400,'16 slices',NULL,NULL),(142,18,490,'pce',NULL,NULL),(143,124,7400,'16 slices',NULL,NULL),(144,122,5200,'kg',NULL,NULL),(145,59,4700,'8 slices',NULL,NULL),(146,124,11400,'24 slices',NULL,NULL),(147,134,13200,'24 slices',NULL,NULL),(148,45,450,'pce',NULL,NULL),(149,63,350,'pce',NULL,NULL),(150,6,3900,'8 slices',NULL,NULL),(151,28,4300,'8 slices',NULL,NULL),(152,37,3900,'8 slices',NULL,NULL),(153,52,5000,'kg',NULL,NULL),(154,61,4500,'8 slices',NULL,NULL),(155,86,600,'pce',NULL,NULL),(156,6,7400,'16 slices',NULL,NULL),(157,37,7400,'16 slices',NULL,NULL),(158,11,490,'pce',NULL,NULL),(159,108,7400,'16 slices',NULL,NULL),(160,35,9000,'16 slices',NULL,NULL),(161,107,4500,'8 slices',NULL,NULL),(162,6,11400,'24 slices',NULL,NULL),(163,79,4000,'kg',NULL,NULL),(164,60,4300,'8 slices',NULL,NULL),(165,21,5700,'8 slices',NULL,NULL),(166,28,12100,'24 slices',NULL,NULL),(167,15,5000,'kg',NULL,NULL),(168,21,5700,'8 slices',NULL,NULL),(169,37,11400,'24 slices',NULL,NULL),(170,74,11400,'24 slices',NULL,NULL),(171,103,650,'pce',NULL,NULL),(172,43,4200,'kg ',NULL,NULL),(173,12,3400,'kg',NULL,NULL),(174,27,5400,'8 slices',NULL,NULL),(175,7,490,'pce',NULL,NULL),(176,84,5200,'kg',NULL,NULL),(177,115,3600,'kg',NULL,NULL),(178,51,4000,'kg',NULL,NULL),(179,118,450,'pce',NULL,NULL),(180,41,530,'pce',NULL,NULL),(181,135,400,'pce',NULL,NULL),(182,73,5400,'8 slices',NULL,NULL),(183,10,8200,'16 slices',NULL,NULL),(184,98,5400,'8 slices',NULL,NULL),(185,113,850,'pce',NULL,NULL),(186,130,350,'pce',NULL,NULL),(187,39,4700,'8 slices',NULL,NULL),(188,136,3400,'kg',NULL,NULL),(189,83,650,'pce',NULL,NULL),(190,91,800,'200 g',NULL,NULL),(191,46,5200,'kg',NULL,NULL),(192,102,330,'pce',NULL,NULL),(193,95,10900,'16 slices',NULL,NULL),(194,54,580,'pce',NULL,NULL),(195,57,530,'pce',NULL,NULL),(196,22,4700,'8 slices',NULL,NULL),(197,92,450,'pce',NULL,NULL),(198,68,12400,'16 slices',NULL,NULL),(199,42,5700,'8 slices',NULL,NULL),(200,40,10900,'16 slices',NULL,NULL),(201,9,450,'pce',NULL,NULL),(202,78,4200,'kg',NULL,NULL),(203,85,500,'pce',NULL,NULL),(204,137,600,'pce',NULL,NULL),(205,50,4900,'8 slices',NULL,NULL),(206,38,12100,'24 slices',NULL,NULL),(207,53,4200,'kg',NULL,NULL),(208,89,4700,'8 slices',NULL,NULL);
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(1,2),(2,1),(2,2),(3,2),(4,2);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'user','web','2023-05-21 18:30:51','2023-05-21 18:30:51'),(2,'admin','web','2023-05-21 18:30:51','2023-05-21 18:30:51');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Test User 1','testuser1@example.com',NULL,'$2y$10$SiBspc6Aqa..3uKANOAQEeA7.lWPlSyYdaR8sENiks4EqXHxS1AH2',NULL,'2023-05-21 18:30:51','2023-05-21 18:30:51',0),(2,'Test User 2','testuser2@example.com',NULL,'$2y$10$qQgMuKfnGlJrViGxm/XWJek/djKneOgkdfVrsKSbhMS8OfrO7HuEK',NULL,'2023-05-21 18:30:51','2023-05-21 18:30:51',0),(3,'Admin User','adminuser@example.com',NULL,'$2y$10$btU5zFH2P1Y0eX/Qsx1UZO1yCThgdKlm564U8ZlSGdobFBX.MY2tK',NULL,'2023-05-21 18:30:51','2023-05-21 18:30:51',1);
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

-- Dump completed on 2023-05-21 23:50:05
