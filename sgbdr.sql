-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 09 sep. 2024 à 12:23
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sgbdr`
--

-- --------------------------------------------------------

--
-- Structure de la table `harvest`
--

CREATE TABLE `harvest` (
  `NumW` int(11) DEFAULT NULL,
  `NumP` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `harvest`
--

INSERT INTO `harvest` (`NumW`, `NumP`, `Quantity`) VALUES
(1, 1, 300),
(2, 2, 200),
(3, 3, 150),
(4, 4, 350),
(5, 5, 400),
(6, 6, 250),
(7, 7, 500),
(8, 8, 300),
(9, 9, 450),
(10, 10, 100),
(11, 11, 600),
(12, 12, 200);

-- --------------------------------------------------------

--
-- Structure de la table `producer`
--

CREATE TABLE `producer` (
  `NumP` int(11) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Region` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `producer`
--

INSERT INTO `producer` (`NumP`, `FirstName`, `LastName`, `Region`) VALUES
(1, 'John', 'Smith', 'Sousse'),
(2, 'Emma', 'Johnson', 'Tunis'),
(3, 'Michael', 'Williams', 'Sfax'),
(4, 'Emily', 'Brown', 'Sousse'),
(5, 'James', 'Jones', 'Sousse'),
(6, 'Sarah', 'Davis', 'Tunis'),
(7, 'David', 'Miller', 'Sfax'),
(8, 'Olivia', 'Wilson', 'Monastir'),
(9, 'Daniel', 'Moore', 'Sousse'),
(10, 'Sophia', 'Taylor', 'Tunis'),
(11, 'Matthieu', 'Anderson', 'Sfax'),
(12, 'Amélia', 'Thomas', 'Sousse');

-- --------------------------------------------------------

--
-- Structure de la table `wine`
--

CREATE TABLE `wine` (
  `NumW` int(11) NOT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Degree` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `wine`
--

INSERT INTO `wine` (`NumW`, `Category`, `Year`, `Degree`) VALUES
(1, 'Rouge', 2019, 13.5),
(2, 'Blanc', 2020, 12),
(3, 'Rose', 2018, 11.5),
(4, 'Red', 2021, 14),
(5, 'Sparkling', 2017, 10.5),
(6, 'Blanc', 2019, 12.5),
(7, 'Rouge', 2022, 13),
(8, 'Rose', 2020, 11),
(9, 'Rouge', 2018, 12),
(10, 'Sparkling', 2019, 10),
(11, 'Blanc', 2021, 11.5),
(12, 'Rouge', 2022, 15);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `harvest`
--
ALTER TABLE `harvest`
  ADD KEY `NumW` (`NumW`),
  ADD KEY `NumP` (`NumP`);

--
-- Index pour la table `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`NumP`);

--
-- Index pour la table `wine`
--
ALTER TABLE `wine`
  ADD PRIMARY KEY (`NumW`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `harvest`
--
ALTER TABLE `harvest`
  ADD CONSTRAINT `harvest_ibfk_1` FOREIGN KEY (`NumW`) REFERENCES `wine` (`NumW`),
  ADD CONSTRAINT `harvest_ibfk_2` FOREIGN KEY (`NumP`) REFERENCES `producer` (`NumP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
