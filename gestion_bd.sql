-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Lun 13 Février 2017 à 23:02
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestion_bd`
--

-- --------------------------------------------------------

--
-- Structure de la table `historic`
--

CREATE TABLE `historic` (
  `id` int(5) NOT NULL,
  `id_prod` int(5) NOT NULL,
  `sell_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `historic`
--

INSERT INTO `historic` (`id`, `id_prod`, `sell_date`) VALUES
(1, 26, '2017-02-11 00:56:11'),
(2, 26, '2017-02-11 01:28:29'),
(3, 26, '2017-02-11 01:28:44'),
(4, 26, '2017-02-11 01:30:28'),
(5, 27, '2017-02-11 01:33:03'),
(6, 26, '2017-02-11 01:33:03'),
(7, 27, '2017-02-11 01:33:50'),
(8, 26, '2017-02-11 01:33:50'),
(9, 27, '2017-02-11 01:34:49'),
(10, 26, '2017-02-11 01:34:49'),
(11, 27, '2017-02-11 01:35:49'),
(12, 26, '2017-02-11 01:35:49'),
(13, 27, '2017-02-11 01:36:54'),
(14, 26, '2017-02-11 01:36:54'),
(15, 27, '2017-02-12 22:40:03'),
(16, 27, '2017-02-12 23:01:50'),
(17, 26, '2017-02-12 23:01:50');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(5) NOT NULL,
  `qrcode` varchar(12) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `info` varchar(40) DEFAULT NULL,
  `prixv` float DEFAULT NULL,
  `quantity` int(9) NOT NULL DEFAULT '1',
  `provider` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'état du produit',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `products`
--

INSERT INTO `products` (`id`, `qrcode`, `name`, `brand`, `info`, `prixv`, `quantity`, `provider`, `status`, `date`) VALUES
(25, '1555', 'disque dure', 'wd', '300 gb', 150, 2, 'mbm', 1, '2016-12-31 01:52:10'),
(26, '1598', 'new', 'new', 'new', 95214, 5, 'new', 1, '2017-01-03 21:34:32'),
(18, '6789', 'flash', 'verbatime', '8 gb', 4, 7, 'zzzz', 0, '2016-12-18 00:20:16'),
(21, '2345', 'aze', 'aze', 'aze', 3000, 30, 'aze', 0, '2016-12-18 00:51:46'),
(27, '1234', 'disque dure', 'wd', '200', 100, 45, 'ba3', 1, '2017-01-03 22:45:03'),
(28, '9876', 'new', 'aze', 'new', 4000, 5000, 'ba3', 0, '2017-01-03 22:47:56'),
(29, NULL, 'disque dure', 'verbatime', '1 Tb', 160, 1, 'mbm', 0, '2017-02-10 01:31:39'),
(30, NULL, 'casque', 'havit', 'sm200', 9.5, 5, 'igl', 0, '2017-02-12 23:24:42');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `historic`
--
ALTER TABLE `historic`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `qrcode` (`qrcode`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `historic`
--
ALTER TABLE `historic`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
