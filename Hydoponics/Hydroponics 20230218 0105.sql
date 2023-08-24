-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	4.1.13-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema smartfarmerdvs
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ smartfarmerdvs;
USE smartfarmerdvs;

--
-- Table structure for table `smartfarmerdvs`.`category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `categoryname` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `smartfarmerdvs`.`category`
--

/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`categoryname`) VALUES 
 ('jasmin'),
 ('Decoration Flower'),
 ('rose'),
 ('marigold'),
 ('null'),
 ('lilly'),
 ('mallige');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


--
-- Table structure for table `smartfarmerdvs`.`crop`
--

DROP TABLE IF EXISTS `crop`;
CREATE TABLE `crop` (
  `filename` varchar(50) default NULL,
  `cropname` varchar(50) default NULL,
  `croptype` varchar(50) default NULL,
  `price` varchar(50) default NULL,
  `soil` varchar(50) default NULL,
  `id` int(11) NOT NULL auto_increment,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `cropname` (`cropname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smartfarmerdvs`.`crop`
--

/*!40000 ALTER TABLE `crop` DISABLE KEYS */;
INSERT INTO `crop` (`filename`,`cropname`,`croptype`,`price`,`soil`,`id`) VALUES 
 ('bin.png','wheat','foodgrains','1800','red and black dry soil',5),
 ('bg.jpg','paddy','cash','1000','red soil',4);
/*!40000 ALTER TABLE `crop` ENABLE KEYS */;


--
-- Table structure for table `smartfarmerdvs`.`farmer`
--

DROP TABLE IF EXISTS `farmer`;
CREATE TABLE `farmer` (
  `name` varchar(50) default NULL,
  `phone` varchar(50) default NULL,
  `gender` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `address` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smartfarmerdvs`.`farmer`
--

/*!40000 ALTER TABLE `farmer` DISABLE KEYS */;
INSERT INTO `farmer` (`name`,`phone`,`gender`,`email`,`address`,`password`,`id`) VALUES 
 ('ravi','99698588858','Male','ravishkumarkl@gmail.com','shimoga','ravi123',1),
 ('ram','9965858585','Male','ram@gmail.com','shimoga','ram123',8),
 ('ravi','1234567890','Female','ravi@gmail.com','shimoga','ravi123',9);
/*!40000 ALTER TABLE `farmer` ENABLE KEYS */;


--
-- Table structure for table `smartfarmerdvs`.`feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `name` varchar(50) default NULL,
  `place` varchar(50) default NULL,
  `feedback` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `smartfarmerdvs`.`feedback`
--

/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`name`,`place`,`feedback`) VALUES 
 ('ravi@gmail.com',NULL,'the college is good'),
 ('ravi','shimoga','nice shop to buy'),
 ('ravish','shimoga','nice website'),
 ('ram','shimoga','it helps me better');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


--
-- Table structure for table `smartfarmerdvs`.`labour`
--

DROP TABLE IF EXISTS `labour`;
CREATE TABLE `labour` (
  `name` varchar(50) default NULL,
  `phone` varchar(50) default NULL,
  `gender` varchar(50) default NULL,
  `address` text,
  UNIQUE KEY `phone` (`phone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smartfarmerdvs`.`labour`
--

/*!40000 ALTER TABLE `labour` DISABLE KEYS */;
INSERT INTO `labour` (`name`,`phone`,`gender`,`address`) VALUES 
 ('ramappa','6658585585','Male','shimoga');
/*!40000 ALTER TABLE `labour` ENABLE KEYS */;


--
-- Table structure for table `smartfarmerdvs`.`labs`
--

DROP TABLE IF EXISTS `labs`;
CREATE TABLE `labs` (
  `name` varchar(50) default NULL,
  `address` text,
  `phone` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `description` varchar(50) default NULL,
  `id` int(11) NOT NULL auto_increment,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smartfarmerdvs`.`labs`
--

/*!40000 ALTER TABLE `labs` DISABLE KEYS */;
INSERT INTO `labs` (`name`,`address`,`phone`,`email`,`description`,`id`) VALUES 
 ('agri lab','shimoga','9939393993','agribal@gmail.com','soil test done here',1),
 ('vidya labs','shimoga','9965858525','viyda@gmail.com','all soil testing',2);
/*!40000 ALTER TABLE `labs` ENABLE KEYS */;


--
-- Table structure for table `smartfarmerdvs`.`login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smartfarmerdvs`.`login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`username`,`password`) VALUES 
 ('admin','password');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Table structure for table `smartfarmerdvs`.`shops`
--

DROP TABLE IF EXISTS `shops`;
CREATE TABLE `shops` (
  `locationname` varchar(50) NOT NULL default '',
  `address` varchar(50) default NULL,
  `phoneno` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `description` text,
  `image` varchar(50) default NULL,
  `location` text,
  PRIMARY KEY  (`locationname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `smartfarmerdvs`.`shops`
--

