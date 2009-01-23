# SQLFront 3.2  (Build 14.11)

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='SYSTEM' */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: localhost    Database: lunich_lpp
# ------------------------------------------------------
# Server version 5.0.51b-community-nt

DROP DATABASE IF EXISTS `lunich_lpp`;
CREATE DATABASE `lunich_lpp` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `lunich_lpp`;

#
# Table structure for table events
#

CREATE TABLE `events` (
  `id` int(11) NOT NULL auto_increment,
  `player_id` int(11) default NULL,
  `opponent_id` int(11) default NULL,
  `result1` int(11) default NULL,
  `result2` int(11) default NULL,
  `time` datetime default NULL,
  `type` varchar(255) default NULL,
  `qualify` tinyint(1) NOT NULL default '0',
  `raking` decimal(8,4) default NULL,
  `prev_id` int(11) default NULL,
  `next_id` int(11) default NULL,
  `comment` varchar(255) default NULL,
  `tournament_id` int(11) default NULL,
  `tournament_place` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) AUTO_INCREMENT=120 DEFAULT CHARSET=cp1251;

#
# Dumping data for table events
#

/*!40101 SET NAMES cp1251 */;

INSERT INTO `events` VALUES (1,2,NULL,NULL,NULL,'2007-01-27 16:00:00','Tour',0,43.7056,NULL,32,NULL,1,1,'2009-01-23 20:59:01','2009-01-23 22:53:17');
INSERT INTO `events` VALUES (2,6,NULL,NULL,NULL,'2007-01-27 16:00:00','Tour',0,34.9645,NULL,44,NULL,1,2,'2009-01-23 20:59:01','2009-01-23 23:03:42');
INSERT INTO `events` VALUES (3,12,NULL,NULL,NULL,'2007-01-27 16:00:00','Tour',0,30.3025,NULL,21,NULL,1,3,'2009-01-23 20:59:01','2009-01-23 22:42:58');
INSERT INTO `events` VALUES (4,4,NULL,NULL,NULL,'2007-01-27 16:00:00','Tour',0,27.0392,NULL,26,NULL,1,4,'2009-01-23 20:59:01','2009-01-23 22:42:58');
INSERT INTO `events` VALUES (5,24,NULL,NULL,NULL,'2007-01-27 16:00:00','Tour',0,25.1744,NULL,NULL,NULL,1,5,'2009-01-23 20:59:01','2009-01-23 22:11:26');
INSERT INTO `events` VALUES (6,27,NULL,NULL,NULL,'2007-01-27 16:00:00','Tour',0,23.3097,NULL,NULL,NULL,1,6,'2009-01-23 20:59:01','2009-01-23 22:11:26');
INSERT INTO `events` VALUES (7,28,NULL,NULL,NULL,'2007-01-27 16:00:00','Tour',0,22.0043,NULL,NULL,NULL,1,7,'2009-01-23 20:59:01','2009-01-23 22:11:26');
INSERT INTO `events` VALUES (8,18,NULL,NULL,NULL,'2007-01-27 16:00:00','Tour',0,21.2584,NULL,55,NULL,1,8,'2009-01-23 20:59:01','2009-01-23 23:03:43');
INSERT INTO `events` VALUES (9,26,NULL,NULL,NULL,'2007-01-27 16:00:00','Tour',0,20.5125,NULL,24,NULL,1,9,'2009-01-23 20:59:01','2009-01-23 22:42:58');
INSERT INTO `events` VALUES (10,21,NULL,NULL,NULL,'2007-01-27 16:00:00','Tour',0,19.7666,NULL,61,NULL,1,10,'2009-01-23 20:59:01','2009-01-23 23:03:43');
INSERT INTO `events` VALUES (11,14,NULL,NULL,NULL,'2007-01-27 16:00:00','Tour',0,19.0207,NULL,27,NULL,1,11,'2009-01-23 20:59:01','2009-01-23 22:42:58');
INSERT INTO `events` VALUES (12,7,NULL,NULL,NULL,'2007-01-27 16:00:00','Tour',0,18.2748,NULL,25,NULL,1,12,'2009-01-23 20:59:01','2009-01-23 22:42:58');
INSERT INTO `events` VALUES (13,9,NULL,NULL,NULL,'2007-01-27 16:00:00','Tour',0,17.7526,NULL,28,NULL,1,13,'2009-01-23 20:59:01','2009-01-23 22:42:58');
INSERT INTO `events` VALUES (14,8,NULL,NULL,NULL,'2007-01-27 16:00:00','Tour',0,17.4543,NULL,35,NULL,1,14,'2009-01-23 20:59:01','2009-01-23 22:53:17');
INSERT INTO `events` VALUES (15,36,NULL,NULL,NULL,'2007-01-27 16:00:00','Tour',0,17.1559,NULL,NULL,NULL,1,15,'2009-01-23 20:59:01','2009-01-23 22:11:27');
INSERT INTO `events` VALUES (16,15,NULL,NULL,NULL,'2007-01-27 16:00:00','Tour',0,16.8575,NULL,23,NULL,1,16,'2009-01-23 20:59:01','2009-01-23 22:42:58');
INSERT INTO `events` VALUES (17,23,NULL,NULL,NULL,'2007-01-27 16:00:00','Tour',0,16.5592,NULL,102,NULL,1,17,'2009-01-23 20:59:02','2009-01-23 23:26:17');
INSERT INTO `events` VALUES (18,38,NULL,NULL,NULL,'2007-01-27 16:00:00','Tour',0,16.2608,NULL,NULL,NULL,1,18,'2009-01-23 20:59:02','2009-01-23 22:11:27');
INSERT INTO `events` VALUES (19,19,NULL,NULL,NULL,'2007-01-27 16:00:00','Tour',0,15.9624,NULL,41,NULL,1,19,'2009-01-23 20:59:02','2009-01-23 22:53:17');
INSERT INTO `events` VALUES (20,40,NULL,NULL,NULL,'2007-01-27 16:00:00','Tour',0,15.6641,NULL,NULL,NULL,1,20,'2009-01-23 20:59:02','2009-01-23 22:11:27');
INSERT INTO `events` VALUES (21,12,NULL,NULL,NULL,'2007-02-17 22:00:00','Tour',0,6.1962,NULL,31,NULL,2,1,'2009-01-23 22:42:58','2009-01-23 23:13:24');
INSERT INTO `events` VALUES (22,25,NULL,NULL,NULL,'2007-02-17 22:00:00','Tour',0,4.957,NULL,49,NULL,2,2,'2009-01-23 22:42:58','2009-01-23 23:13:24');
INSERT INTO `events` VALUES (23,15,NULL,NULL,NULL,'2007-02-17 22:00:00','Tour',0,4.296,NULL,33,NULL,2,3,'2009-01-23 22:42:58','2009-01-23 23:13:24');
INSERT INTO `events` VALUES (24,26,NULL,NULL,NULL,'2007-02-17 22:00:00','Tour',0,3.8334,NULL,NULL,NULL,2,4,'2009-01-23 22:42:58','2009-01-23 23:13:24');
INSERT INTO `events` VALUES (25,7,NULL,NULL,NULL,'2007-02-17 22:00:00','Tour',0,3.569,NULL,34,NULL,2,5,'2009-01-23 22:42:58','2009-01-23 23:13:24');
INSERT INTO `events` VALUES (26,4,NULL,NULL,NULL,'2007-02-17 22:00:00','Tour',0,3.3046,NULL,36,NULL,2,6,'2009-01-23 22:42:58','2009-01-23 23:13:24');
INSERT INTO `events` VALUES (27,14,NULL,NULL,NULL,'2007-02-17 22:00:00','Tour',0,3.1196,NULL,42,NULL,2,7,'2009-01-23 22:42:58','2009-01-23 23:13:24');
INSERT INTO `events` VALUES (28,9,NULL,NULL,NULL,'2007-02-17 22:00:00','Tour',0,3.0138,NULL,39,NULL,2,8,'2009-01-23 22:42:58','2009-01-23 23:13:24');
INSERT INTO `events` VALUES (29,1,NULL,NULL,NULL,'2007-02-17 22:00:00','Tour',0,2.9081,NULL,38,NULL,2,9,'2009-01-23 22:42:58','2009-01-23 23:13:24');
INSERT INTO `events` VALUES (30,48,NULL,NULL,NULL,'2007-02-17 22:00:00','Tour',0,2.8023,NULL,NULL,NULL,2,10,'2009-01-23 22:42:58','2009-01-23 23:13:24');
INSERT INTO `events` VALUES (31,12,NULL,NULL,NULL,'2007-07-28 22:00:00','Tour',0,6.2982,NULL,45,NULL,3,1,'2009-01-23 22:53:17','2009-01-23 23:14:25');
INSERT INTO `events` VALUES (32,2,NULL,NULL,NULL,'2007-07-28 22:00:00','Tour',0,5.0386,NULL,43,NULL,3,2,'2009-01-23 22:53:17','2009-01-23 23:14:25');
INSERT INTO `events` VALUES (33,15,NULL,NULL,NULL,'2007-07-28 22:00:00','Tour',0,4.3667,NULL,47,NULL,3,3,'2009-01-23 22:53:17','2009-01-23 23:14:25');
INSERT INTO `events` VALUES (34,7,NULL,NULL,NULL,'2007-07-28 22:00:00','Tour',0,3.8965,NULL,50,NULL,3,4,'2009-01-23 22:53:17','2009-01-23 23:14:25');
INSERT INTO `events` VALUES (35,8,NULL,NULL,NULL,'2007-07-28 22:00:00','Tour',0,3.6278,NULL,52,NULL,3,5,'2009-01-23 22:53:17','2009-01-23 23:14:25');
INSERT INTO `events` VALUES (36,4,NULL,NULL,NULL,'2007-07-28 22:00:00','Tour',0,3.359,NULL,48,NULL,3,6,'2009-01-23 22:53:17','2009-01-23 23:14:25');
INSERT INTO `events` VALUES (37,37,NULL,NULL,NULL,'2007-07-28 22:00:00','Tour',0,3.1709,NULL,64,NULL,3,7,'2009-01-23 22:53:17','2009-01-23 23:14:25');
INSERT INTO `events` VALUES (38,1,NULL,NULL,NULL,'2007-07-28 22:00:00','Tour',0,3.0634,NULL,46,NULL,3,8,'2009-01-23 22:53:17','2009-01-23 23:14:25');
INSERT INTO `events` VALUES (39,9,NULL,NULL,NULL,'2007-07-28 22:00:00','Tour',0,2.956,NULL,57,NULL,3,9,'2009-01-23 22:53:17','2009-01-23 23:14:25');
INSERT INTO `events` VALUES (40,17,NULL,NULL,NULL,'2007-07-28 22:00:00','Tour',0,2.8485,NULL,90,NULL,3,10,'2009-01-23 22:53:17','2009-01-23 23:26:16');
INSERT INTO `events` VALUES (41,19,NULL,NULL,NULL,'2007-07-28 22:00:00','Tour',0,2.741,NULL,56,NULL,3,11,'2009-01-23 22:53:17','2009-01-23 23:14:25');
INSERT INTO `events` VALUES (42,14,NULL,NULL,NULL,'2007-07-28 22:00:00','Tour',0,2.6335,NULL,51,NULL,3,12,'2009-01-23 22:53:17','2009-01-23 23:14:25');
INSERT INTO `events` VALUES (43,2,NULL,NULL,NULL,'2007-12-01 22:00:00','Tour',0,39.9982,NULL,106,NULL,4,1,'2009-01-23 23:03:42','2009-01-23 23:39:04');
INSERT INTO `events` VALUES (44,6,NULL,NULL,NULL,'2007-12-01 22:00:00','Tour',0,31.9986,NULL,75,NULL,4,2,'2009-01-23 23:03:42','2009-01-23 23:21:48');
INSERT INTO `events` VALUES (45,12,NULL,NULL,NULL,'2007-12-01 22:00:00','Tour',0,27.7321,NULL,79,NULL,4,3,'2009-01-23 23:03:42','2009-01-23 23:21:48');
INSERT INTO `events` VALUES (46,1,NULL,NULL,NULL,'2007-12-01 22:00:00','Tour',0,24.7456,NULL,66,NULL,4,4,'2009-01-23 23:03:42','2009-01-23 23:21:48');
INSERT INTO `events` VALUES (47,15,NULL,NULL,NULL,'2007-12-01 22:00:00','Tour',0,23.039,NULL,94,NULL,4,5,'2009-01-23 23:03:42','2009-01-23 23:26:16');
INSERT INTO `events` VALUES (48,4,NULL,NULL,NULL,'2007-12-01 22:00:00','Tour',0,21.3324,NULL,67,NULL,4,6,'2009-01-23 23:03:42','2009-01-23 23:21:48');
INSERT INTO `events` VALUES (49,25,NULL,NULL,NULL,'2007-12-01 22:00:00','Tour',0,20.1378,NULL,NULL,NULL,4,7,'2009-01-23 23:03:42','2009-01-23 23:14:52');
INSERT INTO `events` VALUES (50,7,NULL,NULL,NULL,'2007-12-01 22:00:00','Tour',0,20.1378,NULL,73,NULL,4,7,'2009-01-23 23:03:42','2009-01-23 23:21:48');
INSERT INTO `events` VALUES (51,14,NULL,NULL,NULL,'2007-12-01 22:00:00','Tour',0,18.7725,NULL,70,NULL,4,9,'2009-01-23 23:03:42','2009-01-23 23:21:48');
INSERT INTO `events` VALUES (52,8,NULL,NULL,NULL,'2007-12-01 22:00:00','Tour',0,18.7725,NULL,80,NULL,4,9,'2009-01-23 23:03:42','2009-01-23 23:21:48');
INSERT INTO `events` VALUES (53,34,NULL,NULL,NULL,'2007-12-01 22:00:00','Tour',0,17.4072,NULL,NULL,NULL,4,11,'2009-01-23 23:03:43','2009-01-23 23:14:52');
INSERT INTO `events` VALUES (54,35,NULL,NULL,NULL,'2007-12-01 22:00:00','Tour',0,17.4072,NULL,NULL,NULL,4,11,'2009-01-23 23:03:43','2009-01-23 23:14:52');
INSERT INTO `events` VALUES (55,18,NULL,NULL,NULL,'2007-12-01 22:00:00','Tour',0,16.2468,NULL,NULL,NULL,4,13,'2009-01-23 23:03:43','2009-01-23 23:14:52');
INSERT INTO `events` VALUES (56,19,NULL,NULL,NULL,'2007-12-01 22:00:00','Tour',0,16.2468,NULL,78,NULL,4,13,'2009-01-23 23:03:43','2009-01-23 23:21:48');
INSERT INTO `events` VALUES (57,9,NULL,NULL,NULL,'2007-12-01 22:00:00','Tour',0,16.2468,NULL,68,NULL,4,13,'2009-01-23 23:03:43','2009-01-23 23:21:48');
INSERT INTO `events` VALUES (58,39,NULL,NULL,NULL,'2007-12-01 22:00:00','Tour',0,15.9737,NULL,NULL,NULL,4,14,'2009-01-23 23:03:43','2009-01-23 23:14:52');
INSERT INTO `events` VALUES (59,20,NULL,NULL,NULL,'2007-12-01 22:00:00','Tour',0,15.1545,NULL,77,NULL,4,17,'2009-01-23 23:03:43','2009-01-23 23:21:48');
INSERT INTO `events` VALUES (60,43,NULL,NULL,NULL,'2007-12-01 22:00:00','Tour',0,15.1545,NULL,NULL,NULL,4,17,'2009-01-23 23:03:43','2009-01-23 23:14:52');
INSERT INTO `events` VALUES (61,21,NULL,NULL,NULL,'2007-12-01 22:00:00','Tour',0,15.1545,NULL,NULL,NULL,4,17,'2009-01-23 23:03:43','2009-01-23 23:14:52');
INSERT INTO `events` VALUES (62,42,NULL,NULL,NULL,'2007-12-01 22:00:00','Tour',0,15.1545,NULL,NULL,NULL,4,17,'2009-01-23 23:03:43','2009-01-23 23:14:52');
INSERT INTO `events` VALUES (63,41,NULL,NULL,NULL,'2007-12-01 22:00:00','Tour',0,14.0623,NULL,NULL,NULL,4,21,'2009-01-23 23:03:43','2009-01-23 23:14:52');
INSERT INTO `events` VALUES (64,37,NULL,NULL,NULL,'2007-12-01 22:00:00','Tour',0,14.0623,NULL,NULL,NULL,4,21,'2009-01-23 23:03:43','2009-01-23 23:14:52');
INSERT INTO `events` VALUES (65,44,NULL,NULL,NULL,'2007-12-01 22:00:00','Tour',0,14.0623,NULL,NULL,NULL,4,21,'2009-01-23 23:03:43','2009-01-23 23:14:52');
INSERT INTO `events` VALUES (66,1,NULL,NULL,NULL,'2008-07-26 22:00:00','Tour',0,5.7794,NULL,82,NULL,5,1,'2009-01-23 23:21:48','2009-01-23 23:26:16');
INSERT INTO `events` VALUES (67,4,NULL,NULL,NULL,'2008-07-26 22:00:00','Tour',0,4.6235,NULL,83,NULL,5,2,'2009-01-23 23:21:48','2009-01-23 23:26:16');
INSERT INTO `events` VALUES (68,9,NULL,NULL,NULL,'2008-07-26 22:00:00','Tour',0,4.0071,NULL,92,NULL,5,3,'2009-01-23 23:21:48','2009-01-23 23:26:16');
INSERT INTO `events` VALUES (69,22,NULL,NULL,NULL,'2008-07-26 22:00:00','Tour',0,3.5755,NULL,85,NULL,5,4,'2009-01-23 23:21:48','2009-01-23 23:26:16');
INSERT INTO `events` VALUES (70,14,NULL,NULL,NULL,'2008-07-26 22:00:00','Tour',0,3.3289,NULL,95,NULL,5,5,'2009-01-23 23:21:48','2009-01-23 23:26:16');
INSERT INTO `events` VALUES (71,47,NULL,NULL,NULL,'2008-07-26 22:00:00','Tour',0,3.3289,NULL,NULL,NULL,5,5,'2009-01-23 23:21:48','2009-01-23 23:22:02');
INSERT INTO `events` VALUES (72,10,NULL,NULL,NULL,'2008-07-26 22:00:00','Tour',0,3.3289,NULL,97,NULL,5,5,'2009-01-23 23:21:48','2009-01-23 23:26:17');
INSERT INTO `events` VALUES (73,7,NULL,NULL,NULL,'2008-07-26 22:00:00','Tour',0,2.8111,NULL,89,NULL,5,8,'2009-01-23 23:21:48','2009-01-23 23:26:16');
INSERT INTO `events` VALUES (74,29,NULL,NULL,NULL,'2008-07-26 22:00:00','Tour',0,2.7125,NULL,96,NULL,5,9,'2009-01-23 23:21:48','2009-01-23 23:26:17');
INSERT INTO `events` VALUES (75,6,NULL,NULL,NULL,'2008-07-26 22:00:00','Tour',0,2.7125,NULL,84,NULL,5,9,'2009-01-23 23:21:48','2009-01-23 23:26:16');
INSERT INTO `events` VALUES (76,45,NULL,NULL,NULL,'2008-07-26 22:00:00','Tour',0,2.7125,NULL,NULL,NULL,5,9,'2009-01-23 23:21:48','2009-01-23 23:22:02');
INSERT INTO `events` VALUES (77,20,NULL,NULL,NULL,'2008-07-26 22:00:00','Tour',0,2.7125,NULL,99,NULL,5,9,'2009-01-23 23:21:48','2009-01-23 23:26:17');
INSERT INTO `events` VALUES (78,19,NULL,NULL,NULL,'2008-07-26 22:00:00','Tour',0,2.7125,NULL,NULL,NULL,5,9,'2009-01-23 23:21:48','2009-01-23 23:22:02');
INSERT INTO `events` VALUES (79,12,NULL,NULL,NULL,'2008-07-26 22:00:00','Tour',0,2.7125,NULL,87,NULL,5,9,'2009-01-23 23:21:48','2009-01-23 23:26:16');
INSERT INTO `events` VALUES (80,8,NULL,NULL,NULL,'2008-07-26 22:00:00','Tour',0,2.7125,NULL,88,NULL,5,9,'2009-01-23 23:21:48','2009-01-23 23:26:16');
INSERT INTO `events` VALUES (81,31,NULL,NULL,NULL,'2008-07-26 22:00:00','Tour',0,2.2292,NULL,100,NULL,5,16,'2009-01-23 23:21:48','2009-01-23 23:26:17');
INSERT INTO `events` VALUES (82,1,NULL,NULL,NULL,'2008-10-25 15:00:00','Tour',0,50.5701,NULL,105,NULL,6,1,'2009-01-23 23:26:16','2009-01-23 23:39:04');
INSERT INTO `events` VALUES (83,4,NULL,NULL,NULL,'2008-10-25 15:00:00','Tour',0,40.4561,NULL,107,NULL,6,2,'2009-01-23 23:26:16','2009-01-23 23:39:04');
INSERT INTO `events` VALUES (84,6,NULL,NULL,NULL,'2008-10-25 15:00:00','Tour',0,35.0619,NULL,111,NULL,6,3,'2009-01-23 23:26:16','2009-01-23 23:39:04');
INSERT INTO `events` VALUES (85,22,NULL,NULL,NULL,'2008-10-25 15:00:00','Tour',0,31.286,NULL,108,NULL,6,4,'2009-01-23 23:26:16','2009-01-23 23:39:04');
INSERT INTO `events` VALUES (86,13,NULL,NULL,NULL,'2008-10-25 15:00:00','Tour',0,29.1284,NULL,NULL,NULL,6,5,'2009-01-23 23:26:16','2009-01-23 23:34:41');
INSERT INTO `events` VALUES (87,12,NULL,NULL,NULL,'2008-10-25 15:00:00','Tour',0,26.9707,NULL,112,NULL,6,6,'2009-01-23 23:26:16','2009-01-23 23:39:04');
INSERT INTO `events` VALUES (88,8,NULL,NULL,NULL,'2008-10-25 15:00:00','Tour',0,25.4604,NULL,118,NULL,6,7,'2009-01-23 23:26:16','2009-01-23 23:39:04');
INSERT INTO `events` VALUES (89,7,NULL,NULL,NULL,'2008-10-25 15:00:00','Tour',0,25.4604,NULL,115,NULL,6,7,'2009-01-23 23:26:16','2009-01-23 23:39:04');
INSERT INTO `events` VALUES (90,17,NULL,NULL,NULL,'2008-10-25 15:00:00','Tour',0,23.7342,NULL,110,NULL,6,9,'2009-01-23 23:26:16','2009-01-23 23:39:04');
INSERT INTO `events` VALUES (91,11,NULL,NULL,NULL,'2008-10-25 15:00:00','Tour',0,23.7342,NULL,109,NULL,6,9,'2009-01-23 23:26:16','2009-01-23 23:39:04');
INSERT INTO `events` VALUES (92,9,NULL,NULL,NULL,'2008-10-25 15:00:00','Tour',0,22.0081,NULL,NULL,NULL,6,11,'2009-01-23 23:26:16','2009-01-23 23:34:41');
INSERT INTO `events` VALUES (93,16,NULL,NULL,NULL,'2008-10-25 15:00:00','Tour',0,22.0081,NULL,NULL,NULL,6,11,'2009-01-23 23:26:16','2009-01-23 23:34:41');
INSERT INTO `events` VALUES (94,15,NULL,NULL,NULL,'2008-10-25 15:00:00','Tour',0,20.5409,NULL,114,NULL,6,13,'2009-01-23 23:26:16','2009-01-23 23:39:04');
INSERT INTO `events` VALUES (95,14,NULL,NULL,NULL,'2008-10-25 15:00:00','Tour',0,20.5409,NULL,NULL,NULL,6,13,'2009-01-23 23:26:16','2009-01-23 23:34:41');
INSERT INTO `events` VALUES (96,29,NULL,NULL,NULL,'2008-10-25 15:00:00','Tour',0,19.8505,NULL,116,NULL,6,15,'2009-01-23 23:26:16','2009-01-23 23:39:04');
INSERT INTO `events` VALUES (97,10,NULL,NULL,NULL,'2008-10-25 15:00:00','Tour',0,19.5052,NULL,117,NULL,6,16,'2009-01-23 23:26:17','2009-01-23 23:39:04');
INSERT INTO `events` VALUES (98,30,NULL,NULL,NULL,'2008-10-25 15:00:00','Tour',0,19.16,NULL,NULL,NULL,6,17,'2009-01-23 23:26:17','2009-01-23 23:34:41');
INSERT INTO `events` VALUES (99,20,NULL,NULL,NULL,'2008-10-25 15:00:00','Tour',0,18.8148,NULL,NULL,NULL,6,18,'2009-01-23 23:26:17','2009-01-23 23:34:41');
INSERT INTO `events` VALUES (100,31,NULL,NULL,NULL,'2008-10-25 15:00:00','Tour',0,18.4696,NULL,NULL,NULL,6,19,'2009-01-23 23:26:17','2009-01-23 23:34:41');
INSERT INTO `events` VALUES (101,32,NULL,NULL,NULL,'2008-10-25 15:00:00','Tour',0,18.1243,NULL,NULL,NULL,6,20,'2009-01-23 23:26:17','2009-01-23 23:34:41');
INSERT INTO `events` VALUES (102,23,NULL,NULL,NULL,'2008-10-25 15:00:00','Tour',0,17.7791,NULL,NULL,NULL,6,21,'2009-01-23 23:26:17','2009-01-23 23:34:41');
INSERT INTO `events` VALUES (103,33,NULL,NULL,NULL,'2008-10-25 15:00:00','Tour',0,17.7791,NULL,NULL,NULL,6,21,'2009-01-23 23:26:17','2009-01-23 23:34:41');
INSERT INTO `events` VALUES (104,5,NULL,NULL,NULL,'2009-01-17 20:30:00','Tour',0,10.3051,NULL,NULL,NULL,7,1,'2009-01-23 23:39:04','2009-01-23 23:39:24');
INSERT INTO `events` VALUES (105,1,NULL,NULL,NULL,'2009-01-17 20:30:00','Tour',0,8.244,NULL,NULL,NULL,7,2,'2009-01-23 23:39:04','2009-01-23 23:39:24');
INSERT INTO `events` VALUES (106,2,NULL,NULL,NULL,'2009-01-17 20:30:00','Tour',0,7.1448,NULL,NULL,NULL,7,3,'2009-01-23 23:39:04','2009-01-23 23:39:24');
INSERT INTO `events` VALUES (107,4,NULL,NULL,NULL,'2009-01-17 20:30:00','Tour',0,7.1448,NULL,NULL,NULL,7,3,'2009-01-23 23:39:04','2009-01-23 23:39:24');
INSERT INTO `events` VALUES (108,22,NULL,NULL,NULL,'2009-01-17 20:30:00','Tour',0,5.9357,NULL,NULL,NULL,7,5,'2009-01-23 23:39:04','2009-01-23 23:39:24');
INSERT INTO `events` VALUES (109,11,NULL,NULL,NULL,'2009-01-17 20:30:00','Tour',0,5.9357,NULL,NULL,NULL,7,5,'2009-01-23 23:39:04','2009-01-23 23:39:24');
INSERT INTO `events` VALUES (110,17,NULL,NULL,NULL,'2009-01-17 20:30:00','Tour',0,5.1883,NULL,NULL,NULL,7,7,'2009-01-23 23:39:04','2009-01-23 23:39:24');
INSERT INTO `events` VALUES (111,6,NULL,NULL,NULL,'2009-01-17 20:30:00','Tour',0,5.0124,NULL,NULL,NULL,7,8,'2009-01-23 23:39:04','2009-01-23 23:39:24');
INSERT INTO `events` VALUES (112,12,NULL,NULL,NULL,'2009-01-17 20:30:00','Tour',0,4.8365,NULL,NULL,NULL,7,9,'2009-01-23 23:39:04','2009-01-23 23:39:24');
INSERT INTO `events` VALUES (113,3,NULL,NULL,NULL,'2009-01-17 20:30:00','Tour',0,4.8365,NULL,NULL,NULL,7,9,'2009-01-23 23:39:04','2009-01-23 23:39:24');
INSERT INTO `events` VALUES (114,15,NULL,NULL,NULL,'2009-01-17 20:30:00','Tour',0,4.8365,NULL,NULL,NULL,7,9,'2009-01-23 23:39:04','2009-01-23 23:39:24');
INSERT INTO `events` VALUES (115,7,NULL,NULL,NULL,'2009-01-17 20:30:00','Tour',0,4.8365,NULL,NULL,NULL,7,9,'2009-01-23 23:39:04','2009-01-23 23:39:24');
INSERT INTO `events` VALUES (116,29,NULL,NULL,NULL,'2009-01-17 20:30:00','Tour',0,4.1858,NULL,NULL,NULL,7,13,'2009-01-23 23:39:04','2009-01-23 23:39:24');
INSERT INTO `events` VALUES (117,10,NULL,NULL,NULL,'2009-01-17 20:30:00','Tour',0,4.1858,NULL,NULL,NULL,7,13,'2009-01-23 23:39:04','2009-01-23 23:39:24');
INSERT INTO `events` VALUES (118,8,NULL,NULL,NULL,'2009-01-17 20:30:00','Tour',0,4.1858,NULL,NULL,NULL,7,13,'2009-01-23 23:39:04','2009-01-23 23:39:24');
INSERT INTO `events` VALUES (119,46,NULL,NULL,NULL,'2009-01-17 20:30:00','Tour',0,4.1858,NULL,NULL,NULL,7,13,'2009-01-23 23:39:04','2009-01-23 23:39:24');

