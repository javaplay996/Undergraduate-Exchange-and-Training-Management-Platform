/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - benkeshengjiaoliuguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`benkeshengjiaoliuguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `benkeshengjiaoliuguanli`;

/*Table structure for table `chengji` */

DROP TABLE IF EXISTS `chengji`;

CREATE TABLE `chengji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chengji_name` varchar(200) DEFAULT NULL COMMENT '成绩标题 Search111',
  `chengji_types` int(11) DEFAULT NULL COMMENT '成绩类型  Search111',
  `xuenfen_number` int(11) DEFAULT NULL COMMENT '成绩',
  `chengji_content` text COMMENT '备注',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `chengji_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='学生成绩';

/*Data for the table `chengji` */

insert  into `chengji`(`id`,`chengji_name`,`chengji_types`,`xuenfen_number`,`chengji_content`,`yonghu_id`,`chengji_delete`,`create_time`) values (1,'成绩标题1',1,313,'备注1',1,1,'2023-04-08 13:33:11'),(2,'成绩标题2',1,148,'备注2',1,1,'2023-04-08 13:33:11'),(3,'成绩标题3',2,283,'备注3',1,1,'2023-04-08 13:33:11'),(4,'成绩标题4',3,254,'备注4',2,1,'2023-04-08 13:33:11'),(5,'成绩标题5',1,392,'备注5',1,1,'2023-04-08 13:33:11'),(6,'成绩标题6',3,104,'备注6',3,1,'2023-04-08 13:33:11'),(7,'成绩标题7',3,475,'备注7',2,1,'2023-04-08 13:33:11'),(8,'成绩标题8',1,111,'备注8',1,1,'2023-04-08 13:33:11'),(9,'成绩标题9',2,259,'备注9',1,1,'2023-04-08 13:33:11'),(10,'成绩标题10',2,485,'备注10',3,1,'2023-04-08 13:33:11'),(11,'成绩标题11',2,178,'备注11',2,1,'2023-04-08 13:33:11'),(12,'成绩标题12',2,161,'备注12',2,1,'2023-04-08 13:33:11'),(13,'成绩标题13',2,140,'备注13',3,1,'2023-04-08 13:33:11'),(14,'成绩标题14',3,218,'备注14',1,1,'2023-04-08 13:33:11'),(19,'123',2,123,'<p>123</p>',2,1,'2023-04-08 14:06:19');

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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-08 13:32:58'),(2,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-08 13:32:58'),(3,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-04-08 13:32:58'),(4,'ziliao_types','资料类型',1,'资料类型1',NULL,NULL,'2023-04-08 13:32:58'),(5,'ziliao_types','资料类型',2,'资料类型2',NULL,NULL,'2023-04-08 13:32:58'),(6,'ziliao_types','资料类型',3,'资料类型3',NULL,NULL,'2023-04-08 13:32:58'),(7,'qingjia_types','请假类型',1,'生病',NULL,NULL,'2023-04-08 13:32:58'),(8,'qingjia_types','请假类型',2,'有事',NULL,NULL,'2023-04-08 13:32:58'),(9,'qingjia_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-04-08 13:32:58'),(10,'qingjia_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-04-08 13:32:58'),(11,'qingjia_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-04-08 13:32:58'),(12,'qingjia_yesno_types','申请状态',4,'已销假',NULL,NULL,'2023-04-08 13:32:58'),(13,'huoodngbaoming_types','活动类型',1,'活动类型1',NULL,NULL,'2023-04-08 13:32:59'),(14,'huoodngbaoming_types','活动类型',2,'活动类型2',NULL,NULL,'2023-04-08 13:32:59'),(15,'huoodngbaoming_types','活动类型',3,'活动类型3',NULL,NULL,'2023-04-08 13:32:59'),(16,'huoodngbaoming_yesno_types','报名状态',1,'待审核',NULL,NULL,'2023-04-08 13:32:59'),(17,'huoodngbaoming_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-04-08 13:32:59'),(18,'huoodngbaoming_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-04-08 13:32:59'),(19,'chengji_types','成绩类型',1,'成绩类型1',NULL,NULL,'2023-04-08 13:32:59'),(20,'chengji_types','成绩类型',2,'成绩类型2',NULL,NULL,'2023-04-08 13:32:59'),(21,'chengji_types','成绩类型',3,'成绩类型3',NULL,NULL,'2023-04-08 13:32:59'),(22,'kecheng_types','课程类型',1,'课程类型1',NULL,NULL,'2023-04-08 13:32:59'),(23,'kecheng_types','课程类型',2,'课程类型2',NULL,NULL,'2023-04-08 13:32:59'),(24,'kecheng_types','课程类型',3,'课程类型3',NULL,NULL,'2023-04-08 13:32:59'),(25,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-08 13:32:59'),(26,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-08 13:32:59'),(27,'jiaoshi_types','教师类型',1,'教师类型1',NULL,NULL,'2023-04-08 13:32:59'),(28,'jiaoshi_types','教师类型',2,'教师类型2',NULL,NULL,'2023-04-08 13:32:59'),(29,'jiaoshi_types','教师类型',3,'教师类型3',NULL,NULL,'2023-04-08 13:32:59'),(35,'forum_types','帖子类型',1,'课程选择',NULL,NULL,'2023-04-08 13:32:59'),(36,'forum_types','帖子类型',2,'成绩查询',NULL,NULL,'2023-04-08 13:32:59'),(37,'forum_types','帖子类型',3,'学分置换',NULL,NULL,'2023-04-08 13:32:59'),(38,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-08 13:32:59'),(39,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-08 13:32:59');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_types` int(11) DEFAULT NULL COMMENT '帖子类型  Search111 ',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`jiaoshi_id`,`users_id`,`forum_content`,`super_ids`,`forum_types`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,NULL,'发布内容1',349,2,1,'2023-04-08 13:33:11','2023-04-08 13:33:11','2023-04-08 13:33:11'),(2,'帖子标题2',1,NULL,NULL,'发布内容2',426,2,1,'2023-04-08 13:33:11','2023-04-08 13:33:11','2023-04-08 13:33:11'),(3,'帖子标题3',3,NULL,NULL,'发布内容3',190,3,1,'2023-04-08 13:33:11','2023-04-08 13:33:11','2023-04-08 13:33:11'),(4,'帖子标题4',3,NULL,NULL,'发布内容4',429,1,1,'2023-04-08 13:33:11','2023-04-08 13:33:11','2023-04-08 13:33:11'),(5,'帖子标题5',1,NULL,NULL,'发布内容5',308,1,1,'2023-04-08 13:33:11','2023-04-08 13:33:11','2023-04-08 13:33:11'),(6,'帖子标题6',1,NULL,NULL,'发布内容6',421,1,1,'2023-04-08 13:33:11','2023-04-08 13:33:11','2023-04-08 13:33:11'),(7,'帖子标题7',1,NULL,NULL,'发布内容7',244,2,1,'2023-04-08 13:33:11','2023-04-08 13:33:11','2023-04-08 13:33:11'),(8,'帖子标题8',2,NULL,NULL,'发布内容8',244,3,1,'2023-04-08 13:33:11','2023-04-08 13:33:11','2023-04-08 13:33:11'),(9,'帖子标题9',1,NULL,NULL,'发布内容9',427,2,1,'2023-04-08 13:33:11','2023-04-08 13:33:11','2023-04-08 13:33:11'),(10,'帖子标题10',2,NULL,NULL,'发布内容10',414,2,1,'2023-04-08 13:33:11','2023-04-08 13:33:11','2023-04-08 13:33:11'),(11,'帖子标题11',2,NULL,NULL,'发布内容11',57,3,1,'2023-04-08 13:33:11','2023-04-08 13:33:11','2023-04-08 13:33:11'),(13,'帖子标题13',3,NULL,NULL,'发布内容13',465,2,1,'2023-04-08 13:33:11','2023-04-08 13:33:11','2023-04-08 13:33:11'),(14,'帖子标题14',2,NULL,NULL,'发布内容14',235,1,1,'2023-04-08 13:33:11','2023-04-08 13:33:11','2023-04-08 13:33:11'),(15,NULL,1,NULL,NULL,'111111111111111111111111111111111111',14,NULL,2,'2023-04-08 14:03:47',NULL,'2023-04-08 14:03:47'),(17,NULL,NULL,1,NULL,'上方导航栏可滚动',14,NULL,2,'2023-04-08 14:07:01',NULL,'2023-04-08 14:07:01'),(18,NULL,NULL,NULL,1,'类型在基础数据管理模块都是可以修改的',14,NULL,2,'2023-04-08 14:08:13',NULL,'2023-04-08 14:08:13');

/*Table structure for table `huoodngbaoming` */

DROP TABLE IF EXISTS `huoodngbaoming`;

CREATE TABLE `huoodngbaoming` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huoodngbaoming_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `huoodngbaoming_name` varchar(200) DEFAULT NULL COMMENT '报名活动 Search111',
  `huoodngbaoming_types` int(200) DEFAULT NULL COMMENT '活动类型 Search111',
  `huoodngbaoming_text` longtext COMMENT '报名理由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '活动报名时间',
  `huoodngbaoming_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `huoodngbaoming_yesno_text` longtext COMMENT '审核回复',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='活动报名';

/*Data for the table `huoodngbaoming` */

insert  into `huoodngbaoming`(`id`,`huoodngbaoming_uuid_number`,`yonghu_id`,`huoodngbaoming_name`,`huoodngbaoming_types`,`huoodngbaoming_text`,`insert_time`,`huoodngbaoming_yesno_types`,`huoodngbaoming_yesno_text`,`create_time`) values (1,'1680931991573',1,'报名活动1',1,'报名理由1','2023-04-08 13:33:11',1,NULL,'2023-04-08 13:33:11'),(2,'1680931991497',2,'报名活动2',2,'报名理由2','2023-04-08 13:33:11',1,NULL,'2023-04-08 13:33:11'),(3,'1680931991562',3,'报名活动3',3,'报名理由3','2023-04-08 13:33:11',1,NULL,'2023-04-08 13:33:11'),(4,'1680931991535',1,'报名活动4',3,'报名理由4','2023-04-08 13:33:11',1,NULL,'2023-04-08 13:33:11'),(5,'1680931991561',2,'报名活动5',2,'报名理由5','2023-04-08 13:33:11',1,NULL,'2023-04-08 13:33:11'),(6,'1680931991560',1,'报名活动6',1,'报名理由6','2023-04-08 13:33:11',1,NULL,'2023-04-08 13:33:11'),(7,'1680931991511',2,'报名活动7',3,'报名理由7','2023-04-08 13:33:11',1,NULL,'2023-04-08 13:33:11'),(8,'1680931991481',3,'报名活动8',1,'报名理由8','2023-04-08 13:33:11',1,NULL,'2023-04-08 13:33:11'),(9,'1680931991546',3,'报名活动9',2,'报名理由9','2023-04-08 13:33:11',1,NULL,'2023-04-08 13:33:11'),(10,'1680931991557',2,'报名活动10',2,'报名理由10','2023-04-08 13:33:11',1,NULL,'2023-04-08 13:33:11'),(11,'1680931991549',3,'报名活动11',3,'报名理由11','2023-04-08 13:33:11',1,NULL,'2023-04-08 13:33:11'),(12,'1680931991520',3,'报名活动12',1,'报名理由12','2023-04-08 13:33:11',1,NULL,'2023-04-08 13:33:11'),(13,'1680931991568',2,'报名活动13',2,'报名理由13','2023-04-08 13:33:11',1,NULL,'2023-04-08 13:33:11'),(14,'1680931991511',3,'报名活动14',2,'报名理由14','2023-04-08 13:33:11',1,NULL,'2023-04-08 13:33:11'),(15,'1680933790902',1,'xxx活动',2,'123','2023-04-08 14:03:18',2,'123','2023-04-08 14:03:18');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_uuid_number` varchar(200) DEFAULT NULL COMMENT '工号 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名 Search111 ',
  `jiaoshi_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `jiaoshi_types` int(11) DEFAULT NULL COMMENT '教师类型 Search111 ',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `jiaoshi_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`jiaoshi_uuid_number`,`username`,`password`,`jiaoshi_name`,`jiaoshi_photo`,`sex_types`,`jiaoshi_phone`,`jiaoshi_types`,`jiaoshi_email`,`jiaoshi_delete`,`create_time`) values (1,'1680931991573','a1','123456','教师姓名1','upload/jiaoshi1.jpg',2,'17703786901',2,'1@qq.com',1,'2023-04-08 13:33:11'),(2,'1680931991550','a2','123456','教师姓名2','upload/jiaoshi2.jpg',2,'17703786902',3,'2@qq.com',1,'2023-04-08 13:33:11'),(3,'1680931991511','a3','123456','教师姓名3','upload/jiaoshi3.jpg',1,'17703786903',1,'3@qq.com',1,'2023-04-08 13:33:11');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程名称 Search111',
  `kecheng_types` int(200) DEFAULT NULL COMMENT '课程类型 Search111',
  `kecheng_photo` varchar(200) DEFAULT NULL COMMENT '课程封面',
  `kecheng_shijian` int(200) DEFAULT NULL COMMENT '课程时间/分钟',
  `jiaoshi_id` int(200) DEFAULT NULL COMMENT '负责教师',
  `kecheng_content` text COMMENT '课程详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`kecheng_uuid_number`,`kecheng_name`,`kecheng_types`,`kecheng_photo`,`kecheng_shijian`,`jiaoshi_id`,`kecheng_content`,`create_time`) values (1,'1680931991517','课程名称1',2,'upload/kecheng1.jpg',131,2,'课程详情1','2023-04-08 13:33:11'),(2,'1680931991522','课程名称2',1,'upload/kecheng2.jpg',17,1,'课程详情2','2023-04-08 13:33:11'),(3,'1680931991485','课程名称3',1,'upload/kecheng3.jpg',154,3,'课程详情3','2023-04-08 13:33:11'),(4,'1680931991579','课程名称4',2,'upload/kecheng4.jpg',362,2,'课程详情4','2023-04-08 13:33:11'),(5,'1680931991510','课程名称5',3,'upload/kecheng5.jpg',375,3,'课程详情5','2023-04-08 13:33:11'),(6,'1680931991557','课程名称6',2,'upload/kecheng6.jpg',406,3,'课程详情6','2023-04-08 13:33:11'),(7,'1680931991549','课程名称7',2,'upload/kecheng7.jpg',425,2,'课程详情7','2023-04-08 13:33:11'),(8,'1680931991547','课程名称8',1,'upload/kecheng8.jpg',400,2,'课程详情8','2023-04-08 13:33:11'),(9,'1680931991493','课程名称9',2,'upload/kecheng9.jpg',444,2,'课程详情9','2023-04-08 13:33:11'),(10,'1680931991519','课程名称10',3,'upload/kecheng10.jpg',101,2,'课程详情10','2023-04-08 13:33:11'),(11,'1680931991549','课程名称11',3,'upload/kecheng11.jpg',198,3,'课程详情11','2023-04-08 13:33:11'),(12,'1680931991502','课程名称12',1,'upload/kecheng12.jpg',219,3,'课程详情12','2023-04-08 13:33:11'),(13,'1680931991569','课程名称13',1,'upload/kecheng13.jpg',73,3,'课程详情13','2023-04-08 13:33:11'),(14,'1680931991525','课程名称14',3,'upload/kecheng14.jpg',236,2,'课程详情14','2023-04-08 13:33:11');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',3,'upload/news1.jpg','2023-04-08 13:33:11','公告详情1','2023-04-08 13:33:11'),(2,'公告标题2',1,'upload/news2.jpg','2023-04-08 13:33:11','公告详情2','2023-04-08 13:33:11'),(3,'公告标题3',1,'upload/news3.jpg','2023-04-08 13:33:11','公告详情3','2023-04-08 13:33:11'),(4,'公告标题4',1,'upload/news4.jpg','2023-04-08 13:33:11','公告详情4','2023-04-08 13:33:11'),(5,'公告标题5',2,'upload/news5.jpg','2023-04-08 13:33:11','公告详情5','2023-04-08 13:33:11'),(6,'公告标题6',3,'upload/news6.jpg','2023-04-08 13:33:11','公告详情6','2023-04-08 13:33:11'),(7,'公告标题7',1,'upload/news7.jpg','2023-04-08 13:33:11','公告详情7','2023-04-08 13:33:11'),(8,'公告标题8',3,'upload/news8.jpg','2023-04-08 13:33:11','公告详情8','2023-04-08 13:33:11'),(9,'公告标题9',2,'upload/news9.jpg','2023-04-08 13:33:11','公告详情9','2023-04-08 13:33:11'),(10,'公告标题10',1,'upload/news10.jpg','2023-04-08 13:33:11','公告详情10','2023-04-08 13:33:11'),(11,'公告标题11',2,'upload/news11.jpg','2023-04-08 13:33:11','公告详情11','2023-04-08 13:33:11'),(12,'公告标题12',2,'upload/news12.jpg','2023-04-08 13:33:11','公告详情12','2023-04-08 13:33:11'),(13,'公告标题13',2,'upload/news13.jpg','2023-04-08 13:33:11','公告详情13','2023-04-08 13:33:11'),(14,'公告标题14',1,'upload/news14.jpg','2023-04-08 13:33:11','公告详情14','2023-04-08 13:33:11');

