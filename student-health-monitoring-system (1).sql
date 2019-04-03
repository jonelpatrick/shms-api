-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2019 at 07:47 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `student-health-monitoring-system`
--

-- --------------------------------------------------------

--
-- Table structure for table `boys_growth_table`
--

CREATE TABLE IF NOT EXISTS `boys_growth_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) NOT NULL,
  `severely_underweight` float NOT NULL,
  `underweight_from` float NOT NULL,
  `underweight_to` float NOT NULL,
  `normal_from` float NOT NULL,
  `normal_to` float NOT NULL,
  `overweight` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `boys_growth_table`
--

INSERT INTO `boys_growth_table` (`id`, `age`, `severely_underweight`, `underweight_from`, `underweight_to`, `normal_from`, `normal_to`, `overweight`) VALUES
(1, 0, 2.1, 2.2, 2.4, 2.5, 4.4, 4.5),
(2, 1, 2.9, 3, 3.3, 3.4, 5.8, 5.9),
(3, 2, 3.8, 3.9, 4.2, 4.3, 7.1, 7.2),
(4, 3, 4.4, 4.5, 4.9, 5, 8, 8.1),
(5, 4, 4.9, 5, 5.5, 5.6, 8.7, 8.8),
(6, 5, 5.3, 5.4, 5.9, 6, 9.3, 9.4),
(7, 6, 5.7, 5.8, 6.3, 6.4, 9.8, 9.9),
(8, 7, 5.9, 6, 6.6, 6.7, 10.3, 10.4),
(9, 8, 6.2, 6.3, 6.8, 6.9, 10.7, 10.8),
(10, 9, 6.4, 6.5, 7, 7.1, 11, 11.1),
(11, 10, 6.6, 6.7, 7.3, 7.4, 11.4, 11.5),
(12, 11, 6.8, 6.9, 7.5, 7.6, 11.7, 11.8),
(13, 12, 6.9, 7, 7.6, 7.7, 12, 12.1);

-- --------------------------------------------------------

--
-- Table structure for table `girls_growth_table`
--

CREATE TABLE IF NOT EXISTS `girls_growth_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) NOT NULL,
  `severely_underweight` float NOT NULL,
  `underweight_from` float NOT NULL,
  `underweight_to` float NOT NULL,
  `normal_from` float NOT NULL,
  `normal_to` float NOT NULL,
  `overweight` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `girls_growth_table`
--

INSERT INTO `girls_growth_table` (`id`, `age`, `severely_underweight`, `underweight_from`, `underweight_to`, `normal_from`, `normal_to`, `overweight`) VALUES
(1, 0, 2, 2.1, 2.3, 2.4, 4.2, 4.3),
(2, 1, 2.7, 2.8, 3.1, 3.2, 5.5, 5.6),
(3, 2, 3.4, 3.5, 3.8, 3.9, 6.6, 6.7),
(4, 3, 4, 4.1, 4.4, 4.5, 7.5, 7.6),
(5, 4, 4.4, 4.5, 4.9, 5, 8.2, 8.3),
(6, 5, 4.8, 4.9, 5.3, 5.4, 8.8, 8.9),
(7, 6, 5.1, 5.2, 5.6, 5.7, 9.3, 9.4),
(8, 7, 5.3, 5.4, 5.9, 6, 9.8, 9.9),
(9, 8, 5.6, 5.7, 6.2, 6.3, 10.2, 10.3),
(10, 9, 5.8, 5.9, 6.4, 6.5, 10.5, 10.6),
(11, 10, 5.9, 6, 6.6, 6.7, 10.9, 11),
(12, 11, 6.1, 6.2, 6.8, 6.9, 11.2, 11.3),
(13, 12, 6.3, 6.4, 6.9, 7, 11.5, 11.6);

-- --------------------------------------------------------

--
-- Table structure for table `marketplace`
--

CREATE TABLE IF NOT EXISTS `marketplace` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `ing_brand` varchar(250) NOT NULL,
  `price` float NOT NULL,
  `in_unit` varchar(255) NOT NULL,
  `ing_section` varchar(255) NOT NULL,
  `ing_category` varchar(255) NOT NULL,
  `date_modified` date NOT NULL,
  `deleted` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1648 ;

--
-- Dumping data for table `marketplace`
--

