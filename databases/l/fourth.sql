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

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
