/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for attendance_school
DROP DATABASE IF EXISTS `attendance_school`;
CREATE DATABASE IF NOT EXISTS `attendance_school` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `attendance_school`;

-- Dumping structure for table attendance_school.attendance
CREATE TABLE IF NOT EXISTS `attendance` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `class_id` int(3) NOT NULL,
  `student_id` int(4) NOT NULL,
  `date` date NOT NULL,
  `type_attendance_id` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_class` (`class_id`),
  KEY `id_alumno` (`student_id`),
  KEY `type_attendance_id` (`type_attendance_id`),
  CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`type_attendance_id`) REFERENCES `type_attendance` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `attendance_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;

-- Dumping data for table attendance_school.attendance: ~120 rows (approximately)
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` (`id`, `class_id`, `student_id`, `date`, `type_attendance_id`) VALUES
	(3, 1, 101, '2019-11-29', 2),
	(4, 1, 107, '2019-11-29', 1),
	(5, 1, 113, '2019-11-29', 1),
	(6, 1, 119, '2019-11-29', 2),
	(7, 1, 125, '2019-11-29', 2),
	(8, 1, 131, '2019-11-29', 1),
	(9, 1, 137, '2019-11-29', 1),
	(10, 1, 143, '2019-11-29', 1),
	(11, 1, 149, '2019-11-29', 1),
	(12, 1, 155, '2019-11-29', 1),
	(13, 1, 161, '2019-11-29', 1),
	(14, 1, 167, '2019-11-29', 1),
	(15, 1, 173, '2019-11-29', 1),
	(16, 1, 179, '2019-11-29', 1),
	(17, 1, 185, '2019-11-29', 1),
	(18, 1, 191, '2019-11-29', 1),
	(19, 1, 197, '2019-11-29', 1),
	(20, 1, 203, '2019-11-29', 1),
	(21, 1, 209, '2019-11-29', 1),
	(22, 1, 215, '2019-11-29', 1),
	(23, 2, 101, '2020-11-10', 2),
	(24, 2, 107, '2020-11-10', 1),
	(25, 2, 113, '2020-11-10', 3),
	(26, 2, 119, '2020-11-10', 2),
	(27, 2, 125, '2020-11-10', 2),
	(28, 2, 131, '2020-11-10', 1),
	(29, 2, 137, '2020-11-10', 1),
	(30, 2, 143, '2020-11-10', 1),
	(31, 2, 149, '2020-11-10', 3),
	(32, 2, 155, '2020-11-10', 1),
	(33, 2, 161, '2020-11-10', 1),
	(34, 2, 167, '2020-11-10', 1),
	(35, 2, 173, '2020-11-10', 1),
	(36, 2, 179, '2020-11-10', 1),
	(37, 2, 185, '2020-11-10', 1),
	(38, 2, 191, '2020-11-10', 1),
	(39, 2, 197, '2020-11-10', 1),
	(40, 2, 203, '2020-11-10', 1),
	(41, 2, 209, '2020-11-10', 1),
	(42, 2, 215, '2020-11-10', 1),
	(43, 1, 101, '2020-11-10', 2),
	(44, 1, 107, '2020-11-10', 1),
	(45, 1, 113, '2020-11-10', 3),
	(46, 1, 119, '2020-11-10', 2),
	(47, 1, 125, '2020-11-10', 2),
	(48, 1, 131, '2020-11-10', 1),
	(49, 1, 137, '2020-11-10', 1),
	(50, 1, 143, '2020-11-10', 1),
	(51, 1, 149, '2020-11-10', 1),
	(52, 1, 155, '2020-11-10', 1),
	(53, 1, 161, '2020-11-10', 1),
	(54, 1, 167, '2020-11-10', 1),
	(55, 1, 173, '2020-11-10', 1),
	(56, 1, 179, '2020-11-10', 1),
	(57, 1, 185, '2020-11-10', 1),
	(58, 1, 191, '2020-11-10', 1),
	(59, 1, 197, '2020-11-10', 1),
	(60, 1, 203, '2020-11-10', 1),
	(61, 1, 209, '2020-11-10', 1),
	(62, 1, 215, '2020-11-10', 1),
	(63, 2, 101, '2020-11-08', 1),
	(64, 2, 107, '2020-11-08', 1),
	(65, 2, 113, '2020-11-08', 1),
	(66, 2, 119, '2020-11-08', 1),
	(67, 2, 125, '2020-11-08', 1),
	(68, 2, 131, '2020-11-08', 1),
	(69, 2, 137, '2020-11-08', 1),
	(70, 2, 143, '2020-11-08', 1),
	(71, 2, 149, '2020-11-08', 1),
	(72, 2, 155, '2020-11-08', 1),
	(73, 2, 161, '2020-11-08', 1),
	(74, 2, 167, '2020-11-08', 1),
	(75, 2, 173, '2020-11-08', 1),
	(76, 2, 179, '2020-11-08', 1),
	(77, 2, 185, '2020-11-08', 1),
	(78, 2, 191, '2020-11-08', 1),
	(79, 2, 197, '2020-11-08', 1),
	(80, 2, 203, '2020-11-08', 1),
	(81, 2, 209, '2020-11-08', 1),
	(82, 2, 215, '2020-11-08', 1),
	(83, 1, 101, '2020-11-11', 2),
	(84, 1, 107, '2020-11-11', 1),
	(85, 1, 113, '2020-11-11', 1),
	(86, 1, 119, '2020-11-11', 1),
	(87, 1, 125, '2020-11-11', 2),
	(88, 1, 131, '2020-11-11', 1),
	(89, 1, 137, '2020-11-11', 1),
	(90, 1, 143, '2020-11-11', 1),
	(91, 1, 149, '2020-11-11', 1),
	(92, 1, 155, '2020-11-11', 1),
	(93, 1, 161, '2020-11-11', 1),
	(94, 1, 167, '2020-11-11', 1),
	(95, 1, 173, '2020-11-11', 1),
	(96, 1, 179, '2020-11-11', 1),
	(97, 1, 185, '2020-11-11', 1),
	(98, 1, 191, '2020-11-11', 1),
	(99, 1, 197, '2020-11-11', 1),
	(100, 1, 203, '2020-11-11', 1),
	(101, 1, 209, '2020-11-11', 1),
	(102, 1, 215, '2020-11-11', 1),
	(103, 1, 101, '2020-11-15', 1),
	(104, 1, 107, '2020-11-15', 1),
	(105, 1, 113, '2020-11-15', 1),
	(106, 1, 119, '2020-11-15', 1),
	(107, 1, 125, '2020-11-15', 2),
	(108, 1, 131, '2020-11-15', 1),
	(109, 1, 137, '2020-11-15', 1),
	(110, 1, 143, '2020-11-15', 1),
	(111, 1, 149, '2020-11-15', 1),
	(112, 1, 155, '2020-11-15', 1),
	(113, 1, 161, '2020-11-15', 1),
	(114, 1, 167, '2020-11-15', 1),
	(115, 1, 173, '2020-11-15', 1),
	(116, 1, 179, '2020-11-15', 1),
	(117, 1, 185, '2020-11-15', 1),
	(118, 1, 191, '2020-11-15', 1),
	(119, 1, 197, '2020-11-15', 1),
	(120, 1, 203, '2020-11-15', 1),
	(121, 1, 209, '2020-11-15', 1),
	(122, 1, 215, '2020-11-15', 1);
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;

-- Dumping structure for table attendance_school.class
CREATE TABLE IF NOT EXISTS `class` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `subject_id` int(3) NOT NULL,
  `teacher_id` int(4) NOT NULL,
  `hour` time NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_id` (`subject_id`),
  KEY `teacher_id` (`teacher_id`),
  CONSTRAINT `class_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `class_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table attendance_school.class: ~12 rows (approximately)
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` (`id`, `subject_id`, `teacher_id`, `hour`) VALUES
	(1, 1, 11, '07:00:00'),
	(2, 2, 11, '08:00:00'),
	(3, 3, 12, '07:00:00'),
	(4, 4, 12, '08:00:00'),
	(5, 5, 13, '07:00:00'),
	(6, 6, 13, '08:00:00'),
	(7, 7, 14, '07:00:00'),
	(8, 8, 14, '08:00:00'),
	(9, 9, 15, '07:00:00'),
	(10, 10, 15, '08:00:00'),
	(11, 11, 16, '07:00:00'),
	(12, 12, 16, '08:00:00');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;


-- Dumping data for table attendance_school.login_attemps: ~84 rows (approximately)
/*!40000 ALTER TABLE `login_attemps` DISABLE KEYS */;

-- Dumping structure for table attendance_school.logouts
CREATE TABLE IF NOT EXISTS `logouts` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `user_id` int(3) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `logouts_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table attendance_school.logouts: ~5 rows (approximately)
/*!40000 ALTER TABLE `logouts` DISABLE KEYS */;
INSERT INTO `logouts` (`id`, `user_id`, `date`) VALUES
	(1, 1, '2019-11-29 08:57:35'),
	(2, 1, '2019-11-29 09:12:51'),
	(3, 11, '2019-11-29 09:28:54'),
	(4, 1, '2019-11-29 09:43:13'),
	(5, 1, '2019-11-29 09:53:57'),
	(6, 1, '2020-11-11 13:44:10'),
	(7, 101, '2020-11-11 13:44:21'),
	(8, 101, '2020-11-11 13:44:33'),
	(9, 16, '2020-11-11 13:45:10'),
	(10, 11, '2020-11-11 13:46:19');
