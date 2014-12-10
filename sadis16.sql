CREATE DATABASE  IF NOT EXISTS `sadis` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sadis`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: sadis
-- ------------------------------------------------------
-- Server version	5.6.16

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
-- Table structure for table `auditoria`
--

DROP TABLE IF EXISTS `auditoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria` (
  `CdIdeAudit` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Niveis_CdIdeNivel` int(11) NOT NULL,
  `Usuarios_CdIdeUsu` varchar(45) NOT NULL,
  `DtHrIdeAudit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DsIdeAudit` varchar(45) NOT NULL,
  `IpAudit` int(11) NOT NULL,
  PRIMARY KEY (`CdIdeAudit`)
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria`
--

LOCK TABLES `auditoria` WRITE;
/*!40000 ALTER TABLE `auditoria` DISABLE KEYS */;
INSERT INTO `auditoria` VALUES (1,1,'1','2014-07-26 20:11:47','AcessarCursos',2130706433),(2,1,'1','2014-07-26 20:18:11','AcessarCursos',2130706433),(3,1,'1','2014-07-26 20:18:26','AcessarCursos',2130706433),(4,1,'1','2014-07-26 20:18:56','AcessarCursos',2130706433),(5,1,'1','2014-07-26 20:20:27','AcessarCursos',2130706433),(6,1,'1','2014-07-26 20:20:58','AcessarCursos',2130706433),(7,1,'1','2014-07-26 20:24:54','AcessarCursos',2130706433),(8,1,'1','2014-07-26 20:26:35','AcessarCursos',2130706433),(9,1,'1','2014-07-26 20:33:14','AcessarUsuarios',2130706433),(10,1,'1','2014-07-26 20:33:17','AcessarUsuarios',2130706433),(11,1,'1','2014-07-26 20:33:36','AcessarUsuarios',2130706433),(12,1,'1','2014-07-26 20:33:36','AcessarUsuarios',2130706433),(13,1,'1','2014-07-26 20:33:45','AcessarUsuarios',2130706433),(14,1,'1','2014-07-26 20:33:54','AcessarUsuarios',2130706433),(15,1,'1','2014-07-26 20:33:55','AcessarUsuarios',2130706433),(16,1,'1','2014-07-26 20:34:32','AcessarUsuarios',2130706433),(17,1,'1','2014-07-26 20:34:39','AcessarUsuarios',2130706433),(18,1,'1','2014-07-26 20:34:49','AcessarUsuarios',2130706433),(19,1,'1','2014-07-26 20:34:53','AcessarUsuarios',2130706433),(20,1,'1','2014-07-26 20:37:46','AcessarUsuarios->Cadastro',2130706433),(21,1,'1','2014-07-26 20:37:53','AcessarUsuarios->Cadastro',2130706433),(22,1,'1','2014-07-26 20:37:54','AcessarUsuarios',2130706433),(23,1,'1','2014-07-26 20:38:01','AcessarUsuarios->Deltar',2130706433),(24,1,'1','2014-07-26 20:38:01','AcessarUsuarios',2130706433),(25,1,'1','2014-07-26 20:38:03','AcessarUsuarios->Deltar',2130706433),(26,1,'1','2014-07-26 20:38:03','AcessarUsuarios',2130706433),(27,1,'1','2014-07-26 20:38:28','AcessarUsuarios',2130706433),(28,1,'1','2014-07-26 20:38:30','AcessarUsuarios->Deltar',2130706433),(29,1,'1','2014-07-26 20:38:30','AcessarUsuarios',2130706433),(30,1,'1','2014-07-26 20:38:31','AcessarUsuarios->Deltar',2130706433),(31,1,'1','2014-07-26 20:38:32','AcessarUsuarios',2130706433),(32,1,'1','2014-07-26 20:47:41','AcessarUsuarios',2130706433),(33,1,'1','2014-07-26 20:47:44','AcessarUsuarios->Editar->',2130706433),(34,1,'1','2014-07-26 20:48:35','AcessarUsuarios->Editar->',2130706433),(35,1,'1','2014-07-26 20:48:37','AcessarUsuarios->Editar->',2130706433),(36,1,'1','2014-07-26 20:48:48','AcessarUsuarios->Editar->',2130706433),(37,1,'1','2014-07-26 20:48:57','AcessarUsuarios->Editar->1',2130706433),(38,1,'1','2014-07-26 20:49:03','AcessarUsuarios->Editar->1',2130706433),(39,1,'1','2014-07-26 20:53:28','AcessarUsuarios->Editar->1',2130706433),(40,1,'1','2014-07-26 20:56:32','AcessarUsuarios',2130706433),(41,1,'1','2014-07-26 20:56:34','AcessarUsuarios->Editar->1',2130706433),(42,1,'1','2014-07-26 20:56:36','AcessarUsuarios->Editar->1',2130706433),(43,1,'1','2014-07-26 20:56:50','AcessarUsuarios->Editar->1',2130706433),(44,1,'1','2014-07-26 20:56:50','AcessarUsuarios',2130706433),(45,1,'1','2014-07-26 20:56:54','AcessarUsuarios->Editar->1',2130706433),(46,1,'1','2014-07-26 20:56:56','AcessarUsuarios->Editar->1',2130706433),(47,1,'1','2014-07-26 20:56:57','AcessarUsuarios',2130706433),(48,1,'1','2014-07-26 21:01:16','AcessarUsuarios',2130706433),(49,1,'1','2014-07-26 21:06:48','AcessarCursos',2130706433),(50,1,'1','2014-07-26 21:10:34','AcessarDisciplinas',2130706433),(51,1,'1','2014-07-26 21:17:44','AcessarDisciplinas',2130706433),(52,1,'1','2014-07-26 21:18:38','AcessarDisciplinas',2130706433),(53,1,'1','2014-07-26 21:18:53','AcessarDisciplinas',2130706433),(54,1,'1','2014-07-26 21:19:23','AcessarDisciplinas',2130706433),(55,1,'1','2014-07-26 21:19:24','AcessarDisciplinas',2130706433),(56,1,'1','2014-07-26 21:19:43','AcessarDisciplinas',2130706433),(57,1,'1','2014-07-26 21:30:11','AcessarDisciplinas',2130706433),(58,1,'1','2014-07-26 21:30:12','AcessarDisciplinas',2130706433),(59,1,'1','2014-07-26 21:33:53','AcessarDisciplinas',2130706433),(60,1,'1','2014-07-26 21:34:03','AcessarDisciplinas',2130706433),(61,1,'1','2014-07-26 21:34:19','AcessarDisciplinas',2130706433),(62,1,'1','2014-07-26 21:38:25','AcessarDisciplinas',2130706433),(63,1,'1','2014-07-26 21:38:37','AcessarDisciplinas',2130706433),(64,1,'1','2014-07-26 21:38:38','AcessarDisciplinas',2130706433),(65,1,'1','2014-07-26 21:39:31','AcessarDisciplinas',2130706433),(66,1,'1','2014-07-26 21:39:48','AcessarDisciplinas',2130706433),(67,1,'1','2014-07-26 21:42:52','AcessarDisciplinas',2130706433),(68,1,'1','2014-07-26 21:43:17','AcessarDisciplinas',2130706433),(69,1,'1','2014-07-26 21:47:07','AcessarDisciplinas->Cadastro',2130706433),(70,1,'1','2014-07-26 21:47:22','AcessarDisciplinas->Cadastro',2130706433),(71,1,'1','2014-07-26 22:00:53','AcessarDisciplinas->Cadastro',2130706433),(72,1,'1','2014-07-26 22:01:02','AcessarDisciplinas->Cadastro',2130706433),(73,1,'1','2014-07-26 22:01:03','AcessarDisciplinas',2130706433),(74,1,'1','2014-07-26 22:02:59','AcessarDisciplinas->Cadastro',2130706433),(75,1,'1','2014-07-26 22:03:08','AcessarDisciplinas->Cadastro',2130706433),(76,1,'1','2014-07-26 22:03:09','AcessarDisciplinas',2130706433),(77,1,'1','2014-07-26 22:07:41','AcessarDisciplinas->Cadastro',2130706433),(78,1,'1','2014-07-26 22:07:52','AcessarDisciplinas->Cadastro',2130706433),(79,1,'1','2014-07-26 22:07:52','AcessarDisciplinas',2130706433),(80,1,'1','2014-07-26 22:16:01','AcessarDisciplinas',2130706433),(81,1,'1','2014-07-26 22:16:02','AcessarDisciplinas->Deletar->5',2130706433),(82,1,'1','2014-07-26 22:16:03','AcessarDisciplinas',2130706433),(83,1,'1','2014-07-26 22:17:08','AcessarDisciplinas',2130706433),(84,1,'1','2014-07-26 22:17:11','AcessarDisciplinas->Cadastro',2130706433),(85,1,'1','2014-07-26 22:17:23','AcessarDisciplinas->Cadastro',2130706433),(86,1,'1','2014-07-26 22:17:24','AcessarDisciplinas',2130706433),(87,1,'1','2014-07-26 22:17:51','AcessarDisciplinas->Deletar->6',2130706433),(88,1,'1','2014-07-26 22:17:51','AcessarDisciplinas',2130706433),(89,1,'1','2014-07-26 22:18:51','AcessarDisciplinas',2130706433),(90,1,'1','2014-07-26 22:20:26','AcessarCursos',2130706433),(91,1,'1','2014-07-26 22:20:28','AcessarCursos',2130706433),(92,1,'1','2014-07-26 22:20:35','AcessarCursos',2130706433),(93,1,'1','2014-07-26 22:20:36','AcessarCursos',2130706433),(94,1,'1','2014-07-26 22:20:40','AcessarDisciplinas',2130706433),(95,1,'1','2014-07-26 22:20:42','AcessarDisciplinas->Cadastro',2130706433),(96,1,'1','2014-07-26 22:20:55','AcessarDisciplinas->Cadastro',2130706433),(97,1,'1','2014-07-26 22:20:56','AcessarDisciplinas',2130706433),(98,1,'1','2014-07-26 22:33:55','AcessarDisciplinas',2130706433),(99,1,'1','2014-07-27 16:16:05','AcessarDisciplinas',2130706433),(100,1,'1','2014-07-27 16:16:07','AcessarDisciplinas->Editar->1',2130706433),(101,1,'1','2014-07-27 16:16:10','AcessarDisciplinas',2130706433),(102,1,'1','2014-07-27 16:16:29','AcessarDisciplinas->Editar->1',2130706433),(103,1,'1','2014-07-27 16:17:08','AcessarDisciplinas->Editar->1',2130706433),(104,1,'1','2014-07-27 16:17:12','AcessarDisciplinas->Editar->1',2130706433),(105,1,'1','2014-07-27 16:17:13','AcessarDisciplinas',2130706433),(106,1,'1','2014-07-27 16:17:30','AcessarDisciplinas->Editar->1',2130706433),(107,1,'1','2014-07-27 16:17:36','AcessarDisciplinas->Editar->1',2130706433),(108,1,'1','2014-07-27 16:17:36','AcessarDisciplinas',2130706433),(109,1,'1','2014-07-27 16:19:14','AcessarDisciplinas',2130706433),(110,1,'1','2014-07-27 16:19:16','AcessarDisciplinas->Editar->1',2130706433),(111,1,'1','2014-07-27 16:19:19','AcessarDisciplinas->Editar->1',2130706433),(112,1,'1','2014-07-27 16:19:20','AcessarDisciplinas',2130706433),(113,1,'1','2014-07-27 16:19:21','AcessarDisciplinas->Editar->1',2130706433),(114,1,'1','2014-07-27 16:19:23','AcessarDisciplinas->Editar->1',2130706433),(115,1,'1','2014-07-27 16:19:24','AcessarDisciplinas',2130706433),(116,1,'1','2014-07-27 17:21:32','AcessarUsuarios',2130706433),(117,1,'1','2014-07-27 17:29:46','AcessarCursos',2130706433),(118,1,'1','2014-07-27 17:36:02','AcessarSolicitacoes',2130706433),(119,1,'1','2014-07-27 17:37:45','AcessarSolicitacoes',2130706433),(120,1,'1','2014-07-27 17:38:00','AcessarSolicitacoes',2130706433),(121,1,'1','2014-07-27 17:38:38','AcessarSolicitacoes',2130706433),(122,1,'1','2014-07-27 17:41:04','AcessarSolicitacoes',2130706433),(123,1,'1','2014-07-27 17:41:16','AcessarSolicitacoes',2130706433),(124,1,'1','2014-07-27 17:41:40','AcessarSolicitacoes',2130706433),(125,1,'1','2014-07-27 17:42:24','AcessarSolicitacoes',2130706433),(126,1,'1','2014-07-27 17:43:11','AcessarSolicitacoes',2130706433),(127,1,'1','2014-07-27 17:45:10','AcessarSolicitacoes',2130706433),(128,1,'1','2014-07-27 17:46:30','AcessarSolicitacoes',2130706433),(129,1,'1','2014-07-27 17:51:23','AcessarSolicitacoes',2130706433),(130,1,'1','2014-07-27 17:51:41','AcessarSolicitacoes',2130706433),(131,1,'1','2014-07-27 17:52:25','AcessarSolicitacoes',2130706433),(132,1,'1','2014-07-27 17:53:00','AcessarSolicitacoes',2130706433),(133,1,'1','2014-07-27 17:55:34','AcessarSolicitacoes',2130706433),(134,1,'1','2014-07-27 17:56:04','AcessarSolicitacoes',2130706433),(135,1,'1','2014-07-27 17:56:41','AcessarSolicitacoes',2130706433),(136,1,'1','2014-07-27 17:56:48','AcessarSolicitacoes',2130706433),(137,1,'1','2014-07-27 18:00:27','AcessarSolicitacoes',2130706433),(138,1,'1','2014-07-27 18:14:19','AcessarSolicitacoes->Gerenciar->1',2130706433),(139,1,'1','2014-07-27 18:19:31','AcessarSolicitacoes->Gerenciar->1',2130706433),(140,1,'1','2014-07-27 18:20:05','AcessarSolicitacoes->Gerenciar->1',2130706433),(141,1,'1','2014-07-27 18:20:06','AcessarSolicitacoes->Gerenciar->1',2130706433),(142,1,'1','2014-07-27 18:20:23','AcessarSolicitacoes->Gerenciar->1',2130706433),(143,1,'1','2014-07-27 18:20:37','AcessarSolicitacoes',2130706433),(144,1,'1','2014-07-27 18:20:38','AcessarSolicitacoes->Gerenciar->1',2130706433),(145,1,'1','2014-07-27 18:21:57','AcessarSolicitacoes->Gerenciar->1',2130706433),(146,1,'1','2014-07-27 18:22:18','AcessarSolicitacoes->Gerenciar->1',2130706433),(147,1,'1','2014-07-27 18:25:46','AcessarSolicitacoes->Gerenciar->1',2130706433),(148,1,'1','2014-07-27 18:26:08','AcessarSolicitacoes->Gerenciar->1',2130706433),(149,1,'1','2014-07-27 18:26:26','AcessarSolicitacoes->Gerenciar->1',2130706433),(150,1,'1','2014-07-27 18:26:54','AcessarSolicitacoes->Gerenciar->1',2130706433),(151,1,'1','2014-07-27 18:26:55','AcessarSolicitacoes->Gerenciar->1',2130706433),(152,1,'1','2014-07-27 18:29:48','AcessarSolicitacoes->Gerenciar->1',2130706433),(153,1,'1','2014-07-27 18:30:28','AcessarSolicitacoes->Gerenciar->1',2130706433),(154,1,'1','2014-07-27 18:30:56','AcessarSolicitacoes->Gerenciar->1',2130706433),(155,1,'1','2014-07-27 18:31:14','AcessarSolicitacoes->Gerenciar->1',2130706433),(156,1,'1','2014-07-27 18:33:26','AcessarSolicitacoes->Gerenciar->1',2130706433),(157,1,'1','2014-07-27 18:33:31','AcessarSolicitacoes->Gerenciar->1',2130706433),(158,1,'1','2014-07-27 18:34:38','AcessarSolicitacoes->Gerenciar->1',2130706433),(159,1,'1','2014-07-27 18:34:40','AcessarSolicitacoes->Gerenciar->1',2130706433),(160,1,'1','2014-07-27 18:34:47','AcessarSolicitacoes->Gerenciar->1',2130706433),(161,1,'1','2014-07-27 18:35:39','AcessarSolicitacoes->Gerenciar->1',2130706433),(162,1,'1','2014-07-27 18:38:38','AcessarSolicitacoes->Gerenciar->1',2130706433),(163,1,'1','2014-07-27 18:38:40','AcessarSolicitacoes->Gerenciar->1',2130706433),(164,1,'1','2014-07-27 18:39:46','AcessarSolicitacoes->Gerenciar->1',2130706433),(165,1,'1','2014-07-27 18:39:54','AcessarSolicitacoes->Gerenciar->3',2130706433),(166,1,'1','2014-07-27 18:40:33','AcessarSolicitacoes->Gerenciar->3',2130706433),(167,1,'1','2014-07-27 18:41:19','AcessarSolicitacoes',2130706433),(168,1,'1','2014-07-27 18:41:20','AcessarSolicitacoes->Gerenciar->3',2130706433),(169,1,'1','2014-07-27 18:42:04','AcessarSolicitacoes->Gerenciar->3',2130706433),(170,1,'1','2014-07-27 19:02:21','AcessarDisciplinas->Editar->',2130706433),(171,1,'1','2014-07-27 19:02:42','AcessarDisciplinas->Alterar->',2130706433),(172,1,'1','2014-07-27 19:02:47','AcessarSolicitacoes->Gerenciar->3',2130706433),(173,1,'1','2014-07-27 19:02:48','AcessarSolicitacoes->Gerenciar->3',2130706433),(174,1,'1','2014-07-27 19:02:50','AcessarDisciplinas->Alterar->3',2130706433),(175,1,'1','2014-07-27 19:03:30','AcessarDisciplinas->Alterar->3',2130706433),(176,1,'1','2014-07-27 19:03:34','AcessarDisciplinas->Alterar->3',2130706433),(177,1,'1','2014-07-27 19:03:34','AcessarSolicitacoes',2130706433),(178,1,'1','2014-07-27 19:04:08','AcessarSolicitacoes',2130706433),(179,1,'1','2014-07-27 19:04:09','AcessarSolicitacoes->Gerenciar->3',2130706433),(180,1,'1','2014-07-27 19:04:11','AcessarDisciplinas->Alterar->3',2130706433),(181,1,'1','2014-07-27 19:04:13','AcessarDisciplinas->Alterar->3',2130706433),(182,1,'1','2014-07-27 19:04:13','AcessarSolicitacoes',2130706433),(183,1,'1','2014-07-27 19:04:51','AcessarSolicitacoes',2130706433),(184,1,'1','2014-07-27 19:05:20','AcessarSolicitacoes',2130706433),(185,1,'1','2014-07-27 19:05:23','AcessarSolicitacoes->Gerenciar->3',2130706433),(186,1,'1','2014-07-27 19:05:27','AcessarDisciplinas->Alterar->3',2130706433),(187,1,'1','2014-07-27 19:05:30','AcessarDisciplinas->Alterar->3',2130706433),(188,1,'1','2014-07-27 19:05:30','AcessarSolicitacoes',2130706433),(189,1,'1','2014-07-27 19:21:31','AcessarDisciplinas->Alterar->3',2130706433),(190,1,'1','2014-07-27 19:25:59','AcessarSolicitacoes',2130706433),(191,1,'1','2014-07-27 19:26:10','AcessarSolicitacoes',2130706433),(192,1,'1','2014-07-27 19:26:25','AcessarSolicitacoes',2130706433),(193,1,'1','2014-07-27 19:26:33','AcessarSolicitacoes',2130706433),(194,1,'1','2014-07-27 19:26:59','AcessarSolicitacoes',2130706433),(195,1,'1','2014-07-27 19:27:00','AcessarSolicitacoes->Gerenciar->17',2130706433),(196,1,'1','2014-07-27 19:27:04','AcessarSolicitacoes->Gerenciar->17',2130706433),(197,1,'1','2014-07-27 19:28:08','AcessarDisciplinas->Alterar->17',2130706433),(198,1,'1','2014-07-27 19:28:11','AcessarDisciplinas->Alterar->17',2130706433),(199,1,'1','2014-07-27 19:28:12','AcessarSolicitacoes',2130706433),(200,1,'1','2014-07-27 19:28:58','AcessarSolicitacoes->Gerenciar->17',2130706433),(201,1,'1','2014-07-27 19:29:28','AcessarSolicitacoes->Gerenciar->17',2130706433),(202,1,'1','2014-07-27 19:29:41','AcessarSolicitacoes->Gerenciar->17',2130706433),(203,1,'1','2014-07-27 19:29:53','AcessarSolicitacoes->Gerenciar->17',2130706433),(204,1,'1','2014-07-27 19:30:24','AcessarSolicitacoes->Gerenciar->17',2130706433),(205,1,'1','2014-07-27 19:30:34','AcessarSolicitacoes->Gerenciar->17',2130706433),(206,1,'1','2014-07-27 19:30:47','AcessarSolicitacoes->Gerenciar->17',2130706433),(207,1,'1','2014-07-27 19:30:59','AcessarSolicitacoes->Gerenciar->17',2130706433),(208,1,'1','2014-07-27 19:31:13','AcessarSolicitacoes->Gerenciar->17',2130706433),(209,1,'1','2014-07-27 19:31:45','AcessarSolicitacoes',2130706433),(210,1,'1','2014-07-27 19:32:21','AcessarSolicitacoes',2130706433),(211,1,'1','2014-07-27 19:32:41','AcessarDisciplinas',2130706433),(212,1,'1','2014-07-27 19:33:18','AcessarDisciplinas',2130706433),(213,1,'1','2014-07-27 19:33:29','AcessarDisciplinas',2130706433),(214,1,'1','2014-07-27 19:33:40','AcessarDisciplinas',2130706433),(215,1,'1','2014-07-27 19:34:08','AcessarDisciplinas',2130706433),(216,1,'1','2014-07-27 19:34:14','AcessarDisciplinas',2130706433),(217,1,'1','2014-07-27 19:34:35','AcessarSolicitacoes',2130706433),(218,1,'1','2014-07-27 19:42:09','AcessarSolicitacoes',2130706433),(219,1,'1','2014-07-28 00:29:04','AcessarSolicitacoes',2130706433),(220,1,'1','2014-07-28 00:44:08','AcessarSolicitacoes',2130706433),(221,1,'1','2014-07-28 00:44:09','AcessarSolicitacoes',2130706433),(222,1,'1','2014-07-28 00:44:26','AcessarSolicitacoes',2130706433),(223,1,'1','2014-07-28 00:44:40','AcessarSolicitacoes',2130706433),(224,1,'1','2014-07-28 00:44:49','AcessarSolicitacoes',2130706433),(225,1,'1','2014-07-28 00:45:21','AcessarSolicitacoes',2130706433),(226,1,'1','2014-07-28 00:46:45','AcessarSolicitacoes',2130706433),(227,1,'1','2014-07-28 00:47:36','AcessarSolicitacoes',2130706433),(228,1,'1','2014-07-28 00:47:42','AcessarSolicitacoes',2130706433),(229,1,'1','2014-07-28 00:47:47','AcessarSolicitacoes',2130706433),(230,1,'1','2014-07-28 00:47:51','AcessarSolicitacoes',2130706433),(231,1,'1','2014-07-28 00:48:02','AcessarSolicitacoes',2130706433),(232,1,'1','2014-07-28 00:48:08','AcessarSolicitacoes',2130706433),(233,1,'1','2014-07-28 00:48:34','AcessarSolicitacoes',2130706433),(234,1,'1','2014-07-28 00:48:53','AcessarSolicitacoes',2130706433),(235,1,'1','2014-07-28 00:49:00','AcessarSolicitacoes',2130706433),(236,1,'1','2014-07-28 00:49:43','AcessarSolicitacoes',2130706433),(237,1,'1','2014-07-28 00:50:05','AcessarSolicitacoes',2130706433),(238,1,'1','2014-07-28 00:50:39','AcessarSolicitacoes',2130706433),(239,1,'1','2014-07-28 00:50:44','AcessarSolicitacoes',2130706433),(240,1,'1','2014-07-28 00:50:51','AcessarSolicitacoes',2130706433),(241,1,'1','2014-07-28 00:50:57','AcessarSolicitacoes',2130706433),(242,1,'1','2014-07-28 00:51:16','AcessarSolicitacoes',2130706433),(243,1,'1','2014-07-28 00:51:23','AcessarSolicitacoes',2130706433),(244,1,'1','2014-07-28 00:51:27','AcessarSolicitacoes',2130706433),(245,1,'1','2014-07-28 00:51:31','AcessarSolicitacoes',2130706433),(246,1,'1','2014-07-28 00:51:36','AcessarSolicitacoes',2130706433),(247,1,'1','2014-07-28 00:51:42','AcessarSolicitacoes',2130706433),(248,1,'1','2014-07-28 00:51:46','AcessarSolicitacoes',2130706433),(249,1,'1','2014-07-28 00:51:51','AcessarSolicitacoes',2130706433),(250,1,'1','2014-07-28 00:52:12','AcessarSolicitacoes',2130706433),(251,1,'1','2014-07-28 00:52:23','AcessarSolicitacoes',2130706433),(252,1,'1','2014-07-28 00:52:30','AcessarSolicitacoes',2130706433),(253,1,'1','2014-07-28 00:52:42','AcessarSolicitacoes',2130706433),(254,1,'1','2014-07-28 00:52:51','AcessarSolicitacoes',2130706433),(255,1,'1','2014-07-28 00:53:04','AcessarSolicitacoes',2130706433),(256,1,'1','2014-07-28 00:53:11','AcessarSolicitacoes',2130706433),(257,1,'1','2014-07-28 00:53:16','AcessarSolicitacoes',2130706433),(258,1,'1','2014-07-28 00:53:17','AcessarSolicitacoes',2130706433),(259,1,'1','2014-07-28 00:53:27','AcessarSolicitacoes',2130706433),(260,1,'1','2014-07-28 00:53:33','AcessarSolicitacoes',2130706433),(261,1,'1','2014-07-28 00:54:14','AcessarSolicitacoes',2130706433),(262,1,'1','2014-07-28 00:54:20','AcessarSolicitacoes',2130706433),(263,1,'1','2014-07-28 00:54:27','AcessarSolicitacoes',2130706433),(264,1,'1','2014-07-28 00:54:50','AcessarSolicitacoes',2130706433),(265,1,'1','2014-07-28 00:54:58','AcessarSolicitacoes',2130706433),(266,1,'1','2014-07-28 00:55:20','AcessarSolicitacoes',2130706433),(267,1,'1','2014-07-28 00:55:28','AcessarSolicitacoes',2130706433),(268,1,'1','2014-07-28 00:56:25','AcessarSolicitacoes',2130706433),(269,1,'1','2014-07-28 00:56:26','AcessarSolicitacoes',2130706433),(270,1,'1','2014-07-28 00:56:32','AcessarSolicitacoes',2130706433),(271,1,'1','2014-07-28 00:57:57','AcessarSolicitacoes',2130706433),(272,1,'1','2014-07-28 00:58:03','AcessarSolicitacoes',2130706433),(273,1,'1','2014-11-15 13:43:49','AcessarUsuarios',2130706433),(274,1,'1','2014-11-15 13:43:58','AcessarSolicitacoes',2130706433),(275,1,'1','2014-11-15 13:44:04','AcessarSolicitacoes',2130706433),(276,1,'1','2014-11-15 13:46:18','AcessarSolicitacoes',2130706433),(277,1,'1','2014-11-16 22:12:13','AcessarSolicitacoes',2130706433),(278,1,'1','2014-11-16 22:12:39','AcessarSolicitacoes',2130706433),(279,1,'1','2014-11-24 23:26:15','AcessarUsuarios',2130706433),(280,1,'1','2014-11-24 23:30:05','AcessarSolicitacoes',2130706433),(281,1,'1','2014-11-24 23:30:50','AcessarSolicitacoes',2130706433),(282,1,'1','2014-11-24 23:31:24','AcessarSolicitacoes',2130706433),(283,1,'1','2014-11-24 23:33:24','AcessarSolicitacoes',2130706433),(284,1,'1','2014-11-24 23:33:45','AcessarSolicitacoes->Gerenciar->1',2130706433),(285,1,'1','2014-11-24 23:34:03','AcessarDisciplinas->Alterar->1',2130706433),(286,1,'1','2014-11-24 23:34:06','AcessarDisciplinas->Alterar->1',2130706433),(287,1,'1','2014-11-24 23:34:06','AcessarSolicitacoes',2130706433),(288,1,'1','2014-11-24 23:34:09','AcessarSolicitacoes->Gerenciar->1',2130706433),(289,1,'1','2014-11-24 23:40:07','AcessarSolicitacoes',2130706433),(290,1,'1','2014-11-24 23:40:39','AcessarSolicitacoes->Gerenciar->1',2130706433),(291,1,'1','2014-11-24 23:40:48','AcessarSolicitacoes',2130706433),(292,1,'1','2014-11-24 23:43:43','AcessarSolicitacoes',2130706433),(293,1,'1','2014-11-24 23:47:02','AcessarSolicitacoes',2130706433),(294,1,'1','2014-11-24 23:47:15','AcessarSolicitacoes',2130706433),(295,1,'1','2014-11-24 23:47:53','AcessarSolicitacoes',2130706433),(296,1,'1','2014-11-24 23:48:17','AcessarSolicitacoes',2130706433),(297,1,'1','2014-11-24 23:49:07','AcessarSolicitacoes',2130706433),(298,1,'1','2014-11-24 23:50:45','AcessarCursos',2130706433),(299,1,'1','2014-11-24 23:52:40','AcessarCursos',2130706433),(300,1,'1','2014-11-24 23:53:23','AcessarCursos',2130706433),(301,1,'1','2014-11-24 23:53:24','AcessarCursos',2130706433),(302,1,'1','2014-11-24 23:55:03','AcessarCursos',2130706433),(303,1,'1','2014-11-24 23:55:49','AcessarCursos',2130706433),(304,1,'1','2014-11-24 23:59:44','AcessarCursos',2130706433),(305,1,'1','2014-11-25 00:00:47','AcessarCursos',2130706433),(306,1,'1','2014-11-25 00:02:39','AcessarUsuarios',2130706433),(307,1,'1','2014-11-25 00:03:24','AcessarUsuarios',2130706433),(308,1,'1','2014-11-25 00:06:34','AcessarUsuarios',2130706433),(309,1,'1','2014-11-25 00:06:36','AcessarUsuarios->Cadastro',2130706433),(310,1,'1','2014-11-25 00:07:18','AcessarUsuarios->Cadastro',2130706433),(311,1,'1','2014-11-25 00:07:23','AcessarUsuarios',2130706433),(312,1,'1','2014-11-25 00:07:39','AcessarUsuarios',2130706433),(313,1,'1','2014-11-25 00:07:40','AcessarUsuarios->Cadastro',2130706433),(314,1,'1','2014-11-25 00:07:42','AcessarUsuarios',2130706433),(315,1,'1','2014-11-25 00:07:43','AcessarUsuarios->Editar->1',2130706433),(316,1,'1','2014-11-25 00:08:03','AcessarCursos',2130706433),(317,1,'1','2014-11-25 00:08:11','AcessarDisciplinas',2130706433),(318,1,'1','2014-11-25 00:08:22','AcessarUsuarios',2130706433),(319,1,'1','2014-11-25 00:08:24','AcessarSolicitacoes',2130706433),(320,1,'1','2014-11-25 00:08:30','AcessarSolicitacoes->Gerenciar->1',2130706433);
/*!40000 ALTER TABLE `auditoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursos` (
  `CdIdeCur` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NmIdeCur` varchar(45) NOT NULL,
  `Departamento_CdIdeDepartamento` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`CdIdeCur`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'Ciência da Computação',1),(2,'Engenharia da Computação',1),(7,'Sistemas da Informação',2);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamentos` (
  `CdIdeDepartamento` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NmIdeDepartamento` varchar(45) NOT NULL,
  PRIMARY KEY (`CdIdeDepartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,'DCC'),(2,'DENG'),(3,'DAC'),(4,'TODOS');
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direitos`
--

DROP TABLE IF EXISTS `direitos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direitos` (
  `CdIdeDireito` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Niveis_CdIdeNivel` int(11) NOT NULL,
  `DsIdeRotina` varchar(45) NOT NULL,
  `IncIdeRot` tinyint(1) NOT NULL,
  `AltIdeRot` tinyint(1) NOT NULL,
  `ConsIdeRot` tinyint(1) NOT NULL,
  `ExcIdeRot` tinyint(1) NOT NULL,
  PRIMARY KEY (`CdIdeDireito`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direitos`
--

LOCK TABLES `direitos` WRITE;
/*!40000 ALTER TABLE `direitos` DISABLE KEYS */;
INSERT INTO `direitos` VALUES (1,1,'AcessarSistema',1,1,1,1),(2,2,'AcessarSistema',1,0,1,0),(3,1,'AcessarCursos',1,1,1,1),(4,2,'AcessarCursos',0,0,0,0),(5,3,'AcessarCursos',1,1,1,0),(6,3,'AcessarSistema',1,1,1,1),(7,1,'AcessarUsuarios',1,1,1,1),(8,2,'AcessarUsuarios',0,0,0,0),(9,3,'AcessarUsuarios',0,0,0,0),(10,1,'AcessarDisciplinas',1,1,1,1),(11,2,'AcessarDisciplinas',0,0,0,0),(12,3,'AcessarDisciplinas',1,1,1,0),(13,1,'AcessarSolicitacoes',1,1,1,1),(14,2,'AcessarSolicitacoes',0,0,0,0),(15,3,'AcessarSolicitacoes',1,1,1,0);
/*!40000 ALTER TABLE `direitos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplinas`
--

DROP TABLE IF EXISTS `disciplinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disciplinas` (
  `CdIdeDis` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CodIdeDis` varchar(10) NOT NULL,
  `NmIdeDis` varchar(45) NOT NULL,
  PRIMARY KEY (`CdIdeDis`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplinas`
--

LOCK TABLES `disciplinas` WRITE;
/*!40000 ALTER TABLE `disciplinas` DISABLE KEYS */;
INSERT INTO `disciplinas` VALUES (1,'MATA65','Computação Gráfica'),(2,'MATA58','Sistemas Operacionais'),(3,'MATA48','Arquitetura de Computadores'),(4,'MATA55','Programação Orientada a Objetos'),(7,'MATA60','Redes de Computadores');
/*!40000 ALTER TABLE `disciplinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculdades`
--

DROP TABLE IF EXISTS `faculdades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculdades` (
  `CdIdeFacul` char(5) NOT NULL,
  `NmIdeFacul` varchar(45) NOT NULL,
  PRIMARY KEY (`CdIdeFacul`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `niveis`
--

DROP TABLE IF EXISTS `niveis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `niveis` (
  `CdIdeNivel` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `DsIdeNivel` varchar(20) NOT NULL,
  PRIMARY KEY (`CdIdeNivel`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `niveis`
--

LOCK TABLES `niveis` WRITE;
/*!40000 ALTER TABLE `niveis` DISABLE KEYS */;
INSERT INTO `niveis` VALUES (1,'Administrador'),(2,'Usuário'),(3,'Coordenador');
/*!40000 ALTER TABLE `niveis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_alunos_disciplinas`
--

DROP TABLE IF EXISTS `r_alunos_disciplinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_alunos_disciplinas` (
  `CdIdeDisAlu` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ALUNOS_CdIdeAlu` int(11) NOT NULL,
  `NmIdeDisciplina` varchar(45) NOT NULL,
  `CodDisciplina` varchar(45) NULL,
  `CargaHorariaDisciplina` int(11) NOT NULL,
  `ComentarioDisciplina` varchar(256) NULL,
  PRIMARY KEY (`CdIdeDisAlu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_alunos_disciplinas`
--

LOCK TABLES `r_alunos_disciplinas` WRITE;
/*!40000 ALTER TABLE `r_alunos_disciplinas` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_alunos_disciplinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_disciplinas_cursos`
--

DROP TABLE IF EXISTS `r_disciplinas_cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_disciplinas_cursos` (
  `CdIdeDisCur` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DISCIPLINAS_CdIdeDis` int(11) NOT NULL,
  `CURSOS_CdIdeCur` int(11) NOT NULL,
  PRIMARY KEY (`CdIdeDisCur`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_disciplinas_cursos`
--

LOCK TABLES `r_disciplinas_cursos` WRITE;
/*!40000 ALTER TABLE `r_disciplinas_cursos` DISABLE KEYS */;
INSERT INTO `r_disciplinas_cursos` VALUES (1,1,1),(2,2,2),(3,3,1),(4,3,2),(5,4,1),(6,2,1),(7,1,2),(16,7,1),(17,7,2),(18,7,7);
/*!40000 ALTER TABLE `r_disciplinas_cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitacoes`
--

DROP TABLE IF EXISTS `solicitacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solicitacoes` (
  `CdIdeAluno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NmIdeAluno` varchar(128) NOT NULL,
  `CURSOS_CdIdeCurso` int(11) NOT NULL,
  `FACULDADES_CdIdeFacul` char(5) NOT NULL,
  `TelIdeAluno` varchar(10) NOT NULL,
  `EmailIdeAluno` varchar(45) NOT NULL,
  `MatIdeAluno` varchar(45) NOT NULL,
  `StatusSolic` varchar(45) NOT NULL,
  `CodSolic` varchar(45) NOT NULL,
  `Abertura` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Mensagem` varchar(256) NULL,
  PRIMARY KEY (`CdIdeAluno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `CdIdeUsu` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Niveis_CdIdeNivel` int(11) NOT NULL,
  `NmIdeUsu` varchar(60) NOT NULL,
  `SenhaIdeUsu` char(128) NOT NULL,
  `EmailIdeUsu` varchar(50) NOT NULL,
  `Departamento_CdIdeDepartamento` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`CdIdeUsu`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,1,'admin','123','lucas.tadeu@salvador.ba.gov.br',4),(2,3,'wendell','123','wendell.dourado@salvador.ba.gov.br',1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-24 21:09:26
