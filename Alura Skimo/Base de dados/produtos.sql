-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: iii_semana
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `ID Produto` int DEFAULT NULL,
  `Descritor` text,
  `EMBALAGEM` text,
  `PREÇO` text,
  `CATEGORIA` int DEFAULT NULL,
  `CUSTO DO PRODUTO` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'fruit ice melancia - 250g - melancia','Saquinho','3,50',1,'1,17'),(2,'cream ice napolitano - 2 litros - napolitano','Pote','22,50',2,'7,5'),(3,'fruit ice uva - 350g - uva','Saquinho','4,00',1,'1,33'),(4,'fruit ice melancia  - 350g - melancia','saquinho','4,50',1,'1,5'),(5,'fruit ice limão- 250g - limão','Saquinho','2,50',1,'0,83'),(6,'cream ice goiabinha - 2 litros - goiabinha','Pote','20,00',3,'6,66'),(7,'cream ice pedaços de frutas - 1,5 litros - maça','Pote','16,50',3,'5,5'),(8,'fruit ice pedaços de frutas - 350g - cereja/maça','Saquinho','6,00',1,'2'),(9,'fruit ice açai - 350g - açai','Saquinho','7,00',1,'2,33'),(10,'fruit ice kiwi - 250g - kiwi','Saquinho','4,50',1,'1,5'),(11,'fruit ice maracujá - 250g - maracujá','Saquinho','3,00',1,'1'),(12,'cream ice flocos - 1,5 litros - flocos','Pote','16,50',2,'5,5'),(13,'cream ice chocolate - 1,5 litros - chocolate','Pote','17,00',2,'5,66'),(14,'cream ice morango - 1,5 litros - morango','Pote','16,00',3,'5,33'),(15,'fruit ice manga- 250g - manga','Saquinho','3,50',1,'1,17'),(16,'cream ice abacaxi- 1,5 litros - abacaxi','Pote','14,50',2,'4,83'),(17,'fruit ice creme -  350g - creme','Saquinho','4,50',4,'1,5'),(18,'fruit ice flocos - 350g - flocos','Saquinho','4,50',4,'1,5'),(19,'fruit ice limão- 350g - limão','Saquinho','3,50',1,'1,17'),(20,'cream ice morango - 2 litros - morango','Pote','24,00',3,'8'),(21,'cream ice flocos - 2 litros - flocos','Pote','23,00',2,'7,67'),(22,'cream ice chocolate - 2 litros - chocolate','Pote','22,00',2,'7,34'),(23,'cream ice pistache- 2 litros - pistache','Pote','24,00',2,'8'),(24,'fruit ice melão - 250g- melão','Saquinho','4,50',1,'1,5'),(25,'fruit ice chocolate - 350g - chocolate','Saquinho','5,00',4,'1,67'),(26,'fruit ice morango - 250g - morango','Saquinho','3,50',1,'1,17'),(27,'fruit ice napolitano - 350g - napolitano','Saquinho','4,50',4,'1,5'),(28,'fruit ice cereja/maça - 350g - cereja/maça','Saquinho','7,50',1,'2,5'),(29,'cream ice doce de leite - 1,5 litros - doce de leite','Pote','20,00',2,'6,67'),(30,'cream ice pistache- 1,5 litros - pistache','Pote','20,00',2,'6,67'),(31,'cream ice doce de leite - 2 litros - doce de leite','POTE','24,00',2,'8'),(32,'cream ice açai - 1,5 litros - açai','Pote','18,00',3,'6'),(33,'cream ice açai - 2 litros - açai','Pote','22,00',3,'7,34');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-31 10:42:58
