-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mer. 17 mai 2023 à 12:30
-- Version du serveur :  10.5.19-MariaDB-0+deb11u2
-- Version de PHP :  7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `fronton`
--

-- --------------------------------------------------------

--
-- Structure de la table `valeurs`
--

CREATE TABLE `valeurs` (
  `id` int(11) NOT NULL,
  `temperature` float NOT NULL,
  `humidity` float NOT NULL,
  `eco` int(11) NOT NULL,
  `tvoc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `valeurs`
--

INSERT INTO `valeurs` (`id`, `temperature`, `humidity`, `eco`, `tvoc`) VALUES
(1, 21, 45, 0, 0),
(2, 21, 51, 0, 0),
(3, 21, 51, 400, 0),
(4, 21, 51, 400, 0),
(5, 21, 51, 400, 0),
(6, 21, 51, 400, 0),
(7, 21, 51, 400, 0),
(8, 21, 51, 400, 0),
(9, 21, 50, 400, 0),
(10, 21, 50, 400, 0),
(11, 21, 49, 400, 0),
(12, 21, 49, 400, 0),
(13, 22, 68, 400, 0),
(14, 22, 68, 759, 54),
(15, 22, 89, 945, 83),
(16, 23, 93, 624, 34),
(17, 23, 95, 645, 37),
(18, 24, 95, 567, 25),
(19, 24, 95, 435, 5),
(20, 25, 95, 480, 12),
(21, 26, 95, 913, 78),
(22, 26, 95, 448, 7),
(23, 26, 95, 400, 0),
(24, 26, 95, 400, 0),
(25, 27, 95, 400, 0),
(26, 27, 95, 400, 0),
(27, 27, 95, 400, 0),
(28, 28, 95, 967, 86),
(29, 28, 95, 1181, 118),
(30, 28, 95, 891, 74),
(31, 28, 95, 400, 0),
(32, 29, 84, 400, 0),
(33, 29, 70, 400, 0),
(34, 29, 67, 400, 0),
(35, 29, 70, 400, 0),
(36, 29, 74, 400, 0),
(37, 29, 74, 400, 0),
(38, 30, 86, 400, 0),
(39, 30, 89, 400, 0),
(40, 30, 90, 400, 0),
(41, 30, 91, 401, 0),
(42, 31, 79, 400, 0),
(43, 31, 70, 400, 0),
(44, 31, 64, 400, 0),
(45, 31, 59, 400, 0),
(46, 31, 55, 400, 0),
(47, 31, 51, 400, 0),
(48, 31, 42, 400, 0),
(49, 31, 37, 400, 0),
(50, 31, 36, 400, 0),
(51, 31, 35, 400, 0),
(52, 31, 33, 400, 0),
(53, 31, 33, 400, 0),
(54, 31, 33, 400, 0),
(55, 31, 33, 400, 0),
(56, 31, 33, 400, 0),
(57, 31, 33, 400, 0),
(58, 31, 33, 400, 0),
(59, 31, 32, 400, 0),
(60, 31, 32, 400, 0),
(61, 30, 31, 400, 0),
(62, 30, 31, 400, 0),
(63, 30, 31, 400, 0),
(64, 30, 31, 400, 0),
(65, 30, 30, 400, 0),
(66, 30, 31, 400, 0),
(67, 30, 31, 400, 0),
(68, 30, 31, 400, 0),
(69, 30, 31, 400, 0),
(70, 30, 30, 400, 0),
(71, 29, 31, 400, 0),
(72, 29, 32, 400, 0),
(73, 29, 32, 400, 0),
(74, 29, 32, 400, 0),
(75, 29, 32, 400, 0),
(76, 29, 32, 400, 0),
(77, 29, 32, 400, 0),
(78, 29, 33, 409, 1),
(79, 29, 32, 400, 0),
(80, 29, 33, 400, 0),
(81, 28, 32, 400, 0),
(82, 28, 32, 402, 0),
(83, 28, 32, 411, 1),
(84, 28, 33, 400, 0),
(85, 28, 33, 1281, 134),
(86, 28, 33, 424, 3),
(87, 28, 35, 421, 3),
(88, 28, 34, 400, 0),
(89, 28, 35, 400, 0),
(90, 28, 35, 1118, 109),
(91, 28, 35, 433, 5),
(92, 27, 36, 400, 0),
(93, 27, 41, 748, 53),
(94, 27, 47, 1207, 122),
(95, 27, 47, 765, 55),
(96, 27, 73, 757, 54),
(97, 28, 80, 629, 34),
(98, 28, 84, 457, 8),
(99, 28, 86, 461, 9),
(100, 28, 86, 400, 0),
(101, 28, 86, 400, 0),
(102, 28, 86, 403, 0),
(103, 30, 87, 400, 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `valeurs`
--
ALTER TABLE `valeurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `valeurs`
--
ALTER TABLE `valeurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
