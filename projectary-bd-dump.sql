-- MySQL dump 10.16  Distrib 10.1.22-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: projectary
-- ------------------------------------------------------
-- Server version	10.1.22-MariaDB-1~xenial

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
-- Current Database: `projectary`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `projectary` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `projectary`;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `createdin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedin` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedin` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_createdby_fk` (`createdby`),
  CONSTRAINT `admin_createdby_fk` FOREIGN KEY (`createdby`) REFERENCES `entity` (`id`),
  CONSTRAINT `admin_entity_fk` FOREIGN KEY (`id`) REFERENCES `entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `submitedby` varchar(255) COLLATE utf8_bin NOT NULL,
  `submitedin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `group` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `application_entity_fk` (`submitedby`),
  CONSTRAINT `application_entity_fk` FOREIGN KEY (`submitedby`) REFERENCES `entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicationattribute`
--

DROP TABLE IF EXISTS `applicationattribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicationattribute` (
  `application` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attribute` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_bin NOT NULL,
  `createdin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdby` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`application`,`attribute`),
  KEY `applicationattribute_attribute_fk` (`attribute`),
  KEY `applicationattribute_entity_fk` (`createdby`),
  CONSTRAINT `applicationattribute_application_fk` FOREIGN KEY (`application`) REFERENCES `application` (`id`),
  CONSTRAINT `applicationattribute_attribute_fk` FOREIGN KEY (`attribute`) REFERENCES `attribute` (`id`),
  CONSTRAINT `applicationattribute_entity_fk` FOREIGN KEY (`createdby`) REFERENCES `entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicationattribute`
--

LOCK TABLES `applicationattribute` WRITE;
/*!40000 ALTER TABLE `applicationattribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicationattribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicationgroup`
--

DROP TABLE IF EXISTS `applicationgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicationgroup` (
  `application` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `group` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdin` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  KEY `applicationgroup_application_fk` (`application`),
  KEY `applicationgroup_group_fk` (`group`),
  KEY `applicationgroup_approvedby_fk` (`createdby`),
  CONSTRAINT `applicationgroup_application_fk` FOREIGN KEY (`application`) REFERENCES `application` (`id`),
  CONSTRAINT `applicationgroup_approvedby_fk` FOREIGN KEY (`createdby`) REFERENCES `entity` (`id`),
  CONSTRAINT `applicationgroup_group_fk` FOREIGN KEY (`group`) REFERENCES `groupentity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table Used to Associate a Group of Entities to an Application';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicationgroup`
--

LOCK TABLES `applicationgroup` WRITE;
/*!40000 ALTER TABLE `applicationgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `applicationgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute`
--

DROP TABLE IF EXISTS `attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attribute` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `desc` varchar(255) COLLATE utf8_bin NOT NULL,
  `datatype` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute`
--

LOCK TABLES `attribute` WRITE;
/*!40000 ALTER TABLE `attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `desc` varchar(255) COLLATE utf8_bin NOT NULL,
  `school` varchar(255) COLLATE utf8_bin NOT NULL,
  `numcurso` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `course_numcurso_uindex` (`numcurso`),
  KEY `course_school_fk` (`school`),
  CONSTRAINT `course_school_fk` FOREIGN KEY (`school`) REFERENCES `school` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courseentity`
--

DROP TABLE IF EXISTS `courseentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courseentity` (
  `course` varchar(255) COLLATE utf8_bin NOT NULL,
  `entity` varchar(255) COLLATE utf8_bin NOT NULL,
  `enryear` year(4) NOT NULL,
  `createdin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`course`,`entity`,`enryear`),
  KEY `courseentity_entity_fk` (`entity`),
  CONSTRAINT `courseentity_course_fk` FOREIGN KEY (`course`) REFERENCES `course` (`id`),
  CONSTRAINT `courseentity_entity_fk` FOREIGN KEY (`entity`) REFERENCES `entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courseentity`
--

LOCK TABLES `courseentity` WRITE;
/*!40000 ALTER TABLE `courseentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `courseentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departament`
--

DROP TABLE IF EXISTS `departament`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departament` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `desc` varchar(255) COLLATE utf8_bin NOT NULL,
  `school` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `departament_school_fk` (`school`),
  CONSTRAINT `departament_school_fk` FOREIGN KEY (`school`) REFERENCES `school` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departament`
--

LOCK TABLES `departament` WRITE;
/*!40000 ALTER TABLE `departament` DISABLE KEYS */;
/*!40000 ALTER TABLE `departament` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamententity`
--

DROP TABLE IF EXISTS `departamententity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamententity` (
  `departament` varchar(255) COLLATE utf8_bin NOT NULL,
  `entity` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`entity`),
  KEY `departamententity_dep_fk` (`departament`),
  CONSTRAINT `departamententity_dep_fk` FOREIGN KEY (`departament`) REFERENCES `departament` (`id`),
  CONSTRAINT `departamententity_entity_fk` FOREIGN KEY (`entity`) REFERENCES `entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamententity`
--

LOCK TABLES `departamententity` WRITE;
/*!40000 ALTER TABLE `departamententity` DISABLE KEYS */;
/*!40000 ALTER TABLE `departamententity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity`
--

DROP TABLE IF EXISTS `entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity`
--

LOCK TABLES `entity` WRITE;
/*!40000 ALTER TABLE `entity` DISABLE KEYS */;
INSERT INTO `entity` VALUES ('26774d25-1857-11e7-a99b-525400f5614a','a','2017-04-03 10:20:24');
/*!40000 ALTER TABLE `entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entitycontact`
--

DROP TABLE IF EXISTS `entitycontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entitycontact` (
  `entity` varchar(255) COLLATE utf8_bin NOT NULL,
  `contact` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`entity`,`contact`),
  CONSTRAINT `entitycontact_entity_fk` FOREIGN KEY (`entity`) REFERENCES `entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entitycontact`
--

LOCK TABLES `entitycontact` WRITE;
/*!40000 ALTER TABLE `entitycontact` DISABLE KEYS */;
/*!40000 ALTER TABLE `entitycontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function`
--

DROP TABLE IF EXISTS `function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `desc` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdby` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `function_entity_fk` (`createdby`),
  CONSTRAINT `function_entity_fk` FOREIGN KEY (`createdby`) REFERENCES `entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function`
--

LOCK TABLES `function` WRITE;
/*!40000 ALTER TABLE `function` DISABLE KEYS */;
/*!40000 ALTER TABLE `function` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupentity`
--

DROP TABLE IF EXISTS `groupentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupentity` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `entity` varchar(255) COLLATE utf8_bin NOT NULL,
  `function` varchar(255) COLLATE utf8_bin NOT NULL,
  `grade` decimal(10,0) DEFAULT '0',
  `createdin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdby` varchar(255) COLLATE utf8_bin NOT NULL,
  `approvedby` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `approvedin` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`,`entity`,`function`),
  KEY `groupentity_entity_fk` (`entity`),
  KEY `groupentity_approval_fk` (`approvedby`),
  KEY `groupentity_createdby_fk` (`createdby`),
  KEY `groupentity_function_fk` (`function`),
  CONSTRAINT `groupentity_approval_fk` FOREIGN KEY (`approvedby`) REFERENCES `entity` (`id`),
  CONSTRAINT `groupentity_createdby_fk` FOREIGN KEY (`createdby`) REFERENCES `entity` (`id`),
  CONSTRAINT `groupentity_entity_fk` FOREIGN KEY (`entity`) REFERENCES `entity` (`id`),
  CONSTRAINT `groupentity_function_fk` FOREIGN KEY (`function`) REFERENCES `function` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table Used to Create Groups of Entities';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupentity`
--

LOCK TABLES `groupentity` WRITE;
/*!40000 ALTER TABLE `groupentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `application` varchar(255) COLLATE utf8_bin NOT NULL,
  `approvedby` varchar(255) COLLATE utf8_bin NOT NULL,
  `approvedin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_application_uindex` (`application`),
  KEY `project_entity_fk` (`approvedby`),
  CONSTRAINT `project_application_fk` FOREIGN KEY (`application`) REFERENCES `application` (`id`),
  CONSTRAINT `project_entity_fk` FOREIGN KEY (`approvedby`) REFERENCES `entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectrev`
--

DROP TABLE IF EXISTS `projectrev`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectrev` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `project` varchar(255) COLLATE utf8_bin NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `createdin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdby` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `projectrev_proj_fk` (`project`),
  KEY `projectrev_entity_fk` (`createdby`),
  CONSTRAINT `projectrev_entity_fk` FOREIGN KEY (`createdby`) REFERENCES `entity` (`id`),
  CONSTRAINT `projectrev_proj_fk` FOREIGN KEY (`project`) REFERENCES `project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectrev`
--

LOCK TABLES `projectrev` WRITE;
/*!40000 ALTER TABLE `projectrev` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectrev` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectrevgroup`
--

DROP TABLE IF EXISTS `projectrevgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectrevgroup` (
  `projectrev` varchar(255) COLLATE utf8_bin NOT NULL,
  `createdin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdby` varchar(255) COLLATE utf8_bin NOT NULL,
  `approvedby` varchar(255) COLLATE utf8_bin NOT NULL,
  `approvedin` timestamp NULL DEFAULT NULL,
  `groupentity` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`projectrev`),
  KEY `projectreventity_groupentity_fk` (`groupentity`),
  KEY `projectreventity_approvedby_fk` (`approvedby`),
  KEY `projectreventity_createdby_fk` (`createdby`),
  CONSTRAINT `projectreventity_approvedby_fk` FOREIGN KEY (`approvedby`) REFERENCES `entity` (`id`),
  CONSTRAINT `projectreventity_createdby_fk` FOREIGN KEY (`createdby`) REFERENCES `entity` (`id`),
  CONSTRAINT `projectreventity_groupentity_fk` FOREIGN KEY (`groupentity`) REFERENCES `groupentity` (`id`),
  CONSTRAINT `projectreventity_projrev_fk` FOREIGN KEY (`projectrev`) REFERENCES `projectrev` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectrevgroup`
--

LOCK TABLES `projectrevgroup` WRITE;
/*!40000 ALTER TABLE `projectrevgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectrevgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectrevlog`
--

DROP TABLE IF EXISTS `projectrevlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectrevlog` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `projectrev` varchar(255) COLLATE utf8_bin NOT NULL,
  `createdin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdby` varchar(255) COLLATE utf8_bin NOT NULL,
  `desc` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `projectlogs_projrev_fk` (`projectrev`),
  KEY `projectlogs_entity_fk` (`createdby`),
  CONSTRAINT `projectlogs_entity_fk` FOREIGN KEY (`createdby`) REFERENCES `entity` (`id`),
  CONSTRAINT `projectlogs_projrev_fk` FOREIGN KEY (`projectrev`) REFERENCES `project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table to Register Project Logs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectrevlog`
--

LOCK TABLES `projectrevlog` WRITE;
/*!40000 ALTER TABLE `projectrevlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectrevlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectrevlogdoc`
--

DROP TABLE IF EXISTS `projectrevlogdoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectrevlogdoc` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `projectrevlog` varchar(255) COLLATE utf8_bin NOT NULL,
  `url` longtext COLLATE utf8_bin,
  `createdin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdby` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `projectrevlogdoc_prjrevlog_fk` (`projectrevlog`),
  KEY `projectrevlogdoc_entity_fk` (`createdby`),
  CONSTRAINT `projectrevlogdoc_entity_fk` FOREIGN KEY (`createdby`) REFERENCES `entity` (`id`),
  CONSTRAINT `projectrevlogdoc_prjrevlog_fk` FOREIGN KEY (`projectrevlog`) REFERENCES `projectrevlog` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table to Add Documents Related to Project Logs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectrevlogdoc`
--

LOCK TABLES `projectrevlogdoc` WRITE;
/*!40000 ALTER TABLE `projectrevlogdoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectrevlogdoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectrevmilestone`
--

DROP TABLE IF EXISTS `projectrevmilestone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectrevmilestone` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `projectrev` varchar(255) COLLATE utf8_bin NOT NULL,
  `desc` varchar(255) COLLATE utf8_bin NOT NULL,
  `createdby` varchar(255) COLLATE utf8_bin NOT NULL,
  `createdin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `start` date NOT NULL,
  `end` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `projectrevmilestones_projectrev_fk` (`projectrev`),
  KEY `projectrevmilestones_createdby_fk` (`createdby`),
  CONSTRAINT `projectrevmilestones_createdby_fk` FOREIGN KEY (`createdby`) REFERENCES `entity` (`id`),
  CONSTRAINT `projectrevmilestones_projectrev_fk` FOREIGN KEY (`projectrev`) REFERENCES `projectrev` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectrevmilestone`
--

LOCK TABLES `projectrevmilestone` WRITE;
/*!40000 ALTER TABLE `projectrevmilestone` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectrevmilestone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectweb`
--

DROP TABLE IF EXISTS `projectweb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectweb` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `createdin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdby` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `projectweb_entity_fk` (`createdby`),
  CONSTRAINT `projectweb_entity_fk` FOREIGN KEY (`createdby`) REFERENCES `entity` (`id`),
  CONSTRAINT `projectweb_project_fk` FOREIGN KEY (`id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table Used to Define Which Projects Show on Public Page';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectweb`
--

LOCK TABLES `projectweb` WRITE;
/*!40000 ALTER TABLE `projectweb` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectweb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `desc` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `studentid` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_studentid_uindex` (`studentid`),
  CONSTRAINT `student_id_fk` FOREIGN KEY (`id`) REFERENCES `entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('26774d25-1857-11e7-a99b-525400f5614a','123456');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `teacherid` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teacher_teacherid_uindex` (`teacherid`),
  CONSTRAINT `teacher_fk` FOREIGN KEY (`id`) REFERENCES `entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `createdin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `locked` tinyint(1) DEFAULT '0',
  `active` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_uindex` (`username`),
  UNIQUE KEY `users_email_uindex` (`email`),
  CONSTRAINT `users_entity_fk` FOREIGN KEY (`id`) REFERENCES `entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('26774d25-1857-11e7-a99b-525400f5614a','username','a','email','2017-04-03 10:20:24',0,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'projectary'
--
/*!50003 DROP PROCEDURE IF EXISTS `API_InsertNewAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `API_InsertNewAdmin`(IN `newadminentity` VARCHAR(255), IN `entity` VARCHAR(255))
BEGIN
 Insert INTO admin (ID,createdin,updatedin,createdby)VALUES (newadminentity,NOW(),NOW(),entity);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `API_InsertNewApplication` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `API_InsertNewApplication`(IN `entity` VARCHAR(255))
BEGIN
 DECLARE UUID VARCHAR(255);
 SELECT UUID() INTO UUID;
  INSERT INTO application VALUES (UUID,entity,NOW());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `API_InsertNewApplicationAttribute` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `API_InsertNewApplicationAttribute`(IN `application` VARCHAR(255),IN `attribute` VARCHAR(255),IN `value` VARCHAR(255),IN `entity` VARCHAR(255))
BEGIN
   INSERT INTO applicationattribute VALUES (application,attribute,value,NOW(),entity);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `API_InsertNewAtribute` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `API_InsertNewAtribute`(IN `description` VARCHAR(255),IN `datatype` VARCHAR(255))
BEGIN
   DECLARE UUID VARCHAR(255);
   SELECT UUID() INTO UUID;
   INSERT INTO attribute VALUES (UUID,description,datatype);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `API_InsertNewFunction` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `API_InsertNewFunction`(IN `description` VARCHAR(255),IN `entity` VARCHAR(255))
BEGIN
    DECLARE UUID VARCHAR(255);
    SELECT UUID() INTO UUID;
   INSERT INTO function VALUES (UUID,description,NOW(),entity);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `API_InsertNewProject` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `API_InsertNewProject`(IN `application` VARCHAR(255),IN `entity` VARCHAR(255))
BEGIN
    DECLARE UUID VARCHAR(255);
    SELECT UUID() INTO UUID;
    INSERT INTO project VALUES (UUID,application,entity,NOW());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `API_InsertNewProjectRevision` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `API_InsertNewProjectRevision`(IN `project` VARCHAR(255),IN `start` DATE,IN `end` DATE,IN `entity` VARCHAR(255))
BEGIN
    DECLARE UUID VARCHAR(255);
    SELECT UUID() INTO UUID;
    INSERT INTO projectrev VALUES (UUID,project,start,end,NOW(),entity);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `API_InsertNewProjectRevisionLog` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `API_InsertNewProjectRevisionLog`(IN `projectrev` VARCHAR(255),IN `textlog` LONGTEXT,IN `entity` VARCHAR(255))
BEGIN
    DECLARE UUID VARCHAR(255);
    SELECT UUID() INTO UUID;
    INSERT INTO projectrevlog VALUES (UUID,projectrev,textlog,NOW(),entity);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `API_InsertNewProjectRevisionLogDoc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `API_InsertNewProjectRevisionLogDoc`(IN `projectrevlog` VARCHAR(255),IN `doc` LONGBLOB,IN `url` LONGTEXT,IN `entity` VARCHAR(255))
BEGIN
    DECLARE UUID VARCHAR(255);
    SELECT UUID() INTO UUID;
    INSERT INTO projectrevlogdoc VALUES (UUID,projectrevlog,doc,url,NOW(),entity);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `API_InsertNewSchool` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `API_InsertNewSchool`(IN `description` VARCHAR(255))
BEGIN
    DECLARE UUID VARCHAR(255);
    SELECT UUID() INTO UUID;
    INSERT INTO school VALUES (UUID,description);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `API_InsertNewUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `API_InsertNewUser`(IN username VARCHAR(255), IN password VARCHAR(255), IN name VARCHAR(255),
                                   IN email    VARCHAR(255), IN type INT(1), IN extid VARCHAR(255))
BEGIN
 DECLARE UUID VARCHAR(255);
    CASE
    WHEN type=1 THEN CALL InsertNewEntity(name,type,extid);SELECT id from student where studentid=extid INTO UUID;
    WHEN type=2 THEN CALL InsertNewEntity(name,type,extid);SELECT id from teacher where teacherid=extid INTO UUID;
    END CASE;

    INSERT INTO user (id,username,password,email,createdin,locked,active)VALUES(UUID,username,password,email,NOW(),0,0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `API_InsertProjectWeb` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `API_InsertProjectWeb`(IN `id` VARCHAR(255),IN `entity` VARCHAR(255))
BEGIN
  INSERT INTO application VALUES (ID,NOW(),entity);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `API_IsAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `API_IsAdmin`(IN `entity` VARCHAR(255))
BEGIN
 DECLARE ADMIN INT(1);
    SELECT count(a.id) from admin as a where a.id=entity INTO ADMIN;
    CASE
      WHEN ADMIN <1 THEN SELECT 'false';
      WHEN ADMIN =1 THEN SELECT 'true';
      WHEN ADMIN >1 THEN SELECT 'false';
    END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `API_ListEntities` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `API_ListEntities`(IN `type`  INT(11), IN `extid` VARCHAR(255), IN `name` VARCHAR(255), IN `id` VARCHAR(255))
BEGIN
CASE
WHEN type=1 THEN SELECT e.id,e.name,s.studentid from entity as e,student as s where ((e.id=s.id and s.studentid like CONCAT(CONCAT('%',extid),'%') and e.name like CONCAT(CONCAT('%',name),'%')) OR (e.id=s.id and e.id LIKE CONCAT(CONCAT('%',id),'%') and e.name like CONCAT(CONCAT('%',name),'%')));
WHEN type=2 THEN SELECT e.id,e.name,t.teacherid from entity as e,teacher as t where ((e.id=t.id and t.teacherid like CONCAT(CONCAT('%',extid),'%') and e.name like CONCAT(CONCAT('%',name),'%')) OR (e.id=t.id and e.id LIKE CONCAT(CONCAT('%',id),'%') and e.name like CONCAT(CONCAT('%',name),'%')));
END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `API_ListProjects` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `API_ListProjects`(IN `approved` INT(11))
BEGIN
CASE
WHEN approved=0 THEN SELECT a.id,a.submitedby,a.submitedin from application as a,project as p,applicationattribute as appattr,attribute as attr where a.id<>p.application and a.id=appattr.application and appattr.application=attr.id;
WHEN approved=1 THEN SELECT p.id,p.approvedby,p.approvedin,a.submitedby from application as a,project as p,applicationattribute as appattr,attribute as attr where a.id=p.application and a.id=appattr.application and appattr.application=attr.id;
END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `API_LoginChallenge` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `API_LoginChallenge`(IN username VARCHAR(255))
BEGIN
    DECLARE RESULT INT(1);
    SELECT COUNT(u.entity) FROM users AS u WHERE u.username=username INTO RESULT;
CASE
  WHEN RESULT<1 THEN SELECT '0','0';
  WHEN RESULT=1 THEN SELECT u.entity,u.password FROM users AS u WHERE u.username=username;
END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `API_UserExists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `API_UserExists`(IN type INT(1), IN username VARCHAR(255), IN extid VARCHAR(255))
BEGIN
 DECLARE UserExists INT(1);
 DECLARE EntityExists INT(1);
    CASE
    WHEN type=1 THEN SELECT COUNT(*) FROM user where user.username=username INTO UserExists;SELECT COUNT(*) from student as s where s.studentid=extid INTO EntityExists;SELECT UserExists,EntityExists;
    WHEN type=2 THEN SELECT COUNT(*) FROM user where user.username=username INTO UserExists;SELECT COUNT(*) from teacher as t where t.teacherid=extid INTO EntityExists;SELECT UserExists,EntityExists;
    END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEPRACATED_InsertNewProjectRevisionEntity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DEPRACATED_InsertNewProjectRevisionEntity`(IN `projectrev` VARCHAR(255),IN `projentity` VARCHAR(255),IN `function` VARCHAR(255),IN `entity` VARCHAR(255))
BEGIN
    DECLARE UUID VARCHAR(255);
    SELECT UUID() INTO UUID;
    INSERT INTO projectreventity VALUES (projectrev,projentity,function,NOW(),entity);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEPRACATED_InsertNewSchoolEntity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DEPRACATED_InsertNewSchoolEntity`(IN `school` VARCHAR(255),IN `entity` VARCHAR(255))
BEGIN
    INSERT INTO schoolentity VALUES (school,entity);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertNewEntity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertNewEntity`(IN name VARCHAR(255), IN type INT, IN extid VARCHAR(255))
BEGIN
 DECLARE UUID VARCHAR(255);
CASE
WHEN type=1 THEN  SELECT UUID() INTO UUID;Insert INTO entity VALUES (UUID,name,NOW());INSERT INTO student VALUES(UUID,extid);
WHEN type=2 THEN  SELECT UUID() INTO UUID;Insert INTO entity VALUES (UUID,name,NOW());INSERT INTO teacher VALUES(UUID,extid);
END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-03 12:06:20
