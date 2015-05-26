-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: tienda
-- ------------------------------------------------------
-- Server version	5.0.51b-community-nt-log

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
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(45) NOT NULL,
  `descripcion` text NOT NULL,
  `f_alta` date default NULL,
  `id_estatus` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES (1,'Aguascalientes'),(2,'Baja California'),(3,'Baja California Sur'),(4,'Campeche'),(5,'Coahuila de Zaragoza'),(6,'Colima'),(7,'Chiapas'),(8,'Chihuahua'),(9,'Distrito Federal'),(10,'Durango'),(11,'Guanajuato'),(12,'Guerrero'),(13,'Hidalgo'),(14,'Jalisco'),(15,'México'),(16,'Michoacán de Ocampo'),(17,'Morelos'),(18,'Nayarit'),(19,'Nuevo León'),(20,'Oaxaca'),(21,'Puebla'),(22,'Querétaro'),(23,'Quintana Roo'),(24,'San Luis Potosí'),(25,'Sinaloa'),(26,'Sonora'),(27,'Tabasco'),(28,'Tamaulipas'),(29,'Tlaxcala'),(30,'Veracruz de Ignacio de la Llave'),(31,'Yucatán'),(32,'Zacatecas');
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estatus`
--

DROP TABLE IF EXISTS `estatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estatus` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(45) NOT NULL,
  `descripcion` text NOT NULL,
  `f_alta` date default NULL,
  `q_modi` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estatus`
--

