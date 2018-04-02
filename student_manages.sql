/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.53-log : Database - student_manages
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`student_manages` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `student_manages`;

/*Table structure for table `grade` */

DROP TABLE IF EXISTS `grade`;

CREATE TABLE `grade` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '班级主键',
  `name` varchar(100) DEFAULT NULL COMMENT '班级名称',
  `length` varchar(20) DEFAULT NULL COMMENT '学制',
  `price` int(11) DEFAULT NULL COMMENT '学费',
  `status` int(11) DEFAULT NULL COMMENT '是否启用',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '删除时间',
  `is_delete` int(11) DEFAULT NULL COMMENT '允许删除',
  `student_id` int(11) DEFAULT NULL COMMENT '关联外键',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `grade` */

insert  into `grade`(`id`,`name`,`length`,`price`,`status`,`create_time`,`update_time`,`delete_time`,`is_delete`,`student_id`) values (1,'PHP开发工程师就业班','6个月',19800,0,1502242191,1522196160,NULL,1,NULL),(2,'前端开发工程师提高班','3个月',6767,1,1502242191,1522196160,NULL,1,NULL),(3,'WEB开发全栈工程师班','6个月',28800,1,1502242191,1522196160,NULL,1,NULL),(4,'Java开发工程师提升班','一年半',3500,1,1502257693,1522196160,NULL,1,NULL),(5,'平面设计高薪就业班','6个月',9800,1,1502334559,1522196160,NULL,1,NULL);

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别',
  `age` tinyint(4) unsigned DEFAULT NULL COMMENT '年龄',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `status` int(11) DEFAULT NULL COMMENT '当前状态',
  `start_time` int(11) DEFAULT NULL COMMENT '入学时间',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '删除时间',
  `is_delete` int(11) DEFAULT NULL COMMENT '允许删除',
  `grade_id` int(11) DEFAULT NULL COMMENT '关联外键',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`id`,`name`,`sex`,`age`,`mobile`,`email`,`status`,`start_time`,`create_time`,`update_time`,`delete_time`,`is_delete`,`grade_id`) values (1,'杨过',0,67,'18966557788','yangguo@php.cn',1,1494345600,1502326725,1502343973,NULL,1,3),(2,'小龙女',0,33,'13509897765','xiaolongnv@php.cn',1,1502326725,1502326725,1502343973,NULL,1,1),(3,'尹志平',1,38,'17765336278','yizhiping@php.cn',1,1502326725,1502326725,1502343973,NULL,1,3),(4,'老顽童',1,89,'15677281923','laowantong@php.cn',1,1502326725,1502326725,1502343973,NULL,1,2),(5,'洪七公',1,78,'13389776234','hongqigong@php.cn',1,1502326725,1502326725,1502343973,NULL,1,2),(6,'郭靖',0,26,'15766338726','guojin@php.cn',1,1502294400,1502326725,1502343973,NULL,1,1),(7,'黄蓉',0,46,'18976227182','huangrong@php.cn',0,1502326725,1502326725,1502343973,NULL,1,1),(8,'杨康',1,45,'13287009834','yangkang@php.cn',0,1502326725,1502326725,1502343973,NULL,1,3),(9,'欧阳克',1,37,'13908772343','ouyangke@php.cn',0,1502326725,1502326725,1502343973,NULL,1,2),(10,'张无忌',1,28,'15387298273','zhangwuji@php.cn',1,1502326725,1502326725,1502343973,NULL,1,2),(11,'赵敏',0,26,'13987372937','zhaoming@php.cn',1,1502326725,1502326725,1502343973,NULL,1,3),(12,'宋青书',0,22,'15806554328','songqinshu@php.cn',1,1494864000,1502327784,1502343973,NULL,1,2),(13,'周芷若',1,20,'18977665544','zhouzhiruo@php.cn',1,1501948800,1502343910,1502343931,NULL,NULL,5);

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `degree` varchar(30) DEFAULT NULL COMMENT '学历',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  `school` varchar(50) DEFAULT NULL COMMENT '毕业学校',
  `hiredate` int(11) DEFAULT NULL COMMENT '入职时间',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '删除标志',
  `is_delete` int(11) DEFAULT '1' COMMENT '允许删除',
  `status` int(11) DEFAULT NULL COMMENT '1启用0禁用',
  `grade_id` int(11) DEFAULT NULL COMMENT '外键',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `teacher` */

insert  into `teacher`(`id`,`name`,`degree`,`mobile`,`school`,`hiredate`,`create_time`,`update_time`,`delete_time`,`is_delete`,`status`,`grade_id`) values (1,'朱老师','2','15705517878','中国科技大学',1420041600,1970,1502342345,NULL,1,1,5),(2,'李老师','1','13988995566','合肥工业大学',1466006400,2017,1502342345,NULL,1,1,2),(3,'洪老师','1','18955139988','安徽大学',1486310400,2017,1502342345,NULL,1,1,1),(5,'张老师','1','15805512377','安徽师范大学',1461254400,2017,1502342345,NULL,1,1,5),(6,'范老师','1','18976765533','安徽理工大学',1501948800,1502272302,1502342345,NULL,1,1,4);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(32) DEFAULT NULL COMMENT '用户密码',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `role` tinyint(2) unsigned DEFAULT NULL COMMENT '角色',
  `status` int(2) unsigned DEFAULT NULL COMMENT '状态1启用 0禁用',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '删除时间',
  `login_time` int(11) unsigned DEFAULT NULL COMMENT '登陆时间',
  `login_count` int(11) unsigned DEFAULT NULL COMMENT '登录次数',
  `is_delete` int(2) unsigned DEFAULT NULL COMMENT '是否删除 1是0否',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`password`,`email`,`role`,`status`,`create_time`,`update_time`,`delete_time`,`login_time`,`login_count`,`is_delete`) values (1,'admin','e10adc3949ba59abbe56e057f20f883e',NULL,1,1,1521849168,1521849168,NULL,NULL,NULL,NULL),(2,'peter','e10adc3949ba59abbe56e057f20f883e','peter@qq.com',0,1,1521849168,1521849168,NULL,NULL,NULL,NULL),(3,'zhangsan','01d7f40760960e7bd9443513f22ab9af','zhang@qq',0,1,NULL,NULL,NULL,NULL,NULL,NULL),(4,'lisi','dc3a8f1670d65bea69b7b65048a0ac40','lisi@qq.com',0,1,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
