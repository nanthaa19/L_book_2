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

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
