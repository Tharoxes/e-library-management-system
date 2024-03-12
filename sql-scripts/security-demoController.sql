CREATE DATABASE  IF NOT EXISTS `e_library`;
USE `e_library`;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `_user`;

CREATE TABLE `_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

--
-- Data for table `employee`
--

INSERT INTO `_user` VALUES 
	(1,'Leslie','password1','leslie@luv2code.com'),
	(2,'Emma','password2','emma@luv2code.com');

CREATE TABLE `authorities` (
  `id` int NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `authorities4_idx_1` (`id`,`authority`),
  CONSTRAINT `authorities4_ibfk_1` FOREIGN KEY (`id`) REFERENCES `_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Inserting data for table `authorities`
--

INSERT INTO `authorities` 
VALUES 
(1,'ROLE_USER'),
(2,'ROLE_USER');