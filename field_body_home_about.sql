-- MariaDB dump 10.19  Distrib 10.5.23-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: database    Database: drupal11
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `node__body`
--

DROP TABLE IF EXISTS `node__body`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node__body` (
  `bundle` varchar(128) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int unsigned NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `body_value` longtext NOT NULL,
  `body_summary` longtext,
  `body_format` varchar(255) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`deleted`,`delta`,`langcode`),
  KEY `bundle` (`bundle`),
  KEY `revision_id` (`revision_id`),
  KEY `body_format` (`body_format`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Data storage for node field body.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node__body`
--
-- WHERE:  entity_id IN (186, 187)

LOCK TABLES `node__body` WRITE;
/*!40000 ALTER TABLE `node__body` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `node__body` VALUES ('home',0,186,205,'en',0,'<p class=\"intro\">Hey there! Based in Helsinki, Finland, I\'m a web developer passionate about creating user-friendly websites with HTML, CSS, and JavaScript, and more. With a focus on frontend tools, I strive to make online experiences seamless and visually appealing. I\'m always eager to learn and evolve, dedicated to bringing your digital ideas to life in the most effective and enjoyable way possible. Let\'s collaborate and build something amazing together!</p>','','full_html'),('about',0,187,221,'en',0,'<div><h2><strong>Web Design</strong></h2><p>Crafting visually stunning interfaces that not&nbsp; only catch the eye but also intuitively guide users through the digital experience, ensuring seamless navigation and engagement.<!-- Section 2: Frontend Development --><!-- Replace with your actual react-icons -->&nbsp;</p></div><div><h2><strong>Frontend Dev</strong></h2><p>I focus on designing and implementing interactive elements that enhance user engagement and usability across different devices and platforms.</p></div><div><h2><strong>Backend Dev</strong></h2><p>Creating efficient and scalable solutions to handle various tasks, from managing user data to processing transactions, all while prioritizing performance and reliability.</p></div>','','full_html');
/*!40000 ALTER TABLE `node__body` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-21 19:33:44
