-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: 10.8.44.201    Database: Conch_music
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add user',7,'add_user'),(20,'Can change user',7,'change_user'),(21,'Can delete user',7,'delete_user');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'discover','user'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-10-10 07:07:04.138092'),(2,'auth','0001_initial','2018-10-10 07:07:04.580326'),(3,'admin','0001_initial','2018-10-10 07:07:04.701723'),(4,'admin','0002_logentry_remove_auto_add','2018-10-10 07:07:04.742574'),(5,'contenttypes','0002_remove_content_type_name','2018-10-10 07:07:04.838050'),(6,'auth','0002_alter_permission_name_max_length','2018-10-10 07:07:04.881579'),(7,'auth','0003_alter_user_email_max_length','2018-10-10 07:07:04.945849'),(8,'auth','0004_alter_user_username_opts','2018-10-10 07:07:04.978610'),(9,'auth','0005_alter_user_last_login_null','2018-10-10 07:07:05.026343'),(10,'auth','0006_require_contenttypes_0002','2018-10-10 07:07:05.035742'),(11,'auth','0007_alter_validators_add_error_messages','2018-10-10 07:07:05.067585'),(12,'auth','0008_alter_user_username_max_length','2018-10-10 07:07:05.168175'),(13,'discover','0001_initial','2018-10-10 07:12:11.069101'),(14,'sessions','0001_initial','2018-10-10 07:12:11.116363'),(15,'admin','0003_auto_20181015_1117','2018-10-17 07:17:05.843403');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('2l2rwz9ug5ge9uyf51r8kt96vebv4cny','OTYwOTk0OWUyNTFkMTkxNDYxNWZkZGM3YTM4OWE0MGRmNTljOTgyODp7InByZXZpb3VzX3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvbXlfbXVzaWMvIn0=','2018-11-02 03:31:49.148040'),('2yto0ym1omvtevffb4k51jfa71cdtxog','ZWVhOWRhYzcwMTZmZTNiOThmMzA1ZjA5YmVjMjZmN2VmZTNjMjUwZDp7InByZXZpb3VzX3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwODAvIn0=','2018-11-07 11:27:43.894263'),('3yhex6sn88az2i1kng63nmybt1z9egwy','MmRmZjI5ZWM4MjMzYjA5ODZiNjZkMTA5NmI2ZTExYjRhNzQ4N2VmYTp7InVzZXJfbmlja25hbWUiOiIxMjMiLCJ1c2VyX2lkIjoxMDAwMDAzLCJpbWFnZSI6InVzZXJfcGljL2RlZmF1bHQvdXNlci5qcGciLCJwcmV2aW91c19wYWdlIjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwLyJ9','2018-11-08 09:51:36.266938'),('40bhosn91hf6clp9x16d0nwqbi8p74k5','YTdkZjBlNzcxMDI4NmRiYzgwN2ZmMzMxYTlkNmQxMDQ1NzJjOTk1Mjp7InVzZXJfbmlja25hbWUiOiIxMjMiLCJpbWFnZSI6InVzZXJfcGljL2RlZmF1bHQvdXNlci5qcGciLCJwcmV2aW91c19wYWdlIjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL215X211c2ljLyIsInVzZXJfaWQiOjEwMDAwMDN9','2018-11-07 11:37:03.362490'),('7ezn50z5ycn5kymz1buiwwlak9gbmmpb','NDA3NWNkOTk3ZTUyMmY2MjYxNjY3NjY2NTUwNmZjM2JjODcwNWVjNzp7InByZXZpb3VzX3BhZ2UiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAvbXlfbXVzaWMvIiwidXNlcl9uaWNrbmFtZSI6IjEyMyIsInVzZXJfaWQiOjMsImltYWdlIjoidXNlcl9waWMvZGVmYXVsdC91c2VyLmpwZyJ9','2018-11-02 02:41:37.747562'),('cjo7dugvn6fw659tgcybj6c21abjyfyi','OWVjYzg1ZGU2Mjc4MmNiZDFhMDAwNjUzMmQzZDg2ZDlkMGRkMzdlMTp7InByZXZpb3VzX3BhZ2UiOiJodHRwOi8vMTAuOC40NC4xODk6ODAwMC9teV9tdXNpYy8ifQ==','2018-11-08 08:05:37.356326'),('dkvuaspew4oajs68avebuvg6x4ff3akv','MTEzZTljYzkwMDkzNWY4ZGUzNTcyYzgxNGQ3MDVlYzE3M2NlNWYxYTp7ImltYWdlIjoidXNlcl9waWMvZGVmYXVsdC91c2VyLmpwZyIsInVzZXJfaWQiOjMsInVzZXJfbmlja25hbWUiOiIxMjMifQ==','2018-11-01 11:45:41.264516'),('efmuw9rui053bj5zpgbmlovb0v9qbtua','MzcxNmEzZjE5NDQ1ZDZiMjBhZTBlOGFiYTlmY2ZjNjEzNjczNzUzYTp7ImltYWdlIjoidXNlcl9waWMvZGVmYXVsdC91c2VyLmpwZyIsInByZXZpb3VzX3BhZ2UiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAvbXlfbXVzaWMvIiwidXNlcl9pZCI6MTAwMDAwMywidXNlcl9uaWNrbmFtZSI6IjEyMyJ9','2018-11-09 12:19:22.669686'),('el7qcer21ws09t9x36bm16oemwmku77s','MzJiM2E1NTBlOTNhMGZlMTdmMWE0ZTc3ZjQ0N2JkMGJlYmU3OGJkNzp7InByZXZpb3VzX3BhZ2UiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAvIn0=','2018-11-10 07:26:14.079098'),('rk1128xust6pchqeuj6gw3v4jdq0hfhx','M2Q3YTYxNWY4ZDgyY2FlNjU3Nzg5YzRjZGRhYWU3NTFmNmQ0YzNiNzp7InByZXZpb3VzX3BhZ2UiOiJodHRwOi8vMTAuOC40NC4xODk6ODAwMC8ifQ==','2018-11-08 08:23:24.014423'),('svqwhqi40wia4pwu21agnrib5q57jjt1','ZGRlNmU0OGFjNmY0YTljZDlhNzk2MmExOGEwYjI3MDhlNDkzYmVmNjp7ImltYWdlIjoidXNlcl9waWMvZGVmYXVsdC91c2VyLmpwZyIsInByZXZpb3VzX3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwODAvbXlfbXVzaWMvIiwidXNlcl9uaWNrbmFtZSI6IjEyMyIsInVzZXJfaWQiOjEwMDAwMDN9','2018-11-07 11:27:50.513948'),('u95jnser8ffox9d3c2kaky9hcqe9g6w1','OTYwOTk0OWUyNTFkMTkxNDYxNWZkZGM3YTM4OWE0MGRmNTljOTgyODp7InByZXZpb3VzX3BhZ2UiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvbXlfbXVzaWMvIn0=','2018-11-02 10:02:08.978444'),('vj62m1pyljncracazi9w7mq3pld02e03','YzlhNTE0NzAwZTMyNTNjZWQ3OWFhY2YzMTIxZjNjM2EwMGZiOGE4MTp7ImltYWdlIjoidXNlcl9waWMvZGVmYXVsdC91c2VyLmpwZyIsInVzZXJfaWQiOjEwMDAwMDMsInVzZXJfbmlja25hbWUiOiIxMjMiLCJwcmV2aW91c19wYWdlIjoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL3JlZ2lzdGVyLyJ9','2018-11-07 08:27:29.907964'),('y3rydyl308xrlqzvssswtr1k9dp9vnet','YjkxNmRiYzRiNzBjNzZkZTAxYTdhMTZkN2I5M2IyZGM5NjZjNjBiMjp7InByZXZpb3VzX3BhZ2UiOiIvIiwiaW1hZ2UiOiJ1c2VyX3BpYy9kZWZhdWx0L3VzZXIuanBnIiwidXNlcl9uaWNrbmFtZSI6IjEyMyIsInVzZXJfaWQiOjN9','2018-11-02 13:16:53.738466'),('yf0ghpg35uckwa47kqa5ezwywka26elt','YTExOTViN2E0NDk3N2QxODRjZTU5NTIwODNhMmE3MWIzYWFkMmU4Zjp7InVzZXJfbmlja25hbWUiOiIxMjMiLCJwcmV2aW91c19wYWdlIjoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL215X211c2ljLyIsImltYWdlIjoidXNlcl9waWMvZGVmYXVsdC91c2VyLmpwZyIsInVzZXJfaWQiOjEwMDAwMDN9','2018-11-09 12:15:56.696379');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend`
--

DROP TABLE IF EXISTS `friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `follow_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index2` (`follow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend`
--

LOCK TABLES `friend` WRITE;
/*!40000 ALTER TABLE `friend` DISABLE KEYS */;
/*!40000 ALTER TABLE `friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `music_favourite`
--

DROP TABLE IF EXISTS `music_favourite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `music_favourite` (
  `favourite_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `Fmusic_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`favourite_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music_favourite`
--

LOCK TABLES `music_favourite` WRITE;
/*!40000 ALTER TABLE `music_favourite` DISABLE KEYS */;
INSERT INTO `music_favourite` VALUES (1,3,3),(2,3,4),(3,3,5),(4,3,6);
/*!40000 ALTER TABLE `music_favourite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `music_history`
--

DROP TABLE IF EXISTS `music_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `music_history` (
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `Hmusic_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music_history`
--

LOCK TABLES `music_history` WRITE;
/*!40000 ALTER TABLE `music_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `music_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `music_list`
--

DROP TABLE IF EXISTS `music_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `music_list` (
  `list_id` int(3) NOT NULL AUTO_INCREMENT,
  `music_name` varchar(50) NOT NULL,
  `music_path` varchar(100) NOT NULL,
  `lrc_path` varchar(100) NOT NULL,
  `singer` varchar(15) NOT NULL,
  `length_time` char(5) NOT NULL DEFAULT '00:00',
  `music_pic` varchar(100) NOT NULL,
  `play_No` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=562 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music_list`
--

LOCK TABLES `music_list` WRITE;
/*!40000 ALTER TABLE `music_list` DISABLE KEYS */;
INSERT INTO `music_list` VALUES (1,'走马','/music/陈粒/走马.mp3','/music/陈粒/走马.lrc','陈粒','03:55','/music/陈粒/default.png',0),(2,'不灭','/music/陈粒/不灭.mp3','/music/陈粒/不灭.lrc','陈粒','03:53','/music/陈粒/default.png',0),(3,'芳草地','/music/陈粒/芳草地.mp3','/music/陈粒/芳草地.lrc','陈粒','03:57','/music/陈粒/default.png',0),(4,'光','/music/陈粒/光.mp3','/music/陈粒/光.lrc','陈粒','02:21','/music/陈粒/default.png',0),(5,'好在','/music/陈粒/好在.mp3','/music/陈粒/好在.lrc','陈粒','03:30','/music/陈粒/好在.png',0),(6,'绝对占有 相对自由','/music/陈粒/绝对占有 相对自由.mp3','/music/陈粒/绝对占有 相对自由.lrc','陈粒','05:36','/music/陈粒/default.png',0),(7,'历历万乡','/music/陈粒/历历万乡.mp3','/music/陈粒/历历万乡.lrc','陈粒','03:32','/music/陈粒/default.png',0),(8,'七楼','/music/陈粒/七楼.mp3','/music/陈粒/七楼.lrc','陈粒','03:09','/music/陈粒/default.png',0),(9,'奇妙能力歌','/music/陈粒/奇妙能力歌.mp3','/music/陈粒/奇妙能力歌.lrc','陈粒','04:13','/music/陈粒/default.png',0),(10,'桥豆麻袋','/music/陈粒/桥豆麻袋.mp3','/music/陈粒/桥豆麻袋.lrc','陈粒','03:00','/music/陈粒/default.png',0),(11,'如也','/music/陈粒/如也.mp3','/music/陈粒/如也.lrc','陈粒','03:29','/music/陈粒/default.png',0),(12,'贪得','/music/陈粒/贪得.mp3','/music/陈粒/贪得.lrc','陈粒','07:32','/music/陈粒/default.png',0),(13,'脱缰','/music/陈粒/脱缰.mp3','/music/陈粒/脱缰.lrc','陈粒','04:27','/music/陈粒/default.png',0),(14,'戏台','/music/陈粒/戏台.mp3','/music/陈粒/戏台.lrc','陈粒','03:44','/music/陈粒/戏台.png',0),(15,'小半','/music/陈粒/小半.mp3','/music/陈粒/小半.lrc','陈粒','04:57','/music/陈粒/小半.png',0),(16,'新年快乐','/music/陈粒/新年快乐.mp3','/music/陈粒/新年快乐.lrc','陈粒','03:42','/music/陈粒/新年快乐.png',0),(17,'虚拟','/music/陈粒/虚拟.mp3','/music/陈粒/虚拟.lrc','陈粒','04:00','/music/陈粒/default.png',0),(18,'正趣果上果','/music/陈粒/正趣果上果.mp3','/music/陈粒/正趣果上果.lrc','陈粒','03:42','/music/陈粒/default.png',0),(19,'祝星','/music/陈粒/祝星.mp3','/music/陈粒/祝星.lrc','陈粒','03:18','/music/陈粒/default.png',0),(20,'自渡','/music/陈粒/自渡.mp3','/music/陈粒/自渡.lrc','陈粒','03:57','/music/陈粒/default.png',0),(21,'1874','/music/陈奕迅/1874.mp3','/music/陈奕迅/1874.lrc','陈奕迅','03:50','/music/陈奕迅/default.png',0),(22,'better man','/music/陈奕迅/better man.mp3','/music/陈奕迅/better man.lrc','陈奕迅','05:35','/music/陈奕迅/default.png',0),(23,'i do','/music/陈奕迅/i do.mp3','/music/陈奕迅/i do.lrc','陈奕迅','04:09','/music/陈奕迅/default.png',0),(24,'king kong','/music/陈奕迅/king kong.mp3','/music/陈奕迅/king kong.lrc','陈奕迅','03:23','/music/陈奕迅/default.png',0),(25,'k歌之王','/music/陈奕迅/k歌之王.mp3','/music/陈奕迅/k歌之王.lrc','陈奕迅','03:38','/music/陈奕迅/k歌之王.png',0),(26,'k歌之王(国语)','/music/陈奕迅/k歌之王(国语).mp3','/music/陈奕迅/k歌之王(国语).lrc','陈奕迅','03:43','/music/陈奕迅/default.png',0),(27,'放','/music/陈奕迅/放.mp3','/music/陈奕迅/放.lrc','陈奕迅','03:26','/music/陈奕迅/default.png',0),(28,'富士山下','/music/陈奕迅/富士山下.mp3','/music/陈奕迅/富士山下.lrc','陈奕迅','04:18','/music/陈奕迅/富士山下.png',0),(29,'绵绵','/music/陈奕迅/绵绵.mp3','/music/陈奕迅/绵绵.lrc','陈奕迅','04:04','/music/陈奕迅/default.png',0),(30,'明年今日','/music/陈奕迅/明年今日.mp3','/music/陈奕迅/明年今日.lrc','陈奕迅','03:25','/music/陈奕迅/default.png',0),(31,'你的背包','/music/陈奕迅/你的背包.mp3','/music/陈奕迅/你的背包.lrc','陈奕迅','03:57','/music/陈奕迅/你的背包.png',0),(32,'披风','/music/陈奕迅/披风.mp3','/music/陈奕迅/披风.lrc','陈奕迅','03:56','/music/陈奕迅/default.png',0),(33,'全世界失眠','/music/陈奕迅/全世界失眠.mp3','/music/陈奕迅/全世界失眠.lrc','陈奕迅','04:09','/music/陈奕迅/default.png',0),(34,'让我留在你身边','/music/陈奕迅/让我留在你身边.mp3','/music/陈奕迅/让我留在你身边.lrc','陈奕迅','03:05','/music/陈奕迅/default.png',0),(35,'人来人往','/music/陈奕迅/人来人往.mp3','/music/陈奕迅/人来人往.lrc','陈奕迅','03:51','/music/陈奕迅/人来人往.png',0),(36,'十年','/music/陈奕迅/十年.mp3','/music/陈奕迅/十年.lrc','陈奕迅','03:25','/music/陈奕迅/十年.png',0),(37,'岁月如歌','/music/陈奕迅/岁月如歌.mp3','/music/陈奕迅/岁月如歌.lrc','陈奕迅','03:27','/music/陈奕迅/default.png',0),(38,'谢谢侬','/music/陈奕迅/谢谢侬.mp3','/music/陈奕迅/谢谢侬.lrc','陈奕迅','04:22','/music/陈奕迅/default.png',0),(39,'一生中最爱','/music/陈奕迅/一生中最爱.mp3','/music/陈奕迅/一生中最爱.lrc','陈奕迅','04:28','/music/陈奕迅/default.png',0),(40,'在这个世界相遇','/music/陈奕迅/在这个世界相遇.mp3','/music/陈奕迅/在这个世界相遇.lrc','陈奕迅','05:09','/music/陈奕迅/default.png',0),(41,'爱你a.i.n.y.2017','/music/G.E.M.邓紫棋/爱你a.i.n.y.2017.mp3','/music/G.E.M.邓紫棋/爱你a.i.n.y.2017.lrc','G.E.M.邓紫棋','04:01','/music/G.E.M.邓紫棋/爱你a.i.n.y.2017.png',0),(42,'多远都要在一起','/music/G.E.M.邓紫棋/多远都要在一起.mp3','/music/G.E.M.邓紫棋/多远都要在一起.lrc','G.E.M.邓紫棋','03:53','/music/G.E.M.邓紫棋/default.png',0),(43,'光年之外','/music/G.E.M.邓紫棋/光年之外.mp3','/music/G.E.M.邓紫棋/光年之外.lrc','G.E.M.邓紫棋','03:55','/music/G.E.M.邓紫棋/光年之外.png',0),(44,'后会无期','/music/G.E.M.邓紫棋/后会无期.mp3','/music/G.E.M.邓紫棋/后会无期.lrc','G.E.M.邓紫棋','03:43','/music/G.E.M.邓紫棋/后会无期.png',0),(45,'画','/music/G.E.M.邓紫棋/画.mp3','/music/G.E.M.邓紫棋/画.lrc','G.E.M.邓紫棋','02:48','/music/G.E.M.邓紫棋/default.png',0),(46,'回忆的沙漏','/music/G.E.M.邓紫棋/回忆的沙漏.mp3','/music/G.E.M.邓紫棋/回忆的沙漏.lrc','G.E.M.邓紫棋','03:53','/music/G.E.M.邓紫棋/default.png',0),(47,'你把我灌醉','/music/G.E.M.邓紫棋/你把我灌醉.mp3','/music/G.E.M.邓紫棋/你把我灌醉.lrc','G.E.M.邓紫棋','04:45','/music/G.E.M.邓紫棋/default.png',0),(48,'泡沫','/music/G.E.M.邓紫棋/泡沫.mp3','/music/G.E.M.邓紫棋/泡沫.lrc','G.E.M.邓紫棋','04:59','/music/G.E.M.邓紫棋/default.png',0),(49,'瞬间','/music/G.E.M.邓紫棋/瞬间.mp3','/music/G.E.M.邓紫棋/瞬间.lrc','G.E.M.邓紫棋','03:40','/music/G.E.M.邓紫棋/default.png',0),(50,'死了都要 • 爱','/music/G.E.M.邓紫棋/死了都要 • 爱.mp3','/music/G.E.M.邓紫棋/死了都要 • 爱.lrc','G.E.M.邓紫棋','03:27','/music/G.E.M.邓紫棋/死了都要 • 爱.png',0),(51,'桃花诺','/music/G.E.M.邓紫棋/桃花诺.mp3','/music/G.E.M.邓紫棋/桃花诺.lrc','G.E.M.邓紫棋','03:39','/music/G.E.M.邓紫棋/default.png',0),(52,'喜欢你','/music/G.E.M.邓紫棋/喜欢你.mp3','/music/G.E.M.邓紫棋/喜欢你.lrc','G.E.M.邓紫棋','04:19','/music/G.E.M.邓紫棋/default.png',0),(53,'写不完的温柔','/music/G.E.M.邓紫棋/写不完的温柔.mp3','/music/G.E.M.邓紫棋/写不完的温柔.lrc','G.E.M.邓紫棋','03:56','/music/G.E.M.邓紫棋/default.png',0),(54,'心之焰','/music/G.E.M.邓紫棋/心之焰.mp3','/music/G.E.M.邓紫棋/心之焰.lrc','G.E.M.邓紫棋','02:28','/music/G.E.M.邓紫棋/default.png',0),(55,'夜空中最亮的星','/music/G.E.M.邓紫棋/夜空中最亮的星.mp3','/music/G.E.M.邓紫棋/夜空中最亮的星.lrc','G.E.M.邓紫棋','03:51','/music/G.E.M.邓紫棋/default.png',0),(56,'有心人','/music/G.E.M.邓紫棋/有心人.mp3','/music/G.E.M.邓紫棋/有心人.lrc','G.E.M.邓紫棋','04:00','/music/G.E.M.邓紫棋/default.png',0),(57,'再见','/music/G.E.M.邓紫棋/再见.mp3','/music/G.E.M.邓紫棋/再见.lrc','G.E.M.邓紫棋','03:59','/music/G.E.M.邓紫棋/default.png',0),(58,'冬','/music/好妹妹/冬.mp3','/music/好妹妹/冬.lrc','好妹妹','04:01','/music/好妹妹/default.png',0),(59,'关联','/music/好妹妹/关联.mp3','/music/好妹妹/关联.lrc','好妹妹','04:03','/music/好妹妹/default.png',0),(60,'归乡','/music/好妹妹/归乡.mp3','/music/好妹妹/归乡.lrc','好妹妹','04:34','/music/好妹妹/归乡.png',0),(61,'很高兴认识你','/music/好妹妹/很高兴认识你.mp3','/music/好妹妹/很高兴认识你.lrc','好妹妹','04:18','/music/好妹妹/default.png',0),(62,'红豆词','/music/好妹妹/红豆词.mp3','/music/好妹妹/红豆词.lrc','好妹妹','04:42','/music/好妹妹/红豆词.png',0),(63,'谎话情歌','/music/好妹妹/谎话情歌.mp3','/music/好妹妹/谎话情歌.lrc','好妹妹','04:50','/music/好妹妹/谎话情歌.png',0),(64,'那年的愿望','/music/好妹妹/那年的愿望.mp3','/music/好妹妹/那年的愿望.lrc','好妹妹','04:33','/music/好妹妹/default.png',0),(65,'你飞到城市另一边','/music/好妹妹/你飞到城市另一边.mp3','/music/好妹妹/你飞到城市另一边.lrc','好妹妹','05:45','/music/好妹妹/default.png',0),(66,'青城山下白素贞','/music/好妹妹/青城山下白素贞.mp3','/music/好妹妹/青城山下白素贞.lrc','好妹妹','02:10','/music/好妹妹/default.png',0),(67,'人间难得有情人','/music/好妹妹/人间难得有情人.mp3','/music/好妹妹/人间难得有情人.lrc','好妹妹','04:24','/music/好妹妹/人间难得有情人.png',0),(68,'蛇精病不会动','/music/好妹妹/蛇精病不会动.mp3','/music/好妹妹/蛇精病不会动.lrc','好妹妹','03:36','/music/好妹妹/default.png',0),(69,'晚风','/music/好妹妹/晚风.mp3','/music/好妹妹/晚风.lrc','好妹妹','05:27','/music/好妹妹/晚风.png',0),(70,'我也可以是流浪诗人','/music/好妹妹/我也可以是流浪诗人.mp3','/music/好妹妹/我也可以是流浪诗人.lrc','好妹妹','03:58','/music/好妹妹/default.png',0),(71,'相思赋予谁','/music/好妹妹/相思赋予谁.mp3','/music/好妹妹/相思赋予谁.lrc','好妹妹','04:05','/music/好妹妹/default.png',0),(72,'像你这样的朋友','/music/好妹妹/像你这样的朋友.mp3','/music/好妹妹/像你这样的朋友.lrc','好妹妹','03:57','/music/好妹妹/default.png',0),(73,'新年快乐','/music/好妹妹/新年快乐.mp3','/music/好妹妹/新年快乐.lrc','好妹妹','03:42','/music/好妹妹/default.png',0),(74,'一个人的北京','/music/好妹妹/一个人的北京.mp3','/music/好妹妹/一个人的北京.lrc','好妹妹','05:03','/music/好妹妹/default.png',0),(75,'原来那天的阳光','/music/好妹妹/原来那天的阳光.mp3','/music/好妹妹/原来那天的阳光.lrc','好妹妹','03:56','/music/好妹妹/default.png',0),(76,'周一的清晨还在下雨','/music/好妹妹/周一的清晨还在下雨.mp3','/music/好妹妹/周一的清晨还在下雨.lrc','好妹妹','04:19','/music/好妹妹/default.png',0),(77,'昨天的你的现在的未来','/music/好妹妹/昨天的你的现在的未来.mp3','/music/好妹妹/昨天的你的现在的未来.lrc','好妹妹','04:17','/music/好妹妹/default.png',0),(78,'杯比','/music/后弦/杯比.mp3','/music/后弦/杯比.lrc','后弦','03:25','/music/后弦/default.png',0),(79,'单车恋人','/music/后弦/单车恋人.mp3','/music/后弦/单车恋人.lrc','后弦','03:43','/music/后弦/default.png',0),(80,'给的再多不如懂我','/music/后弦/给的再多不如懂我.mp3','/music/后弦/给的再多不如懂我.lrc','后弦','03:28','/music/后弦/default.png',0),(81,'公主抱','/music/后弦/公主抱.mp3','/music/后弦/公主抱.lrc','后弦','03:32','/music/后弦/default.png',0),(82,'瓜很甜','/music/后弦/瓜很甜.mp3','/music/后弦/瓜很甜.lrc','后弦','03:24','/music/后弦/瓜很甜.png',0),(83,'画风','/music/后弦/画风.mp3','/music/后弦/画风.lrc','后弦','04:07','/music/后弦/default.png',0),(84,'卢沟晓月','/music/后弦/卢沟晓月.mp3','/music/后弦/卢沟晓月.lrc','后弦','03:59','/music/后弦/default.png',0),(85,'那年印象刘三姐','/music/后弦/那年印象刘三姐.mp3','/music/后弦/那年印象刘三姐.lrc','后弦','05:09','/music/后弦/default.png',0),(86,'娃娃脸','/music/后弦/娃娃脸.mp3','/music/后弦/娃娃脸.lrc','后弦','03:12','/music/后弦/default.png',0),(87,'我要的不是再见','/music/后弦/我要的不是再见.mp3','/music/后弦/我要的不是再见.lrc','后弦','04:45','/music/后弦/default.png',0),(88,'下完这场雨','/music/后弦/下完这场雨.mp3','/music/后弦/下完这场雨.lrc','后弦','04:31','/music/后弦/default.png',0),(89,'小周末','/music/后弦/小周末.mp3','/music/后弦/小周末.lrc','后弦','03:48','/music/后弦/default.png',0),(90,'鞋跟','/music/后弦/鞋跟.mp3','/music/后弦/鞋跟.lrc','后弦','04:03','/music/后弦/default.png',0),(91,'只要在一起','/music/后弦/只要在一起.mp3','/music/后弦/只要在一起.lrc','后弦','04:00','/music/后弦/default.png',0),(92,'主公莫慌','/music/后弦/主公莫慌.mp3','/music/后弦/主公莫慌.lrc','后弦','03:28','/music/后弦/主公莫慌.png',0),(93,'give me a chance','/music/胡彦斌/give me a chance.mp3','/music/胡彦斌/give me a chance.lrc','胡彦斌','04:00','/music/胡彦斌/default.png',0),(94,'hello(remix)','/music/胡彦斌/hello(remix).mp3','/music/胡彦斌/hello(remix).lrc','胡彦斌','04:16','/music/胡彦斌/default.png',0),(95,'leave me alone(remix)','/music/胡彦斌/leave me alone(remix).mp3','/music/胡彦斌/leave me alone(remix).lrc','胡彦斌','03:27','/music/胡彦斌/default.png',0),(96,'yes i do','/music/胡彦斌/yes i do.mp3','/music/胡彦斌/yes i do.lrc','胡彦斌','03:40','/music/胡彦斌/default.png',0),(97,'成长','/music/胡彦斌/成长.mp3','/music/胡彦斌/成长.lrc','胡彦斌','04:11','/music/胡彦斌/default.png',0),(98,'当爱已成往事','/music/胡彦斌/当爱已成往事.mp3','/music/胡彦斌/当爱已成往事.lrc','胡彦斌','04:29','/music/胡彦斌/default.png',0),(99,'返老还童','/music/胡彦斌/返老还童.mp3','/music/胡彦斌/返老还童.lrc','胡彦斌','04:05','/music/胡彦斌/default.png',0),(100,'高手','/music/胡彦斌/高手.mp3','/music/胡彦斌/高手.lrc','胡彦斌','04:01','/music/胡彦斌/default.png',0),(101,'还魂门','/music/胡彦斌/还魂门.mp3','/music/胡彦斌/还魂门.lrc','胡彦斌','04:16','/music/胡彦斌/还魂门.png',0),(102,'红颜','/music/胡彦斌/红颜.mp3','/music/胡彦斌/红颜.lrc','胡彦斌','04:32','/music/胡彦斌/default.png',0),(103,'空位','/music/胡彦斌/空位.mp3','/music/胡彦斌/空位.lrc','胡彦斌','05:02','/music/胡彦斌/default.png',0),(104,'没那么简单','/music/胡彦斌/没那么简单.mp3','/music/胡彦斌/没那么简单.lrc','胡彦斌','05:37','/music/胡彦斌/default.png',0),(105,'明星','/music/胡彦斌/明星.mp3','/music/胡彦斌/明星.lrc','胡彦斌','03:37','/music/胡彦斌/default.png',0),(106,'你买单还我买单','/music/胡彦斌/你买单还我买单.mp3','/music/胡彦斌/你买单还我买单.lrc','胡彦斌','04:23','/music/胡彦斌/default.png',0),(107,'你要的全拿走','/music/胡彦斌/你要的全拿走.mp3','/music/胡彦斌/你要的全拿走.lrc','胡彦斌','04:59','/music/胡彦斌/default.png',0),(108,'如果','/music/胡彦斌/如果.mp3','/music/胡彦斌/如果.lrc','胡彦斌','03:40','/music/胡彦斌/default.png',0),(109,'天黑黑','/music/胡彦斌/天黑黑.mp3','/music/胡彦斌/天黑黑.lrc','胡彦斌','04:37','/music/胡彦斌/default.png',0),(110,'为你我受冷风吹','/music/胡彦斌/为你我受冷风吹.mp3','/music/胡彦斌/为你我受冷风吹.lrc','胡彦斌','04:39','/music/胡彦斌/default.png',0),(111,'追月','/music/胡彦斌/追月.mp3','/music/胡彦斌/追月.lrc','胡彦斌','04:27','/music/胡彦斌/default.png',0),(112,'覅忒好','/music/胡彦斌/覅忒好.mp3','/music/胡彦斌/覅忒好.lrc','胡彦斌','03:49','/music/胡彦斌/覅忒好.png',0),(113,'被风吹过的夏天','/music/金莎/被风吹过的夏天.mp3','/music/金莎/被风吹过的夏天.lrc','金莎','04:17','/music/金莎/被风吹过的夏天.png',0),(114,'被风吹过的夏天(电视剧《最佳前男友》插曲)','/music/金莎/被风吹过的夏天(电视剧《最佳前男友》插曲).mp3','/music/金莎/被风吹过的夏天(电视剧《最佳前男友》插曲).lrc','金莎','04:17','/music/金莎/default.png',0),(115,'笨蛋','/music/金莎/笨蛋.mp3','/music/金莎/笨蛋.lrc','金莎','03:41','/music/金莎/default.png',0),(116,'不可思议','/music/金莎/不可思议.mp3','/music/金莎/不可思议.lrc','金莎','04:21','/music/金莎/default.png',0),(117,'发现爱','/music/金莎/发现爱.mp3','/music/金莎/发现爱.lrc','金莎','03:43','/music/金莎/default.png',0),(118,'画中仙','/music/金莎/画中仙.mp3','/music/金莎/画中仙.lrc','金莎','04:47','/music/金莎/default.png',0),(119,'彗星的眼泪','/music/金莎/彗星的眼泪.mp3','/music/金莎/彗星的眼泪.lrc','金莎','04:18','/music/金莎/default.png',0),(120,'漫游','/music/金莎/漫游.mp3','/music/金莎/漫游.lrc','金莎','04:38','/music/金莎/漫游.png',0),(121,'梦想的翅膀','/music/金莎/梦想的翅膀.mp3','/music/金莎/梦想的翅膀.lrc','金莎','04:24','/music/金莎/梦想的翅膀.png',0),(122,'亲爱的还幸福吗','/music/金莎/亲爱的还幸福吗.mp3','/music/金莎/亲爱的还幸福吗.lrc','金莎','04:19','/music/金莎/default.png',0),(123,'天边的眷恋','/music/金莎/天边的眷恋.mp3','/music/金莎/天边的眷恋.lrc','金莎','04:25','/music/金莎/default.png',0),(124,'停电','/music/金莎/停电.mp3','/music/金莎/停电.lrc','金莎','03:30','/music/金莎/default.png',0),(125,'我懂了','/music/金莎/我懂了.mp3','/music/金莎/我懂了.lrc','金莎','04:20','/music/金莎/我懂了.png',0),(126,'我还记得你的微笑','/music/金莎/我还记得你的微笑.mp3','/music/金莎/我还记得你的微笑.lrc','金莎','03:43','/music/金莎/default.png',0),(127,'我会给你幸福','/music/金莎/我会给你幸福.mp3','/music/金莎/我会给你幸福.lrc','金莎','04:31','/music/金莎/default.png',0),(128,'相思垢','/music/金莎/相思垢.mp3','/music/金莎/相思垢.lrc','金莎','04:07','/music/金莎/default.png',0),(129,'星月神话','/music/金莎/星月神话.mp3','/music/金莎/星月神话.lrc','金莎','04:08','/music/金莎/default.png',0),(130,'雪绒花','/music/金莎/雪绒花.mp3','/music/金莎/雪绒花.lrc','金莎','03:27','/music/金莎/default.png',0),(131,'这种爱','/music/金莎/这种爱.mp3','/music/金莎/这种爱.lrc','金莎','03:43','/music/金莎/default.png',0),(132,'最近好吗','/music/金莎/最近好吗.mp3','/music/金莎/最近好吗.lrc','金莎','03:57','/music/金莎/default.png',0),(133,'贝加尔湖畔','/music/李健/贝加尔湖畔.mp3','/music/李健/贝加尔湖畔.lrc','李健','05:34','/music/李健/default.png',0),(134,'沧海轻舟','/music/李健/沧海轻舟.mp3','/music/李健/沧海轻舟.lrc','李健','04:26','/music/李健/default.png',0),(135,'当你老了','/music/李健/当你老了.mp3','/music/李健/当你老了.lrc','李健','05:20','/music/李健/default.png',0),(136,'风吹黄昏','/music/李健/风吹黄昏.mp3','/music/李健/风吹黄昏.lrc','李健','04:45','/music/李健/default.png',0),(137,'故乡山川 + 乌苏里船歌','/music/李健/故乡山川 + 乌苏里船歌.mp3','/music/李健/故乡山川 + 乌苏里船歌.lrc','李健','05:07','/music/李健/default.png',0),(138,'假如爱有天意','/music/李健/假如爱有天意.mp3','/music/李健/假如爱有天意.lrc','李健','05:03','/music/李健/default.png',0),(139,'临江仙·夜归临皋','/music/李健/临江仙·夜归临皋.mp3','/music/李健/临江仙·夜归临皋.lrc','李健','03:16','/music/李健/default.png',0),(140,'美若黎明','/music/李健/美若黎明.mp3','/music/李健/美若黎明.lrc','李健','04:26','/music/李健/美若黎明.png',0),(141,'迷雾','/music/李健/迷雾.mp3','/music/李健/迷雾.lrc','李健','06:34','/music/李健/default.png',0),(142,'日落之前','/music/李健/日落之前.mp3','/music/李健/日落之前.lrc','李健','03:22','/music/李健/default.png',0),(143,'深海之寻','/music/李健/深海之寻.mp3','/music/李健/深海之寻.lrc','李健','04:30','/music/李健/default.png',0),(144,'苏幕遮·碧云天','/music/李健/苏幕遮·碧云天.mp3','/music/李健/苏幕遮·碧云天.lrc','李健','03:48','/music/李健/苏幕遮·碧云天.png',0),(145,'我愿人长久','/music/李健/我愿人长久.mp3','/music/李健/我愿人长久.lrc','李健','04:33','/music/李健/我愿人长久.png',0),(146,'雾中列车','/music/李健/雾中列车.mp3','/music/李健/雾中列车.lrc','李健','04:38','/music/李健/雾中列车.png',0),(147,'消失的月光','/music/李健/消失的月光.mp3','/music/李健/消失的月光.lrc','李健','03:58','/music/李健/default.png',0),(148,'义气','/music/李健/义气.mp3','/music/李健/义气.lrc','李健','02:33','/music/李健/义气.png',0),(149,'雨后初晴','/music/李健/雨后初晴.mp3','/music/李健/雨后初晴.lrc','李健','04:56','/music/李健/default.png',0),(150,'在水一方','/music/李健/在水一方.mp3','/music/李健/在水一方.lrc','李健','05:43','/music/李健/default.png',0),(151,'众妙','/music/李健/众妙.mp3','/music/李健/众妙.lrc','李健','04:21','/music/李健/default.png',0),(152,'哎呀','/music/李荣浩/哎呀.mp3','/music/李荣浩/哎呀.lrc','李荣浩','04:52','/music/李荣浩/default.png',0),(153,'拜拜','/music/李荣浩/拜拜.mp3','/music/李荣浩/拜拜.lrc','李荣浩','05:37','/music/李荣浩/default.png',0),(154,'不将就','/music/李荣浩/不将就.mp3','/music/李荣浩/不将就.lrc','李荣浩','03:41','/music/李荣浩/不将就.png',0),(155,'都一样','/music/李荣浩/都一样.mp3','/music/李荣浩/都一样.lrc','李荣浩','05:03','/music/李荣浩/default.png',0),(156,'蓝绿','/music/李荣浩/蓝绿.mp3','/music/李荣浩/蓝绿.lrc','李荣浩','04:20','/music/李荣浩/default.png',0),(157,'老伴','/music/李荣浩/老伴.mp3','/music/李荣浩/老伴.lrc','李荣浩','03:27','/music/李荣浩/default.png',0),(158,'李白','/music/李荣浩/李白.mp3','/music/李荣浩/李白.lrc','李荣浩','04:12','/music/李荣浩/default.png',0),(159,'两个人','/music/李荣浩/两个人.mp3','/music/李荣浩/两个人.lrc','李荣浩','04:50','/music/李荣浩/default.png',0),(160,'满座','/music/李荣浩/满座.mp3','/music/李荣浩/满座.lrc','李荣浩','05:32','/music/李荣浩/default.png',0),(161,'模特','/music/李荣浩/模特.mp3','/music/李荣浩/模特.lrc','李荣浩','05:08','/music/李荣浩/default.png',0),(162,'太坦白','/music/李荣浩/太坦白.mp3','/music/李荣浩/太坦白.lrc','李荣浩','04:57','/music/李荣浩/default.png',0),(163,'喜剧之王','/music/李荣浩/喜剧之王.mp3','/music/李荣浩/喜剧之王.lrc','李荣浩','04:21','/music/李荣浩/喜剧之王.png',0),(164,'小芳','/music/李荣浩/小芳.mp3','/music/李荣浩/小芳.lrc','李荣浩','04:10','/music/李荣浩/default.png',0),(165,'演员和歌手','/music/李荣浩/演员和歌手.mp3','/music/李荣浩/演员和歌手.lrc','李荣浩','04:09','/music/李荣浩/default.png',0),(166,'有理想','/music/李荣浩/有理想.mp3','/music/李荣浩/有理想.lrc','李荣浩','03:48','/music/李荣浩/有理想.png',0),(167,'有一个姑娘','/music/李荣浩/有一个姑娘.mp3','/music/李荣浩/有一个姑娘.lrc','李荣浩','04:45','/music/李荣浩/default.png',0),(168,'作曲家','/music/李荣浩/作曲家.mp3','/music/李荣浩/作曲家.lrc','李荣浩','03:47','/music/李荣浩/作曲家.png',0),(169,'always online','/music/林俊杰/always online.mp3','/music/林俊杰/always online.lrc','林俊杰','03:45','/music/林俊杰/default.png',0),(170,'爱笑的眼睛','/music/林俊杰/爱笑的眼睛.mp3','/music/林俊杰/爱笑的眼睛.lrc','林俊杰','04:13','/music/林俊杰/default.png',0),(171,'背对背拥抱','/music/林俊杰/背对背拥抱.mp3','/music/林俊杰/背对背拥抱.lrc','林俊杰','03:54','/music/林俊杰/default.png',0),(172,'被风吹过的夏天','/music/林俊杰/被风吹过的夏天.mp3','/music/林俊杰/被风吹过的夏天.lrc','林俊杰','04:17','/music/林俊杰/被风吹过的夏天.png',0),(173,'被风吹过的夏天(电视剧《最佳前男友》插曲)','/music/林俊杰/被风吹过的夏天(电视剧《最佳前男友》插曲).mp3','/music/林俊杰/被风吹过的夏天(电视剧《最佳前男友》插曲).lrc','林俊杰','04:17','/music/林俊杰/default.png',0),(174,'不潮不用花钱','/music/林俊杰/不潮不用花钱.mp3','/music/林俊杰/不潮不用花钱.lrc','林俊杰','03:50','/music/林俊杰/default.png',0),(175,'曹操','/music/林俊杰/曹操.mp3','/music/林俊杰/曹操.lrc','林俊杰','04:02','/music/林俊杰/曹操.png',0),(176,'当你','/music/林俊杰/当你.mp3','/music/林俊杰/当你.lrc','林俊杰','04:11','/music/林俊杰/default.png',0),(177,'豆浆油条','/music/林俊杰/豆浆油条.mp3','/music/林俊杰/豆浆油条.lrc','林俊杰','04:16','/music/林俊杰/default.png',0),(178,'记得','/music/林俊杰/记得.mp3','/music/林俊杰/记得.lrc','林俊杰','04:47','/music/林俊杰/default.png',0),(179,'江南','/music/林俊杰/江南.mp3','/music/林俊杰/江南.lrc','林俊杰','04:28','/music/林俊杰/default.png',0),(180,'就是我','/music/林俊杰/就是我.mp3','/music/林俊杰/就是我.lrc','林俊杰','03:14','/music/林俊杰/default.png',0),(181,'美人鱼','/music/林俊杰/美人鱼.mp3','/music/林俊杰/美人鱼.lrc','林俊杰','04:14','/music/林俊杰/default.png',0),(182,'杀手','/music/林俊杰/杀手.mp3','/music/林俊杰/杀手.lrc','林俊杰','04:53','/music/林俊杰/杀手.png',0),(183,'她说','/music/林俊杰/她说.mp3','/music/林俊杰/她说.lrc','林俊杰','05:20','/music/林俊杰/default.png',0),(184,'我还想她','/music/林俊杰/我还想她.mp3','/music/林俊杰/我还想她.lrc','林俊杰','04:07','/music/林俊杰/default.png',0),(185,'小酒窝','/music/林俊杰/小酒窝.mp3','/music/林俊杰/小酒窝.lrc','林俊杰','03:38','/music/林俊杰/default.png',0),(186,'一千年以后','/music/林俊杰/一千年以后.mp3','/music/林俊杰/一千年以后.lrc','林俊杰','03:47','/music/林俊杰/一千年以后.png',0),(187,'一眼万年','/music/林俊杰/一眼万年.mp3','/music/林俊杰/一眼万年.lrc','林俊杰','04:18','/music/林俊杰/default.png',0),(188,'醉赤壁','/music/林俊杰/醉赤壁.mp3','/music/林俊杰/醉赤壁.lrc','林俊杰','04:41','/music/林俊杰/醉赤壁.png',0),(189,'mr lovable(中文版)','/music/刘瑞琦/mr lovable(中文版).mp3','/music/刘瑞琦/mr lovable(中文版).lrc','刘瑞琦','03:31','/music/刘瑞琦/default.png',0),(190,'爱需要练习','/music/刘瑞琦/爱需要练习.mp3','/music/刘瑞琦/爱需要练习.lrc','刘瑞琦','05:25','/music/刘瑞琦/爱需要练习.png',0),(191,'定格','/music/刘瑞琦/定格.mp3','/music/刘瑞琦/定格.lrc','刘瑞琦','03:41','/music/刘瑞琦/定格.png',0),(192,'房间','/music/刘瑞琦/房间.mp3','/music/刘瑞琦/房间.lrc','刘瑞琦','04:26','/music/刘瑞琦/房间.png',0),(193,'房间 (新版)','/music/刘瑞琦/房间 (新版).mp3','/music/刘瑞琦/房间 (新版).lrc','刘瑞琦','04:01','/music/刘瑞琦/房间 (新版).png',0),(194,'歌路','/music/刘瑞琦/歌路.mp3','/music/刘瑞琦/歌路.lrc','刘瑞琦','03:37','/music/刘瑞琦/default.png',0),(195,'过去未来','/music/刘瑞琦/过去未来.mp3','/music/刘瑞琦/过去未来.lrc','刘瑞琦','04:13','/music/刘瑞琦/default.png',0),(196,'来不及','/music/刘瑞琦/来不及.mp3','/music/刘瑞琦/来不及.lrc','刘瑞琦','04:18','/music/刘瑞琦/default.png',0),(197,'临床治疗','/music/刘瑞琦/临床治疗.mp3','/music/刘瑞琦/临床治疗.lrc','刘瑞琦','03:51','/music/刘瑞琦/default.png',0),(198,'零碎','/music/刘瑞琦/零碎.mp3','/music/刘瑞琦/零碎.lrc','刘瑞琦','04:25','/music/刘瑞琦/default.png',0),(199,'每次和你走在路上都会看见一只喵 (acoustic)','/music/刘瑞琦/每次和你走在路上都会看见一只喵 (acoustic).mp3','/music/刘瑞琦/每次和你走在路上都会看见一只喵 (acoustic).lrc','刘瑞琦','04:22','/music/刘瑞琦/default.png',0),(200,'三度和弦','/music/刘瑞琦/三度和弦.mp3','/music/刘瑞琦/三度和弦.lrc','刘瑞琦','03:02','/music/刘瑞琦/default.png',0),(201,'玩笑','/music/刘瑞琦/玩笑.mp3','/music/刘瑞琦/玩笑.lrc','刘瑞琦','04:34','/music/刘瑞琦/default.png',0),(202,'玩笑 (acoustic)','/music/刘瑞琦/玩笑 (acoustic).mp3','/music/刘瑞琦/玩笑 (acoustic).lrc','刘瑞琦','03:48','/music/刘瑞琦/default.png',0),(203,'晚安','/music/刘瑞琦/晚安.mp3','/music/刘瑞琦/晚安.lrc','刘瑞琦','03:57','/music/刘瑞琦/晚安.png',0),(204,'温暖的房间','/music/刘瑞琦/温暖的房间.mp3','/music/刘瑞琦/温暖的房间.lrc','刘瑞琦','03:31','/music/刘瑞琦/default.png',0),(205,'小拳拳捶你胸口','/music/刘瑞琦/小拳拳捶你胸口.mp3','/music/刘瑞琦/小拳拳捶你胸口.lrc','刘瑞琦','01:20','/music/刘瑞琦/default.png',0),(206,'遗憾的温度','/music/刘瑞琦/遗憾的温度.mp3','/music/刘瑞琦/遗憾的温度.lrc','刘瑞琦','03:06','/music/刘瑞琦/default.png',0),(207,'早安','/music/刘瑞琦/早安.mp3','/music/刘瑞琦/早安.lrc','刘瑞琦','04:27','/music/刘瑞琦/早安.png',0),(208,'v家萌妹','/music/洛天依/v家萌妹.mp3','/music/洛天依/v家萌妹.lrc','洛天依','03:21','/music/洛天依/v家萌妹.png',0),(209,'够真才出涩','/music/洛天依/够真才出涩.mp3','/music/洛天依/够真才出涩.lrc','洛天依','01:33','/music/洛天依/够真才出涩.png',0),(210,'光速行者','/music/洛天依/光速行者.mp3','/music/洛天依/光速行者.lrc','洛天依','03:30','/music/洛天依/光速行者.png',0),(211,'还不是因为你长得不好看','/music/洛天依/还不是因为你长得不好看.mp3','/music/洛天依/还不是因为你长得不好看.lrc','洛天依','03:13','/music/洛天依/还不是因为你长得不好看.png',0),(212,'花儿纳吉','/music/洛天依/花儿纳吉.mp3','/music/洛天依/花儿纳吉.lrc','洛天依','03:58','/music/洛天依/default.png',0),(213,'花花世界','/music/洛天依/花花世界.mp3','/music/洛天依/花花世界.lrc','洛天依','03:13','/music/洛天依/default.png',0),(214,'卡农之十七星座','/music/洛天依/卡农之十七星座.mp3','/music/洛天依/卡农之十七星座.lrc','洛天依','03:17','/music/洛天依/default.png',0),(215,'人生就像是一个茶几','/music/洛天依/人生就像是一个茶几.mp3','/music/洛天依/人生就像是一个茶几.lrc','洛天依','03:44','/music/洛天依/default.png',0),(216,'赛马之赛草泥马','/music/洛天依/赛马之赛草泥马.mp3','/music/洛天依/赛马之赛草泥马.lrc','洛天依','03:00','/music/洛天依/default.png',0),(217,'上下上下','/music/洛天依/上下上下.mp3','/music/洛天依/上下上下.lrc','洛天依','03:24','/music/洛天依/上下上下.png',0),(218,'深夜书店','/music/洛天依/深夜书店.mp3','/music/洛天依/深夜书店.lrc','洛天依','04:20','/music/洛天依/深夜书店.png',0),(219,'神经病之歌','/music/洛天依/神经病之歌.mp3','/music/洛天依/神经病之歌.lrc','洛天依','02:55','/music/洛天依/default.png',0),(220,'甩葱叉叉吃包包','/music/洛天依/甩葱叉叉吃包包.mp3','/music/洛天依/甩葱叉叉吃包包.lrc','洛天依','03:08','/music/洛天依/default.png',0),(221,'维密你开场','/music/洛天依/维密你开场.mp3','/music/洛天依/维密你开场.lrc','洛天依','03:19','/music/洛天依/default.png',0),(222,'嘘つきは恋のはじまり','/music/洛天依/嘘つきは恋のはじまり.mp3','/music/洛天依/嘘つきは恋のはじまり.lrc','洛天依','04:13','/music/洛天依/default.png',0),(223,'虚拟游乐场','/music/洛天依/虚拟游乐场.mp3','/music/洛天依/虚拟游乐场.lrc','洛天依','03:06','/music/洛天依/default.png',0),(224,'野蔷薇','/music/洛天依/野蔷薇.mp3','/music/洛天依/野蔷薇.lrc','洛天依','02:25','/music/洛天依/default.png',0),(225,'元宵吃货节','/music/洛天依/元宵吃货节.mp3','/music/洛天依/元宵吃货节.lrc','洛天依','02:00','/music/洛天依/default.png',0),(226,'追光使者','/music/洛天依/追光使者.mp3','/music/洛天依/追光使者.lrc','洛天依','03:15','/music/洛天依/default.png',0),(227,'day day 小鸟','/music/莫文蔚/day day 小鸟.mp3','/music/莫文蔚/day day 小鸟.lrc','莫文蔚','04:02','/music/莫文蔚/default.png',0),(228,'爱情','/music/莫文蔚/爱情.mp3','/music/莫文蔚/爱情.lrc','莫文蔚','04:45','/music/莫文蔚/爱情.png',0),(229,'电台情歌','/music/莫文蔚/电台情歌.mp3','/music/莫文蔚/电台情歌.lrc','莫文蔚','04:08','/music/莫文蔚/default.png',0),(230,'广岛之恋','/music/莫文蔚/广岛之恋.mp3','/music/莫文蔚/广岛之恋.lrc','莫文蔚','05:21','/music/莫文蔚/default.png',0),(231,'忽然之间','/music/莫文蔚/忽然之间.mp3','/music/莫文蔚/忽然之间.lrc','莫文蔚','03:21','/music/莫文蔚/default.png',0),(232,'寂寞的恋人啊','/music/莫文蔚/寂寞的恋人啊.mp3','/music/莫文蔚/寂寞的恋人啊.lrc','莫文蔚','04:08','/music/莫文蔚/default.png',0),(233,'坚强的理由','/music/莫文蔚/坚强的理由.mp3','/music/莫文蔚/坚强的理由.lrc','莫文蔚','05:18','/music/莫文蔚/default.png',0),(234,'密流','/music/莫文蔚/密流.mp3','/music/莫文蔚/密流.lrc','莫文蔚','04:43','/music/莫文蔚/default.png',0),(235,'那么爱你为什么','/music/莫文蔚/那么爱你为什么.mp3','/music/莫文蔚/那么爱你为什么.lrc','莫文蔚','04:24','/music/莫文蔚/那么爱你为什么.png',0),(236,'起了毛球','/music/莫文蔚/起了毛球.mp3','/music/莫文蔚/起了毛球.lrc','莫文蔚','03:39','/music/莫文蔚/default.png',0),(237,'盛夏的果实','/music/莫文蔚/盛夏的果实.mp3','/music/莫文蔚/盛夏的果实.lrc','莫文蔚','04:10','/music/莫文蔚/default.png',0),(238,'失恋万岁','/music/莫文蔚/失恋万岁.mp3','/music/莫文蔚/失恋万岁.lrc','莫文蔚','03:02','/music/莫文蔚/default.png',0),(239,'他不爱我','/music/莫文蔚/他不爱我.mp3','/music/莫文蔚/他不爱我.lrc','莫文蔚','03:59','/music/莫文蔚/default.png',0),(240,'未了情','/music/莫文蔚/未了情.mp3','/music/莫文蔚/未了情.lrc','莫文蔚','03:58','/music/莫文蔚/default.png',0),(241,'午夜前的十分钟','/music/莫文蔚/午夜前的十分钟.mp3','/music/莫文蔚/午夜前的十分钟.lrc','莫文蔚','05:09','/music/莫文蔚/default.png',0),(242,'一生所爱','/music/莫文蔚/一生所爱.mp3','/music/莫文蔚/一生所爱.lrc','莫文蔚','04:33','/music/莫文蔚/default.png',0),(243,'阴天','/music/莫文蔚/阴天.mp3','/music/莫文蔚/阴天.lrc','莫文蔚','04:02','/music/莫文蔚/阴天.png',0),(244,'遇见另一个自己','/music/莫文蔚/遇见另一个自己.mp3','/music/莫文蔚/遇见另一个自己.lrc','莫文蔚','05:13','/music/莫文蔚/default.png',0),(245,'真的吗','/music/莫文蔚/真的吗.mp3','/music/莫文蔚/真的吗.lrc','莫文蔚','05:21','/music/莫文蔚/default.png',0),(246,'new boy','/music/朴树/new boy.mp3','/music/朴树/new boy.lrc','朴树','03:44','/music/朴树/default.png',0),(247,'no fear in my heart','/music/朴树/no fear in my heart.mp3','/music/朴树/no fear in my heart.lrc','朴树','06:35','/music/朴树/no fear in my heart.png',0),(248,'白桦林','/music/朴树/白桦林.mp3','/music/朴树/白桦林.lrc','朴树','03:47','/music/朴树/default.png',0),(249,'好好地','/music/朴树/好好地.mp3','/music/朴树/好好地.lrc','朴树','04:18','/music/朴树/default.png',0),(250,'活着','/music/朴树/活着.mp3','/music/朴树/活着.lrc','朴树','04:08','/music/朴树/default.png',0),(251,'火车开往冬天','/music/朴树/火车开往冬天.mp3','/music/朴树/火车开往冬天.lrc','朴树','05:41','/music/朴树/default.png',0),(252,'旅途','/music/朴树/旅途.mp3','/music/朴树/旅途.lrc','朴树','04:28','/music/朴树/default.png',0),(253,'那些花儿','/music/朴树/那些花儿.mp3','/music/朴树/那些花儿.lrc','朴树','05:36','/music/朴树/default.png',0),(254,'生如夏花','/music/朴树/生如夏花.mp3','/music/朴树/生如夏花.lrc','朴树','04:54','/music/朴树/default.png',0),(255,'世界尽头','/music/朴树/世界尽头.mp3','/music/朴树/世界尽头.lrc','朴树','04:13','/music/朴树/default.png',0),(256,'我去2000年','/music/朴树/我去2000年.mp3','/music/朴树/我去2000年.lrc','朴树','05:24','/music/朴树/default.png',0),(257,'在希望的田野上','/music/朴树/在希望的田野上.mp3','/music/朴树/在希望的田野上.lrc','朴树','03:22','/music/朴树/default.png',0),(258,'召唤','/music/朴树/召唤.mp3','/music/朴树/召唤.lrc','朴树','05:33','/music/朴树/default.png',0),(259,'爱 都是对的','/music/胡夏/爱 都是对的.mp3','/music/胡夏/爱 都是对的.lrc','胡夏','04:20','/music/胡夏/default.png',0),(260,'爱夏','/music/胡夏/爱夏.mp3','/music/胡夏/爱夏.lrc','胡夏','04:31','/music/胡夏/爱夏.png',0),(261,'沉淀','/music/胡夏/沉淀.mp3','/music/胡夏/沉淀.lrc','胡夏','04:28','/music/胡夏/default.png',0),(262,'当你听我说','/music/胡夏/当你听我说.mp3','/music/胡夏/当你听我说.lrc','胡夏','04:42','/music/胡夏/default.png',0),(263,'勉强','/music/胡夏/勉强.mp3','/music/胡夏/勉强.lrc','胡夏','04:45','/music/胡夏/default.png',0),(264,'那些年','/music/胡夏/那些年.mp3','/music/胡夏/那些年.lrc','胡夏','06:09','/music/胡夏/那些年.png',0),(265,'逆向','/music/胡夏/逆向.mp3','/music/胡夏/逆向.lrc','胡夏','04:22','/music/胡夏/default.png',0),(266,'念','/music/胡夏/念.mp3','/music/胡夏/念.lrc','胡夏','04:55','/music/胡夏/default.png',0),(267,'青春遗言','/music/胡夏/青春遗言.mp3','/music/胡夏/青春遗言.lrc','胡夏','04:15','/music/胡夏/青春遗言.png',0),(268,'燃点','/music/胡夏/燃点.mp3','/music/胡夏/燃点.lrc','胡夏','03:47','/music/胡夏/default.png',0),(269,'让我爱你','/music/胡夏/让我爱你.mp3','/music/胡夏/让我爱你.lrc','胡夏','03:53','/music/胡夏/default.png',0),(270,'伤心童话','/music/胡夏/伤心童话.mp3','/music/胡夏/伤心童话.lrc','胡夏','04:32','/music/胡夏/default.png',0),(271,'十万灰尘','/music/胡夏/十万灰尘.mp3','/music/胡夏/十万灰尘.lrc','胡夏','04:05','/music/胡夏/十万灰尘.png',0),(272,'是我先开口','/music/胡夏/是我先开口.mp3','/music/胡夏/是我先开口.lrc','胡夏','04:25','/music/胡夏/default.png',0),(273,'双栖动物','/music/胡夏/双栖动物.mp3','/music/胡夏/双栖动物.lrc','胡夏','04:55','/music/胡夏/双栖动物.png',0),(274,'同类','/music/胡夏/同类.mp3','/music/胡夏/同类.lrc','胡夏','03:46','/music/胡夏/default.png',0),(275,'偕老','/music/胡夏/偕老.mp3','/music/胡夏/偕老.lrc','胡夏','04:34','/music/胡夏/default.png',0),(276,'羞答答的玫瑰静悄悄地开','/music/胡夏/羞答答的玫瑰静悄悄地开.mp3','/music/胡夏/羞答答的玫瑰静悄悄地开.lrc','胡夏','03:33','/music/胡夏/default.png',0),(277,'阅读爱情','/music/胡夏/阅读爱情.mp3','/music/胡夏/阅读爱情.lrc','胡夏','04:50','/music/胡夏/阅读爱情.png',0),(278,'知道不知道','/music/胡夏/知道不知道.mp3','/music/胡夏/知道不知道.lrc','胡夏','03:45','/music/胡夏/知道不知道.png',0),(279,'凹凸世界','/music/双笙/凹凸世界.mp3','/music/双笙/凹凸世界.lrc','双笙','02:01','/music/双笙/default.png',0),(280,'采茶纪','/music/双笙/采茶纪.mp3','/music/双笙/采茶纪.lrc','双笙','03:26','/music/双笙/default.png',0),(281,'都市惊奇夜-《中国惊奇先生》手游主题曲','/music/双笙/都市惊奇夜-《中国惊奇先生》手游主题曲.mp3','/music/双笙/都市惊奇夜-《中国惊奇先生》手游主题曲.lrc','双笙','03:23','/music/双笙/default.png',0),(282,'孤竹遗梦','/music/双笙/孤竹遗梦.mp3','/music/双笙/孤竹遗梦.lrc','双笙','03:40','/music/双笙/default.png',0),(283,'寒衫浮梦-修正版','/music/双笙/寒衫浮梦-修正版.mp3','/music/双笙/寒衫浮梦-修正版.lrc','双笙','04:09','/music/双笙/default.png',0),(284,'镜花水月','/music/双笙/镜花水月.mp3','/music/双笙/镜花水月.lrc','双笙','03:19','/music/双笙/default.png',0),(285,'离歌','/music/双笙/离歌.mp3','/music/双笙/离歌.lrc','双笙','04:10','/music/双笙/default.png',0),(286,'灵秀','/music/双笙/灵秀.mp3','/music/双笙/灵秀.lrc','双笙','04:39','/music/双笙/default.png',0),(287,'栖枝','/music/双笙/栖枝.mp3','/music/双笙/栖枝.lrc','双笙','04:13','/music/双笙/default.png',0),(288,'上里与手抄卷','/music/双笙/上里与手抄卷.mp3','/music/双笙/上里与手抄卷.lrc','双笙','05:19','/music/双笙/上里与手抄卷.png',0),(289,'上里与手抄卷(伴奏)','/music/双笙/上里与手抄卷(伴奏).mp3','/music/双笙/上里与手抄卷(伴奏).lrc','双笙','05:19','/music/双笙/上里与手抄卷(伴奏).png',0),(290,'王与异界骑士【中文 op】','/music/双笙/王与异界骑士【中文 op】.mp3','/music/双笙/王与异界骑士【中文 op】.lrc','双笙','03:20','/music/双笙/default.png',0),(291,'谓风','/music/双笙/谓风.mp3','/music/双笙/谓风.lrc','双笙','04:24','/music/双笙/default.png',0),(292,'问剑江湖','/music/双笙/问剑江湖.mp3','/music/双笙/问剑江湖.lrc','双笙','03:30','/music/双笙/default.png',0),(293,'行香子','/music/双笙/行香子.mp3','/music/双笙/行香子.lrc','双笙','02:53','/music/双笙/default.png',0),(294,'杏林无花【剑网三七周年原创】','/music/双笙/杏林无花【剑网三七周年原创】.mp3','/music/双笙/杏林无花【剑网三七周年原创】.lrc','双笙','03:56','/music/双笙/default.png',0),(295,'轩辕剑赋','/music/双笙/轩辕剑赋.mp3','/music/双笙/轩辕剑赋.lrc','双笙','05:28','/music/双笙/default.png',0),(296,'月出','/music/双笙/月出.mp3','/music/双笙/月出.lrc','双笙','03:59','/music/双笙/default.png',0),(297,'葬花吟','/music/双笙/葬花吟.mp3','/music/双笙/葬花吟.lrc','双笙','04:49','/music/双笙/default.png',0),(298,'竹枝词','/music/双笙/竹枝词.mp3','/music/双笙/竹枝词.lrc','双笙','03:21','/music/双笙/default.png',0),(299,'蝉想','/music/苏打绿/蝉想.mp3','/music/苏打绿/蝉想.lrc','苏打绿','04:44','/music/苏打绿/default.png',0),(300,'当我们一起走过','/music/苏打绿/当我们一起走过.mp3','/music/苏打绿/当我们一起走过.lrc','苏打绿','04:44','/music/苏打绿/default.png',0),(301,'飞鱼','/music/苏打绿/飞鱼.mp3','/music/苏打绿/飞鱼.lrc','苏打绿','05:12','/music/苏打绿/default.png',0),(302,'可爱的玫瑰花','/music/苏打绿/可爱的玫瑰花.mp3','/music/苏打绿/可爱的玫瑰花.lrc','苏打绿','03:16','/music/苏打绿/default.png',0),(303,'控制狂','/music/苏打绿/控制狂.mp3','/music/苏打绿/控制狂.lrc','苏打绿','04:12','/music/苏打绿/default.png',0),(304,'蓝眼睛','/music/苏打绿/蓝眼睛.mp3','/music/苏打绿/蓝眼睛.lrc','苏打绿','04:28','/music/苏打绿/default.png',0),(305,'浪漫派','/music/苏打绿/浪漫派.mp3','/music/苏打绿/浪漫派.lrc','苏打绿','03:24','/music/苏打绿/default.png',0),(306,'你被写在我的歌里','/music/苏打绿/你被写在我的歌里.mp3','/music/苏打绿/你被写在我的歌里.lrc','苏打绿','04:32','/music/苏打绿/default.png',0),(307,'你在烦恼什么','/music/苏打绿/你在烦恼什么.mp3','/music/苏打绿/你在烦恼什么.lrc','苏打绿','04:35','/music/苏打绿/default.png',0),(308,'牵阮的手','/music/苏打绿/牵阮的手.mp3','/music/苏打绿/牵阮的手.lrc','苏打绿','03:53','/music/苏打绿/default.png',0),(309,'十年一刻','/music/苏打绿/十年一刻.mp3','/music/苏打绿/十年一刻.lrc','苏打绿','04:14','/music/苏打绿/default.png',0),(310,'他夏了夏天','/music/苏打绿/他夏了夏天.mp3','/music/苏打绿/他夏了夏天.lrc','苏打绿','04:58','/music/苏打绿/default.png',0),(311,'我赖你','/music/苏打绿/我赖你.mp3','/music/苏打绿/我赖你.lrc','苏打绿','04:18','/music/苏打绿/我赖你.png',0),(312,'我赖你 (老林fakejazzremix)','/music/苏打绿/我赖你 (老林fakejazzremix).mp3','/music/苏打绿/我赖你 (老林fakejazzremix).lrc','苏打绿','04:14','/music/苏打绿/default.png',0),(313,'我赖你 (徐千秀紧急很硬remix)','/music/苏打绿/我赖你 (徐千秀紧急很硬remix).mp3','/music/苏打绿/我赖你 (徐千秀紧急很硬remix).lrc','苏打绿','04:09','/music/苏打绿/default.png',0),(314,'喜欢寂寞','/music/苏打绿/喜欢寂寞.mp3','/music/苏打绿/喜欢寂寞.lrc','苏打绿','04:24','/music/苏打绿/default.png',0),(315,'小情歌','/music/苏打绿/小情歌.mp3','/music/苏打绿/小情歌.lrc','苏打绿','04:37','/music/苏打绿/default.png',0),(316,'笑闹人间','/music/苏打绿/笑闹人间.mp3','/music/苏打绿/笑闹人间.lrc','苏打绿','03:19','/music/苏打绿/default.png',0),(317,'燕窝','/music/苏打绿/燕窝.mp3','/music/苏打绿/燕窝.lrc','苏打绿','04:59','/music/苏打绿/燕窝.png',0),(318,'追追追','/music/苏打绿/追追追.mp3','/music/苏打绿/追追追.lrc','苏打绿','05:41','/music/苏打绿/default.png',0),(319,'彩虹金刚','/music/孙燕姿/彩虹金刚.mp3','/music/孙燕姿/彩虹金刚.lrc','孙燕姿','04:00','/music/孙燕姿/彩虹金刚.png',0),(320,'当冬夜渐暖','/music/孙燕姿/当冬夜渐暖.mp3','/music/孙燕姿/当冬夜渐暖.lrc','孙燕姿','04:48','/music/孙燕姿/default.png',0),(321,'感动每一刻','/music/孙燕姿/感动每一刻.mp3','/music/孙燕姿/感动每一刻.lrc','孙燕姿','04:35','/music/孙燕姿/感动每一刻.png',0),(322,'开始懂了','/music/孙燕姿/开始懂了.mp3','/music/孙燕姿/开始懂了.lrc','孙燕姿','02:36','/music/孙燕姿/default.png',0),(323,'渴','/music/孙燕姿/渴.mp3','/music/孙燕姿/渴.lrc','孙燕姿','04:42','/music/孙燕姿/default.png',0),(324,'克卜勒','/music/孙燕姿/克卜勒.mp3','/music/孙燕姿/克卜勒.lrc','孙燕姿','04:10','/music/孙燕姿/default.png',0),(325,'快疯了','/music/孙燕姿/快疯了.mp3','/music/孙燕姿/快疯了.lrc','孙燕姿','03:36','/music/孙燕姿/default.png',0),(326,'任性','/music/孙燕姿/任性.mp3','/music/孙燕姿/任性.lrc','孙燕姿','03:46','/music/孙燕姿/default.png',0),(327,'尚好的青春','/music/孙燕姿/尚好的青春.mp3','/music/孙燕姿/尚好的青春.lrc','孙燕姿','04:25','/music/孙燕姿/default.png',0),(328,'时光小偷','/music/孙燕姿/时光小偷.mp3','/music/孙燕姿/时光小偷.lrc','孙燕姿','04:52','/music/孙燕姿/default.png',0),(329,'是时候','/music/孙燕姿/是时候.mp3','/music/孙燕姿/是时候.lrc','孙燕姿','09:27','/music/孙燕姿/是时候.png',0),(330,'天黑黑','/music/孙燕姿/天黑黑.mp3','/music/孙燕姿/天黑黑.lrc','孙燕姿','03:25','/music/孙燕姿/default.png',0),(331,'王子面','/music/孙燕姿/王子面.mp3','/music/孙燕姿/王子面.lrc','孙燕姿','04:37','/music/孙燕姿/王子面.png',0),(332,'围绕','/music/孙燕姿/围绕.mp3','/music/孙燕姿/围绕.lrc','孙燕姿','03:17','/music/孙燕姿/default.png',0),(333,'无限大','/music/孙燕姿/无限大.mp3','/music/孙燕姿/无限大.lrc','孙燕姿','04:12','/music/孙燕姿/default.png',0),(334,'愚人的国度','/music/孙燕姿/愚人的国度.mp3','/music/孙燕姿/愚人的国度.lrc','孙燕姿','04:08','/music/孙燕姿/default.png',0),(335,'遇见','/music/孙燕姿/遇见.mp3','/music/孙燕姿/遇见.lrc','孙燕姿','01:40','/music/孙燕姿/default.png',0),(336,'不再爱你','/music/动力火车/不再爱你.mp3','/music/动力火车/不再爱你.lrc','动力火车','03:46','/music/动力火车/不再爱你.png',0),(337,'当','/music/动力火车/当.mp3','/music/动力火车/当.lrc','动力火车','04:50','/music/动力火车/default.png',0),(338,'跟自己合唱','/music/动力火车/跟自己合唱.mp3','/music/动力火车/跟自己合唱.lrc','动力火车','04:10','/music/动力火车/default.png',0),(339,'痛','/music/动力火车/痛.mp3','/music/动力火车/痛.lrc','动力火车','04:54','/music/动力火车/default.png',0),(340,'有本事','/music/动力火车/有本事.mp3','/music/动力火车/有本事.lrc','动力火车','03:22','/music/动力火车/有本事.png',0),(341,'π之歌','/music/汪苏泷/π之歌.mp3','/music/汪苏泷/π之歌.lrc','汪苏泷','03:15','/music/汪苏泷/π之歌.png',0),(342,'吃土','/music/汪苏泷/吃土.mp3','/music/汪苏泷/吃土.lrc','汪苏泷','03:19','/music/汪苏泷/吃土.png',0),(343,'得不到的温柔','/music/汪苏泷/得不到的温柔.mp3','/music/汪苏泷/得不到的温柔.lrc','汪苏泷','03:47','/music/汪苏泷/default.png',0),(344,'火星实验室','/music/汪苏泷/火星实验室.mp3','/music/汪苏泷/火星实验室.lrc','汪苏泷','03:33','/music/汪苏泷/火星实验室.png',0),(345,'浪漫曲','/music/汪苏泷/浪漫曲.mp3','/music/汪苏泷/浪漫曲.lrc','汪苏泷','03:35','/music/汪苏泷/default.png',0),(346,'灵主不悔《画江湖之灵主》手游暨动漫主题曲','/music/汪苏泷/灵主不悔《画江湖之灵主》手游暨动漫主题曲.mp3','/music/汪苏泷/灵主不悔《画江湖之灵主》手游暨动漫主题曲.lrc','汪苏泷','03:41','/music/汪苏泷/灵主不悔《画江湖之灵主》手游暨动漫主题曲.png',0),(347,'年轮','/music/汪苏泷/年轮.mp3','/music/汪苏泷/年轮.lrc','汪苏泷','04:05','/music/汪苏泷/年轮.png',0),(348,'晴 (piano ver)','/music/汪苏泷/晴 (piano ver).mp3','/music/汪苏泷/晴 (piano ver).lrc','汪苏泷','04:11','/music/汪苏泷/default.png',0),(349,'如果时光倒流(电视剧《最佳前男友》片尾曲)','/music/汪苏泷/如果时光倒流(电视剧《最佳前男友》片尾曲).mp3','/music/汪苏泷/如果时光倒流(电视剧《最佳前男友》片尾曲).lrc','汪苏泷','04:03','/music/汪苏泷/default.png',0),(350,'小流星','/music/汪苏泷/小流星.mp3','/music/汪苏泷/小流星.lrc','汪苏泷','04:13','/music/汪苏泷/小流星.png',0),(351,'携手同行','/music/汪苏泷/携手同行.mp3','/music/汪苏泷/携手同行.lrc','汪苏泷','03:01','/music/汪苏泷/携手同行.png',0),(352,'写给妹妹的歌(电影《快把我哥带走》主题曲)','/music/汪苏泷/写给妹妹的歌(电影《快把我哥带走》主题曲).mp3','/music/汪苏泷/写给妹妹的歌(电影《快把我哥带走》主题曲).lrc','汪苏泷','03:16','/music/汪苏泷/写给妹妹的歌(电影《快把我哥带走》主题曲).png',0),(353,'心跳','/music/汪苏泷/心跳.mp3','/music/汪苏泷/心跳.lrc','汪苏泷','04:01','/music/汪苏泷/心跳.png',0),(354,'选我选我','/music/汪苏泷/选我选我.mp3','/music/汪苏泷/选我选我.lrc','汪苏泷','03:27','/music/汪苏泷/选我选我.png',0),(355,'银河','/music/汪苏泷/银河.mp3','/music/汪苏泷/银河.lrc','汪苏泷','05:00','/music/汪苏泷/default.png',0),(356,'传世乐章(英雄联盟六周年推广曲)','/music/汪苏泷/传世乐章(英雄联盟六周年推广曲).mp3','/music/汪苏泷/传世乐章(英雄联盟六周年推广曲).lrc','汪苏泷','05:01','/music/汪苏泷/传世乐章(英雄联盟六周年推广曲).png',0),(357,'miss you night and day','/music/王菲/miss you night and day.mp3','/music/王菲/miss you night and day.lrc','王菲','05:34','/music/王菲/default.png',0),(358,'yu garden','/music/王菲/yu garden.mp3','/music/王菲/yu garden.lrc','王菲','03:58','/music/王菲/default.png',0),(359,'爱与痛的边缘','/music/王菲/爱与痛的边缘.mp3','/music/王菲/爱与痛的边缘.lrc','王菲','04:31','/music/王菲/default.png',0),(360,'尘埃','/music/王菲/尘埃.mp3','/music/王菲/尘埃.lrc','王菲','05:01','/music/王菲/default.png',0),(361,'匆匆那年','/music/王菲/匆匆那年.mp3','/music/王菲/匆匆那年.lrc','王菲','04:01','/music/王菲/匆匆那年.png',0),(362,'催眠','/music/王菲/催眠.mp3','/music/王菲/催眠.lrc','王菲','04:28','/music/王菲/default.png',0),(363,'但愿人长久','/music/王菲/但愿人长久.mp3','/music/王菲/但愿人长久.lrc','王菲','04:22','/music/王菲/但愿人长久.png',0),(364,'近了远了','/music/王菲/近了远了.mp3','/music/王菲/近了远了.lrc','王菲','03:54','/music/王菲/default.png',0),(365,'你在终点等我','/music/王菲/你在终点等我.mp3','/music/王菲/你在终点等我.lrc','王菲','04:45','/music/王菲/default.png',0),(366,'棋子','/music/王菲/棋子.mp3','/music/王菲/棋子.lrc','王菲','04:49','/music/王菲/default.png',0),(367,'清平调','/music/王菲/清平调.mp3','/music/王菲/清平调.lrc','王菲','04:34','/music/王菲/清平调.png',0),(368,'容易受伤的女人','/music/王菲/容易受伤的女人.mp3','/music/王菲/容易受伤的女人.lrc','王菲','04:19','/music/王菲/default.png',0),(369,'天空','/music/王菲/天空.mp3','/music/王菲/天空.lrc','王菲','03:42','/music/王菲/default.png',0),(370,'我爱你','/music/王菲/我爱你.mp3','/music/王菲/我爱你.lrc','王菲','05:10','/music/王菲/default.png',0),(371,'我愿意','/music/王菲/我愿意.mp3','/music/王菲/我愿意.lrc','王菲','04:33','/music/王菲/default.png',0),(372,'无问西东','/music/王菲/无问西东.mp3','/music/王菲/无问西东.lrc','王菲','04:49','/music/王菲/无问西东.png',0),(373,'心经','/music/王菲/心经.mp3','/music/王菲/心经.lrc','王菲','06:16','/music/王菲/default.png',0),(374,'因为爱情','/music/王菲/因为爱情.mp3','/music/王菲/因为爱情.lrc','王菲','03:36','/music/王菲/因为爱情.png',0),(375,'又见炊烟','/music/王菲/又见炊烟.mp3','/music/王菲/又见炊烟.lrc','王菲','03:43','/music/王菲/default.png',0),(376,'约定','/music/王菲/约定.mp3','/music/王菲/约定.lrc','王菲','04:27','/music/王菲/default.png',0),(377,'flow','/music/王力宏/flow.mp3','/music/王力宏/flow.lrc','王力宏','03:51','/music/王力宏/default.png',0),(378,'爱的就是你','/music/王力宏/爱的就是你.mp3','/music/王力宏/爱的就是你.lrc','王力宏','04:54','/music/王力宏/爱的就是你.png',0),(379,'爱因为在心中','/music/王力宏/爱因为在心中.mp3','/music/王力宏/爱因为在心中.lrc','王力宏','04:24','/music/王力宏/default.png',0),(380,'柴米油盐酱醋茶','/music/王力宏/柴米油盐酱醋茶.mp3','/music/王力宏/柴米油盐酱醋茶.lrc','王力宏','03:53','/music/王力宏/default.png',0),(381,'春雨里洗过的太阳','/music/王力宏/春雨里洗过的太阳.mp3','/music/王力宏/春雨里洗过的太阳.lrc','王力宏','04:51','/music/王力宏/春雨里洗过的太阳.png',0),(382,'大城小爱','/music/王力宏/大城小爱.mp3','/music/王力宏/大城小爱.lrc','王力宏','03:45','/music/王力宏/default.png',0),(383,'大城小爱+美+改变自己','/music/王力宏/大城小爱+美+改变自己.mp3','/music/王力宏/大城小爱+美+改变自己.lrc','王力宏','11:32','/music/王力宏/default.png',0),(384,'改变自己','/music/王力宏/改变自己.mp3','/music/王力宏/改变自己.lrc','王力宏','03:16','/music/王力宏/改变自己.png',0),(385,'好心分手','/music/王力宏/好心分手.mp3','/music/王力宏/好心分手.lrc','王力宏','03:01','/music/王力宏/default.png',0),(386,'花田错','/music/王力宏/花田错.mp3','/music/王力宏/花田错.lrc','王力宏','03:47','/music/王力宏/default.png',0),(387,'火力全开','/music/王力宏/火力全开.mp3','/music/王力宏/火力全开.lrc','王力宏','04:28','/music/王力宏/火力全开.png',0),(388,'龙的传人','/music/王力宏/龙的传人.mp3','/music/王力宏/龙的传人.lrc','王力宏','04:41','/music/王力宏/default.png',0),(389,'美','/music/王力宏/美.mp3','/music/王力宏/美.lrc','王力宏','03:27','/music/王力宏/default.png',0),(390,'你不知道的事','/music/王力宏/你不知道的事.mp3','/music/王力宏/你不知道的事.lrc','王力宏','04:37','/music/王力宏/default.png',0),(391,'你是我心内的一首歌','/music/王力宏/你是我心内的一首歌.mp3','/music/王力宏/你是我心内的一首歌.lrc','王力宏','02:46','/music/王力宏/default.png',0),(392,'我们的歌','/music/王力宏/我们的歌.mp3','/music/王力宏/我们的歌.lrc','王力宏','04:07','/music/王力宏/default.png',0),(393,'心中的日月','/music/王力宏/心中的日月.mp3','/music/王力宏/心中的日月.lrc','王力宏','03:57','/music/王力宏/default.png',0),(394,'需要人陪','/music/王力宏/需要人陪.mp3','/music/王力宏/需要人陪.lrc','王力宏','04:13','/music/王力宏/default.png',0),(395,'依然爱你','/music/王力宏/依然爱你.mp3','/music/王力宏/依然爱你.lrc','王力宏','04:06','/music/王力宏/default.png',0),(396,'爱情万岁','/music/五月天/爱情万岁.mp3','/music/五月天/爱情万岁.lrc','五月天','06:02','/music/王力宏/default.png',0),(397,'别惹我','/music/五月天/别惹我.mp3','/music/五月天/别惹我.lrc','五月天','03:06','/music/王力宏/default.png',0),(398,'而我知道','/music/五月天/而我知道.mp3','/music/五月天/而我知道.lrc','五月天','04:11','/music/王力宏/default.png',0),(399,'疯狂世界','/music/五月天/疯狂世界.mp3','/music/五月天/疯狂世界.lrc','五月天','03:33','/music/王力宏/default.png',0),(400,'后来的我们(电影《后来的我们》片名曲)','/music/五月天/后来的我们(电影《后来的我们》片名曲).mp3','/music/五月天/后来的我们(电影《后来的我们》片名曲).lrc','五月天','04:45','/music/五月天/后来的我们(电影《后来的我们》片名曲).png',0),(401,'九号球','/music/五月天/九号球.mp3','/music/五月天/九号球.lrc','五月天','04:37','/music/五月天/default.png',0),(402,'倔强','/music/五月天/倔强.mp3','/music/五月天/倔强.lrc','五月天','04:44','/music/五月天/default.png',0),(403,'恋爱ing','/music/五月天/恋爱ing.mp3','/music/五月天/恋爱ing.lrc','五月天','02:49','/music/五月天/default.png',0),(404,'明白','/music/五月天/明白.mp3','/music/五月天/明白.lrc','五月天','04:40','/music/五月天/default.png',0),(405,'让我照顾你','/music/五月天/让我照顾你.mp3','/music/五月天/让我照顾你.lrc','五月天','03:59','/music/五月天/default.png',0),(406,'时光机','/music/五月天/时光机.mp3','/music/五月天/时光机.lrc','五月天','03:40','/music/五月天/时光机.png',0),(407,'听不到','/music/五月天/听不到.mp3','/music/五月天/听不到.lrc','五月天','04:59','/music/五月天/default.png',0),(408,'王子面','/music/五月天/王子面.mp3','/music/五月天/王子面.lrc','五月天','04:14','/music/五月天/default.png',0),(409,'温柔','/music/五月天/温柔.mp3','/music/五月天/温柔.lrc','五月天','04:29','/music/五月天/default.png',0),(410,'咸鱼','/music/五月天/咸鱼.mp3','/music/五月天/咸鱼.lrc','五月天','04:09','/music/五月天/default.png',0),(411,'拥抱','/music/五月天/拥抱.mp3','/music/五月天/拥抱.lrc','五月天','04:14','/music/五月天/default.png',0),(412,'知足','/music/五月天/知足.mp3','/music/五月天/知足.lrc','五月天','04:16','/music/五月天/知足.png',0),(413,'志明与春娇','/music/五月天/志明与春娇.mp3','/music/五月天/志明与春娇.lrc','五月天','04:41','/music/五月天/志明与春娇.png',0),(414,'终结孤单','/music/五月天/终结孤单.mp3','/music/五月天/终结孤单.lrc','五月天','03:09','/music/五月天/default.png',0),(415,'半城烟沙','/music/许嵩/半城烟沙.mp3','/music/许嵩/半城烟沙.lrc','许嵩','04:52','/music/许嵩/default.png',0),(416,'大千世界','/music/许嵩/大千世界.mp3','/music/许嵩/大千世界.lrc','许嵩','04:15','/music/许嵩/default.png',0),(417,'多余的解释','/music/许嵩/多余的解释.mp3','/music/许嵩/多余的解释.lrc','许嵩','04:37','/music/许嵩/default.png',0),(418,'灰色头像','/music/许嵩/灰色头像.mp3','/music/许嵩/灰色头像.lrc','许嵩','04:50','/music/许嵩/default.png',0),(419,'江湖','/music/许嵩/江湖.mp3','/music/许嵩/江湖.lrc','许嵩','04:28','/music/许嵩/default.png',0),(420,'惊鸿一面','/music/许嵩/惊鸿一面.mp3','/music/许嵩/惊鸿一面.lrc','许嵩','04:16','/music/许嵩/default.png',0),(421,'老古董','/music/许嵩/老古董.mp3','/music/许嵩/老古董.lrc','许嵩','04:04','/music/许嵩/default.png',0),(422,'庐州月','/music/许嵩/庐州月.mp3','/music/许嵩/庐州月.lrc','许嵩','04:15','/music/许嵩/default.png',0),(423,'明智之举','/music/许嵩/明智之举.mp3','/music/许嵩/明智之举.lrc','许嵩','04:27','/music/许嵩/default.png',0),(424,'千百度','/music/许嵩/千百度.mp3','/music/许嵩/千百度.lrc','许嵩','03:46','/music/许嵩/default.png',0),(425,'认错','/music/许嵩/认错.mp3','/music/许嵩/认错.lrc','许嵩','04:35','/music/许嵩/default.png',0),(426,'如果当时','/music/许嵩/如果当时.mp3','/music/许嵩/如果当时.lrc','许嵩','05:16','/music/许嵩/default.png',0),(427,'如约而至','/music/许嵩/如约而至.mp3','/music/许嵩/如约而至.lrc','许嵩','04:15','/music/许嵩/default.png',0),(428,'深夜书店','/music/许嵩/深夜书店.mp3','/music/许嵩/深夜书店.lrc','许嵩','04:20','/music/许嵩/深夜书店.png',0),(429,'叹服','/music/许嵩/叹服.mp3','/music/许嵩/叹服.lrc','许嵩','04:21','/music/许嵩/default.png',0),(430,'天龙八部之宿敌','/music/许嵩/天龙八部之宿敌.mp3','/music/许嵩/天龙八部之宿敌.lrc','许嵩','04:23','/music/许嵩/default.png',0),(431,'微博控','/music/许嵩/微博控.mp3','/music/许嵩/微博控.lrc','许嵩','03:40','/music/许嵩/default.png',0),(432,'想象之中','/music/许嵩/想象之中.mp3','/music/许嵩/想象之中.lrc','许嵩','04:06','/music/许嵩/default.png',0),(433,'星座书上','/music/许嵩/星座书上.mp3','/music/许嵩/星座书上.lrc','许嵩','03:59','/music/许嵩/default.png',0),(434,'燕归巢','/music/许嵩/燕归巢.mp3','/music/许嵩/燕归巢.lrc','许嵩','04:54','/music/许嵩/燕归巢.png',0),(435,'暧昧','/music/薛之谦/暧昧.mp3','/music/薛之谦/暧昧.lrc','薛之谦','05:12','/music/薛之谦/default.png',0),(436,'丑八怪','/music/薛之谦/丑八怪.mp3','/music/薛之谦/丑八怪.lrc','薛之谦','04:13','/music/薛之谦/default.png',0),(437,'动物世界','/music/薛之谦/动物世界.mp3','/music/薛之谦/动物世界.lrc','薛之谦','03:50','/music/薛之谦/default.png',0),(438,'方圆几里','/music/薛之谦/方圆几里.mp3','/music/薛之谦/方圆几里.lrc','薛之谦','04:23','/music/薛之谦/default.png',0),(439,'刚刚好','/music/薛之谦/刚刚好.mp3','/music/薛之谦/刚刚好.lrc','薛之谦','04:10','/music/薛之谦/default.png',0),(440,'怪咖','/music/薛之谦/怪咖.mp3','/music/薛之谦/怪咖.lrc','薛之谦','04:10','/music/薛之谦/怪咖.png',0),(441,'狐狸(电影《二代妖精之今生有幸》推广曲)','/music/薛之谦/狐狸(电影《二代妖精之今生有幸》推广曲).mp3','/music/薛之谦/狐狸(电影《二代妖精之今生有幸》推广曲).lrc','薛之谦','03:54','/music/薛之谦/狐狸(电影《二代妖精之今生有幸》推广曲).png',0),(442,'来日方长','/music/薛之谦/来日方长.mp3','/music/薛之谦/来日方长.lrc','薛之谦','03:54','/music/薛之谦/来日方长.png',0),(443,'摩天大楼','/music/薛之谦/摩天大楼.mp3','/music/薛之谦/摩天大楼.lrc','薛之谦','03:50','/music/薛之谦/摩天大楼.png',0),(444,'那是你离开了北京的生活','/music/薛之谦/那是你离开了北京的生活.mp3','/music/薛之谦/那是你离开了北京的生活.lrc','薛之谦','04:28','/music/薛之谦/default.png',0),(445,'你还要我怎样','/music/薛之谦/你还要我怎样.mp3','/music/薛之谦/你还要我怎样.lrc','薛之谦','05:10','/music/薛之谦/default.png',0),(446,'绅士','/music/薛之谦/绅士.mp3','/music/薛之谦/绅士.lrc','薛之谦','04:51','/music/薛之谦/default.png',0),(447,'肆无忌惮','/music/薛之谦/肆无忌惮.mp3','/music/薛之谦/肆无忌惮.lrc','薛之谦','04:19','/music/薛之谦/default.png',0),(448,'我好像在哪见过你','/music/薛之谦/我好像在哪见过你.mp3','/music/薛之谦/我好像在哪见过你.lrc','薛之谦','04:39','/music/薛之谦/default.png',0),(449,'像风一样','/music/薛之谦/像风一样.mp3','/music/薛之谦/像风一样.lrc','薛之谦','04:15','/music/薛之谦/default.png',0),(450,'哑巴','/music/薛之谦/哑巴.mp3','/music/薛之谦/哑巴.lrc','薛之谦','04:21','/music/薛之谦/哑巴.png',0),(451,'演员','/music/薛之谦/演员.mp3','/music/薛之谦/演员.lrc','薛之谦','04:21','/music/薛之谦/default.png',0),(452,'意外','/music/薛之谦/意外.mp3','/music/薛之谦/意外.lrc','薛之谦','04:51','/music/薛之谦/default.png',0),(453,'重返十七岁','/music/薛之谦/重返十七岁.mp3','/music/薛之谦/重返十七岁.lrc','薛之谦','04:05','/music/薛之谦/default.png',0),(454,'最好','/music/薛之谦/最好.mp3','/music/薛之谦/最好.lrc','薛之谦','04:15','/music/薛之谦/default.png',0),(455,'true colors','/music/杨宗纬/true colors.mp3','/music/杨宗纬/true colors.lrc','杨宗纬','04:10','/music/杨宗纬/default.png',0),(456,'初爱','/music/杨宗纬/初爱.mp3','/music/杨宗纬/初爱.lrc','杨宗纬','03:53','/music/杨宗纬/初爱.png',0),(457,'底细','/music/杨宗纬/底细.mp3','/music/杨宗纬/底细.lrc','杨宗纬','04:27','/music/杨宗纬/default.png',0),(458,'浮生千山路','/music/杨宗纬/浮生千山路.mp3','/music/杨宗纬/浮生千山路.lrc','杨宗纬','05:20','/music/杨宗纬/default.png',0),(459,'横扫天下之笑天下','/music/杨宗纬/横扫天下之笑天下.mp3','/music/杨宗纬/横扫天下之笑天下.lrc','杨宗纬','05:07','/music/杨宗纬/横扫天下之笑天下.png',0),(460,'凉凉','/music/杨宗纬/凉凉.mp3','/music/杨宗纬/凉凉.lrc','杨宗纬','05:33','/music/杨宗纬/凉凉.png',0),(461,'那个男人','/music/杨宗纬/那个男人.mp3','/music/杨宗纬/那个男人.lrc','杨宗纬','04:32','/music/杨宗纬/default.png',0),(462,'其实都没有','/music/杨宗纬/其实都没有.mp3','/music/杨宗纬/其实都没有.lrc','杨宗纬','03:51','/music/杨宗纬/default.png',0),(463,'生命被你照亮','/music/杨宗纬/生命被你照亮.mp3','/music/杨宗纬/生命被你照亮.lrc','杨宗纬','04:36','/music/杨宗纬/生命被你照亮.png',0),(464,'十二楼','/music/杨宗纬/十二楼.mp3','/music/杨宗纬/十二楼.lrc','杨宗纬','04:40','/music/杨宗纬/default.png',0),(465,'忘了我','/music/杨宗纬/忘了我.mp3','/music/杨宗纬/忘了我.lrc','杨宗纬','04:31','/music/杨宗纬/default.png',0),(466,'为了遇见你','/music/杨宗纬/为了遇见你.mp3','/music/杨宗纬/为了遇见你.lrc','杨宗纬','04:01','/music/杨宗纬/default.png',0),(467,'我变了 我没变','/music/杨宗纬/我变了 我没变.mp3','/music/杨宗纬/我变了 我没变.lrc','杨宗纬','03:54','/music/杨宗纬/我变了 我没变.png',0),(468,'我的太阳','/music/杨宗纬/我的太阳.mp3','/music/杨宗纬/我的太阳.lrc','杨宗纬','04:27','/music/杨宗纬/default.png',0),(469,'喜欢你现在的样子','/music/杨宗纬/喜欢你现在的样子.mp3','/music/杨宗纬/喜欢你现在的样子.lrc','杨宗纬','04:48','/music/杨宗纬/default.png',0),(470,'想对你说','/music/杨宗纬/想对你说.mp3','/music/杨宗纬/想对你说.lrc','杨宗纬','04:09','/music/杨宗纬/default.png',0),(471,'月光妈妈','/music/杨宗纬/月光妈妈.mp3','/music/杨宗纬/月光妈妈.lrc','杨宗纬','03:48','/music/杨宗纬/default.png',0),(472,'越过山丘','/music/杨宗纬/越过山丘.mp3','/music/杨宗纬/越过山丘.lrc','杨宗纬','03:53','/music/杨宗纬/default.png',0),(473,'这一路走来','/music/杨宗纬/这一路走来.mp3','/music/杨宗纬/这一路走来.lrc','杨宗纬','04:18','/music/杨宗纬/default.png',0),(474,'不老梦','/music/银临/不老梦.mp3','/music/银临/不老梦.lrc','银临','04:18','/music/银临/default.png',0),(475,'不离','/music/银临/不离.mp3','/music/银临/不离.lrc','银临','04:13','/music/银临/default.png',0),(476,'裁梦为魂','/music/银临/裁梦为魂.mp3','/music/银临/裁梦为魂.lrc','银临','04:30','/music/银临/default.png',0),(477,'春笺','/music/银临/春笺.mp3','/music/银临/春笺.lrc','银临','04:55','/music/银临/default.png',0),(478,'腐草为萤','/music/银临/腐草为萤.mp3','/music/银临/腐草为萤.lrc','银临','04:40','/music/银临/default.png',0),(479,'锦鲤抄','/music/银临/锦鲤抄.mp3','/music/银临/锦鲤抄.lrc','银临','04:03','/music/银临/default.png',0),(480,'眉目如画','/music/银临/眉目如画.mp3','/music/银临/眉目如画.lrc','银临','06:07','/music/银临/default.png',0),(481,'牵丝戏feat.aki阿杰','/music/银临/牵丝戏feat.aki阿杰.mp3','/music/银临/牵丝戏feat.aki阿杰.lrc','银临','03:59','/music/银临/default.png',0),(482,'青山揽梦','/music/银临/青山揽梦.mp3','/music/银临/青山揽梦.lrc','银临','04:52','/music/银临/default.png',0),(483,'情囚','/music/银临/情囚.mp3','/music/银临/情囚.lrc','银临','03:20','/music/银临/default.png',0),(484,'秋水','/music/银临/秋水.mp3','/music/银临/秋水.lrc','银临','04:40','/music/银临/default.png',0),(485,'如一','/music/银临/如一.mp3','/music/银临/如一.lrc','银临','04:19','/music/银临/default.png',0),(486,'十世镜','/music/银临/十世镜.mp3','/music/银临/十世镜.lrc','银临','03:38','/music/银临/default.png',0),(487,'是风动','/music/银临/是风动.mp3','/music/银临/是风动.lrc','银临','04:48','/music/银临/default.png',0),(488,'棠梨煎雪','/music/银临/棠梨煎雪.mp3','/music/银临/棠梨煎雪.lrc','银临','04:05','/music/银临/default.png',0),(489,'天凉好个秋','/music/银临/天凉好个秋.mp3','/music/银临/天凉好个秋.lrc','银临','03:38','/music/银临/default.png',0),(490,'雪舞——《以梦为马》专辑收录','/music/银临/雪舞——《以梦为马》专辑收录.mp3','/music/银临/雪舞——《以梦为马》专辑收录.lrc','银临','03:58','/music/银临/default.png',0),(491,'一梦逍遥','/music/银临/一梦逍遥.mp3','/music/银临/一梦逍遥.lrc','银临','04:38','/music/银临/default.png',0),(492,'不要忘记我爱你','/music/张碧晨/不要忘记我爱你.mp3','/music/张碧晨/不要忘记我爱你.lrc','张碧晨','03:45','/music/张碧晨/default.png',0),(493,'渡红尘','/music/张碧晨/渡红尘.mp3','/music/张碧晨/渡红尘.lrc','张碧晨','04:47','/music/张碧晨/default.png',0),(494,'红玫瑰','/music/张碧晨/红玫瑰.mp3','/music/张碧晨/红玫瑰.lrc','张碧晨','03:45','/music/张碧晨/default.png',0),(495,'后会无期','/music/张碧晨/后会无期.mp3','/music/张碧晨/后会无期.lrc','张碧晨','03:22','/music/张碧晨/default.png',0),(496,'凉凉','/music/张碧晨/凉凉.mp3','/music/张碧晨/凉凉.lrc','张碧晨','05:33','/music/张碧晨/default.png',0),(497,'年轮','/music/张碧晨/年轮.mp3','/music/张碧晨/年轮.lrc','张碧晨','04:34','/music/张碧晨/年轮.png',0),(498,'年轮(电视剧《花千骨》插曲)','/music/张碧晨/年轮(电视剧《花千骨》插曲).mp3','/music/张碧晨/年轮(电视剧《花千骨》插曲).lrc','张碧晨','04:34','/music/张碧晨/default.png',0),(499,'如果一切没有发生过','/music/张碧晨/如果一切没有发生过.mp3','/music/张碧晨/如果一切没有发生过.lrc','张碧晨','04:53','/music/张碧晨/如果一切没有发生过.png',0),(500,'她说','/music/张碧晨/她说.mp3','/music/张碧晨/她说.lrc','张碧晨','03:15','/music/张碧晨/default.png',0),(501,'为什么我好想告诉他我是谁','/music/张碧晨/为什么我好想告诉他我是谁.mp3','/music/张碧晨/为什么我好想告诉他我是谁.lrc','张碧晨','03:56','/music/张碧晨/为什么我好想告诉他我是谁.png',0),(502,'下一秒','/music/张碧晨/下一秒.mp3','/music/张碧晨/下一秒.lrc','张碧晨','03:14','/music/张碧晨/下一秒.png',0),(503,'在你爱的牵挂里','/music/张碧晨/在你爱的牵挂里.mp3','/music/张碧晨/在你爱的牵挂里.lrc','张碧晨','04:52','/music/张碧晨/在你爱的牵挂里.png',0),(504,'只要平凡','/music/张碧晨/只要平凡.mp3','/music/张碧晨/只要平凡.lrc','张碧晨','04:06','/music/张碧晨/只要平凡.png',0),(505,'everything will say goodbye','/music/张杰/everything will say goodbye.mp3','/music/张杰/everything will say goodbye.lrc','张杰','03:50','/music/张杰/default.png',0),(506,'give you my world','/music/张杰/give you my world.mp3','/music/张杰/give you my world.lrc','张杰','03:30','/music/张杰/default.png',0),(507,'lost in the stars','/music/张杰/lost in the stars.mp3','/music/张杰/lost in the stars.lrc','张杰','03:49','/music/张杰/default.png',0),(508,'my sunshine','/music/张杰/my sunshine.mp3','/music/张杰/my sunshine.lrc','张杰','04:26','/music/张杰/default.png',0),(509,'torches','/music/张杰/torches.mp3','/music/张杰/torches.lrc','张杰','03:27','/music/张杰/default.png',0),(510,'浩瀚','/music/张杰/浩瀚.mp3','/music/张杰/浩瀚.lrc','张杰','03:51','/music/张杰/default.png',0),(511,'浩瀚(伴奏)','/music/张杰/浩瀚(伴奏).mp3','/music/张杰/浩瀚(伴奏).lrc','张杰','03:51','/music/张杰/default.png',0),(512,'三生三世','/music/张杰/三生三世.mp3','/music/张杰/三生三世.lrc','张杰','04:17','/music/张杰/三生三世.png',0),(513,'听','/music/张杰/听.mp3','/music/张杰/听.lrc','张杰','04:43','/music/张杰/default.png',0),(514,'微笑着胜利(庆祝建军91周年网宣主题曲)','/music/张杰/微笑着胜利(庆祝建军91周年网宣主题曲).mp3','/music/张杰/微笑着胜利(庆祝建军91周年网宣主题曲).lrc','张杰','04:31','/music/张杰/微笑着胜利(庆祝建军91周年网宣主题曲).png',0),(515,'微笑着胜利(庆祝建军91周年网宣主题曲)(伴奏)','/music/张杰/微笑着胜利(庆祝建军91周年网宣主题曲)(伴奏).mp3','/music/张杰/微笑着胜利(庆祝建军91周年网宣主题曲)(伴奏).lrc','张杰','04:30','/music/张杰/微笑着胜利(庆祝建军91周年网宣主题曲)(伴奏).png',0),(516,'我的胃隐隐作痛dj','/music/张杰/我的胃隐隐作痛dj.mp3','/music/张杰/我的胃隐隐作痛dj.lrc','张杰','06:00','/music/张杰/default.png',0),(517,'我想','/music/张杰/我想.mp3','/music/张杰/我想.lrc','张杰','03:46','/music/张杰/我想.png',0),(518,'下雨天','/music/张杰/下雨天.mp3','/music/张杰/下雨天.lrc','张杰','04:41','/music/张杰/default.png',0),(519,'星辰','/music/张杰/星辰.mp3','/music/张杰/星辰.lrc','张杰','04:09','/music/张杰/星辰.png',0),(520,'需要清醒(live)','/music/张杰/需要清醒(live).mp3','/music/张杰/需要清醒(live).lrc','张杰','03:27','/music/张杰/default.png',0),(521,'着魔','/music/张杰/着魔.mp3','/music/张杰/着魔.lrc','张杰','03:35','/music/张杰/default.png',0),(522,'只要平凡','/music/张杰/只要平凡.mp3','/music/张杰/只要平凡.lrc','张杰','04:06','/music/张杰/只要平凡.png',0),(523,'dolphin','/music/张学友/dolphin.mp3','/music/张学友/dolphin.lrc','张学友','03:27','/music/张学友/default.png',0),(524,'osaka','/music/张学友/osaka.mp3','/music/张学友/osaka.lrc','张学友','02:36','/music/张学友/default.png',0),(525,'观','/music/张学友/观.mp3','/music/张学友/观.lrc','张学友','04:25','/music/张学友/default.png',0),(526,'你最珍贵','/music/张学友/你最珍贵.mp3','/music/张学友/你最珍贵.lrc','张学友','04:47','/music/张学友/default.png',0),(527,'秋意浓','/music/张学友/秋意浓.mp3','/music/张学友/秋意浓.lrc','张学友','06:35','/music/张学友/default.png',0),(528,'让奇妙飞翔','/music/张学友/让奇妙飞翔.mp3','/music/张学友/让奇妙飞翔.lrc','张学友','04:02','/music/张学友/default.png',0),(529,'人间道','/music/张学友/人间道.mp3','/music/张学友/人间道.lrc','张学友','02:33','/music/张学友/default.png',0),(530,'日与夜','/music/张学友/日与夜.mp3','/music/张学友/日与夜.lrc','张学友','03:36','/music/张学友/default.png',0),(531,'听海','/music/张学友/听海.mp3','/music/张学友/听海.lrc','张学友','04:47','/music/张学友/default.png',0),(532,'听妈妈的话','/music/张学友/听妈妈的话.mp3','/music/张学友/听妈妈的话.lrc','张学友','03:24','/music/张学友/default.png',0),(533,'头发乱了','/music/张学友/头发乱了.mp3','/music/张学友/头发乱了.lrc','张学友','03:31','/music/张学友/default.png',0),(534,'我真的受伤了','/music/张学友/我真的受伤了.mp3','/music/张学友/我真的受伤了.lrc','张学友','03:31','/music/张学友/default.png',0),(535,'相思风雨中','/music/张学友/相思风雨中.mp3','/music/张学友/相思风雨中.lrc','张学友','04:12','/music/张学友/default.png',0),(536,'想和你去吹吹风','/music/张学友/想和你去吹吹风.mp3','/music/张学友/想和你去吹吹风.lrc','张学友','04:54','/music/张学友/default.png',0),(537,'烟丝万缕','/music/张学友/烟丝万缕.mp3','/music/张学友/烟丝万缕.lrc','张学友','03:30','/music/张学友/default.png',0),(538,'一对寂寞的心','/music/张学友/一对寂寞的心.mp3','/music/张学友/一对寂寞的心.lrc','张学友','03:53','/music/张学友/default.png',0),(539,'一路上有你','/music/张学友/一路上有你.mp3','/music/张学友/一路上有你.lrc','张学友','04:47','/music/张学友/default.png',0),(540,'一千个伤心的理由','/music/张学友/一千个伤心的理由.mp3','/music/张学友/一千个伤心的理由.lrc','张学友','04:37','/music/张学友/default.png',0),(541,'这么近[那么远]','/music/张学友/这么近[那么远].mp3','/music/张学友/这么近[那么远].lrc','张学友','06:15','/music/张学友/default.png',0),(542,'不能说的秘密','/music/周杰伦/不能说的秘密.mp3','/music/周杰伦/不能说的秘密.lrc','周杰伦','04:56','/music/周杰伦/default.png',0),(543,'稻香','/music/周杰伦/稻香.mp3','/music/周杰伦/稻香.lrc','周杰伦','03:43','/music/周杰伦/default.png',0),(544,'告白气球','/music/周杰伦/告白气球.mp3','/music/周杰伦/告白气球.lrc','周杰伦','03:35','/music/周杰伦/default.png',0),(545,'给我一首歌的时间','/music/周杰伦/给我一首歌的时间.mp3','/music/周杰伦/给我一首歌的时间.lrc','周杰伦','04:13','/music/周杰伦/default.png',0),(546,'黄金甲','/music/周杰伦/黄金甲.mp3','/music/周杰伦/黄金甲.lrc','周杰伦','03:34','/music/周杰伦/黄金甲.png',0),(547,'简单爱','/music/周杰伦/简单爱.mp3','/music/周杰伦/简单爱.lrc','周杰伦','04:17','/music/周杰伦/default.png',0),(548,'藉口','/music/周杰伦/藉口.mp3','/music/周杰伦/藉口.lrc','周杰伦','04:31','/music/周杰伦/default.png',0),(549,'菊花台','/music/周杰伦/菊花台.mp3','/music/周杰伦/菊花台.lrc','周杰伦','04:54','/music/周杰伦/default.png',0),(550,'可爱女人','/music/周杰伦/可爱女人.mp3','/music/周杰伦/可爱女人.lrc','周杰伦','03:58','/music/周杰伦/default.png',0),(551,'龙卷风','/music/周杰伦/龙卷风.mp3','/music/周杰伦/龙卷风.lrc','周杰伦','04:08','/music/周杰伦/default.png',0),(552,'你怎么连话都说不清楚','/music/周杰伦/你怎么连话都说不清楚.mp3','/music/周杰伦/你怎么连话都说不清楚.lrc','周杰伦','04:06','/music/周杰伦/default.png',0),(553,'七里香','/music/周杰伦/七里香.mp3','/music/周杰伦/七里香.lrc','周杰伦','04:59','/music/周杰伦/default.png',0),(554,'青花瓷','/music/周杰伦/青花瓷.mp3','/music/周杰伦/青花瓷.lrc','周杰伦','03:59','/music/周杰伦/default.png',0),(555,'晴天','/music/周杰伦/晴天.mp3','/music/周杰伦/晴天.lrc','周杰伦','04:29','/music/周杰伦/default.png',0),(556,'说好的幸福呢','/music/周杰伦/说好的幸福呢.mp3','/music/周杰伦/说好的幸福呢.lrc','周杰伦','04:16','/music/周杰伦/default.png',0),(557,'屋顶','/music/周杰伦/屋顶.mp3','/music/周杰伦/屋顶.lrc','周杰伦','05:19','/music/周杰伦/default.png',0),(558,'星晴','/music/周杰伦/星晴.mp3','/music/周杰伦/星晴.lrc','周杰伦','04:19','/music/周杰伦/default.png',0),(559,'烟花易冷','/music/周杰伦/烟花易冷.mp3','/music/周杰伦/烟花易冷.lrc','周杰伦','04:22','/music/周杰伦/default.png',0),(560,'夜曲','/music/周杰伦/夜曲.mp3','/music/周杰伦/夜曲.lrc','周杰伦','03:46','/music/周杰伦/default.png',0),(561,'周杰伦','/music/周杰伦/周杰伦.mp3','/music/周杰伦/周杰伦.lrc','周杰伦','04:28','/music/周杰伦/default.png',0);
/*!40000 ALTER TABLE `music_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `music_sheet`
--

DROP TABLE IF EXISTS `music_sheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `music_sheet` (
  `sheet_id` int(11) NOT NULL,
  `music_id` int(11) DEFAULT NULL,
  KEY `fk_music_sheet_1_idx` (`sheet_id`),
  CONSTRAINT `fk_music_sheet_1` FOREIGN KEY (`sheet_id`) REFERENCES `user_sheet` (`sheet_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music_sheet`
--

LOCK TABLES `music_sheet` WRITE;
/*!40000 ALTER TABLE `music_sheet` DISABLE KEYS */;
/*!40000 ALTER TABLE `music_sheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `singer_info`
--

DROP TABLE IF EXISTS `singer_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `singer_info` (
  `singer_id` int(11) NOT NULL AUTO_INCREMENT,
  `singer_name` varchar(15) DEFAULT NULL,
  `singer_pic` varchar(50) DEFAULT NULL,
  `singer_text` text,
  PRIMARY KEY (`singer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `singer_info`
--

LOCK TABLES `singer_info` WRITE;
/*!40000 ALTER TABLE `singer_info` DISABLE KEYS */;
INSERT INTO `singer_info` VALUES (1,'薛之谦','/singer_pic/薛之谦.png','薛之谦，中国内地男歌手，籍贯上海市。2004年，第一次参加大型歌唱比赛莱卡我型我Show全国偶像歌手大赛，但其后由于种种原因退出比赛。2005年再次站上了我型我Show的舞台。赛后成功签约上腾娱乐，成为一名艺人，2006年带着超高人气的他，成功发行同名专辑。销量一路飙红，连续再版三次，总销量突破50万张，也是06年中国内地销量最好的新人之一。2007年推出个人第二张专辑《你过得好吗》，首月预售达15万张。2008年推出单曲《传说》。专辑《深深爱过你》于2008年11月26日正式发行。\n入行经历\n在瑞士就读“酒店管理”的薛之谦，在一次归国探亲中，偶遇唱片公司星探，其星探是在上海音乐领域有着相当知名度的人物，在征得爸爸的同意后，（君子协定：3年内不能在音乐事业上取得一定成绩，就需继续就读“酒店管理”专业）便随即签订合约。但得到的不是歌手的身份，却是演员的工作。从此，薛之谦就出现在各大片场中，对演戏毫无基础的他，曾无数次遭到导演的冷嘲热讽，但为了音乐他依然坚持。在空闲时间薛之谦便用吉他写歌，收入并不多的他甚至自掏腰包录歌。他两度参加全国性大型歌唱比赛：“莱卡”我型我秀Show 全国偶像歌手大赛。首度参加便轻松挺进上海80强，但由于种种的原因，他退出了比赛。2005年他在一次参加我型我秀Show，此次他带着他的原创音乐征服了所有的人，一路过关斩将，虽然没有获得冠军，但是赢得了超高的人气。赛后签约上腾娱乐，正式进入娱乐圈，成为一名歌手。'),(2,'李荣浩','/singer_pic/李荣浩.png','李荣浩\n2005年签约日本艾回唱片，成为其台湾地区独家创作艺人。2007年，李荣浩赴台湾参与制作信专辑《我就是我》，并担任其“2008我就是我·北京演唱会”的表演嘉宾。\n\n2008年参与制作赵薇专辑《我们都是大导演》，并担任发布会表演嘉宾；同年担任陈坤专辑《谜&Me》的专辑制作人。\n\n2010年2月4日，担任陈坤首场演唱会《谜》音乐总监&吉他手。2011年开始担任东申童画《行走的力量》音乐总监。\n\n2013年8月，首度携手好友陈坤演绎全新单曲《演员和歌手》；同年9月17日，发行首张个人专辑《模特》，举办“Hao·Live——《模特》专辑音享会” 演绎专辑中的6首歌曲。\n\n2014年3月24日，发行概念EP《作曲家》，获王菲力荐，称其为“帅歌”，同月入围MusicRadio中国TOP排行榜年度最受欢迎新人；同年4月，获得音悦台第二届“音悦v榜”年度最佳音悦人；5月参加《全球中文音乐榜上榜》，现场打榜演唱《作曲家》，同月凭借专辑《模特》入围第25届金曲奖最佳国语男歌手奖、最佳新人奖、最佳专辑制作人、最佳国语专辑、最佳作词奖等五项大奖提名；同年6月一举夺得第二十五届台湾金曲奖最佳新人奖，是内地歌手首次获得台湾金曲奖最佳新人奖的第一人，实现了从制作人到歌手的转型 ；同年9月4日签约华纳唱片 ，11月28日正式发行第二张同名专辑《李荣浩》\n\n2015年1月16日作为首位踢馆歌手参加《我是歌手第三季》第四期踢馆赛，踢馆失败。2月19日，推出首张Live翻唱EP《iTunes Session》 。4月，为电影《何以笙箫默》演唱主题曲《不将就》 。5月30-31日，李荣浩在北京举行的“天生李荣浩演唱会。 6月，凭借歌曲《喜剧之王》入围第26届金曲奖最佳作曲人奖。\n\n2015年8月16日三亚笛梵盛筵 见证李荣浩“一曲封王”。'),(3,'陈粒','/singer_pic/陈粒.png','陈粒，又名粒粒，1990年7月26日出生于贵州省贵阳市，中国内地民谣女歌手、独立音乐人、唱作人，前空想家乐队主唱，毕业于上海对外经贸大学。\n2012年，其所在乐队“空想家乐队”获得“Zippo炙热摇滚大赛”上海赛区冠军 。2014年，随空想家乐队推出乐队首张EP专辑《万象》；同年，其演唱的歌曲《奇妙能力歌》入围“第四届阿比鹿音乐奖”年度民谣单曲。2015年，推出首张个人音乐专辑《如也》；同年，推出个人民谣单曲《远辰》。2016年1月，获得“第五届阿比鹿音乐奖”最受欢迎音乐人（民谣）；同年3月8日，化身“粒粒”并推出首支单曲《幻期颐》；同年7月26日，推出第二张个人音乐专辑《小梦大半》。'),(4,'陈奕迅','/singer_pic/陈奕迅.png','陈奕迅\n陈奕迅于1995年暑假期间回香港参加TVB举办的第14届新秀歌唱大赛，成为该届冠军，随即跟华星唱片公司签下歌星合约，正式踏入香港乐坛。\n\n于1996年推出首张个人同名大碟《陈奕迅》，其后《与我常在》和《我的快乐时代》推出后，渐受大众认识及注视。\n\n1999年，发行《幸福》、《天佑爱人》和《新生活》 等专辑，其中的代表作如《幸福摩天轮》和《每一个明天》等。并在10月7日至10日于香港体育馆举行一连四场的“Big Live陈奕迅大个唱99”演唱会。\n\n2000年陈奕迅转投英皇娱乐旗下品牌Music Plus，相继推出的专辑《Shall We Talk》、《打得火热》、《K歌之王》、《明年今日》均进占流行榜冠军 。\n\n2006年推出专辑《Life Continues》，主打歌《最佳损友》获香港多个传媒流行榜周冠军。\n\n2006年11月，推出专辑《What\'s Going On》，其中冠军歌《富士山下》的国语版《爱情转移》在2007年内地各颁奖礼上获得多个奖项。\n\n2007年4月，推出国语专辑《认了吧》，在专辑宣传期间，分别于中港台各地举行校园巡回演唱会。10月，推出专辑《Listen to Eason Chan》，是为一次突破，整张专辑只有一首慢歌《crying in the party》，其余则是各种类型的快歌。 8月13日，推出国语专辑《不想放手》。\n\n2009年 3月23日，推出专辑《H3M》，由Moving On Stage演唱会班底每人写一首歌完成。陈奕迅亦交上冠军曲《沙龙》，其他冠军曲包括《七百年后》和《allegro opus 3.3am》。9月21日，推出国语专辑《上五楼的快活》。\n\n2010年3月12日，推出EP《Time Flies》，其中包括三首三台冠军歌《无人之境》、《陀飞轮》及 《一丝不挂》。\n\n2010年10月15日，推出EP《Taste the Atmosphere》。\n\n2012年1月4日，陈奕迅和王菲登上2012年央视龙年春晚，联袂表演《因为爱情》；2013年发行专辑《The Key》。\n\n2014年5月15日发行国语概念专辑《米•闪》。该专辑共收录11首歌曲。\n\n2015年7月10日发行粤语专辑《准备中 Getting Ready》。'),(5,'邓紫棋','/singer_pic/G.E.M.邓紫棋.png','邓紫棋\n2008年7月10日以16岁之龄出道。同年10月16日发行首张EP《G.E.M.》，获得十大劲歌金曲最受欢迎女新人金奖、第31届十大中文金曲最有前途新人银奖等奖项 。\n\n2012年7月，发行第四张个人专辑《Xposed》，凭借该专辑邓紫棋在2013年获得IFPI香港唱片销量大奖全年最高销量女歌手奖、最高销量国语唱片奖，并入围第24届金曲奖最佳国语女歌手奖。\n\n2014年1月，参加湖南卫视《我是歌手第二季》节目，获得总决赛亚军。3月31日，获第27届KCA美国儿童选择奖“最受欢迎亚洲艺人” 。12月10日，邓紫棋的蜡像入驻香港杜莎夫人蜡像馆。\n\n2015年2月18日，参加2015年中央电视台春节联欢晚会，自弹自唱其自创的歌曲《多远都要在一起》。'),(6,'林俊杰','/singer_pic/林俊杰.png','林俊杰\n2003年，发行首张全创作专辑《乐行者》。虽然时逢SARS，但他和团队不轻言放弃，在3个月内走遍26个城市，进行了上百场演出，奠定了之后在中国大陆的稳固基础。\n\n2004年，游走大陆，让从小接受英语教育的林俊杰首次体验中华文化所带来的冲击，结合西方R&B现代曲风以及中国风的《江南》（台版为《第二天堂》）专辑由此诞生，同年更凭借《乐行者》专辑拿下第15届台湾金曲奖最佳新人奖。\n\n2005年，赴美国LA向音乐大师Seth Riggs学习唱歌技巧，同时林俊杰也成为Seth Riggs的第一位亚洲学生；3月25日，发行第三张创作专辑《编号89757》， \n\n2006年，1月20日，发行首部音乐视觉写真书《进化论》，1月28日，登上中国中央电视台春节联欢晚会（央视春晚）舞台献唱《一千年以后》\n\n2007年，以人性的善恶纠结为基础，大胆推出更具突破性的专辑《西界》\n\n2008年，首次主演网络小说改编的偶像剧《原来我不帅》；10月18日，发行具有最多“合作元素”的专辑《JJ陆》，与蔡卓妍合唱的《小酒窝》广为传唱\n\n\n2011年，4月底，与老东家海蝶音乐合约到期；8月8日，加盟华纳唱片，开启新乐章；9月30日，由林俊杰担任音乐总监的电影《夏日乐悠悠》上映，除了创作主题曲《Love U U》，同时还负责全片的配乐工作；12月31日，推出第九张创作专辑《学不会》。\n\n2012年，3月1日，推出首本个人故事影像集《记得》，跻身畅销作家行列；凭借专辑《学不会》斩获各大奖项，深拓台湾市场。\n\n2013年，3月13日，发行出道十年纪念专辑《因你而在》，成绩斐然，，年终销量在榜单独占鳌头；专辑中的《修炼爱情》获得Hit Fm年度百首单曲票选冠军\n\n2014年，2月16日，“时线Timeline世界巡回演唱会”登陆伦敦，林俊杰成为首位在伦敦开个唱的新加坡歌手； \nBy Dr.Dre耳机全球代言人，广告登陆纽约时代广场；1月10日，“时线Timeline世界巡回演唱会”在青岛落幕，横跨4大洲、24个城市，突破30万人次 '),(7,'许嵩','/singer_pic/许嵩.png','许嵩\n2006年大学期间开始以网名“Vae”在互联网发表原创音乐作品；2009年独立出版首张词曲全创作专辑《自定义》。\n\n2010年出版第二张词曲全创作专辑《寻雾启示》。\n\n2011年4月，许嵩与跨国音乐公司——海蝶音乐签约。在签约海蝶后推出第三张创作专辑《苏格拉没有底》，这张专辑在实体唱片日渐式微的数字音乐时代获得了超过二十三万张的实体碟销量。\n\n2012年7月发表第四张全创作专辑《梦游计》。\n\n2013年8月出版个人摄影随笔集《海上灵光》；12月31日，作为央视《起航2013?元旦晚会》表演嘉宾献唱《断桥残雪》。\n\n2014年8月推出第五张全创作专辑《不如吃茶去》。为电视剧《花千骨》创作片头曲《千古》并于2015年8月20日发行；2015年9月14日出席中国大学音乐超级联赛，与词作家林夕老师、四川音乐学院教授王铮亮老师共同担任评委及出任明星导师。\n\n代表作品\n清明雨上，2009年专辑《自定义》\n有何不可，2009年专辑《自定义》\n灰色头像，2010年专辑《寻雾启示》\n素颜，2010年专辑《素颜》\n半城烟沙，2010年网游《天龙八部2》主题曲'),(8,'双笙','/singer_pic/双笙.png','双笙，2000年5月13日出生于重庆市开县，00后女歌手，2015年4月，双笙在一款音乐App上发布了自己翻唱的古风音乐《故梦》；同年发布歌曲《采茶纪》。2016年5月13日发行专辑《笙声不息》。2018年1月15日，联合GAI推出合唱歌曲《都市惊奇夜》。'),(9,'银临','/singer_pic/银临.png','银临，1991年12月11日出生于湖南省湘西土家族苗族自治州，中国内地古风音乐原创女歌手，毕业于南京大学外国语学院。\n2011年，担任歌声魅影剧社年度音乐剧《歌剧魅影》的主演。2012年，担任音乐剧《红磨坊》的导演；同年，其演唱的歌曲《风烟倦》、《商女恨》分别获“第二届古风原创歌曲大赛”第六名和第七名。2013年，推出首张个人音乐专辑《腐草为萤》。2014年，为网络游戏《倩女幽魂2》演唱主题曲《十世镜》。2015年，参加在北京举办的“结绳纪·踏歌行千山”古风音乐会。2016年，为手游《夏目的美丽日记》演唱同名主题曲。'),(10,'莫文蔚','/singer_pic/莫文蔚.png','莫文蔚\n1997年莫文蔚被选为PIFAN 1997第一届韩国富山市国际电影节评审委员 。\n2001年成为Christian Dior口红亚洲区诱人舞会代言人。\n2001年在电视剧《烈爱伤痕》中饰演更纱。\n2001年莫文蔚被选为第四届法国杜维尔亚洲电影节评审委员。\n2003年凭借专辑《i》 获得第14届台湾金曲奖最佳国语女演唱人奖，成为首位赢得台湾金曲奖的香港女歌手。\n\n2005年莫文蔚是领衔百老汇热门音乐剧《吉屋出租》十周年全球巡演的首位亚洲明星，并在电视剧《老冯日记》第8集饰演了莫文蔚。\n2007年莫文蔚以首次担任音乐监制的专辑《拉活…莫文蔚》。\n\n2011年凭借专辑《宝贝》获得第22届台湾金曲奖最佳专辑提名，并且获得第22届台湾金曲奖最佳国语女演唱人奖 。\n\n2015年2月18日，莫文蔚将登上央视春晚，独唱歌曲《当你老了》。7月24日，刘镇伟执导的《大话西游终结篇》在银川开机，莫文蔚将继续饰演白晶晶一角。'),(11,'刘瑞琦','/singer_pic/刘瑞琦.png','刘瑞琦（Richael），1993年9月2日出生于安徽，华语创作女歌手，代表作《房间》、《来不及》。2013年1月因雪地吉他弹唱周杰伦的《明明就》而走红网络受到关注；同年4月参与《中国最强音》并进入罗大佑老师带领的女生组，最终晋级全国十二强；10月推出单曲《房间》；11月6日，发行个人首张EP专辑《私房歌》。2014年9月25日发行第二张EP专辑《早安，琦》。2017年5月19日发行第三张EP专辑《晚安，琦》；同年9月开始刘瑞琦“温暖的房间”巡回演唱会(现已完成18场巡演)；9月2日生日当天推出演唱会同名单曲《温暖的房间》。2018年1月11日推出“荣耀9青春版”手机主题曲《定格》。'),(12,'张学友','/singer_pic/张学友.png','张学友\n音乐方面\n1984年，他凭借一曲《大地恩情》获得香港首届十八区业余歌唱大赛的冠军；同年他与宝丽金唱片公司签约成为旗下歌手 。1985年，发行首张个人专辑《Smile》。\n\n1986年，发行第二张专辑《遥远的她AMOUR》，专辑中的歌曲《月半弯》成为他的粤语代表作品之一，另一首粤语歌曲《太阳星辰》亦在同期推出。\n\n1990年，推出专辑《只愿一生爱一人》，受到乐坛关注，在同年香港的几个音乐颁奖典礼上获得多个奖项，巩固了他在宝丽金唱片公司的地位。\n\n1991年，《情不禁》和《一颗不变心》的成功，使得张学友与刘德华和黎明在香港各大颁奖礼分庭抗礼，三人连同郭富城，一起被媒体封为“四大天王”。\n\n1993年，推出国语专辑《吻别》，他的歌唱事业亦至此达到高峰。\n\n1994年，推出EP类型粤语专辑《饿狼传说》、大碟《这个冬天不太冷》以及国语专辑《偷心》。\n\n1997年，他参与策划、导演并主演的原创音乐剧《雪狼湖》在香港刷新创造了香港多个演出纪录。\n\n1999年，发行粤语专辑《有个人》以及国语专辑《走过1999》。\n\n2004年年初，他发行了个人第一张完全创作的唱片《Life Is Like A Dream》。\n\n2014年7月，张学友演唱了3D动画电影《神笔马良》的主题曲《童真年代》 ；10月推出国语歌曲《用余生去爱》 ；12月，发行国语专辑《醒着做梦》，该张专辑融合了民歌以及英式摇滚的元素。\n\n电影方面\n1986年，出演荧幕处女作《霹雳大喇叭》，在片中饰演警界小卒张定 其；同年，出演爱情片《痴心的我》。\n\n1988年，主演由王家卫导演执导的黑帮片《旺角卡门》。\n\n1989年，参演恐怖片《捉鬼大师》；同年主演喜剧片《福星临门》并为电影演唱主题曲《仍是会喜欢你》。\n\n1991年，出演《倩女幽魂》系列电影的最后一部《倩女幽魂Ⅲ：道道道》。\n\n1993年，参演喜剧片《东成西就》，在片中饰演武功高强的洪七公。\n\n2005年，获邀拍摄陈可辛执导的歌舞片《如果•爱》，并将音乐元素带入电影中。\n2010年主演电影《72家租客》，片中张学友以一头白发造型亮相，饰演在旺角西洋菜街上卖手机的小人物石坚。\n\n2015年4月30日，张学友与张家辉、张震共同主演的动作片《赤道》上映。8月3日，电影《澳门风云3》于香港开机，张学友在片中饰演一位大反派。'),(13,'王力宏','/singer_pic/王力宏.png','王力宏（Leehom Wang），1976年5月17日出生于美国纽约罗切斯特，祖籍浙江义乌；华语流行乐男歌手、音乐制作人、演员、导演；拥有威廉姆斯大学和伯克利音乐学院双荣誉博士的学历。\n1995年发行个人首张专辑《情敌贝多芬》，从而进入演艺圈。1998年凭借专辑《公转自转》获得关注，并于次年获得第10届台湾金曲奖最佳国语男演唱人奖、最佳唱片制作人奖。2000年以动作电影《雷霆战警》涉足影坛。2004年在专辑《心中的日月》中首创chinked-out曲风；同年凭借专辑《不可思议》获得第15届台湾金曲奖最佳唱片制作人奖。\n2006年凭借专辑《盖世英雄》获得第17届台湾金曲奖最佳国语男演唱人奖。2007年出演李安导演的剧情片《色戒》。2008年被美国网站GOLDSEA评选为“80位美国最有影响力的美籍亚洲人”之一。2011年自编自导自演爱情电影《恋爱通告》。2013年出演好莱坞电影《骇客交锋》并签约CAA。2017年10月20日，主演的音乐纪录片《火力全开》在全国公映。2018年主演青春爱情片《无问西东》。演艺事业外，王力宏在2002年担任联合国儿童基金会国际青年大使，2009年担任台北市环保大使。曾为都灵冬奥会开场表演，担任北京奥运会、伦敦奥运会两届奥运火炬手以及上海世博会台北馆形象大使。2011年与前台湾领导人马英九在台湾清华大学进行对谈。2013年受邀在牛津大学进行一场以“认识华流”为主题的演讲。'),(14,'王菲','/singer_pic/王菲.png','王菲\n1989年，王菲以一首《仍是旧句子》在《亚太金铮流行曲创作大赛》决赛中获铜奖。并于10月推出首张个人大碟《王靖雯》，销量突破3万，获金唱片。\n\n1990年发行第二个人大碟《EVERTHING》，以及8月份发行的《YOU ARE THE ONLYONE》 ，并获得得“叱咤乐坛流行榜女歌手铜奖”。\n\n1991年，由于唱片公司出现问题，王菲赴美学习。1992年，在恩师戴思聪斡旋下，王菲从美国回到新艺宝，开始了演艺生涯。 \n\n1992年7月王菲推出第四张专辑《Coming Home》，专辑推出销量冲破三白金。其中歌曲《容易受伤的女人》受到欢迎，不仅在香港各大排行榜名列冠军，还在年终颁奖礼上获得了多个奖项。\n\n1993年2月5日，以王靖雯名发行粤语专辑《执迷不悔》，专辑曲风有灵魂乐式的演唱色彩并让王菲获得香港十大中文金曲奖、十大劲歌金曲。\n\n1994年4月，发行首张国语大碟《迷》，主打歌《我愿意》被众多歌手翻唱，是被翻唱成最多外国语言的中文歌曲。\n\n1998年春节，王菲与那英在春晚合唱一曲《相约1998》，让这首歌成为1998年的大热。\n\n2001年，王菲推出在EMI最后一张的中文唱片《王菲》，与在百代的第一张《王菲》同名。这次，王菲开始尝试与各地音乐人进行合作，谢霆锋为她创作的《迷魂记》也收录其中。\n\n2005年5月底，王菲的经理人陈家瑛向媒体表明：王菲已开始“无限期休息”，而张亚东也对媒体透露，她已经不打算再唱歌了。\n\n2008年至2009年间，已经宣布“无限期休息”的王菲进行了两次登台表演。第一次为2008年5月18日晚，她参与央视为汶川大地震募捐的赈灾晚会。第二次是在2009年5月8日晚，王菲参加陕西法门寺合十舍利塔落成暨佛指舍利安奉大典的大型文艺晚会，但因天气原因被迫取消。\n\n2014年9月10日，王菲与梁朝伟在香港出席佛教活动，在台上合唱《心经》。'),(15,'孙燕姿','/singer_pic/孙燕姿.png','孙燕姿\n华纳音乐于2000年6月9日推出孙燕姿的首张音乐专辑《孙燕姿同名专辑》，孙燕姿由此开始了她的音乐之旅。\n\n2000年，孙燕姿的首张专辑《孙燕姿同名专辑》获得台湾地区年度专辑销售冠军，同年底，发行第二张专辑《我要的幸福》。\n\n2001年，孙燕姿发行第三张专辑《风筝》，自己作曲的《任性》拿下2001年度台湾HITO百大单曲第一名。\n\n2002年，孙燕姿发行第四张专辑《Start自选集》。\n\n2003年，孙燕姿成立个人音乐公司Make Music，1月发行第六张专辑《未完成》；8月，发行第七张专辑《The Moment》，收录6首歌曲与14首精选歌曲，在亚洲地区卖出170万张。\n\n2004年，在暂别歌坛一年后，孙燕姿发行第八张专辑《Stefanie》复出，在亚洲售出220万张。\n\n2005年10月，发行第九张全新国语专辑《完美的一天》，专辑中呈现了很多不同以往的内容，做了许多新的尝试。\n\n2006年，与华纳唱片合约到期，签约EMI。从2002-2006年，连续5年拿下全国最受欢迎女歌手奖（1金3银1铜）），这些均为女歌手之最。\n\n2007年，3月发行第十张全新国语专辑《逆光》，再次创下了国语女歌手之最高记录。\n\n2008年，受邀参与演唱了北京奥组委推介的四首奥运会官方歌曲（北京2008年奥运会暨残奥会火炬接力主题歌《点燃激情•传递梦想》，奥运电影《一个人的奥林匹克》主题曲《站起来》，奥运纪念歌曲《再看一眼》，北京2008年奥运会倒计时100天主题曲《北京欢迎你》），为中国港台及海外女歌手之最，并参与奥运会闭幕式演出，在压轴歌曲《远方的客人请你留下来》中，作为海外华人唯一的代表参与演唱。奥组委文化活动部处长王平久与燕姿见面，感谢燕姿对奥运的支持，燕姿参加了北京奥运会倒计时100天和倒计时10天的央视晚会、奥运圣火境内首传地三亚市的文艺庆祝活动。\n\n2011年3月加盟滚石移动美妙音乐推出暌违四年的作品--第十一张全新国语专辑《是时候》，重回乐坛。\n\n2014年2月27日，发行专辑《克卜勒》。\n\n截至2015年，孙燕姿在大型体育场举办的个人售票演唱会达到31场，位列华语女歌手中历史第二（前三为张惠妹/孙燕姿/王菲）。'),(16,'杨宗纬','/singer_pic/杨宗纬.png','杨宗纬（Aska Yang），1978年4月4日生于中国台湾桃园市，中国台湾歌手。2007年参加第一届《超级星光大道》歌唱选秀节目，以独特唱腔和强烈渲染力的催泪歌声撼动人心，并获选为第一届“人气王”。2008年发行首张个人专辑，之后经历合约问题，蛰伏三年重新出发。\n\n演艺经历\n\n2007年，杨宗纬参加台湾歌唱选秀节目《超级星光大道》，并进入前十名；2007年11月，签约许安进。\n\n2008年1月，杨宗纬发行首张个人EP《鸽子》，以7万张位居台湾地区上半年唱片销量排行榜第一位；同年5月，只发行过一张唱片的杨宗纬登上台北小巨蛋举行个人演唱会。2008年下半年开始和许安进有摩擦，开始长达两年的合约官司。2008年7月，杨宗纬获邀在第19届台湾金曲奖流行音乐类颁奖典礼献唱歌曲；10月，杨宗纬献唱第43届台湾电视金钟奖；11月，在新加坡金曲奖上夺得包括“最受欢迎男歌手”在内的5个奖项。\n\n2009年1月，单曲《洋葱》获得台北之音Hit Fm年度百首单曲票选冠军；11月，杨宗纬获邀在金马奖颁奖典礼演唱组曲，这是他第四度站上三金舞台，更是首位分别受邀在金曲奖、金钟奖和金马奖颁奖典礼上献唱的歌手。\n\n2010年1月，合约官司落幕；同年6月杨宗纬与经纪人葛福鸿签约，并得到华语音乐教父李宗盛的赏识，担任其专辑制作人；7月15日，环球唱片替杨宗纬举办加盟仪式。\n\n2011年8月26日发行第二张个人专辑《原色》，在台湾的G-music风云榜两度获得冠军；专辑《原色》与主打歌《怀珠》分别获得中华音乐人交流协会的“十大专辑”和“十大单曲”。2012年12月，参加东方卫视《梦圆东方跨年晚会》的直播，与郭一凡、霍尊、孙伯纶组成男生情歌小组唱，用串烧的形式唱完自己的代表作。\n\n2013年3月29日，杨宗纬与制作人李宗盛、吴青峰、伍家辉等人合作，推出第三张个人专辑《初爱》，台湾与内地同步发行，并于4月19日在北京举办内地首场新专辑签唱会；参加内地综艺节目《我是歌手》，获得总决赛第三名。\n\n2014年，参加深圳卫视《金钟奖中国音超》节目，凭借英文歌曲《True Colors》与金志文并列男子组金奖。\n\n2015年1月1日湖南卫视跨年演唱会零点过后，杨宗纬压轴登台献唱《匆匆那年》，成为亿万中国人2015年第一首歌，演绎出与原唱王菲完全不一样的感怀，在辞旧迎新之际，这份怀旧感，迅速席卷微博引发无数人评论，各大视频网站都第一时间出现相关搜索。4月3日杨宗纬获邀在湖南卫视《我是歌手2015年巅峰会》倾情演绎《长镜头》，成为继《空白格》、《流浪记》后另一一夜爆红的代言。8月16日，以“普罗米修斯”身份加盟江苏卫视节目《蒙面歌王》，演唱了4首风格回异且相当冷门的歌曲-《看穿》《跟着你到天边》《红尘来去一场梦》《但是又何奈》，改编后的杨式版本完全不同于原唱，令人印象深刻。12月12日起杨宗纬首次《带一首诗来》世界巡回演唱会，首站正式在上海梅赛德斯-奔驰文化中心开唱，此巡回演唱历经北京（2015年12月）、广州（2016年1月）、福州（2016年1月）、杭州（2016年4月）等中国大陆各地城市举办。12月31日，湖南卫视跨年演唱会跨越零点-杨宗纬献唱当年度叫好又叫座的电影《夏洛特烦恼》最暖心插曲《一次就好》。\n\n2016年1月，网络平台龙珠音乐直播现场，杨宗纬挑战不修音LIVE演唱《一次就好》《初爱》《其实都没有》《底细》《空白格》。年4月，参加江苏卫视大型推理神秘音乐秀《看见你的声音》，为第三期之嘉宾。5月，参加湖南卫视大型互动音乐综艺节目《我想和你唱》，担任第三期之嘉宾，与观众票选之素人合唱《空白格》及《一次就好》。'),(17,'五月天','/singer_pic/五月天.png','五月天，台湾摇滚乐团，由乐队团长兼吉他手怪兽（温尚翊）、主唱阿信（陈信宏）、吉他手石头（石锦航）、贝斯玛莎（蔡升晏）和鼓手冠佑（刘谚明）组成，前身为“So Band”乐团，在1997年3月29日更名为“五月天”。至2016年，四次拿下\"台湾金曲奖\"和“最佳乐团奖”。[1] \n1999年，发行首张专辑《第一张创作专辑》。[2] 2000年7月7日，发行了第二张创作专辑《爱情万岁》。2001年7月6日，推出暂别歌坛之作第三张创作专辑《人生海海》。2003年11月11日，发行第四张专辑《时光机》。2004年11月5日，推出第五张专辑《神的孩子都在跳舞》。2005年8月，推出精选辑《知足Just My Pride最真杰作选》。2006年12月29日，发行第六张专辑《为爱而生》。2008年10月23日，发行第七张专辑《后青春期的诗》。2011年12月16日，发行第八张专辑《第二人生》。2016年7月21日，发行第九张专辑《自传》。'),(18,'朴树','/singer_pic/朴树.png','朴树，本名濮树，1973年11月8日出生于江苏南京，成长于北京，中国内地男歌手。\n1993年考取首都师范大学英语系，1994年放弃首都师范大学学业，开始音乐创作。1996年10月签约麦田音乐，并录制首支单曲《火车开往冬天》；1999年1月发行首张音乐专辑《我去两千年》并获得中央人民广播电台中国流行歌曲榜最佳新人奖 和东方风云榜最佳新人奖等多个奖项；2002年出演电影《那时花开》；2003年11月发行专辑《生如夏花》。\n2013年10月26日首次在北京举办演唱会。2014年7月为电影《后会无期》创作献唱主题曲《平凡之路》，该歌曲获得第51届台湾电影金马奖最佳原创电影歌曲奖。2014年10月11日出席金鹰节颁奖晚会 。2014年12月31日出席江苏卫视新年演唱会，这是他回乡的首秀。2015年12月31日到南京参加江苏卫视跨年演唱会，演唱《好好地》及《生如夏花》，并与范玮琪合唱经典曲目《那些花儿》。'),(19,'张杰','/singer_pic/张杰.png','张杰\n男，四川成都人，中国内地流行男歌手。\n\n2004年参加选秀节目《我型我秀》，以成名曲《北斗星的爱》出道。\n\n2004年，张杰参加了《我型我秀》选秀节目。经历重重选拔，最后凭借着与苟伟合作的原创歌曲《北斗星的爱》获得年度总冠军，签约了上腾娱乐。\n\n2005年春季，张杰推出了他的首张专辑《第一张》，并凭借成名曲《北斗星的爱》获得全球华语歌曲排行榜最受欢迎新人奖、TVB全球华语歌曲金曲榜最佳男新人金奖等多个奖项。\n\n2006年，张杰发行了第二张专辑《再爱我一回》，且首次参与影视，担任电影《化学反应》主演之一。此间，他的经纪公司进行了大幅度人事调动，于是张杰在公司的处境得到了360度的大转变。他的经纪人被无故辞退，从此他成了一个没有经纪人的艺人。\n\n2007年，张杰给经纪公司发了一封解约函，并参加了《快乐男声》比赛，获得总决赛第四名的成绩。同年，张杰推出首张EP《最美的太阳》，仅以4首歌曲，突破了10万销量。\n\n2008年，张杰在北京举办首场个人演唱会。并于同年10月推出专辑《明天过后》。\n\n2009年11月2日，张杰发行专辑《穿越三部曲》。\n\n2010年，张杰推出专辑《这，就是爱》，并开始将“It\'s love 这就是爱”作为一年一度个人生日演唱会品牌。同年11月28日获得韩国M-net亚洲音乐大赏（Mnet Asian Music Awards）——“亚洲之星”奖（Best Asian Artist）。\n2011年9月26日，张杰与谢娜在香格里拉举行婚礼。\n\n2012年，张杰发行首张精选专辑《One Chance张杰新歌+精选》和首张翻唱专辑《那些和我们打过招呼的爱情》。\n\n2013年，张杰登上了央视舞台。同年6月赴美国伯克利音乐学院进修音乐，游学归国后，11月，张杰第十场个人演唱会“It\'s Love 这就是爱”在广州国际体育演艺中心开唱，12月底推出第十张专辑《爱，不解释》。\n\n2014年1月，补位参加《我是歌手第二季》，总成绩第三。2014年9月，开启“为爱逆战”巡回演唱会。现赴美录制新专辑。'),(20,'周杰伦','/singer_pic/周杰伦.png','周杰伦\n2001年初，周杰伦发行首张专辑《Jay》，成功让台湾的歌星们大跌眼镜，在人们还没有完全记住周杰伦这个名字的时候，9月20日他带来了个更为天马行空的专辑《范特西》，周杰伦也凭借这张专辑成功打开了东西南亚市场。\n\n2003年7月，全亚洲超过50家电台定7月16日为周杰伦日，同步首播新专辑《叶惠美》中的主打歌曲《以父之名》。\n\n2003年《东风破》发行，周杰伦被华语音乐传媒大赏评为最佳作曲人。\n\n2004年周杰伦以《龙拳》亮相春晚 ；2005年6月23日主演处女作《头文字D》上映，同年获得香港电影金像奖最佳新人奖。\n\n2007年4月，杰威尔音乐有限公司成立。\n\n2008年周杰伦在春晚演唱《青花瓷》；同年《青花瓷》歌词出现在山东、江苏两省的高考试题中，引起热议。1月10日，周杰伦自导自演的电影《不能说的秘密》在韩国上映。[2月16日，在日本武道馆连开两场演唱会，成为继邓丽君、王菲之后第三位在武道馆开唱的华人歌手，演唱会上演唱的中国风歌曲《千里之外》《霍元甲》受到日本Fans的欢迎； 11月，凭借《我很忙》专辑获得每年在摩洛哥举办的“世界音乐大奖”所颁发的“中国区畅销专辑” 。\n\n2009年12月，美国CNN评选\"亚洲最具影响力的25位人物”，周杰伦入选，并被CNN网站形容为“非凡艺人”。\n\n12月，国际小行星命名中心批准，正式将编号为257248的小行星命名为周杰伦星，这颗小行星是由两岸天文爱好者于2009年合作发现的，周杰伦创作以这颗小行星为题材的歌曲《爱的飞行日记》 ；导演电视剧《熊猫人》上映 。\n\n2011年，周杰伦以《青蜂侠》进军好莱坞，而且是台湾地区首位进军好莱坞的艺人。\n\n2012年12月28日，周杰伦发行的全新专辑《十二新作》。\n\n2013年6月1日周杰伦配音《十万个冷笑话》第9、10集太乙真人；7月11日，周杰伦信主后首部自导自演的新片《天台爱情》首映。该片也受张艺谋的好评。\n\n2014年6月，媒体报道《蜗牛》有望被收录进修订的语文出版社版小学语文课本三年级的延伸阅读中，而早在2005年《蜗牛》就曾被收入上海中学生爱国主义歌曲推荐目录。 12月10日，第十三张专辑专辑《哎呦，不错哦》于iTunes与实体唱片同步预购。\n\n2015年，加盟第四季《中国好声音》担任导师。7月17日，周杰伦变“小公举”，《好声音4》首播后不到一个小时，“周杰伦小公举”的话题拿下微博热搜榜冠军。 '),(21,'汪苏泷','/singer_pic/汪苏泷.png','汪苏泷\n2010年11月19日，发布首张个人专辑《慢慢懂》，并与母校沈阳音乐学院合作举办发布会 。\n\n2012年3月，加盟美妙音乐。8月，第二张专辑《万有引力》发布，专辑中 与By2组合合唱歌曲《有点甜》，该歌曲同时成为热门游戏《萌三国》主题曲与偶像剧《借用一下你的爱》插曲。汪苏泷凭此曲打入台湾市场，并蝉联台湾门户音乐网站KKBOX歌曲榜前三名。同年入围台湾HITFM颁奖典礼最佳新人。汪苏泷为专辑歌曲《第一首情歌》，拍摄同名微电影 。9月至10月，全国签售巡回（9月15日沈阳、9月16日南京、9月22日石家庄站、9月23日武汉站等）。11月，与好友By2于武汉、广州两地举办售票演唱会。12月29日于台湾小巨蛋体育馆中国歌曲排行榜颁奖典礼表演歌曲《不分手的恋爱》。12月31日，出席央视跨年晚会，与好友徐良表演献唱《后会无期》 。\n\n2013年1月，为网游《御龙在天》创作推广单曲《御龙镜中隐》。11月，代言网游《桃园》，并创作同名主题曲《桃园》。8月举办台湾歌迷见面会，好友安心亚出席力挺。\n\n2014年4月16日，汪苏泷与经纪公司美妙音乐解约，并与好友徐良创建大象音乐 。5月，与好友徐良成立大象音乐。发布单曲《晴》。6月，宣布成立个人潮牌SU2 。6月25日发行专辑《传世乐章》。10月12日发行专辑《登陆计划》。'),(22,'张碧晨','/singer_pic/张碧晨.png','张碧晨\n1989年9月10日出生于中国天津，中国女歌手。\n2013年，张碧晨以韩国女子组合“Sunny days ”出道，并获得“K-POP ”世界庆典“最优秀奖”。\n\n2014年7月，张碧晨参加第三季《中国好声音》，以一首《她说》进入那英组，并于10月7日以一首《时间去哪儿了》荣获第三季《中国好声音》全国总冠军，成为《中国好声音》首位女冠军。'),(23,'李健','/singer_pic/李健.png','李健\n从水木清华的兢兢业业,到水木年华的合合分分,从名噪校园的音乐王子,到纵身歌坛的实力唱将,李健优雅、内敛而又极富内涵。\n\n2003年8月推出首张个专辑《似水流年》专辑中所有作曲和编曲都由李健一人完成,因此风格明显。 \n\n2003年,发布了个人全创作音乐专辑《似水流年》、《为你而来》,专辑更加清晰了李健“唯美主义音乐诗人”的形象,而婉约派的音乐曲风更加突显出了李健独特的儒雅气质。坚持心底最为真实的情感,坚持唱出最为纯净、朴实的声音,李健孤独的行走在了音乐创作的路上,但是孤独并不能代表落寞。\n\n2005年1月推出自己单飞后的第二张唱片《为你而来》,灵感来源于深冬茫茫的开阔雪地,天气虽然寒冷,却有暖阳照耀在身上,温暖的感觉让心情也开朗起来。\n\n2006年的channel[V]全球华语流行音乐榜中榜,他荣获内地最佳创作型歌手奖,这是对李健最大的肯定,他也与郑钧、许巍、朴树被誉为“内地唱作四杰”。\n\n2015年3月27日，获得湖南卫视《我是歌手》第三季总决赛亚军。'),(24,'胡彦斌','/singer_pic/胡彦斌.png','胡彦斌\n中国内地男歌手、音乐制作人。1999年参加“上海亚洲音乐节新人歌手大赛”在中国赛区获得银奖，总决赛获得“最高最具潜质大奖”，受到小室哲哉的赞赏，与步升音乐签下了合约。\n\n2000年以17岁的年龄推出个人首支单曲《玛丽莲梦露》，并配唱中国动漫电视剧《我为歌狂》相关歌曲，凭借该片音乐大碟60万的销量成为学生一族喜爱的歌手。\n\n2001年，推出个人创作单曲《和尚》，歌曲小样在台湾圈内流传。2002年7月4日，正式推出个人第1张专辑《文武双全》，成为首位在内地、香港、台湾推出个人专辑的国内歌手，至2002年年底在内地市场中销量突破25万张。\n\n2005年7月，在北京组建耗资近7位数人民币的录音棚“一极录音工作室”，何炅、古巨基成为前两位抢先录音的艺人 。\n\n2006年3月，发行第4张创作专辑《音乐密码》，同时他也成为上海东方电视台Channel音的春季形象代言人，艺人代言电视频道尚属国内首例；3月，代言广州本田第4个品牌思迪（CITY），并演唱该广告主题曲《In City》；4月，首次个人迷你演唱会在上海艺海剧院举行 ；7月发行演唱会专辑《一呼天下音演唱会》。\n\n2007年，为中国首部3D动漫《秦时明月》系列创作和演唱主题曲《月光》， 并担任该剧第一部的音乐总监，制作大量配乐 。\n\n2008年11月15日，在台湾举行“胡彦斌2008男人歌演唱会”，成为第一位在台北国际会议中心举行售票演唱会的内地艺人，演唱会上座率达9.5成。\n\n2012年7月21日参加“2012世界旅游小姐”中国江西年度冠军总决赛颁奖晚会嘉宾。2013年12月，在江苏卫视“全能星战”节目总决赛夺冠 。\n\n2014年1月，创立个人独立工作室“太歌文化工作室”发行第九张个人专辑《太歌》。4月4号，助唱韩磊成为《我是歌手》冠军；11月参加腾讯视频原创音乐真人秀《Hi歌》。\n\n2015年1月2日，参与湖南卫视节目《我是歌手第三季》，在比赛第二轮第二场淘汰赛被淘汰，后通过复活进入总决赛。'),(25,'洛天依','/singer_pic/洛天依.png','洛天依是以Yamaha公司的VOCALOID3语音合成引擎为基础制作的全世界第一款VOCALOID中文声库和虚拟形象。洛天依的声库于2012年7月12日在第八届中国国际动漫游戏博览会（CCG EXPO）上正式推出。洛天依的音源是国内配音演员山新，形象由“MOTH”初稿设计，经ideolo改编整合后完成。 洛天依是一个情感丰富，看起来有点冒失和天然的15岁少女。2016年2月登上湖南卫视小年夜春晚，与杨钰莹合唱《花儿纳吉》，成为首位登上中国主流电视媒体的虚拟歌手。随后洛天依又登上2016第十一届金鹰节互联盛典、2016－2017湖南卫视跨年晚会。'),(26,'好妹妹','/singer_pic/好妹妹.png','好妹妹乐队，中国内地民谣乐队，由秦昊、张小厚组成。\n2010年，好妹妹乐队正式成立 。2012年，推出乐队首张音乐专辑《春生》 。2013年，推出乐队第二张音乐专辑《南北》。2014年，获得“MusicRadio中国TOP排行榜”年度最佳乐团；同年，推出乐队第三张音乐专辑《说时依旧》 。2015年，推出乐队第四张音乐专辑《西窗》 。2016年，获得“第16届音乐风云榜年度盛典的”年度最佳组合及乐队奖；同年，举办了“自在如风”全国体育场巡回演唱会 。2017年4月7日，推出乐队第五张音乐专辑《实名制》 。'),(27,'苏打绿','/singer_pic/苏打绿.png','苏打绿\n苏打绿（Sodagreen），中国台湾流行演唱团体，由吴青峰、史俊威、谢馨仪、龚钰祺、刘家凯、何景扬组成。\n\n2001年由国立政治大学的学生组成，2001年5月，在台湾金旋奖上，演唱一首《窥》 。2003年确立了了六人阵容。同年，参加了政大第18届金旋奖，以当时唯一练习的创作曲《窥》演出，获得乐团组最佳人气奖。\n\n2004年5月，苏打绿发行第一张单曲《空气中的视听与幻觉》，开始活跃于华语流行音乐乐坛 。2004年《空气中的视听与幻觉》单曲发行、发行《飞鱼》单曲、发行《Believe in music》Live EP ，并获得该年度的海洋音乐祭评审团大奖、百万乐团大赛网路人气奖、最佳主唱奖 。2005年，苏打绿发行了《SodaGreen》。\n\n2006年，苏打绿发行专辑《小宇宙》。\n\n2013年，苏打绿发行专辑《秋：故事》，该专辑成为2013年度iTunes Store最受欢迎专辑 。\n\n2015年秋天初现端倪之时，苏打绿毫无预警的预告冬专辑名称——《冬未了》，专辑将在柏林发行。'),(28,'后弦','/singer_pic/后弦.png','后弦\n2005年9月，签约东升国际传媒，发行首张全创作专辑《古玩》，两个月专辑销量即突破十万张。12月16日，后弦举办\"龙腾北京\"歌友会，中国音像评价网与龙腾音乐榜联合颁发给后弦“销量双白金”大奖。并凭此专辑获得《亚太音乐榜》“最具人气新人奖”。\n\n2006年应邀参加清华大学首部校园原创音乐剧《花开的声音》，饰演花房少年。5月，《音乐周刊》五周年生日会，担任嘉宾并现场演唱歌曲。6月，担任江西南昌校园歌曲评委。7月，荣获2006“金号奖-金牌歌手提名奖。 10月，推出第二张全创作专辑《九公主》EP。\n\n2008年11月，推出第三张全创作专辑《东方不败》，第四次获得《音乐先锋榜》最佳先锋创作歌手奖。\n\n2009年4月，在北京星光现场音乐厅举办第一场个人mini演唱会。5月，在北京做客QQ音乐梦想课堂。6月，在北京交通大学录制《青春万岁》。7月，发行DVD《谢谢你的爱2009.后弦417北京演唱会》。8月，签约北京天浩盛世音乐文化公司。12月10日，推出签约天浩盛世的首波主打单曲《娃娃脸》。12月25日，推出单曲《你还欠我一个拥抱》，与SARA合唱。\n\n2010年1月，发行第四张全创作专辑《娃娃脸》EP，推出新歌“幻想系三部曲”之《花甲》。2月，参加十大快乐家庭颁奖礼和雪碧原创音乐榜颁奖。4月，发布单曲《白色恋习曲》；担任花儿朵朵合肥唱区评委。5月，担任快乐男声昆明唱区预选赛评委。8月，百度首发中国风《苏州城外的微笑》。9月，参加BTV北京中秋节晚会。10月，百度首发都市对唱《下一站吻别》，与米娜合唱。\n\n2013年1月，参加音乐先锋榜2012年度颁奖典礼，现场演唱《杜老师》 。3月，发布单曲《我知道你也很想念》。4月，《我知道你也很想念》MV首发。5月，参加安徽宣城麦莎之夜音乐盛典和北京科技大学举办的“吾肆放歌”第十五届校园歌手大赛评委 。6月，参加“2013MusicRadio音乐之声校园行”南昌站[17] 。7月，参加广州大学的中国音乐金钟奖酷狗校园巡回季第二站 。'),(29,'金莎','/singer_pic/金莎.png','金莎\n2005年4月23日，发布第一张个人专辑《空气》，半年内销量突破20万张，成为新人气歌手。当中歌曲《被风吹过的夏天》走红，它是林俊杰创作的第一首男女对唱歌曲，创作灵感来自于金莎在三亚拍摄广告的一段感情邂逅。\n\n2006年5月28日发布第二张个人专辑《不可思议》。\n\n2007年3月9日，海蝶音乐将金莎从中国大陆推向台湾市场，推出精选辑《不可思议金选》，当中集合了之前发售的两张专辑中部分曲目。\n\n2007年5月30日，在中国大陆发行第三张个人专辑《换季》。\n\n2008年，向戏剧方面发展，先后参与《幸福的眼泪》《大城市小浪漫》两部偶像剧，分别担任女主角。\n\n2009年，回到歌坛，在情人节发行单曲《这种爱》。出演电视剧《神话》中吕素一角，演技更加得到肯定。同时因自创并演唱其中插曲《星月神话》而再次走红。\n\n2010年2月4日发行单曲《最近好吗》 。参加湖南卫视主办的《一呼百应》，并且挑战成功，获得了4038以上名观众到场观看。（挑战人数为：4000人）2010年10月15日发行专辑《星月神话》。\n\n2011年参演由导演谭华指导的《大人物》，饰演角色幺妹。2012年拍摄《王的女人》、《柠檬》、《那是一个春天》。发布单曲《梦千年之恋》。\n\n2013年做为女一号与谭杰希、立威廉共同主演电影《柠檬》。\n\n2014年5月12日 受邀参加法国第67届戛纳电影节。9月24日，发布创作单曲《想听听你说谎》11月10日 ，成功创立香水品牌“Love&Wish”（爱唯施）。'),(30,'胡夏','/singer_pic/胡夏.png','胡夏\n2009年9月，因为参加“奔向北京成就音乐梦想”比赛，冠军争夺赛，凭借积分赛、冠军赛、简讯投票三部分全面领先优势获得冠军，成为唯一在超星中获得冠军的内地选手，赢得了 100w台币的奖金以及一张和sony的唱片合约。\n\n2010年5月受邀担任“American Idol 美国偶像”总冠军Kelly Clarkson“无可救药 All I Ever Wanted”世界巡回演唱会台湾场的暖场嘉宾12月发行第一张个人专辑《胡爱夏》，首周即空降G榜冠军，主打歌《爱夏》MV点播冲上第三名。\n\n2011年，为电影《那些年，我们一起追的女孩》献唱主题曲《那些年》，获第48届金马奖最佳原创电影歌曲提名，《那些年》在台湾KKBOX等重量级音乐榜单上称霸榜首两个月，MV在国外视频网站Youtube点击量超过3000万，荣获2011年度香港叱吒乐坛流行榜颁奖典礼“专业推荐叱吒十大”第二名及“叱吒乐坛我最喜爱的歌曲大奖”两项大奖，成为史上获得该奖项的最年轻歌手，也是继天王周杰伦后，第二位获奖的国语歌手，同时获得第三十四届十大中文金曲第八名以及优秀流行国语歌曲奖金奖。\n\n2012年与刘诗诗及谢楠等人共同演出电影《伤心童话》，出演男主角刘同； 12月在中歌榜颁奖礼发布会上，入围中歌榜第三季度金曲（《燃点》）和第四季度金曲（《伤心童话》）2项提名。8月23日，参与新城电台台庆，胡夏是内地唯一出席的艺人。\n\n2013年担任香港新生代人气歌手邓紫棋“G.E.M香港红磡演唱会”嘉宾；1月在音乐先锋榜拿下“网络最受欢迎男歌手”、“2012十大金曲”、以及“2012最佳K歌金曲”3项大奖； 6月20日发行专辑《傻瓜探戈》。\n\n2014年被影片《同桌的你》监制高晓松钦点演唱电影同名主题曲。'),(31,'动力火车','/singer_pic/动力火车.png','动力火车\n动力火车为1997年于台湾窜起的摇滚流行歌曲合唱团体。由尤秋兴与颜志琳两位台湾原住民歌手组成。\n\n1996年，在台湾PUB驻场的乐队Power Station被上华唱片发掘，起中文名动力火车，在PUB英雄会在合辑中以一曲《热情的沙漠》崭露头角。\n\n1997年发行首张专辑《无情的情书》，首张专辑便狂销70万张 ，主打歌《无情的情书》、《不甘心不放手》、《除了爱你还能爱谁》。同年拍摄短剧《动力火车音乐爱情故事》。\n\n1998年，发行第二张专辑《明天的明天的明天》，并在台湾展开PUB巡回15场演唱。并发行首张演唱会专辑《LIVE暴风现场》。此外，还为电视剧《还珠格格》演唱了主题曲《当》，在大陆颇受欢迎。\n\n1999年，发行第四张专辑《背叛情歌》。 同年12月，发行第五张专辑《再见我的爱人》。\n\n2000年6月发行出道以来第一张精选集《百万全纪录》，除了有过去专辑中的超级主打歌之外，还收录了两首全新的歌曲《第二次分手》和《不要再说爱我》。\n\n2001年，发行第七张专辑《忠孝东路走九遍》。\n\n2002年，发行第八张专辑《UPS不断电》。同年10月，发行第九张专辑《man》。年底，尤秋兴加入台视东风连续剧《名扬四海》演出，饰演男主角陈峰。\n\n2004年，发行低十张专辑《就是红光辉全记录》。\n\n2009年，发行第十一张专辑《继续转动》，主打歌《继续转动》的曲风是两人过去较少演唱的Nu-Metal曲风，动力火车首度尝试 RAP，给人耳目一新的感觉，被选为职棒20年指定主题曲。第二波主打歌《爱到疯癫》是ELLA和HEBE的手笔，2001年，秋兴为刚出道的SHE谱写一曲《冰箱》，而今可谓投桃报李。\n2011年动力火车首次登上大银幕，在电影《钢琴木马》中出演杀手。\n\n2013年，动力火车发行最新专辑《光》。首波思恋主打《艾琳娜》由金曲大 作词家武雄为动力火车量身创作。\n\n2014年，动力火车首次到美国休斯顿举办“莫忘初衷继续转动”演唱会。加入湖南卫视《我是歌手》第二季第五轮比赛。');
/*!40000 ALTER TABLE `singer_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_phone` char(11) NOT NULL,
  `user_nickname` varchar(20) DEFAULT NULL,
  `pwd` varchar(16) DEFAULT NULL,
  `sex` varchar(2) DEFAULT '保密',
  `birthday` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `image` varchar(50) DEFAULT 'user_pic/default/user.jpg',
  `attention` int(11) DEFAULT '0',
  `Fan` int(11) DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000011 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1000001,'17631109610','空白','zhulijiange','男','1996-10-03','781110910@qq.com','user_pic/default/user.jpg',0,0),(1000002,'13321186815','13321186815','chengzhengwu','保密','1995-12-16','teanotcool@163.com','user_pic/default/user.jpg',0,0),(1000003,'123','123','123','保密','1770-01-01','','user_pic/default/user.jpg',0,0),(1000004,'1234','1234','1234','保密','1770-01-01','','user_pic/default/user.jpg',0,0),(1000005,'123456','123456','123456','保密','1770-01-01','','user_pic/default/user.jpg',0,0),(1000006,'123456','123456','123456','保密','1770-01-01','','user_pic/default/user.jpg',0,0),(1000007,'6666','6666','6666','保密','1770-01-01','','user_pic/default/user.jpg',0,0),(1000008,'3333','3333','3333','保密','1770-01-01','','user_pic/default/user.jpg',0,0),(1000009,'123456789','123456789','123456789','保密','1770-01-01','','user_pic/default/user.jpg',0,0),(1000010,'18434163544','18434163544','123456','保密','1770-01-01','','user_pic/default/user.jpg',0,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_sheet`
--

DROP TABLE IF EXISTS `user_sheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_sheet` (
  `user_id` int(11) NOT NULL,
  `sheet_id` int(11) NOT NULL AUTO_INCREMENT,
  `sheet_name` varchar(20) NOT NULL,
  PRIMARY KEY (`sheet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_sheet`
--

LOCK TABLES `user_sheet` WRITE;
/*!40000 ALTER TABLE `user_sheet` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_sheet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-27 16:06:10
