-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Dim 25 Novembre 2018 à 00:48
-- Version du serveur :  10.1.34-MariaDB-0ubuntu0.18.04.1
-- Version de PHP :  7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `elearn`
--

-- --------------------------------------------------------

--
-- Structure de la table `apprenant`
--

CREATE TABLE `apprenant` (
  `id_User` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `idCours` int(11) NOT NULL,
  `decriptif` text CHARACTER SET latin1 COLLATE latin1_general_cs,
  `intitule` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE `enseignant` (
  `id_User` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ressource`
--

CREATE TABLE `ressource` (
  `idRessource` int(11) NOT NULL,
  `lien` varchar(200) DEFAULT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id_User` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenoms` varchar(255) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `pass_Hash` varchar(255) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id_User`, `nom`, `prenoms`, `pseudo`, `grade`, `pass_Hash`, `mail`) VALUES
(9, 'KOFFI', 'Michel', 'michou', 'jnjnjn', 'E553066FC74AFE9F25DA21CC32AD86124919FEEA327DBF7E8297D431DAB0142C', 'michou@gmail.com'),
(10, 'EDOUKOU', 'RICHMOND', 'eki1996', 'ingenieur', 'E553066FC74AFE9F25DA21CC32AD86124919FEEA327DBF7E8297D431DAB0142C', 'eki1996@sse.com'),
(11, 'SOW', 'Alpha Omar', 'michou', 'ingenieur', '9EB8F38462A052E92F6ACD6D8438EC2F77F86A476854B8D4C5619D9757BD241A', 'alphaomarsow423@gmai.com'),
(12, 'DIKE', 'JEAN DANIEL', 'iceDanny', 'master', '98B2595215BD4FAC9902BEFACAA7CC4D821B5FE7AACAF70F2DD307412FB3F1A7', 'danny@gmail.com');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `apprenant`
--
ALTER TABLE `apprenant`
  ADD PRIMARY KEY (`id_User`);

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`idCours`);

--
-- Index pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`id_User`);

--
-- Index pour la table `ressource`
--
ALTER TABLE `ressource`
  ADD PRIMARY KEY (`idRessource`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id_User`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id_User` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `apprenant`
--
ALTER TABLE `apprenant`
  ADD CONSTRAINT `apprenant_ibfk_1` FOREIGN KEY (`id_User`) REFERENCES `utilisateurs` (`id_User`);

--
-- Contraintes pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD CONSTRAINT `enseignant_ibfk_1` FOREIGN KEY (`id_User`) REFERENCES `utilisateurs` (`id_User`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
