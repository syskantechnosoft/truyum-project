CREATE DATABASE  IF NOT EXISTS `truyum-data` 
USE `truyum-data`;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `ct_id` int NOT NULL,
  `ct_me_id` int NOT NULL,
  `ct_us_id` int NOT NULL,
  PRIMARY KEY (`ct_id`),
  KEY `ct_me_id_idx` (`ct_me_id`),
  KEY `ct_us_id_idx` (`ct_us_id`),
  CONSTRAINT `ct_me_id` FOREIGN KEY (`ct_me_id`) REFERENCES `menu_item` (`me_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ct_us_id` FOREIGN KEY (`ct_us_id`) REFERENCES `user` (`us_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Table structure for table `menu_item`
--

DROP TABLE IF EXISTS `menu_item`;

CREATE TABLE `menu_item` (
  `me_id` int NOT NULL,
  `me_name` varchar(100) NOT NULL,
  `me_price` decimal(8,2) NOT NULL,
  `me_active` varchar(3) NOT NULL,
  `me_date_of_launch` date NOT NULL,
  `me_category` varchar(45) NOT NULL,
  `me_free_delivery` varchar(3) NOT NULL,
  PRIMARY KEY (`me_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `ro_id` int NOT NULL,
  `ro_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `us_id` int NOT NULL,
  `us_name` varchar(60) NOT NULL,
  PRIMARY KEY (`us_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `ur_id` int NOT NULL,
  `ur_us_id` int NOT NULL,
  `us_ro_id` int NOT NULL,
  PRIMARY KEY (`ur_id`),
  KEY `ur_us_id` (`ur_us_id`),
  KEY `ur_ro_id_idx` (`us_ro_id`),
  CONSTRAINT `ur_ro_id` FOREIGN KEY (`us_ro_id`) REFERENCES `role` (`ro_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ur_us_id` FOREIGN KEY (`ur_us_id`) REFERENCES `user` (`us_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


