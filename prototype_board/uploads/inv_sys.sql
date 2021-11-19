-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2021 at 09:26 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffee_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_id`, `customer_name`, `customer_address`) VALUES
(1, 'test customer', 'test address'),
(2, '100', ''),
(3, '100', ''),
(4, '100', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `generic_name` varchar(255) NOT NULL,
  `category_description` varchar(255) NOT NULL,
  `price` decimal(13,2) NOT NULL,
  `gross_price` decimal(13,2) NOT NULL,
  `is_vatable` int(11) NOT NULL,
  `is_discountable` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `brand_name`, `generic_name`, `category_description`, `price`, `gross_price`, `is_vatable`, `is_discountable`) VALUES
(6, 'D - ICED MOCHA', '', '', '40.00', '0.00', 0, 0),
(7, 'D - ICED COFFEE', '', '', '35.00', '0.00', 0, 1),
(8, 'D - ICED CHOCO', '', '', '35.00', '35.00', 0, 1),
(9, 'D - BREWED COFFEE', '', '', '15.00', '0.00', 0, 1),
(12, 'D - HOT CHOCO', ' ', ' ', '30.00', '30.00', 0, 1),
(13, 'D - BREWED WITH MILK', '', '', '0.00', '0.00', 0, 0),
(14, 'FRIES - BBQ', ' ', ' ', '40.00', '40.00', 0, 0),
(15, 'FRIES - CHEES', '  ', '  ', '40.00', '40.00', 0, 0),
(16, 'CHEESY GARLIC FRIES', ' ', ' ', '59.00', '59.00', 0, 0),
(17, 'CHEESY BACON FRIES', ' ', ' ', '59.00', '59.00', 0, 0),
(18, 'NACHO FRIES', ' ', ' ', '80.00', '80.00', 0, 0),
(19, 'PIZZA - HAM AND CHEESE', ' ', ' ', '69.00', '69.00', 0, 0),
(20, 'PIZZA - HAWAIIAN', ' ', ' ', '79.00', '79.00', 0, 0),
(21, 'PIZZA - ALL MEAT', ' ', ' ', '89.00', '89.00', 0, 0),
(22, 'RM - CORNED BEEF', '', '', '55.00', '55.00', 0, 0),
(23, 'RM - TOCINO', ' ', ' ', '55.00', '55.00', 0, 0),
(24, 'RM - BACON', ' ', ' ', '55.00', '55.00', 0, 0),
(25, 'RM - HUNGARIAN', ' ', ' ', '75.00', '75.00', 0, 1),
(26, 'PASTA - CARBONARA', ' ', ' ', '99.00', '99.00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales_order`
--

