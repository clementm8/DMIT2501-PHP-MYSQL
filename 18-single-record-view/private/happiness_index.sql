-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 10, 2023 at 07:49 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vwatson_cities`
--

-- --------------------------------------------------------

--
-- Table structure for table `happiness_index`
--

CREATE TABLE `happiness_index` (
  `rank` int(3) NOT NULL,
  `country` varchar(24) DEFAULT NULL,
  `continent` int(1) DEFAULT NULL,
  `population` decimal(8,1) DEFAULT NULL,
  `life_expectancy` decimal(3,1) DEFAULT NULL,
  `wellbeing` decimal(3,2) DEFAULT NULL,
  `eco_footprint` decimal(4,2) DEFAULT NULL,
  `hpi` decimal(3,1) DEFAULT NULL,
  `biocapacity` decimal(3,2) DEFAULT NULL,
  `gdp_per_capita` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `happiness_index`
--

INSERT INTO `happiness_index` (`rank`, `country`, `continent`, `population`, `life_expectancy`, `wellbeing`, `eco_footprint`, `hpi`, `biocapacity`, `gdp_per_capita`) VALUES
(1, 'Costa Rica', 1, 5047.6, 80.3, 7.00, 2.65, 62.1, 1.56, 20297),
(2, 'Vanuatu', 8, 299.9, 70.5, 6.96, 1.62, 60.4, 1.56, 3153),
(3, 'Colombia', 1, 50339.4, 77.3, 6.35, 1.90, 60.2, 1.56, 14625),
(4, 'Switzerland', 3, 8591.4, 83.8, 7.69, 4.14, 60.1, 1.56, 68391),
(5, 'Ecuador', 1, 17373.7, 77.0, 5.81, 1.51, 58.8, 1.56, 11375),
(6, 'Panama', 1, 4246.4, 78.5, 6.09, 2.10, 57.9, 1.56, 31459),
(7, 'Jamaica', 1, 2948.3, 74.5, 6.31, 1.84, 57.9, 1.56, 9761),
(8, 'Guatemala', 1, 17581.5, 74.3, 6.26, 1.77, 57.9, 1.56, 8637),
(9, 'Honduras', 1, 9746.1, 75.3, 5.93, 1.58, 57.7, 1.56, 5728),
(10, 'Uruguay', 1, 3461.7, 77.9, 6.60, 2.62, 57.5, 1.56, 21561),
(11, 'New Zealand', 2, 4783.1, 82.3, 7.21, 3.87, 57.4, 1.56, 43148),
(12, 'Philippines', 8, 108116.6, 71.2, 6.27, 1.50, 57.1, 1.56, 8908),
(13, 'El Salvador', 1, 6453.6, 73.3, 6.45, 2.06, 56.3, 1.56, 8776),
(14, 'United Kingdom', 3, 67530.2, 81.3, 7.16, 3.95, 56.0, 1.56, 46703),
(15, 'Peru', 1, 32510.5, 76.7, 6.00, 2.09, 55.9, 1.56, 12848),
(16, 'Nicaragua', 1, 6545.5, 74.5, 6.11, 2.04, 55.2, 1.56, 5407),
(17, 'Tajikistan', 7, 9321.0, 71.1, 5.46, 0.96, 55.2, 1.56, 3380),
(18, 'Netherlands', 3, 17097.1, 82.3, 7.43, 4.59, 54.9, 1.56, 56810),
(19, 'Dominican Republic', 1, 10739.0, 74.1, 6.00, 1.93, 54.8, 1.56, 18413),
(20, 'Armenia', 7, 2957.7, 75.1, 5.49, 1.52, 54.7, 1.56, 13654),
(21, 'Brazil', 1, 211049.5, 75.9, 6.45, 2.68, 54.6, 1.56, 14652),
(22, 'Bangladesh', 6, 163046.2, 72.6, 5.11, 0.88, 54.5, 1.56, 4754),
(23, 'Mexico', 1, 127575.5, 75.0, 6.43, 2.58, 54.3, 1.56, 19766),
(24, 'Uzbekistan', 7, 32981.7, 71.7, 6.15, 1.88, 54.1, 1.56, 6999),
(25, 'Kyrgyzstan', 7, 6415.9, 71.5, 5.69, 1.44, 53.7, 1.56, 5254),
(26, 'Serbia', 7, 8772.2, 76.0, 6.24, 2.69, 53.2, 1.56, 18351),
(27, 'Nepal', 6, 28608.7, 70.8, 5.45, 1.20, 53.1, 1.56, 3417),
(28, 'Thailand', 8, 69625.6, 77.2, 6.02, 2.66, 52.9, 1.56, 18460),
(29, 'Germany', 3, 83517.0, 81.3, 7.04, 4.44, 52.7, 1.56, 53811),
(30, 'Spain', 3, 46736.8, 83.6, 6.46, 4.14, 52.3, 1.56, 40936),
(31, 'France', 3, 65129.7, 82.7, 6.69, 4.41, 51.8, 1.56, 46113),
(32, 'Mauritius', 5, 1269.7, 75.0, 6.24, 2.85, 51.5, 1.56, 22870),
(33, 'Finland', 3, 5532.2, 81.9, 7.78, 5.76, 51.3, 1.56, 48803),
(34, 'Senegal', 5, 16296.4, 67.9, 5.49, 1.15, 51.2, 1.56, 3395),
(35, 'Ireland', 3, 4882.5, 82.3, 7.25, 5.20, 51.1, 1.56, 86826),
(36, 'Albania', 7, 2880.9, 78.6, 5.00, 1.95, 51.0, 1.56, 13724),
(37, 'Moldova', 7, 4043.3, 71.9, 5.80, 2.04, 51.0, 1.56, 13022),
(38, 'Norway', 3, 5378.9, 82.4, 7.44, 5.51, 50.9, 1.56, 64962),
(39, 'Morocco', 4, 36471.8, 76.7, 5.06, 1.82, 50.9, 1.56, 7515),
(40, 'Italy', 3, 60550.1, 83.5, 6.45, 4.45, 50.7, 1.56, 42416),
(41, 'Sweden', 3, 10036.4, 82.8, 7.40, 5.61, 50.5, 1.56, 52642),
(42, 'Palestine, State of', 4, 4981.4, 74.0, 4.48, 0.94, 50.3, 1.56, 6220),
(43, 'Argentina', 1, 44780.7, 76.7, 6.09, 3.19, 50.0, 1.56, 22064),
(44, 'Indonesia', 8, 270625.6, 71.7, 5.35, 1.74, 49.6, 1.56, 11812),
(45, 'Cyprus', 3, 1198.6, 81.0, 6.14, 3.97, 49.4, 1.56, 39545),
(46, 'Venezuela', 1, 28515.8, 72.1, 5.08, 1.59, 48.9, 1.56, 2299),
(47, 'Greece', 3, 10473.5, 82.2, 5.95, 4.04, 48.8, 1.56, 30463),
(48, 'Vietnam', 8, 96462.1, 75.4, 5.47, 2.56, 48.4, 1.56, 8041),
(49, 'Israel', 4, 8519.4, 83.0, 7.33, 6.11, 48.2, 1.56, 40200),
(50, 'Azerbaijan', 7, 10047.7, 73.0, 5.17, 1.97, 48.0, 1.56, 14402),
(51, 'Cambodia', 8, 16486.5, 69.8, 5.00, 1.36, 48.0, 1.56, 4389),
(52, 'Iceland', 3, 339.0, 83.0, 7.53, 6.46, 48.0, 1.56, 55700),
(53, 'Slovenia', 7, 2078.7, 81.3, 6.67, 5.05, 47.9, 1.56, 39030),
(54, 'Bosnia and Herzegovina', 7, 3301.0, 77.4, 6.02, 3.65, 47.8, 1.56, 14922),
(55, 'Paraguay', 1, 7044.6, 74.3, 5.65, 2.80, 47.6, 1.56, 12685),
(56, 'Congo (Brazzaville)', 5, 5380.5, 64.6, 5.21, 1.05, 47.2, 1.56, 3673),
(57, 'Japan', 8, 126860.3, 84.6, 5.91, 4.71, 47.1, 1.56, 41667),
(58, 'Czech Republic', 7, 10689.2, 79.4, 6.97, 5.40, 46.8, 1.56, 40828),
(59, 'Austria', 3, 8955.1, 81.5, 7.20, 6.05, 46.8, 1.56, 56012),
(60, 'Sri Lanka', 6, 21323.7, 77.0, 4.21, 1.50, 46.8, 1.56, 13078),
(61, 'Slovakia', 7, 5457.0, 77.5, 6.24, 4.22, 46.6, 1.56, 31965),
(62, 'Algeria', 4, 43053.1, 76.9, 4.74, 2.22, 46.5, 1.56, 11511),
(63, 'Portugal', 3, 10226.2, 82.0, 6.10, 4.78, 46.3, 1.56, 34905),
(64, 'Romania', 7, 19364.6, 76.0, 6.13, 3.93, 46.2, 1.56, 29969),
(65, 'Croatia', 7, 4130.3, 78.5, 5.63, 3.64, 46.2, 1.56, 28845),
(66, 'Liberia', 5, 4937.4, 64.1, 5.12, 1.07, 46.0, 1.56, 1428),
(67, 'Chile', 1, 18952.0, 80.2, 5.94, 4.44, 45.6, 1.56, 25131),
(68, 'Singapore', 8, 5804.3, 83.6, 6.38, 5.60, 45.5, 1.56, 97341),
(69, 'Hungary', 7, 9684.7, 76.9, 6.00, 4.07, 45.4, 1.56, 32640),
(70, 'Denmark', 3, 5771.9, 80.9, 7.69, 7.05, 45.3, 1.56, 57862),
(71, 'Iraq', 4, 39309.8, 70.6, 4.84, 1.74, 45.3, 1.56, 10881),
(72, 'Kenya', 5, 52574.0, 66.7, 4.62, 0.99, 45.2, 1.56, 4330),
(73, 'Pakistan', 6, 216565.3, 67.3, 4.44, 0.87, 45.1, 1.56, 4690),
(74, 'Poland', 7, 37887.8, 78.7, 6.24, 4.77, 45.0, 1.56, 33226),
(75, 'Bolivia', 1, 11513.1, 71.5, 5.67, 2.94, 45.0, 1.56, 8724),
(76, 'Uganda', 5, 44269.6, 63.4, 4.95, 0.99, 44.8, 1.56, 2187),
(77, 'Yemen', 4, 29161.9, 66.1, 4.20, 0.52, 44.6, 1.56, 1973),
(78, 'Georgia', 7, 3996.8, 73.8, 4.89, 2.43, 44.3, 1.56, 14993),
(79, 'Mozambique', 5, 30366.0, 60.9, 4.93, 0.72, 44.2, 1.56, 1281),
(80, 'Madagascar', 5, 26969.3, 67.0, 4.34, 0.87, 44.2, 1.56, 1647),
(81, 'Tunisia', 4, 11694.7, 76.7, 4.32, 2.12, 43.9, 1.56, 10756),
(82, 'North Macedonia', 7, 2083.5, 75.8, 5.02, 2.95, 43.9, 1.56, 16660),
(83, 'Jordan', 4, 10101.7, 74.5, 4.45, 2.03, 43.9, 1.56, 10071),
(84, 'Iran', 4, 82913.9, 76.7, 5.01, 3.12, 43.6, 1.56, 12389),
(85, 'Malta', 3, 440.4, 82.5, 6.73, 6.50, 43.5, 1.56, 43585),
(86, 'Egypt', 4, 100388.1, 72.0, 4.33, 1.67, 43.2, 1.56, 11763),
(87, 'Taiwan', 8, 23773.9, 80.5, 6.54, 5.97, 43.2, 1.56, 25903),
(88, 'Australia', 2, 25203.2, 83.4, 7.23, 7.53, 43.1, 1.56, 49609),
(89, 'Belarus', 7, 9452.4, 74.8, 5.82, 4.11, 42.9, 1.56, 19249),
(90, 'Laos', 8, 7169.5, 67.9, 5.20, 2.28, 42.8, 1.56, 7826),
(91, 'Libya', 4, 6777.5, 72.9, 5.33, 3.21, 42.7, 1.56, 15174),
(92, 'Belgium', 3, 11539.3, 81.6, 6.77, 6.69, 42.5, 1.56, 51831),
(93, 'Comoros', 5, 850.9, 64.3, 4.61, 1.12, 42.4, 1.56, 3060),
(94, 'China', 8, 1433783.7, 76.9, 5.14, 3.74, 41.9, 1.56, 16092),
(95, 'Malaysia', 8, 31949.8, 76.2, 5.43, 4.07, 41.7, 1.56, 28364),
(96, 'Ethiopia', 5, 112078.7, 66.6, 4.10, 0.94, 41.7, 1.56, 2221),
(97, 'Saudi Arabia', 4, 34268.5, 75.1, 6.56, 5.52, 41.6, 1.56, 46962),
(98, 'Burkina Faso', 5, 20321.4, 61.6, 4.74, 1.06, 41.5, 1.56, 2178),
(99, 'Benin', 5, 11801.2, 61.8, 4.98, 1.39, 41.4, 1.56, 3287),
(100, 'Niger', 5, 23310.7, 62.4, 5.00, 1.51, 41.4, 1.56, 1225),
(101, 'Montenegro', 7, 628.0, 76.9, 5.39, 4.22, 41.3, 1.56, 21603),
(102, 'Turkey', 4, 83429.6, 77.7, 4.87, 3.61, 41.3, 1.56, 28289),
(103, 'Ukraine', 7, 43993.6, 72.1, 4.70, 2.64, 40.9, 1.56, 12810),
(104, 'Congo (Kinshasa)', 5, 86790.6, 60.7, 4.42, 0.73, 40.5, 1.56, 1098),
(105, 'Canada', 2, 37411.0, 82.4, 7.11, 8.15, 40.2, 1.56, 48881),
(106, 'Bulgaria', 7, 7000.1, 75.0, 5.11, 3.83, 40.1, 1.56, 23266),
(107, 'Myanmar', 8, 54045.4, 67.1, 4.43, 1.75, 40.0, 1.56, 5142),
(108, 'Cameroon', 5, 25876.4, 59.3, 4.94, 1.24, 39.9, 1.56, 3642),
(109, 'Gabon', 5, 2172.6, 66.5, 4.91, 2.32, 39.9, 1.56, 14950),
(110, 'South Korea', 8, 51225.3, 83.0, 5.90, 6.45, 39.8, 1.56, 42879),
(111, 'Cote d\'Ivoire', 5, 25716.6, 57.8, 5.39, 1.58, 39.6, 1.56, 5213),
(112, 'Sudan', 5, 42813.2, 65.3, 4.24, 1.34, 39.6, 1.56, 3958),
(113, 'Ghana', 5, 30417.9, 64.1, 4.97, 2.10, 39.5, 1.56, 5413),
(114, 'Mali', 5, 19658.0, 59.3, 4.99, 1.41, 39.3, 1.56, 2322),
(115, 'Rwanda', 5, 12626.9, 69.0, 3.27, 0.61, 39.2, 1.56, 2227),
(116, 'Lebanon', 4, 6855.7, 78.9, 4.02, 3.05, 39.0, 1.56, 14552),
(117, 'Malawi', 5, 18628.7, 64.3, 3.87, 0.89, 38.7, 1.56, 1060),
(118, 'Kazakhstan', 7, 18551.4, 73.6, 6.27, 5.72, 38.6, 1.56, 26352),
(119, 'Haiti', 1, 11263.1, 64.0, 3.61, 0.62, 38.2, 1.56, 2905),
(120, 'Guinea', 5, 12771.2, 61.6, 4.77, 1.77, 38.1, 1.56, 2562),
(121, 'Burundi', 5, 11530.6, 61.6, 3.78, 0.59, 37.7, 1.56, 752),
(122, 'United States of America', 2, 329064.9, 78.9, 6.94, 8.21, 37.4, 1.56, 62530),
(123, 'Togo', 5, 8082.4, 61.0, 4.18, 1.09, 37.3, 1.56, 1597),
(124, 'Tanzania', 5, 58005.5, 65.5, 3.64, 1.09, 37.0, 1.56, 2660),
(125, 'Lithuania', 7, 2759.6, 75.9, 6.06, 6.42, 36.9, 1.56, 37181),
(126, 'Namibia', 5, 2494.5, 63.7, 4.44, 1.94, 36.8, 1.56, 9637),
(127, 'Bhutan', 6, 763.1, 71.8, 5.20, 4.39, 36.7, 1.56, 11832),
(128, 'India', 6, 1366417.8, 69.7, 3.25, 1.22, 36.4, 1.56, 6700),
(129, 'South Africa', 5, 58558.3, 64.1, 5.03, 2.97, 36.2, 1.56, 12482),
(130, 'Eswatini', 5, 1148.1, 60.2, 4.40, 1.67, 35.3, 1.56, 8622),
(131, 'Russia', 7, 145872.3, 72.6, 5.44, 5.46, 34.9, 1.56, 27044),
(132, 'Mauritania', 5, 4525.7, 64.9, 4.15, 2.24, 34.7, 1.56, 5197),
(133, 'Estonia', 7, 1325.6, 78.8, 6.03, 7.85, 34.4, 1.56, 36948),
(134, 'Zambia', 5, 17861.0, 63.9, 3.31, 0.93, 34.4, 1.56, 3470),
(135, 'United Arab Emirates', 4, 9770.5, 78.0, 6.71, 8.94, 34.3, 1.56, 67119),
(136, 'Latvia', 7, 1906.7, 75.3, 5.97, 7.15, 34.1, 1.56, 30965),
(137, 'Nigeria', 5, 200963.6, 54.7, 4.36, 0.99, 34.1, 1.56, 5135),
(138, 'Hong Kong', 8, 7436.2, 84.9, 5.66, 8.60, 33.9, 1.56, 59848),
(139, 'Bahrain', 4, 1641.2, 77.3, 7.10, 9.80, 33.6, 1.56, 45011),
(140, 'Kuwait', 4, 4207.1, 75.5, 6.11, 7.77, 33.3, 1.56, 49854),
(141, 'Turkmenistan', 7, 5942.1, 68.2, 5.47, 5.36, 33.0, 1.56, 7345),
(142, 'Botswana', 5, 2303.7, 69.6, 3.47, 2.66, 31.9, 1.56, 17767),
(143, 'Luxembourg', 3, 615.7, 82.3, 7.40, 12.59, 31.7, 1.56, 114304),
(144, 'Trinidad and Tobago', 1, 1395.0, 73.5, 6.19, 8.24, 31.6, 1.56, 26176),
(145, 'Chad', 5, 15946.9, 54.2, 4.25, 1.67, 30.4, 1.56, 1580),
(146, 'Afghanistan', 6, 38041.8, 64.8, 2.38, 0.73, 29.4, 1.56, 2065),
(147, 'Sierra Leone', 5, 7813.2, 54.7, 3.45, 0.97, 29.0, 1.56, 1718),
(148, 'Zimbabwe', 5, 14645.5, 61.5, 2.69, 0.98, 28.6, 1.56, 2836),
(149, 'Lesotho', 5, 2125.3, 54.3, 3.51, 1.45, 27.3, 1.56, 2704),
(150, 'Central African Republic', 5, 4745.2, 53.3, 3.08, 1.21, 25.2, 1.56, 945),
(151, 'Mongolia', 8, 3225.2, 69.9, 5.56, 10.08, 24.5, 1.56, 12317),
(152, 'Qatar', 4, 2832.1, 80.2, 6.37, 15.04, 24.3, 1.56, 90044);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `happiness_index`
--
ALTER TABLE `happiness_index`
  ADD PRIMARY KEY (`rank`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `happiness_index`
--
ALTER TABLE `happiness_index`
  MODIFY `rank` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
