-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: greencity
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `tb_local`
--

DROP TABLE IF EXISTS `tb_local`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_local` (
  `id_local` int NOT NULL AUTO_INCREMENT,
  `nome_local` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `endereco_local` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telefone_local` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fk_id_acao` int DEFAULT NULL,
  `fk_id_zona` int DEFAULT NULL,
  PRIMARY KEY (`id_local`),
  KEY `fk_id_acao` (`fk_id_acao`),
  KEY `fk_id_zona` (`fk_id_zona`),
  CONSTRAINT `tb_local_ibfk_1` FOREIGN KEY (`fk_id_acao`) REFERENCES `tb_acao` (`id_acao`),
  CONSTRAINT `tb_local_ibfk_2` FOREIGN KEY (`fk_id_zona`) REFERENCES `tb_zona` (`id_zona`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_local`
--

LOCK TABLES `tb_local` WRITE;
/*!40000 ALTER TABLE `tb_local` DISABLE KEYS */;
INSERT INTO `tb_local` VALUES (13,'ECO Plantio Leste','Rua das Figueiras, 10','11- 3302-4523',5,3),(14,'ECO Plantio Norte','Rua Almirante, 1000','11- 3222-2222',5,1),(15,'ECO Plantio Sul','Rua Tabajaras, 60','11- 4488-3232',5,2),(16,'ECO Plantio Oeste','Rua Salvador, 45','11- 2424-2899',5,4),(17,'Coleta Leste','Rua Aviarios, 78','11-2525-9966',2,3),(18,'Coleta Norte','Rua Sergipano, 15','11-2899-3352',2,1),(19,'Coleta Sul','Rua Alagoas, 55','11-2020-9988',2,2),(20,'Coleta Oeste','Rua Casados, 77','11-8255-5211',2,4),(21,'Decarte Eletronico Norte','Rua Copacabana, 25','11-3333-9966',3,1),(22,'Decarte Eletronico Sul','Rua Sergipano, 15','11-2899-3352',3,2),(23,'Decarte Eletronico Leste','Rua Botafogo, 55','11-2020-9988',3,3),(24,'Decarte Eletronico Oeste','Rua Casados, 77','11-8255-5211',3,4),(25,'Decarte Oleo Norte','Rua Metroviario, 66','11-2589-6598',4,1),(26,'Decarte Oleo Sul','Rua Vagalume, 600','11-8599-3521',4,2),(27,'Decarte Oleo Leste','Rua Canarios, 100','11-2688-1235',4,3),(28,'Decarte Oleo Oeste','Rua Denis Ferreira, 22','11-8659-5251',4,4);
/*!40000 ALTER TABLE `tb_local` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-17 10:57:47