CREATE TABLE `tbl_sales_order` (
  `sales_order_id` int(255) NOT NULL,
  `receipt_no` varchar(200) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_tendered` decimal(12,2) NOT NULL,
  `is_discounted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sales_order`
--

INSERT INTO `tbl_sales_order` (`sales_order_id`, `receipt_no`, `customer_id`, `status`, `date_updated`, `date_added`, `user_id`, `cash_tendered`, `is_discounted`) VALUES
(1, '210531091858', 1, '1', '0000-00-00 00:00:00', '2021-05-31 00:00:00', 1, '270.00', 1),
(2, '', 0, '0', '0000-00-00 00:00:00', '2021-05-31 00:00:00', 0, '0.00', 0),
(3, '210531092115', 1, '1', '0000-00-00 00:00:00', '2021-05-31 00:00:00', 1, '2000.00', 0),
(4, '', 0, '0', '0000-00-00 00:00:00', '2021-06-01 00:00:00', 0, '0.00', 0),
(5, '210601111813', 1, '1', '0000-00-00 00:00:00', '2021-06-01 00:00:00', 1, '120.00', 0),
(6, '', 0, '0', '0000-00-00 00:00:00', '2021-06-01 00:00:00', 0, '0.00', 0),
(7, '', 0, '0', '0000-00-00 00:00:00', '2021-06-01 00:00:00', 0, '0.00', 0),
(8, '', 0, '0', '0000-00-00 00:00:00', '2021-06-01 00:00:00', 0, '0.00', 0),
(9, '', 0, '0', '0000-00-00 00:00:00', '2021-06-01 00:00:00', 0, '0.00', 0),
(10, '', 0, '0', '0000-00-00 00:00:00', '2021-06-01 00:00:00', 0, '0.00', 0),
(11, '', 0, '0', '0000-00-00 00:00:00', '2021-06-01 00:00:00', 0, '0.00', 0),
(12, '', 0, '0', '0000-00-00 00:00:00', '2021-06-01 00:00:00', 0, '0.00', 0),
(13, '', 0, '0', '0000-00-00 00:00:00', '2021-06-01 00:00:00', 0, '0.00', 0),
(14, '210601115814', 1, '1', '0000-00-00 00:00:00', '2021-06-01 00:00:00', 1, '50.00', 1),
(15, '210601120242', 2, '1', '0000-00-00 00:00:00', '2021-06-01 00:00:00', 1, '100.00', 1),
(16, '210601120255', 2, '1', '0000-00-00 00:00:00', '2021-06-01 00:00:00', 1, '100.00', 0),
(17, '210601120621', 1, '1', '0000-00-00 00:00:00', '2021-06-01 00:00:00', 1, '120.00', 1),
(18, '210602213514', 1, '1', '0000-00-00 00:00:00', '2021-06-02 00:00:00', 1, '50.00', 1),
(19, '210602213601', 1, '1', '0000-00-00 00:00:00', '2021-06-02 00:00:00', 1, '51.00', 0),
(20, '210602220751', 1, '1', '0000-00-00 00:00:00', '2021-06-02 00:00:00', 1, '120.00', 0),
(21, '210602221223', 1, '1', '0000-00-00 00:00:00', '2021-06-02 00:00:00', 1, '100.00', 1),
(22, '210602223225', 1, '1', '0000-00-00 00:00:00', '2021-06-02 00:00:00', 1, '120.00', 1),
(23, '210602224331', 1, '1', '0000-00-00 00:00:00', '2021-06-02 00:00:00', 1, '120.00', 0),
(24, '210607113114', 1, '1', '0000-00-00 00:00:00', '2021-06-07 00:00:00', 1, '70.00', 0),
(25, '', 0, '0', '0000-00-00 00:00:00', '2021-06-09 00:00:00', 0, '0.00', 0),
(26, '', 0, '0', '0000-00-00 00:00:00', '2021-06-09 00:00:00', 0, '0.00', 0),
(27, '', 0, '0', '0000-00-00 00:00:00', '2021-06-09 00:00:00', 0, '0.00', 0),
(28, '210609173346', 2, '1', '0000-00-00 00:00:00', '2021-06-09 00:00:00', 1, '150.00', 0),
(29, '210609173443', 1, '1', '0000-00-00 00:00:00', '2021-06-09 00:00:00', 1, '270.00', 0),
(30, '', 0, '0', '0000-00-00 00:00:00', '2021-06-14 00:00:00', 0, '0.00', 0),
(31, '210614151150', 1, '1', '0000-00-00 00:00:00', '2021-06-14 00:00:00', 1, '100.00', 0),
(32, '210616152202', 1, '1', '0000-00-00 00:00:00', '2021-06-16 00:00:00', 1, '160.00', 0),
(33, '210616153836', 1, '1', '0000-00-00 00:00:00', '2021-06-16 00:00:00', 1, '160.00', 0),
(34, '210616153909', 2, '1', '0000-00-00 00:00:00', '2021-06-16 00:00:00', 1, '200.00', 0),
(35, '210616154428', 1, '1', '0000-00-00 00:00:00', '2021-06-16 00:00:00', 1, '100.00', 0),
(36, '210810153537', 2, '1', '0000-00-00 00:00:00', '2021-08-10 00:00:00', 1, '75.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales_order_detail`
--

CREATE TABLE `tbl_sales_order_detail` (
  `sales_order_detail_id` int(255) NOT NULL,
  `sales_order_id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `stock_id` int(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `returned_quantity` int(11) NOT NULL,
  `selling_price` decimal(13,2) NOT NULL,
  `gross_price` decimal(13,2) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `status` varchar(10) NOT NULL,
  `discount` float(255,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sales_order_detail`
--

INSERT INTO `tbl_sales_order_detail` (`sales_order_detail_id`, `sales_order_id`, `product_id`, `stock_id`, `quantity`, `returned_quantity`, `selling_price`, `gross_price`, `date_added`, `date_updated`, `status`, `discount`) VALUES
(1, 1, 1, 16, 5, 2, '50.00', '57.00', '2021-05-31 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(2, 2, 1, 0, 33, 0, '50.00', '57.00', '2021-05-31 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(3, 3, 1, 16, 12, 0, '50.00', '57.00', '2021-05-31 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(4, 3, 1, 11, 20, 0, '0.00', '0.00', '2021-05-31 00:00:00', '0000-00-00 00:00:00', '1', 0.00),
(5, 4, 1, 0, 1, 0, '50.00', '57.00', '2021-06-01 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(6, 4, 2, 0, 1, 0, '5.00', '5.00', '2021-06-01 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(7, 5, 1, 16, 2, 0, '50.00', '57.00', '2021-06-01 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(8, 6, 1, 0, 2, 0, '50.00', '57.00', '2021-06-01 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(9, 7, 1, 0, 1, 0, '50.00', '57.00', '2021-06-01 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(10, 8, 1, 0, 1, 0, '50.00', '57.00', '2021-06-01 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(11, 9, 1, 0, 1, 0, '50.00', '57.00', '2021-06-01 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(12, 10, 1, 0, 1, 0, '50.00', '57.00', '2021-06-01 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(13, 11, 1, 0, 1, 0, '50.00', '57.00', '2021-06-01 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(14, 12, 1, 0, 1, 0, '50.00', '57.00', '2021-06-01 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(15, 13, 1, 0, 1, 0, '50.00', '57.00', '2021-06-01 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(16, 14, 1, 11, 1, 0, '50.00', '57.00', '2021-06-01 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(17, 15, 1, 11, 1, 0, '50.00', '57.00', '2021-06-01 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(18, 16, 1, 11, 1, 0, '50.00', '57.00', '2021-06-01 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(19, 17, 1, 11, 2, 0, '50.00', '57.00', '2021-06-01 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(20, 17, 2, 12, 2, 0, '5.00', '5.00', '2021-06-01 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(21, 18, 1, 18, 1, 0, '50.33', '57.00', '2021-06-02 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(22, 19, 1, 18, 1, 0, '50.33', '57.00', '2021-06-02 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(23, 20, 1, 18, 1, 0, '50.33', '57.00', '2021-06-02 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(24, 20, 2, 12, 1, 0, '5.00', '5.00', '2021-06-02 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(25, 20, 3, 17, 1, 0, '7.00', '8.00', '2021-06-02 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(26, 20, 5, 15, 1, 0, '55.00', '57.00', '2021-06-02 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(27, 21, 1, 18, 2, 0, '50.33', '57.00', '2021-06-02 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(28, 22, 1, 18, 1, 0, '50.33', '57.00', '2021-06-02 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(29, 22, 2, 12, 1, 0, '5.00', '5.00', '2021-06-02 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(30, 22, 3, 17, 1, 0, '7.00', '8.00', '2021-06-02 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(31, 22, 5, 15, 1, 0, '55.00', '57.00', '2021-06-02 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(32, 23, 1, 18, 1, 0, '50.33', '57.00', '2021-06-02 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(33, 23, 2, 12, 1, 0, '5.00', '5.00', '2021-06-02 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(34, 23, 3, 17, 1, 0, '7.00', '8.00', '2021-06-02 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(35, 23, 5, 15, 1, 0, '55.00', '57.00', '2021-06-02 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(36, 24, 2, 12, 1, 0, '5.00', '5.00', '2021-06-07 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(37, 24, 1, 18, 1, 0, '50.33', '57.00', '2021-06-07 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(38, 24, 3, 17, 1, 0, '7.00', '8.00', '2021-06-07 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(39, 25, 6, 0, 2, 0, '40.00', '0.00', '2021-06-09 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(40, 25, 7, 0, 2, 0, '30.00', '0.00', '2021-06-09 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(41, 25, 8, 0, 2, 0, '40.00', '0.00', '2021-06-09 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(46, 27, 6, 0, 1, 0, '40.00', '0.00', '2021-06-09 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(47, 27, 7, 0, 1, 0, '30.00', '0.00', '2021-06-09 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(48, 28, 10, 24, 2, 0, '10.00', '0.00', '2021-06-09 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(49, 28, 11, 23, 2, 0, '60.00', '0.00', '2021-06-09 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(50, 29, 6, 19, 2, 0, '40.00', '0.00', '2021-06-09 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(51, 29, 7, 20, 4, 0, '30.00', '0.00', '2021-06-09 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(52, 29, 10, 24, 1, 0, '10.00', '0.00', '2021-06-09 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(53, 29, 11, 23, 1, 0, '60.00', '0.00', '2021-06-09 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(54, 30, 6, 0, 1, 0, '40.00', '0.00', '2021-06-14 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(55, 31, 6, 19, 2, 0, '40.00', '0.00', '2021-06-14 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(56, 32, 6, 19, 2, 0, '40.00', '0.00', '2021-06-16 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(57, 32, 7, 20, 2, 0, '30.00', '0.00', '2021-06-16 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(58, 32, 9, 22, 1, 0, '20.00', '0.00', '2021-06-16 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(59, 33, 6, 19, 2, 0, '40.00', '0.00', '2021-06-16 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(60, 33, 7, 20, 2, 0, '30.00', '0.00', '2021-06-16 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(61, 34, 9, 22, 5, 0, '20.00', '0.00', '2021-06-16 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(62, 34, 10, 24, 4, 0, '10.00', '0.00', '2021-06-16 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(63, 34, 7, 20, 2, 0, '30.00', '0.00', '2021-06-16 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(64, 35, 6, 19, 1, 0, '40.00', '0.00', '2021-06-16 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(65, 35, 7, 20, 1, 0, '30.00', '0.00', '2021-06-16 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(66, 36, 6, 19, 1, 0, '40.00', '0.00', '2021-08-10 00:00:00', '0000-00-00 00:00:00', '0', 0.00),
(67, 36, 7, 20, 1, 0, '35.00', '0.00', '2021-08-10 00:00:00', '0000-00-00 00:00:00', '0', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stocks`
--

CREATE TABLE `tbl_stocks` (
  `stock_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `supplier_id` int(255) NOT NULL,
  `cost_price` decimal(12,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sold_quantity` int(11) NOT NULL,
  `returned_quantity` int(11) NOT NULL,
  `lot_no` varchar(255) NOT NULL,
  `expiry_date` date NOT NULL,
  `date_added` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_returned` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_stocks`
--

INSERT INTO `tbl_stocks` (`stock_id`, `product_id`, `supplier_id`, `cost_price`, `quantity`, `sold_quantity`, `returned_quantity`, `lot_no`, `expiry_date`, `date_added`, `date_updated`, `date_returned`) VALUES
(11, 1, 1, '5.00', 60, 25, 0, '55', '2021-06-30', '2021-05-18 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 2, 10, '10.00', 55, 6, 0, '455', '2021-05-21', '2021-05-18 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 3, 1, '24.00', 69, 0, 0, '124test', '2021-07-24', '2021-05-18 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 5, 1, '59.00', 59, 3, 0, 'test', '2021-05-28', '2021-05-20 00:00:00', '2021-05-20 00:00:00', '0000-00-00 00:00:00'),
(16, 1, 1, '22.00', 12, 12, 0, '123123', '2021-06-04', '2021-05-30 00:00:00', '2021-05-30 00:00:00', '0000-00-00 00:00:00'),
(17, 3, 10, '22.00', 5, 4, 0, '124132', '2021-05-01', '2021-05-30 00:00:00', '2021-05-30 00:00:00', '2021-05-30 00:00:00'),
(18, 1, 10, '22.00', 22, 8, 0, '223123trest', '2021-06-18', '2021-06-01 00:00:00', '2021-06-01 00:00:00', '2021-06-01 00:00:00'),
(19, 6, 1, '20.00', 100, 10, 0, '124124', '2027-11-17', '2021-06-09 00:00:00', '2021-06-09 00:00:00', '2021-06-09 00:00:00'),
(20, 7, 1, '14.00', 100, 12, 0, '14124', '2021-06-17', '2021-06-09 00:00:00', '2021-06-09 00:00:00', '2021-06-09 00:00:00'),
(21, 8, 1, '12.00', 100, 0, 0, '124124', '2021-06-24', '2021-06-09 00:00:00', '2021-06-09 00:00:00', '2021-06-09 00:00:00'),
(22, 9, 1, '1234.00', 100, 6, 0, '124', '2021-06-17', '2021-06-09 00:00:00', '2021-06-09 00:00:00', '2021-06-09 00:00:00'),
(23, 11, 1, '123.00', 100, 3, 0, '100', '2021-06-15', '2021-06-09 00:00:00', '2021-06-09 00:00:00', '2021-06-09 00:00:00'),
(24, 10, 1, '123.00', 100, 7, 0, '123123', '2021-06-22', '2021-06-09 00:00:00', '2021-06-09 00:00:00', '2021-06-09 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`supplier_id`, `supplier_name`) VALUES
(1, 'test supplier'),
(10, 'test supplier 1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `name`, `username`, `password`, `role`) VALUES
(1, 'Admin', 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 0),
(2, 'staff 1', 'a', '0cc175b9c0f1b6a831c399e269772661', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_sales_order`
--
ALTER TABLE `tbl_sales_order`
  ADD PRIMARY KEY (`sales_order_id`);

--
-- Indexes for table `tbl_sales_order_detail`
--
ALTER TABLE `tbl_sales_order_detail`
  ADD PRIMARY KEY (`sales_order_detail_id`);

--
-- Indexes for table `tbl_stocks`
--
ALTER TABLE `tbl_stocks`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD UNIQUE KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `tbl_sales_order`
--
ALTER TABLE `tbl_sales_order`
  MODIFY `sales_order_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `tbl_sales_order_detail`
--
ALTER TABLE `tbl_sales_order_detail`
  MODIFY `sales_order_detail_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `tbl_stocks`
--
ALTER TABLE `tbl_stocks`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
