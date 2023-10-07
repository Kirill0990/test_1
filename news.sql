-- MySQL dump 10.13  Distrib 8.1.0, for macos13.3 (x86_64)
--
-- Host: localhost    Database: test_1
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add post',7,'add_post'),(26,'Can change post',7,'change_post'),(27,'Can delete post',7,'delete_post'),(28,'Can view post',7,'view_post'),(29,'Can add kv store',8,'add_kvstore'),(30,'Can change kv store',8,'change_kvstore'),(31,'Can delete kv store',8,'delete_kvstore'),(32,'Can view kv store',8,'view_kvstore');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$ucfDm9nwWCmMjn4ZNOhKP1$j/e0UjutMJ0DjpJ65BmcRMBfKugmmJPhbhRL+hP+Qbs=','2023-10-06 11:15:07.072140',1,'kirill','','','',1,1,'2023-10-06 11:14:27.733262');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-10-06 11:25:46.654903','1','Post object (1)',1,'[{\"added\": {}}]',7,1),(2,'2023-10-06 11:26:49.083587','2','Post object (2)',1,'[{\"added\": {}}]',7,1),(3,'2023-10-06 12:17:12.887134','1','Post object (1)',2,'[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430\"]}}]',7,1),(4,'2023-10-06 12:17:39.756104','2','Post object (2)',2,'[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430\"]}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'posts','post'),(6,'sessions','session'),(8,'thumbnail','kvstore');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-10-06 08:27:16.995558'),(2,'auth','0001_initial','2023-10-06 08:27:17.104761'),(3,'admin','0001_initial','2023-10-06 08:27:17.313634'),(4,'admin','0002_logentry_remove_auto_add','2023-10-06 08:27:17.369935'),(5,'admin','0003_logentry_add_action_flag_choices','2023-10-06 08:27:17.382183'),(6,'contenttypes','0002_remove_content_type_name','2023-10-06 08:27:17.433737'),(7,'auth','0002_alter_permission_name_max_length','2023-10-06 08:27:17.461193'),(8,'auth','0003_alter_user_email_max_length','2023-10-06 08:27:17.483840'),(9,'auth','0004_alter_user_username_opts','2023-10-06 08:27:17.502548'),(10,'auth','0005_alter_user_last_login_null','2023-10-06 08:27:17.540085'),(11,'auth','0006_require_contenttypes_0002','2023-10-06 08:27:17.542364'),(12,'auth','0007_alter_validators_add_error_messages','2023-10-06 08:27:17.552840'),(13,'auth','0008_alter_user_username_max_length','2023-10-06 08:27:17.595843'),(14,'auth','0009_alter_user_last_name_max_length','2023-10-06 08:27:17.632651'),(15,'auth','0010_alter_group_name_max_length','2023-10-06 08:27:17.648583'),(16,'auth','0011_update_proxy_permissions','2023-10-06 08:27:17.657762'),(17,'sessions','0001_initial','2023-10-06 08:27:17.675059'),(18,'auth','0012_alter_user_first_name_max_length','2023-10-06 10:02:14.733459'),(19,'posts','0001_initial','2023-10-06 10:02:14.751355'),(20,'thumbnail','0001_initial','2023-10-06 11:41:02.525410'),(21,'posts','0002_post_image','2023-10-06 12:14:35.371448');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `django_session` VALUES ('5qpzefu28uwkn51puys7ancgqicidptk','.eJxVjEEOwiAQRe_C2pBC24Fx6d4zEIaZStVAUtqV8e7apAvd_vfef6kQtzWHrckSZlZnZdTpd6OYHlJ2wPdYblWnWtZlJr0r-qBNXyvL83K4fwc5tvytx86hBwJGFh_FO4FkWHqXGAgtkB-j0DQgsrW9t2YSlIE9W7BIHan3B_SBOFo:1qoinT:KiJ4upFeTon3XIIr9lLIxSXZMpOowSZ-_k4vJZnbq-o','2023-10-20 11:15:07.078081');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_post`
--

DROP TABLE IF EXISTS `posts_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_post`
--

LOCK TABLES `posts_post` WRITE;
/*!40000 ALTER TABLE `posts_post` DISABLE KEYS */;
INSERT INTO `posts_post` VALUES (1,'Банки сократили кредитование населения в сентябре','Рынок кредитования охладился в сентябре: за первый месяц осени банки выдали гражданами кредитов на 1,73 трлн руб., что на 4,04% меньше показателей августа (1,8 трлн руб.), следует из предварительных данных экспресс-мониторинга аналитической компании Frank RG.\r\nНаибольшее снижение было в сегменте кредитов наличными. Банки выдали 2,9 млн ссуд на 579,2 млрд руб. – это на 10% меньше августа по количеству и почти на четверть по объему. Средняя сумма одного кредита снизилась на 14% до 196 100 руб. Помимо сезонного явления, повышения спроса из-за подготовки к новому учебному году в августе, сказалось опасение населения роста ставок, поясняет ведущий аналитик Frank RG Ксения Матенкова. Дополнительным фактором стало повышение ЦБ с 1 сентября надбавок к коэффициентам риска по необеспеченным потребительским кредитам, добавляет она.\r\nМакропруденциальные надбавки увеличивают нагрузку на капитал банка – чем они выше, тем больше запаса капитала требуется. Согласно новым требованиям, надбавки распространятся на все кредиты с полной стоимостью (ПСК; включает все затраты заемщика на его обслуживание, в том числе комиссии и расходы на страховку) от 25%, а также на заемщиков с показателем долговой нагрузки (ПДН; соотношение среднемесячных платежей заемщика по всем кредитам к среднемесячному доходу) от 50 и выше.\r\nСегмент автокредитования снижается второй месяц подряд: в сентябре выдачи сократились на 9% по объему и на 5% по количеству – до 143,5 млрд руб. и 98 300 штук соответственно. Впервые за восемь месяцев средний чек также показал снижение – на 2% до 1,46 млн руб. Падение в сегменте может быть связано с повышением стоимости авто, в том числе из-за повышения ставок утилизационного сбора с 1 августа, полагает Матенкова. Ставка утилизационного сбора индексируется в среднем в 1,7–3,7 раза на легковые автомобили (в зависимости от объема двигателя), в 2,5–3,4 раза на легкие коммерческие автомобили и в 1,7 раза на грузовые автомобили.\r\nВ POS-кредитовании (в точках продаж) выдачи упали не так сильно – на 0,28% до 46,2 млрд руб., а в количественном выражении даже подросли на 0,2% до 1,28 млн штук. Средний чек на такой кредит снизился по сравнению с августом на 0,48% до 36 100 руб.\r\nРосла в сентябре только ипотека. В сентябре граждане взяли 233 700 жилищных ссуд на 962,1 млрд руб. Это максимальный месячный результат за всю историю наблюдений с декабря 2013 г., следует из данных Frank RG. Но темпы прироста замедлились: объемы выросли на 12% (месяцем ранее было 31%), а количество – на 10% (26%). \r\nРост выдач мог оказаться сильнее, но вступившее в силу 20 сентября постановление об увеличении первоначального взноса по госпрограммам до 20% повлияло на возможность населения оформить ипотеку в третьей декаде сентября, говорит Матенкова. Вдобавок, с 1 октября ЦБ установил запретительные надбавки на капитал для выдачи рыночной ипотеки с низким первоначальным взносом (до 20%) и заемщикам с ПДН от 80%.','2023-10-06 11:24:35.000000','images/original-x00.jpg'),(2,'Нобелевскую премию мира присудили иранской правозащитнице','В комитете отметили, что ранее правозащитницу приговорили в общей сложности к 31 году лишения свободы и 154 ударам плетью. В настоящий момент она по-прежнему находится в тюрьме, подчеркивается в заявлении.\r\nНаргес Мохаммади 51 год. Она занимается правозащитной деятельностью с 1990-х гг. После окончания вуза Мохаммади работала инженером, а также обозревателем в различных газетах, поддерживающих идеи о реформах, уточнили в комитете. В 2003 г. стала сотрудничать с правозащитным центром «Защитники прав человека» в Тегеране, сейчас является его вице-президентом.','2023-10-06 11:26:45.000000','images/original-y8n.jpg');
/*!40000 ALTER TABLE `posts_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thumbnail_kvstore`
--

DROP TABLE IF EXISTS `thumbnail_kvstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thumbnail_kvstore` (
  `key` varchar(200) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thumbnail_kvstore`
--

LOCK TABLES `thumbnail_kvstore` WRITE;
/*!40000 ALTER TABLE `thumbnail_kvstore` DISABLE KEYS */;
INSERT INTO `thumbnail_kvstore` VALUES ('sorl-thumbnail||image||0fb10ee5ddd1fbca883f12f1ff479b9c','{\"name\": \"images/original-y8n.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [1024, 576]}'),('sorl-thumbnail||image||38f2ee8e4783a26334aa6976f1634c1a','{\"name\": \"cache/a3/db/a3db911a1cc9665131f0bdbc415d1903.jpg\", \"storage\": \"django.core.files.storage.filesystem.FileSystemStorage\", \"size\": [960, 339]}'),('sorl-thumbnail||image||3e2e2d15ed587f6105ae457d30628b81','{\"name\": \"cache/f4/12/f4120ffe8c2f58679398df2c9c0425d4.jpg\", \"storage\": \"django.core.files.storage.filesystem.FileSystemStorage\", \"size\": [960, 339]}'),('sorl-thumbnail||image||92c6712e6a3e23e318df9e7967986f07','{\"name\": \"images/original-y8n.jpg\", \"storage\": \"django.core.files.storage.filesystem.FileSystemStorage\", \"size\": [1024, 576]}'),('sorl-thumbnail||image||a2e7565e10950ef2c5c08fdeffd868c2','{\"name\": \"cache/53/ab/53ab8b6218d4defeb5f7fdb480e65cd1.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [960, 339]}'),('sorl-thumbnail||image||aaa71946f3b0c4369eed61b93f64c393','{\"name\": \"cache/78/12/78129dea6514b331a47fef800157a989.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [960, 339]}'),('sorl-thumbnail||image||bc8b78ca59f27b43ae9409c8a10a027b','{\"name\": \"images/original-x00.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [1024, 576]}'),('sorl-thumbnail||image||e09e215da1a798e8f946db636b3aaf07','{\"name\": \"images/original-x00.jpg\", \"storage\": \"django.core.files.storage.filesystem.FileSystemStorage\", \"size\": [1024, 576]}'),('sorl-thumbnail||thumbnails||0fb10ee5ddd1fbca883f12f1ff479b9c','[\"aaa71946f3b0c4369eed61b93f64c393\"]'),('sorl-thumbnail||thumbnails||92c6712e6a3e23e318df9e7967986f07','[\"38f2ee8e4783a26334aa6976f1634c1a\"]'),('sorl-thumbnail||thumbnails||bc8b78ca59f27b43ae9409c8a10a027b','[\"a2e7565e10950ef2c5c08fdeffd868c2\"]'),('sorl-thumbnail||thumbnails||e09e215da1a798e8f946db636b3aaf07','[\"3e2e2d15ed587f6105ae457d30628b81\"]');
/*!40000 ALTER TABLE `thumbnail_kvstore` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-07 12:27:15
