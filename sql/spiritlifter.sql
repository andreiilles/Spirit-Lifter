-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 06:35 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spiritlifter`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `nume` varchar(50) NOT NULL,
  `prenume` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `nume`, `prenume`, `email`, `password`) VALUES
(0, 'admin', 'admin', 'admin@spiritlifter.ro', 'admin'),
(1, 'Illes', 'Andrei', 'andrei.illes03@e-uvt.ro', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `basket`
--

CREATE TABLE `basket` (
  `id` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `productNAME` varchar(255) DEFAULT NULL,
  `userID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `basket`
--

INSERT INTO `basket` (`id`, `productID`, `productNAME`, `userID`, `quantity`) VALUES
(61, 2, 'Jagermeister - 0.7L', 1, 1),
(62, 2, 'Jagermeister - 0.7L', 1, 1),
(63, 2, 'Jagermeister - 0.7L', 1, 1),
(64, 2, 'Jagermeister - 0.7L', 1, 1),
(65, 2, 'Jagermeister - 0.7L', 1, 1),
(66, 2, 'Jagermeister - 0.7L', 0, 1),
(67, 2, 'Jagermeister - 0.7L', 0, 1),
(68, 2, 'Jagermeister - 0.7L', 0, 1),
(69, 2, 'Jagermeister - 0.7L', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `produse`
--

CREATE TABLE `produse` (
  `id` int(11) NOT NULL,
  `nume` varchar(255) NOT NULL,
  `tip` varchar(255) DEFAULT NULL,
  `pret` float NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produse`
--

INSERT INTO `produse` (`id`, `nume`, `tip`, `pret`, `img`) VALUES
(1, 'Jack Daniels - 0.7L', 'spirtoasa', 77.99, 'https://assets.finestore.ro/image/654x615/produse/catalog/products/GG972-654x615.jpg'),
(2, 'Jagermeister - 0.7L', 'spirtoasa', 95.99, 'https://assets.finestore.ro/image/654x615/produse/catalog/products/HC273-654x615.jpg'),
(3, 'Averesti Diamond Busuioaca Rose Demidulce 0.75L', 'vin', 53.55, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/vin_romania_14/AV002-654x615.jpg'),
(4, 'Flor De Cana 18 Ani 0.7L', 'spirtoasa', 169.96, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/rom/FG974_3_2-654x615.jpg'),
(5, 'Cortel XO Superieur 0.7L', 'spirtoasa', 129.89, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/brandy_2/CG281_3-654x615.jpg'),
(6, 'Belvedere Intense 1L', 'spirtoasa', 189, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/vodka_2/BI11050-654x615.jpg'),
(7, 'Bulgarini Riviera Del Garda Classico DOC Chiaretto 0.75L', 'vin', 68.98, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/vin_italia/DSC_1216-654x615.jpg'),
(8, 'Bacardi 8 Ani 0.7L', 'spirtoasa', 144.59, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/rom/HG905-654x615.jpg'),
(9, 'Bacardi Carta Blanca White 0.7L', 'spirtoasa', 65.87, 'https://assets.finestore.ro/image/654x615/produse/catalog/products/FI569-654x615.jpg'),
(10, 'Baileys Birthday Cake 0.7L', 'spirtoasa', 106.39, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/lichior_4/BB052-654x615.jpg'),
(11, 'Hennessy VSOP Privilege 0.7L', 'spirtoasa', 310.8, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/coniac_2/MT5731_3-654x615.jpg'),
(12, 'Remy Martin VSOP 0.7L', 'spirtoasa', 285.6, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse/coniac/_10648_1_1596026343(1)-654x615.jpg'),
(13, 'Alb de Ceptura 0.75L', 'vin', 66.64, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/vin_romania_14/YD3816-654x615.jpg'),
(14, 'Cricova Tramonto Feteasca Alba 0.75L', 'vin', 32.73, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/vin_moldova_2/TA507_2-654x615.jpg'),
(15, 'Tinazzi Duca Delle Corone Fiano Puglia IGP 0.75L', 'vin', 57.36, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/vin_italia_12/TZ047-654x615.jpg'),
(16, 'Averesti Herb Busuioaca de Bohotin Sec 0.75L\r\n', 'vin', 21.42, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/vin_romania_3/DSC_5900-654x615.jpg'),
(17, 'Sarica Niculitel Caii de la Letea Volumul 1 Sauvignon Blanc 0.75L', 'vin', 36.89, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/vin_romania_9/SN010-654x615.jpg'),
(18, 'Budureasca Premium Chardonnay 0.75L\r\n', 'vin', 43.55, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/vin_romania_10/BD015-654x615.jpg'),
(19, 'Gemma Di Luna Pinot Grigio Delle Venezie DOC 0.75L\r\n', 'vin', 39.95, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/vin_spumant_7/PI733-654x615.jpg'),
(20, 'Tenuta Ulisse 10 Vendemmie Bianco Limited Edition 0.75L\r\n', 'vin', 159.98, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/vin_italia_7/VM1010-654x615.jpg'),
(21, 'Pessac Leognan Les Hauts De Smith 0.75L\r\n', 'vin', 280, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/vin_franta_3/LA117_2-654x615.jpg'),
(22, 'Tinazzi Bardolino Ca De Rocchi Campo Delle Rose Chiaretto DOP 0.75L\r\n', 'vin ', 59.98, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/vin_italia_10/TZ010-654x615.jpg'),
(23, 'Absolut Blue 0.5L', 'spirtoasa', 66.9, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/vodka_3/DB868-654x615.jpg'),
(24, 'Finlandia Classic 1L', 'spirtoasa', 76.05, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/vodka_2/JB985-654x615.jpg'),
(25, 'Stalinskaya Blue 1L', 'spirtoasa', 80.97, 'https://assets.finestore.ro/image/654x615/produse/catalog/products/IW8897-654x615.jpg'),
(26, 'Stalinskaya Silver 1L', 'spirtoasa', 74.2, 'https://assets.finestore.ro/image/654x615/produse/catalog/products/SP6047-654x615.jpg'),
(27, 'Legend Of Kremlin 0.7L', 'spirtoasa', 128.17, 'https://assets.finestore.ro/image/654x615/produse/catalog/products/AC169-654x615.jpg'),
(28, 'Clase Azul Gold 0.7L', 'spirtoasa', 2816.88, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/tequila_2/AZ1017_3-654x615.jpg'),
(29, 'Don Julio 1942 0.7L', 'spirtoasa', 1990, 'https://assets.finestore.ro/image/654x615/produse/catalog/products/ZL8889-654x615.jpg'),
(30, 'Olmeca Altos Reposado 0.7L', 'spirtoasa', 108.37, 'https://assets.finestore.ro/image/654x615/produse/catalog/products/AF4634-654x615.jpg'),
(31, '1800 Tequila Anejo 0.7L', 'spirtoasa', 189.98, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/tequila_2/AN289-654x615.jpg'),
(32, 'The Butterfly Cannon Rosa 0.5L', 'spirtoasa', 119.98, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/tequila_2/BU178-654x615.jpg'),
(33, 'La Cofradia Ed Catrina Blanco 0.7L', 'spirtoasa', 199.98, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/tequila_2/LA11666-654x615.jpg'),
(34, 'Don Julio Reposado 0.7L', 'spirtoasa', 399, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/tequila_2/II385_3-654x615.jpg'),
(35, 'Satryna Cristalino 0.7L', 'spirtoasa', 599.8, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/tequila_2/SA11681_3-654x615.jpg'),
(36, 'The Butterfly Cannon Cristalino 0.5L', 'spirtoasa', 119.98, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/tequila_2/BU223-654x615.jpg'),
(37, 'Bottega Gold Prosecco 0.75L', 'vin', 105.98, 'https://assets.finestore.ro/image/654x615/produse/catalog/products2/LZ1312-654x615.jpg'),
(38, 'Vespa Per DOM Valdobbiadene Prosecco Superiore DOCG Brut 0.75L', 'vin', 69.98, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/vin_spumant_7/CVSPB20-654x615.jpg'),
(39, 'Foss Marai Strada Di Guia 109 Prosecco Valdobbiadene DOCG Brut 1.5L', 'vin', 158.4, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/vin_spumant_6/FM2051-654x615.jpg'),
(40, 'Accademia Vinattieri Rainbow Red Prosecco 0.75L', 'vin', 47.64, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/vin_spumant_3/WP0147-654x615.jpg'),
(41, 'San Martino Prosecco Millesimato Brut 0.75L', 'vin', 49.98, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/vin_spumant_5/DJ946-654x615.jpg'),
(42, 'La Marca Prosecco Doc Treviso Extra Dry 0.75L', 'vin', 51.41, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/vin_spumant_3/LA030-654x615.jpg'),
(43, 'Gemma Di Luna Prosecco DOC Extra Dry 0.187L', 'vin', 35.82, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/prosecco/PR250-654x615.jpg'),
(44, 'Casa Canevel Prosecco DOC Brut 0.75L', 'vin', 58.98, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/vin_spumant_6/MS0130-654x615.jpg'),
(45, 'Dom Perignon Brut 0.75L', 'vin', 1604.93, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/sampanie_3/EG384-654x615.jpg'),
(46, 'Moet & Chandon Rose 0.75L', 'vin', 340.39, 'https://assets.finestore.ro/image/654x615/produse/catalog/products/JE618-654x615.jpg'),
(47, 'Gosset Grand Rose Brut 1.5L', 'vin', 780.46, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/sampanie_2/CO0009-654x615.jpg'),
(48, 'Armand De Brignac Brut Gold Velvet Bag 0.75L', 'vin', 2070.6, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/sampanie/RO7987_2-654x615.jpg'),
(49, 'Gosset Celebris Rose 2008 Brut 0.75L', 'vin', 886.22, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/sampanie_3/CO5913-654x615.jpg'),
(50, 'Moet & Chandon Brut 1.5L', 'vin', 647.38, 'https://assets.finestore.ro/image/654x615/produse/catalog/poze_produse_FS/sampanie/EG903-654x615.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produse`
--
ALTER TABLE `produse`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `produse`
--
ALTER TABLE `produse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
