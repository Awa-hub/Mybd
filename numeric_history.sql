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
-- Base de données : `numeric_history`
--

-- --------------------------------------------------------

--
-- Structure de la table `personnages`
--

CREATE TABLE `personnages` (
  `id` int(11) NOT NULL,
  `nom_complet` varchar(50) NOT NULL,
  `nom_image` varchar(50) NOT NULL,
  `historique` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `personnages`
--

INSERT INTO `personnages` (`id`, `nom_complet`, `nom_image`, `historique`) VALUES
(1, 'Tim Berners-Lee', 'images\\Tim_berners_lee.jpg', 'Timothy John Berners-Lee, né le 8 juin 1955 à Londres, est un informaticien britannique, principal inventeur du World Wide Web (WWW) au tournant des années 1990 lors de ses travaux au CERN. En juillet 2004, il est fait chevalier par la reine Élisabeth II pour ce travail et son nom officiel devient Sir Timothy John Berners-Lee. Depuis 1994, il préside le World Wide Web Consortium (W3C), organisme qu\'il a fondé. Il est lauréat du prix Turing 2016.\r\n\r\nTim Berners-Lee est considéré comme l\'inventeur du HTML en 1992. Il fut aidé à ses débuts par l\'ingénieur et informaticien belge Robert Cailliau qui cosigna notamment avec lui, en novembre 1990, un document désormais entré dans l\'Histoire et intitulé « WorldWideWeb : Proposition pour un projet hypertexte».'),
(2, 'Richard Hamming', 'images\\RichardHamming.jpg', 'Richard Hamming, né le 11 février 1915 à Chicago (Illinois) et mort le 7 janvier 1998 à Monterey (Californie) est un mathématicien américain célèbre pour ses travaux sur la théorie des codes qui lui valent le prestigieux prix Turing en 1968 — les codes de Hamming et distance de Hamming sont ainsi nommés en son hommage. Il rejoint le projet Manhattan en 1945, pour lequel il programme l’un des premiers calculateurs d’après les modèles des physiciens et des chimistes du projet pour vérifier qu’une explosion nucléaire n’est pas susceptible d’enflammer l’atmosphère. La suite de sa carrière se déroule dans les laboratoires Bell où il travaille avec Claude Shannon. Il fonde et préside un temps l’Association for Computing Machinery.'),
(3, 'Larry Ellison', 'images\\LarryEllison.jpeg', 'Larry Ellison débute sa carrière dans les années 1970 au sein de l\'entreprise Ampex. Il y découvre les architectures de bases de données. Il est notamment chargé d\'en concevoir une pour la CIA. Il met ses connaissances à profit et fonde Software Development Laboratories en 1977. Ses produits sont alors en concurrence avec ceux de Sybase et de Microsoft SQL Server. L\'entreprise change de nom une première fois et devient Relational Software Inc, puis, en 1983, Oracle System Corporation.\r\n\r\nLorsque Steve Jobs reprend les rênes d\'Apple en 1997, il offre un poste de directeur à Larry Ellison. Ce dernier reste en place jusqu\'en 2002 avant de se re-concentrer sur Oracle qui fait face à une concurrence plus rude de la part de Microsoft et d\'IBM qui a racheté Sybase. Plusieurs années plus tard, en 2010, Larry Ellison finalise le rachat de Sun Microsystems, ce qui donne à Oracle le contrôle sur l\'architecture de la base de données open source MySQL ainsi que sur la technologie Java.'),
(4, 'jimmy Wales', 'images\\jimmyWales.jpg', 'Jimmy Donal Wales, surnommé Jimbo Wales, est un homme d\'affaires américain, né le 8 août 1966, à Huntsville en Alabama, aux États-Unis.\r\nIl est le fondateur du portail web américain Bomis et cofondateur avec Larry Sanger de l\'encyclopédie libre et gratuite du web Wikipédia (jouant également un rôle dans la galaxie Wikimedia à laquelle appartient Wikipédia), ainsi que d\'autres projets fondés sur le wiki, comme Wikia (devenu Fandom)..'),
(5, 'Ada Lovelace', 'images\\AdaLovelace.jpg', 'Ada Lovelace, de son nom complet Augusta Ada King, comtesse de Lovelace, née Ada Byron le 10 décembre 1815 à Londres et morte le 27 novembre 1852 à Marylebone dans la même ville, est une pionnière de la science informatique.\r\n\r\nElle est principalement connue pour avoir réalisé le premier véritable programme informatique, lors de son travail sur un ancêtre de l\'ordinateur : la machine analytique de Charles Babbage. Dans ses notes, on trouve en effet le premier programme publiéWoolley, destiné à être exécuté par une machine, ce qui fait considérer Ada Lovelace comme « le premier programmeur du monde ». Elle a également entrevu et décrit certaines possibilités offertes par les calculateurs universels, allant bien au-delà du calcul numérique et de ce qu\'imaginaient Babbage et ses contemporainsWoolley ,Swade.\r\n\r\n'),
(6, 'Linus Torvalds', 'images\\LinusTorvalds.jpg', 'Linus Benedict Torvalds, né le 28 décembre 1969 à Helsinki en Finlande, est un informaticien américano-finlandais.\r\n\r\nIl est notamment connu pour avoir créé en 1991 (à 21 ans) le noyau Linux, dont il continue de diriger le développement, étant considéré comme le « dictateur bienveillant à vie » (Benevolent Dictator for Life) de celui-ci. Il a également créé le logiciel de gestion de versions décentralisée Git et le logiciel d\'enregistrement et de planification des plongées Subsurface.\r\n\r\nEn 2012, il a été honoré avec Shinya Yamanaka du prix Millennium Technology, décerné par la Technology Academy Finland « en reconnaissance pour sa création d\'un nouveau système d\'exploitation open source pour les ordinateurs ayant conduit au noyau Linux, largement utilisé ». Il est également lauréat en 2014 du Computer Pioneer Award, décerné par l\'IEEE Computer Society.'),
(7, 'Larry Page et Sergei Brin', 'images\\LarryPageetSergeiBrin.jpg', 'Sergey Brin et Larry Page ont fondé Google en 1998 et Alphabet en 2015.\r\nGoogle est le moteur de recherche le plus utilisée de nos jour.'),
(8, 'Leonardo Torres Quevedo', 'images\\LeonardoTorresQuevedo.jpg', 'Leonardo Torres Quevedo, parfois écrit Leonardo Torres y Quevedo, (né le dans le village de Santa Cruz de Iguña, en Cantabrie et mort le 18 décembre 1936 à Madrid), est un ingénieur des travaux publics, mathématicien, physicien et inventeur espagnol de la fin du xixe siècle et au début du xxe siècle. Membre de l’Académie royale des sciences d\'Espagne dès 1901, il en devient président en 1928, il était aussi un membre correspondant de l\'Institut de France.\r\n\r\nTorres fut le premier à utiliser des relais électromécaniques pour implémenter les fonctions arithmétiques d\'une machine à calculer. Il montra que tous les éléments mécaniques de la machine analytique de Charles Babbage pouvait être remplacés par des éléments électriques construit avec des relais. Il en fit la démonstration en construisant deux machines analytiques extrêmement limitées mais fonctionnelles, une en 1914 et une en 1920.\r\n\r\nIl inventa le premier automate joueur d’échecs et créa ainsi le premier jeu électronique.\r\n\r\nIl inventa un dirigeable qui fut utilisé durant la Première Guerre mondiale, un téléphérique pour les chutes du Niagara qui est encore en service de nos jours et, avec Nikola Tesla, il fut un pionnier dans l\'invention des télécommandes.'),
(9, 'Steve Wozniak', 'images\\SteveWozniak.jpg', 'Stephen Wozniak, dit Steve Wozniak, né le 11 août 1950 à San José, aussi appelé Woz, est un informaticien, professeur d\'informatique et électronicien américain.\r\n\r\nIl est cofondateur de la société Apple Computer avec Steve Jobs et Ronald Wayne, et concepteur des premiers Apple (dont Apple I, Apple II, Apple III, Lisa et divers périphériques), et est un des pionniers de l\'industrie micro-informatique.'),
(10, 'Bill Gates', 'images\\BillGates.jpg', 'William Henry Gates III, dit Bill Gates, né le 28 octobre 1955 à Seattle (État de Washington), est un informaticien, entrepreneur et milliardaire américain. Il est connu comme le fondateur de Microsoft en 1975 et son principal actionnaire jusqu’en 2014.\r\n\r\nGrâce au succès commercial de Microsoft, il est l’un des hommes les plus riches du monde depuis 1996. En 2021, le magazine Forbes classe Bill Gates 4e fortune avec 124 milliards de dollars.\r\n\r\nDepuis octobre 2007, Bill Gates se consacre à sa fondation Bill-et-Melinda-Gates.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `personnages`
--
ALTER TABLE `personnages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `personnages`
--
ALTER TABLE `personnages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
