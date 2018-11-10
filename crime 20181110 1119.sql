-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.90-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema crime
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ crime;
USE crime;

--
-- Table structure for table `crime`.`indimg`
--

DROP TABLE IF EXISTS `indimg`;
CREATE TABLE `indimg` (
  `imgid` int(11) NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  `indid` int(11) default NULL,
  PRIMARY KEY  (`imgid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crime`.`indimg`
--

/*!40000 ALTER TABLE `indimg` DISABLE KEYS */;
INSERT INTO `indimg` (`imgid`,`name`,`indid`) VALUES 
 (1,'703951618011.jpg',NULL),
 (2,'3297308(2) Lecture 16 Integrity Constraints in DBMS Hindi - YouTube.MKV',NULL),
 (3,'1387178Screenshot (45).png',1);
/*!40000 ALTER TABLE `indimg` ENABLE KEYS */;


--
-- Table structure for table `crime`.`individualdata`
--

DROP TABLE IF EXISTS `individualdata`;
CREATE TABLE `individualdata` (
  `id` int(11) NOT NULL auto_increment,
  `subject` varchar(50) default NULL,
  `adhar` varchar(5000) default NULL,
  `location` varchar(90) default NULL,
  `district` varchar(40) default NULL,
  `policestation` varchar(50) default NULL,
  `country` varchar(20) default NULL,
  `discrip` varchar(400) default NULL,
  `suspect` varchar(100) default NULL,
  `datetime` varchar(50) default NULL,
  `user` varchar(30) default NULL,
  `type` varchar(30) default NULL,
  `email` varchar(90) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crime`.`individualdata`
--

/*!40000 ALTER TABLE `individualdata` DISABLE KEYS */;
INSERT INTO `individualdata` (`id`,`subject`,`adhar`,`location`,`district`,`policestation`,`country`,`discrip`,`suspect`,`datetime`,`user`,`type`,`email`) VALUES 
 (1,'Murder','4545443434344','kapoorthala lucknow','lucknow','kapoorthala police station','australia','kgyujuyguy','yufuydfufguy','2018/08/06 23:54:54','sachin','individual','sachin1995yadav@gmail.com'),
 (3,'Theft?','4545443434344','Gomtinagar','lucknow','Gomtinagar police station','australia','jhgyugyujdyuw','gieugtuyguyw','2018/08/07 17:15:32','zak','individual','99zakariya@gmail.com');
/*!40000 ALTER TABLE `individualdata` ENABLE KEYS */;


--
-- Table structure for table `crime`.`login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `pass` varchar(30) default NULL,
  `user` varchar(30) default NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY  (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crime`.`login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`pass`,`user`,`email`) VALUES 
 ('zak','zak','99zakariya@gmail.com'),
 ('admin','admin','admin@gmail.com'),
 ('1234','sachin','sachin1995yadav@gmail.com');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Table structure for table `crime`.`message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `mid` int(11) NOT NULL auto_increment,
  `sender` varchar(90) NOT NULL,
  `msg` varchar(10000) default NULL,
  `date` varchar(100) default NULL,
  `R_id` int(11) default NULL,
  PRIMARY KEY  (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crime`.`message`
--

/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` (`mid`,`sender`,`msg`,`date`,`R_id`) VALUES 
 (21,'sachin','hello sir...','2018/08/06 15:43:54',NULL),
 (22,'admin','hii there...','2018/08/06 15:45:54',NULL),
 (23,'sachin','what\'s up...','2018/08/06 18:10:49',NULL),
 (25,'admin','hello..','2018/08/07 17:43:45',1),
 (26,'sachin','hii there..','2018/08/13 18:29:03',1),
 (27,'admin','<script>alert(\'i am in\');</script>hello','2018/10/12 12:21:41',1),
 (28,'admin','<script>alert(\'i am in\');</script>hello','2018/10/12 12:21:56',1),
 (29,'admin','<script>alert(\'i am in\');</script>hello','2018/10/12 12:22:01',1);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;


--
-- Table structure for table `crime`.`rating`
--

DROP TABLE IF EXISTS `rating`;
CREATE TABLE `rating` (
  `user` varchar(50) default NULL,
  `rate` double(5,1) default NULL,
  `comments` varchar(500) default NULL,
  `rateid` int(11) NOT NULL auto_increment,
  `email` varchar(49) default NULL,
  PRIMARY KEY  (`rateid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crime`.`rating`
--

/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` (`user`,`rate`,`comments`,`rateid`,`email`) VALUES 
 ('sachin',4.9,'awesome..',3,'sachin1995yadav@gmail.com');
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;


--
-- Table structure for table `crime`.`signup`
--

DROP TABLE IF EXISTS `signup`;
CREATE TABLE `signup` (
  `name` varchar(40) default NULL,
  `email` varchar(40) default NULL,
  `pass` varchar(30) default NULL,
  `passr` varchar(30) default NULL,
  `state` varchar(30) default NULL,
  `country` varchar(30) default NULL,
  `mobile` bigint(20) default NULL,
  `gender` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crime`.`signup`
--

/*!40000 ALTER TABLE `signup` DISABLE KEYS */;
INSERT INTO `signup` (`name`,`email`,`pass`,`passr`,`state`,`country`,`mobile`,`gender`) VALUES 
 ('sachin','sachin1995yadav@gmail.com','1234','1234','up','india',1245783698,'Male'),
 ('zak','99zakariya@gmail.com','zak','zak','up','india',9999999999,'Male');
/*!40000 ALTER TABLE `signup` ENABLE KEYS */;


--
-- Procedure `crime`.`emailIs`
--

DROP PROCEDURE IF EXISTS `emailIs`;
DELIMITER %%;
CREATE DEFINER=`root`@`localhost` PROCEDURE `emailIs`(IN user varchar(300))
begin
select * from login where user=user;
end%%
DELIMITER ;%%

--
-- Procedure `crime`.`retr`
--

DROP PROCEDURE IF EXISTS `retr`;
DELIMITER %%;
CREATE DEFINER=`root`@`localhost` PROCEDURE `retr`(IN user varchar(255))
begin
select * from login where user=user;
end%%
DELIMITER ;%%

--
-- Procedure `crime`.`selectemail`
--

DROP PROCEDURE IF EXISTS `selectemail`;
DELIMITER %%;
CREATE DEFINER=`root`@`localhost` PROCEDURE `selectemail`(IN user varchar(233))
BEGIN
SELECT * from login WHERE user=user;
END%%
DELIMITER ;%%

--
-- Procedure `crime`.`simple`
--

DROP PROCEDURE IF EXISTS `simple`;
DELIMITER %%;
CREATE DEFINER=`root`@`localhost` PROCEDURE `simple`(in user varchar(100))
begin
select * from login where user=user;
end%%
DELIMITER ;%%
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
