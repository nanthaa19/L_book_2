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

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
