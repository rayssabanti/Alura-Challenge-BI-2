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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `CPF` text,
  `NOME` text,
  `ENDERECO` text,
  `BAIRRO` text,
  `CIDADE` text,
  `ESTADO` text,
  `CEP` int DEFAULT NULL,
  `DATA DE NASCIMENTO` text,
  `IDADE` int DEFAULT NULL,
  `GENERO` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES ('1471156710','Érica Carvalho','R. Iriquitia','Jardins','São Paulo','SP',80012212,'1990-09-01',27,'F'),('19290992743','Fernando Cavalcante','R. Dois de Fevereiro','Água Santa','Rio de Janeiro','RJ',22000000,'2000-02-12',18,'M'),('2600586709','César Teixeira','Rua Conde de Bonfim','Tijuca','Rio de Janeiro','RJ',22020001,'2000-03-12',18,'M'),('3623344710','Marcos Nougeuira','Av. Pastor Martin Luther King Junior','Inhauma','Rio de Janeiro','RJ',22002012,'1995-01-13',23,'M'),('492472718','Eduardo Jorge','R. Volta Grande','Tijuca','Rio de Janeiro','RJ',22012002,'1994-07-19',23,'M'),('50534475787','Abel Silva','Rua Humaitá','Humaitá','Rio de Janeiro','RJ',22000212,'1995-09-11',22,'M'),('5576228758','Petra Oliveira','R. Benício de Abreu','Lapa','São Paulo','SP',88192029,'1995-11-14',22,'F'),('5648641702','Paulo César Mattos','Rua Hélio Beltrão','Tijuca','Rio de Janeiro','RJ',21002020,'1991-08-30',26,'M'),('5840119709','Gabriel Araujo','R. Manuel de Oliveira','Santo Amaro','São Paulo','SP',80010221,'1985-03-16',32,'M'),('7771579779','Marcelo Mattos','R. Eduardo Luís Lopes','Brás','São Paulo','SP',88202912,'1992-03-25',25,'M'),('8502682733','Valdeci da Silva','R. Srg. Édison de Oliveira','Jardins','São Paulo','SP',82122020,'1995-10-07',22,'M'),('8719655770','Carlos Eduardo','Av. Gen. Guedes da Fontoura','Jardins','São Paulo','SP',81192002,'1983-12-20',34,'M'),('9283760794','Edson Meilelles','R. Pinto de Azevedo','Cidade Nova','Rio de Janeiro','RJ',22002002,'1995-10-07',22,'M'),('94387575700','Walber Lontra','R. Cel. Almeida','Piedade','Rio de Janeiro','RJ',22000201,'1989-06-20',28,'M'),('95939180787','Fábio Carvalho','R. dos Jacarandás da Península','Barra da Tijuca','Rio de Janeiro','RJ',22002020,'1992-01-05',16,'M');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-31 10:41:48
