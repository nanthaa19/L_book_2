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

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
