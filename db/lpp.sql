# SQLFront 3.2  (Build 14.11)

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='SYSTEM' */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: localhost    Database: lpp
# ------------------------------------------------------
# Server version 4.1.21-community-nt

DROP DATABASE IF EXISTS `lpp`;
CREATE DATABASE `lpp` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `lpp`;

/*!40101 SET NAMES utf8 */;

#
# Table structure for table events
#

CREATE TABLE `events` (
  `id` int(11) NOT NULL auto_increment,
  `player_id` int(11) default NULL,
  `time` datetime default NULL,
  `type` char(255) character set cp1251 default NULL,
  `raking` decimal(8,4) default NULL,
  `comment` char(255) character set cp1251 default NULL,
  `parent_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=FIXED;

#
# Dumping data for table events
#

INSERT INTO `events` VALUES (1,2,'2007-01-27 16:00:00','Tour',43.7056,NULL,1);
INSERT INTO `events` VALUES (2,6,'2007-01-27 16:00:00','Tour',34.9645,NULL,2);
INSERT INTO `events` VALUES (3,12,'2007-01-27 16:00:00','Tour',30.3025,NULL,3);
INSERT INTO `events` VALUES (4,4,'2007-01-27 16:00:00','Tour',27.0392,NULL,4);
INSERT INTO `events` VALUES (5,24,'2007-01-27 16:00:00','Tour',25.1744,NULL,5);
INSERT INTO `events` VALUES (6,27,'2007-01-27 16:00:00','Tour',23.3097,NULL,6);
INSERT INTO `events` VALUES (7,28,'2007-01-27 16:00:00','Tour',22.0043,NULL,7);
INSERT INTO `events` VALUES (8,18,'2007-01-27 16:00:00','Tour',21.2584,NULL,8);
INSERT INTO `events` VALUES (9,26,'2007-01-27 16:00:00','Tour',20.5125,NULL,9);
INSERT INTO `events` VALUES (10,21,'2007-01-27 16:00:00','Tour',19.7666,NULL,10);
INSERT INTO `events` VALUES (11,14,'2007-01-27 16:00:00','Tour',19.0207,NULL,11);
INSERT INTO `events` VALUES (12,7,'2007-01-27 16:00:00','Tour',18.2748,NULL,12);
INSERT INTO `events` VALUES (13,9,'2007-01-27 16:00:00','Tour',17.7526,NULL,13);
INSERT INTO `events` VALUES (14,8,'2007-01-27 16:00:00','Tour',17.4543,NULL,14);
INSERT INTO `events` VALUES (15,36,'2007-01-27 16:00:00','Tour',17.1559,NULL,15);
INSERT INTO `events` VALUES (16,15,'2007-01-27 16:00:00','Tour',16.8575,NULL,16);
INSERT INTO `events` VALUES (17,23,'2007-01-27 16:00:00','Tour',16.5592,NULL,17);
INSERT INTO `events` VALUES (18,38,'2007-01-27 16:00:00','Tour',16.2608,NULL,18);
INSERT INTO `events` VALUES (19,19,'2007-01-27 16:00:00','Tour',15.9624,NULL,19);
INSERT INTO `events` VALUES (20,40,'2007-01-27 16:00:00','Tour',15.6641,NULL,20);
INSERT INTO `events` VALUES (21,12,'2007-02-17 22:00:00','Tour',6.1962,NULL,21);
INSERT INTO `events` VALUES (22,25,'2007-02-17 22:00:00','Tour',4.957,NULL,22);
INSERT INTO `events` VALUES (23,15,'2007-02-17 22:00:00','Tour',4.296,NULL,23);
INSERT INTO `events` VALUES (24,26,'2007-02-17 22:00:00','Tour',3.8334,NULL,24);
INSERT INTO `events` VALUES (25,7,'2007-02-17 22:00:00','Tour',3.569,NULL,25);
INSERT INTO `events` VALUES (26,14,'2007-02-17 22:00:00','Tour',3.3046,NULL,26);
INSERT INTO `events` VALUES (27,4,'2007-02-17 22:00:00','Tour',3.1196,NULL,27);
INSERT INTO `events` VALUES (28,9,'2007-02-17 22:00:00','Tour',3.0138,NULL,28);
INSERT INTO `events` VALUES (29,1,'2007-02-17 22:00:00','Tour',2.8552,NULL,29);
INSERT INTO `events` VALUES (30,48,'2007-02-17 22:00:00','Tour',2.8552,NULL,30);
INSERT INTO `events` VALUES (31,12,'2007-07-28 22:00:00','Tour',6.2982,NULL,31);
INSERT INTO `events` VALUES (32,2,'2007-07-28 22:00:00','Tour',5.0386,NULL,32);
INSERT INTO `events` VALUES (33,15,'2007-07-28 22:00:00','Tour',4.3667,NULL,33);
INSERT INTO `events` VALUES (34,7,'2007-07-28 22:00:00','Tour',3.8965,NULL,34);
INSERT INTO `events` VALUES (35,8,'2007-07-28 22:00:00','Tour',3.6278,NULL,35);
INSERT INTO `events` VALUES (36,4,'2007-07-28 22:00:00','Tour',3.359,NULL,36);
INSERT INTO `events` VALUES (37,37,'2007-07-28 22:00:00','Tour',3.1709,NULL,37);
INSERT INTO `events` VALUES (38,1,'2007-07-28 22:00:00','Tour',3.0634,NULL,38);
INSERT INTO `events` VALUES (39,9,'2007-07-28 22:00:00','Tour',2.956,NULL,39);
INSERT INTO `events` VALUES (40,17,'2007-07-28 22:00:00','Tour',2.8485,NULL,40);
INSERT INTO `events` VALUES (41,19,'2007-07-28 22:00:00','Tour',2.741,NULL,41);
INSERT INTO `events` VALUES (42,14,'2007-07-28 22:00:00','Tour',2.6335,NULL,42);
INSERT INTO `events` VALUES (64,2,'2007-12-01 22:00:00','Tour',40.5281,NULL,64);
INSERT INTO `events` VALUES (65,6,'2007-12-01 22:00:00','Tour',32.4225,NULL,65);
INSERT INTO `events` VALUES (66,12,'2007-12-01 22:00:00','Tour',28.0995,NULL,66);
INSERT INTO `events` VALUES (67,1,'2007-12-01 22:00:00','Tour',25.0734,NULL,67);
INSERT INTO `events` VALUES (68,15,'2007-12-01 22:00:00','Tour',23.3442,NULL,68);
INSERT INTO `events` VALUES (69,4,'2007-12-01 22:00:00','Tour',21.615,NULL,69);
INSERT INTO `events` VALUES (70,25,'2007-12-01 22:00:00','Tour',20.0587,NULL,70);
INSERT INTO `events` VALUES (71,7,'2007-12-01 22:00:00','Tour',20.0587,NULL,71);
INSERT INTO `events` VALUES (72,14,'2007-12-01 22:00:00','Tour',18.6754,NULL,72);
INSERT INTO `events` VALUES (73,8,'2007-12-01 22:00:00','Tour',18.6754,NULL,73);
INSERT INTO `events` VALUES (74,34,'2007-12-01 22:00:00','Tour',17.292,NULL,74);
INSERT INTO `events` VALUES (75,35,'2007-12-01 22:00:00','Tour',17.292,NULL,75);
INSERT INTO `events` VALUES (76,18,'2007-12-01 22:00:00','Tour',16.047,NULL,76);
INSERT INTO `events` VALUES (77,19,'2007-12-01 22:00:00','Tour',16.047,NULL,77);
INSERT INTO `events` VALUES (78,9,'2007-12-01 22:00:00','Tour',16.047,NULL,78);
INSERT INTO `events` VALUES (79,39,'2007-12-01 22:00:00','Tour',16.047,NULL,79);
INSERT INTO `events` VALUES (80,20,'2007-12-01 22:00:00','Tour',14.9403,NULL,80);
INSERT INTO `events` VALUES (81,43,'2007-12-01 22:00:00','Tour',14.9403,NULL,81);
INSERT INTO `events` VALUES (82,21,'2007-12-01 22:00:00','Tour',14.9403,NULL,82);
INSERT INTO `events` VALUES (83,42,'2007-12-01 22:00:00','Tour',14.9403,NULL,83);
INSERT INTO `events` VALUES (84,41,'2007-12-01 22:00:00','Tour',13.9719,NULL,84);
INSERT INTO `events` VALUES (85,37,'2007-12-01 22:00:00','Tour',13.9719,NULL,85);
INSERT INTO `events` VALUES (86,44,'2007-12-01 22:00:00','Tour',13.9719,NULL,86);
INSERT INTO `events` VALUES (97,1,'2008-07-26 22:00:00','Tour',4.6801,NULL,97);
INSERT INTO `events` VALUES (98,4,'2008-07-26 22:00:00','Tour',3.7441,NULL,98);
INSERT INTO `events` VALUES (99,9,'2008-07-26 22:00:00','Tour',3.2449,NULL,99);
INSERT INTO `events` VALUES (100,22,'2008-07-26 22:00:00','Tour',2.8954,NULL,100);
INSERT INTO `events` VALUES (101,14,'2008-07-26 22:00:00','Tour',2.516,NULL,101);
INSERT INTO `events` VALUES (102,47,'2008-07-26 22:00:00','Tour',2.516,NULL,102);
INSERT INTO `events` VALUES (103,10,'2008-07-26 22:00:00','Tour',2.516,NULL,103);
INSERT INTO `events` VALUES (104,7,'2008-07-26 22:00:00','Tour',2.2764,NULL,104);
INSERT INTO `events` VALUES (105,29,'2008-07-26 22:00:00','Tour',1.9877,NULL,105);
INSERT INTO `events` VALUES (106,6,'2008-07-26 22:00:00','Tour',1.9877,NULL,106);
INSERT INTO `events` VALUES (107,45,'2008-07-26 22:00:00','Tour',1.9877,NULL,107);
INSERT INTO `events` VALUES (108,20,'2008-07-26 22:00:00','Tour',1.9877,NULL,108);
INSERT INTO `events` VALUES (109,19,'2008-07-26 22:00:00','Tour',1.9877,NULL,109);
INSERT INTO `events` VALUES (110,12,'2008-07-26 22:00:00','Tour',1.9877,NULL,110);
INSERT INTO `events` VALUES (111,8,'2008-07-26 22:00:00','Tour',1.9877,NULL,111);
INSERT INTO `events` VALUES (112,31,'2008-07-26 22:00:00','Tour',1.8051,NULL,112);
INSERT INTO `events` VALUES (169,1,'2008-10-25 15:00:00','Tour',50.5705,NULL,169);
INSERT INTO `events` VALUES (170,4,'2008-10-25 15:00:00','Tour',40.4564,NULL,170);
INSERT INTO `events` VALUES (171,6,'2008-10-25 15:00:00','Tour',35.0622,NULL,171);
INSERT INTO `events` VALUES (172,22,'2008-10-25 15:00:00','Tour',31.2863,NULL,172);
INSERT INTO `events` VALUES (173,13,'2008-10-25 15:00:00','Tour',29.1286,NULL,173);
INSERT INTO `events` VALUES (174,12,'2008-10-25 15:00:00','Tour',26.9709,NULL,174);
INSERT INTO `events` VALUES (175,7,'2008-10-25 15:00:00','Tour',25.0291,NULL,175);
INSERT INTO `events` VALUES (176,8,'2008-10-25 15:00:00','Tour',25.0291,NULL,176);
INSERT INTO `events` VALUES (177,17,'2008-10-25 15:00:00','Tour',23.3029,NULL,177);
INSERT INTO `events` VALUES (178,11,'2008-10-25 15:00:00','Tour',23.3029,NULL,178);
INSERT INTO `events` VALUES (179,9,'2008-10-25 15:00:00','Tour',21.5768,NULL,179);
INSERT INTO `events` VALUES (180,16,'2008-10-25 15:00:00','Tour',21.5768,NULL,180);
INSERT INTO `events` VALUES (181,15,'2008-10-25 15:00:00','Tour',20.5411,NULL,181);
INSERT INTO `events` VALUES (182,14,'2008-10-25 15:00:00','Tour',20.1958,NULL,182);
INSERT INTO `events` VALUES (183,29,'2008-10-25 15:00:00','Tour',19.8506,NULL,183);
INSERT INTO `events` VALUES (184,10,'2008-10-25 15:00:00','Tour',19.5054,NULL,184);
INSERT INTO `events` VALUES (185,30,'2008-10-25 15:00:00','Tour',19.1602,NULL,185);
INSERT INTO `events` VALUES (186,20,'2008-10-25 15:00:00','Tour',18.8149,NULL,186);
INSERT INTO `events` VALUES (187,31,'2008-10-25 15:00:00','Tour',18.2971,NULL,187);
INSERT INTO `events` VALUES (188,32,'2008-10-25 15:00:00','Tour',18.2971,NULL,188);
INSERT INTO `events` VALUES (189,23,'2008-10-25 15:00:00','Tour',17.6066,NULL,189);
INSERT INTO `events` VALUES (190,33,'2008-10-25 15:00:00','Tour',17.6066,NULL,190);
INSERT INTO `events` VALUES (206,5,'2009-01-17 20:30:00','Tour',17.0437,NULL,206);
INSERT INTO `events` VALUES (207,1,'2009-01-17 20:30:00','Tour',13.635,NULL,207);
INSERT INTO `events` VALUES (208,2,'2009-01-17 20:30:00','Tour',9.8172,NULL,208);
INSERT INTO `events` VALUES (209,4,'2009-01-17 20:30:00','Tour',9.8172,NULL,209);
INSERT INTO `events` VALUES (210,22,'2009-01-17 20:30:00','Tour',6.283,NULL,210);
INSERT INTO `events` VALUES (211,11,'2009-01-17 20:30:00','Tour',6.283,NULL,211);
INSERT INTO `events` VALUES (212,6,'2009-01-17 20:30:00','Tour',4.0211,NULL,212);
INSERT INTO `events` VALUES (213,17,'2009-01-17 20:30:00','Tour',4.0211,NULL,213);
INSERT INTO `events` VALUES (214,12,'2009-01-17 20:30:00','Tour',2.1103,NULL,214);
INSERT INTO `events` VALUES (215,3,'2009-01-17 20:30:00','Tour',2.1103,NULL,215);
INSERT INTO `events` VALUES (216,15,'2009-01-17 20:30:00','Tour',2.1103,NULL,216);
INSERT INTO `events` VALUES (217,7,'2009-01-17 20:30:00','Tour',2.1103,NULL,217);
INSERT INTO `events` VALUES (218,29,'2009-01-17 20:30:00','Tour',0.8644,NULL,218);
INSERT INTO `events` VALUES (219,10,'2009-01-17 20:30:00','Tour',0.8644,NULL,219);
INSERT INTO `events` VALUES (220,8,'2009-01-17 20:30:00','Tour',0.8644,NULL,220);
INSERT INTO `events` VALUES (221,46,'2009-01-17 20:30:00','Tour',0.8644,NULL,221);
INSERT INTO `events` VALUES (233,5,'2009-02-15 20:30:00','Tour',12.7103,NULL,233);
INSERT INTO `events` VALUES (234,12,'2009-02-15 20:30:00','Tour',10.1682,NULL,234);
INSERT INTO `events` VALUES (235,2,'2009-02-15 20:30:00','Tour',8.8124,NULL,235);
INSERT INTO `events` VALUES (236,7,'2009-02-15 20:30:00','Tour',7.8634,NULL,236);
INSERT INTO `events` VALUES (237,10,'2009-02-15 20:30:00','Tour',7.05,NULL,237);
INSERT INTO `events` VALUES (238,1,'2009-02-15 20:30:00','Tour',7.05,NULL,238);
INSERT INTO `events` VALUES (239,6,'2009-02-15 20:30:00','Tour',6.2907,NULL,239);
INSERT INTO `events` VALUES (240,16,'2009-02-15 20:30:00','Tour',6.2907,NULL,240);
INSERT INTO `events` VALUES (241,17,'2009-02-15 20:30:00','Tour',5.64,NULL,241);
INSERT INTO `events` VALUES (242,28,'2009-02-15 20:30:00','Tour',5.64,NULL,242);
INSERT INTO `events` VALUES (243,27,'2009-02-15 20:30:00','Tour',5.64,NULL,243);
INSERT INTO `events` VALUES (244,49,'2009-02-15 20:30:00','Tour',5.64,NULL,244);
INSERT INTO `events` VALUES (245,51,'2009-02-15 20:30:00','Tour',5.1194,NULL,245);
INSERT INTO `events` VALUES (246,50,'2009-02-15 20:30:00','Tour',5.1194,NULL,246);
INSERT INTO `events` VALUES (258,1,'2009-03-14 20:30:00','Tour',13.105,NULL,258);
INSERT INTO `events` VALUES (259,17,'2009-03-14 20:30:00','Tour',10.484,NULL,259);
INSERT INTO `events` VALUES (260,3,'2009-03-14 20:30:00','Tour',9.0861,NULL,260);
INSERT INTO `events` VALUES (261,12,'2009-03-14 20:30:00','Tour',8.1077,NULL,261);
INSERT INTO `events` VALUES (262,6,'2009-03-14 20:30:00','Tour',7.2689,NULL,262);
INSERT INTO `events` VALUES (263,15,'2009-03-14 20:30:00','Tour',7.2689,NULL,263);
INSERT INTO `events` VALUES (264,11,'2009-03-14 20:30:00','Tour',6.4861,NULL,264);
INSERT INTO `events` VALUES (265,7,'2009-03-14 20:30:00','Tour',6.4861,NULL,265);
INSERT INTO `events` VALUES (266,49,'2009-03-14 20:30:00','Tour',5.8151,NULL,266);
INSERT INTO `events` VALUES (267,16,'2009-03-14 20:30:00','Tour',5.8151,NULL,267);
INSERT INTO `events` VALUES (268,51,'2009-03-14 20:30:00','Tour',5.8151,NULL,268);
INSERT INTO `events` VALUES (269,52,'2009-03-14 20:30:00','Tour',5.8151,NULL,269);
INSERT INTO `events` VALUES (270,10,'2009-03-14 20:30:00','Tour',5.3231,NULL,270);
INSERT INTO `events` VALUES (271,5,'2009-04-11 20:30:00','Tour',17.1919,NULL,271);
INSERT INTO `events` VALUES (272,2,'2009-04-11 20:30:00','Tour',13.7535,NULL,272);
INSERT INTO `events` VALUES (273,17,'2009-04-11 20:30:00','Tour',11.9197,NULL,273);
INSERT INTO `events` VALUES (274,51,'2009-04-11 20:30:00','Tour',10.6361,NULL,274);
INSERT INTO `events` VALUES (275,6,'2009-04-11 20:30:00','Tour',9.5358,NULL,275);
INSERT INTO `events` VALUES (276,1,'2009-04-11 20:30:00','Tour',9.5358,NULL,276);
INSERT INTO `events` VALUES (277,15,'2009-04-11 20:30:00','Tour',8.5088,NULL,277);
INSERT INTO `events` VALUES (278,50,'2009-04-11 20:30:00','Tour',8.5088,NULL,278);
INSERT INTO `events` VALUES (279,11,'2009-04-11 20:30:00','Tour',7.922,NULL,279);
INSERT INTO `events` VALUES (280,12,'2009-04-11 20:30:00','Tour',7.922,NULL,280);

#
# Table structure for table games
#

CREATE TABLE `games` (
  `id` int(11) NOT NULL auto_increment,
  `player1_id` int(11) default NULL,
  `player2_id` int(11) default NULL,
  `result1` int(11) default NULL,
  `result2` int(11) default NULL,
  `time` datetime default NULL,
  `type` varchar(255) collate utf8_unicode_ci default NULL,
  `parent_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Dumping data for table games
#


#
# Table structure for table players
#

CREATE TABLE `players` (
  `id` int(11) NOT NULL auto_increment,
  `name` char(255) character set cp1251 NOT NULL default '<noname>',
  `active` tinyint(1) NOT NULL default '0',
  `raking` decimal(8,4) NOT NULL default '0.0000',
  `full_name` char(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=FIXED;

#
# Dumping data for table players
#

INSERT INTO `players` VALUES (1,'Vladimir T',1,0,'Владимир Тамбовцев');
INSERT INTO `players` VALUES (2,'Den',1,0,'Денис Верещагин');
INSERT INTO `players` VALUES (3,'Illinon',1,0,'Алексей');
INSERT INTO `players` VALUES (4,'DK',1,0,'Николай');
INSERT INTO `players` VALUES (5,'Barmaley',1,0,'Константин Бармак');
INSERT INTO `players` VALUES (6,'Lunich',1,0,'Дмитрий Струмиленко');
INSERT INTO `players` VALUES (7,'Kimm',1,0,'Анна');
INSERT INTO `players` VALUES (8,'BASH!',1,0,'Андрей');
INSERT INTO `players` VALUES (9,'SergEK',1,0,'Сергей');
INSERT INTO `players` VALUES (10,'Olia M',1,0,'Ольга');
INSERT INTO `players` VALUES (11,'Lavrenov',1,0,'Юрий Лавренов');
INSERT INTO `players` VALUES (12,'Sergiy',1,0,'Алексей Сергий');
INSERT INTO `players` VALUES (13,'LG',1,0,'Олег');
INSERT INTO `players` VALUES (14,'Udav',1,0,'Алексей');
INSERT INTO `players` VALUES (15,'York',1,0,'Сергей Роговой');
INSERT INTO `players` VALUES (16,'Marlboro',1,0,'Евгений Майборода');
INSERT INTO `players` VALUES (17,'LudOK',1,0,'Людмила');
INSERT INTO `players` VALUES (18,'IRBIS',1,0,NULL);
INSERT INTO `players` VALUES (19,'Cofeynik',1,0,NULL);
INSERT INTO `players` VALUES (20,'Hataxa',1,0,'Наталья Струмиленко');
INSERT INTO `players` VALUES (21,'Griff',1,0,'Василий');
INSERT INTO `players` VALUES (22,'Volmax',1,0,'Владимир');
INSERT INTO `players` VALUES (23,'R0land',1,0,NULL);
INSERT INTO `players` VALUES (24,'RAT',1,0,NULL);
INSERT INTO `players` VALUES (25,'LX',1,0,'Алексей Федоров');
INSERT INTO `players` VALUES (26,'Sam',1,0,NULL);
INSERT INTO `players` VALUES (27,'Jurist',1,0,'Александр');
INSERT INTO `players` VALUES (28,'LENA',1,0,'Елена');
INSERT INTO `players` VALUES (29,'Lexa',1,0,'Алексей');
INSERT INTO `players` VALUES (30,'Gorynych',1,0,'Степан');
INSERT INTO `players` VALUES (31,'Cori',1,0,NULL);
INSERT INTO `players` VALUES (32,'Julia',1,0,'Юлия');
INSERT INTO `players` VALUES (33,'Nata-Lee',1,0,'Наталья');
INSERT INTO `players` VALUES (34,'Andrey',1,0,'Андрей');
INSERT INTO `players` VALUES (35,'Kostenko',1,0,'Костенко');
INSERT INTO `players` VALUES (36,'Valkiria',1,0,NULL);
INSERT INTO `players` VALUES (37,'Sergey Ch',1,0,'Сергей');
INSERT INTO `players` VALUES (38,'Fagot',1,0,NULL);
INSERT INTO `players` VALUES (39,'Roman',1,0,'Роман Корчменко');
INSERT INTO `players` VALUES (40,'Peskar',1,0,'Игорь Писаченко');
INSERT INTO `players` VALUES (41,'KS',1,0,'Александр Кравчук');
INSERT INTO `players` VALUES (42,'Vadim Gl',1,0,'Вадим');
INSERT INTO `players` VALUES (43,'Pripara',1,0,'Юрий Рябикин');
INSERT INTO `players` VALUES (44,'Nikolay',1,0,'Николай');
INSERT INTO `players` VALUES (45,'Peria',1,0,NULL);
INSERT INTO `players` VALUES (46,'Юра',1,0,'Юрий');
INSERT INTO `players` VALUES (47,'Fima',1,0,'Ефим');
INSERT INTO `players` VALUES (48,'Lesha',0,0,'Алексей');
INSERT INTO `players` VALUES (49,'boss429',1,0,'Илья');
INSERT INTO `players` VALUES (50,'Needle',1,0,'Евгений');
INSERT INTO `players` VALUES (51,'AlexanderS',0,0,'Александр');
INSERT INTO `players` VALUES (52,'Pavel',0,0,'Павел');

#
# Table structure for table schema_migrations
#

CREATE TABLE `schema_migrations` (
  `version` char(255) character set cp1251 NOT NULL default '',
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=FIXED;

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
INSERT INTO `schema_migrations` VALUES ('20090123222911');
INSERT INTO `schema_migrations` VALUES ('20090125121858');
INSERT INTO `schema_migrations` VALUES ('20090223112538');
INSERT INTO `schema_migrations` VALUES ('20090223113728');
INSERT INTO `schema_migrations` VALUES ('20090223115158');
INSERT INTO `schema_migrations` VALUES ('20090223134028');
INSERT INTO `schema_migrations` VALUES ('20090223140513');

#
# Table structure for table tournament_participations
#

CREATE TABLE `tournament_participations` (
  `id` int(11) NOT NULL auto_increment,
  `tournament_id` int(11) default NULL,
  `player_id` int(11) default NULL,
  `time` datetime default NULL,
  `place` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Dumping data for table tournament_participations
#

INSERT INTO `tournament_participations` VALUES (1,1,2,'2007-01-27 16:00:00',1);
INSERT INTO `tournament_participations` VALUES (2,1,6,'2007-01-27 16:00:00',2);
INSERT INTO `tournament_participations` VALUES (3,1,12,'2007-01-27 16:00:00',3);
INSERT INTO `tournament_participations` VALUES (4,1,4,'2007-01-27 16:00:00',4);
INSERT INTO `tournament_participations` VALUES (5,1,24,'2007-01-27 16:00:00',5);
INSERT INTO `tournament_participations` VALUES (6,1,27,'2007-01-27 16:00:00',6);
INSERT INTO `tournament_participations` VALUES (7,1,28,'2007-01-27 16:00:00',7);
INSERT INTO `tournament_participations` VALUES (8,1,18,'2007-01-27 16:00:00',8);
INSERT INTO `tournament_participations` VALUES (9,1,26,'2007-01-27 16:00:00',9);
INSERT INTO `tournament_participations` VALUES (10,1,21,'2007-01-27 16:00:00',10);
INSERT INTO `tournament_participations` VALUES (11,1,14,'2007-01-27 16:00:00',11);
INSERT INTO `tournament_participations` VALUES (12,1,7,'2007-01-27 16:00:00',12);
INSERT INTO `tournament_participations` VALUES (13,1,9,'2007-01-27 16:00:00',13);
INSERT INTO `tournament_participations` VALUES (14,1,8,'2007-01-27 16:00:00',14);
INSERT INTO `tournament_participations` VALUES (15,1,36,'2007-01-27 16:00:00',15);
INSERT INTO `tournament_participations` VALUES (16,1,15,'2007-01-27 16:00:00',16);
INSERT INTO `tournament_participations` VALUES (17,1,23,'2007-01-27 16:00:00',17);
INSERT INTO `tournament_participations` VALUES (18,1,38,'2007-01-27 16:00:00',18);
INSERT INTO `tournament_participations` VALUES (19,1,19,'2007-01-27 16:00:00',19);
INSERT INTO `tournament_participations` VALUES (20,1,40,'2007-01-27 16:00:00',20);
INSERT INTO `tournament_participations` VALUES (21,2,12,'2007-02-17 22:00:00',1);
INSERT INTO `tournament_participations` VALUES (22,2,25,'2007-02-17 22:00:00',2);
INSERT INTO `tournament_participations` VALUES (23,2,15,'2007-02-17 22:00:00',3);
INSERT INTO `tournament_participations` VALUES (24,2,26,'2007-02-17 22:00:00',4);
INSERT INTO `tournament_participations` VALUES (25,2,7,'2007-02-17 22:00:00',5);
INSERT INTO `tournament_participations` VALUES (26,2,14,'2007-02-17 22:00:00',6);
INSERT INTO `tournament_participations` VALUES (27,2,4,'2007-02-17 22:00:00',7);
INSERT INTO `tournament_participations` VALUES (28,2,9,'2007-02-17 22:00:00',8);
INSERT INTO `tournament_participations` VALUES (29,2,1,'2007-02-17 22:00:00',9);
INSERT INTO `tournament_participations` VALUES (30,2,48,'2007-02-17 22:00:00',10);
INSERT INTO `tournament_participations` VALUES (31,3,12,'2007-07-28 22:00:00',1);
INSERT INTO `tournament_participations` VALUES (32,3,2,'2007-07-28 22:00:00',2);
INSERT INTO `tournament_participations` VALUES (33,3,15,'2007-07-28 22:00:00',3);
INSERT INTO `tournament_participations` VALUES (34,3,7,'2007-07-28 22:00:00',4);
INSERT INTO `tournament_participations` VALUES (35,3,8,'2007-07-28 22:00:00',5);
INSERT INTO `tournament_participations` VALUES (36,3,4,'2007-07-28 22:00:00',6);
INSERT INTO `tournament_participations` VALUES (37,3,37,'2007-07-28 22:00:00',7);
INSERT INTO `tournament_participations` VALUES (38,3,1,'2007-07-28 22:00:00',8);
INSERT INTO `tournament_participations` VALUES (39,3,9,'2007-07-28 22:00:00',9);
INSERT INTO `tournament_participations` VALUES (40,3,17,'2007-07-28 22:00:00',10);
INSERT INTO `tournament_participations` VALUES (41,3,19,'2007-07-28 22:00:00',11);
INSERT INTO `tournament_participations` VALUES (42,3,14,'2007-07-28 22:00:00',12);
INSERT INTO `tournament_participations` VALUES (64,4,2,'2007-12-01 22:00:00',1);
INSERT INTO `tournament_participations` VALUES (65,4,6,'2007-12-01 22:00:00',2);
INSERT INTO `tournament_participations` VALUES (66,4,12,'2007-12-01 22:00:00',3);
INSERT INTO `tournament_participations` VALUES (67,4,1,'2007-12-01 22:00:00',4);
INSERT INTO `tournament_participations` VALUES (68,4,15,'2007-12-01 22:00:00',5);
INSERT INTO `tournament_participations` VALUES (69,4,4,'2007-12-01 22:00:00',6);
INSERT INTO `tournament_participations` VALUES (70,4,25,'2007-12-01 22:00:00',7);
INSERT INTO `tournament_participations` VALUES (71,4,7,'2007-12-01 22:00:00',8);
INSERT INTO `tournament_participations` VALUES (72,4,14,'2007-12-01 22:00:00',9);
INSERT INTO `tournament_participations` VALUES (73,4,8,'2007-12-01 22:00:00',10);
INSERT INTO `tournament_participations` VALUES (74,4,34,'2007-12-01 22:00:00',11);
INSERT INTO `tournament_participations` VALUES (75,4,35,'2007-12-01 22:00:00',12);
INSERT INTO `tournament_participations` VALUES (76,4,18,'2007-12-01 22:00:00',13);
INSERT INTO `tournament_participations` VALUES (77,4,19,'2007-12-01 22:00:00',14);
INSERT INTO `tournament_participations` VALUES (78,4,9,'2007-12-01 22:00:00',15);
INSERT INTO `tournament_participations` VALUES (79,4,39,'2007-12-01 22:00:00',16);
INSERT INTO `tournament_participations` VALUES (80,4,20,'2007-12-01 22:00:00',17);
INSERT INTO `tournament_participations` VALUES (81,4,43,'2007-12-01 22:00:00',18);
INSERT INTO `tournament_participations` VALUES (82,4,21,'2007-12-01 22:00:00',19);
INSERT INTO `tournament_participations` VALUES (83,4,42,'2007-12-01 22:00:00',20);
INSERT INTO `tournament_participations` VALUES (84,4,41,'2007-12-01 22:00:00',21);
INSERT INTO `tournament_participations` VALUES (85,4,37,'2007-12-01 22:00:00',22);
INSERT INTO `tournament_participations` VALUES (86,4,44,'2007-12-01 22:00:00',23);
INSERT INTO `tournament_participations` VALUES (97,5,1,'2008-07-26 22:00:00',1);
INSERT INTO `tournament_participations` VALUES (98,5,4,'2008-07-26 22:00:00',2);
INSERT INTO `tournament_participations` VALUES (99,5,9,'2008-07-26 22:00:00',3);
INSERT INTO `tournament_participations` VALUES (100,5,22,'2008-07-26 22:00:00',4);
INSERT INTO `tournament_participations` VALUES (101,5,14,'2008-07-26 22:00:00',5);
INSERT INTO `tournament_participations` VALUES (102,5,47,'2008-07-26 22:00:00',5);
INSERT INTO `tournament_participations` VALUES (103,5,10,'2008-07-26 22:00:00',5);
INSERT INTO `tournament_participations` VALUES (104,5,7,'2008-07-26 22:00:00',8);
INSERT INTO `tournament_participations` VALUES (105,5,29,'2008-07-26 22:00:00',9);
INSERT INTO `tournament_participations` VALUES (106,5,6,'2008-07-26 22:00:00',9);
INSERT INTO `tournament_participations` VALUES (107,5,45,'2008-07-26 22:00:00',9);
INSERT INTO `tournament_participations` VALUES (108,5,20,'2008-07-26 22:00:00',9);
INSERT INTO `tournament_participations` VALUES (109,5,19,'2008-07-26 22:00:00',9);
INSERT INTO `tournament_participations` VALUES (110,5,12,'2008-07-26 22:00:00',9);
INSERT INTO `tournament_participations` VALUES (111,5,8,'2008-07-26 22:00:00',9);
INSERT INTO `tournament_participations` VALUES (112,5,31,'2008-07-26 22:00:00',16);
INSERT INTO `tournament_participations` VALUES (169,6,1,'2008-10-25 15:00:00',1);
INSERT INTO `tournament_participations` VALUES (170,6,4,'2008-10-25 15:00:00',2);
INSERT INTO `tournament_participations` VALUES (171,6,6,'2008-10-25 15:00:00',3);
INSERT INTO `tournament_participations` VALUES (172,6,22,'2008-10-25 15:00:00',4);
INSERT INTO `tournament_participations` VALUES (173,6,13,'2008-10-25 15:00:00',5);
INSERT INTO `tournament_participations` VALUES (174,6,12,'2008-10-25 15:00:00',6);
INSERT INTO `tournament_participations` VALUES (175,6,7,'2008-10-25 15:00:00',7);
INSERT INTO `tournament_participations` VALUES (176,6,8,'2008-10-25 15:00:00',7);
INSERT INTO `tournament_participations` VALUES (177,6,17,'2008-10-25 15:00:00',9);
INSERT INTO `tournament_participations` VALUES (178,6,11,'2008-10-25 15:00:00',9);
INSERT INTO `tournament_participations` VALUES (179,6,9,'2008-10-25 15:00:00',11);
INSERT INTO `tournament_participations` VALUES (180,6,16,'2008-10-25 15:00:00',11);
INSERT INTO `tournament_participations` VALUES (181,6,15,'2008-10-25 15:00:00',13);
INSERT INTO `tournament_participations` VALUES (182,6,14,'2008-10-25 15:00:00',14);
INSERT INTO `tournament_participations` VALUES (183,6,29,'2008-10-25 15:00:00',15);
INSERT INTO `tournament_participations` VALUES (184,6,10,'2008-10-25 15:00:00',16);
INSERT INTO `tournament_participations` VALUES (185,6,30,'2008-10-25 15:00:00',17);
INSERT INTO `tournament_participations` VALUES (186,6,20,'2008-10-25 15:00:00',18);
INSERT INTO `tournament_participations` VALUES (187,6,31,'2008-10-25 15:00:00',19);
INSERT INTO `tournament_participations` VALUES (188,6,32,'2008-10-25 15:00:00',19);
INSERT INTO `tournament_participations` VALUES (189,6,23,'2008-10-25 15:00:00',21);
INSERT INTO `tournament_participations` VALUES (190,6,33,'2008-10-25 15:00:00',21);
INSERT INTO `tournament_participations` VALUES (206,7,5,'2009-01-17 20:30:00',1);
INSERT INTO `tournament_participations` VALUES (207,7,1,'2009-01-17 20:30:00',2);
INSERT INTO `tournament_participations` VALUES (208,7,2,'2009-01-17 20:30:00',3);
INSERT INTO `tournament_participations` VALUES (209,7,4,'2009-01-17 20:30:00',3);
INSERT INTO `tournament_participations` VALUES (210,7,22,'2009-01-17 20:30:00',5);
INSERT INTO `tournament_participations` VALUES (211,7,11,'2009-01-17 20:30:00',5);
INSERT INTO `tournament_participations` VALUES (212,7,6,'2009-01-17 20:30:00',7);
INSERT INTO `tournament_participations` VALUES (213,7,17,'2009-01-17 20:30:00',7);
INSERT INTO `tournament_participations` VALUES (214,7,12,'2009-01-17 20:30:00',9);
INSERT INTO `tournament_participations` VALUES (215,7,3,'2009-01-17 20:30:00',9);
INSERT INTO `tournament_participations` VALUES (216,7,15,'2009-01-17 20:30:00',9);
INSERT INTO `tournament_participations` VALUES (217,7,7,'2009-01-17 20:30:00',9);
INSERT INTO `tournament_participations` VALUES (218,7,29,'2009-01-17 20:30:00',13);
INSERT INTO `tournament_participations` VALUES (219,7,10,'2009-01-17 20:30:00',13);
INSERT INTO `tournament_participations` VALUES (220,7,8,'2009-01-17 20:30:00',13);
INSERT INTO `tournament_participations` VALUES (221,7,46,'2009-01-17 20:30:00',13);
INSERT INTO `tournament_participations` VALUES (233,8,5,'2009-02-15 20:30:00',1);
INSERT INTO `tournament_participations` VALUES (234,8,12,'2009-02-15 20:30:00',2);
INSERT INTO `tournament_participations` VALUES (235,8,2,'2009-02-15 20:30:00',3);
INSERT INTO `tournament_participations` VALUES (236,8,7,'2009-02-15 20:30:00',4);
INSERT INTO `tournament_participations` VALUES (237,8,10,'2009-02-15 20:30:00',5);
INSERT INTO `tournament_participations` VALUES (238,8,1,'2009-02-15 20:30:00',5);
INSERT INTO `tournament_participations` VALUES (239,8,6,'2009-02-15 20:30:00',7);
INSERT INTO `tournament_participations` VALUES (240,8,16,'2009-02-15 20:30:00',7);
INSERT INTO `tournament_participations` VALUES (241,8,17,'2009-02-15 20:30:00',9);
INSERT INTO `tournament_participations` VALUES (242,8,28,'2009-02-15 20:30:00',9);
INSERT INTO `tournament_participations` VALUES (243,8,27,'2009-02-15 20:30:00',9);
INSERT INTO `tournament_participations` VALUES (244,8,49,'2009-02-15 20:30:00',9);
INSERT INTO `tournament_participations` VALUES (245,8,51,'2009-02-15 20:30:00',13);
INSERT INTO `tournament_participations` VALUES (246,8,50,'2009-02-15 20:30:00',13);
INSERT INTO `tournament_participations` VALUES (258,9,1,'2009-03-14 20:30:00',1);
INSERT INTO `tournament_participations` VALUES (259,9,17,'2009-03-14 20:30:00',2);
INSERT INTO `tournament_participations` VALUES (260,9,3,'2009-03-14 20:30:00',3);
INSERT INTO `tournament_participations` VALUES (261,9,12,'2009-03-14 20:30:00',4);
INSERT INTO `tournament_participations` VALUES (262,9,6,'2009-03-14 20:30:00',5);
INSERT INTO `tournament_participations` VALUES (263,9,15,'2009-03-14 20:30:00',5);
INSERT INTO `tournament_participations` VALUES (264,9,11,'2009-03-14 20:30:00',7);
INSERT INTO `tournament_participations` VALUES (265,9,7,'2009-03-14 20:30:00',7);
INSERT INTO `tournament_participations` VALUES (266,9,49,'2009-03-14 20:30:00',9);
INSERT INTO `tournament_participations` VALUES (267,9,16,'2009-03-14 20:30:00',9);
INSERT INTO `tournament_participations` VALUES (268,9,51,'2009-03-14 20:30:00',9);
INSERT INTO `tournament_participations` VALUES (269,9,52,'2009-03-14 20:30:00',9);
INSERT INTO `tournament_participations` VALUES (270,9,10,'2009-03-14 20:30:00',13);
INSERT INTO `tournament_participations` VALUES (271,10,5,'2009-04-11 20:30:00',1);
INSERT INTO `tournament_participations` VALUES (272,10,2,'2009-04-11 20:30:00',2);
INSERT INTO `tournament_participations` VALUES (273,10,17,'2009-04-11 20:30:00',3);
INSERT INTO `tournament_participations` VALUES (274,10,51,'2009-04-11 20:30:00',4);
INSERT INTO `tournament_participations` VALUES (275,10,6,'2009-04-11 20:30:00',5);
INSERT INTO `tournament_participations` VALUES (276,10,1,'2009-04-11 20:30:00',5);
INSERT INTO `tournament_participations` VALUES (277,10,15,'2009-04-11 20:30:00',7);
INSERT INTO `tournament_participations` VALUES (278,10,50,'2009-04-11 20:30:00',7);
INSERT INTO `tournament_participations` VALUES (279,10,11,'2009-04-11 20:30:00',9);
INSERT INTO `tournament_participations` VALUES (280,10,12,'2009-04-11 20:30:00',9);

#
# Table structure for table tournaments
#

CREATE TABLE `tournaments` (
  `id` int(11) NOT NULL auto_increment,
  `name` char(255) character set cp1251 default NULL,
  `start` datetime default NULL,
  `end` datetime default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `total_raking` decimal(8,4) default NULL,
  `coeff` decimal(8,4) default NULL,
  `raking` decimal(8,4) default NULL,
  `qualify` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=FIXED;

#
# Dumping data for table tournaments
#

INSERT INTO `tournaments` VALUES (1,'LPP-1','2006-06-20 12:00:00','2007-01-27 16:00:00','2009-01-23 20:59:01','2009-01-23 20:59:01',439,1,439,1);
INSERT INTO `tournaments` VALUES (2,'Bingo Challenge','2007-02-17 12:00:00','2007-02-17 22:00:00','2009-01-23 22:42:58','2009-01-23 23:13:24',38,0.5587,21.2316,0);
INSERT INTO `tournaments` VALUES (3,'BASH! - 2007','2007-07-28 12:00:00','2007-07-28 22:00:00','2009-01-23 22:53:17','2009-01-23 23:14:25',44,0.7124,31.3463,0);
INSERT INTO `tournaments` VALUES (4,'LPP-2','2007-06-10 12:00:00','2007-12-01 22:00:00','2009-01-23 23:03:42','2009-01-23 23:14:52',449,0.6727,302.063,1);
INSERT INTO `tournaments` VALUES (5,'BASH! - 2008','2008-07-26 12:00:00','2008-07-26 22:00:00','2009-01-23 23:21:48','2009-01-23 23:22:02',52,0.6218,32.3342,0);
INSERT INTO `tournaments` VALUES (6,'LPP-3','2008-03-15 12:00:00','2008-10-25 15:00:00','2009-01-23 23:26:16','2009-01-23 23:34:41',546.443,0.5756,314.5285,1);
INSERT INTO `tournaments` VALUES (7,'SPP-1','2009-01-17 12:30:00','2009-01-17 20:30:00','2009-01-23 23:39:04','2009-01-23 23:39:24',91,0.7899,71.8834,0);
INSERT INTO `tournaments` VALUES (8,'SPP-2','2009-02-15 12:30:00','2009-02-15 20:30:00','2009-01-23 23:39:04','2009-01-23 23:39:04',121,0.8185,99.0342,0);
INSERT INTO `tournaments` VALUES (9,'SPP-3','2009-03-14 12:30:00','2009-03-14 20:30:00','2009-01-23 23:39:04','2009-01-23 23:39:04',121,0.8006,96.8762,0);
INSERT INTO `tournaments` VALUES (10,'SPP-4','2009-04-11 12:30:00','2009-04-11 20:30:00','2009-01-23 23:39:04','2009-01-23 23:39:04',121,0.8714,105.4345,0);

/*!40101 SET NAMES latin1 */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
