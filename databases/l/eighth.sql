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

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
