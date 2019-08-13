-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: listasdelibros
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add lists',7,'add_lists'),(26,'Can change lists',7,'change_lists'),(27,'Can delete lists',7,'delete_lists'),(28,'Can view lists',7,'view_lists'),(29,'Can add autor',8,'add_autor'),(30,'Can change autor',8,'change_autor'),(31,'Can delete autor',8,'delete_autor'),(32,'Can view autor',8,'view_autor'),(33,'Can add book',9,'add_book'),(34,'Can change book',9,'change_book'),(35,'Can delete book',9,'delete_book'),(36,'Can view book',9,'view_book'),(37,'Can add gender',10,'add_gender'),(38,'Can change gender',10,'change_gender'),(39,'Can delete gender',10,'delete_gender'),(40,'Can view gender',10,'view_gender'),(41,'Can add like',11,'add_like'),(42,'Can change like',11,'change_like'),(43,'Can delete like',11,'delete_like'),(44,'Can view like',11,'view_like');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$8xue0vqJ0za6$hY46tfOhnOvfqJCpQAd0CnWvUO48MXzJpsYlsLosEl8=','2019-08-13 13:27:06.076394',1,'jairoerazo','','','jairoerazo@hotmail.com',1,1,'2019-08-06 14:42:52.075490'),(2,'pbkdf2_sha256$150000$d0Dx9OKiFEVP$LnbzrGYP/bqquUbTx2gYJpiBb/V35NsynUbht8pLNmY=','2019-08-12 17:41:31.873837',0,'juliaerazo','','','',1,1,'2019-08-12 17:39:14.000000'),(4,'pbkdf2_sha256$150000$maoMhjBk7qUf$125siIErKatmTlYa80rV8dprdXikKD686TrFKMCSXh4=',NULL,0,'jairodaviderazo','','','jairoerazo@hotmail.com',0,1,'2019-08-13 13:26:48.131692');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autor_autor`
--

DROP TABLE IF EXISTS `autor_autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `autor_autor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `man` tinyint(1) NOT NULL,
  `nobel` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor_autor`
--