/*Table structure for table `qingjia` */

DROP TABLE IF EXISTS `qingjia`;

CREATE TABLE `qingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '学生',
  `qingjia_name` varchar(200) DEFAULT NULL COMMENT '请假标题 Search111 ',
  `qingjia_text` longtext COMMENT '请假缘由',
  `qingjia_types` int(11) DEFAULT NULL COMMENT '请假类型 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `qingjia_time` timestamp NULL DEFAULT NULL COMMENT '请假时间',
  `qingjia_number` int(200) DEFAULT NULL COMMENT '请假天数',
  `qingjia_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111 ',
  `qingjia_yesno_text` longtext COMMENT '处理意见',
  `qingjia_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='学生请假';

/*Data for the table `qingjia` */

insert  into `qingjia`(`id`,`yonghu_id`,`qingjia_name`,`qingjia_text`,`qingjia_types`,`insert_time`,`qingjia_time`,`qingjia_number`,`qingjia_yesno_types`,`qingjia_yesno_text`,`qingjia_shenhe_time`,`create_time`) values (1,1,'请假标题1','请假缘由1',2,'2023-04-08 13:33:11','2023-04-08 13:33:11',377,1,NULL,NULL,'2023-04-08 13:33:11'),(2,2,'请假标题2','请假缘由2',2,'2023-04-08 13:33:11','2023-04-08 13:33:11',231,1,NULL,NULL,'2023-04-08 13:33:11'),(3,3,'请假标题3','请假缘由3',2,'2023-04-08 13:33:11','2023-04-08 13:33:11',315,1,NULL,NULL,'2023-04-08 13:33:11'),(4,3,'请假标题4','请假缘由4',2,'2023-04-08 13:33:11','2023-04-08 13:33:11',467,1,NULL,NULL,'2023-04-08 13:33:11'),(5,2,'请假标题5','请假缘由5',1,'2023-04-08 13:33:11','2023-04-08 13:33:11',376,1,NULL,NULL,'2023-04-08 13:33:11'),(6,3,'请假标题6','请假缘由6',2,'2023-04-08 13:33:11','2023-04-08 13:33:11',438,1,NULL,NULL,'2023-04-08 13:33:11'),(7,3,'请假标题7','请假缘由7',1,'2023-04-08 13:33:11','2023-04-08 13:33:11',173,1,NULL,NULL,'2023-04-08 13:33:11'),(8,1,'请假标题8','请假缘由8',2,'2023-04-08 13:33:11','2023-04-08 13:33:11',218,1,NULL,NULL,'2023-04-08 13:33:11'),(9,3,'请假标题9','请假缘由9',2,'2023-04-08 13:33:11','2023-04-08 13:33:11',242,1,NULL,NULL,'2023-04-08 13:33:11'),(10,2,'请假标题10','请假缘由10',2,'2023-04-08 13:33:11','2023-04-08 13:33:11',300,1,NULL,NULL,'2023-04-08 13:33:11'),(11,3,'请假标题11','请假缘由11',2,'2023-04-08 13:33:11','2023-04-08 13:33:11',214,1,NULL,NULL,'2023-04-08 13:33:11'),(12,3,'请假标题12','请假缘由12',1,'2023-04-08 13:33:11','2023-04-08 13:33:11',45,1,NULL,NULL,'2023-04-08 13:33:11'),(13,3,'请假标题13','请假缘由13',2,'2023-04-08 13:33:11','2023-04-08 13:33:11',21,1,NULL,NULL,'2023-04-08 13:33:11'),(14,2,'请假标题14','请假缘由14',1,'2023-04-08 13:33:11','2023-04-08 13:33:11',193,3,'1111','2023-04-08 14:06:35','2023-04-08 13:33:11'),(15,1,'123','123',1,'2023-04-08 14:03:35','2023-04-09 00:00:00',3,2,'123','2023-04-08 14:06:30','2023-04-08 14:03:35');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','学生','8gs96f7zj1v40e11n062wtq0uj8fpbfm','2023-04-08 13:36:31','2023-04-08 15:02:56'),(2,1,'admin','users','管理员','npacfdehv1e764i1zlqvgogjdvbyviag','2023-04-08 13:44:15','2023-04-08 15:09:17'),(3,1,'a1','jiaoshi','教师','8qr1z0xor23ve0shs6gh08nd6amoiwhz','2023-04-08 14:01:09','2023-04-08 15:05:20');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-08 13:32:58');

/*Table structure for table `xuanke` */

DROP TABLE IF EXISTS `xuanke`;

CREATE TABLE `xuanke` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '选课时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='选课信息';

/*Data for the table `xuanke` */

insert  into `xuanke`(`id`,`kecheng_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,1,1,'2023-04-08 13:33:11','2023-04-08 13:33:11'),(3,3,3,'2023-04-08 13:33:11','2023-04-08 13:33:11'),(5,5,2,'2023-04-08 13:33:11','2023-04-08 13:33:11'),(8,8,2,'2023-04-08 13:33:11','2023-04-08 13:33:11'),(10,10,2,'2023-04-08 13:33:11','2023-04-08 13:33:11'),(12,12,3,'2023-04-08 13:33:11','2023-04-08 13:33:11'),(20,10,1,'2023-04-08 14:02:58','2023-04-08 14:02:58'),(21,13,1,'2023-04-08 14:04:43','2023-04-08 14:04:43');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生名称 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '学生邮箱',
  `yonghu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`yonghu_delete`,`insert_time`,`create_time`) values (1,'a1','123456','学生名称1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com',1,'2023-04-08 13:33:11','2023-04-08 13:33:11'),(2,'a2','123456','学生名称2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com',1,'2023-04-08 13:33:11','2023-04-08 13:33:11'),(3,'a3','123456','学生名称3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com',1,'2023-04-08 13:33:11','2023-04-08 13:33:11');

/*Table structure for table `yuanxiao` */

DROP TABLE IF EXISTS `yuanxiao`;

CREATE TABLE `yuanxiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yuanxiao_name` varchar(200) DEFAULT NULL COMMENT '院校名称  Search111 ',
  `yuanxiao_photo` varchar(200) DEFAULT NULL COMMENT '展示照片',
  `yuanxiao_content` longtext COMMENT '展示内容 ',
  `yuanxiao_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='院校展示';