/*!40101 SET NAMES utf8 */;

#
# Table structure for table players
#

CREATE TABLE `players` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '<noname>',
  `active` tinyint(1) NOT NULL default '0',
  `raking` decimal(8,4) NOT NULL default '0.0000',
  PRIMARY KEY  (`id`)
) AUTO_INCREMENT=49 DEFAULT CHARSET=cp1251;

#
# Dumping data for table players
#

/*!40101 SET NAMES cp1251 */;

INSERT INTO `players` VALUES (1,'Vladimir T',1,0);
INSERT INTO `players` VALUES (2,'Den',1,0);
INSERT INTO `players` VALUES (3,'Illinon',1,0);
INSERT INTO `players` VALUES (4,'DK',1,0);
INSERT INTO `players` VALUES (5,'Barmaley',1,0);
INSERT INTO `players` VALUES (6,'Lunich',1,0);
INSERT INTO `players` VALUES (7,'Kimm',1,0);
INSERT INTO `players` VALUES (8,'BASH!',1,0);
INSERT INTO `players` VALUES (9,'SergEK',1,0);
INSERT INTO `players` VALUES (10,'Olia M',1,0);
INSERT INTO `players` VALUES (11,'Lavrenov',1,0);
INSERT INTO `players` VALUES (12,'Sergiy',1,0);
INSERT INTO `players` VALUES (13,'LG',1,0);
INSERT INTO `players` VALUES (14,'Udav',1,0);
INSERT INTO `players` VALUES (15,'York',1,0);
INSERT INTO `players` VALUES (16,'Marlboro',1,0);
INSERT INTO `players` VALUES (17,'LudOK',1,0);
INSERT INTO `players` VALUES (18,'IRBIS',1,0);
INSERT INTO `players` VALUES (19,'Cofeynik',1,0);
INSERT INTO `players` VALUES (20,'Hataxa',1,0);
INSERT INTO `players` VALUES (21,'Griff',1,0);
INSERT INTO `players` VALUES (22,'Volmax',1,0);
INSERT INTO `players` VALUES (23,'R0land',1,0);
INSERT INTO `players` VALUES (24,'RAT',1,0);
INSERT INTO `players` VALUES (25,'LX',1,0);
INSERT INTO `players` VALUES (26,'Sam',1,0);
INSERT INTO `players` VALUES (27,'Jurist',1,0);
INSERT INTO `players` VALUES (28,'LENA',1,0);
INSERT INTO `players` VALUES (29,'Lexa',1,0);
INSERT INTO `players` VALUES (30,'Gorynych',1,0);
INSERT INTO `players` VALUES (31,'Cori',1,0);
INSERT INTO `players` VALUES (32,'Julia',1,0);
INSERT INTO `players` VALUES (33,'Nata-Lee',1,0);
INSERT INTO `players` VALUES (34,'Andrey',1,0);
INSERT INTO `players` VALUES (35,'Kostenko',1,0);
INSERT INTO `players` VALUES (36,'Valkiria',1,0);
INSERT INTO `players` VALUES (37,'Sergey Ch',1,0);
INSERT INTO `players` VALUES (38,'Fagot',1,0);
INSERT INTO `players` VALUES (39,'Roman',1,0);
INSERT INTO `players` VALUES (40,'Peskar',1,0);
INSERT INTO `players` VALUES (41,'KS',1,0);
INSERT INTO `players` VALUES (42,'Vadim Gl',1,0);
INSERT INTO `players` VALUES (43,'Pripara',1,0);
INSERT INTO `players` VALUES (44,'Nikolay',1,0);
INSERT INTO `players` VALUES (45,'Peria',1,0);
INSERT INTO `players` VALUES (46,'пїЅпїЅпїЅ',1,0);
INSERT INTO `players` VALUES (47,'Fima',1,0);
INSERT INTO `players` VALUES (48,'Lesha',0,0);