LOCK TABLES `autor_autor` WRITE;
/*!40000 ALTER TABLE `autor_autor` DISABLE KEYS */;
INSERT INTO `autor_autor` VALUES (1,'Gabriel','García Márquez','1927-03-06','Colombia',1,1),(2,'George','Orwell','1903-06-25','Reino Unido',1,0),(3,'James','Boswell','1740-10-29','Reino de Gran Bretaña',1,0);
/*!40000 ALTER TABLE `autor_autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-08-07 16:26:37.348259','1','Autor object (1)',1,'[{\"added\": {}}]',8,1),(2,'2019-08-07 16:27:09.750417','1','Gender object (1)',1,'[{\"added\": {}}]',10,1),(3,'2019-08-07 16:56:31.615668','1','Cien años de soledad',1,'[{\"added\": {}}]',9,1),(4,'2019-08-07 16:57:53.471506','1','Los 100 mejores libros de todos los tiempos',1,'[{\"added\": {}}]',7,1),(5,'2019-08-07 17:10:35.578728','1','Cien años de soledad',2,'[{\"changed\": {\"fields\": [\"language\"]}}]',9,1),(6,'2019-08-07 17:19:29.326381','1','Los 100 mejores libros de todos los tiempos',2,'[{\"changed\": {\"fields\": [\"source\", \"url\"]}}]',7,1),(7,'2019-08-07 17:24:54.237665','2','Los 100 libros del siglo XX según Le Monde',1,'[{\"added\": {}}]',7,1),(8,'2019-08-07 17:36:41.411688','2','Orwell, George',1,'[{\"added\": {}}]',8,1),(9,'2019-08-07 17:36:51.738734','2','1984',1,'[{\"added\": {}}]',9,1),(10,'2019-08-07 17:37:00.473119','3','Las 100 mejores novelas según Time',1,'[{\"added\": {}}]',7,1),(11,'2019-08-10 07:11:37.121179','3','Boswell, James',1,'[{\"added\": {}}]',8,1),(12,'2019-08-10 07:12:46.868021','2','Biografía',1,'[{\"added\": {}}]',10,1),(13,'2019-08-10 07:13:22.594039','3','La vida de Samuel Johnson',1,'[{\"added\": {}}]',9,1),(14,'2019-08-10 07:13:36.912748','4','Los 100 mejores libros de no ficción',1,'[{\"added\": {}}]',7,1),(15,'2019-08-10 07:17:41.020319','5','Las 100 mejores novelas de todos los tiempos',1,'[{\"added\": {}}]',7,1),(16,'2019-08-10 14:12:27.659687','1','Los 100 mejores libros de todos los tiempos',2,'[{\"changed\": {\"fields\": [\"book\"]}}]',7,1),(17,'2019-08-10 14:33:14.241693','1','Cien años de soledad',2,'[{\"changed\": {\"fields\": [\"book\"]}}]',9,1),(18,'2019-08-10 14:34:00.398994','2','1984',2,'[{\"changed\": {\"fields\": [\"list\"]}}]',9,1),(19,'2019-08-10 16:34:22.268322','3','Ensayo',1,'[{\"added\": {}}]',10,1),(20,'2019-08-10 16:34:32.430913','4','Literatura infantil',1,'[{\"added\": {}}]',10,1),(21,'2019-08-10 16:34:42.175398','5','Cuento',1,'[{\"added\": {}}]',10,1),(22,'2019-08-10 16:34:51.314810','6','Poesía',1,'[{\"added\": {}}]',10,1),(23,'2019-08-10 16:35:01.361383','7','Ciencia ficción',1,'[{\"added\": {}}]',10,1),(24,'2019-08-10 16:36:22.621856','5','Las 100 mejores novelas de todos los tiempos',2,'[{\"changed\": {\"fields\": [\"gender\"]}}]',7,1),(25,'2019-08-10 16:36:32.210303','4','Los 100 mejores libros de no ficción',2,'[{\"changed\": {\"fields\": [\"gender\"]}}]',7,1),(26,'2019-08-10 16:36:39.339115','3','Las 100 mejores novelas según Time',2,'[{\"changed\": {\"fields\": [\"gender\"]}}]',7,1),(27,'2019-08-12 17:39:14.921894','2','juliaerazo',1,'[{\"added\": {}}]',4,1),(28,'2019-08-12 17:41:17.585517','2','juliaerazo',2,'[{\"changed\": {\"fields\": [\"is_staff\"]}}]',4,1),(29,'2019-08-13 13:24:16.128719','3','jairodaviderazo',2,'[{\"changed\": {\"fields\": [\"email\", \"last_login\"]}}]',4,1),(30,'2019-08-13 13:26:16.415811','3','jairodaviderazo',3,'',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(8,'autor','autor'),(5,'contenttypes','contenttype'),(9,'listas','book'),(10,'listas','gender'),(11,'listas','like'),(7,'listas','lists'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-08-06 14:39:18.890201'),(2,'auth','0001_initial','2019-08-06 14:39:19.033474'),(3,'admin','0001_initial','2019-08-06 14:39:19.338962'),(4,'admin','0002_logentry_remove_auto_add','2019-08-06 14:39:19.434973'),(5,'admin','0003_logentry_add_action_flag_choices','2019-08-06 14:39:19.447252'),(6,'contenttypes','0002_remove_content_type_name','2019-08-06 14:39:19.520799'),(7,'auth','0002_alter_permission_name_max_length','2019-08-06 14:39:19.563004'),(8,'auth','0003_alter_user_email_max_length','2019-08-06 14:39:19.591445'),(9,'auth','0004_alter_user_username_opts','2019-08-06 14:39:19.602703'),(10,'auth','0005_alter_user_last_login_null','2019-08-06 14:39:19.722390'),(11,'auth','0006_require_contenttypes_0002','2019-08-06 14:39:19.725141'),(12,'auth','0007_alter_validators_add_error_messages','2019-08-06 14:39:19.737012'),(13,'auth','0008_alter_user_username_max_length','2019-08-06 14:39:19.781702'),(14,'auth','0009_alter_user_last_name_max_length','2019-08-06 14:39:19.831418'),(15,'auth','0010_alter_group_name_max_length','2019-08-06 14:39:19.867552'),(16,'auth','0011_update_proxy_permissions','2019-08-06 14:39:19.883564'),(17,'sessions','0001_initial','2019-08-06 14:39:19.903283'),(18,'autor','0001_initial','2019-08-06 19:01:04.657453'),(19,'listas','0001_initial','2019-08-06 19:01:04.693202'),(20,'listas','0002_book_gender','2019-08-06 19:46:13.860144'),(21,'autor','0002_auto_20190806_2002','2019-08-06 20:14:40.985256'),(22,'listas','0003_auto_20190806_2002','2019-08-06 20:14:41.082130'),(23,'autor','0003_auto_20190807_1624','2019-08-07 16:24:53.454248'),(24,'listas','0004_auto_20190807_1624','2019-08-07 16:24:53.631252'),(25,'listas','0005_book_language','2019-08-07 17:10:10.710380'),(26,'listas','0006_auto_20190807_1715','2019-08-07 17:16:00.369580'),(27,'listas','0007_auto_20190810_1432','2019-08-10 14:32:12.888322'),(28,'listas','0008_auto_20190810_1433','2019-08-10 14:33:41.695553'),(29,'listas','0009_lists_gender','2019-08-10 16:36:08.043351'),(30,'listas','0010_like','2019-08-11 06:42:16.036051'),(31,'listas','0011_auto_20190812_1713','2019-08-12 17:13:51.531039');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listas_book`
--

DROP TABLE IF EXISTS `listas_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `listas_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `year` varchar(50) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `listas_book_author_id_f138951d_fk_autor_autor_id` (`author_id`),
  KEY `listas_book_gender_id_64376629_fk_listas_gender_id` (`gender_id`),
  CONSTRAINT `listas_book_author_id_f138951d_fk_autor_autor_id` FOREIGN KEY (`author_id`) REFERENCES `autor_autor` (`id`),
  CONSTRAINT `listas_book_gender_id_64376629_fk_listas_gender_id` FOREIGN KEY (`gender_id`) REFERENCES `listas_gender` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listas_book`
--

LOCK TABLES `listas_book` WRITE;
/*!40000 ALTER TABLE `listas_book` DISABLE KEYS */;
INSERT INTO `listas_book` VALUES (1,'Cien años de soledad',NULL,1,1,'1967','Español'),(2,'1984',NULL,2,1,'1949','Inglés'),(3,'La vida de Samuel Johnson',NULL,3,2,'1791','Inglés');
/*!40000 ALTER TABLE `listas_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listas_book_list`
--

DROP TABLE IF EXISTS `listas_book_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `listas_book_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `lists_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `listas_book_book_book_id_lists_id_918984cb_uniq` (`book_id`,`lists_id`),
  KEY `listas_book_list_lists_id_05a7919a_fk_listas_lists_id` (`lists_id`),
  CONSTRAINT `listas_book_list_book_id_b8ba183d_fk_listas_book_id` FOREIGN KEY (`book_id`) REFERENCES `listas_book` (`id`),
  CONSTRAINT `listas_book_list_lists_id_05a7919a_fk_listas_lists_id` FOREIGN KEY (`lists_id`) REFERENCES `listas_lists` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listas_book_list`
--

LOCK TABLES `listas_book_list` WRITE;
/*!40000 ALTER TABLE `listas_book_list` DISABLE KEYS */;
INSERT INTO `listas_book_list` VALUES (1,1,1),(2,1,5),(3,2,1);
/*!40000 ALTER TABLE `listas_book_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listas_gender`
--

DROP TABLE IF EXISTS `listas_gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `listas_gender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listas_gender`
--

LOCK TABLES `listas_gender` WRITE;
/*!40000 ALTER TABLE `listas_gender` DISABLE KEYS */;
INSERT INTO `listas_gender` VALUES (1,'Novela',NULL),(2,'Biografía',NULL),(3,'Ensayo',NULL),(4,'Literatura infantil',NULL),(5,'Cuento',NULL),(6,'Poesía',NULL),(7,'Ciencia ficción',NULL);
/*!40000 ALTER TABLE `listas_gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listas_lists`
--

DROP TABLE IF EXISTS `listas_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `listas_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext,
  `source` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `listas_lists_gender_id_5a8d0ca1_fk_listas_gender_id` (`gender_id`),
  CONSTRAINT `listas_lists_gender_id_5a8d0ca1_fk_listas_gender_id` FOREIGN KEY (`gender_id`) REFERENCES `listas_gender` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listas_lists`
--

LOCK TABLES `listas_lists` WRITE;
/*!40000 ALTER TABLE `listas_lists` DISABLE KEYS */;
INSERT INTO `listas_lists` VALUES (1,'Los 100 mejores libros de todos los tiempos','La Biblioteca Mundial es una lista de los 100 mejores libros de la historia, según lo propuesto por 100 escritores de 54 países diferentes, recopiladas y organizadas en el año 2002 por el Club del Libro Noruego. Esta lista trata de reflejar la literatura mundial, con los libros de todos los países, culturas y períodos de tiempo. Once de los libros incluidos en la lista están escritos por mujeres, ochenta y cinco están escritos por hombres y cuatro no tienen autor conocido.','Norwegian Book Clubs','https://es.wikipedia.org/wiki/Anexo:Los_100_mejores_libros_de_todos_los_tiempos,_seg%C3%BAn_el_Club_de_Libros_de_Noruega',NULL),(2,'Los 100 libros del siglo XX según Le Monde','Los 100 libros del siglo son una valoración de los libros pensados como los cien mejores del siglo XX, producida en la primavera del año 1999 por un sondeo realizado por la empresa francesa Fnac y el diario parisino Le Monde.\r\n\r\nDe una lista preliminar de 200 títulos creada por librerías y periodistas votaron 17.000 franceses respondiendo a la pregunta: «¿Qué libros se han quedado en su memoria?»','Le Monde','https://es.wikipedia.org/wiki/Anexo:Los_100_libros_del_siglo_XX_seg%C3%BAn_Le_Monde',NULL),(3,'Las 100 mejores novelas según Time','Es una lista no ordenada de las 100 mejores novelas (y 10 mejores novelas gráficas) publicadas en inglés entre 1923 y 2005. La lista fue compilada por los críticos Lev Grossman y Richard Lacayo de la Time1​\r\n\r\nLa lista sólo incluye trabajos hechos entre el año 1923 (desde la primera edición de Time) y 2005 (cuando la lista fue compilada)','Time','http://entertainment.time.com/2005/10/16/all-time-100-novels/slide/all/',1),(4,'Los 100 mejores libros de no ficción','','The Guardian','https://www.theguardian.com/books/2011/jun/14/100-greatest-non-fiction-books',3),(5,'Las 100 mejores novelas de todos los tiempos','','The Guardian','https://www.theguardian.com/books/2003/oct/12/features.fiction',1);
/*!40000 ALTER TABLE `listas_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listas_lists_likes`
--

DROP TABLE IF EXISTS `listas_lists_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `listas_lists_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lists_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `listas_lists_likes_lists_id_user_id_5e9c4cfc_uniq` (`lists_id`,`user_id`),
  KEY `listas_lists_likes_user_id_62ea46fb_fk_auth_user_id` (`user_id`),
  CONSTRAINT `listas_lists_likes_lists_id_7a8dbdb0_fk_listas_lists_id` FOREIGN KEY (`lists_id`) REFERENCES `listas_lists` (`id`),
  CONSTRAINT `listas_lists_likes_user_id_62ea46fb_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listas_lists_likes`
--

LOCK TABLES `listas_lists_likes` WRITE;
/*!40000 ALTER TABLE `listas_lists_likes` DISABLE KEYS */;
INSERT INTO `listas_lists_likes` VALUES (12,1,1),(4,1,2),(11,3,1),(5,3,2),(14,4,1),(3,4,2),(7,5,1),(2,5,2);
/*!40000 ALTER TABLE `listas_lists_likes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-13 15:33:35