/*Data for the table `yuanxiao` */

insert  into `yuanxiao`(`id`,`yuanxiao_name`,`yuanxiao_photo`,`yuanxiao_content`,`yuanxiao_delete`,`insert_time`,`create_time`) values (1,'院校名称1','upload/yuanxiao1.jpg','展示内容1',1,'2023-04-08 13:33:11','2023-04-08 13:33:11'),(2,'院校名称2','upload/yuanxiao2.jpg','展示内容2',1,'2023-04-08 13:33:11','2023-04-08 13:33:11'),(3,'院校名称3','upload/yuanxiao3.jpg','展示内容3',1,'2023-04-08 13:33:11','2023-04-08 13:33:11'),(4,'院校名称4','upload/yuanxiao4.jpg','展示内容4',1,'2023-04-08 13:33:11','2023-04-08 13:33:11'),(5,'院校名称5','upload/yuanxiao5.jpg','展示内容5',1,'2023-04-08 13:33:11','2023-04-08 13:33:11'),(6,'院校名称6','upload/yuanxiao6.jpg','展示内容6',1,'2023-04-08 13:33:11','2023-04-08 13:33:11'),(7,'院校名称7','upload/yuanxiao7.jpg','展示内容7',1,'2023-04-08 13:33:11','2023-04-08 13:33:11'),(8,'院校名称8','upload/yuanxiao8.jpg','展示内容8',1,'2023-04-08 13:33:11','2023-04-08 13:33:11'),(9,'院校名称9','upload/yuanxiao9.jpg','展示内容9',1,'2023-04-08 13:33:11','2023-04-08 13:33:11'),(10,'院校名称10','upload/yuanxiao10.jpg','展示内容10',1,'2023-04-08 13:33:11','2023-04-08 13:33:11'),(11,'院校名称11','upload/yuanxiao11.jpg','展示内容11',1,'2023-04-08 13:33:11','2023-04-08 13:33:11'),(12,'院校名称12','upload/yuanxiao12.jpg','展示内容12',1,'2023-04-08 13:33:11','2023-04-08 13:33:11'),(13,'院校名称13','upload/yuanxiao13.jpg','展示内容13',1,'2023-04-08 13:33:11','2023-04-08 13:33:11'),(14,'院校名称14','upload/yuanxiao14.jpg','展示内容14',1,'2023-04-08 13:33:11','2023-04-08 13:33:11');

