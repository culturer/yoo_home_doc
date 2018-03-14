/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.7.19-log : Database - yooplus_test1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yooplus_test1` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yooplus_test1`;

/*Table structure for table `article_des` */

DROP TABLE IF EXISTS `article_des`;

CREATE TABLE `article_des` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address_id` bigint(20) NOT NULL DEFAULT '0',
  `create_time` varchar(255) NOT NULL DEFAULT '',
  `dcsc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `article_des` */

/*Table structure for table `t_activity_item` */

DROP TABLE IF EXISTS `t_activity_item`;

CREATE TABLE `t_activity_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `home_activity_id` bigint(20) NOT NULL DEFAULT '0',
  `family_activity_id` bigint(20) NOT NULL DEFAULT '0',
  `family_id` bigint(20) NOT NULL DEFAULT '0',
  `time` varchar(255) NOT NULL DEFAULT '',
  `desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_activity_item` */

insert  into `t_activity_item`(`id`,`home_activity_id`,`family_activity_id`,`family_id`,`time`,`desc`) values (1,1,1,1,'2018.01.11 17:36','晒太阳');

/*Table structure for table `t_address` */

DROP TABLE IF EXISTS `t_address`;

CREATE TABLE `t_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country` varchar(255) NOT NULL DEFAULT '',
  `province` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `reginon` varchar(255) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_address` */

insert  into `t_address`(`id`,`country`,`province`,`city`,`reginon`,`street`) values (1,'中国','湖北','武汉','武昌','xxxx');

/*Table structure for table `t_album_item` */

DROP TABLE IF EXISTS `t_album_item`;

CREATE TABLE `t_album_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `family_id` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `create_time` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

/*Data for the table `t_album_item` */

insert  into `t_album_item`(`id`,`user_id`,`family_id`,`name`,`icon`,`create_time`) values (64,2,0,'今天天气不错～','','2018-01-29 10:05:34'),(69,0,7,'今天出去聚餐啊','','2018-02-02 14:09:46'),(70,0,7,'嘻嘻哈哈','','2018-02-02 14:16:05');

/*Table structure for table `t_article` */

DROP TABLE IF EXISTS `t_article`;

CREATE TABLE `t_article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `desc_id` bigint(20) NOT NULL DEFAULT '0',
  `address_id` bigint(20) NOT NULL DEFAULT '0',
  `create_time` varchar(255) NOT NULL DEFAULT '',
  `dcsc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_article` */

insert  into `t_article`(`id`,`user_id`,`desc_id`,`address_id`,`create_time`,`dcsc`) values (1,2,0,0,'2018.02011 9:16','今天天气不错哇哇哇'),(3,2,0,0,'2018.02.13 12:30','火车上地方好挤');

/*Table structure for table `t_comment` */

DROP TABLE IF EXISTS `t_comment`;

CREATE TABLE `t_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `article_id` bigint(20) NOT NULL DEFAULT '0',
  `comment_id` bigint(20) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `desc` varchar(255) NOT NULL DEFAULT '',
  `create_time` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_comment` */

insert  into `t_comment`(`id`,`article_id`,`comment_id`,`user_id`,`desc`,`create_time`) values (2,1,0,2,'','2018-02-11 09:45:09'),(3,1,1,2,'1','2018-02-11 09:45:44');

/*Table structure for table `t_family` */

DROP TABLE IF EXISTS `t_family`;

CREATE TABLE `t_family` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `family_name` varchar(255) NOT NULL DEFAULT '',
  `family_notify_title` varchar(255) NOT NULL DEFAULT '',
  `family_notify_content` varchar(255) NOT NULL DEFAULT '',
  `create_time` varchar(255) NOT NULL DEFAULT '',
  `msg` varchar(255) NOT NULL DEFAULT '',
  `family_notify_time` varchar(255) NOT NULL DEFAULT '',
  `created_time` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `t_family` */

insert  into `t_family`(`id`,`family_name`,`family_notify_title`,`family_notify_content`,`create_time`,`msg`,`family_notify_time`,`created_time`) values (2,'','','','','','','2018-01-19 17:32:32'),(3,'第三方','','','','','','2018-01-19 17:38:21'),(4,'第三方','','','','','','2018-01-19 17:38:26'),(5,'第三方','','','','','2018-01-19 17:39:04','2018-01-19 17:39:04'),(6,'第三方','','','','','2018-01-19 17:40:08','2018-01-19 17:40:08'),(7,'','哈哈爱吃','','','','2018-02-04 12:14:00','2018-01-19 17:40:16'),(9,'Uoo+','123','456','','','2018-01-20 14:46:44','2018-01-20 14:45:22');

/*Table structure for table `t_family_activity` */

DROP TABLE IF EXISTS `t_family_activity`;