/*!40101 SET NAMES utf8 */;

#
# Table structure for table schema_migrations
#

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL default '',
  UNIQUE KEY `unique_schema_migrations` (`version`)
) DEFAULT CHARSET=cp1251;

#
# Dumping data for table schema_migrations
#

/*!40101 SET NAMES cp1251 */;

INSERT INTO `schema_migrations` VALUES ('20081216201902');
INSERT INTO `schema_migrations` VALUES ('20090112195802');
INSERT INTO `schema_migrations` VALUES ('20090113091616');
INSERT INTO `schema_migrations` VALUES ('20090113093850');
INSERT INTO `schema_migrations` VALUES ('20090119212816');
INSERT INTO `schema_migrations` VALUES ('20090123161720');
INSERT INTO `schema_migrations` VALUES ('20090123162012');
INSERT INTO `schema_migrations` VALUES ('20090123222911');

/*!40101 SET NAMES utf8 */;

#
# Table structure for table tournaments
#

CREATE TABLE `tournaments` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `start` datetime default NULL,
  `end` datetime default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `total_raking` decimal(8,4) default NULL,
  `coeff` decimal(8,4) default NULL,
  `raking` decimal(8,4) default NULL,
  `qualify` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) AUTO_INCREMENT=8 DEFAULT CHARSET=cp1251;

