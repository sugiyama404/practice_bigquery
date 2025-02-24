-- -------------------------------------------------------------
-- TablePlus 6.0.8(562)
--
-- https://tableplus.com/
--
-- Database: mydb
-- Generation Time: 2025-02-23 13:39:11.9910
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `sales_data`;
CREATE TABLE `sales_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `sales_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `sales_data` (`id`, `product_name`, `quantity`, `price`, `sales_date`) VALUES
(1, 'Product A', 10, 15.99, '2025-02-01'),
(2, 'Product B', 20, 25.49, '2025-02-02'),
(3, 'Product C', 15, 35.99, '2025-02-03'),
(4, 'Product D', 5, 50.99, '2025-02-04'),
(5, 'Product E', 30, 12.49, '2025-02-05'),
(6, 'Product A', 12, 18.99, '2025-02-06'),
(7, 'Product B', 7, 22.49, '2025-02-07'),
(8, 'Product C', 18, 28.99, '2025-02-08'),
(9, 'Product D', 10, 55.99, '2025-02-09'),
(10, 'Product E', 25, 13.49, '2025-02-10'),
(11, 'Product A', 8, 16.49, '2025-02-11'),
(12, 'Product B', 14, 27.99, '2025-02-12'),
(13, 'Product C', 22, 30.49, '2025-02-13'),
(14, 'Product D', 9, 52.99, '2025-02-14'),
(15, 'Product E', 17, 14.49, '2025-02-15'),
(16, 'Product A', 6, 17.99, '2025-02-16'),
(17, 'Product B', 13, 26.99, '2025-02-17'),
(18, 'Product C', 11, 29.99, '2025-02-18'),
(19, 'Product D', 16, 54.49, '2025-02-19'),
(20, 'Product E', 20, 12.99, '2025-02-20');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;