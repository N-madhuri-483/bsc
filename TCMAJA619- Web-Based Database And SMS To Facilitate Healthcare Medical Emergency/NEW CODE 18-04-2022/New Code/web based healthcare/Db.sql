/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 6.0.11-alpha-community : Database - webdatabase
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`webdatabase` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `webdatabase`;

/*Table structure for table `feat` */

DROP TABLE IF EXISTS `feat`;

CREATE TABLE `feat` (
  `name` varchar(100) DEFAULT NULL,
  `descp` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `feat` */

insert  into `feat`(`name`,`descp`,`email`,`id`) values ('blood','all bllod groups available','apollo@gmail.com',1),('blood','all blood groups available','yas@gmail.com',2),('amubulance service','emergency services available','yas@gmail.com',3),('oxygen supply','differnt type of company cylinders available','yas@gmail.com',4),('bed booking','emergency bookings are available','apollo@gmail.com',5),('laboratory management','all type of lab test available','apollo@gmail.com',6);

/*Table structure for table `medical` */

DROP TABLE IF EXISTS `medical`;

CREATE TABLE `medical` (
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `rests` varchar(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `medical` */

insert  into `medical`(`name`,`password`,`email`,`address`,`mobile`,`id`,`rests`) values ('apollo','123','apollo@gmail.com','2-10','9052276429',1,'1'),('yasodha','123','yas@gmail.com','2-10','9704550659',2,'1'),('kimms','123','kim@gmail.com','2-10','8945612374',3,'0');

/*Table structure for table `patreg` */

DROP TABLE IF EXISTS `patreg`;

CREATE TABLE `patreg` (
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dateofbirth` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `patreg` */

insert  into `patreg`(`name`,`password`,`email`,`dateofbirth`,`gender`,`address`,`mobile`,`id`) values ('kk','123','kk@gmail.com','2022-02-23','male','2-10','9213456789',2),('jas','123','jas@gmail.com','2022-03-16','male','2-10','9213456788',6);

/*Table structure for table `reports` */

DROP TABLE IF EXISTS `reports`;

CREATE TABLE `reports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pname` varchar(100) DEFAULT NULL,
  `pmail` varchar(100) DEFAULT NULL,
  `pnumber` varchar(100) DEFAULT NULL,
  `service` text,
  `reason` text,
  `mcnum` varchar(50) DEFAULT NULL,
  `mcemail` varchar(100) DEFAULT NULL,
  `sentmsg` text,
  `datetime` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `reports` */

insert  into `reports`(`id`,`pname`,`pmail`,`pnumber`,`service`,`reason`,`mcnum`,`mcemail`,`sentmsg`,`datetime`) values (5,'admin','kk@gmail.com','9874563211','bed','fever','9052276429','apollo@gmail.com','Hi this is admin-9874563211. i need an emergency bed on your apollo because of fever.','2022-04-18 13:10:06');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
