# SQLFront 3.2  (Build 14.11)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='SYSTEM' */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: localhost    Database: lpp
# ------------------------------------------------------
# Server version 4.1.21-community-nt

USE `lpp`;

/*!40101 SET NAMES cp1251 */;

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
  `qualify` int(11) default NULL,
  `raking` decimal(8,4) default NULL,
  `prev_id` int(11) default NULL,
  `next_id` int(11) default NULL,
  `comment` varchar(255) default NULL,
  `tournament_id` int(11) default NULL,
  `tournament_place` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# Dumping data for table events
#


#
# Table structure for table players
#

CREATE TABLE `players` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '<noname>',
  `active` tinyint(1) NOT NULL default '0',
  `raking` decimal(8,4) NOT NULL default '0.0000',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# Dumping data for table players
#

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
INSERT INTO `players` VALUES (46,'Þðà',1,0);
INSERT INTO `players` VALUES (47,'Fima',1,0);

#
# Table structure for table schema_migrations
#

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL default '',
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# Dumping data for table schema_migrations
#

INSERT INTO `schema_migrations` VALUES ('20081216201902');
INSERT INTO `schema_migrations` VALUES ('20090112195802');
INSERT INTO `schema_migrations` VALUES ('20090113091616');
INSERT INTO `schema_migrations` VALUES ('20090113093850');
INSERT INTO `schema_migrations` VALUES ('20090119212816');
INSERT INTO `schema_migrations` VALUES ('20090123161720');
INSERT INTO `schema_migrations` VALUES ('20090123162012');

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
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# Dumping data for table tournaments
#


/*!40101 SET NAMES latin1 */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