CREATE TABLE `t_family_activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `family_id` bigint(20) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `desc` varchar(255) NOT NULL DEFAULT '',
  `address_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_family_activity` */

insert  into `t_family_activity`(`id`,`family_id`,`create_time`,`desc`,`address_id`) values (1,7,'2018-01-09 19:24:33','去郊游啊',1);

/*Table structure for table `t_family_album` */

DROP TABLE IF EXISTS `t_family_album`;

CREATE TABLE `t_family_album` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `family_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_family_album` */

insert  into `t_family_album`(`id`,`family_id`) values (1,1);

/*Table structure for table `t_photo` */

DROP TABLE IF EXISTS `t_photo`;

CREATE TABLE `t_photo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) NOT NULL DEFAULT '0',
  `file_name` varchar(255) NOT NULL DEFAULT '',
  `file_url` varchar(255) NOT NULL DEFAULT '',
  `create_time` datetime NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `family_id` bigint(20) NOT NULL DEFAULT '0',
  `article_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

/*Data for the table `t_photo` */

insert  into `t_photo`(`id`,`album_id`,`file_name`,`file_url`,`create_time`,`user_id`,`family_id`,`article_id`) values (1,1,'dgjsl.png','192.168.0.1/dasd','2018-01-09 08:56:23',2,1,0),(2,1,'adsgfagds.jpg','192.168.0.1/asdas','2018-01-12 09:03:06',2,1,0),(3,1,'adgfsadf.png','192.168.1.12/kkk','2018-01-12 09:03:32',2,1,0),(4,1,'poiu.jpg','192.168.66.66/adshfa/dafg/dsf/','2018-01-12 09:03:50',2,1,0),(5,1,'hgsdfhsfd.png','192.168.33.66/pdskf/dsjafoi/dd/','2018-01-12 09:04:33',2,1,0),(6,1,'dsrg.png','192.168.77.88/afsd','2018-01-12 09:04:59',2,1,0),(7,64,'Capture001.png','photos/2/Capture001.png','2018-02-02 13:48:28',2,0,0),(8,69,'Screenshot_2018-02-01-16-24-42-856_com.hytera.pstsapp.png','photos/2/Screenshot_2018-02-01-16-24-42-856_com.hytera.pstsapp.png','2018-02-02 14:09:53',2,7,0),(9,69,'Screenshot_2018-02-01-16-30-01-265_com.hytera.pstsapp.png','photos/2/Screenshot_2018-02-01-16-30-01-265_com.hytera.pstsapp.png','2018-02-02 14:09:53',2,7,0),(10,69,'Screenshot_2018-01-29-10-46-19-614_com.hytera.pstsapp.png','photos/2/Screenshot_2018-01-29-10-46-19-614_com.hytera.pstsapp.png','2018-02-02 14:09:54',2,7,0),(11,69,'Screenshot_2018-01-29-10-46-24-858_com.hytera.pstsapp.png','photos/2/Screenshot_2018-01-29-10-46-24-858_com.hytera.pstsapp.png','2018-02-02 14:09:54',2,7,0),(12,69,'picture_1516603078295.jpg','photos/2/picture_1516603078295.jpg','2018-02-02 14:09:54',2,7,0),(13,69,'picture_1516783482622.jpg','photos/2/picture_1516783482622.jpg','2018-02-02 14:09:55',2,7,0),(14,70,'picture_1515058330860.jpg','photos/2/picture_1515058330860.jpg','2018-02-02 14:16:14',2,7,0),(15,70,'picture_1515056183014.jpg','photos/2/picture_1515056183014.jpg','2018-02-02 14:16:14',2,7,0),(16,70,'picture_1515058294763.jpg','photos/2/picture_1515058294763.jpg','2018-02-02 14:16:15',2,7,0),(17,70,'picture_1515055914471.jpg','photos/2/picture_1515055914471.jpg','2018-02-02 14:16:15',2,7,0),(18,70,'picture_1515388553224.jpg','photos/2/picture_1515388553224.jpg','2018-02-02 14:16:15',2,7,0),(19,70,'picture_1515380996275.jpg','photos/2/picture_1515380996275.jpg','2018-02-02 14:16:15',2,7,0),(20,70,'picture_1515380485156.jpg','photos/2/picture_1515380485156.jpg','2018-02-02 14:16:17',2,7,0),(21,70,'20180120_221633348_cf03b8510a6d68146c3afe5a227d6e06.jpg','photos/2/20180120_221633348_cf03b8510a6d68146c3afe5a227d6e06.jpg','2018-02-02 14:16:27',2,7,0),(22,70,'DSCF0815.JPG','photos/2/DSCF0815.JPG','2018-02-02 14:16:36',2,7,0),(23,70,'20180120_221550419_c418bdc7e658945fb34cd1fe7ee71429.jpg','photos/2/20180120_221550419_c418bdc7e658945fb34cd1fe7ee71429.jpg','2018-02-02 14:16:38',2,7,0),(24,72,'Screenshot_2018-02-01-16-24-42-856_com.hytera.pstsapp.png','photos/2/Screenshot_2018-02-01-16-24-42-856_com.hytera.pstsapp.png','2018-02-02 15:14:32',2,7,0),(25,72,'Screenshot_2018-01-29-10-46-24-858_com.hytera.pstsapp.png','photos/2/Screenshot_2018-01-29-10-46-24-858_com.hytera.pstsapp.png','2018-02-02 15:14:32',2,7,0),(26,72,'Screenshot_2018-02-01-16-30-01-265_com.hytera.pstsapp.png','photos/2/Screenshot_2018-02-01-16-30-01-265_com.hytera.pstsapp.png','2018-02-02 15:14:33',2,7,0),(27,72,'Screenshot_2018-01-29-10-46-19-614_com.hytera.pstsapp.png','photos/2/Screenshot_2018-01-29-10-46-19-614_com.hytera.pstsapp.png','2018-02-02 15:14:33',2,7,0),(28,72,'20180202_150733379_bfbf2bb43aabbad0ffde85dd64f0a2fb.jpg','photos/2/20180202_150733379_bfbf2bb43aabbad0ffde85dd64f0a2fb.jpg','2018-02-02 15:14:37',2,7,0),(29,72,'20180202_150713860_4274ce7e28462043ff1ebb01cc9804e1.jpg','photos/2/20180202_150713860_4274ce7e28462043ff1ebb01cc9804e1.jpg','2018-02-02 15:14:40',2,7,0),(30,72,'20180120_221555088_9b5cebf126fbafbb55cd11712c75e458.jpg','photos/2/20180120_221555088_9b5cebf126fbafbb55cd11712c75e458.jpg','2018-02-02 15:14:41',2,7,0),(31,72,'picture_1516603078295.jpg','photos/2/picture_1516603078295.jpg','2018-02-02 15:14:42',2,7,0),(32,72,'20180120_221542073_9399355b35b42bd3f78be470b5d1f8ef.jpg','photos/2/20180120_221542073_9399355b35b42bd3f78be470b5d1f8ef.jpg','2018-02-02 15:14:42',2,7,0),(33,72,'picture_1516783482622.jpg','photos/2/picture_1516783482622.jpg','2018-02-02 15:14:44',2,7,0),(34,72,'20180120_225004118_9cb4bd13b5826b8cac0412925d909cb8.jpg','photos/2/20180120_225004118_9cb4bd13b5826b8cac0412925d909cb8.jpg','2018-02-02 15:14:44',2,7,0),(35,72,'picture_1516783482622.jpg','photos/2/picture_1516783482622.jpg','2018-02-02 15:14:48',2,7,0),(36,72,'20180120_221526092_1eac5c8b6519e27ae99dea050b06dcd8.jpg','photos/2/20180120_221526092_1eac5c8b6519e27ae99dea050b06dcd8.jpg','2018-02-02 15:14:49',2,7,0),(37,72,'20180120_221633348_cf03b8510a6d68146c3afe5a227d6e06.jpg','photos/2/20180120_221633348_cf03b8510a6d68146c3afe5a227d6e06.jpg','2018-02-02 15:14:50',2,7,0),(38,72,'20180120_221550419_c418bdc7e658945fb34cd1fe7ee71429.jpg','photos/2/20180120_221550419_c418bdc7e658945fb34cd1fe7ee71429.jpg','2018-02-02 15:14:51',2,7,0),(39,72,'DSCF0815.JPG','photos/2/DSCF0815.JPG','2018-02-02 15:14:53',2,7,0),(40,74,'Screenshot_2018-02-02-17-32-40-859_com.hytera.pstsapp.png','photos/2/Screenshot_2018-02-02-17-32-40-859_com.hytera.pstsapp.png','2018-02-03 08:50:25',2,7,0),(41,74,'picture_1516603078295.jpg','photos/2/picture_1516603078295.jpg','2018-02-03 08:50:54',2,7,0),(42,74,'20180202_150713860_4274ce7e28462043ff1ebb01cc9804e1.jpg','photos/2/20180202_150713860_4274ce7e28462043ff1ebb01cc9804e1.jpg','2018-02-03 08:51:02',2,7,0),(43,74,'picture_1516783482622.jpg','photos/2/picture_1516783482622.jpg','2018-02-03 08:51:05',2,7,0),(44,74,'20180120_221633348_cf03b8510a6d68146c3afe5a227d6e06.jpg','photos/2/20180120_221633348_cf03b8510a6d68146c3afe5a227d6e06.jpg','2018-02-03 08:51:12',2,7,0),(45,74,'20180120_221555088_9b5cebf126fbafbb55cd11712c75e458.jpg','photos/2/20180120_221555088_9b5cebf126fbafbb55cd11712c75e458.jpg','2018-02-03 08:51:13',2,7,0),(46,74,'20180120_221550419_c418bdc7e658945fb34cd1fe7ee71429.jpg','photos/2/20180120_221550419_c418bdc7e658945fb34cd1fe7ee71429.jpg','2018-02-03 08:51:19',2,7,0),(47,74,'20180120_225004118_9cb4bd13b5826b8cac0412925d909cb8.jpg','photos/2/20180120_225004118_9cb4bd13b5826b8cac0412925d909cb8.jpg','2018-02-03 08:51:20',2,7,0),(48,74,'picture_1515380485156.jpg','photos/2/picture_1515380485156.jpg','2018-02-03 08:51:21',2,7,0),(49,74,'20180120_221526092_1eac5c8b6519e27ae99dea050b06dcd8.jpg','photos/2/20180120_221526092_1eac5c8b6519e27ae99dea050b06dcd8.jpg','2018-02-03 08:51:21',2,7,0),(50,74,'DSCF0815.JPG','photos/2/DSCF0815.JPG','2018-02-03 08:51:25',2,7,0),(51,0,'p4.png','photos/p4.png','2018-02-09 08:56:45',0,0,0);

/*Table structure for table `t_relation` */

DROP TABLE IF EXISTS `t_relation`;

CREATE TABLE `t_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `father_id` bigint(20) NOT NULL DEFAULT '0',
  `mother_id` bigint(20) NOT NULL DEFAULT '0',
  `mate_id` bigint(20) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `t_relation` */

