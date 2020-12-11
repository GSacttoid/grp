-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: grp
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `grp_article_board`
--

DROP TABLE IF EXISTS `grp_article_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_article_board` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(300) DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_step` int DEFAULT NULL,
  `re_level` int DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_article_board`
--

LOCK TABLES `grp_article_board` WRITE;
/*!40000 ALTER TABLE `grp_article_board` DISABLE KEYS */;
INSERT INTO `grp_article_board` VALUES (1,'N','board','김블로','<p>하하하하</p>\r\n','2020-11-06 10:59:25',2,'CffquFL1CR5sE9LkGwKncyUBMa3BK5zt.jpg','1.jpg','C://upload//article//',1,0,0),(2,'N','공지공지','김공지','<p>공지소아아ㅓ리머ㅑㅣ디ㅏㅎㅁ즣ㄷ미ㅑ허ㅣㅁㄱㄷ즈ㅠ힘댜규ㅣ므기힘덕해ㅑㅣㅁ덕허ㅐㅁㄷ겋ㅁ;ㄷㄱㅎ</p>\r\n','2020-11-06 11:03:06',2,'eC1wR9HRRDmDix0QYgWVjo4ZwNbBMbUx.png','stamp.png','C://upload//article//',2,0,0),(3,'N','우하하하하','김블루','<p>ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ</p>\r\n','2020-11-06 11:09:16',0,NULL,NULL,NULL,3,0,0),(4,'N','bbbbbbbbbb','bbbbb','<p>bbbbbbbbbbbbbbbbbbbbbbb</p>\r\n','2020-11-06 11:38:08',0,NULL,NULL,NULL,4,0,0),(5,'Y','공지','김블루','<p>ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ</p>\r\n','2020-11-06 11:51:40',0,NULL,NULL,NULL,5,0,0),(6,'N','우하하하하','김블루','<p>ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ</p>\r\n','2020-11-06 12:07:01',1,NULL,NULL,NULL,6,0,0),(7,'N','ㅇㅇㅇㅇㅇㅇㅇㅇ','김블루','<p>ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</p>\r\n','2020-11-06 12:07:10',0,NULL,NULL,NULL,7,0,0),(8,'Y','board','김블루','<p>ㅁㅇㄴㄻㅈㄷㄻㅈㅎㄷㅁ</p>\r\n','2020-11-06 12:09:11',0,NULL,NULL,NULL,8,0,0),(9,'Y','ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ','김블루','<p>ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</p>\r\n','2020-11-06 12:09:29',0,NULL,NULL,NULL,9,0,0),(10,'N','목ㅁ돈ㅁㄷ곤ㄷ고','김블루','<p>ㄴ던ㄱ선ㄱ선ㄱ서</p>\r\n','2020-11-06 12:13:54',0,NULL,NULL,NULL,10,0,0),(11,'N','ㄴㄷ공ㄴㄱ성것','김블루','<p>ㅇㄱ성ㄱ성ㄱ성거</p>\r\n','2020-11-06 12:14:01',1,NULL,NULL,NULL,11,0,0),(12,'N','ㅇㄹ헝ㄱ성ㄱ','김블루','<p>ㅏㅇ교ㅏㅇ쇼ㅏㅏ</p>\r\n','2020-11-06 12:14:09',0,NULL,NULL,NULL,12,0,0),(13,'N','ㅇㄱ송ㄱ서','김블루','<p>ㅇㄱ상쇼ㅏㄹ쇼ㅏ</p>\r\n','2020-11-06 12:14:13',0,NULL,NULL,NULL,13,0,0),(14,'N','ㄹ쇼ㅏㄹ쇼ㅏㄹ사ㅛㄽ','김블루','<p>ㄹ살쇼ㅏ</p>\r\n','2020-11-06 12:14:19',0,NULL,NULL,NULL,14,0,0),(15,'N','라ㅛㄹ살쇼','김블루','<p>ㅏㄹ쇼ㅏㄹ쇼ㅏㄽ</p>\r\n','2020-11-06 12:14:24',1,NULL,NULL,NULL,15,0,0),(16,'Y','ㄹ쇼ㅏㄹ쇼ㅏ','김블루','<p>ㄹ쇼ㅏㄹ쇼ㅏㄹ쇼ㅏ</p>\r\n','2020-11-06 12:14:31',0,NULL,NULL,NULL,16,0,0),(17,'N','ㄹ쇼ㅏㄹ쇼ㅏ','김블루','<p>ㄹ쇼ㅏㄹ쇼ㅏㄹ쇼ㅏ</p>\r\n','2020-11-06 12:14:36',0,NULL,NULL,NULL,17,0,0),(18,'N','ㄹ쇼ㅏㄹ쇼ㅏㄹ','김블루','<p>쇼ㅏㄹ쇼ㅏㄹ쇼ㅏㄹ쇼ㅏ</p>\r\n','2020-11-06 12:14:42',0,NULL,NULL,NULL,18,0,0),(19,'N','ㄹ쇼ㅏ뇬ㅁㄷ쇼ㅗㄴㄱ서','김블루','<p>엉쇼ㅏㅇ쇼ㅏ</p>\r\n','2020-11-06 12:14:47',0,NULL,NULL,NULL,19,0,0),(20,'N','ㄴㄷㄱㅎㄴ돈ㄱ서','김블루','<p>ㅇ것ㅇ겅거</p>\r\n','2020-11-06 12:14:52',0,NULL,NULL,NULL,20,0,0),(21,'N','겅ㄱ섬ㄱ혼도','김블루','<p>ㄴ독ㄴㄷ곤ㄷ곤도너</p>\r\n','2020-11-06 12:14:58',0,NULL,NULL,NULL,21,0,0),(22,'N','ㄴㄷ곤던ㄱ성ㄱ악','김블루','<p>ㅇㄱ송것ㅇ것</p>\r\n','2020-11-06 12:15:04',23,NULL,NULL,NULL,22,0,0),(23,'N','첨부','관리자','<p>ㅁㅁㅁㅁㅁ</p>\r\n','2020-11-06 14:47:40',11,'XbZnf0G1eZBlWpmZGScF1NOVIi3m3UFd.jpg','1.jpg','C://upload//article//',23,0,0),(24,'N','aaaa','관리자','<p>aaaaa</p>\r\n','2020-11-06 15:21:08',0,'LDrZCzd486cpmgfYWb1RtTAMWtkYUbGh.hwp','정처기(바이러스).hwp','C://upload//article//',24,0,0),(25,'N','dddd','관리자','<p>dddd</p>\r\n','2020-11-06 15:21:53',5,'JsROA6JauN9jaDnRG2rPikXOT8H4aFce.pdf','whois groupware_admin.pdf','C://upload//article//',25,0,0),(26,'N','dasdfa','관리자','<p>awegaweg</p>\r\n','2020-11-06 15:22:13',8,'dxOp5A5bGmxCnzOC0CLV4y3MFhQt5Mae.xlsx','카카오뱅크_거래내역_N3788374213_2020082516200580 (1).xlsx','C://upload//article//',26,0,0);
/*!40000 ALTER TABLE `grp_article_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_board`
--

DROP TABLE IF EXISTS `grp_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_board` (
  `bid` int NOT NULL AUTO_INCREMENT,
  `boardGrp` varchar(5) DEFAULT NULL,
  `boardCode` varchar(20) NOT NULL,
  `boardColor` varchar(20) DEFAULT NULL,
  `boardMaker` varchar(20) DEFAULT NULL,
  `boardTitle` varchar(255) NOT NULL,
  `boardType` char(1) DEFAULT NULL,
  `boardRead` char(1) DEFAULT NULL,
  `boardWrite` char(1) DEFAULT NULL,
  `boardReply` char(1) DEFAULT NULL,
  `boardDownload` char(1) DEFAULT NULL,
  `boardRegdate` date DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_board`
--

LOCK TABLES `grp_board` WRITE;
/*!40000 ALTER TABLE `grp_board` DISABLE KEYS */;
INSERT INTO `grp_board` VALUES (38,'500','board','#5D1049','김블루','자유게시판','1','0','0','0','0','2020-11-06');
/*!40000 ALTER TABLE `grp_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_buseo`
--

DROP TABLE IF EXISTS `grp_buseo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_buseo` (
  `buseo_id` varchar(5) NOT NULL,
  `buseo_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_buseo`
--

LOCK TABLES `grp_buseo` WRITE;
/*!40000 ALTER TABLE `grp_buseo` DISABLE KEYS */;
INSERT INTO `grp_buseo` VALUES ('100','관리부'),('200','인사부'),('300','기획부'),('400','총무부'),('500','영업부'),('600','생산부'),('700','자재부');
/*!40000 ALTER TABLE `grp_buseo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_comment_board`
--

DROP TABLE IF EXISTS `grp_comment_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_comment_board` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_comment_board`
--

LOCK TABLES `grp_comment_board` WRITE;
/*!40000 ALTER TABLE `grp_comment_board` DISABLE KEYS */;
/*!40000 ALTER TABLE `grp_comment_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_company`
--

DROP TABLE IF EXISTS `grp_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_company` (
  `com_name` varchar(100) NOT NULL,
  `com_sub_name` varchar(100) NOT NULL,
  `com_ceo` varchar(10) NOT NULL,
  `com_tel` varchar(15) NOT NULL,
  `com_url` varchar(50) NOT NULL,
  `com_copy` varchar(200) NOT NULL,
  `com_auth` int DEFAULT '2',
  `com_main_logo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_company`
--

LOCK TABLES `grp_company` WRITE;
/*!40000 ALTER TABLE `grp_company` DISABLE KEYS */;
INSERT INTO `grp_company` VALUES ('GREENART','groupware','박블루','055-222-2222','busan.greenart.co.kr','greenart alright reserved',2,NULL);
/*!40000 ALTER TABLE `grp_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_employee`
--

DROP TABLE IF EXISTS `grp_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_employee` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `emp_buseo` varchar(20) NOT NULL,
  `emp_grade` varchar(20) NOT NULL,
  `emp_num` varchar(20) NOT NULL,
  `emp_enter` date DEFAULT NULL,
  `emp_name` varchar(10) NOT NULL,
  `emp_pwd` varchar(12) NOT NULL,
  `emp_regdate` date DEFAULT NULL,
  `emp_head` char(1) DEFAULT 'N',
  `emp_step` int DEFAULT '1',
  `emp_auth` int DEFAULT '1',
  `emp_confirm` char(1) DEFAULT 'N',
  `emp_photo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_employee`
--

LOCK TABLES `grp_employee` WRITE;
/*!40000 ALTER TABLE `grp_employee` DISABLE KEYS */;
INSERT INTO `grp_employee` VALUES (1,'100','1','202010011','2020-10-08','김블루','123123123123','2020-10-08','N',1,10,'Y',NULL),(2,'100','1','202010012','2020-10-08','이레드','123123123123','2020-10-08','Y',1,4,'Y',NULL),(3,'100','1','202010013','2020-10-08','박블랙','123123123123','2020-10-08','N',1,4,'Y',NULL),(4,'100','1','202010014','2020-10-08','박사원','123123123123','2020-10-08','N',1,4,'Y',NULL),(6,'200','6','201620066','2016-02-02','진과장','123123123123','2020-10-08','Y',5,1,'Y',NULL),(7,'100','1','202010017','2020-10-08','김그린','123123123123','2020-10-08','N',1,1,'Y',NULL),(8,'100','1','202010018','2020-10-08','최그린','123123123123','2020-10-08','N',1,1,'Y',NULL),(10,'100','1','2020100110','2020-10-08','옥그린','123123123123','2020-10-08','N',1,1,'Y',NULL),(11,'','','admin',NULL,'관리자','123123123123',NULL,'N',1,10,'Y',NULL),(12,'500','3','2020500312','2020-10-15','박블루','123123123123','2020-10-13','N',1,1,'Y',NULL),(13,'700','5','2020700513','2020-10-13','홍홍길','123123123123','2020-10-14','N',1,1,'N',NULL),(14,'200','3','2020200314','2020-10-13','인대리','123123123123','2020-10-14','N',1,1,'N',NULL),(15,'300','4','2020300415','2020-10-13','기과장','123123123123','2020-10-14','N',1,1,'N',NULL),(16,'400','5','2018400516','2018-06-13','박박박','123123123123','2020-10-15','N',3,1,'N',NULL),(17,'200','2','2020200217','2020-09-29','최주임','123123123123','2020-10-15','N',1,1,'N',NULL),(18,'300','2','2020300218','2020-11-02','김주임','123123123123','2020-11-02','N',1,1,'N',NULL),(19,'500','3','2020500319','2020-11-02','이주임','123123123123','2020-11-02','N',1,1,'N',NULL),(20,'200','1','2020200120','2020-11-02','최사원','123123123123','2020-11-02','N',1,1,'N',NULL),(23,'100','1','2020100123','2020-11-02','김관리','123123123123','2020-11-02','N',1,1,'N',NULL),(25,'500','1','2020500125','2020-11-02','이영업','123123123123','2020-11-02','N',1,1,'Y',NULL),(26,'400','1','2020400126','2020-11-02','김총무','123123123123','2020-11-02','N',1,1,'Y',NULL),(27,'100','5','2020100527','2020-11-02','홍관리','123123123123','2020-11-02','N',1,1,'N',NULL);
/*!40000 ALTER TABLE `grp_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_employee_others`
--

DROP TABLE IF EXISTS `grp_employee_others`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_employee_others` (
  `emp_oid` int NOT NULL AUTO_INCREMENT,
  `emp_gender` char(1) DEFAULT NULL,
  `emp_birth` char(10) DEFAULT NULL,
  `emp_cp` char(14) DEFAULT NULL,
  `emp_in` char(14) DEFAULT NULL,
  `emp_tel` char(14) DEFAULT NULL,
  `emp_recruit` char(10) DEFAULT NULL,
  `emp_hope` varchar(30) DEFAULT NULL,
  `emp_height` char(3) DEFAULT NULL,
  `emp_weight` char(3) DEFAULT NULL,
  `emp_service` char(5) DEFAULT NULL,
  `emp_religion` char(10) DEFAULT NULL,
  `emp_hobby` varchar(20) DEFAULT NULL,
  `emp_speciality` varchar(20) DEFAULT NULL,
  `emp_disablility` char(3) DEFAULT NULL,
  `emp_reward` char(3) DEFAULT NULL,
  `emp_married` char(2) DEFAULT NULL,
  `emp_license1` varchar(20) DEFAULT NULL,
  `emp_license2` varchar(20) DEFAULT NULL,
  `emp_license3` varchar(20) DEFAULT NULL,
  `emp_license4` varchar(20) DEFAULT NULL,
  `emp_license5` varchar(20) DEFAULT NULL,
  `emp_lang1` varchar(20) DEFAULT NULL,
  `emp_lang2` varchar(20) DEFAULT NULL,
  `emp_lang3` varchar(20) DEFAULT NULL,
  `emp_lang4` varchar(20) DEFAULT NULL,
  `emp_lang5` varchar(20) DEFAULT NULL,
  `emp_rnp1` varchar(20) DEFAULT NULL,
  `emp_rnp2` varchar(20) DEFAULT NULL,
  `emp_rnp3` varchar(20) DEFAULT NULL,
  `emp_rnp4` varchar(20) DEFAULT NULL,
  `emp_rnp5` varchar(20) DEFAULT NULL,
  `emp_comment` text,
  `emp_id_fk` int DEFAULT NULL,
  PRIMARY KEY (`emp_oid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_employee_others`
--

LOCK TABLES `grp_employee_others` WRITE;
/*!40000 ALTER TABLE `grp_employee_others` DISABLE KEYS */;
INSERT INTO `grp_employee_others` VALUES (1,'남','','','','','공개채용','','','','병역필','무교','','',NULL,'비대상','미혼','','','','','','','','','','','','','','','','',2),(2,'남','','','','','공개채용','','','','병역필','무교','','',NULL,'비대상','미혼','','','','','','','','','','','','','','','','',2),(3,'남','','','','','공개채용','','','','병역필','무교','','',NULL,'비대상','미혼','','','','','','','','','','','','','','','','',2),(4,'남','','','','','공개채용','','','','병역필','무교','','',NULL,'비대상','미혼','','','','','','','','','','','','','','','','',1),(5,'남','','','','','공개채용','','','','병역필','무교','','',NULL,'비대상','미혼','','','','','','','','','','','','','','','','',1),(6,'남','','','','','공개채용','','','','병역필','무교','','',NULL,'비대상','미혼','','','','','','','','','','','','','','','','',1),(7,'남','','','','','공개채용','','','','병역필','무교','','',NULL,'비대상','미혼','','','','','','','','','','','','','','','','',1),(8,'남','','','','','공개채용','','','','병역필','무교','','',NULL,'비대상','미혼','','','','','','','','','','','','','','','','',1),(9,'남','','','','','공개채용','','','','병역필','무교','','',NULL,'비대상','미혼','','','','','','','','','','','','','','','','',1),(10,'남','','','','','공개채용','','','','병역필','무교','','',NULL,'비대상','미혼','','','','','','','','','','','','','','','','',1),(11,'남','','','','','공개채용','','','','병역필','무교','','',NULL,'비대상','미혼','','','','','','','','','','','','','','','','',1);
/*!40000 ALTER TABLE `grp_employee_others` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grp_grade`
--

DROP TABLE IF EXISTS `grp_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grp_grade` (
  `grade_id` varchar(2) NOT NULL,
  `grade_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grp_grade`
--

LOCK TABLES `grp_grade` WRITE;
/*!40000 ALTER TABLE `grp_grade` DISABLE KEYS */;
INSERT INTO `grp_grade` VALUES ('6','부장'),('5','팀장'),('4','과장'),('3','대리'),('2','주임'),('1','사원');
/*!40000 ALTER TABLE `grp_grade` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-11 15:21:51
