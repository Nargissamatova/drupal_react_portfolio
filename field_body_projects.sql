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
-- WHERE:  entity_id IN (188)

LOCK TABLES `node__body` WRITE;
/*!40000 ALTER TABLE `node__body` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `node__body` VALUES ('projects',0,188,220,'en',0,'<p>&nbsp;</p><div class=\"repositories\"><h3>Repositories</h3><ul><li><p><strong>drupal_react_portfolio</strong>&nbsp;</p><p>Description: A private portfolio project using Drupal and React.</p></li><li><p><strong>countries-bootstrap-react-app</strong> - Public (JavaScript)</p><p>Description: A React app showcasing country information with Bootstrap styling.</p></li><li><p><strong>drupal_palindrome_checker</strong> - Public (PHP)</p><p>Description: A basic Drupal module that checks for palindromes.</p></li><li><p><strong>online-store-typescript</strong> - Public (TypeScript)</p><p>Description: An online store built with TypeScript for enhanced functionality.</p></li><li><p><strong>drupal-wizard-theme</strong> - Public (CSS)</p><p>Description: A custom theme for Drupal with wizard-like UI elements.</p></li><li><p><strong>first-drupal-app</strong> - Public (PHP)</p><p>Description: The first Drupal app built to explore module development.</p></li><li><p><strong>carStorage-unitTesting</strong>&nbsp;</p><p>Description: A unit testing project for car storage management system.</p></li><li><p><strong>aws-sample-app</strong> - Public (HTML)</p><p>Description: A sample AWS-hosted application demonstrating cloud deployment.</p></li><li><p><strong>unit-testing</strong></p><p>Description: JavaScript-based unit testing for a personal project.</p></li><li><p><strong>countries_bootstrap_app</strong> - Public (JavaScript)</p><p>Description: A Bootstrap-powered app displaying country data using APIs.</p></li><li><p><strong>typing-game</strong> - Public (JavaScript, MIT License)</p><p>Description: A simple typing game built to improve keyboard skills.</p></li><li><p><strong>online-store-redux-app</strong> - Public (JavaScript)</p><p>Description: An online store implemented with Redux for state management.</p></li><li><p><strong>react-music-player</strong></p><p>Description: A music player app created using React for audio playback.</p></li><li><p><strong>travel_app</strong>&nbsp;</p><p>Description: A travel planning app forked from another project.</p></li><li><p><strong>zoo_app</strong> - Public</p><p>Description: A public zoo app showcasing animals and information.</p></li><li><p><strong>symfony_booksite</strong> - Public</p><p>Description: A Symfony version of the booksite application.</p></li></ul></div>','','full_html');
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

-- Dump completed on 2024-10-21 20:06:20