insert  into `t_relation`(`id`,`father_id`,`mother_id`,`mate_id`,`user_id`) values (1,0,0,0,1),(2,0,0,0,2),(3,0,0,0,3),(4,0,0,0,4),(5,0,0,0,5),(6,0,0,0,6);

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `real_name` varchar(255) NOT NULL DEFAULT '',
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `uid` varchar(255) NOT NULL DEFAULT '',
  `birth` varchar(255) NOT NULL DEFAULT '',
  `tel` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `n_msg` varchar(255) NOT NULL DEFAULT '',
  `relation_id` bigint(20) NOT NULL DEFAULT '0',
  `family_id` bigint(20) NOT NULL DEFAULT '0',
  `family_name` varchar(255) NOT NULL DEFAULT '',
  `created_time` varchar(255) NOT NULL DEFAULT '',
  `login_time` varchar(255) NOT NULL DEFAULT '',
  `msg` varchar(255) NOT NULL DEFAULT '',
  `permission` int(11) NOT NULL DEFAULT '0',
  `father_id` bigint(20) NOT NULL DEFAULT '0',
  `mother_id` bigint(20) NOT NULL DEFAULT '0',
  `mate_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `t_user_tel` (`tel`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`username`,`password`,`real_name`,`sex`,`uid`,`birth`,`tel`,`email`,`icon`,`n_msg`,`relation_id`,`family_id`,`family_name`,`created_time`,`login_time`,`msg`,`permission`,`father_id`,`mother_id`,`mate_id`) values (2,'','123456','',0,'','','123456','','','',0,7,'','2018-01-05 09:07:31','','',0,0,0,0);

/*Table structure for table `t_user_album` */

DROP TABLE IF EXISTS `t_user_album`;

CREATE TABLE `t_user_album` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `t_user_album` */

insert  into `t_user_album`(`id`,`user_id`) values (1,1),(2,2),(3,3),(4,4),(5,5),(6,6);

/*Table structure for table `t_user_arrangement` */

DROP TABLE IF EXISTS `t_user_arrangement`;

CREATE TABLE `t_user_arrangement` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `desc` varchar(255) NOT NULL DEFAULT '',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

/*Data for the table `t_user_arrangement` */

insert  into `t_user_arrangement`(`id`,`user_id`,`desc`,`create_time`) values (1,1,'Hello Yoo+ ! Hellow  !','2018-01-05 01:02:30'),(3,3,'Hello Yoo+ ! Hellow  !','2018-01-05 07:27:58'),(4,4,'Hello Yoo+ ! Hellow  !','2018-01-05 07:31:31'),(5,5,'Hello Yoo+ ! Hellow  !','2018-01-05 07:31:34'),(6,6,'Hello Yoo+ ! Hellow  !','2018-01-12 09:07:48'),(8,0,'哈哈哈哈哈哈哈哈哈哈哈哈','2018-01-26 16:31:47'),(9,0,'哈哈哈还把','2018-01-26 16:35:42'),(48,2,'明天早起坐班车去上班','2018-01-28 23:04:06'),(50,2,'哈哈哈，服务器蹦了吧','2018-01-28 23:37:02'),(51,2,'今天没迟到，yee～','2018-01-29 10:05:01');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