/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
INSERT INTO `shops` (`locationname`,`address`,`phoneno`,`email`,`description`,`image`,`location`) VALUES 
 ('woodland','shimoga','9965582582','woodland@gmail.com','super lodge','bg.jpg','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3872.425601383707!2d75.57111291431339!3d13.933245796818042!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bbba8d7ee4f2c07%3A0x73fd93272d401feb!2sWoodlands%20Lodge!5e0!3m2!1sen!2sin!4v1659784216715!5m2!1sen!2sin\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
 ('sun rise','shimoga','9965825852','sunrise@gmail.com','nice to stay','view.jpg','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3872.3834691468996!2d75.56697251404923!3d13.935758290228597!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bbba8d6dacad6d3%3A0x6425ea60e66e1eed!2sHotel%20Surya%20Comforts!5e0!3m2!1sen!2sin!4v1659939697811!5m2!1sen!2sin\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
 ('manjunatha shop','shimoga','9933999393','manjunatha@gmail.com','good fertilzers shop','about.jpg','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15489.333681338163!2d75.53901120781248!3d13.938742300000005!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bbba8cb95d3cb07%3A0xb73e05e90ad87477!2sShimoga%20Traders!5e0!3m2!1sen!2sin!4v1660701144366!5m2!1sen!2sin\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>');
INSERT INTO `shops` (`locationname`,`address`,`phoneno`,`email`,`description`,`image`,`location`) VALUES 
 ('new shop','shimoga','9933999393','manjunatha@gmail.com','good fertilzers shop','about.jpg','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15489.333681338163!2d75.53901120781248!3d13.938742300000005!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bbba8cb95d3cb07%3A0xb73e05e90ad87477!2sShimoga%20Traders!5e0!3m2!1sen!2sin!4v1660701144366!5m2!1sen!2sin\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
 ('vidya traders','shimoga','9965858585','vidya@gmail.com','all fertilizers available','screenshot-homepage.jpg','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15488.80062832078!2d75.54757321966954!3d13.946684668771814!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bbbaf331e292601%3A0x981b3c10156071f9!2sVinoba%20Nagara%2C%20Shivamogga%2C%20Karnataka!5e0!3m2!1sen!2sin!4v1660821478966!5m2!1sen!2sin\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>');
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;


--
-- Table structure for table `smartfarmerdvs`.`subsidy`
--

DROP TABLE IF EXISTS `subsidy`;
CREATE TABLE `subsidy` (
  `cropname` varchar(50) default NULL,
  `scheme` varchar(50) default NULL,
  `amount` varchar(50) default NULL,
  `documents` varchar(50) default NULL,
  UNIQUE KEY `cropname` (`cropname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `smartfarmerdvs`.`subsidy`
--

/*!40000 ALTER TABLE `subsidy` DISABLE KEYS */;
INSERT INTO `subsidy` (`cropname`,`scheme`,`amount`,`documents`) VALUES 
 ('rose','Subsidy yojana','40000','Adhar car, pahani, crop details'),
 ('Decoration Flower','flower yojana','10000','crop details adhar card, pahani'),
 ('marigold','flower scheam','20000 per acer','adhar pahani ration card'),
 ('jasmin','rural scheam','20000','pahani, adhar and ration card');
/*!40000 ALTER TABLE `subsidy` ENABLE KEYS */;


--
-- Table structure for table `smartfarmerdvs`.`toolrequests`
--

DROP TABLE IF EXISTS `toolrequests`;
CREATE TABLE `toolrequests` (
  `toolname` varchar(50) default NULL,
  `toolid` varchar(50) default NULL,
  `vendernumber` varchar(50) default NULL,
  `farmernumber` varchar(50) default NULL,
  `status` varchar(50) default 'pending',
  `id` int(11) NOT NULL auto_increment,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smartfarmerdvs`.`toolrequests`
--

/*!40000 ALTER TABLE `toolrequests` DISABLE KEYS */;
INSERT INTO `toolrequests` (`toolname`,`toolid`,`vendernumber`,`farmernumber`,`status`,`id`) VALUES 
 ('cultivater','4','993399393','null','Accepted',2),
 ('cultivater','4','993399393','9965858585','Rejected',4),
 ('cultivater','4','993399393','9965858585','pending',5);
/*!40000 ALTER TABLE `toolrequests` ENABLE KEYS */;


--
-- Table structure for table `smartfarmerdvs`.`tools`
--

DROP TABLE IF EXISTS `tools`;
CREATE TABLE `tools` (
  `toolname` varchar(50) default NULL,
  `tooltype` varchar(50) default NULL,
  `price` varchar(50) default NULL,
  `image` varchar(50) NOT NULL default '0',
  `venderphone` varchar(50) NOT NULL default '0',
  `id` int(11) NOT NULL auto_increment,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smartfarmerdvs`.`tools`
--

/*!40000 ALTER TABLE `tools` DISABLE KEYS */;
INSERT INTO `tools` (`toolname`,`tooltype`,`price`,`image`,`venderphone`,`id`) VALUES 
 ('cultivater','agriculture tool','5000','offer2.png','993399393',4);
/*!40000 ALTER TABLE `tools` ENABLE KEYS */;


--
-- Table structure for table `smartfarmerdvs`.`vender`
--

DROP TABLE IF EXISTS `vender`;
CREATE TABLE `vender` (
  `name` varchar(50) default NULL,
  `phone` varchar(50) default NULL,
  `gender` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `address` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smartfarmerdvs`.`vender`
--

/*!40000 ALTER TABLE `vender` DISABLE KEYS */;
INSERT INTO `vender` (`name`,`phone`,`gender`,`email`,`address`,`password`,`id`) VALUES 
 ('vender','993399393','Male','vender@gmail.com','shimoga','vender123',1);
/*!40000 ALTER TABLE `vender` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
