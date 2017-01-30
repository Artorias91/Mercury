CREATE DATABASE  IF NOT EXISTS `mercury` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mercury`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: mercury
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `user` varchar(45) NOT NULL,
  `pwd` varchar(45) NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `user_UNIQUE` (`user`),
  UNIQUE KEY `pwd_UNIQUE` (`pwd`),
  UNIQUE KEY `idAdmin_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comuni`
--

DROP TABLE IF EXISTS `comuni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comuni` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `Provincia_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`,`Provincia_ID`),
  UNIQUE KEY `idComune_UNIQUE` (`ID`),
  UNIQUE KEY `nome_UNIQUE` (`nome`),
  KEY `fk_Comune_Provincia1_idx` (`Provincia_ID`),
  CONSTRAINT `fk_Comune_Provincia1` FOREIGN KEY (`Provincia_ID`) REFERENCES `province` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comuni`
--

LOCK TABLES `comuni` WRITE;
/*!40000 ALTER TABLE `comuni` DISABLE KEYS */;
INSERT INTO `comuni` VALUES (31,'Accetura',7),(26,'Agnone',6),(13,'Ales',3),(53,'Amelia',11),(41,'Aosta',9),(46,'Assisi',10),(45,'Avise',9),(19,'Burgos',4),(38,'Calvera',8),(55,'Calvi dell\'Umbria',11),(36,'Campo Maggiore',8),(47,'Cascia',10),(30,'Castel San Vincenzo',6),(24,'Castelmauro',5),(27,'Castelpetroso',6),(37,'Castelsaraceno',8),(25,'Castropignano',5),(43,'Cogne',9),(35,'Craco',7),(48,'Deruta',10),(7,'Desulo',2),(51,'Fabro',11),(39,'Fillano',8),(49,'Foligno',10),(5,'Gergei',1),(52,'Giove',11),(20,'Ittireddu',4),(40,'Latronico',8),(10,'Lei',2),(32,'Montalbano Jonico',7),(9,'Noragugume',2),(50,'Norcia',10),(42,'Nus',9),(8,'Ollolai',2),(54,'Parrano',11),(17,'Perfugas',4),(44,'Perloz',9),(22,'Petacciato',5),(6,'Posada',2),(2,'Quartu',1),(12,'Riola Sardo',3),(28,'Roccamandolfi',6),(33,'San Mauro forte',7),(16,'Santa Maria Coghinas',4),(1,'Selargius',1),(29,'Sessano del Molise',6),(11,'Solarussa',3),(21,'Termoli',5),(15,'Tramatza',3),(34,'Tursi',7),(18,'Uri',4),(23,'Ururi',5),(3,'Usana',1),(4,'Villaspeciosa',1),(14,'Zeddiani',3);
/*!40000 ALTER TABLE `comuni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datainserimento`
--

DROP TABLE IF EXISTS `datainserimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datainserimento` (
  `data` date NOT NULL,
  PRIMARY KEY (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datainserimento`
--

LOCK TABLES `datainserimento` WRITE;
/*!40000 ALTER TABLE `datainserimento` DISABLE KEYS */;
/*!40000 ALTER TABLE `datainserimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventi`
--

DROP TABLE IF EXISTS `eventi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventi` (
  `ID` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `dataInizio` varchar(45) NOT NULL,
  `dataFine` varchar(45) NOT NULL,
  `orarioInizio` varchar(45) NOT NULL,
  `oraFine` varchar(45) NOT NULL,
  `luogo` varchar(45) NOT NULL,
  `isAttivo` tinyint(1) NOT NULL,
  `Provincia_ID` int(11) NOT NULL,
  `Regione_ID` int(11) NOT NULL,
  `Ente_ID` int(11) NOT NULL,
  `Tipologia_ID` int(11) NOT NULL,
  `Comune_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`,`Provincia_ID`,`Regione_ID`,`Ente_ID`,`Tipologia_ID`,`Comune_ID`),
  UNIQUE KEY `idEvento_UNIQUE` (`ID`),
  UNIQUE KEY `nome_UNIQUE` (`nome`),
  UNIQUE KEY `Tipologia_ID_UNIQUE` (`Tipologia_ID`),
  UNIQUE KEY `Comune_ID_UNIQUE` (`Comune_ID`),
  UNIQUE KEY `Ente_ID_UNIQUE` (`Ente_ID`),
  KEY `fk_Evento_Provincia1_idx` (`Provincia_ID`),
  KEY `fk_Evento_Regione1_idx` (`Regione_ID`),
  KEY `fk_Evento_Ente1_idx` (`Ente_ID`),
  KEY `fk_Evento_Tipologia1_idx` (`Tipologia_ID`),
  KEY `fk_Evento_Comune1_idx` (`Comune_ID`),
  CONSTRAINT `fk_Evento_Comune1` FOREIGN KEY (`Comune_ID`) REFERENCES `comuni` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Evento_Ente1` FOREIGN KEY (`Ente_ID`) REFERENCES `enti` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Evento_Provincia1` FOREIGN KEY (`Provincia_ID`) REFERENCES `province` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Evento_Regione1` FOREIGN KEY (`Regione_ID`) REFERENCES `regioni` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Evento_Tipologia1` FOREIGN KEY (`Tipologia_ID`) REFERENCES `tipologie` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventi`
--

LOCK TABLES `eventi` WRITE;
/*!40000 ALTER TABLE `eventi` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idtable`
--

DROP TABLE IF EXISTS `idtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `idtable` (
  `Enti_ID` int(11) NOT NULL,
  `Admin_ID` int(11) NOT NULL,
  `Utenti_ID` int(11) NOT NULL,
  PRIMARY KEY (`Enti_ID`,`Admin_ID`,`Utenti_ID`),
  KEY `fk_idTable_Admin1_idx` (`Admin_ID`),
  KEY `fk_idTable_Utente1_idx` (`Utenti_ID`),
  CONSTRAINT `fk_idTable_Admin1` FOREIGN KEY (`Admin_ID`) REFERENCES `admin` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_idTable_Ente1` FOREIGN KEY (`Enti_ID`) REFERENCES `enti` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_idTable_Utente1` FOREIGN KEY (`Utenti_ID`) REFERENCES `utenti` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idtable`
--

LOCK TABLES `idtable` WRITE;
/*!40000 ALTER TABLE `idtable` DISABLE KEYS */;
/*!40000 ALTER TABLE `idtable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `province` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `Regione_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`,`Regione_ID`),
  UNIQUE KEY `idProvincia_UNIQUE` (`ID`),
  UNIQUE KEY `nome_UNIQUE` (`nome`),
  KEY `fk_Provincia_Regione1_idx` (`Regione_ID`),
  CONSTRAINT `fk_Provincia_Regione1` FOREIGN KEY (`Regione_ID`) REFERENCES `regioni` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES (9,'Aosta',4),(1,'Cagliari',1),(5,'Campobasso',2),(6,'Isernia',2),(7,'Matera',3),(2,'Nuoro',1),(3,'Oristano',1),(10,'Perugia',5),(8,'Potenza',3),(4,'Sassari',1),(11,'Terni',5);
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regioni`
--

DROP TABLE IF EXISTS `regioni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regioni` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `idRegione_UNIQUE` (`ID`),
  UNIQUE KEY `nome_UNIQUE` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regioni`
--

LOCK TABLES `regioni` WRITE;
/*!40000 ALTER TABLE `regioni` DISABLE KEYS */;
INSERT INTO `regioni` VALUES (3,'Basilicata'),(2,'Molise'),(1,'Sardegna'),(5,'Umbria'),(4,'Valle_Aosta');
/*!40000 ALTER TABLE `regioni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipologie`
--

DROP TABLE IF EXISTS `tipologie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipologie` (
  `ID` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `idTipologia_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipologie`
--

LOCK TABLES `tipologie` WRITE;
/*!40000 ALTER TABLE `tipologie` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipologie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mercury'
--

--
-- Dumping routines for database 'mercury'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-30 15:25:45