#
# Dumping data for table tournaments
#

/*!40101 SET NAMES cp1251 */;

INSERT INTO `tournaments` VALUES (1,'LPP-1','2006-06-20 12:00:00','2007-01-27 16:00:00','2009-01-23 20:59:01','2009-01-23 20:59:01',439,1,439,1);
INSERT INTO `tournaments` VALUES (2,'Bingo Challenge','2007-02-17 12:00:00','2007-02-17 22:00:00','2009-01-23 22:42:58','2009-01-23 23:13:24',38,0.5587,21.2316,0);
INSERT INTO `tournaments` VALUES (3,'BASH! - 2007','2007-07-28 12:00:00','2007-07-28 22:00:00','2009-01-23 22:53:17','2009-01-23 23:14:25',44,0.7124,31.3463,0);
INSERT INTO `tournaments` VALUES (4,'LPP-2','2007-06-10 12:00:00','2007-12-01 22:00:00','2009-01-23 23:03:42','2009-01-23 23:14:52',449,0.6727,302.063,1);
INSERT INTO `tournaments` VALUES (5,'BASH! - 2008','2008-07-26 12:00:00','2008-07-26 22:00:00','2009-01-23 23:21:48','2009-01-23 23:22:02',52,0.6218,32.3342,0);
INSERT INTO `tournaments` VALUES (6,'LPP-3','2008-03-15 12:00:00','2008-10-25 15:00:00','2009-01-23 23:26:16','2009-01-23 23:34:41',546.443,0.5756,314.5285,1);
INSERT INTO `tournaments` VALUES (7,'SPP-1','2009-01-17 12:30:00','2009-01-17 20:30:00','2009-01-23 23:39:04','2009-01-23 23:39:24',91,0.7899,71.8834,0);

/*!40101 SET NAMES utf8 */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
