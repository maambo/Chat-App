/*
SQLyog Professional v13.1.1 (64 bit)
MySQL - 10.4.24-MariaDB : Database - chatapp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`chatapp` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `chatapp`;

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `incoming_msg_id` int(255) DEFAULT NULL,
  `outgoing_msg_id` int(255) DEFAULT NULL,
  `msg` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4;

/*Data for the table `messages` */

insert  into `messages`(`msg_id`,`incoming_msg_id`,`outgoing_msg_id`,`msg`) values 
(19,67925768,1501001314,'fhfh'),
(20,67925768,1501001314,'fhfh'),
(21,67925768,1501001314,'nb'),
(22,67925768,1501001314,'nb'),
(23,67925768,1501001314,'nb'),
(24,1372821363,1501001314,'nb'),
(25,1372821363,1501001314,'how are you'),
(26,1501001314,1372821363,'i am alright how were you'),
(27,1372821363,1501001314,'fds'),
(28,1372821363,1501001314,'fds'),
(29,1372821363,1501001314,'DFG'),
(30,1501001314,1372821363,'THATS GREAT'),
(31,1372821363,1501001314,'FEAWSF'),
(32,1372821363,1501001314,'FEAWSFDFD'),
(33,1372821363,1501001314,'FEAWSFDFD'),
(34,1372821363,1501001314,'FEAWSFDFD'),
(35,1372821363,1501001314,'FEAWSFDFD'),
(36,1372821363,1501001314,'FEAWSFDFD'),
(37,1372821363,1501001314,'FEAWSFDFD'),
(38,1501001314,1372821363,'THATS GREAT'),
(39,1501001314,1609923510,'hello'),
(40,1609923510,508979992,'hello munkuli'),
(41,508979992,1609923510,'yes this is chris'),
(42,1609923510,508979992,'hihui'),
(43,1609923510,508979992,'jhgjk'),
(44,1609923510,508979992,'jhgjk'),
(45,1609923510,508979992,'jhgjk'),
(46,1609923510,508979992,'jhgjk'),
(47,1609923510,508979992,'jhgjk'),
(48,1609923510,508979992,'jhgjk'),
(49,1609923510,508979992,'jhgjk'),
(50,1609923510,508979992,'jhgjk'),
(51,1609923510,508979992,'jhgjk'),
(52,1609923510,508979992,'jhgjk'),
(53,1609923510,508979992,'jhgjk'),
(54,1609923510,508979992,'jhgjk'),
(55,1609923510,508979992,'jhgjk'),
(56,1609923510,508979992,'h'),
(57,1609923510,508979992,'h'),
(58,1609923510,508979992,'sfj'),
(59,1609923510,508979992,'g'),
(60,1609923510,508979992,'ugui'),
(61,1609923510,508979992,'jhj'),
(62,1609923510,508979992,'ghhj'),
(63,1609923510,508979992,'fjh'),
(64,1609923510,508979992,'gj'),
(65,1609923510,508979992,'geeukdfjh'),
(66,1501001314,1214732409,'hello'),
(67,1214732409,508979992,'how are you'),
(68,508979992,1214732409,'i am alrit'),
(69,1214732409,508979992,'THATS GREAT'),
(70,1501001314,594618390,'hey'),
(71,1609923510,852976248,'how are you');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_id` int(200) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `img` varchar(400) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

/*Data for the table `users` */

insert  into `users`(`user_id`,`unique_id`,`fname`,`lname`,`email`,`password`,`img`,`status`) values 
(14,1501001314,'enest','mmambo','sdhfsk@gmial.com','wefsw','1654626859IMG-20220521-WA0005.jpg','Active now'),
(15,67925768,'enest','mine','sdhk@gmial.com','gfjh','1654626982IMG-20220521-WA0005.jpg','Active now'),
(16,1372821363,'mkck','mmambo','k@gmial.com','fasf','1654627245IMG-20220521-WA0012 (2).jpg','Active now'),
(17,597283093,'enest','mine','mkck@gmail.com','gfiugh','1654627362IMG-20220521-WA0012 (2).jpg','Active now'),
(18,1609923510,'munkuli','munkuli','mk@gmail.com','123','1654724187Zambia-transportation-map.jpg','Active now'),
(19,508979992,'chris','chits','ch@gmail.com','123','1654725170IMG-20220521-WA0005.jpg','Active now'),
(20,1214732409,'peter','munkuli','maambomunkuli21@gmail.com','123','16547697080033.jpg','Active now'),
(21,852976248,'uga','me','uga@gmail.com','890','1656272268div.jpg','Active now'),
(22,594618390,'maambo','munkuli','ml@gmail.com','123','1656272388Zambia-transportation-map.jpg','Offline now');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
