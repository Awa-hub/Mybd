-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 01 avr. 2022 à 12:53
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
-- Base de données : `odk_db_pointage`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE `administrateur` (
  `id` bigint(20) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `date_creation` date DEFAULT NULL,
  `date_modification` date DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `etat` int(11) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `imageurl` varchar(255) DEFAULT NULL,
  `login` varchar(255) NOT NULL,
  `mot_de_pass` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `supprimer` bit(1) DEFAULT NULL,
  `telephone` int(11) NOT NULL,
  `profile_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `administrateur`
--

INSERT INTO `administrateur` (`id`, `adresse`, `date_creation`, `date_modification`, `email`, `etat`, `genre`, `imageurl`, `login`, `mot_de_pass`, `nom`, `prenom`, `supprimer`, `telephone`, `profile_id`) VALUES
(1, 'Bamako', '2021-12-16', NULL, 'mk@gmail.com', 0, 'HOMME', 'http://localhost/images/samassekou.png', 'mk', 'qwerty', 'MK', 'sm', b'0', 90302635, 1);

-- --------------------------------------------------------

--
-- Structure de la table `administrateur_pointages`
--

CREATE TABLE `administrateur_pointages` (
  `administrateurs_id` bigint(20) NOT NULL,
  `pointages_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `administrateur_utilisateurs`
--

CREATE TABLE `administrateur_utilisateurs` (
  `administrateurs_id` bigint(20) NOT NULL,
  `utilisateurs_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

CREATE TABLE `groupe` (
  `id` bigint(20) NOT NULL,
  `date_creation` date DEFAULT NULL,
  `date_modification` date DEFAULT NULL,
  `etat` int(11) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `nombre_personne` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `groupe`
--

INSERT INTO `groupe` (`id`, `date_creation`, `date_modification`, `etat`, `nom`, `nombre_personne`) VALUES
(1, '2021-12-16', NULL, 0, 'Groupe 1', 9);

-- --------------------------------------------------------

--
-- Structure de la table `log`
--

CREATE TABLE `log` (
  `id` bigint(20) NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `heure` time DEFAULT NULL,
  `nom_complet` varchar(255) DEFAULT NULL,
  `type_acteur` varchar(255) DEFAULT NULL,
  `administrateur_id` bigint(20) DEFAULT NULL,
  `utilisateur_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `pointage`
--

CREATE TABLE `pointage` (
  `id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `heure_arrivee` time NOT NULL,
  `heure_depart` time DEFAULT NULL,
  `utilisateur_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `profile`
--

CREATE TABLE `profile` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `libelle` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `profile`
--

INSERT INTO `profile` (`id`, `description`, `libelle`) VALUES
(1, 'Super Administrateur du système !', 'SUPERADMIN'),
(2, ' Administrateur du système ', 'ADMIN');

-- --------------------------------------------------------

--
-- Structure de la table `promotion`
--

CREATE TABLE `promotion` (
  `id` bigint(20) NOT NULL,
  `annee` int(11) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `horaire_debut_journee` time NOT NULL,
  `horaire_fin_journee` time DEFAULT NULL,
  `nom` varchar(255) NOT NULL,
  `nombre_femmes` int(11) NOT NULL,
  `nombre_hommes` int(11) NOT NULL,
  `total_apprenants` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `promotion`
--

INSERT INTO `promotion` (`id`, `annee`, `date_debut`, `date_fin`, `horaire_debut_journee`, `horaire_fin_journee`, `nom`, `nombre_femmes`, `nombre_hommes`, `total_apprenants`) VALUES
(1, 2021, '2021-11-03', '2022-02-26', '09:00:00', '17:00:00', 'Promotion 1', 39, 1, 40);

-- --------------------------------------------------------

--
-- Structure de la table `promotion_administrateurs`
--

CREATE TABLE `promotion_administrateurs` (
  `promotions_id` bigint(20) NOT NULL,
  `administrateurs_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `type_user` varchar(31) NOT NULL,
  `id` bigint(20) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `date_creation` date DEFAULT NULL,
  `date_modification` date DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `etat` int(11) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `imageurl` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `mot_de_pass` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `supprimer` bit(1) NOT NULL,
  `telephone` int(11) NOT NULL,
  `groupe_id` bigint(20) DEFAULT NULL,
  `promotion_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_sx9jdegq1lxeeh2twnsgysr4v` (`telephone`),
  ADD UNIQUE KEY `UK_japhbtjxjwd39di9pv06o36b3` (`email`) USING HASH,
  ADD UNIQUE KEY `UK_dg46gcc4elv219m9468n23cb5` (`login`) USING HASH,
  ADD KEY `FKgac9t0elmn7o5vbflfo3vuff0` (`profile_id`);

--
-- Index pour la table `administrateur_pointages`
--
ALTER TABLE `administrateur_pointages`
  ADD KEY `FK6u73fmar2jgrgv63eng48ey62` (`pointages_id`),
  ADD KEY `FKphjefijqvr52aq4ff6v2ufurf` (`administrateurs_id`);

--
-- Index pour la table `administrateur_utilisateurs`
--
ALTER TABLE `administrateur_utilisateurs`
  ADD KEY `FKjahhl1le4s80h855u4tahbgcm` (`utilisateurs_id`),
  ADD KEY `FKhdmv6bv5lgbtma6vkp086reqa` (`administrateurs_id`);

--
-- Index pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKajge82byb8sqbwu957s9b3uy1` (`administrateur_id`),
  ADD KEY `FK6heuae0c9vads6bm1j8wbgwae` (`utilisateur_id`);

--
-- Index pour la table `pointage`
--
ALTER TABLE `pointage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK4pci48yr22bsg0ufs1si2q5ro` (`utilisateur_id`);

--
-- Index pour la table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_oijgyglb6q3reoet6vgfjsxu0` (`nom`) USING HASH;

--
-- Index pour la table `promotion_administrateurs`
--
ALTER TABLE `promotion_administrateurs`
  ADD KEY `FKr55a7v034t50s9wx4qw9y1cjh` (`administrateurs_id`),
  ADD KEY `FKc12su5pun64lragkmxxvbihvp` (`promotions_id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_m743qx26ouhlxlykspth3gs3k` (`telephone`),
  ADD UNIQUE KEY `UK_rma38wvnqfaf66vvmi57c71lo` (`email`) USING HASH,
  ADD UNIQUE KEY `UK_18vwp4resqussqmlpqnymfqxk` (`login`) USING HASH,
  ADD KEY `FK1b1dlxawcfeuqi7rvq83siuey` (`groupe_id`),
  ADD KEY `FKt0wtc0b7xugjg43nu7j8onf8f` (`promotion_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `administrateur`
--
ALTER TABLE `administrateur`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `groupe`
--
ALTER TABLE `groupe`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `log`
--
ALTER TABLE `log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pointage`
--
ALTER TABLE `pointage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
