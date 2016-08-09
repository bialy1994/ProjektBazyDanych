-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: projektbd
-- ------------------------------------------------------
-- Server version	5.7.14-log

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
-- Table structure for table `pojazd`
--

DROP TABLE IF EXISTS `pojazd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pojazd` (
  `idPojazd` int(11) NOT NULL,
  `VIN` varchar(17) NOT NULL,
  `pojemnoscSilnika` float DEFAULT NULL,
  `rodzajNadwozia` varchar(20) DEFAULT NULL,
  `nrRejestracyjny` varchar(7) DEFAULT NULL,
  `klimatyzacja` bit(1) DEFAULT NULL,
  `elSzyby` bit(1) DEFAULT NULL,
  `wspomaganie` bit(1) DEFAULT NULL,
  `skrzyniaBiegow` bit(1) DEFAULT NULL,
  `dataZakupu` date DEFAULT NULL,
  `dataZlomowania` date DEFAULT NULL,
  `koszt` float DEFAULT NULL,
  `paliwo` varchar(1) DEFAULT NULL,
  `idModel` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPojazd`),
  KEY `idModel` (`idModel`),
  CONSTRAINT `pojazd_ibfk_1` FOREIGN KEY (`idModel`) REFERENCES `model` (`idModel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pojazd`
--

LOCK TABLES `pojazd` WRITE;
/*!40000 ALTER TABLE `pojazd` DISABLE KEYS */;
/*!40000 ALTER TABLE `pojazd` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-09  0:58:56