INSERT INTO `marketplace` (`id`, `name`, `ing_brand`, `price`, `in_unit`, `ing_section`, `ing_category`, `date_modified`, `deleted`) VALUES
(1, 'Karneng baboy', 'No Brand', 180, 'Kilo', 'Meat', 'Pig', '2019-01-04', 0),
(2, 'Shrimp', 'No Brand', 400, 'Kilo', 'Seafoods', 'Seafoods', '2019-01-18', 0),
(4, 'Kalabasa', 'No Brand', 50, 'Kilo', 'Vegetables', 'Vegetables', '2019-01-04', 0),
(5, 'Cow Meat', 'No Brand', 300, 'Kilo', 'Meat', 'Cow', '2019-01-04', 0),
(6, 'Mango', 'No Brand', 26.52, 'pc', 'Fruits', 'Fruits', '2019-01-14', 0),
(1497, '555', 'No Brand', 500, '155g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1498, '555 Bonus Pack', 'No Brand', 15.5, '155g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1499, 'Atami Green', 'No Brand', 14.4, '155g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1500, 'Family Budget Pack Plain', 'No Brand', 13.25, '130g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1501, 'Family Bonus Pack Plain', 'No Brand', 16.5, '155g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1502, 'Family Premium Plain', 'No Brand', 16.75, '155g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1503, 'Family Regular Pack Plain', 'No Brand', 16.5, '155g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1504, 'Hakata (Easy Open)', 'No Brand', 16.15, '155g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1505, 'Hakone Regular', 'No Brand', 13.4, '155g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1506, 'King Cup Non-Easy Open', 'No Brand', 15.75, '155g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1507, 'Ligo (Easy Open) - Luzon', 'No Brand', 17.5, '155g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1508, 'Ligo (Easy Open) - VizMin', 'No Brand', 17.6, '155g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1509, 'Lucky 7', 'No Brand', 15.5, '155g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1510, 'Master Bonus Pack', 'No Brand', 16.25, '155g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1511, 'Master Green', 'No Brand', 16.75, '155g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1512, 'Mega (Easy Open)', 'No Brand', 17, '155g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1513, 'Mikado', 'No Brand', 14.4, '155g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1514, 'Rose Bowl', 'No Brand', 16.4, '155g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1515, 'Saba', 'No Brand', 15.8, '155g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1516, 'Toyo Green', 'No Brand', 15.5, '155g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1517, 'Toyo Green Easy Open', 'No Brand', 16, '155g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1518, 'Young’s Town (Easy Open)', 'No Brand', 16.5, '155g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1519, 'Young’s Town Bonus', 'No Brand', 13.25, '155g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1520, 'Young’s Town Premium', 'No Brand', 16, '155g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1521, 'PROCESSED MILK', 'No Brand', 0, '', 'Others', 'Not Applicable', '2019-03-05', 0),
(1522, 'CONDENSED MILK', 'No Brand', 0, '', 'Others', 'Not Applicable', '2019-03-05', 0),
(1523, 'Alaska Sweetened Filled Milk', 'No Brand', 38.5, '168mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1524, 'Alaska Sweetened Filled Milk (Tetra Pack)', 'No Brand', 49, '250mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1525, 'Alaska Sweetened Filled Milk', 'No Brand', 57, '300mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1526, 'Milkmaid Full Cream Milk', 'No Brand', 70.2, '300mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1527, 'CONDENSADA', 'No Brand', 0, '', 'Others', 'Not Applicable', '2019-03-05', 0),
(1528, 'Alaska', 'No Brand', 28, '168mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1529, 'Alaska (Tetra Pack)', 'No Brand', 39.75, '250mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1530, 'Alaska', 'No Brand', 43.5, '300mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1531, 'Carnation', 'No Brand', 37, '168mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1532, 'Carnation', 'No Brand', 54.5, '300mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1533, 'Cow Bell', 'No Brand', 30, '300mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1534, 'Liberty', 'No Brand', 28.5, '168mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1535, 'Liberty', 'No Brand', 44, '300mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1536, 'EVAPORATED MILK', 'No Brand', 0, '', 'Others', 'Not Applicable', '2019-03-05', 0),
(1537, 'Alaska Filled Milk', 'No Brand', 22.5, '154mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1538, 'Alaska Filled Milk (Tetra Pack)', 'No Brand', 30.25, '250mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1539, 'Alaska Filled Milk', 'No Brand', 41, '370mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1540, 'Alpine Full Cream Milk', 'No Brand', 29.5, '154mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1541, 'Alpine Full Cream Milk', 'No Brand', 56.6, '370mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1542, 'Angel Filled Milk', 'No Brand', 39, '410mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1543, 'Carnation', 'No Brand', 20, '154mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1544, 'Carnation', 'No Brand', 37.5, '370mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1545, 'EVAPORADA', 'No Brand', 0, '', 'Others', 'Not Applicable', '2019-03-05', 0),
(1546, 'Alaska', 'No Brand', 26, '370mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1547, 'Cow Bell', 'No Brand', 20, '370mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1548, 'POWDERED MILK', 'No Brand', 0, '', 'Others', 'Not Applicable', '2019-03-05', 0),
(1549, 'Alaska Powdered Milk Drink', 'No Brand', 43.5, '150g+15g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1550, 'Anchor Full Cream Milk', 'No Brand', 73.3, '150g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1551, 'Bear Brand', 'No Brand', 50, '150g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1552, 'Birch Tree Full Cream Milk', 'No Brand', 63.4, '150g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1553, 'COFFEE REFILL', 'No Brand', 0, '', 'Others', 'Not Applicable', '2019-03-05', 0),
(1554, 'Blend 45 - Supermarket', 'No Brand', 16.75, '25g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1555, 'Café Puro', 'No Brand', 19.7, '25g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1556, 'Great Taste (Granules) SMKT', 'No Brand', 18.75, '25g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1557, 'Great Taste (Premium) SMKT', 'No Brand', 17.75, '25g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1558, 'Nescafe (Classic)', 'No Brand', 19.7, '25g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1559, 'Blend 45 – Supermarket', 'No Brand', 33.5, '50g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1560, 'Café Puro', 'No Brand', 39.75, '50g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1561, 'Great Taste (Granules) SMKT', 'No Brand', 37.5, '50g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1562, 'Great Taste (Premium) SMKT', 'No Brand', 35.5, '50g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1563, 'Nescafe (Classic)', 'No Brand', 39.4, '50g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1564, 'Blend 45', 'No Brand', 4.1, '20g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1565, 'Café Puro', 'No Brand', 4.3, '17g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1566, 'Great Taste Twin Pack', 'No Brand', 7.85, '33g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1567, 'Kopiko Black', 'No Brand', 6, '25g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1568, 'Nescafe Blend and Brew', 'No Brand', 5.85, '28g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1569, 'San Mig Coffee 3-in-1 Original', 'No Brand', 5.35, '20g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1570, 'BREAD', 'No Brand', 0, '', 'Others', 'Not Applicable', '2019-03-05', 0),
(1571, 'Pinoy Tasty', 'No Brand', 35, '450g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1572, 'Pinoy Pandesal (10pcs./pack)', 'No Brand', 21.5, '250g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1573, 'Ho-mi', 'No Brand', 7.2, '55g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1574, 'Lucky Me! - Supermarket', 'No Brand', 7.3, '55g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1575, 'Payless – Supermarket', 'No Brand', 6.3, '55g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1576, 'Quickchow - GMA/Luzon/Visayas', 'No Brand', 6.6, '55g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1577, 'Quickchow - Mindanao', 'No Brand', 6.45, '55g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1578, 'SALT ( IODIZED)', 'No Brand', 0, '', 'Others', 'Not Applicable', '2019-03-05', 0),
(1579, 'Fidel Coarse (Red) - NCR', 'No Brand', 6.5, '250g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1580, 'Fidel Coarse (Red) - North/South Luzon', 'No Brand', 7, '250g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1581, 'Fidel Coarse (Red) - Viz/Min', 'No Brand', 7.25, '250g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1582, 'Fidel Free Flowing (Green) - NCR', 'No Brand', 9.75, '250g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1583, 'Fidel Free Flowing (Green) - North/South Luzon', 'No Brand', 10.25, '250g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1584, 'Fidel Free Flowing (Green) - Viz/Min', 'No Brand', 10.5, '250g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1585, 'Fidel Refined (Blue) - NCR', 'No Brand', 7, '250g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1586, 'Fidel Refined (Blue) - North/South Luzon', 'No Brand', 7.5, '250g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1587, 'Fidel Refined (Blue) - Viz/Min', 'No Brand', 7.75, '250g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1588, 'Fidel Coarse (Red) - NCR', 'No Brand', 12.7, '500g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1589, 'Fidel Coarse (Red) - North/South Luzon', 'No Brand', 13.5, '500g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1590, 'Fidel Coarse (Red) - Viz/Min', 'No Brand', 14, '500g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1591, 'Fidel Free Flowing (Green) - NCR', 'No Brand', 17.25, '500g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1592, 'Fidel Free Flowing (Green) - North/South Luzon', 'No Brand', 18, '500g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1593, 'Fidel Free Flowing (Green) - Viz/Min', 'No Brand', 18.5, '500g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1594, 'Fidel Refined (Blue) - NCR', 'No Brand', 13.75, '500g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1595, 'Fidel Refined (Blue) - North/South Luzon', 'No Brand', 14.5, '500g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1596, 'Fidel Refined (Blue) - Viz/Min', 'No Brand', 15, '500g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1597, 'DETERGENT SOAP/LAUNDRY SOAP', 'No Brand', 0, '', 'Others', 'Not Applicable', '2019-03-05', 0),
(1598, 'Bareta Bar (Blue, Kalamansi, Speckled Blue)', 'No Brand', 17.7, '360g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1599, 'Bonux (Flower Fiesta, Kalamansi) **', 'No Brand', 21, '380g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1600, 'Budget Bar (Blue)', 'No Brand', 16.35, '380g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1601, 'Scent, Purple Blossom)\nBudget Bar (Pink Carnation, Sunflower Fresh, Citrus', 'No Brand', 17.25, '380g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1602, '', 'No Brand', 0, '', 'Others', 'Not Applicable', '2019-03-05', 0),
(1603, 'Champion Bar (Supra Clean and Citrus Fresh)', 'No Brand', 20, '390g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1604, 'Kalamansi)\nSpeed Bar (White with Tawas, Speckled Blue,', 'No Brand', 20, '380g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1605, 'Speed Bar Regular (Blue)', 'No Brand', 19, '380g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1606, 'Surf Bar (Blue)', 'No Brand', 18.5, '380g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1607, 'Surf Bar (Kalamansi)', 'No Brand', 21, '380g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1608, 'Surf Bar (Tawas)', 'No Brand', 21, '380g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1609, 'Tide Bar Original Scent *', 'No Brand', 21, '380g', 'Others', 'Not Applicable', '2019-03-05', 0),
(1610, 'BOTTLED WATER', 'No Brand', 0, '', 'Others', 'Not Applicable', '2019-03-05', 0),
(1611, 'DISTILLED WATER', 'No Brand', 0, '', 'Others', 'Not Applicable', '2019-03-05', 0),
(1612, 'Absolute', 'No Brand', 11, '350mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1613, 'Absolute', 'No Brand', 15, '500mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1614, 'Absolute', 'No Brand', 25.5, '1L', 'Others', 'Not Applicable', '2019-03-05', 0),
(1615, 'Absolute', 'No Brand', 78, '6L', 'Others', 'Not Applicable', '2019-03-05', 0),
(1616, 'SM Bonus', 'No Brand', 6, '325mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1617, 'SM Bonus', 'No Brand', 8, '500mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1618, 'SM Bonus', 'No Brand', 50, '6L', 'Others', 'Not Applicable', '2019-03-05', 0),
(1619, 'Wilkins', 'No Brand', 11, '330mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1620, 'Wilkins', 'No Brand', 16, '500mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1621, 'Wilkins', 'No Brand', 25, '1L', 'Others', 'Not Applicable', '2019-03-05', 0),
(1622, 'Wilkins', 'No Brand', 81, '6+1L', 'Others', 'Not Applicable', '2019-03-05', 0),
(1623, 'PURIFIED WATER', 'No Brand', 0, '', 'Others', 'Not Applicable', '2019-03-05', 0),
(1624, 'Magnolia Pure', 'No Brand', 8.5, '355mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1625, 'Magnolia Pure', 'No Brand', 10.5, '500mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1626, 'Magnolia Pure', 'No Brand', 19.5, '1L', 'Others', 'Not Applicable', '2019-03-05', 0),
(1627, 'Natures Spring', 'No Brand', 9.9, '500mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1628, 'Natures Spring', 'No Brand', 15.4, '1L', 'Others', 'Not Applicable', '2019-03-05', 0),
(1629, 'BASIC NECESSITIES', 'No Brand', 0, 'UNIT', 'Others', 'Not Applicable', '2019-03-05', 0),
(1630, 'Refresh', 'No Brand', 8.25, '500mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1631, 'SM Bonus', 'No Brand', 5, '300mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1632, 'Wilkins Pure', 'No Brand', 11, '500mL', 'Others', 'Not Applicable', '2019-03-05', 0),
(1633, 'Wilkins Pure', 'No Brand', 22, '1L', 'Others', 'Not Applicable', '2019-03-09', 0),
(1634, 'Hidden Spring', 'No Brand', 8, '330mL', 'Others', 'Not Applicable', '2019-03-09', 0),
(1635, 'Hidden Spring', 'No Brand', 11, '500mL', 'Others', 'Not Applicable', '2019-03-09', 0),
(1636, 'Refresh', 'No Brand', 6, '350mL', 'Others', 'Not Applicable', '2019-03-09', 0),
(1637, 'Robinsons Mall', 'No Brand', 9.5, '500mL', 'Others', 'Not Applicable', '2019-03-09', 0),
(1638, 'Summit', 'No Brand', 10, '350mL', 'Others', 'Not Applicable', '2019-03-09', 0),
(1639, 'Summit', 'No Brand', 13.5, '500mL', 'Others', 'Not Applicable', '2019-03-09', 0),
(1640, 'Summit', 'No Brand', 21.5, '1L', 'Others', 'Not Applicable', '2019-03-09', 0),
(1641, 'Summit', 'No Brand', 72, '6L', 'Others', 'Not Applicable', '2019-03-09', 0),
(1642, 'Supersavers Nature’s Pure', 'No Brand', 6.5, '330mL', 'Others', 'Not Applicable', '2019-03-09', 0),
(1643, 'Supersavers Nature’s Pure', 'No Brand', 7.95, '500mL', 'Others', 'Not Applicable', '2019-03-09', 0),
(1644, 'Viva - Luzon', 'No Brand', 11, '330mL', 'Others', 'Not Applicable', '2019-03-09', 0),
(1645, 'Viva - Visayas', 'No Brand', 10, '330mL', 'Others', 'Not Applicable', '2019-03-09', 0),
(1646, 'Viva - Mindanao', 'No Brand', 11.5, '330mL', 'Others', 'Not Applicable', '2019-03-09', 0),
(1647, 'Viva - Nationwide', 'No Brand', 12, '500mL', 'Others', 'Not Applicable', '2019-03-09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account`
--

CREATE TABLE IF NOT EXISTS `tbl_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `deleted` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `tbl_account`
--

INSERT INTO `tbl_account` (`id`, `username`, `password`, `deleted`) VALUES
(1, 'cssdo', 'cssdo', 1),
(7, 'cssdo', 'cssdo', 1),
(8, 'super', 'super', 0),
(9, 'manager', 'manager', 1),
(10, 'kl', 'kl', 0),
(11, 'dswd248', 'dswd1', 0),
(12, 'student', 'student', 1),
(13, 'jean', 'manager', 0),
(14, 'haw23', 'h', 1),
(15, '', '', 1),
(16, 'aw', 'aw', 0),
(17, 'dswd23', 'dswd', 0),
(18, 'juda', 'juda', 0),
(19, 'julius', 'julius', 0),
(20, 'richelle2', 'richelle', 0),
(21, 'jason', 'jason', 0),
(22, 'dswd123', 'dswd', 0),
(23, 'D', 'ong', 0),
(24, 'parent', 'parent', 1),
(25, 'randy1', 'randy', 1),
(26, 'janine', 'janine', 0),
(27, 'anne', 'anne', 1),
(28, 'sdasdsd', 'sd', 1),
(29, '23', '23', 1),
(30, '23', '23', 0),
(31, '23', '23', 0),
(32, '45', '45', 0),
(33, '23', '23', 0),
(34, 'aa', 'aaa', 0),
(35, 'test', 'test', 0),
(36, 'testparent', 'testparent', 0),
(37, 'parent', 'parent', 0),
(38, 'mario', 'mario', 0),
(39, 'ad', 'ad', 0),
(40, 'max', 'max', 0),
(41, 'cssdo', 'cssdo', 0),
(42, 'kate', 'kate', 0),
(43, 'ken', 'ken', 1),
(44, 'asa', 'asa', 0),
(45, 'gregor', 'gregor', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` tinyint(2) NOT NULL,
  `birthday` date NOT NULL,
  `citizenship` varchar(50) NOT NULL,
  `religion` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `privilege` varchar(50) NOT NULL,
  `account_id` int(11) NOT NULL,
  `image_path` varchar(100) NOT NULL,
  `deleted` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `firstname`, `middlename`, `lastname`, `age`, `gender`, `birthday`, `citizenship`, `religion`, `address`, `occupation`, `privilege`, `account_id`, `image_path`, `deleted`) VALUES
(7, 'jonel', 'l', 'lang', 25, 1, '1991-05-05', 'law', 'law', 'l', 'law', 'CSSDO', 7, 'post_office.png', 1),
(9, 'John1', 'L', 'Doe', 50, 0, '1961-01-01', 'USA', 'USA', 'DC', 'USA', 'CSSDO', 9, 'noimage.png', 1),
(12, 'Levi Jordan', 'S.', 'Espina', 22, 0, '1997-11-16', 'Filipino', 'Catholic', 'Toril Davao City', 'Web Developer', 'Administrator', 8, 'noimage.png', 0),
(17, 'dswd', 'dd', 'dswd', 45, 1, '2018-04-16', 'Philam', 'INC', 'Davao City', 'Head', 'DSWD', 22, 'noimage.png', 0),
(19, 'Tapulano', 'K', 'Kaayo', 56, 1, '1979-04-01', 'philam', 'inc', 'Toril', 'none', 'Parent', 24, 'school.jpg', 1),
(20, 'Randy1', 'M', 'Santiago', 54, 1, '2009-10-17', 'Filipino', 'Roman', 'Philipines', 'Worker', 'Parent', 25, 'park_png-1.png', 1),
(21, 'Anne', 'M', 'Curtis', 35, 0, '1980-04-01', 'Filipino', 'Roman', 'none', 'None', 'Parent', 27, 'MICHAEL_CITY.jpg', 1),
(25, 'Annie', 'K.', 'Lopez', 44, 0, '1975-05-24', 'Filipino', 'Roman Catholic', 'Toril Davao City', 'Caregiver', 'Parent', 37, '2x2.jpg', 0),
(26, 'Mario', 'J.', 'Tejada', 43, 1, '1976-02-18', 'Filipino', 'Roman Catholic', 'Davao City', 'Architect', 'Parent', 38, 'CNQap8YUcAAiOkS.jpg', 0),
(27, 'Merlinda', 'B.', 'Arquiza', 51, 0, '1968-10-25', 'Filipino', 'Christian', 'Toril Davao City', 'Teacher', 'CSSDO', 41, '27657956_1950391238612678_1194922953945692328_n.jpg', 0),
(28, 'asa', 'a', 'asa', 21, 1, '1998-10-16', 'Filipino', 'Roman Catholic', 'asasa', 'asa', 'Parent', 43, 'BEAR-ABITE-3P-10ML-PT06.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_child_points`
--

CREATE TABLE IF NOT EXISTS `tbl_child_points` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `credit_points` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_child_points`
--

INSERT INTO `tbl_child_points` (`id`, `student_id`, `credit_points`) VALUES
(1, 0, 0),
(2, 8, 20),
(3, 9, 80),
(4, 19, 25),
(5, 18, 270);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE IF NOT EXISTS `tbl_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `comment` text NOT NULL,
  `user_type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`id`, `post_id`, `user_id`, `date_created`, `comment`, `user_type`) VALUES
(1, 6, 12, '2018-06-27', 'This is a test comment', 'Administrator'),
(2, 4, 12, '2018-06-27', 'another test', 'Administrator'),
(5, 4, 12, '2018-06-27', 'sdasdasd', 'Administrator'),
(6, 4, 12, '2018-06-27', 'asdasdasd', 'Administrator'),
(8, 6, 7, '2018-06-27', 'this is a comment from cssdo', 'CSSDO'),
(10, 4, 12, '2018-06-27', 'example comment23123123', 'Administrator'),
(11, 6, 12, '2018-06-27', 'This is a comment no 2', 'Administrator'),
(13, 6, 12, '2018-06-27', 'weqwqweqweqwe', 'Administrator'),
(14, 6, 1, '2018-06-27', 'student comment', 'Student'),
(16, 11, 12, '2018-06-27', 'aw', 'Administrator'),
(17, 6, 17, '2018-06-28', 'This is a comment from DSWD', 'DSWD'),
(18, 6, 17, '2018-06-28', 'jun2 coimment', 'DSWD'),
(19, 6, 12, '2018-06-29', 'this is a sample comment', 'Administrator'),
(20, 16, 7, '2018-06-29', 'jun bitch kaayo', 'CSSDO');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_family`
--

CREATE TABLE IF NOT EXISTS `tbl_family` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `deleted` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=105 ;

--
-- Dumping data for table `tbl_family`
--

INSERT INTO `tbl_family` (`id`, `parent_id`, `student_id`, `deleted`) VALUES
(103, 25, 18, 0),
(104, 26, 19, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food_variety`
--

CREATE TABLE IF NOT EXISTS `tbl_food_variety` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variety` varchar(255) NOT NULL,
  `credit` int(11) NOT NULL,
  `total_carb` float NOT NULL,
  `quantity` float NOT NULL,
  `unit_serving` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_food_variety`
--

INSERT INTO `tbl_food_variety` (`id`, `variety`, `credit`, `total_carb`, `quantity`, `unit_serving`) VALUES
(1, 'Vegetables', 100, 0, 0, ''),
(2, 'Fruits', 98, 5.6, 0, ''),
(4, 'Grain2', 91, 2.22, 0, ''),
(6, 'Eggs', 80, 3.68, 0, ''),
(7, 'Milk', 90, 9.23, 0.5, 'Tbsp');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_health_profile`
--

CREATE TABLE IF NOT EXISTS `tbl_health_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_check_up` date NOT NULL,
  `weight` double NOT NULL,
  `height` double NOT NULL,
  `bmi` double NOT NULL,
  `classification` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `tbl_health_profile`
--

INSERT INTO `tbl_health_profile` (`id`, `date_check_up`, `weight`, `height`, `bmi`, `classification`, `student_id`) VALUES
(10, '2018-04-10', 160, 73, 21.1, 'Normal', 6),
(11, '2018-04-10', 160, 731, 304, 'Obese', 2),
(12, '2018-04-10', 160, 73, 21.1, 'Normal', 1),
(13, '2018-04-10', 200, 73, 26.4, 'overweight', 1),
(14, '2018-04-10', 500, 100, 35.1, 'Obese', 1),
(15, '2018-04-10', 100, 73, 13.2, 'Underweight', 1),
(16, '2018-04-10', 180, 76, 21.9, 'Normal', 1),
(17, '2018-04-10', 200, 60, 39.1, 'Obese', 1),
(18, '2018-04-11', 120, 60, 23.4, 'Normal', 7),
(19, '2018-04-11', 250, 80, 27.5, 'overweight', 8),
(20, '2018-04-11', 180, 60, 35.1, 'Obese', 9),
(21, '2018-04-11', 120, 80, 13.2, 'Underweight', 10),
(22, '2018-04-11', 180, 90, 15.6, 'Underweight', 11),
(23, '2018-04-21', 301, 200, 75.3, 'Obese', 2),
(24, '2018-05-27', 500, 150, 222.2, 'Obese', 0),
(25, '2018-05-27', 232, 112, 184.9, 'Obese', 2),
(26, '2018-05-27', 233, 333, 21, 'Normal', 2),
(27, '2018-05-28', 200, 200, 50, 'Obese', 1),
(28, '2018-05-28', 233, 223, 46.9, 'Obese', 7),
(29, '2018-09-01', 15.2, 12, 1055.6, 'Overweight', 11),
(30, '2019-01-18', 30, 60, 83.3, '<span style="color:#d70ee4;">Overweight</span>', 8),
(31, '2019-01-18', 30, 0.23, 567.11, '<span style="color:#d70ee4;">Overweight</span>', 7),
(32, '2019-03-09', 10, 99, 10.2, '<span style="color:#d70ee4;">Overweight</span>', 18),
(33, '2019-03-09', 8, 70, 16.3, 'Normal', 19),
(34, '2019-03-09', 8, 85, 11.1, 'Normal', 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ingridients`
--

CREATE TABLE IF NOT EXISTS `tbl_ingridients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ingridient` varchar(150) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `ing_unit` varchar(100) NOT NULL DEFAULT 'pc',
  `budget` float NOT NULL,
  `price` float NOT NULL,
  `menu_id` int(11) NOT NULL,
  `liquidation` float DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=131 ;

--
-- Dumping data for table `tbl_ingridients`
--

INSERT INTO `tbl_ingridients` (`id`, `ingridient`, `quantity`, `ing_unit`, `budget`, `price`, `menu_id`, `liquidation`) VALUES
(67, 'Kalabasa', '1', 'pc', 100, 100, 16, 0),
(68, 'Alogbate', '1', 'pc', 10, 10, 16, 0),
(69, 'Sibuyas Dahon', '10', 'pc', 100, 5, 16, 0),
(70, 'manok', '1', 'pc', 300, 200, 17, 0),
(71, 'Bombay', '1', 'pc', 5, 5, 17, 0),
(72, 'Ahos', '2', 'pc', 20, 10, 17, 0),
(73, 'sili', '1', 'pc', 30, 20, 17, 0),
(80, 'sd', '2', 'pc', 22, 22, 16, 0),
(81, 'w', '2', 'pc', 2, 2, 16, 0),
(83, 'sdasd', '2', 'pc', 4, 2, 16, 0),
(85, 'baatong', '2', 'pc', 112, 56, 16, 0),
(87, 'Kalabasa', '1', 'pc', 50, 50, 19, 50),
(88, 'Cow Meat', '1', 'pc', 300, 300, 19, 300),
(89, 'Karneng baboy', '2', 'pc', 360, 180, 19, 360),
(90, 'Karneng baboy', '3', 'pc', 540, 180, 19, 400),
(93, 'Karneng baboy', '1', 'pc', 180, 180, 20, 160),
(94, 'Kalabasa', '2', 'pc', 100, 50, 20, 80),
(100, 'Mango', '1', 'pc', 26.52, 26.52, 19, 26.52),
(105, 'Kalabasa', '1', 'pc', 50, 50, 21, 0),
(106, 'Cow Meat', '1', 'pc', 300, 300, 21, 0),
(107, 'Mango', '1', 'pc', 26.52, 26.52, 21, 0),
(109, 'Family Budget Pack Plain', '1', 'pc', 13.25, 13.25, 22, 13),
(110, 'Atami Green', '2', 'pc', 28.8, 14.4, 23, 28),
(111, 'Hakone Regular', '2', 'pc', 26.8, 13.4, 23, 25),
(112, 'Bareta Bar (Blue, Kalamansi, Speckled Blue)', '1', 'pc', 17.7, 17.7, 23, 18),
(113, 'Kalabasa', '2', 'pc', 100, 50, 23, 95),
(115, 'Atami Green', '1', 'pc', 14.4, 14.4, 24, 14.4),
(116, 'Saba', '1', 'pc', 15.8, 15.8, 24, 15.8),
(117, 'Alaska Filled Milk', '1', 'pc', 22.5, 22.5, 24, 22.5),
(120, '555 Bonus Pack', '1', 'pc', 15.5, 15.5, 25, 15.5),
(121, '555 Bonus Pack', '1', 'pc', 15.5, 15.5, 26, 15.5),
(122, 'Hakone Regular', '2', 'pc', 26.8, 13.4, 26, 26.8),
(123, 'Hakata (Easy Open)', '2', 'pc', 32.3, 16.15, 27, 32.3),
(128, '555', '1', '155g', 500, 500, 28, 500),
(129, 'Champion Bar (Supra Clean and Citrus Fresh)', '7', '390g', 140, 20, 28, 140),
(130, '555 Bonus Pack', '1', '155g', 15.5, 15.5, 29, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_liquidation`
--

CREATE TABLE IF NOT EXISTS `tbl_liquidation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `total_expenses` int(11) NOT NULL,
  `file_name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `tbl_liquidation`
--

INSERT INTO `tbl_liquidation` (`id`, `menu_id`, `total_expenses`, `file_name`) VALUES
(21, 8, 91, 'icons8-search-50.png'),
(22, 8, 91, 'icons8-shopping-cart-filled-50.png'),
(24, 6, 160, 'login.png'),
(26, 6, 160, 'PLAYGROUND.jpg'),
(48, 4, 0, 'noimage.png'),
(60, 4, 0, 'park png.png'),
(61, 4, 0, 'road.jpg'),
(62, 25, 16, 'tutorial moba.txt');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_meals`
--

CREATE TABLE IF NOT EXISTS `tbl_meals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` date NOT NULL,
  `student_id` int(11) NOT NULL,
  `food_variety_id` int(11) NOT NULL,
  `servings` int(11) NOT NULL,
  `credits` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tbl_meals`
--

INSERT INTO `tbl_meals` (`id`, `date_created`, `student_id`, `food_variety_id`, `servings`, `credits`) VALUES
(1, '2019-03-31', 18, 4, 2, 91),
(2, '0000-00-00', 18, 4, 2, 90),
(5, '0000-00-00', 9, 2, 1, 50),
(9, '0000-00-00', 18, 2, 1, 51),
(10, '0000-00-00', 18, 1, 2, 90),
(11, '0000-00-00', 18, 2, 2, 90),
(12, '2019-03-31', 18, 2, 2, 90);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE IF NOT EXISTS `tbl_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(150) NOT NULL,
  `alloted_budget` float NOT NULL,
  `total_budget` float NOT NULL,
  `parent_id` int(11) NOT NULL,
  `prepared_by_id` int(11) NOT NULL,
  `date_chosen` date NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id`, `menu`, `alloted_budget`, `total_budget`, `parent_id`, `prepared_by_id`, `date_chosen`, `status`) VALUES
(4, 'Adobong manok', 0, 888, 19, 0, '2018-04-18', 0),
(6, 'Nilagang Baboy', 0, 415, 19, 0, '2018-04-28', 0),
(8, 'Law oy', 0, 630, 20, 0, '2018-04-04', 0),
(11, 'menudo', 0, 600, 20, 0, '2018-05-01', 0),
(12, 'Menudo', 0, 500, 19, 0, '2018-04-20', 0),
(13, 'Pinakbet', 0, 200, 19, 0, '2018-04-27', 0),
(15, 'Law oy2', 0, 1280, 20, 0, '2018-07-03', 0),
(16, 'Law oy', 300, 627, 21, 0, '2018-11-01', 0),
(17, 'Adobo', 400, 325, 20, 0, '2018-11-02', 0),
(18, '', 600, 0, 23, 0, '2018-11-03', 0),
(19, 'Nilagang baka', 1300.25, 1276.52, 23, 12, '2019-01-08', 0),
(20, 'Adobong manok', 300, 280, 20, 17, '2019-01-09', 0),
(21, 'adobong manok', 600.5, 376.52, 21, 12, '2019-02-04', 0),
(22, '', 200.02, 13.25, 23, 12, '2019-03-05', 0),
(23, 'Test recipe', 500.59, 173.3, 25, 12, '2019-03-06', 1),
(24, 'test3', 100.89, 52.7, 25, 12, '2019-03-07', 0),
(25, 'test', 200, 15.5, 25, 12, '2019-03-01', 1),
(26, 'ODONG na lami', 300, 42.3, 26, 17, '2019-03-23', 1),
(27, 'bacig unsa', 50, 32.3, 26, 17, '2019-03-29', 1),
(28, 'wal wal', 1000, 640, 26, 17, '2019-03-19', 1),
(29, 'odong', 20, 15.5, 25, 12, '2019-03-13', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification`
--

CREATE TABLE IF NOT EXISTS `tbl_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `posted_by` int(11) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=524 ;

--
-- Dumping data for table `tbl_notification`
--

INSERT INTO `tbl_notification` (`id`, `post_id`, `user_id`, `user_type`, `posted_by`, `status`) VALUES
(29, 3, 1, 'Student', 12, 1),
(30, 3, 7, 'Student', 12, 0),
(31, 3, 8, 'Student', 12, 0),
(32, 3, 9, 'Student', 12, 0),
(33, 3, 10, 'Student', 12, 0),
(34, 3, 11, 'Student', 12, 0),
(35, 3, 12, 'Student', 12, 0),
(36, 3, 13, 'Student', 12, 0),
(37, 3, 14, 'Student', 12, 0),
(38, 3, 15, 'Student', 12, 0),
(39, 3, 16, 'Student', 12, 0),
(40, 3, 2, 'CSSDO', 12, 0),
(41, 3, 3, 'CSSDO', 12, 0),
(42, 3, 4, 'DSWD', 12, 1),
(43, 3, 5, 'CSSDO', 12, 0),
(44, 3, 6, 'CSSDO', 12, 0),
(45, 3, 7, 'CSSDO', 12, 0),
(46, 3, 9, 'CSSDO', 12, 0),
(47, 3, 10, 'Administrator', 12, 0),
(48, 3, 11, 'DSWD', 12, 1),
(49, 3, 12, 'Administrator', 12, 0),
(50, 3, 13, 'CSSDO', 12, 0),
(51, 3, 15, 'Administrator', 12, 0),
(52, 3, 16, 'Administrator', 12, 0),
(53, 3, 18, 'DSWD', 12, 1),
(54, 3, 19, 'Parent', 12, 1),
(55, 3, 20, 'Parent', 12, 0),
(56, 3, 21, 'Parent', 12, 0),
(57, 6, 17, 'DSWD', 12, 1),
(58, 3, 17, 'DSWD', 12, 1),
(59, 12, 1, 'Student', 17, 1),
(60, 12, 7, 'Student', 17, 0),
(61, 12, 8, 'Student', 17, 0),
(62, 12, 9, 'Student', 17, 0),
(63, 12, 10, 'Student', 17, 0),
(64, 12, 11, 'Student', 17, 0),
(65, 12, 12, 'Student', 17, 0),
(66, 12, 13, 'Student', 17, 0),
(67, 12, 14, 'Student', 17, 0),
(68, 12, 15, 'Student', 17, 0),
(69, 12, 16, 'Student', 17, 0),
(70, 12, 2, 'CSSDO', 17, 0),
(71, 12, 3, 'CSSDO', 17, 0),
(72, 12, 4, 'DSWD', 17, 1),
(73, 12, 5, 'CSSDO', 17, 0),
(74, 12, 6, 'CSSDO', 17, 0),
(75, 12, 7, 'CSSDO', 17, 0),
(76, 12, 9, 'CSSDO', 17, 0),
(77, 12, 10, 'Administrator', 17, 0),
(78, 12, 11, 'DSWD', 17, 1),
(79, 12, 12, 'Administrator', 17, 1),
(80, 12, 13, 'CSSDO', 17, 0),
(81, 12, 15, 'Administrator', 17, 0),
(82, 12, 16, 'Administrator', 17, 0),
(83, 12, 17, 'DSWD', 17, 1),
(84, 12, 18, 'DSWD', 17, 1),
(85, 12, 19, 'Parent', 17, 0),
(86, 12, 20, 'Parent', 17, 0),
(87, 12, 21, 'Parent', 17, 0),
(88, 13, 1, 'Student', 17, 1),
(89, 13, 7, 'Student', 17, 0),
(90, 13, 8, 'Student', 17, 0),
(91, 13, 9, 'Student', 17, 0),
(92, 13, 10, 'Student', 17, 0),
(93, 13, 11, 'Student', 17, 0),
(94, 13, 12, 'Student', 17, 0),
(95, 13, 13, 'Student', 17, 0),
(96, 13, 14, 'Student', 17, 0),
(97, 13, 15, 'Student', 17, 0),
(98, 13, 16, 'Student', 17, 0),
(99, 13, 2, 'CSSDO', 17, 0),
(100, 13, 3, 'CSSDO', 17, 0),
(101, 13, 4, 'DSWD', 17, 1),
(102, 13, 5, 'CSSDO', 17, 0),
(103, 13, 6, 'CSSDO', 17, 0),
(104, 13, 7, 'CSSDO', 17, 0),
(105, 13, 9, 'CSSDO', 17, 0),
(106, 13, 10, 'Administrator', 17, 0),
(107, 13, 11, 'DSWD', 17, 1),
(108, 13, 12, 'Administrator', 17, 1),
(109, 13, 13, 'CSSDO', 17, 0),
(110, 13, 15, 'Administrator', 17, 0),
(111, 13, 16, 'Administrator', 17, 0),
(112, 13, 17, 'DSWD', 17, 1),
(113, 13, 18, 'DSWD', 17, 1),
(114, 13, 19, 'Parent', 17, 0),
(115, 13, 20, 'Parent', 17, 0),
(116, 13, 21, 'Parent', 17, 0),
(117, 14, 1, 'Student', 17, 1),
(118, 14, 7, 'Student', 17, 0),
(119, 14, 8, 'Student', 17, 0),
(120, 14, 9, 'Student', 17, 0),
(121, 14, 10, 'Student', 17, 0),
(122, 14, 11, 'Student', 17, 0),
(123, 14, 12, 'Student', 17, 0),
(124, 14, 13, 'Student', 17, 0),
(125, 14, 14, 'Student', 17, 0),
(126, 14, 15, 'Student', 17, 0),
(127, 14, 16, 'Student', 17, 0),
(128, 14, 2, 'CSSDO', 17, 0),
(129, 14, 3, 'CSSDO', 17, 0),
(130, 14, 4, 'DSWD', 17, 1),
(131, 14, 5, 'CSSDO', 17, 0),
(132, 14, 6, 'CSSDO', 17, 0),
(133, 14, 7, 'CSSDO', 17, 0),
(134, 14, 9, 'CSSDO', 17, 0),
(135, 14, 10, 'Administrator', 17, 0),
(136, 14, 11, 'DSWD', 17, 1),
(137, 14, 12, 'Administrator', 17, 1),
(138, 14, 13, 'CSSDO', 17, 0),
(139, 14, 15, 'Administrator', 17, 0),
(140, 14, 16, 'Administrator', 17, 0),
(141, 14, 17, 'DSWD', 17, 1),
(142, 14, 18, 'DSWD', 17, 1),
(143, 14, 19, 'Parent', 17, 0),
(144, 14, 20, 'Parent', 17, 0),
(145, 14, 21, 'Parent', 17, 0),
(146, 15, 1, 'Student', 17, 1),
(147, 15, 7, 'Student', 17, 0),
(148, 15, 8, 'Student', 17, 0),
(149, 15, 9, 'Student', 17, 0),
(150, 15, 10, 'Student', 17, 0),
(151, 15, 11, 'Student', 17, 0),
(152, 15, 12, 'Student', 17, 0),
(153, 15, 13, 'Student', 17, 0),
(154, 15, 14, 'Student', 17, 0),
(155, 15, 15, 'Student', 17, 0),
(156, 15, 16, 'Student', 17, 0),
(157, 15, 2, 'CSSDO', 17, 0),
(158, 15, 3, 'CSSDO', 17, 0),
(159, 15, 4, 'DSWD', 17, 1),
(160, 15, 5, 'CSSDO', 17, 0),
(161, 15, 6, 'CSSDO', 17, 0),
(162, 15, 7, 'CSSDO', 17, 0),
(163, 15, 9, 'CSSDO', 17, 0),
(164, 15, 10, 'Administrator', 17, 0),
(165, 15, 11, 'DSWD', 17, 1),
(166, 15, 12, 'Administrator', 17, 1),
(167, 15, 13, 'CSSDO', 17, 0),
(168, 15, 15, 'Administrator', 17, 0),
(169, 15, 16, 'Administrator', 17, 0),
(170, 15, 17, 'DSWD', 17, 1),
(171, 15, 18, 'DSWD', 17, 1),
(172, 15, 19, 'Parent', 17, 0),
(173, 15, 20, 'Parent', 17, 0),
(174, 15, 21, 'Parent', 17, 0),
(175, 16, 1, 'Student', 7, 1),
(176, 16, 7, 'Student', 7, 0),
(177, 16, 8, 'Student', 7, 0),
(178, 16, 9, 'Student', 7, 0),
(179, 16, 10, 'Student', 7, 0),
(180, 16, 11, 'Student', 7, 0),
(181, 16, 12, 'Student', 7, 0),
(182, 16, 13, 'Student', 7, 0),
(183, 16, 14, 'Student', 7, 0),
(184, 16, 15, 'Student', 7, 0),
(185, 16, 16, 'Student', 7, 0),
(186, 16, 2, 'CSSDO', 7, 0),
(187, 16, 3, 'CSSDO', 7, 0),
(188, 16, 4, 'DSWD', 7, 1),
(189, 16, 5, 'CSSDO', 7, 0),
(190, 16, 6, 'CSSDO', 7, 0),
(191, 16, 7, 'CSSDO', 7, 0),
(192, 16, 9, 'CSSDO', 7, 0),
(193, 16, 10, 'Administrator', 7, 0),
(194, 16, 11, 'DSWD', 7, 1),
(195, 16, 12, 'Administrator', 7, 0),
(196, 16, 13, 'CSSDO', 7, 0),
(197, 16, 15, 'Administrator', 7, 0),
(198, 16, 16, 'Administrator', 7, 0),
(199, 16, 17, 'DSWD', 7, 1),
(200, 16, 18, 'DSWD', 7, 1),
(201, 16, 19, 'Parent', 7, 0),
(202, 16, 20, 'Parent', 7, 0),
(203, 16, 21, 'Parent', 7, 0),
(204, 17, 7, 'Student', 12, 0),
(205, 17, 8, 'Student', 12, 0),
(206, 17, 9, 'Student', 12, 0),
(207, 17, 10, 'Student', 12, 0),
(208, 17, 11, 'Student', 12, 0),
(209, 17, 12, 'Student', 12, 0),
(210, 17, 13, 'Student', 12, 0),
(211, 17, 14, 'Student', 12, 0),
(212, 17, 15, 'Student', 12, 0),
(213, 17, 16, 'Student', 12, 0),
(214, 17, 17, 'Student', 12, 0),
(215, 17, 2, 'CSSDO', 12, 0),
(216, 17, 3, 'CSSDO', 12, 0),
(217, 17, 4, 'DSWD', 12, 1),
(218, 17, 5, 'CSSDO', 12, 0),
(219, 17, 6, 'CSSDO', 12, 0),
(220, 17, 7, 'CSSDO', 12, 0),
(221, 17, 9, 'CSSDO', 12, 0),
(222, 17, 10, 'Administrator', 12, 0),
(223, 17, 11, 'DSWD', 12, 1),
(224, 17, 12, 'Administrator', 12, 0),
(225, 17, 13, 'CSSDO', 12, 0),
(226, 17, 15, 'Administrator', 12, 0),
(227, 17, 16, 'Administrator', 12, 0),
(228, 17, 17, 'DSWD', 12, 1),
(229, 17, 18, 'DSWD', 12, 1),
(230, 17, 19, 'Parent', 12, 0),
(231, 17, 20, 'Parent', 12, 0),
(232, 17, 21, 'Parent', 12, 0),
(233, 17, 24, 'Parent', 12, 0),
(234, 18, 7, 'Student', 12, 0),
(235, 18, 8, 'Student', 12, 0),
(236, 18, 9, 'Student', 12, 0),
(237, 18, 10, 'Student', 12, 0),
(238, 18, 11, 'Student', 12, 0),
(239, 18, 12, 'Student', 12, 0),
(240, 18, 13, 'Student', 12, 0),
(241, 18, 14, 'Student', 12, 0),
(242, 18, 15, 'Student', 12, 0),
(243, 18, 16, 'Student', 12, 0),
(244, 18, 17, 'Student', 12, 0),
(245, 18, 2, 'CSSDO', 12, 0),
(246, 18, 3, 'CSSDO', 12, 0),
(247, 18, 4, 'DSWD', 12, 1),
(248, 18, 5, 'CSSDO', 12, 0),
(249, 18, 6, 'CSSDO', 12, 0),
(250, 18, 7, 'CSSDO', 12, 0),
(251, 18, 9, 'CSSDO', 12, 0),
(252, 18, 10, 'Administrator', 12, 0),
(253, 18, 11, 'DSWD', 12, 1),
(254, 18, 12, 'Administrator', 12, 0),
(255, 18, 13, 'CSSDO', 12, 0),
(256, 18, 15, 'Administrator', 12, 0),
(257, 18, 16, 'Administrator', 12, 0),
(258, 18, 17, 'DSWD', 12, 1),
(259, 18, 18, 'DSWD', 12, 1),
(260, 18, 19, 'Parent', 12, 0),
(261, 18, 20, 'Parent', 12, 0),
(262, 18, 21, 'Parent', 12, 0),
(263, 18, 24, 'Parent', 12, 0),
(264, 19, 7, 'Student', 12, 0),
(265, 19, 8, 'Student', 12, 0),
(266, 19, 9, 'Student', 12, 0),
(267, 19, 10, 'Student', 12, 0),
(268, 19, 11, 'Student', 12, 0),
(269, 19, 12, 'Student', 12, 0),
(270, 19, 13, 'Student', 12, 0),
(271, 19, 14, 'Student', 12, 0),
(272, 19, 15, 'Student', 12, 0),
(273, 19, 16, 'Student', 12, 0),
(274, 19, 17, 'Student', 12, 0),
(275, 19, 2, 'CSSDO', 12, 0),
(276, 19, 3, 'CSSDO', 12, 0),
(277, 19, 4, 'DSWD', 12, 1),
(278, 19, 5, 'CSSDO', 12, 0),
(279, 19, 6, 'CSSDO', 12, 0),
(280, 19, 7, 'CSSDO', 12, 0),
(281, 19, 9, 'CSSDO', 12, 0),
(282, 19, 10, 'Administrator', 12, 0),
(283, 19, 11, 'DSWD', 12, 1),
(284, 19, 12, 'Administrator', 12, 0),
(285, 19, 13, 'CSSDO', 12, 0),
(286, 19, 15, 'Administrator', 12, 0),
(287, 19, 16, 'Administrator', 12, 0),
(288, 19, 17, 'DSWD', 12, 1),
(289, 19, 18, 'DSWD', 12, 1),
(290, 19, 19, 'Parent', 12, 0),
(291, 19, 20, 'Parent', 12, 0),
(292, 19, 21, 'Parent', 12, 0),
(293, 19, 24, 'Parent', 12, 0),
(294, 20, 7, 'Student', 12, 0),
(295, 20, 8, 'Student', 12, 0),
(296, 20, 9, 'Student', 12, 0),
(297, 20, 10, 'Student', 12, 0),
(298, 20, 11, 'Student', 12, 0),
(299, 20, 12, 'Student', 12, 0),
(300, 20, 13, 'Student', 12, 0),
(301, 20, 14, 'Student', 12, 0),
(302, 20, 15, 'Student', 12, 0),
(303, 20, 16, 'Student', 12, 0),
(304, 20, 17, 'Student', 12, 0),
(305, 20, 2, 'CSSDO', 12, 0),
(306, 20, 3, 'CSSDO', 12, 0),
(307, 20, 4, 'DSWD', 12, 1),
(308, 20, 5, 'CSSDO', 12, 0),
(309, 20, 6, 'CSSDO', 12, 0),
(310, 20, 7, 'CSSDO', 12, 0),
(311, 20, 9, 'CSSDO', 12, 0),
(312, 20, 10, 'Administrator', 12, 0),
(313, 20, 11, 'DSWD', 12, 1),
(314, 20, 12, 'Administrator', 12, 0),
(315, 20, 13, 'CSSDO', 12, 0),
(316, 20, 15, 'Administrator', 12, 0),
(317, 20, 16, 'Administrator', 12, 0),
(318, 20, 17, 'DSWD', 12, 1),
(319, 20, 18, 'DSWD', 12, 1),
(320, 20, 19, 'Parent', 12, 0),
(321, 20, 20, 'Parent', 12, 0),
(322, 20, 21, 'Parent', 12, 0),
(323, 20, 24, 'Parent', 12, 0),
(324, 21, 7, 'Student', 12, 0),
(325, 21, 8, 'Student', 12, 0),
(326, 21, 9, 'Student', 12, 0),
(327, 21, 10, 'Student', 12, 0),
(328, 21, 11, 'Student', 12, 0),
(329, 21, 12, 'Student', 12, 0),
(330, 21, 13, 'Student', 12, 0),
(331, 21, 14, 'Student', 12, 0),
(332, 21, 15, 'Student', 12, 0),
(333, 21, 16, 'Student', 12, 0),
(334, 21, 17, 'Student', 12, 0),
(335, 21, 2, 'CSSDO', 12, 0),
(336, 21, 3, 'CSSDO', 12, 0),
(337, 21, 4, 'DSWD', 12, 1),
(338, 21, 5, 'CSSDO', 12, 0),
(339, 21, 6, 'CSSDO', 12, 0),
(340, 21, 7, 'CSSDO', 12, 0),
(341, 21, 9, 'CSSDO', 12, 0),
(342, 21, 10, 'Administrator', 12, 0),
(343, 21, 11, 'DSWD', 12, 1),
(344, 21, 12, 'Administrator', 12, 0),
(345, 21, 13, 'CSSDO', 12, 0),
(346, 21, 15, 'Administrator', 12, 0),
(347, 21, 16, 'Administrator', 12, 0),
(348, 21, 17, 'DSWD', 12, 1),
(349, 21, 18, 'DSWD', 12, 1),
(350, 21, 19, 'Parent', 12, 0),
(351, 21, 20, 'Parent', 12, 0),
(352, 21, 21, 'Parent', 12, 0),
(353, 21, 24, 'Parent', 12, 0),
(354, 37, 7, 'Student', 12, 0),
(355, 37, 8, 'Student', 12, 0),
(356, 37, 9, 'Student', 12, 0),
(357, 37, 10, 'Student', 12, 0),
(358, 37, 11, 'Student', 12, 0),
(359, 37, 12, 'Student', 12, 0),
(360, 37, 13, 'Student', 12, 0),
(361, 37, 14, 'Student', 12, 0),
(362, 37, 15, 'Student', 12, 0),
(363, 37, 16, 'Student', 12, 0),
(364, 37, 17, 'Student', 12, 0),
(365, 37, 2, 'CSSDO', 12, 0),
(366, 37, 3, 'CSSDO', 12, 0),
(367, 37, 4, 'DSWD', 12, 1),
(368, 37, 5, 'CSSDO', 12, 0),
(369, 37, 6, 'CSSDO', 12, 0),
(370, 37, 7, 'CSSDO', 12, 0),
(371, 37, 9, 'CSSDO', 12, 0),
(372, 37, 10, 'Administrator', 12, 0),
(373, 37, 11, 'DSWD', 12, 1),
(374, 37, 12, 'Administrator', 12, 0),
(375, 37, 13, 'CSSDO', 12, 0),
(376, 37, 15, 'Administrator', 12, 0),
(377, 37, 16, 'Administrator', 12, 0),
(378, 37, 17, 'DSWD', 12, 1),
(379, 37, 18, 'DSWD', 12, 1),
(380, 37, 19, 'Parent', 12, 0),
(381, 37, 20, 'Parent', 12, 0),
(382, 37, 21, 'Parent', 12, 0),
(383, 37, 24, 'Parent', 12, 0),
(384, 38, 7, 'Student', 12, 0),
(385, 38, 8, 'Student', 12, 0),
(386, 38, 9, 'Student', 12, 0),
(387, 38, 10, 'Student', 12, 0),
(388, 38, 11, 'Student', 12, 0),
(389, 38, 12, 'Student', 12, 0),
(390, 38, 13, 'Student', 12, 0),
(391, 38, 14, 'Student', 12, 0),
(392, 38, 15, 'Student', 12, 0),
(393, 38, 16, 'Student', 12, 0),
(394, 38, 17, 'Student', 12, 0),
(395, 38, 2, 'CSSDO', 12, 0),
(396, 38, 3, 'CSSDO', 12, 0),
(397, 38, 4, 'DSWD', 12, 1),
(398, 38, 5, 'CSSDO', 12, 0),
(399, 38, 6, 'CSSDO', 12, 0),
(400, 38, 7, 'CSSDO', 12, 0),
(401, 38, 9, 'CSSDO', 12, 0),
(402, 38, 10, 'Administrator', 12, 0),
(403, 38, 11, 'DSWD', 12, 1),
(404, 38, 12, 'Administrator', 12, 0),
(405, 38, 13, 'CSSDO', 12, 0),
(406, 38, 15, 'Administrator', 12, 0),
(407, 38, 16, 'Administrator', 12, 0),
(408, 38, 17, 'DSWD', 12, 1),
(409, 38, 18, 'DSWD', 12, 1),
(410, 38, 19, 'Parent', 12, 0),
(411, 38, 20, 'Parent', 12, 0),
(412, 38, 21, 'Parent', 12, 0),
(413, 38, 24, 'Parent', 12, 0),
(414, 39, 7, 'Student', 12, 0),
(415, 39, 8, 'Student', 12, 0),
(416, 39, 9, 'Student', 12, 0),
(417, 39, 10, 'Student', 12, 0),
(418, 39, 11, 'Student', 12, 0),
(419, 39, 12, 'Student', 12, 0),
(420, 39, 13, 'Student', 12, 0),
(421, 39, 14, 'Student', 12, 0),
(422, 39, 15, 'Student', 12, 0),
(423, 39, 16, 'Student', 12, 0),
(424, 39, 17, 'Student', 12, 0),
(425, 39, 2, 'CSSDO', 12, 0),
(426, 39, 3, 'CSSDO', 12, 0),
(427, 39, 4, 'DSWD', 12, 1),
(428, 39, 5, 'CSSDO', 12, 0),
(429, 39, 6, 'CSSDO', 12, 0),
(430, 39, 7, 'CSSDO', 12, 0),
(431, 39, 9, 'CSSDO', 12, 0),
(432, 39, 10, 'Administrator', 12, 0),
(433, 39, 11, 'DSWD', 12, 1),
(434, 39, 12, 'Administrator', 12, 0),
(435, 39, 13, 'CSSDO', 12, 0),
(436, 39, 15, 'Administrator', 12, 0),
(437, 39, 16, 'Administrator', 12, 0),
(438, 39, 17, 'DSWD', 12, 1),
(439, 39, 18, 'DSWD', 12, 1),
(440, 39, 19, 'Parent', 12, 0),
(441, 39, 20, 'Parent', 12, 0),
(442, 39, 21, 'Parent', 12, 0),
(443, 39, 24, 'Parent', 12, 0),
(444, 40, 7, 'Student', 12, 0),
(445, 40, 8, 'Student', 12, 0),
(446, 40, 9, 'Student', 12, 0),
(447, 40, 10, 'Student', 12, 0),
(448, 40, 11, 'Student', 12, 0),
(449, 40, 12, 'Student', 12, 0),
(450, 40, 13, 'Student', 12, 0),
(451, 40, 14, 'Student', 12, 0),
(452, 40, 15, 'Student', 12, 0),
(453, 40, 16, 'Student', 12, 0),
(454, 40, 17, 'Student', 12, 0),
(455, 40, 2, 'CSSDO', 12, 0),
(456, 40, 3, 'CSSDO', 12, 0),
(457, 40, 4, 'DSWD', 12, 1),
(458, 40, 5, 'CSSDO', 12, 0),
(459, 40, 6, 'CSSDO', 12, 0),
(460, 40, 7, 'CSSDO', 12, 0),
(461, 40, 9, 'CSSDO', 12, 0),
(462, 40, 10, 'Administrator', 12, 0),
(463, 40, 11, 'DSWD', 12, 1),
(464, 40, 12, 'Administrator', 12, 0),
(465, 40, 13, 'CSSDO', 12, 0),
(466, 40, 15, 'Administrator', 12, 0),
(467, 40, 16, 'Administrator', 12, 0),
(468, 40, 17, 'DSWD', 12, 1),
(469, 40, 18, 'DSWD', 12, 1),
(470, 40, 19, 'Parent', 12, 0),
(471, 40, 20, 'Parent', 12, 0),
(472, 40, 21, 'Parent', 12, 0),
(473, 40, 24, 'Parent', 12, 0),
(474, 41, 18, 'Student', 12, 0),
(475, 41, 19, 'Student', 12, 0),
(476, 41, 20, 'Student', 12, 0),
(477, 41, 21, 'Student', 12, 0),
(478, 41, 22, 'Student', 12, 0),
(479, 41, 12, 'Administrator', 12, 0),
(480, 41, 17, 'DSWD', 12, 0),
(481, 41, 25, 'Parent', 12, 0),
(482, 41, 26, 'Parent', 12, 0),
(483, 41, 27, 'CSSDO', 12, 0),
(484, 42, 18, 'Student', 12, 0),
(485, 42, 19, 'Student', 12, 0),
(486, 42, 20, 'Student', 12, 0),
(487, 42, 21, 'Student', 12, 0),
(488, 42, 22, 'Student', 12, 0),
(489, 42, 12, 'Administrator', 12, 0),
(490, 42, 17, 'DSWD', 12, 0),
(491, 42, 25, 'Parent', 12, 0),
(492, 42, 26, 'Parent', 12, 0),
(493, 42, 27, 'CSSDO', 12, 0),
(494, 42, 18, 'Student', 12, 0),
(495, 42, 19, 'Student', 12, 0),
(496, 42, 20, 'Student', 12, 0),
(497, 42, 21, 'Student', 12, 0),
(498, 42, 22, 'Student', 12, 0),
(499, 42, 12, 'Administrator', 12, 0),
(500, 42, 17, 'DSWD', 12, 0),
(501, 42, 25, 'Parent', 12, 0),
(502, 42, 26, 'Parent', 12, 0),
(503, 42, 27, 'CSSDO', 12, 0),
(504, 43, 18, 'Student', 12, 0),
(505, 43, 19, 'Student', 12, 0),
(506, 43, 20, 'Student', 12, 0),
(507, 43, 21, 'Student', 12, 0),
(508, 43, 22, 'Student', 12, 0),
(509, 43, 12, 'Administrator', 12, 0),
(510, 43, 17, 'DSWD', 12, 0),
(511, 43, 25, 'Parent', 12, 0),
(512, 43, 26, 'Parent', 12, 0),
(513, 43, 27, 'CSSDO', 12, 0),
(514, 44, 18, 'Student', 12, 0),
(515, 44, 19, 'Student', 12, 0),
(516, 44, 20, 'Student', 12, 0),
(517, 44, 21, 'Student', 12, 0),
(518, 44, 22, 'Student', 12, 0),
(519, 44, 12, 'Administrator', 12, 0),
(520, 44, 17, 'DSWD', 12, 0),
(521, 44, 25, 'Parent', 12, 0),
(522, 44, 26, 'Parent', 12, 0),
(523, 44, 27, 'CSSDO', 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE IF NOT EXISTS `tbl_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` date NOT NULL,
  `title` varchar(500) NOT NULL,
  `post_what` varchar(255) NOT NULL,
  `post_when` date NOT NULL,
  `post_where` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image_path` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `remind_to` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `date_created`, `title`, `post_what`, `post_when`, `post_where`, `description`, `image_path`, `user_id`, `remind_to`) VALUES
(17, '2019-03-08', 'test feed', 'feeding', '2019-03-22', 'Shool', '', 'noimage.png', 12, 0),
(19, '2019-03-08', 'test 3 feed', 'feeding', '2019-03-13', 'school', 'this is a test', 'villa-rosa.png', 12, 0),
(21, '2019-03-08', 'test5 feeding', 'feeding', '2019-03-26', 'school', 'this is a teset ', 'birchall.png', 12, 0),
(26, '2019-03-09', 'feeding pro', 'feeding', '2019-03-22', 'Business Area', 'this is a test', 'noimage.png', 12, 0),
(27, '2019-03-09', 'feeding pro', 'feeding', '2019-03-22', 'Business Area', 'this is a test', 'noimage.png', 12, 0),
(28, '2019-03-09', 'feeding pro', 'feeding', '2019-03-22', 'Business Area', 'this is a test', 'noimage.png', 12, 0),
(29, '2019-03-09', 'feeding pro', 'feeding', '2019-03-22', 'Business Area', 'this is a test', 'noimage.png', 12, 0),
(30, '2019-03-09', 'feeding pro', 'feeding', '2019-03-22', 'Business Area', 'this is a test', 'noimage.png', 12, 0),
(31, '2019-03-09', 'feeding pro', 'feeding', '2019-03-22', 'Business Area', 'this is a test', 'noimage.png', 12, 0),
(32, '2019-03-09', 'feeding pro', 'feeding', '2019-03-22', 'Business Area', 'this is a test', 'noimage.png', 12, 0),
(33, '2019-03-09', 'feeding pro', 'feeding', '2019-03-22', 'Business Area', 'this is a test', 'noimage.png', 12, 0),
(34, '2019-03-09', 'feeding pro', 'feeding', '2019-03-22', 'Business Area', 'this is a test', 'noimage.png', 12, 0),
(35, '2019-03-09', 'feeding pro', 'feeding', '2019-03-22', 'Business Area', 'this is a test', 'noimage.png', 12, 0),
(36, '2019-03-09', 'feeding pro', 'feeding', '2019-03-22', 'Business Area', 'this is a test', 'noimage.png', 12, 0),
(37, '2019-03-09', 'feeding pro', 'feeding', '2019-03-22', 'Business Area', 'this is a test', 'noimage.png', 12, 0),
(38, '2019-03-09', 'my feeeding program', 'feeding', '2019-03-21', 'Business Area', 'This is all a test', 'noimage.png', 12, 0),
(39, '2019-03-09', 'Araw ng Davao', 'Parade', '2019-03-09', 'Street', '', 'noimage.png', 12, 0),
(40, '2019-03-09', 'Nutrition Event', 'Nutrition', '2019-03-14', 'School Campus', '', 'back.jpg', 12, 0),
(41, '2019-03-31', 'jonel', 'feeding', '2019-03-05', 'school', '', 'noimage.png', 12, 91000),
(42, '2019-04-01', 'sd', 'asd', '2019-04-02', 'asd', '', 'noimage.png', 12, 90010),
(43, '2019-04-01', 'test5 feeding', 'sd', '2019-04-24', 'dasd', '', 'Banner_Paver_02_PS.JPG', 12, 90110),
(44, '2019-04-02', 'sdasdasda', 'sdasd', '2019-04-09', 'a', '', '56165161_428532211286377_1179103831401693184_n.jpg', 12, 91000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_program_attendance`
--

CREATE TABLE IF NOT EXISTS `tbl_program_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `inc_comment` varchar(255) NOT NULL,
  `checked_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=118 ;

--
-- Dumping data for table `tbl_program_attendance`
--

INSERT INTO `tbl_program_attendance` (`id`, `event_id`, `student_id`, `status`, `inc_comment`, `checked_by`) VALUES
(40, 20190304, 12, 1, '', 12),
(41, 20190304, 15, 0, 'late', 12),
(42, 20190304, 7, 0, 'sick', 12),
(43, 20190304, 16, 0, 'drop out', 12),
(44, 20190304, 14, 1, '', 12),
(45, 20190304, 13, 1, '', 12),
(46, 20190304, 8, 0, 'sick', 12),
(47, 20190304, 10, 1, '', 12),
(48, 20190304, 9, 1, '', 12),
(49, 20190304, 11, 1, '', 12),
(50, 20190305, 15, 1, '', 12),
(51, 20190305, 12, 0, '', 12),
(52, 20190305, 13, 1, '', 12),
(53, 20190305, 7, 1, '', 12),
(54, 20190305, 16, 1, '', 12),
(55, 20190305, 14, 1, '', 12),
(56, 20190305, 8, 1, '', 12),
(57, 20190305, 11, 1, '', 12),
(58, 20190305, 9, 1, '', 12),
(59, 20190305, 10, 1, '', 12),
(60, 38, 7, 1, '', 0),
(61, 38, 8, 1, '', 0),
(62, 38, 9, 1, '', 0),
(63, 38, 10, 1, '', 0),
(64, 38, 11, 1, '', 0),
(65, 38, 12, 1, '', 0),
(66, 38, 13, 1, '', 0),
(67, 38, 14, 1, '', 0),
(68, 38, 15, 1, '', 0),
(69, 38, 16, 1, '', 0),
(70, 38, 17, 1, '', 0),
(71, 39, 7, 1, '', 12),
(72, 39, 8, 1, '', 12),
(73, 39, 9, 1, '', 12),
(74, 39, 10, 1, '', 12),
(75, 39, 11, 1, '', 12),
(76, 39, 12, 1, '', 12),
(77, 39, 13, 0, 'reunon', 12),
(78, 39, 14, 0, 'sick', 12),
(79, 39, 15, 1, '', 12),
(80, 39, 16, 1, '', 12),
(81, 39, 17, 1, '', 12),
(82, 40, 7, 1, '', 12),
(83, 40, 8, 1, '', 12),
(84, 40, 9, 0, '', 12),
(85, 40, 10, 1, '', 12),
(86, 40, 11, 1, '', 12),
(87, 40, 12, 1, '', 12),
(88, 40, 13, 1, '', 12),
(89, 40, 14, 1, '', 12),
(90, 40, 15, 1, '', 12),
(91, 40, 16, 1, '', 12),
(92, 40, 17, 1, '', 12),
(93, 41, 18, 1, '', 0),
(94, 41, 19, 1, '', 0),
(95, 41, 20, 1, '', 0),
(96, 41, 21, 1, '', 0),
(97, 41, 22, 1, '', 0),
(98, 42, 18, 1, '', 0),
(99, 42, 19, 1, '', 0),
(100, 42, 20, 1, '', 0),
(101, 42, 21, 1, '', 0),
(102, 42, 22, 1, '', 0),
(103, 42, 18, 1, '', 0),
(104, 42, 19, 1, '', 0),
(105, 42, 20, 1, '', 0),
(106, 42, 21, 1, '', 0),
(107, 42, 22, 1, '', 0),
(108, 43, 18, 1, '', 0),
(109, 43, 19, 1, '', 0),
(110, 43, 20, 1, '', 0),
(111, 43, 21, 1, '', 0),
(112, 43, 22, 1, '', 0),
(113, 44, 18, 1, '', 0),
(114, 44, 19, 1, '', 0),
(115, 44, 20, 1, '', 0),
(116, 44, 21, 1, '', 0),
(117, 44, 22, 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reminder`
--

CREATE TABLE IF NOT EXISTS `tbl_reminder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` date NOT NULL,
  `reminder` text NOT NULL,
  `image_path` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_reminder`
--

INSERT INTO `tbl_reminder` (`id`, `date_created`, `reminder`, `image_path`, `user_id`) VALUES
(2, '2018-06-26', 'A reminder notice, in the broadest and simplest sense, serves as a reminder to people of an important matter.It doesnâ€™t make sense to rely too much on a piece of paper, but if itâ€™s written on a reminder notice, youâ€™ll know that what youâ€™re being reminded about must be pretty important. Right?', 'img35.png', 12),
(3, '2019-04-01', 'THis is a reminder test', 'Big-Sonik-Ski_Road_Project_Kazakhstan_2-1.jpg', 12),
(4, '2019-04-02', 'sdasd', 'food_feeding_program-1.jpg', 12);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_school`
--

CREATE TABLE IF NOT EXISTS `tbl_school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `school_name` varchar(150) NOT NULL,
  `address` varchar(500) NOT NULL,
  `image_path` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_school`
--

INSERT INTO `tbl_school` (`id`, `school_name`, `address`, `image_path`) VALUES
(1, 'Toril Day Care Center', 'Gen. Lao Street Toril Davao City ', 'toril2.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_section`
--

CREATE TABLE IF NOT EXISTS `tbl_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_section`
--

INSERT INTO `tbl_section` (`id`, `section`) VALUES
(2, 'a2'),
(3, 'awe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE IF NOT EXISTS `tbl_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `gender` tinyint(2) NOT NULL,
  `age` int(11) NOT NULL,
  `birthday` date NOT NULL,
  `citizenship` varchar(100) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `class_section_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `image_path` varchar(50) NOT NULL,
  `student_height` float NOT NULL,
  `student_weight` float NOT NULL,
  `deleted` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `age`, `birthday`, `citizenship`, `religion`, `address`, `class_section_id`, `account_id`, `image_path`, `student_height`, `student_weight`, `deleted`) VALUES
(18, 'Adrian', 'K.', 'Lopez', 0, 7, '2012-07-04', 'Filipino', 'Roman Catholic', 'Toril Davao City', 2, 39, 'AnonymBruker-3.png', 120, 20, 0),
(19, 'Maxpein', 'M.', 'Tejada', 0, 7, '2012-02-03', 'Filipino', 'Roman Catholic', 'Toril Davao City', 2, 40, 'ads-here-1.png', 100, 21, 0),
(20, 'Kate Ethel', 'D.', 'Dagohoy', 0, 6, '2013-09-03', 'Filipino', 'Roman Catholic', 'Toril Davao City', 2, 42, '2x2-1.jpg', 119, 19, 0),
(21, 'asas', 'a', 'asasa', 1, 7, '2012-07-04', 'Filipino', 'Roman Catholic', 'asasa', 2, 44, 'Background---Not-Acceptable-300x450.jpg', 123, 21, 0),
(22, 'Gregor', 'M', 'Santos', 1, 9, '2010-06-01', 'Filipino', 'Iglesia ni Cristo', 'Toril', 2, 45, '140177_2-1-1.jpg', 110, 40, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_submitted_report`
--

CREATE TABLE IF NOT EXISTS `tbl_submitted_report` (
  `id` int(111) NOT NULL AUTO_INCREMENT,
  `date_created` date NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `submitted_by` int(11) NOT NULL,
  `submitted_to` int(11) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `deleted` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