LOCK TABLES `estatus` WRITE;
/*!40000 ALTER TABLE `estatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `estatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estatus_productos`
--

DROP TABLE IF EXISTS `estatus_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estatus_productos` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(455) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estatus_productos`
--

LOCK TABLES `estatus_productos` WRITE;
/*!40000 ALTER TABLE `estatus_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `estatus_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotos_productos`
--

DROP TABLE IF EXISTS `fotos_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fotos_productos` (
  `id` int(11) NOT NULL auto_increment,
  `id_producto` int(11) NOT NULL,
  `ruta_img_chica` varchar(45) NOT NULL,
  `ruta_img_grantde` varchar(45) default NULL,
  PRIMARY KEY  (`id`),
  KEY `foto_productos_idx` (`id_producto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos_productos`
--

LOCK TABLES `fotos_productos` WRITE;
/*!40000 ALTER TABLE `fotos_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `fotos_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipio`
--

DROP TABLE IF EXISTS `municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `municipio` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(45) NOT NULL,
  `id_estado` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_municipio_estado_idx` (`id_estado`)
) ENGINE=MyISAM AUTO_INCREMENT=319 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipio`
--

LOCK TABLES `municipio` WRITE;
/*!40000 ALTER TABLE `municipio` DISABLE KEYS */;
INSERT INTO `municipio` VALUES (1,'Aguascalientes',1),(2,'Asientos',1),(3,'Calvillo',1),(4,'Cosío',1),(5,'Jesús María',1),(6,'Pabellón de Arteaga',1),(7,'Rincón de Romos',1),(8,'San José de Gracia',1),(9,'Tepezalá',1),(10,'El Llano',1),(11,'San Francisco de los Romo',1),(12,'Ensenada',2),(13,'Mexicali',2),(14,'Tecate',2),(15,'Tijuana',2),(16,'Playas de Rosarito',2),(17,'Comondú',3),(18,'Mulegé',3),(19,'La Paz',3),(20,'Los Cabos',3),(21,'Loreto',3),(22,'Calkiní',4),(23,'Campeche',4),(24,'Carmen',4),(25,'Champotón',4),(26,'Hecelchakán',4),(27,'Hopelchén',4),(28,'Palizada',4),(29,'Tenabo',4),(30,'Escárcega',4),(31,'Calakmul',4),(32,'Candelaria',4),(33,'Abasolo',5),(34,'Acuña',5),(35,'Allende',5),(36,'Arteaga',5),(37,'Candela',5),(38,'Castaños',5),(39,'Cuatro Ciénegas',5),(40,'Escobedo',5),(41,'Francisco I. Madero',5),(42,'Frontera',5),(43,'General Cepeda',5),(44,'Guerrero',5),(45,'Hidalgo',5),(46,'Jiménez',5),(47,'Juárez',5),(48,'Lamadrid',5),(49,'Matamoros',5),(50,'Monclova',5),(51,'Morelos',5),(52,'Múzquiz',5),(53,'Nadadores',5),(54,'Nava',5),(55,'Ocampo',5),(56,'Parras',5),(57,'Piedras Negras',5),(58,'Progreso',5),(59,'Ramos Arizpe',5),(60,'Sabinas',5),(61,'Sacramento',5),(62,'Saltillo',5),(63,'San Buenaventura',5),(64,'San Juan de Sabinas',5),(65,'San Pedro',5),(66,'Sierra Mojada',5),(67,'Torreón',5),(68,'Viesca',5),(69,'Villa Unión',5),(70,'Zaragoza',5),(71,'Armería',6),(72,'Colima',6),(73,'Comala',6),(74,'Coquimatlán',6),(75,'Cuauhtémoc',6),(76,'Ixtlahuacán',6),(77,'Manzanillo',6),(78,'Minatitlán',6),(79,'Tecomán',6),(80,'Villa de Álvarez',6),(81,'Acala',7),(82,'Acapetahua',7),(83,'Altamirano',7),(84,'Amatán',7),(85,'Amatenango de la Frontera',7),(86,'Amatenango del Valle',7),(87,'Angel Albino Corzo',7),(88,'Arriaga',7),(89,'Bejucal de Ocampo',7),(90,'Bella Vista',7),(91,'Berriozábal',7),(92,'Bochil',7),(93,'El Bosque',7),(94,'Cacahoatán',7),(95,'Catazajá',7),(96,'Cintalapa',7),(97,'Coapilla',7),(98,'Comitán de Domínguez',7),(99,'La Concordia',7),(100,'Copainalá',7),(101,'Chalchihuitán',7),(102,'Chamula',7),(103,'Chanal',7),(104,'Chapultenango',7),(105,'Chenalhó',7),(106,'Chiapa de Corzo',7),(107,'Chiapilla',7),(108,'Chicoasén',7),(109,'Chicomuselo',7),(110,'Chilón',7),(111,'Escuintla',7),(112,'Francisco León',7),(113,'Frontera Comalapa',7),(114,'Frontera Hidalgo',7),(115,'La Grandeza',7),(116,'Huehuetán',7),(117,'Huixtán',7),(118,'Huitiupán',7),(119,'Huixtla',7),(120,'La Independencia',7),(121,'Ixhuatán',7),(122,'Ixtacomitán',7),(123,'Ixtapa',7),(124,'Ixtapangajoya',7),(125,'Jiquipilas',7),(126,'Jitotol',7),(127,'Juárez',7),(128,'Larráinzar',7),(129,'La Libertad',7),(130,'Mapastepec',7),(131,'Las Margaritas',7),(132,'Mazapa de Madero',7),(133,'Mazatán',7),(134,'Metapa',7),(135,'Mitontic',7),(136,'Motozintla',7),(137,'Nicolás Ruíz',7),(138,'Ocosingo',7),(139,'Ocotepec',7),(140,'Ocozocoautla de Espinosa',7),(141,'Ostuacán',7),(142,'Osumacinta',7),(143,'Oxchuc',7),(144,'Palenque',7),(145,'Pantelhó',7),(146,'Pantepec',7),(147,'Pichucalco',7),(148,'Pijijiapan',7),(149,'El Porvenir',7),(150,'Villa Comaltitlán',7),(151,'Pueblo Nuevo Solistahuacán',7),(152,'Rayón',7),(153,'Reforma',7),(154,'Las Rosas',7),(155,'Sabanilla',7),(156,'Salto de Agua',7),(157,'San Cristóbal de las Casas',7),(158,'San Fernando',7),(159,'Siltepec',7),(160,'Simojovel',7),(161,'Sitalá',7),(162,'Socoltenango',7),(163,'Solosuchiapa',7),(164,'Soyaló',7),(165,'Suchiapa',7),(166,'Suchiate',7),(167,'Sunuapa',7),(168,'Tapachula',7),(169,'Tapalapa',7),(170,'Tapilula',7),(171,'Tecpatán',7),(172,'Tenejapa',7),(173,'Teopisca',7),(174,'Tila',7),(175,'Tonalá',7),(176,'Totolapa',7),(177,'La Trinitaria',7),(178,'Tumbalá',7),(179,'Tuxtla Gutiérrez',7),(180,'Tuxtla Chico',7),(181,'Tuzantán',7),(182,'Tzimol',7),(183,'Unión Juárez',7),(184,'Venustiano Carranza',7),(185,'Villa Corzo',7),(186,'Villaflores',7),(187,'Yajalón',7),(188,'San Lucas',7),(189,'Zinacantán',7),(190,'San Juan Cancuc',7),(191,'Aldama',7),(192,'Benemérito de las Américas',7),(193,'Maravilla Tenejapa',7),(194,'Marqués de Comillas',7),(195,'Montecristo de Guerrero',7),(196,'San Andrés Duraznal',7),(197,'Santiago el Pinar',7),(198,'Aldama',8),(199,'Allende',8),(200,'Aquiles Serdán',8),(201,'Ascensión',8),(202,'Bachíniva',8),(203,'Balleza',8),(204,'Batopilas',8),(205,'Bocoyna',8),(206,'Buenaventura',8),(207,'Camargo',8),(208,'Carichí',8),(209,'Casas Grandes',8),(210,'Coronado',8),(211,'Coyame del Sotol',8),(212,'La Cruz',8),(213,'Cuauhtémoc',8),(214,'Cusihuiriachi',8),(215,'Chihuahua',8),(216,'Chínipas',8),(217,'Delicias',8),(218,'Dr. Belisario Domínguez',8),(219,'Galeana',8),(220,'Santa Isabel',8),(221,'Gómez Farías',8),(222,'Gran Morelos',8),(223,'Guachochi',8),(224,'Guadalupe',8),(225,'Guadalupe y Calvo',8),(226,'Guazapares',8),(227,'Guerrero',8),(228,'Hidalgo del Parral',8),(229,'Huejotitán',8),(230,'Ignacio Zaragoza',8),(231,'Janos',8),(232,'Jiménez',8),(233,'Juárez',8),(234,'Julimes',8),(235,'López',8),(236,'Madera',8),(237,'Maguarichi',8),(238,'Manuel Benavides',8),(239,'Matachí',8),(240,'Matamoros',8),(241,'Meoqui',8),(242,'Morelos',8),(243,'Moris',8),(244,'Namiquipa',8),(245,'Nonoava',8),(246,'Nuevo Casas Grandes',8),(247,'Ocampo',8),(248,'Ojinaga',8),(249,'Praxedis G. Guerrero',8),(250,'Riva Palacio',8),(251,'Rosales',8),(252,'Rosario',8),(253,'San Francisco de Borja',8),(254,'San Francisco de Conchos',8),(255,'San Francisco del Oro',8),(256,'Santa Bárbara',8),(257,'Satevó',8),(258,'Saucillo',8),(259,'Temósachic',8),(260,'El Tule',8),(261,'Urique',8),(262,'Uruachi',8),(263,'Valle de Zaragoza',8),(264,'Azcapotzalco',9),(265,'Coyoacán',9),(266,'Cuajimalpa de Morelos',9),(267,'Gustavo A. Madero',9),(268,'Iztacalco',9),(269,'Iztapalapa',9),(270,'La Magdalena Contreras',9),(271,'Milpa Alta',9),(272,'Álvaro Obregón',9),(273,'Tláhuac',9),(274,'Tlalpan',9),(275,'Xochimilco',9),(276,'Benito Juárez',9),(277,'Cuauhtémoc',9),(278,'Miguel Hidalgo',9),(279,'Venustiano Carranza',9),(280,'Canatlán',10),(281,'Canelas',10),(282,'Coneto de Comonfort',10),(283,'Cuencamé',10),(284,'Durango',10),(285,'General Simón Bolívar',10),(286,'Gómez Palacio',10),(287,'Guadalupe Victoria',10),(288,'Guanaceví',10),(289,'Hidalgo',10),(290,'Indé',10),(291,'Lerdo',10),(292,'Mapimí',10),(293,'Mezquital',10),(294,'Nazas',10),(295,'Nombre de Dios',10),(296,'Ocampo',10),(297,'El Oro',10),(298,'Otáez',10),(299,'Pánuco de Coronado',10),(300,'Peñón Blanco',10),(301,'Poanas',10),(302,'Pueblo Nuevo',10),(303,'Rodeo',10),(304,'San Bernardo',10),(305,'San Dimas',10),(306,'San Juan de Guadalupe',10),(307,'San Juan del Río',10),(308,'San Luis del Cordero',10),(309,'San Pedro del Gallo',10),(310,'Santa Clara',10),(311,'Santiago Papasquiaro',10),(312,'Súchil',10),(313,'Tamazula',10),(314,'Tepehuanes',10),(315,'Tlahualilo',10),(316,'Topia',10),(317,'Vicente Guerrero',10),(318,'Nuevo Idea',10);
/*!40000 ALTER TABLE `municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfiles`
--

DROP TABLE IF EXISTS `perfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfiles` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(45) NOT NULL,
  `descripcion` text NOT NULL,
  `f_alta` date default NULL,
  `f_baja` date default NULL,
  `id_estatus` int(11) NOT NULL,
  `q_crea` varchar(45) default NULL,
  `q_modi` int(11) default NULL,
  `f_edit` varchar(45) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`),
  KEY `perfil_estatus_idx` (`id_estatus`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfiles`
--

LOCK TABLES `perfiles` WRITE;
/*!40000 ALTER TABLE `perfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `perfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permisos`
--

DROP TABLE IF EXISTS `permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permisos` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(45) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permisos`
--

LOCK TABLES `permisos` WRITE;
/*!40000 ALTER TABLE `permisos` DISABLE KEYS */;
/*!40000 ALTER TABLE `permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permisos_perfil`
--

DROP TABLE IF EXISTS `permisos_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permisos_perfil` (
  `id` int(11) NOT NULL auto_increment,
  `id_permisos` int(11) NOT NULL,
  `id_perfil` int(11) NOT NULL,
  `f_alta` date default NULL,
  PRIMARY KEY  (`id`),
  KEY `relacion_permisos_idx` (`id_permisos`),
  KEY `relacion_perfil_idx` (`id_perfil`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permisos_perfil`
--

LOCK TABLES `permisos_perfil` WRITE;
/*!40000 ALTER TABLE `permisos_perfil` DISABLE KEYS */;
/*!40000 ALTER TABLE `permisos_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preguntas`
--

DROP TABLE IF EXISTS `preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL auto_increment,
  `pregunta` text NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_estatus` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_pregunta_producto_idx` (`id_producto`),
  KEY `fk_pregunta_usuario_idx` (`id_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntas`
--

LOCK TABLES `preguntas` WRITE;
/*!40000 ALTER TABLE `preguntas` DISABLE KEYS */;
/*!40000 ALTER TABLE `preguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(55) NOT NULL,
  `descripcion` text NOT NULL,
  `precio_ini` float default NULL,
  `precio_final` float default NULL,
  `id_estatus` int(11) NOT NULL,
  `f_alta` date default NULL,
  `f_baja` date default NULL,
  `id_tienda` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `productos_tienda_idx` (`id_tienda`),
  KEY `productos_estatus_idx` (`id_estatus`),
  KEY `productos_categoria_idx` (`id_categoria`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respuestas`
--

DROP TABLE IF EXISTS `respuestas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `respuestas` (
  `id` int(11) NOT NULL auto_increment,
  `respuesta` text NOT NULL,
  `id_pregunta` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_respuest_pregunta_idx` (`id_pregunta`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuestas`
--

LOCK TABLES `respuestas` WRITE;
/*!40000 ALTER TABLE `respuestas` DISABLE KEYS */;
/*!40000 ALTER TABLE `respuestas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suscriptores`
--

DROP TABLE IF EXISTS `suscriptores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suscriptores` (
  `id` int(11) NOT NULL auto_increment,
  `id_usuario` int(11) NOT NULL,
  `id_usuario_suscripto` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `suscriptores_usuarios_idx` (`id_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suscriptores`
--

LOCK TABLES `suscriptores` WRITE;
/*!40000 ALTER TABLE `suscriptores` DISABLE KEYS */;
/*!40000 ALTER TABLE `suscriptores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tienda`
--

DROP TABLE IF EXISTS `tienda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tienda` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(45) NOT NULL,
  `descripcion` text NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `f_alta` date default NULL,
  `f_baja` date default NULL,
  `id_estatus` int(11) NOT NULL,
  `logo` varchar(500) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`),
  KEY `tienda_usuario_idx` (`id_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tienda`
--

LOCK TABLES `tienda` WRITE;
/*!40000 ALTER TABLE `tienda` DISABLE KEYS */;
/*!40000 ALTER TABLE `tienda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL auto_increment,
  `id_perfil` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(455) NOT NULL,
  `email` varchar(80) NOT NULL,
  `direccion` varchar(500) default NULL,
  `id_municipio` int(11) NOT NULL,
  `telefono` varchar(10) default NULL,
  `alias` varchar(45) NOT NULL,
  `id_estatus` int(11) NOT NULL,
  `f_baja` date default NULL,
  `f_alta` date default NULL,
  `f_modi` date default NULL,
  `logo` varchar(500) default NULL,
  PRIMARY KEY  (`id`),
  KEY `usuarios_estatus_idx` (`id_estatus`),
  KEY `usuariuos_perfil_idx` (`id_perfil`),
  KEY `usuarios_municipo_idx` (`id_municipio`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas` (
  `id` int(11) NOT NULL auto_increment,
  `id_urscompra` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `f_compra` date NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_ventas_productos1_idx` (`id_producto`),
  KEY `fk_ventas_usuarios1_idx` (`id_urscompra`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-26 15:32:40