/*Table structure for table `ziliao` */

DROP TABLE IF EXISTS `ziliao`;

CREATE TABLE `ziliao` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ziliao_uuid_number` varchar(200) DEFAULT NULL COMMENT '资料编号',
  `ziliao_name` varchar(200) DEFAULT NULL COMMENT '资料名称 Search111',
  `ziliao_types` int(200) DEFAULT NULL COMMENT '资料类型 Search111',
  `ziliao_photo` varchar(200) DEFAULT NULL COMMENT '资料封面',
  `ziliao_file` varchar(200) DEFAULT NULL COMMENT '资料',
  `ziliao_content` text COMMENT '资料详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公共资料';

/*Data for the table `ziliao` */

insert  into `ziliao`(`id`,`ziliao_uuid_number`,`ziliao_name`,`ziliao_types`,`ziliao_photo`,`ziliao_file`,`ziliao_content`,`create_time`) values (1,'1680931991505','资料名称1',1,'upload/ziliao1.jpg','upload/file.rar','资料详情1','2023-04-08 13:33:11'),(2,'1680931991523','资料名称2',2,'upload/ziliao2.jpg','upload/file.rar','资料详情2','2023-04-08 13:33:11'),(3,'1680931991505','资料名称3',2,'upload/ziliao3.jpg','upload/file.rar','资料详情3','2023-04-08 13:33:11'),(4,'1680931991541','资料名称4',2,'upload/ziliao4.jpg','upload/file.rar','资料详情4','2023-04-08 13:33:11'),(5,'1680931991514','资料名称5',2,'upload/ziliao5.jpg','upload/file.rar','资料详情5','2023-04-08 13:33:11'),(6,'1680931991550','资料名称6',2,'upload/ziliao6.jpg','upload/file.rar','资料详情6','2023-04-08 13:33:11'),(7,'1680931991562','资料名称7',1,'upload/ziliao7.jpg','upload/file.rar','资料详情7','2023-04-08 13:33:11'),(8,'1680931991541','资料名称8',2,'upload/ziliao8.jpg','upload/file.rar','资料详情8','2023-04-08 13:33:11'),(9,'1680931991576','资料名称9',1,'upload/ziliao9.jpg','upload/file.rar','资料详情9','2023-04-08 13:33:11'),(10,'1680931991559','资料名称10',1,'upload/ziliao10.jpg','upload/file.rar','资料详情10','2023-04-08 13:33:11'),(11,'1680931991507','资料名称11',1,'upload/ziliao11.jpg','upload/file.rar','资料详情11','2023-04-08 13:33:11'),(12,'1680931991543','资料名称12',3,'upload/ziliao12.jpg','upload/file.rar','资料详情12','2023-04-08 13:33:11'),(13,'1680931991574','资料名称13',2,'upload/ziliao13.jpg','upload/file.rar','资料详情13','2023-04-08 13:33:11'),(14,'1680931991527','资料名称14',3,'upload/ziliao14.jpg','upload/file.rar','资料详情14','2023-04-08 13:33:11');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
