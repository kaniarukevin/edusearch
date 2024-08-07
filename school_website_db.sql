CREATE DATABASE  IF NOT EXISTS `school_website_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `school_website_db`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: school_website_db
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `schools`
--

DROP TABLE IF EXISTS `schools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schools` (
  `school_id` int NOT NULL AUTO_INCREMENT,
  `school_name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `fee` decimal(10,2) DEFAULT NULL,
  `rating` decimal(3,1) DEFAULT NULL,
  `academic_rating` decimal(3,2) DEFAULT '0.00',
  `sports_rating` decimal(3,2) DEFAULT '0.00',
  `infrastructure_rating` decimal(3,2) DEFAULT '0.00',
  `extracurricular_rating` decimal(3,2) DEFAULT '0.00',
  `description` text,
  `images` json DEFAULT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schools`
--

LOCK TABLES `schools` WRITE;
/*!40000 ALTER TABLE `schools` DISABLE KEYS */;
INSERT INTO `schools` VALUES (148,'Greenfield Primary School','Nairobi, Kenya','Primary',30000.00,NULL,4.50,4.20,4.00,4.10,'A leading primary school with a focus on holistic education.','[\"../assets/images/primary.jpg\"]'),(149,'Sunrise Academy','Mombasa, Kenya','Primary',32000.00,NULL,4.40,4.00,3.90,4.20,'Provides a balanced curriculum with emphasis on academic excellence.','[\"../assets/images/primary.jpg\"]'),(150,'Bright Future School','Kisumu, Kenya','Primary',31000.00,NULL,4.30,3.80,3.70,4.00,'Known for its nurturing environment and strong community engagement.','[\"../assets/images/primary.jpg\"]'),(151,'Little Scholars School','Nakuru, Kenya','Primary',35000.00,NULL,4.60,4.10,4.00,4.30,'Focuses on individualized learning and student development.','[\"../assets/images/primary.jpg\"]'),(152,'Horizon Primary School','Eldoret, Kenya','Primary',33000.00,NULL,4.70,4.30,4.20,4.40,'Offers a dynamic curriculum and modern facilities.','[\"../assets/images/primary.jpg\"]'),(153,'Rainbow Primary','Thika, Kenya','Primary',34000.00,NULL,4.50,4.10,4.00,4.20,'A vibrant school known for its diverse extracurricular activities.','[\"../assets/images/primary.jpg\"]'),(154,'Springfield School','Naivasha, Kenya','Primary',32000.00,NULL,4.40,4.00,3.80,4.10,'Provides a supportive and inclusive learning environment.','[\"../assets/images/primary.jpg\"]'),(155,'Elite High School','Nairobi, Kenya','High School',50000.00,NULL,4.80,4.60,4.50,4.70,'A top high school with a reputation for academic excellence.','[\"../assets/images/Dummy School.avif\"]'),(156,'Prestige High','Mombasa, Kenya','High School',48000.00,NULL,4.70,4.50,4.30,4.60,'Known for its rigorous academic programs and strong sports teams.','[\"../assets/images/Dummy School.avif\"]'),(157,'Excel High School','Kisumu, Kenya','High School',47000.00,NULL,4.60,4.40,4.20,4.50,'Offers a broad curriculum and a variety of extracurricular activities.','[\"../assets/images/Dummy School.avif\"]'),(158,'Summit High','Nakuru, Kenya','High School',49000.00,NULL,4.70,4.50,4.40,4.60,'Focuses on academic achievement and personal growth.','[\"../assets/images/Dummy School.avif\"]'),(159,'Pinnacle Academy','Eldoret, Kenya','High School',51000.00,NULL,4.80,4.60,4.50,4.70,'A well-respected school with a strong focus on STEM subjects.','[\"../assets/images/Dummy School.avif\"]'),(160,'Beacon High','Thika, Kenya','High School',47500.00,NULL,4.50,4.30,4.10,4.50,'Known for its inclusive environment and supportive teaching staff.','[\"../assets/images/Dummy School.avif\"]'),(161,'Crestwood High School','Naivasha, Kenya','High School',46000.00,NULL,4.40,4.20,4.00,4.40,'Provides a challenging curriculum with a focus on critical thinking.','[\"../assets/images/Dummy School.avif\"]'),(162,'Nairobi University','Nairobi, Kenya','University',150000.00,NULL,4.80,4.50,4.70,4.60,'Leading university with diverse programs and research opportunities.','[\"../assets/images/University.jpg\"]'),(163,'Coast University','Mombasa, Kenya','University',145000.00,NULL,4.70,4.40,4.60,4.50,'Offers a variety of undergraduate and postgraduate programs.','[\"../assets/images/University.jpg\"]'),(164,'Great Lakes University','Kisumu, Kenya','University',140000.00,NULL,4.60,4.30,4.50,4.40,'Known for its strong emphasis on community service and engagement.','[\"../assets/images/University.jpg\"]'),(165,'Valley University','Nakuru, Kenya','University',155000.00,NULL,4.80,4.50,4.70,4.60,'Focuses on providing a well-rounded education with extensive facilities.','[\"../assets/images/University.jpg\"]'),(166,'Highlands University','Eldoret, Kenya','University',150000.00,NULL,4.70,4.60,4.60,4.50,'Known for its innovative research and academic programs.','[\"../assets/images/University.jpg\"]'),(167,'Riverside University','Thika, Kenya','University',140000.00,NULL,4.50,4.30,4.40,4.30,'Provides a comprehensive range of courses and vibrant campus life.','[\"../assets/images/University.jpg\"]'),(168,'Summit University','Naivasha, Kenya','University',145000.00,NULL,4.60,4.40,4.50,4.40,'Known for its diverse academic offerings and supportive community.','[\"../assets/images/University.jpg\"]'),(169,'National College','Nairobi, Kenya','College',120000.00,NULL,4.50,4.30,4.20,4.40,'Offers a range of diploma and certificate courses.','[\"../assets/images/college.jpg\"]'),(170,'Coastal College','Mombasa, Kenya','College',115000.00,NULL,4.40,4.20,4.10,4.30,'Provides career-oriented programs with hands-on training.','[\"../assets/images/college.jpg\"]'),(171,'Great Lakes College','Kisumu, Kenya','College',110000.00,NULL,4.30,4.10,4.00,4.20,'Focuses on practical skills and professional development.','[\"../assets/images/college.jpg\"]'),(172,'Central College','Nakuru, Kenya','College',125000.00,NULL,4.60,4.40,4.30,4.50,'Known for its quality education and modern facilities.','[\"../assets/images/college.jpg\"]'),(173,'Highlands College','Eldoret, Kenya','College',120000.00,NULL,4.50,4.30,4.20,4.40,'Offers a variety of academic programs and extracurricular activities.','[\"../assets/images/college.jpg\"]'),(174,'Riverside College','Thika, Kenya','College',110000.00,NULL,4.30,4.10,4.00,4.20,'Provides a supportive environment for student success.','[\"../assets/images/college.jpg\"]'),(175,'Summit College','Naivasha, Kenya','College',115000.00,NULL,4.40,4.20,4.10,4.30,'Known for its strong focus on student achievement and personal growth.','[\"../assets/images/college.jpg\"]'),(176,'Skills Academy','Nairobi, Kenya','TVET',75000.00,NULL,4.20,3.80,4.00,4.50,'Focuses on practical skills training and industry-relevant certifications.','[\"../assets/images/tvets.jpg\"]'),(177,'Tech Institute','Mombasa, Kenya','TVET',80000.00,NULL,4.50,4.00,3.90,4.40,'Known for its strong technical programs and job placement services.','[\"../assets/images/tvets.jpg\"]'),(178,'Innovate Institute','Kisumu, Kenya','TVET',78000.00,NULL,4.40,3.90,3.80,4.30,'Offers innovative training programs in various technical fields.','[\"../assets/images/tvets.jpg\"]'),(179,'Vocational Training Center','Nakuru, Kenya','TVET',76000.00,NULL,4.30,3.80,4.10,4.40,'Focuses on vocational skills and hands-on learning.','[\"../assets/images/tvets.jpg\"]'),(180,'TechPro Institute','Eldoret, Kenya','TVET',79000.00,NULL,4.50,4.10,4.00,4.50,'Provides training in advanced technical skills and certifications.','[\"../assets/images/tvets.jpg\"]'),(181,'SkillUp Academy','Thika, Kenya','TVET',77000.00,NULL,4.40,3.90,3.80,4.30,'Offers programs designed to meet industry standards and needs.','[\"../assets/images/tvets.jpg\"]'),(182,'ProTech Institute','Naivasha, Kenya','TVET',78000.00,NULL,4.40,4.00,3.90,4.40,'Known for its strong focus on technology and engineering training.','[\"../assets/images/tvets.jpg\"]');
/*!40000 ALTER TABLE `schools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'JohnDoe','johndoe@example.com','password123'),(2,'JaneSmith','janesmith@example.com','hashed_password_here'),(3,'Jane','janedoe@gmail.com','password123'),(4,'jane','janedoe@example.com','password123'),(5,'test','test@example.com','password'),(7,'test','test1@example.com','password'),(8,'test2','test2@example.com','password'),(9,'test3','test3@example.com','password'),(10,'test4','test4@example.com','password'),(11,'test5','test5@example.com','password'),(12,'Ivy','ivy@gmail.com','ivy123'),(13,'Daniella','daniella@gmail.com','password');
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

-- Dump completed on 2024-07-18  9:14:22
