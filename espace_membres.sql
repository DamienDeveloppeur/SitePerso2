-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 13 avr. 2020 à 15:51
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `espace membres`
--

-- --------------------------------------------------------

--
-- Structure de la table `chat`
--

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(20) NOT NULL,
  `message` varchar(350) NOT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `chat`
--

INSERT INTO `chat` (`ID`, `pseudo`, `message`, `date_time`) VALUES
(1, 'trollman', 'Je test', '2020-02-27 13:05:19'),
(2, 'trollman', 'Je test', '2020-02-27 13:58:26'),
(3, 'trollman', 'test', '2020-02-27 13:59:59'),
(4, 'trollman', 'test génial', '2020-02-27 14:00:06'),
(5, 'trollman', 'test génial', '2020-02-27 14:01:49'),
(6, 'trollman', 'test génial', '2020-02-27 14:02:12'),
(7, 'trollman', 'test génial', '2020-02-27 14:02:31'),
(8, 'trollman', 'ça marche a moitié', '2020-02-27 14:02:42'),
(9, 'trollman', 'ça marche a moitié', '2020-02-27 14:05:07'),
(10, 'trollman', 'ça marche a moitié', '2020-02-27 14:06:49'),
(11, 'trollman', 'ça marche a moitié', '2020-02-27 14:07:27'),
(12, 'trollman', 'presque', '2020-02-27 14:07:35'),
(13, 'trollman', 'presque', '2020-02-27 14:07:55'),
(14, 'trollman', 'presque', '2020-02-27 14:08:04'),
(15, 'trollman', 'presque', '2020-02-27 14:08:07'),
(16, 'trollman', 'ça marche pas', '2020-02-27 14:12:03'),
(17, 'trollman', 'ça marche pas', '2020-02-27 14:12:37'),
(18, 'charles', 'ah ça bug', '2020-02-27 15:18:49'),
(19, 'charles', 'ah ça bug', '2020-02-27 15:19:56'),
(20, 'charles', 'ah ça bug', '2020-02-27 15:23:12'),
(21, 'charles', 'ah ça bug', '2020-02-27 15:24:51'),
(22, 'charles', 'ah ça bug', '2020-02-27 15:25:25'),
(23, 'charles', 'ça marche niquel', '2020-02-27 15:25:35'),
(24, 'trollman', 'Je test !', '2020-02-28 15:07:04'),
(25, 'trollman', 'et bah je troll !', '2020-03-10 16:20:40'),
(26, 'trollman', 'et bah je troll !', '2020-03-10 16:25:16'),
(27, 'trollman', 'je test cay drole', '2020-03-10 16:26:58'),
(28, 'trollman', 'je test cay drole', '2020-03-10 16:28:28'),
(29, 'trollman', 'je test cay drole', '2020-03-10 16:28:42'),
(30, 'trollman', 'je test cay drole', '2020-03-10 16:29:53'),
(31, 'trollman', 'je test cay drole', '2020-03-10 16:30:07'),
(32, 'trollman', 'nouveau test maggle !', '2020-03-10 16:30:45'),
(33, 'trollman', 'nouveau test maggle !', '2020-03-10 16:34:12'),
(34, 'trollman', 'KOM JE TE TROLL LE CHAT', '2020-03-10 16:40:09'),
(35, 'zapatroll', 'gergerg', '2020-03-25 10:24:07'),
(36, 'zapatroll', 'gergerg', '2020-03-25 10:24:11'),
(37, 'zapatroll', 'ur(u', '2020-03-25 10:30:45'),
(38, 'zapatroll', 'ur(u', '2020-03-25 10:30:50'),
(39, 'zapatroll', 'jhj', '2020-03-25 17:19:39'),
(40, 'zapatroll', 'jhj', '2020-03-25 17:24:32'),
(41, 'zapatroll', 'jhj', '2020-03-25 17:25:36'),
(42, 'zapatroll', 'jhj', '2020-03-25 17:27:08'),
(43, 'zapatroll', 'jhj', '2020-03-25 17:28:28'),
(44, 'zapatroll', 'rest', '2020-03-25 17:28:35'),
(45, 'king', 'je troll et je test', '2020-03-26 11:04:36'),
(46, 'king', 'lol', '2020-03-26 11:28:43');

-- --------------------------------------------------------

--
-- Structure de la table `donneesmembre`
--

DROP TABLE IF EXISTS `donneesmembre`;
CREATE TABLE IF NOT EXISTS `donneesmembre` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `adresse` varchar(150) NOT NULL,
  `téléphone` int(100) NOT NULL,
  `metier` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

DROP TABLE IF EXISTS `groupe`;
CREATE TABLE IF NOT EXISTS `groupe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statut` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `groupe`
--

INSERT INTO `groupe` (`id`, `statut`) VALUES
(1, 'user'),
(2, 'modo'),
(3, 'admin'),
(4, 'troll');

-- --------------------------------------------------------

--
-- Structure de la table `livredor`
--

DROP TABLE IF EXISTS `livredor`;
CREATE TABLE IF NOT EXISTS `livredor` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(30) NOT NULL,
  `post` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `livredor`
--

