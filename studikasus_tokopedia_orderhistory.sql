-- MariaDB dump 10.17  Distrib 10.4.6-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: tokopedia_order_history
-- ------------------------------------------------------
-- Server version	10.4.6-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_details` (
  `id` varchar(100) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `product_weight` int(11) NOT NULL,
  `product_price` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_amount` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_orders_to_order_details` (`order_id`),
  CONSTRAINT `fk_orders_to_order_details` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES ('1','122','p1','basketball',2300,177900,2,355800),('2','122','p2','basketball warna',500,98900,1,98900),('3','122','p3','pentil pompa bola',54,9900,1,9900),('4','122','p4','pompa bola',198,43900,1,43900);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` varchar(100) NOT NULL,
  `seller_id` varchar(100) NOT NULL,
  `seller_name` varchar(100) NOT NULL,
  `buyer_id` varchar(100) NOT NULL,
  `buyer_name` varchar(100) NOT NULL,
  `shipping_name` varchar(100) NOT NULL,
  `shipping_address` varchar(500) NOT NULL,
  `shipping_phone` varchar(25) NOT NULL,
  `logistic_id` varchar(100) NOT NULL,
  `logistic_name` varchar(100) NOT NULL,
  `payment_method_id` varchar(100) NOT NULL,
  `payment_method_name` varchar(100) NOT NULL,
  `total_quantity` int(11) NOT NULL,
  `total_weight` int(11) NOT NULL,
  `total_product_amount` bigint(20) NOT NULL,
  `total_shipping_cost` bigint(20) NOT NULL,
  `total_shopping_amount` bigint(20) DEFAULT NULL,
  `service_charge` bigint(20) NOT NULL,
  `total_amount` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('122','seller id','galeri olahraga indonesia','buyer id','joko moro','budi nugraha','jalan raya xxx','08989898989','sicepat','sicepat gokil','debit online','debit online',5,5360,508500,60000,568500,1000,569500,'2024-04-08 12:15:01');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-11 19:33:53
