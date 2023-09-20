-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: mercado_proway
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
-- Table structure for table `estoque`
--

DROP TABLE IF EXISTS `estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estoque` (
  `Id_estoque` int NOT NULL AUTO_INCREMENT,
  `Id_produto` varchar(100) NOT NULL,
  `Qt_produto` int NOT NULL,
  PRIMARY KEY (`Id_estoque`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;
/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
INSERT INTO `estoque` VALUES (1,'Sabao',100),(2,'Detergente',150),(3,'Desinfetante',200),(4,'Alcool',300),(5,'Pano',250),(6,'Alvejante',180),(7,'Multiuso',120),(8,'Esponja',220),(9,'Desengordurante',160),(10,'Pine',90),(11,'1',10),(12,'2',12),(13,'3',100),(14,'4',7),(15,'5',3),(16,'6',9),(17,'7',98),(18,'8',36),(19,'9',198),(20,'20',36),(21,'11',132);
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preco_produto`
--

DROP TABLE IF EXISTS `preco_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preco_produto` (
  `Id_preco_de_produto` int NOT NULL AUTO_INCREMENT,
  `Id_produto` int NOT NULL,
  `Id_preco` decimal(10,0) NOT NULL,
  `preco` int NOT NULL,
  PRIMARY KEY (`Id_preco_de_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preco_produto`
--

LOCK TABLES `preco_produto` WRITE;
/*!40000 ALTER TABLE `preco_produto` DISABLE KEYS */;
INSERT INTO `preco_produto` VALUES (1,1,0,5),(2,2,0,6),(3,3,0,10),(4,4,0,12),(5,5,0,2),(6,6,0,9),(7,7,0,6),(8,8,0,3),(9,9,0,45),(10,10,0,35),(11,11,0,38);
/*!40000 ALTER TABLE `preco_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `Id_Produto` int NOT NULL AUTO_INCREMENT,
  `nome_produto` varchar(100) NOT NULL,
  `ds_produto` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Id_Produto`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Bolacha Negresco','Bolacha de chocolate negresco'),(2,'Biscoito Oreo','Biscoito de chocolate oreo'),(3,'Salgadinho Fandangos','......'),(4,'Booster de Pokemon TCG','cartinhas de pokemon'),(5,'Chiclete de Hortela','Goma de mascar'),(6,'Salgadinho Cheetos',''),(7,'Bolacha Bono','Bolacha de chocolate'),(8,'Salgadinho Biluzitos','.....'),(9,'Sabão Liquido Omo Puro Cuidado','Sbão neutro Puro cuidado Hipoalergenico'),(10,'AL65','Brilha Inox'),(11,'WD 40','Para qualquer tipo de corrosão'),(12,'Bolacha Negresco','Bolacha de chocolate negresco'),(13,'Biscoito Oreo','Biscoito de chocolate oreo'),(14,'Salgadinho Fandangos','......'),(15,'Booster de Pokemon TCG','cartinhas de pokemon'),(16,'Chiclete de Hortela','Goma de mascar'),(17,'Salgadinho Cheetos',''),(18,'Bolacha Bono','Bolacha de chocolate'),(19,'Salgadinho Biluzitos','.....'),(20,'Sabão Liquido Omo Puro Cuidado','Sbão neutro Puro cuidado Hipoalergenico'),(21,'AL65','Brilha Inox'),(22,'WD 40','Para qualquer tipo de corrosão');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_produtos`
--

DROP TABLE IF EXISTS `view_produtos`;
/*!50001 DROP VIEW IF EXISTS `view_produtos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_produtos` AS SELECT 
 1 AS `id_produto`,
 1 AS `nome_produto`,
 1 AS `ds_produto`,
 1 AS `preco`,
 1 AS `qt_produto`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_produtos`
--

/*!50001 DROP VIEW IF EXISTS `view_produtos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_produtos` AS select `pr`.`Id_Produto` AS `id_produto`,`pr`.`nome_produto` AS `nome_produto`,`pr`.`ds_produto` AS `ds_produto`,`pp`.`preco` AS `preco`,`es`.`Qt_produto` AS `qt_produto` from ((`produto` `pr` join `estoque` `es`) join `preco_produto` `pp`) where ((`pr`.`Id_Produto` = `pp`.`Id_produto`) and (`pr`.`Id_Produto` = `es`.`Id_produto`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-19 22:15:33
