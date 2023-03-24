-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: tecnoelite
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `categoria_producto`
--

DROP TABLE IF EXISTS `categoria_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_producto` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_categoria` int unsigned DEFAULT NULL,
  `id_producto` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_categoria` (`id_categoria`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `categoria_producto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`idcategoria`),
  CONSTRAINT `categoria_producto_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`idproducto`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_producto`
--

LOCK TABLES `categoria_producto` WRITE;
/*!40000 ALTER TABLE `categoria_producto` DISABLE KEYS */;
INSERT INTO `categoria_producto` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,6),(7,2,7),(8,2,8),(9,2,9),(10,2,10),(11,3,11),(12,3,12),(13,3,13),(14,3,14),(15,3,15);
/*!40000 ALTER TABLE `categoria_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `idcategoria` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `imagen` longblob,
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Placas','Las mas bonitas',NULL),(2,'Puentes H','De todo tipo',NULL),(3,'Baterias','Vo pregunta noma mi rey, sin compromiso',NULL);
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idcliente` int unsigned NOT NULL AUTO_INCREMENT,
  `estado` enum('A','B') NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `dni` int unsigned NOT NULL,
  `telefono` varchar(40) NOT NULL,
  `direccion` varchar(40) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `departamento` varchar(40) NOT NULL,
  `codigoPostal` varchar(10) NOT NULL,
  `pais` varchar(40) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`idcliente`),
  UNIQUE KEY `dni` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'A','Kiara','Tabarez',42736456,'3764156934','Calle Cerro Cora 7345','Posadas','Capital','3300','Argentina','2022-10-05',NULL),(2,'B','Matias','Barrera',43876948,'3764550934','Calle 176 3845','Posadas','Capital','3300','Argentina','2022-10-05',NULL),(3,'A','David','Barrera',42938475,'3764140934','Calle 190 7564','Posadas','Capital','3300','Argentina','2022-10-05',NULL),(4,'A','Sofia','Pauluck',42748332,'3764295049','Calle 90 3847','Posadas','Capital','3300','Argentina','2022-10-05',NULL),(5,'B','Juan','Guismin',42098123,'3764834712','Calle 175 8374','Posadas','Capital','3300','Argentina','2022-10-05',NULL),(6,'A','Jose','Ponce',30876455,'3764123456','Calle 175 8374','Posadas','Capital','3300','Argentina','2022-10-05',NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_pedidoc_pedidod`
--

DROP TABLE IF EXISTS `cliente_pedidoc_pedidod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_pedidoc_pedidod` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_cliente` int unsigned DEFAULT NULL,
  `id_pedidoc` int unsigned DEFAULT NULL,
  `id_pedidod` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_pedidoc` (`id_pedidoc`),
  KEY `id_pedidod` (`id_pedidod`),
  CONSTRAINT `cliente_pedidoc_pedidod_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`idcliente`),
  CONSTRAINT `cliente_pedidoc_pedidod_ibfk_2` FOREIGN KEY (`id_pedidoc`) REFERENCES `pedidos_cabecera` (`idpedidoC`),
  CONSTRAINT `cliente_pedidoc_pedidod_ibfk_3` FOREIGN KEY (`id_pedidod`) REFERENCES `pedidos_detalle` (`idpedidod`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_pedidoc_pedidod`
--

LOCK TABLES `cliente_pedidoc_pedidod` WRITE;
/*!40000 ALTER TABLE `cliente_pedidoc_pedidod` DISABLE KEYS */;
INSERT INTO `cliente_pedidoc_pedidod` VALUES (1,1,1,1),(2,1,1,2),(3,2,2,3),(4,2,2,4),(5,3,3,5),(6,4,4,6),(7,5,5,7);
/*!40000 ALTER TABLE `cliente_pedidoc_pedidod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos_cabecera`
--

DROP TABLE IF EXISTS `pedidos_cabecera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos_cabecera` (
  `idpedidoC` int unsigned NOT NULL AUTO_INCREMENT,
  `estado` varchar(20) DEFAULT NULL,
  `id_cliente` int unsigned DEFAULT NULL,
  PRIMARY KEY (`idpedidoC`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `pedidos_cabecera_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_cabecera`
--

LOCK TABLES `pedidos_cabecera` WRITE;
/*!40000 ALTER TABLE `pedidos_cabecera` DISABLE KEYS */;
INSERT INTO `pedidos_cabecera` VALUES (1,'Pendiente',1),(2,'Entregado',2),(3,'Pendiente',3),(4,'Pendiente',4),(5,'Entregado',5);
/*!40000 ALTER TABLE `pedidos_cabecera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos_detalle`
--

DROP TABLE IF EXISTS `pedidos_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos_detalle` (
  `idpedidod` int unsigned NOT NULL AUTO_INCREMENT,
  `nombreproducto` varchar(40) NOT NULL,
  `cantidad` int NOT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `id_pedidoc` int unsigned DEFAULT NULL,
  `id_producto` int unsigned DEFAULT NULL,
  PRIMARY KEY (`idpedidod`),
  KEY `id_pedidoc` (`id_pedidoc`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `pedidos_detalle_ibfk_1` FOREIGN KEY (`id_pedidoc`) REFERENCES `pedidos_cabecera` (`idpedidoC`),
  CONSTRAINT `pedidos_detalle_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`idproducto`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_detalle`
--

LOCK TABLES `pedidos_detalle` WRITE;
/*!40000 ALTER TABLE `pedidos_detalle` DISABLE KEYS */;
INSERT INTO `pedidos_detalle` VALUES (1,'arduino',2,'si',1,1),(2,'raspberry',3,'si',1,2),(3,'lipo',4,'si',2,11),(4,'litio',5,'si',2,12),(5,'L298N',6,'si',3,6),(6,'L298N',6,'si',4,6),(7,'L298N',6,'si',5,6);
/*!40000 ALTER TABLE `pedidos_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idproducto` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `cantidad` bigint NOT NULL,
  `precio` int NOT NULL,
  `imagen` longblob,
  `id_categoria` int unsigned DEFAULT NULL,
  PRIMARY KEY (`idproducto`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Aduino Uno','Mediano',10,4500,NULL,1),(2,'Raspberry','Mas mejor',20,10000,NULL,1),(3,'Arduino Nano','Pequeña',30,2000,NULL,1),(4,'Makey Makey','Para Niños',40,1000,NULL,1),(5,'Arduino Mega','Grande',50,6000,NULL,1),(6,'L298N','Normal',10,4500,NULL,2),(7,'L293N','Peor',20,1000,NULL,2),(8,'zf569','Raro',30,2000,NULL,2),(9,'L837J','35 voltios',40,10000,NULL,2),(10,'RT2345','3 voltios y 20 amperios',50,6000,NULL,2),(11,'Lipo','La mejor',10,10000,NULL,3),(12,'Litio','Mas recomendable',20,4000,NULL,3),(13,'9 voltios','Grande',30,300,NULL,3),(14,'1.5 voltios','Para control remoto',40,200,NULL,3),(15,'Recargables','Buenas con el ambiente',50,700,NULL,3);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `idroles` int unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  `estado` varchar(2) NOT NULL,
  PRIMARY KEY (`idroles`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'cliente','A'),(2,'Administrador','A');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_cliente`
--

DROP TABLE IF EXISTS `usuario_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_cliente` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` int unsigned DEFAULT NULL,
  `id_cliente` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `usuario_cliente_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`idusuario`),
  CONSTRAINT `usuario_cliente_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_cliente`
--

LOCK TABLES `usuario_cliente` WRITE;
/*!40000 ALTER TABLE `usuario_cliente` DISABLE KEYS */;
INSERT INTO `usuario_cliente` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6);
/*!40000 ALTER TABLE `usuario_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_roles`
--

DROP TABLE IF EXISTS `usuario_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` int unsigned DEFAULT NULL,
  `id_rol` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_rol` (`id_rol`),
  CONSTRAINT `usuario_roles_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`idusuario`),
  CONSTRAINT `usuario_roles_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`idroles`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_roles`
--

LOCK TABLES `usuario_roles` WRITE;
/*!40000 ALTER TABLE `usuario_roles` DISABLE KEYS */;
INSERT INTO `usuario_roles` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2);
/*!40000 ALTER TABLE `usuario_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idusuario` int unsigned NOT NULL AUTO_INCREMENT,
  `estado` enum('A','B') NOT NULL,
  `username` varchar(50) NOT NULL,
  `apellido_nombre` varchar(70) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`idusuario`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'A','Kiari',' Kiara Tabarez','kiaratabarez10@gmail.com','2022-10-05',NULL,''),(2,'B','Mati','Matias Barrera','elmascapo@gmail.com','2022-10-05',NULL,''),(3,'A','Davicho','David Barrera','david14mp@gmail.com','2022-10-05',NULL,''),(4,'A','Sofi','Sofia Pauluck','aldi95@gmail.com','2022-10-05',NULL,''),(5,'B','Juancito','Juan Guismin','despensa123@gmail.com','2022-10-05',NULL,''),(6,'A','Jponce','Jose Ponce','josesito@gmail.com','2022-10-05',NULL,'prueba123'),(8,'A','aperez','Perez Alonso','perecito@gmail.com','2023-03-14',NULL,'perz123'),(11,'A','braga','Gonzalo Braga','prueba123@gmail.com','2023-03-14',NULL,'braga'),(12,'A','uli','Avalos Ulises','ulipro30@gmail.com','2023-03-14',NULL,'$2b$10$F2RXZMLzUuY1G5byyh1xd.nr8212TcGERYT8eo3NPSYMgSCYZmkRu');
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

-- Dump completed on 2023-03-24 20:11:14
