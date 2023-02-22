-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: humanFriends
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `Animals`
--

DROP TABLE IF EXISTS `Animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Animals` (
  `idAnimal` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `birthday` date NOT NULL,
  `skill` varchar(20) DEFAULT NULL,
  `animalType` varchar(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`idAnimal`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Animals`
--

LOCK TABLES `Animals` WRITE;
/*!40000 ALTER TABLE `Animals` DISABLE KEYS */;
INSERT INTO `Animals` VALUES (1,'Donkey1','2022-06-12','pull','donkey'),(2,'Donkey2','2021-07-07','stop','donkey'),(3,'Donkey3','2017-02-08','go','donkey'),(4,'Horse1','2022-03-08','bow','horse'),(5,'Horse2','2021-12-10','kiss','horse'),(6,'Horse3','2009-08-01','sit','horse'),(7,'Hamster1','2023-02-01','run','hamster'),(8,'Hamster2','2021-09-07','jump','hamster'),(9,'Hamster3','2019-04-06','wheel','hamster'),(10,'Cat1','2022-09-03','eat','cat'),(11,'Cat2','2021-02-07','hunt','cat'),(12,'Cat3','2013-07-04','sleep','cat'),(13,'Dog1','2022-06-08','sit','dog'),(14,'Dog2','2020-05-09','voice','dog'),(15,'Dog3','2015-01-12','eat','dog');
/*!40000 ALTER TABLE `Animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Camel`
--

DROP TABLE IF EXISTS `Camel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Camel` (
  `idcamel` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `birthday` date NOT NULL,
  `skill` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idcamel`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Camel`
--

LOCK TABLES `Camel` WRITE;
/*!40000 ALTER TABLE `Camel` DISABLE KEYS */;
/*!40000 ALTER TABLE `Camel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cat`
--

DROP TABLE IF EXISTS `Cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cat` (
  `idcat` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `birthday` date NOT NULL,
  `skill` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idcat`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cat`
--

LOCK TABLES `Cat` WRITE;
/*!40000 ALTER TABLE `Cat` DISABLE KEYS */;
INSERT INTO `Cat` VALUES (1,'Cat1','2022-09-03','eat'),(2,'Cat2','2021-02-07','hunt'),(3,'Cat3','2013-07-04','sleep');
/*!40000 ALTER TABLE `Cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dog`
--

DROP TABLE IF EXISTS `Dog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Dog` (
  `iddog` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `birthday` date NOT NULL,
  `skill` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`iddog`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dog`
--

LOCK TABLES `Dog` WRITE;
/*!40000 ALTER TABLE `Dog` DISABLE KEYS */;
INSERT INTO `Dog` VALUES (1,'Dog1','2022-06-08','sit'),(2,'Dog2','2020-05-09','voice'),(3,'Dog3','2015-01-12','eat');
/*!40000 ALTER TABLE `Dog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Donkey`
--

DROP TABLE IF EXISTS `Donkey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Donkey` (
  `iddonkey` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `birthday` date NOT NULL,
  `skill` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`iddonkey`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Donkey`
--

LOCK TABLES `Donkey` WRITE;
/*!40000 ALTER TABLE `Donkey` DISABLE KEYS */;
INSERT INTO `Donkey` VALUES (1,'Donkey1','2022-06-12','pull'),(2,'Donkey2','2021-07-07','stop'),(3,'Donkey3','2017-02-08','go');
/*!40000 ALTER TABLE `Donkey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hamster`
--

DROP TABLE IF EXISTS `Hamster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hamster` (
  `idhamster` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `birthday` date NOT NULL,
  `skill` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idhamster`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hamster`
--

LOCK TABLES `Hamster` WRITE;
/*!40000 ALTER TABLE `Hamster` DISABLE KEYS */;
INSERT INTO `Hamster` VALUES (1,'Hamster1','2023-02-01','run'),(2,'Hamster2','2021-09-07','jump'),(3,'Hamster3','2019-04-06','wheel');
/*!40000 ALTER TABLE `Hamster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HomePets`
--

DROP TABLE IF EXISTS `HomePets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HomePets` (
  `idHomePet` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `birthday` date NOT NULL,
  `skill` varchar(20) DEFAULT NULL,
  `animalType` varchar(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`idHomePet`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HomePets`
--

LOCK TABLES `HomePets` WRITE;
/*!40000 ALTER TABLE `HomePets` DISABLE KEYS */;
INSERT INTO `HomePets` VALUES (1,'Hamster1','2023-02-01','run','hamster'),(2,'Hamster2','2021-09-07','jump','hamster'),(3,'Hamster3','2019-04-06','wheel','hamster'),(4,'Cat1','2022-09-03','eat','cat'),(5,'Cat2','2021-02-07','hunt','cat'),(6,'Cat3','2013-07-04','sleep','cat'),(7,'Dog1','2022-06-08','sit','dog'),(8,'Dog2','2020-05-09','voice','dog'),(9,'Dog3','2015-01-12','eat','dog');
/*!40000 ALTER TABLE `HomePets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Horse`
--

DROP TABLE IF EXISTS `Horse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Horse` (
  `idhorse` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `birthday` date NOT NULL,
  `skill` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idhorse`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Horse`
--

LOCK TABLES `Horse` WRITE;
/*!40000 ALTER TABLE `Horse` DISABLE KEYS */;
INSERT INTO `Horse` VALUES (1,'Horse1','2022-03-08','bow'),(2,'Horse2','2021-12-10','kiss'),(3,'Horse3','2009-08-01','sit');
/*!40000 ALTER TABLE `Horse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PackAnimals`
--

DROP TABLE IF EXISTS `PackAnimals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PackAnimals` (
  `idPackAnimal` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `birthday` date NOT NULL,
  `skill` varchar(20) DEFAULT NULL,
  `animalType` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`idPackAnimal`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PackAnimals`
--

LOCK TABLES `PackAnimals` WRITE;
/*!40000 ALTER TABLE `PackAnimals` DISABLE KEYS */;
INSERT INTO `PackAnimals` VALUES (1,'Donkey1','2022-06-12','pull','donkey'),(2,'Donkey2','2021-07-07','stop','donkey'),(3,'Donkey3','2017-02-08','go','donkey'),(4,'Horse1','2022-03-08','bow','horse'),(5,'Horse2','2021-12-10','kiss','horse'),(6,'Horse3','2009-08-01','sit','horse');
/*!40000 ALTER TABLE `PackAnimals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `YoungAnimals`
--

DROP TABLE IF EXISTS `YoungAnimals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `YoungAnimals` (
  `idYoungAnimal` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `birthday` date NOT NULL,
  `skill` varchar(20) DEFAULT NULL,
  `animalType` varchar(7) NOT NULL DEFAULT '',
  `ageInMonth` bigint DEFAULT NULL,
  PRIMARY KEY (`idYoungAnimal`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `YoungAnimals`
--

LOCK TABLES `YoungAnimals` WRITE;
/*!40000 ALTER TABLE `YoungAnimals` DISABLE KEYS */;
INSERT INTO `YoungAnimals` VALUES (1,'Donkey2','2021-07-07','stop','donkey',19),(2,'Horse2','2021-12-10','kiss','horse',14),(3,'Hamster2','2021-09-07','jump','hamster',17),(4,'Cat2','2021-02-07','hunt','cat',24),(5,'Dog2','2020-05-09','voice','dog',33);
/*!40000 ALTER TABLE `YoungAnimals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-22 22:22:27
