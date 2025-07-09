-- MySQL dump 10.13  Distrib 8.0.42, for Linux (x86_64)
--
-- Host: localhost    Database: dbseimbang
-- ------------------------------------------------------
-- Server version	8.0.42-0ubuntu0.24.04.1

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
-- Table structure for table `__drizzle_migrations`
--

DROP TABLE IF EXISTS `__drizzle_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `__drizzle_migrations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `hash` text NOT NULL,
  `created_at` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__drizzle_migrations`
--

LOCK TABLES `__drizzle_migrations` WRITE;
/*!40000 ALTER TABLE `__drizzle_migrations` DISABLE KEYS */;
INSERT INTO `__drizzle_migrations` VALUES (1,'bc066ba6e0e0cbe916d810a476d6ebc2fe8d08525d61769fbf5dd8d38f77b215',1730026808162),(2,'ddee5de9b60646d5dde17a22eb95cda80d921d1aa62a016989a1db47bfde7f7a',1730029899079),(3,'5f64bd67f7403b547938fbea3af2ec99f7ce6189ea59c5bd5b77fb1a157cb1be',1730192125937),(4,'5d521e30dcb75ffd67487020a9ed838c21d83cc4c538ede9d7df81192dc9cd19',1730484569834),(5,'520db90f0cf96f10ded4f952e782ade85afa570cbd1a26351b77f34c4c02ab65',1730515775519),(6,'b7af05e0561d8957cd4e41d0873e8735da5bbd60cdedbb73fa143595530b40a5',1730820921094),(7,'470fcd74c772505745bdbfa5320deda0468517abde55c3edd35c3ed47b1c4aec',1730917814305),(8,'e6f6ad9ecb475d0f577e38eb618e7f29761d37be099a47b19d4b6303f0ac1135',1730917838373),(9,'740c8a175fc807deff126b5177ae0770b6b16bbbb982f4f3eda41cab80a18aa5',1730919062817),(10,'6287b6c0075034790e5699f3bec3ff517d587b13b6de1b42e2efbc4a1e8e73e4',1730923540596),(11,'17bb17311ceb0ab58683b54ec80ac3cab18446d4ed9d25093e326c2f5a01bf2d',1730927902235),(12,'3a620d6519a05ea66ca1fa97203648376eff8884e63f73d5e07e0ca14f6a9ed2',1730928177268),(13,'187db40355a55cec89e4b61312133979b145f8c0dd01ae5141b43c31f1c1685b',1730929314704),(14,'f3f480beb6b2bbbb9b3c3897fd1bbc28b639cd165c352b1bc74ccb1db40e780f',1730931009509),(15,'ff7b704cb6641ac7d5a0efcca9e93fb625572cefc715b69bb9337d46e9cfce4a',1733053438436),(16,'4cf53fc3fb740cd418f32ffc5ffa427418b586a0126ec4a7db0e940119da0093',1733061049356),(17,'47841eae573fe4e1e8b91dd752ef31233ae590cb04a3c059fe621445eed782a4',1733116271458),(18,'760f4f68af020e39947ba047eb12de33131a5052fd4b34cf7996f670b09c0193',1733117636225);
/*!40000 ALTER TABLE `__drizzle_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_items`
--

DROP TABLE IF EXISTS `transaction_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `transaction_id` bigint NOT NULL,
  `item_name` text NOT NULL,
  `category` enum('food','transportation','utilities','entertainment','shopping','healthcare','education','others') DEFAULT 'others',
  `price` decimal(10,0) NOT NULL,
  `quantity` int NOT NULL,
  `subtotal` decimal(10,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transaction_items_transaction_id_transactions_id_fk` (`transaction_id`),
  CONSTRAINT `transaction_items_transaction_id_transactions_id_fk` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_items`
--

LOCK TABLES `transaction_items` WRITE;
/*!40000 ALTER TABLE `transaction_items` DISABLE KEYS */;
INSERT INTO `transaction_items` VALUES (1,1,'gaji','entertainment',500000,1,500000,NULL,NULL),(2,2,'indomie','food',1500,1,1500,NULL,NULL),(3,2,'teh','food',500,1,500,NULL,NULL),(4,3,'RESOLES TK','food',8000,1,8000,NULL,NULL),(5,3,'PASTEL TK','food',8000,2,16000,NULL,NULL),(6,3,'R KISHMIS SUSU','food',9000,1,9000,NULL,NULL),(7,3,'R KEJU COKLAT','food',9500,1,9500,NULL,NULL),(8,3,'R COKLAT ASLI','food',8500,2,17000,NULL,NULL),(9,3,'R SRIKAYA','food',9000,1,9000,NULL,NULL),(10,3,'R KC HIJAU','food',9000,1,9000,NULL,NULL),(11,3,'R CHEESY CHOCO','food',10000,1,10000,NULL,NULL),(12,4,'GRNIER M.COOL FOAM50','shopping',19900,2,39800,NULL,NULL),(13,4,'PLASTIK KCL','shopping',1,1,1,NULL,NULL);
/*!40000 ALTER TABLE `transaction_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `type` int NOT NULL DEFAULT '0',
  `amount` decimal(10,0) NOT NULL DEFAULT '0',
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'Transaction',
  `category` enum('food','transportation','utilities','entertainment','shopping','healthcare','education','others') DEFAULT 'others',
  PRIMARY KEY (`id`),
  KEY `transactions_user_id_users_id_fk` (`user_id`),
  CONSTRAINT `transactions_user_id_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,1,0,500000,'gaji','2025-07-08 03:04:50','2025-07-08 03:04:50','Transaction','others'),(2,1,1,2000,'jajan','2025-07-08 03:06:30','2025-07-08 03:06:30','Transaction','others'),(3,1,1,87500,'jajan sore','2025-07-08 17:12:59','2025-07-08 17:12:59','Transaction','others'),(4,1,1,39801,'Beli sabun','2025-07-08 17:19:38','2025-07-08 17:19:38','Transaction','others');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_financial_profile`
--

DROP TABLE IF EXISTS `user_financial_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_financial_profile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `monthly_income` decimal(16,2) DEFAULT NULL,
  `current_savings` decimal(16,2) DEFAULT NULL,
  `debt` decimal(16,2) DEFAULT NULL,
  `financial_goals` text,
  `risk_management` enum('low','medium','high') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_financial_profile_user_id_users_id_fk` (`user_id`),
  CONSTRAINT `user_financial_profile_user_id_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_financial_profile`
--

LOCK TABLES `user_financial_profile` WRITE;
/*!40000 ALTER TABLE `user_financial_profile` DISABLE KEYS */;
INSERT INTO `user_financial_profile` VALUES (1,1,500000.00,1000.00,1000.00,'punya rumah','medium');
/*!40000 ALTER TABLE `user_financial_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` int NOT NULL DEFAULT '0',
  `full_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_picture` varchar(256) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `age` int NOT NULL DEFAULT '17',
  `balance` decimal(16,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'test5','testuser5@mail.com',0,'tes saja','$2a$10$r2cwwSTCdWLBPmQnZT1ahuWNi/ZrnrEHuNFM0wrGPt5yEISZLSRlm','https://storage.googleapis.com/seimbangin-app-media/profile-pictures/20250708_175004784677389477663804.jpg','2025-07-08 03:03:40','2025-07-08 17:19:38',17,370699.00);
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

-- Dump completed on 2025-07-09 10:39:12
