-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 01 avr. 2022 à 12:51
-- Version du serveur : 10.4.20-MariaDB
-- Version de PHP : 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dash_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `id_admin` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `liste_presence`
--

CREATE TABLE `liste_presence` (
  `id` int(11) NOT NULL,
  `arriver` time DEFAULT NULL,
  `date` date DEFAULT NULL,
  `depart` time DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `liste_presence`
--

INSERT INTO `liste_presence` (`id`, `arriver`, `date`, `depart`, `user_id`) VALUES
(3, '12:04:01', '2021-11-01', '10:38:35', 5);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `date_creation` date DEFAULT NULL,
  `date_modification` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `profil` varchar(255) DEFAULT NULL,
  `status_utilisateur` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `age`, `date_creation`, `date_modification`, `email`, `genre`, `login`, `nom`, `password`, `prenom`, `profil`, `status_utilisateur`, `telephone`, `status`) VALUES
(4, 20, '2021-05-10', '2021-05-10', 'ami@gmail.com', 'Femme', 'azerty', 'Keita', '12345678', 'Ami', 'formateur', 'activer', '12345678', 'activer'),
(5, 20, '2021-05-17', '2021-06-11', 'tieckby@gmail.com', 'Homme', 'azerty', 'Sogodoko', 'azerty', 'Tieckby', 'apprenant', 'activer', '12345678', NULL),
(6, 30, '2021-05-17', '2021-06-11', 'alima@gmail.com', 'Femme', 'azerty', 'Bath', 'azerty', 'Alima', 'apprenant', 'desactiver', '12345678', NULL),
(7, 30, '2021-02-17', '2021-06-15', 'moh@gmail.com', 'Homme', 'azerty', 'Bath', 'azerty', 'Mohamed', 'apprenant', 'activer', '12345678', NULL),
(8, 30, '2021-05-17', '2021-06-11', 'alima@gmail.com', 'Femme', 'azerty', 'Bath', 'azerty', 'Alima', 'apprenant', 'desactiver', '12345678', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `liste_presence`
--
ALTER TABLE `liste_presence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKmi0rexbrlbnrjoccmch7epgpb` (`user_id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `liste_presence`
--
ALTER TABLE `liste_presence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
