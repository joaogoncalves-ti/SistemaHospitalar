-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sghss
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `consulta`
--

DROP TABLE IF EXISTS `consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consulta` (
  `id_consulta` int NOT NULL AUTO_INCREMENT,
  `data_hora` datetime NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `observacoes` text,
  `id_usuario` int NOT NULL,
  `id_paciente` int NOT NULL,
  PRIMARY KEY (`id_consulta`),
  KEY `fk_consulta_usuario` (`id_usuario`),
  KEY `fk_consulta_paciente` (`id_paciente`),
  CONSTRAINT `fk_consulta_paciente` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_consulta_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta`
--

LOCK TABLES `consulta` WRITE;
/*!40000 ALTER TABLE `consulta` DISABLE KEYS */;
/*!40000 ALTER TABLE `consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `data_hora` datetime NOT NULL,
  `descricao` text,
  `acao` varchar(100) DEFAULT NULL,
  `id_usuario` int NOT NULL,
  PRIMARY KEY (`id_log`),
  KEY `fk_log_usuario` (`id_usuario`),
  CONSTRAINT `fk_log_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'2025-04-11 00:51:43','Ação realizada: UsuarioController.listarTodos()','INFO',1),(2,'2025-04-12 00:00:20','Ação realizada: UsuarioController.listarTodos()','INFO',1),(3,'2025-04-12 00:00:56','Ação realizada: PacienteController.listarTodos()','INFO',1),(4,'2025-04-12 00:01:34','Ação realizada: PacienteController.criarPaciente(..)','INFO',1),(5,'2025-04-12 00:02:07','Ação realizada: PacienteController.criarPaciente(..)','INFO',1),(6,'2025-04-12 00:02:17','Ação realizada: PacienteController.listarTodos()','INFO',1),(7,'2025-04-12 00:02:38','Ação realizada: PacienteController.buscarPorId(..)','INFO',1),(8,'2025-04-12 00:03:28','Ação realizada: PacienteController.atualizarPaciente(..)','INFO',1),(9,'2025-04-12 00:03:38','Ação realizada: PacienteController.buscarPorId(..)','INFO',1),(10,'2025-04-12 00:04:01','Ação realizada: PacienteController.deletarPaciente(..)','INFO',1),(11,'2025-04-12 00:04:08','Ação realizada: PacienteController.listarTodos()','INFO',1),(12,'2025-04-12 00:05:23','Ação realizada: UsuarioController.criarUsuario(..)','INFO',1),(13,'2025-04-12 00:05:30','Ação realizada: UsuarioController.listarTodos()','INFO',1),(14,'2025-04-12 00:06:50','Ação realizada: PacienteController.listarTodos()','INFO',2),(15,'2025-04-12 00:07:43','Ação realizada: UsuarioController.buscarPorId(..)','INFO',1),(16,'2025-04-12 00:08:26','Ação realizada: UsuarioController.listarTodos()','INFO',1),(17,'2025-04-12 00:08:57','Ação realizada: UsuarioController.atualizarUsuario(..)','INFO',1),(18,'2025-04-12 00:09:04','Ação realizada: UsuarioController.listarTodos()','INFO',1),(19,'2025-04-12 00:09:57','Ação realizada: UsuarioController.criarUsuario(..)','INFO',1),(20,'2025-04-12 00:10:12','Ação realizada: UsuarioController.listarTodos()','INFO',1),(21,'2025-04-12 00:10:28','Ação realizada: UsuarioController.deletarUsuario(..)','INFO',1),(22,'2025-04-12 00:10:31','Ação realizada: UsuarioController.listarTodos()','INFO',1),(23,'2025-04-12 00:11:00','Ação realizada: ConsultaController.listarTodas()','INFO',1),(24,'2025-04-12 00:12:00','Ação realizada: UsuarioController.listarTodos()','INFO',1),(25,'2025-04-12 00:13:10','Ação realizada: PacienteController.listarTodos()','INFO',2),(26,'2025-04-12 00:13:23','Ação realizada: ConsultaController.criarConsulta(..)','INFO',1),(27,'2025-04-12 00:13:35','Ação realizada: ConsultaController.listarTodas()','INFO',1),(28,'2025-04-12 00:14:06','Ação realizada: ConsultaController.buscarPorId(..)','INFO',1),(29,'2025-04-12 00:14:37','Ação realizada: ConsultaController.atualizarConsulta(..)','INFO',1),(30,'2025-04-12 00:14:43','Ação realizada: ConsultaController.listarTodas()','INFO',1),(31,'2025-04-12 00:14:58','Ação realizada: ConsultaController.cancelarConsulta(..)','INFO',1),(32,'2025-04-12 00:15:03','Ação realizada: ConsultaController.listarTodas()','INFO',1),(33,'2025-04-12 00:17:32','Ação realizada: ConsultaController.listarTodas()','INFO',2),(34,'2025-04-12 00:17:43','Ação realizada: PacienteController.listarTodos()','INFO',2);
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `id_paciente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `data_nascimento` date NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `contato` varchar(20) NOT NULL,
  PRIMARY KEY (`id_paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (2,'Hugo Silva','2001-10-10','555.555.555.56','Rua das Maravilhas,  71','91111-88899');
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `login` varchar(50) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `tipo_usuario` varchar(50) NOT NULL,
  `contato_especialidade` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Root','Admin','$2a$10$ci2uCBzojquI4sTqthNBoe/ipjZ4.WqYO2WW.XHFXaC1WHypHvt3.','ADMIN','Nenhum'),(2,'Matilde Gonçalves','MatildeG','$2a$10$Jfkm0ZBdDwZadOoUjcpAOO19us4aNGZLXbdKpfkGhi2ewPVDfVfoe','PROFISSIONAL','Cirugião Geral');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-11 22:49:21
