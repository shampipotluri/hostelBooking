/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - hm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`hm` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hm`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`username`,`password`) values ('admin','admin');

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `host` varchar(100) DEFAULT NULL,
  `hname` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `food` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `guest` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `book` */

insert  into `book`(`host`,`hname`,`type`,`food`,`price`,`location`,`guest`,`status`) values ('chotu','mummy','Girls','Nonveg','3000','ameerpet','moulali','accepted'),('chotu','mummy','Girls','Nonveg','3000','ameerpet','moulali','pending');

/*Table structure for table `fb` */

DROP TABLE IF EXISTS `fb`;

CREATE TABLE `fb` (
  `host` varchar(100) DEFAULT NULL,
  `hname` varchar(100) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `guest` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `fb` */

insert  into `fb`(`host`,`hname`,`rating`,`comment`,`guest`) values ('chotu','mummy','****','good','moulali');

/*Table structure for table `guest` */

DROP TABLE IF EXISTS `guest`;

CREATE TABLE `guest` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `guest` */

insert  into `guest`(`username`,`password`,`email`,`address`,`mobile`) values ('moulali','123','moulalicce225@gmail.com','15-8-424','08639966858');

/*Table structure for table `host` */

DROP TABLE IF EXISTS `host`;

CREATE TABLE `host` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `host` */

/*Table structure for table `hostel` */

DROP TABLE IF EXISTS `hostel`;

CREATE TABLE `hostel` (
  `username` varchar(100) DEFAULT NULL,
  `hname` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `food` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `cn` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hostel` */

insert  into `hostel`(`username`,`hname`,`type`,`food`,`price`,`location`,`cn`) values ('chotu','mummy','Girls','Nonveg','3000','ameerpet','BITS');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
