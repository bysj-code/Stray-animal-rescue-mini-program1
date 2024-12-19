/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - liulangdonwujiuzhu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`liulangdonwujiuzhu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `liulangdonwujiuzhu`;

/*Table structure for table `chongwu` */

DROP TABLE IF EXISTS `chongwu`;

CREATE TABLE `chongwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `chongwu_name` varchar(200) DEFAULT NULL COMMENT '寻宠标题  Search111 ',
  `chongwu_photo` varchar(200) DEFAULT NULL COMMENT '寻宠照片',
  `chongwu_address` varchar(200) DEFAULT NULL COMMENT '位置',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `chongwu_types` int(11) DEFAULT NULL COMMENT '寻宠类型 Search111',
  `chongwu_clicknum` int(11) DEFAULT NULL COMMENT '寻宠热度',
  `chongwu_content` longtext COMMENT '寻宠介绍 ',
  `chongwu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='寻宠';

/*Data for the table `chongwu` */

insert  into `chongwu`(`id`,`chongwu_name`,`chongwu_photo`,`chongwu_address`,`zan_number`,`cai_number`,`chongwu_types`,`chongwu_clicknum`,`chongwu_content`,`chongwu_delete`,`insert_time`,`create_time`) values (1,'寻宠标题1','upload/chongwu1.jpg','位置1',230,152,1,185,'寻宠介绍1',1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(2,'寻宠标题2','upload/chongwu2.jpg','位置2',434,102,3,413,'寻宠介绍2',1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(3,'寻宠标题3','upload/chongwu3.jpg','位置3',188,257,1,273,'寻宠介绍3',1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(4,'寻宠标题4','upload/chongwu4.jpg','位置4',350,425,3,467,'寻宠介绍4',1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(5,'寻宠标题5','upload/chongwu5.jpg','位置5',88,148,1,49,'寻宠介绍5',1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(6,'寻宠标题6','upload/chongwu6.jpg','位置6',321,83,1,411,'寻宠介绍6',1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(7,'寻宠标题7','upload/chongwu7.jpg','位置7',150,147,3,302,'寻宠介绍7',1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(8,'寻宠标题8','upload/chongwu8.jpg','位置8',90,344,1,208,'寻宠介绍8',1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(9,'寻宠标题9','upload/chongwu9.jpg','位置9',404,367,1,474,'寻宠介绍9',1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(10,'寻宠标题10','upload/chongwu10.jpg','位置10',72,48,3,93,'寻宠介绍10',1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(11,'寻宠标题11','upload/chongwu11.jpg','位置11',97,244,3,381,'寻宠介绍11',1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(12,'寻宠标题12','upload/chongwu12.jpg','位置12',247,150,1,350,'寻宠介绍12',1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(13,'寻宠标题13','upload/chongwu13.jpg','位置13',73,221,3,455,'寻宠介绍13',1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(14,'寻宠标题14','upload/chongwu14.jpg','位置14',422,496,2,92,'寻宠介绍14',1,'2023-05-09 09:56:50','2023-05-09 09:56:50');

/*Table structure for table `chongwu_collection` */

DROP TABLE IF EXISTS `chongwu_collection`;

CREATE TABLE `chongwu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwu_id` int(11) DEFAULT NULL COMMENT '寻宠',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chongwu_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='寻宠收藏';

/*Data for the table `chongwu_collection` */

insert  into `chongwu_collection`(`id`,`chongwu_id`,`yonghu_id`,`chongwu_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(2,2,3,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(3,3,3,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(4,4,3,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(5,5,1,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(6,6,2,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(7,7,3,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(8,8,1,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(9,9,2,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(13,13,2,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(15,10,1,2,'2023-05-09 11:36:08','2023-05-09 11:36:08');

/*Table structure for table `chongwu_liuyan` */

DROP TABLE IF EXISTS `chongwu_liuyan`;

CREATE TABLE `chongwu_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwu_id` int(11) DEFAULT NULL COMMENT '寻宠',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chongwu_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='寻宠留言';

/*Data for the table `chongwu_liuyan` */

insert  into `chongwu_liuyan`(`id`,`chongwu_id`,`yonghu_id`,`chongwu_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'留言内容1','2023-05-09 09:56:50','回复信息1','2023-05-09 09:56:50','2023-05-09 09:56:50'),(2,2,3,'留言内容2','2023-05-09 09:56:50','回复信息2','2023-05-09 09:56:50','2023-05-09 09:56:50'),(3,3,3,'留言内容3','2023-05-09 09:56:50','回复信息3','2023-05-09 09:56:50','2023-05-09 09:56:50'),(4,4,1,'留言内容4','2023-05-09 09:56:50','回复信息4','2023-05-09 09:56:50','2023-05-09 09:56:50'),(5,5,1,'留言内容5','2023-05-09 09:56:50','回复信息5','2023-05-09 09:56:50','2023-05-09 09:56:50'),(6,6,2,'留言内容6','2023-05-09 09:56:50','回复信息6','2023-05-09 09:56:50','2023-05-09 09:56:50'),(7,7,3,'留言内容7','2023-05-09 09:56:50','回复信息7','2023-05-09 09:56:50','2023-05-09 09:56:50'),(8,8,2,'留言内容8','2023-05-09 09:56:50','回复信息8','2023-05-09 09:56:50','2023-05-09 09:56:50'),(9,9,3,'留言内容9','2023-05-09 09:56:50','回复信息9','2023-05-09 09:56:50','2023-05-09 09:56:50'),(10,10,1,'留言内容10','2023-05-09 09:56:50','回复信息10','2023-05-09 09:56:50','2023-05-09 09:56:50'),(11,11,1,'留言内容11','2023-05-09 09:56:50','回复信息11','2023-05-09 09:56:50','2023-05-09 09:56:50'),(12,12,2,'留言内容12','2023-05-09 09:56:50','回复信息12','2023-05-09 09:56:50','2023-05-09 09:56:50'),(13,13,3,'留言内容13','2023-05-09 09:56:50','回复信息13','2023-05-09 09:56:50','2023-05-09 09:56:50'),(14,14,2,'留言内容14','2023-05-09 09:56:50','回复信息14','2023-05-09 09:56:50','2023-05-09 09:56:50');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'chongwu_types','寻宠类型',1,'寻宠类型1',NULL,NULL,'2023-05-09 09:56:30'),(2,'chongwu_types','寻宠类型',2,'寻宠类型2',NULL,NULL,'2023-05-09 09:56:30'),(3,'chongwu_types','寻宠类型',3,'寻宠类型3',NULL,NULL,'2023-05-09 09:56:30'),(4,'chongwu_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-05-09 09:56:30'),(5,'chongwu_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-05-09 09:56:30'),(6,'chongwu_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-05-09 09:56:30'),(7,'dongwu_types','求助类型',1,'求助类型1',NULL,NULL,'2023-05-09 09:56:30'),(8,'dongwu_types','求助类型',2,'求助类型2',NULL,NULL,'2023-05-09 09:56:30'),(9,'dongwu_types','求助类型',3,'求助类型3',NULL,NULL,'2023-05-09 09:56:30'),(10,'qiuzhuzhuangtai_types','求助状态',1,'未完成',NULL,NULL,'2023-05-09 09:56:30'),(11,'qiuzhuzhuangtai_types','求助状态',2,'已完成',NULL,NULL,'2023-05-09 09:56:30'),(12,'dongwu_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-05-09 09:56:30'),(13,'dongwu_yuyue_yesno_types','审核状态',1,'待审核',NULL,NULL,'2023-05-09 09:56:30'),(14,'dongwu_yuyue_yesno_types','审核状态',2,'同意',NULL,NULL,'2023-05-09 09:56:30'),(15,'dongwu_yuyue_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2023-05-09 09:56:30'),(16,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-05-09 09:56:30'),(17,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-05-09 09:56:30'),(18,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-05-09 09:56:30'),(19,'sex_types','性别类型',1,'男',NULL,NULL,'2023-05-09 09:56:30'),(20,'sex_types','性别类型',2,'女',NULL,NULL,'2023-05-09 09:56:30'),(21,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-05-09 09:56:30'),(22,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-05-09 09:56:30');

/*Table structure for table `dongwu` */

DROP TABLE IF EXISTS `dongwu`;

CREATE TABLE `dongwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `dongwu_name` varchar(200) DEFAULT NULL COMMENT '求助名称  Search111 ',
  `dongwu_photo` varchar(200) DEFAULT NULL COMMENT '求助照片',
  `dongwu_types` int(11) DEFAULT NULL COMMENT '求助类型 Search111',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `dongwu_clicknum` int(11) DEFAULT NULL COMMENT '求助热度',
  `dongwu_content` longtext COMMENT '求助详情',
  `qiuzhuzhuangtai_types` int(11) DEFAULT NULL COMMENT '求助状态 Search111',
  `dongwu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='动物求助';

/*Data for the table `dongwu` */

insert  into `dongwu`(`id`,`dongwu_name`,`dongwu_photo`,`dongwu_types`,`yonghu_id`,`dongwu_clicknum`,`dongwu_content`,`qiuzhuzhuangtai_types`,`dongwu_delete`,`insert_time`,`create_time`) values (1,'求助名称1','upload/chongwu1.jpg',1,3,461,'求助详情1',1,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(2,'求助名称2','upload/chongwu2.jpg',1,3,226,'求助详情2',1,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(3,'求助名称3','upload/chongwu3.jpg',1,1,182,'求助详情3',1,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(4,'求助名称4','upload/chongwu4.jpg',1,1,265,'求助详情4',1,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(5,'求助名称5','upload/chongwu5.jpg',1,3,145,'求助详情5',2,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(6,'求助名称6','upload/chongwu6.jpg',1,1,183,'求助详情6',2,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(7,'求助名称7','upload/chongwu7.jpg',2,2,339,'求助详情7',1,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(8,'求助名称8','upload/chongwu8.jpg',1,3,270,'求助详情8',2,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(9,'求助名称9','upload/chongwu9.jpg',1,2,113,'求助详情9',1,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(10,'求助名称10','upload/chongwu10.jpg',3,3,80,'求助详情10',1,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(11,'求助名称11','upload/chongwu11.jpg',2,1,403,'求助详情11',1,2,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(12,'求助名称12','upload/chongwu12.jpg',3,2,135,'求助详情12',2,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(13,'求助名称13','upload/chongwu13.jpg',1,3,268,'求助详情13',1,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(14,'求助名称14','upload/chongwu14.jpg',3,2,365,'求助详情14',1,1,'2023-05-09 09:56:50','2023-05-09 09:56:50');

/*Table structure for table `dongwu_collection` */

DROP TABLE IF EXISTS `dongwu_collection`;

CREATE TABLE `dongwu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dongwu_id` int(11) DEFAULT NULL COMMENT '求助',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `dongwu_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='求助收藏';

/*Data for the table `dongwu_collection` */

insert  into `dongwu_collection`(`id`,`dongwu_id`,`yonghu_id`,`dongwu_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(2,2,3,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(3,3,2,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(4,4,2,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(5,5,1,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(6,6,3,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(7,7,2,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(8,8,2,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(9,9,1,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(10,10,3,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(11,11,1,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(12,12,3,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(13,13,2,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(14,14,3,1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(15,14,1,1,'2023-05-09 11:36:39','2023-05-09 11:36:39');

/*Table structure for table `dongwu_liuyan` */

DROP TABLE IF EXISTS `dongwu_liuyan`;

CREATE TABLE `dongwu_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dongwu_id` int(11) DEFAULT NULL COMMENT '求助',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `dongwu_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='求助留言';

/*Data for the table `dongwu_liuyan` */

insert  into `dongwu_liuyan`(`id`,`dongwu_id`,`yonghu_id`,`dongwu_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2023-05-09 09:56:50','回复信息1','2023-05-09 09:56:50','2023-05-09 09:56:50'),(2,2,1,'留言内容2','2023-05-09 09:56:50','回复信息2','2023-05-09 09:56:50','2023-05-09 09:56:50'),(3,3,2,'留言内容3','2023-05-09 09:56:50','回复信息3','2023-05-09 09:56:50','2023-05-09 09:56:50'),(4,4,1,'留言内容4','2023-05-09 09:56:50','回复信息4','2023-05-09 09:56:50','2023-05-09 09:56:50'),(5,5,3,'留言内容5','2023-05-09 09:56:50','回复信息5','2023-05-09 09:56:50','2023-05-09 09:56:50'),(6,6,2,'留言内容6','2023-05-09 09:56:50','回复信息6','2023-05-09 09:56:50','2023-05-09 09:56:50'),(7,7,2,'留言内容7','2023-05-09 09:56:50','回复信息7','2023-05-09 09:56:50','2023-05-09 09:56:50'),(8,8,2,'留言内容8','2023-05-09 09:56:50','回复信息8','2023-05-09 09:56:50','2023-05-09 09:56:50'),(9,9,2,'留言内容9','2023-05-09 09:56:50','回复信息9','2023-05-09 09:56:50','2023-05-09 09:56:50'),(10,10,3,'留言内容10','2023-05-09 09:56:50','回复信息10','2023-05-09 09:56:50','2023-05-09 09:56:50'),(11,11,2,'留言内容11','2023-05-09 09:56:50','回复信息11','2023-05-09 09:56:50','2023-05-09 09:56:50'),(12,12,3,'留言内容12','2023-05-09 09:56:50','回复信息12','2023-05-09 09:56:50','2023-05-09 09:56:50'),(13,13,3,'留言内容13','2023-05-09 09:56:50','回复信息13','2023-05-09 09:56:50','2023-05-09 09:56:50'),(14,14,1,'留言内容14','2023-05-09 09:56:50','回复信息14','2023-05-09 09:56:50','2023-05-09 09:56:50');

/*Table structure for table `dongwu_yuyue` */

DROP TABLE IF EXISTS `dongwu_yuyue`;

CREATE TABLE `dongwu_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dongwu_id` int(11) DEFAULT NULL COMMENT '求助',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `dongwu_yuyue_text` longtext COMMENT '领养缘由',
  `dongwu_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态 Search111 ',
  `dongwu_yuyue_yesno_text` longtext COMMENT '审核回复',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='求助报名';

/*Data for the table `dongwu_yuyue` */

insert  into `dongwu_yuyue`(`id`,`dongwu_id`,`yonghu_id`,`dongwu_yuyue_text`,`dongwu_yuyue_yesno_types`,`dongwu_yuyue_yesno_text`,`insert_time`,`create_time`) values (1,1,3,'领养缘由1',1,NULL,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(2,2,2,'领养缘由2',1,NULL,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(3,3,1,'领养缘由3',1,NULL,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(4,4,1,'领养缘由4',1,NULL,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(5,5,3,'领养缘由5',1,NULL,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(6,6,3,'领养缘由6',3,NULL,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(7,7,1,'领养缘由7',1,NULL,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(8,8,2,'领养缘由8',1,NULL,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(9,9,2,'领养缘由9',1,NULL,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(10,10,2,'领养缘由10',1,NULL,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(11,11,2,'领养缘由11',2,NULL,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(12,12,2,'领养缘由12',3,NULL,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(13,13,3,'领养缘由13',1,NULL,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(14,14,2,'领养缘由14',2,NULL,'2023-05-09 09:56:50','2023-05-09 09:56:50');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,'发布内容1',179,1,'2023-05-09 09:56:50','2023-05-09 09:56:50','2023-05-09 09:56:50'),(2,'帖子标题2',1,NULL,'发布内容2',118,1,'2023-05-09 09:56:50','2023-05-09 09:56:50','2023-05-09 09:56:50'),(3,'帖子标题3',3,NULL,'发布内容3',215,1,'2023-05-09 09:56:50','2023-05-09 09:56:50','2023-05-09 09:56:50'),(4,'帖子标题4',3,NULL,'发布内容4',11,1,'2023-05-09 09:56:50','2023-05-09 09:56:50','2023-05-09 09:56:50'),(5,'帖子标题5',2,NULL,'发布内容5',460,1,'2023-05-09 09:56:50','2023-05-09 09:56:50','2023-05-09 09:56:50'),(6,'帖子标题6',3,NULL,'发布内容6',93,1,'2023-05-09 09:56:50','2023-05-09 09:56:50','2023-05-09 09:56:50'),(7,'帖子标题7',2,NULL,'发布内容7',250,1,'2023-05-09 09:56:50','2023-05-09 09:56:50','2023-05-09 09:56:50'),(8,'帖子标题8',3,NULL,'发布内容8',96,1,'2023-05-09 09:56:50','2023-05-09 09:56:50','2023-05-09 09:56:50'),(9,'帖子标题9',1,NULL,'发布内容9',465,1,'2023-05-09 09:56:50','2023-05-09 09:56:50','2023-05-09 09:56:50'),(10,'帖子标题10',3,NULL,'发布内容10',129,1,'2023-05-09 09:56:50','2023-05-09 09:56:50','2023-05-09 09:56:50'),(11,'帖子标题11',3,NULL,'发布内容11',410,1,'2023-05-09 09:56:50','2023-05-09 09:56:50','2023-05-09 09:56:50'),(12,'帖子标题12',2,NULL,'发布内容12',196,1,'2023-05-09 09:56:50','2023-05-09 09:56:50','2023-05-09 09:56:50'),(13,'帖子标题13',2,NULL,'发布内容13',31,1,'2023-05-09 09:56:50','2023-05-09 09:56:50','2023-05-09 09:56:50'),(14,'帖子标题14',2,NULL,'发布内容14',222,1,'2023-05-09 09:56:50','2023-05-09 09:56:50','2023-05-09 09:56:50'),(15,NULL,NULL,1,'11111111111111111111111',14,2,'2023-05-09 11:34:03',NULL,'2023-05-09 11:34:03'),(16,NULL,1,NULL,'22222222222222222',14,2,'2023-05-09 11:38:01',NULL,'2023-05-09 11:38:01');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告通知';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'upload/news1.jpg','2023-05-09 09:56:50','公告详情1','2023-05-09 09:56:50'),(2,'公告标题2',3,'upload/news2.jpg','2023-05-09 09:56:50','公告详情2','2023-05-09 09:56:50'),(3,'公告标题3',1,'upload/news3.jpg','2023-05-09 09:56:50','公告详情3','2023-05-09 09:56:50'),(4,'公告标题4',2,'upload/news4.jpg','2023-05-09 09:56:50','公告详情4','2023-05-09 09:56:50'),(5,'公告标题5',1,'upload/news5.jpg','2023-05-09 09:56:50','公告详情5','2023-05-09 09:56:50'),(6,'公告标题6',1,'upload/news6.jpg','2023-05-09 09:56:50','公告详情6','2023-05-09 09:56:50'),(7,'公告标题7',2,'upload/news7.jpg','2023-05-09 09:56:50','公告详情7','2023-05-09 09:56:50'),(8,'公告标题8',1,'upload/news8.jpg','2023-05-09 09:56:50','公告详情8','2023-05-09 09:56:50'),(9,'公告标题9',2,'upload/news9.jpg','2023-05-09 09:56:50','公告详情9','2023-05-09 09:56:50'),(10,'公告标题10',2,'upload/news10.jpg','2023-05-09 09:56:50','公告详情10','2023-05-09 09:56:50'),(11,'公告标题11',1,'upload/news11.jpg','2023-05-09 09:56:50','公告详情11','2023-05-09 09:56:50'),(12,'公告标题12',1,'upload/news12.jpg','2023-05-09 09:56:50','公告详情12','2023-05-09 09:56:50'),(13,'公告标题13',3,'upload/news13.jpg','2023-05-09 09:56:50','公告详情13','2023-05-09 09:56:50'),(14,'公告标题14',2,'upload/news14.jpg','2023-05-09 09:56:50','公告详情14','2023-05-09 09:56:50');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '管理id',
  `username` varchar(100) NOT NULL COMMENT '管理名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','o9ri5hyqr3ax9irv3r4pam9uuf6b9er1','2023-05-09 10:16:02','2023-05-09 12:33:27'),(2,1,'a1','yonghu','用户','8v4qk4u9qhjlpk2nfy5l1942uw4u2b9h','2023-05-09 10:19:44','2023-05-09 12:45:46'),(3,2,'a2','yonghu','用户','apjjhpcbp5ir28bufkp1x2d6e3x71nv5','2023-05-09 11:39:21','2023-05-09 12:39:21');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-05-09 09:56:30');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户名称 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `yonghu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`yonghu_delete`,`insert_time`,`create_time`) values (1,'a1','123456','用户名称1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com',1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(2,'a2','123456','用户名称2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com',1,'2023-05-09 09:56:50','2023-05-09 09:56:50'),(3,'a3','123456','用户名称3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com',1,'2023-05-09 09:56:50','2023-05-09 09:56:50');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
