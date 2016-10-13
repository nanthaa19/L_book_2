-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.12-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.5117
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for l
CREATE DATABASE IF NOT EXISTS `l` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `l`;

-- Dumping structure for table l.book
CREATE TABLE IF NOT EXISTS `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `book_id` int(11) NOT NULL,
  `episode_id` int(11) NOT NULL,
  `first` tinyint(4) NOT NULL,
  `second` tinyint(4) NOT NULL,
  `third` tinyint(4) NOT NULL,
  `fourth` tinyint(4) NOT NULL,
  `fifth` tinyint(4) NOT NULL,
  `sixth` tinyint(4) NOT NULL,
  `seventh` tinyint(4) NOT NULL,
  `eighth` tinyint(4) NOT NULL,
  `consolation` tinyint(4) NOT NULL,
  `creater_id` int(11) NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `FK_book_category` (`book_id`),
  KEY `FK_book_faculty_employees` (`creater_id`),
  CONSTRAINT `FK_book_category` FOREIGN KEY (`book_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_book_faculty_employees` FOREIGN KEY (`creater_id`) REFERENCES `faculty_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table l.book: ~0 rows (approximately)
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
/*!40000 ALTER TABLE `book` ENABLE KEYS */;

-- Dumping structure for table l.category
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `day` enum('1','2','3','4','5','6','7') DEFAULT NULL,
  `keyword` varchar(10) NOT NULL,
  `series` tinyint(4) DEFAULT NULL,
  `district` varchar(100) NOT NULL,
  `dateOfFirstRelease` date NOT NULL,
  `type` enum('Weekly','Special') NOT NULL,
  `creater_id` int(11) DEFAULT NULL,
  `entry_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_category_faculty_employees` (`creater_id`),
  CONSTRAINT `FK_category_faculty_employees` FOREIGN KEY (`creater_id`) REFERENCES `faculty_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table l.category: ~1 rows (approximately)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`, `name`, `day`, `keyword`, `series`, `district`, `dateOfFirstRelease`, `type`, `creater_id`, `entry_date`) VALUES
	(2, 'karunya', '1', 'KW', 5, 'trichy', '1970-01-01', 'Weekly', NULL, NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping structure for table l.districts
CREATE TABLE IF NOT EXISTS `districts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) NOT NULL DEFAULT '0',
  `dname` varchar(50) DEFAULT NULL,
  `headquarters` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table l.districts: ~14 rows (approximately)
/*!40000 ALTER TABLE `districts` DISABLE KEYS */;
INSERT INTO `districts` (`id`, `code`, `dname`, `headquarters`) VALUES
	(1, 'AL', 'Alappuzha', 'Alappuzha');
INSERT INTO `districts` (`id`, `code`, `dname`, `headquarters`) VALUES
	(2, 'ER', 'Ernakulam', 'Kakkanad');
INSERT INTO `districts` (`id`, `code`, `dname`, `headquarters`) VALUES
	(3, 'ID', 'Idukki', 'Painavu');
INSERT INTO `districts` (`id`, `code`, `dname`, `headquarters`) VALUES
	(4, 'KN', 'Kannur', 'Kannur');
INSERT INTO `districts` (`id`, `code`, `dname`, `headquarters`) VALUES
	(5, 'KS', 'Kasaragod', 'Kasaragod');
INSERT INTO `districts` (`id`, `code`, `dname`, `headquarters`) VALUES
	(6, 'KL', 'Kollam', 'Kollam');
INSERT INTO `districts` (`id`, `code`, `dname`, `headquarters`) VALUES
	(7, 'KT', 'Kottayam', 'Kottayam');
INSERT INTO `districts` (`id`, `code`, `dname`, `headquarters`) VALUES
	(8, 'KZ', 'Kozhikode', 'Kozhikode');
INSERT INTO `districts` (`id`, `code`, `dname`, `headquarters`) VALUES
	(9, 'MA', 'Malappuram', 'Malappuram');
INSERT INTO `districts` (`id`, `code`, `dname`, `headquarters`) VALUES
	(10, 'PL', 'Palakkad', 'Palakkad');
INSERT INTO `districts` (`id`, `code`, `dname`, `headquarters`) VALUES
	(11, 'PT', 'Pathanamthitta', 'Pathanamthitta');
INSERT INTO `districts` (`id`, `code`, `dname`, `headquarters`) VALUES
	(12, 'TV', 'Thiruvananthapuram', 'Thiruvananthapuram');
INSERT INTO `districts` (`id`, `code`, `dname`, `headquarters`) VALUES
	(13, 'TS', 'Thrissur', 'Thrissur');
INSERT INTO `districts` (`id`, `code`, `dname`, `headquarters`) VALUES
	(14, 'WA', 'Wayanad', 'Kalpetta');
/*!40000 ALTER TABLE `districts` ENABLE KEYS */;

-- Dumping structure for table l.eighth
CREATE TABLE IF NOT EXISTS `eighth` (
  `id_eig` int(11) NOT NULL DEFAULT '0',
  `bid_eig` int(11) DEFAULT NULL,
  `tseries_eig` varchar(10) DEFAULT NULL,
  `tcode_eig` varchar(20) DEFAULT NULL,
  `district_eig` varchar(255) DEFAULT NULL,
  `creater_id_eig` int(11) DEFAULT NULL,
  `entry_date_eig` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_eig`),
  KEY `FK_eighth_book` (`bid_eig`),
  KEY `FK_eighth_faculty_employees` (`creater_id_eig`),
  CONSTRAINT `FK_eighth_book` FOREIGN KEY (`bid_eig`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_eighth_faculty_employees` FOREIGN KEY (`creater_id_eig`) REFERENCES `faculty_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table l.eighth: ~0 rows (approximately)
/*!40000 ALTER TABLE `eighth` DISABLE KEYS */;
/*!40000 ALTER TABLE `eighth` ENABLE KEYS */;

-- Dumping structure for table l.faculty_employees
CREATE TABLE IF NOT EXISTS `faculty_employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_firstname` varchar(100) NOT NULL,
  `employee_lastname` varchar(100) NOT NULL,
  `employee_password` varchar(100) NOT NULL,
  `employee_email` varchar(100) NOT NULL,
  `employee_dob` datetime NOT NULL,
  `employee_designation` varchar(50) NOT NULL,
  `employee_creater` int(11) NOT NULL,
  `status` enum('alive','dead') NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_faculty_employees_faculty_employees` (`employee_creater`),
  CONSTRAINT `FK_faculty_employees_faculty_employees` FOREIGN KEY (`employee_creater`) REFERENCES `faculty_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table l.faculty_employees: ~0 rows (approximately)
/*!40000 ALTER TABLE `faculty_employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `faculty_employees` ENABLE KEYS */;

-- Dumping structure for table l.fifth
CREATE TABLE IF NOT EXISTS `fifth` (
  `id_fiv` int(11) NOT NULL AUTO_INCREMENT,
  `bid_fiv` int(11) NOT NULL,
  `tdigits_fiv` varchar(10) NOT NULL,
  `tkeyword_fiv` varchar(20) DEFAULT NULL,
  `tnumber_fiv` varchar(20) NOT NULL,
  `district_fiv` varchar(255) DEFAULT NULL,
  `creater_id_fiv` int(11) NOT NULL,
  `entry_date_fiv` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_fiv`),
  KEY `FK_fifth_book` (`bid_fiv`),
  KEY `FK_fifth_faculty_employees` (`creater_id_fiv`),
  CONSTRAINT `FK_fifth_book` FOREIGN KEY (`bid_fiv`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_fifth_faculty_employees` FOREIGN KEY (`creater_id_fiv`) REFERENCES `faculty_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table l.fifth: ~0 rows (approximately)
/*!40000 ALTER TABLE `fifth` DISABLE KEYS */;
/*!40000 ALTER TABLE `fifth` ENABLE KEYS */;

-- Dumping structure for table l.first
CREATE TABLE IF NOT EXISTS `first` (
  `id_fir` int(11) NOT NULL AUTO_INCREMENT,
  `bid_fir` int(11) NOT NULL COMMENT 'category id for T',
  `tdigits_fir` varchar(10) NOT NULL,
  `tkeyword_fir` varchar(10) DEFAULT NULL,
  `tnumber_fir` varchar(20) NOT NULL,
  `district_fir` varchar(255) DEFAULT NULL,
  `creater_id_fir` int(11) NOT NULL,
  `entry_date_fir` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_fir`),
  KEY `FK_first_book` (`bid_fir`),
  KEY `FK_first_faculty_employees` (`creater_id_fir`),
  CONSTRAINT `FK_first_book` FOREIGN KEY (`bid_fir`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_first_faculty_employees` FOREIGN KEY (`creater_id_fir`) REFERENCES `faculty_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table l.first: ~0 rows (approximately)
/*!40000 ALTER TABLE `first` DISABLE KEYS */;
/*!40000 ALTER TABLE `first` ENABLE KEYS */;

-- Dumping structure for table l.fourth
CREATE TABLE IF NOT EXISTS `fourth` (
  `id_fou` int(11) NOT NULL AUTO_INCREMENT,
  `bid_fou` int(11) NOT NULL,
  `tdigits_fou` varchar(10) NOT NULL,
  `tkeyword_fou` varchar(20) DEFAULT NULL,
  `tnumber_fou` varchar(20) NOT NULL,
  `district_fou` varchar(255) DEFAULT NULL,
  `creater_id_fou` int(11) NOT NULL,
  `entry_date_fou` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_fou`),
  KEY `FK_fourth_book` (`bid_fou`),
  KEY `FK_fourth_faculty_employees` (`creater_id_fou`),
  CONSTRAINT `FK_fourth_book` FOREIGN KEY (`bid_fou`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_fourth_faculty_employees` FOREIGN KEY (`creater_id_fou`) REFERENCES `faculty_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table l.fourth: ~0 rows (approximately)
/*!40000 ALTER TABLE `fourth` DISABLE KEYS */;
/*!40000 ALTER TABLE `fourth` ENABLE KEYS */;

-- Dumping structure for table l.second
CREATE TABLE IF NOT EXISTS `second` (
  `id_sec` int(11) NOT NULL AUTO_INCREMENT,
  `bid_sec` int(11) NOT NULL,
  `tdigits_sec` varchar(10) NOT NULL,
  `tkeyword_sec` varchar(20) DEFAULT NULL,
  `tnumber_sec` varchar(20) NOT NULL,
  `district_sec` varchar(255) DEFAULT NULL,
  `creater_id_sec` int(11) NOT NULL,
  `entry_date_sec` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_sec`),
  KEY `FK_second_book` (`bid_sec`),
  KEY `FK_second_faculty_employees` (`creater_id_sec`),
  CONSTRAINT `FK_second_book` FOREIGN KEY (`bid_sec`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_second_faculty_employees` FOREIGN KEY (`creater_id_sec`) REFERENCES `faculty_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table l.second: ~0 rows (approximately)
/*!40000 ALTER TABLE `second` DISABLE KEYS */;
/*!40000 ALTER TABLE `second` ENABLE KEYS */;

-- Dumping structure for table l.seventh
CREATE TABLE IF NOT EXISTS `seventh` (
  `id_sev` int(11) NOT NULL AUTO_INCREMENT,
  `bid_sev` int(11) NOT NULL,
  `tdigits_sev` varchar(10) NOT NULL,
  `tkeyword_sev` varchar(20) DEFAULT NULL,
  `tnumber_sev` varchar(20) NOT NULL,
  `district_sev` varchar(255) DEFAULT NULL,
  `creater_id_sev` int(11) NOT NULL,
  `entry_date_sev` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_sev`),
  KEY `FK_seventh_book` (`bid_sev`),
  KEY `FK_seventh_faculty_employees` (`creater_id_sev`),
  CONSTRAINT `FK_seventh_book` FOREIGN KEY (`bid_sev`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_seventh_faculty_employees` FOREIGN KEY (`creater_id_sev`) REFERENCES `faculty_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table l.seventh: ~0 rows (approximately)
/*!40000 ALTER TABLE `seventh` DISABLE KEYS */;
/*!40000 ALTER TABLE `seventh` ENABLE KEYS */;

-- Dumping structure for table l.sixth
CREATE TABLE IF NOT EXISTS `sixth` (
  `id_six` int(11) NOT NULL AUTO_INCREMENT,
  `bid_six` int(11) NOT NULL,
  `tdigits_six` varchar(10) NOT NULL,
  `tkeyword_six` varchar(20) DEFAULT NULL,
  `tnumber_six` varchar(20) NOT NULL,
  `district_six` varchar(255) DEFAULT NULL,
  `creater_id_six` int(11) NOT NULL,
  `entry_date_six` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_six`),
  KEY `FK_sixth_book` (`bid_six`),
  KEY `FK_sixth_faculty_employees` (`creater_id_six`),
  CONSTRAINT `FK_sixth_book` FOREIGN KEY (`bid_six`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_sixth_faculty_employees` FOREIGN KEY (`creater_id_six`) REFERENCES `faculty_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table l.sixth: ~0 rows (approximately)
/*!40000 ALTER TABLE `sixth` DISABLE KEYS */;
/*!40000 ALTER TABLE `sixth` ENABLE KEYS */;

-- Dumping structure for table l.third
CREATE TABLE IF NOT EXISTS `third` (
  `id_thi` int(11) NOT NULL AUTO_INCREMENT,
  `bid_thi` int(11) NOT NULL,
  `tdigits_thi` varchar(10) NOT NULL,
  `tkeyword_thi` varchar(50) DEFAULT NULL,
  `tnumber_thi` varchar(50) NOT NULL,
  `district_thi` varchar(255) DEFAULT NULL,
  `creater_id_thi` int(11) NOT NULL,
  `entry_date_thi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_thi`),
  KEY `FK_third_book` (`bid_thi`),
  KEY `FK_third_faculty_employees` (`creater_id_thi`),
  CONSTRAINT `FK_third_book` FOREIGN KEY (`bid_thi`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_third_faculty_employees` FOREIGN KEY (`creater_id_thi`) REFERENCES `faculty_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table l.third: ~0 rows (approximately)
/*!40000 ALTER TABLE `third` DISABLE KEYS */;
/*!40000 ALTER TABLE `third` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
