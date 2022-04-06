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
-- Base de données : `gestion`
--

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `id_classe` int(11) NOT NULL,
  `libelle` varchar(25) NOT NULL,
  `montant_total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`id_classe`, `libelle`, `montant_total`) VALUES
(1, '1ère année', 150000),
(2, '2ème année', 150000),
(3, '3ème année', 150000),
(4, '4ème année', 150000),
(5, '5ème année', 150000);

-- --------------------------------------------------------

--
-- Structure de la table `comptable`
--

CREATE TABLE `comptable` (
  `id_comptable` int(11) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `comptable_password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `comptable`
--

INSERT INTO `comptable` (`id_comptable`, `nom`, `prenom`, `username`, `comptable_password`) VALUES
(1, 'KEITA', 'Awa', 'awak', 'test');

-- --------------------------------------------------------

--
-- Structure de la table `eleve`
--

CREATE TABLE `eleve` (
  `id_eleve` int(11) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `date_naiss` date NOT NULL,
  `lieu_naiss` varchar(25) NOT NULL,
  `adresse` varchar(25) NOT NULL,
  `sexe` varchar(25) NOT NULL,
  `annee` varchar(25) NOT NULL,
  `pere` varchar(25) NOT NULL,
  `mere` varchar(25) NOT NULL,
  `contact` int(11) NOT NULL,
  `id_classe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `eleve`
--

INSERT INTO `eleve` (`id_eleve`, `nom`, `prenom`, `date_naiss`, `lieu_naiss`, `adresse`, `sexe`, `annee`, `pere`, `mere`, `contact`, `id_classe`) VALUES
(1, 'Keita', 'Awa', '2021-11-30', 'Hamdallaye', 'Mali', 'Feminin', '2021-2022', 'awa', 'awa Keita', 888888, 2);

-- --------------------------------------------------------

--
-- Structure de la table `eleve_paiement`
--

CREATE TABLE `eleve_paiement` (
  `id_eleve_paiement` int(11) NOT NULL,
  `n_recu` int(11) NOT NULL,
  `reference` varchar(30) NOT NULL,
  `date_paiement` date NOT NULL,
  `annee_scolaire` varchar(25) NOT NULL,
  `frais_inscription` float NOT NULL,
  `montant_a_payer` float NOT NULL,
  `solde_restant_a_payer` float NOT NULL,
  `id_eleve` int(11) NOT NULL,
  `id_comptable` int(11) NOT NULL,
  `id_paiement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `paiement`
--

CREATE TABLE `paiement` (
  `id_paiement` int(11) NOT NULL,
  `type_paiement` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `paiement`
--

INSERT INTO `paiement` (`id_paiement`, `type_paiement`) VALUES
(1, 'Entier'),
(2, 'Trimestre');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`id_classe`);

--
-- Index pour la table `comptable`
--
ALTER TABLE `comptable`
  ADD PRIMARY KEY (`id_comptable`);

--
-- Index pour la table `eleve`
--
ALTER TABLE `eleve`
  ADD PRIMARY KEY (`id_eleve`),
  ADD KEY `id_classe` (`id_classe`);

--
-- Index pour la table `eleve_paiement`
--
ALTER TABLE `eleve_paiement`
  ADD PRIMARY KEY (`id_eleve_paiement`),
  ADD UNIQUE KEY `n_recu` (`n_recu`),
  ADD KEY `id_eleve` (`id_eleve`),
  ADD KEY `id_comptable` (`id_comptable`),
  ADD KEY `id_paiement` (`id_paiement`);

--
-- Index pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD PRIMARY KEY (`id_paiement`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `classe`
--
ALTER TABLE `classe`
  MODIFY `id_classe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `comptable`
--
ALTER TABLE `comptable`
  MODIFY `id_comptable` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `eleve`
--
ALTER TABLE `eleve`
  MODIFY `id_eleve` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `eleve_paiement`
--
ALTER TABLE `eleve_paiement`
  MODIFY `id_eleve_paiement` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `paiement`
--
ALTER TABLE `paiement`
  MODIFY `id_paiement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `eleve`
--
ALTER TABLE `eleve`
  ADD CONSTRAINT `eleve_ibfk_1` FOREIGN KEY (`id_classe`) REFERENCES `classe` (`id_classe`);

--
-- Contraintes pour la table `eleve_paiement`
--
ALTER TABLE `eleve_paiement`
  ADD CONSTRAINT `eleve_paiement_ibfk_1` FOREIGN KEY (`id_eleve`) REFERENCES `eleve` (`id_eleve`),
  ADD CONSTRAINT `eleve_paiement_ibfk_2` FOREIGN KEY (`id_comptable`) REFERENCES `comptable` (`id_comptable`),
  ADD CONSTRAINT `eleve_paiement_ibfk_3` FOREIGN KEY (`id_paiement`) REFERENCES `paiement` (`id_paiement`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