/*!40000 ALTER TABLE `logouts` ENABLE KEYS */;

-- Dumping structure for table attendance_school.student_class
CREATE TABLE IF NOT EXISTS `student_class` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `student_id` int(4) NOT NULL,
  `class_id` int(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`student_id`),
  KEY `id_class` (`class_id`),
  CONSTRAINT `student_class_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student_class_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=latin1;

-- Dumping data for table attendance_school.student_class: ~240 rows (approximately)
/*!40000 ALTER TABLE `student_class` DISABLE KEYS */;
INSERT INTO `student_class` (`id`, `student_id`, `class_id`) VALUES
	(1, 101, 1),
	(2, 102, 3),
	(3, 103, 5),
	(4, 104, 7),
	(5, 105, 9),
	(6, 106, 11),
	(7, 107, 1),
	(8, 108, 3),
	(9, 109, 5),
	(10, 110, 7),
	(11, 111, 9),
	(12, 112, 11),
	(13, 113, 1),
	(14, 114, 3),
	(15, 115, 5),
	(16, 116, 7),
	(17, 117, 9),
	(18, 118, 11),
	(19, 119, 1),
	(20, 120, 3),
	(21, 121, 5),
	(22, 122, 7),
	(23, 123, 9),
	(24, 124, 11),
	(25, 125, 1),
	(26, 126, 3),
	(27, 127, 5),
	(28, 128, 7),
	(29, 129, 9),
	(30, 130, 11),
	(31, 131, 1),
	(32, 132, 3),
	(33, 133, 5),
	(34, 134, 7),
	(35, 135, 9),
	(36, 136, 11),
	(37, 137, 1),
	(38, 138, 3),
	(39, 139, 5),
	(40, 140, 7),
	(41, 141, 9),
	(42, 142, 11),
	(43, 143, 1),
	(44, 144, 3),
	(45, 145, 5),
	(46, 146, 7),
	(47, 147, 9),
	(48, 148, 11),
	(49, 149, 1),
	(50, 150, 3),
	(51, 151, 5),
	(52, 152, 7),
	(53, 153, 9),
	(54, 154, 11),
	(55, 155, 1),
	(56, 156, 3),
	(57, 157, 5),
	(58, 158, 7),
	(59, 159, 9),
	(60, 160, 11),
	(61, 161, 1),
	(62, 162, 3),
	(63, 163, 5),
	(64, 164, 7),
	(65, 165, 9),
	(66, 166, 11),
	(67, 167, 1),
	(68, 168, 3),
	(69, 169, 5),
	(70, 170, 7),
	(71, 171, 9),
	(72, 172, 11),
	(73, 173, 1),
	(74, 174, 3),
	(75, 175, 5),
	(76, 176, 7),
	(77, 177, 9),
	(78, 178, 11),
	(79, 179, 1),
	(80, 180, 3),
	(81, 181, 5),
	(82, 182, 7),
	(83, 183, 9),
	(84, 184, 11),
	(85, 185, 1),
	(86, 186, 3),
	(87, 187, 5),
	(88, 188, 7),
	(89, 189, 9),
	(90, 190, 11),
	(91, 191, 1),
	(92, 192, 3),
	(93, 193, 5),
	(94, 194, 7),
	(95, 195, 9),
	(96, 196, 11),
	(97, 197, 1),
	(98, 198, 3),
	(99, 199, 5),
	(100, 200, 7),
	(101, 201, 9),
	(102, 202, 11),
	(103, 203, 1),
	(104, 204, 3),
	(105, 205, 5),
	(106, 206, 7),
	(107, 207, 9),
	(108, 208, 11),
	(109, 209, 1),
	(110, 210, 3),
	(111, 211, 5),
	(112, 212, 7),
	(113, 213, 9),
	(114, 214, 11),
	(115, 215, 1),
	(116, 216, 3),
	(117, 217, 5),
	(118, 218, 7),
	(119, 219, 9),
	(120, 220, 11),
	(121, 101, 2),
	(122, 102, 4),
	(123, 103, 6),
	(124, 104, 8),
	(125, 105, 10),
	(126, 106, 12),
	(127, 107, 2),
	(128, 108, 4),
	(129, 109, 6),
	(130, 110, 8),
	(131, 111, 10),
	(132, 112, 12),
	(133, 113, 2),
	(134, 114, 4),
	(135, 115, 6),
	(136, 116, 8),
	(137, 117, 10),
	(138, 118, 12),
	(139, 119, 2),
	(140, 120, 4),
	(141, 121, 6),
	(142, 122, 8),
	(143, 123, 10),
	(144, 124, 12),
	(145, 125, 2),
	(146, 126, 4),
	(147, 127, 6),
	(148, 128, 8),
	(149, 129, 10),
	(150, 130, 12),
	(151, 131, 2),
	(152, 132, 4),
	(153, 133, 6),
	(154, 134, 8),
	(155, 135, 10),
	(156, 136, 12),
	(157, 137, 2),
	(158, 138, 4),
	(159, 139, 6),
	(160, 140, 8),
	(161, 141, 10),
	(162, 142, 12),
	(163, 143, 2),
	(164, 144, 4),
	(165, 145, 6),
	(166, 146, 8),
	(167, 147, 10),
	(168, 148, 12),
	(169, 149, 2),
	(170, 150, 4),
	(171, 151, 6),
	(172, 152, 8),
	(173, 153, 10),
	(174, 154, 12),
	(175, 155, 2),
	(176, 156, 4),
	(177, 157, 6),
	(178, 158, 8),
	(179, 159, 10),
	(180, 160, 12),
	(181, 161, 2),
	(182, 162, 4),
	(183, 163, 6),
	(184, 164, 8),
	(185, 165, 10),
	(186, 166, 12),
	(187, 167, 2),
	(188, 168, 4),
	(189, 169, 6),
	(190, 170, 8),
	(191, 171, 10),
	(192, 172, 12),
	(193, 173, 2),
	(194, 174, 4),
	(195, 175, 6),
	(196, 176, 8),
	(197, 177, 10),
	(198, 178, 12),
	(199, 179, 2),
	(200, 180, 4),
	(201, 181, 6),
	(202, 182, 8),
	(203, 183, 10),
	(204, 184, 12),
	(205, 185, 2),
	(206, 186, 4),
	(207, 187, 6),
	(208, 188, 8),
	(209, 189, 10),
	(210, 190, 12),
	(211, 191, 2),
	(212, 192, 4),
	(213, 193, 6),
	(214, 194, 8),
	(215, 195, 10),
	(216, 196, 12),
	(217, 197, 2),
	(218, 198, 4),
	(219, 199, 6),
	(220, 200, 8),
	(221, 201, 10),
	(222, 202, 12),
	(223, 203, 2),
	(224, 204, 4),
	(225, 205, 6),
	(226, 206, 8),
	(227, 207, 10),
	(228, 208, 12),
	(229, 209, 2),
	(230, 210, 4),
	(231, 211, 6),
	(232, 212, 8),
	(233, 213, 10),
	(234, 214, 12),
	(235, 215, 2),
	(236, 216, 4),
	(237, 217, 6),
	(238, 218, 8),
	(239, 219, 10),
	(240, 220, 12);
/*!40000 ALTER TABLE `student_class` ENABLE KEYS */;

-- Dumping structure for table attendance_school.subjects

-- Dumping data for table attendance_school.subjects: ~12 rows (approximately)
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;

ng data for table attendance_school.type_attendance: ~4 rows (approximately)
/*!40000 ALTER TABLE `type_attendance` DISABLE KEYS */;

g data for table attendance_school.type_user: ~3 rows (approximately)

-- Dumping structure for table attendance_school.users

-- Dumping data for table attendance_school.users: ~127 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
