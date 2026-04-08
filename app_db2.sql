CREATE DATABASE  IF NOT EXISTS `sebti` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sebti`;
-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sebti
-- ------------------------------------------------------
-- Server version	8.4.7

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
-- Table structure for table `artisans`
--

DROP TABLE IF EXISTS `artisans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artisans` (
  `id_a` int DEFAULT NULL,
  `profession` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verifier` tinyint(1) DEFAULT '0',
  `note_moyenne` decimal(3,2) DEFAULT NULL,
  KEY `id_a` (`id_a`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisans`
--

LOCK TABLES `artisans` WRITE;
/*!40000 ALTER TABLE `artisans` DISABLE KEYS */;
/*!40000 ALTER TABLE `artisans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demande_service`
--

DROP TABLE IF EXISTS `demande_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demande_service` (
  `id_d` int NOT NULL AUTO_INCREMENT,
  `id_client` int DEFAULT NULL,
  `audio_url` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `statut` enum('en_attente','accepter','terminer') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_artisante` int DEFAULT NULL,
  `dat_demande` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_d`),
  KEY `id_client` (`id_client`),
  KEY `id_artisante` (`id_artisante`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demande_service`
--

LOCK TABLES `demande_service` WRITE;
/*!40000 ALTER TABLE `demande_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `demande_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portefeille`
--

DROP TABLE IF EXISTS `portefeille`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portefeille` (
  `id_p` int NOT NULL AUTO_INCREMENT,
  `id_artisante` int DEFAULT NULL,
  `sold` decimal(10,2) DEFAULT '1000.00',
  PRIMARY KEY (`id_p`),
  KEY `id_artisante` (`id_artisante`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portefeille`
--

LOCK TABLES `portefeille` WRITE;
/*!40000 ALTER TABLE `portefeille` DISABLE KEYS */;
/*!40000 ALTER TABLE `portefeille` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `id_t` int NOT NULL AUTO_INCREMENT,
  `id_portefeuille` int NOT NULL,
  `montant` decimal(10,2) NOT NULL,
  `type_t` enum('recherchage','consomantion') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptive_t` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deat_t` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_t`),
  KEY `id_portefeuille` (`id_portefeuille`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utilisateurs` (
  `id_u` int NOT NULL AUTO_INCREMENT,
  `telephon` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom_complet` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rol` enum('client','artisan') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token` text COLLATE utf8mb4_unicode_ci,
  `dat_inscription` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_u`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateurs`
--

LOCK TABLES `utilisateurs` WRITE;
/*!40000 ALTER TABLE `utilisateurs` DISABLE KEYS */;
/*!40000 ALTER TABLE `utilisateurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'sebti'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-02 18:22:28
