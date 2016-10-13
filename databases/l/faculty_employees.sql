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

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