INSERT INTO `livredor` (`ID`, `pseudo`, `post`) VALUES
(1, 'troll', 'je troll'),
(2, 'troll', 'je troll'),
(3, 'Napoleon', 'Je valide ce site'),
(4, 'staline', 'je test'),
(5, 'king', 'test');

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

DROP TABLE IF EXISTS `membres`;
CREATE TABLE IF NOT EXISTS `membres` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_inscription` date NOT NULL,
  `statut` int(11) NOT NULL DEFAULT 0,
  `ID_groupe` int(11) NOT NULL,
  `avatar` varchar(150) NOT NULL DEFAULT 'logoEthicode.png',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `membres`
--

INSERT INTO `membres` (`ID`, `pseudo`, `pass`, `email`, `date_inscription`, `statut`, `ID_groupe`, `avatar`) VALUES
(1, 'trolleur', 'pol', 'trolleurhotmail.com', '2020-01-26', 0, 0, 'logoEthicode.png'),
(2, 'gaspard', 'pol', 'trolleur@hotmail.com', '2020-01-26', 0, 0, 'logoEthicode.png'),
(3, 'melchior', 'pol', 'melchior@hotmail.com', '2020-01-27', 0, 0, 'logoEthicode.png'),
(4, 'vincent', 'pol', 'vincent@gmail.com', '2020-01-27', 0, 0, 'logoEthicode.png'),
(5, 'nouas', 'pol', 'nouas@nouas.org', '2020-01-27', 0, 0, 'logoEthicode.png'),
(6, 'temtem', 'pol', 'temtem@hotmail.fr', '2020-01-28', 0, 0, 'logoEthicode.png'),
(7, 'polpot', 'pol', 'polpot@gmail.fr', '2020-01-28', 0, 3, 'logoEthicode.png'),
(8, 'staline', 'pol', 'staline@moscou.com', '2020-01-28', 0, 3, 'logoEthicode.png'),
(9, 'salazar', 'pol', 'salazar@portugal.com', '2020-01-28', 0, 3, 'logoEthicode.png'),
(10, 'edouard', 'pol', 'edouard@gmail.com', '2020-01-28', 0, 4, 'logoEthicode.png'),
(11, 'napoleon', 'pol', 'napoleon@gmail.fr', '2020-01-28', 0, 3, 'logoEthicode.png'),
(15, 'cassandre', 'pol', 'cassandre@trollesse.com', '2020-01-28', 0, 3, 'logoEthicode.png'),
(19, 'geralt', 'pol', 'geralt@deriv.com', '2020-01-30', 0, 2, 'logoEthicode.png'),
(28, 'fabrice', '$2y$10$X2TcrdD/scMqA4i1bzM7LuAHMaYqEohgGsv6tE3BV2T5CGvQ.OIou', 'fabrice@hotmail.com', '2020-02-07', 0, 1, 'logoEthicode.png'),
(20, 'gabriel', 'pol', 'gaby@hotmail.com', '2020-01-30', 0, 1, 'logoEthicode.png'),
(26, 'morgane', '$2y$10$rPK9aqM7PHrV1k.Y3V9AIO15Zl/ScRaSPHHenZxjQxiN9FBf02/s.', 'morg@troll.com', '2020-01-31', 0, 1, 'logoEthicode.png'),
(27, 'lucas', '$2y$10$j9MiXcW3SomqLrIb69jyGuooaKRoDu11uyrEsSZVzWkLNd8At.jH2', 'fzefe', '2020-02-04', 0, 1, 'logoEthicode.png'),
(29, 'trollman', '$2y$10$xjIkmApZoaFrnwoDbQYuLeaGsi5LYzzcrEq9UFSpCUNgSYyMnfJi2', 'trolleur@hotmail.com', '2020-02-25', 0, 1, '29.jpg'),
(30, 'charles', '$2y$10$ag3.R413hRUTBSehaevqFuZE.JZbUUO7Hhq8/FAxKkpAgLLX5Wq8e', 'charles@hotmail.com', '2020-02-27', 0, 1, '30.jpg'),
(59, 'zapabon', '$2y$10$2Ug0r78IxTjENXeJJlSLAOCBmKWBI7XtHfAsqcXH/D7MBAU/a3Kqy', 'fefefe@gefef.com', '2020-03-12', 0, 1, 'logoEthicode.png'),
(58, 'zapata', '$2y$10$xAHk/0gZDizhSXCc8lNw8.3j9jrxT0LEgt6hNp5OxtSBAzqx3fPz6', 'zapatroll@hotmail.com', '2020-03-12', 0, 1, 'logoEthicode.png'),
(60, 'zapatroll', '$2y$10$Vi2HSJHp9TZps4xXSe9Ox.bFcPy6eVygi.zTLK/iLu2TpaAH2Hcte', 'gregersgqerg@hotmail.com', '2020-03-25', 0, 1, 'logoEthicode.png'),
(61, 'kingtroll', '$2y$10$5DL.dNj0n5Y22pRWAa9axecNzRENhJDH1BuTFm24JocnV2B//4HJq', 'grehrtjserhgqregeqr@hotmail.com', '2020-03-25', 0, 1, 'logoEthicode.png'),
(62, 'king', '$2y$10$Dly4q.MGl35iIdkPJUuQIOQGlbf2JEJol86l7UM.cpQltEFyxpIVC', 'king@hotmail.com', '2020-03-26', 0, 1, '62.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
