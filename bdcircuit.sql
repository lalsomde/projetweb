-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 19 nov. 2020 à 21:12
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bdcircuit`
--

-- --------------------------------------------------------

--
-- Structure de la table `accompagnateur`
--

CREATE TABLE `accompagnateur` (
  `idAccompaganteur` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `dateDeNaissance` date NOT NULL,
  `email` varchar(30) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `numPasseport` varchar(20) NOT NULL,
  `numRue` int(10) NOT NULL,
  `numPorte` int(11) NOT NULL,
  `ville` varchar(20) NOT NULL,
  `codePostal` varchar(10) NOT NULL,
  `province` varchar(20) NOT NULL,
  `pays` varchar(20) NOT NULL,
  `idMembre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `activite`
--

CREATE TABLE `activite` (
  `idActivite` int(11) NOT NULL,
  `heureDeDebut` varchar(25) NOT NULL,
  `dateDeFin` varchar(25) NOT NULL,
  `description` varchar(25) NOT NULL,
  `lieu` varchar(25) NOT NULL,
  `lien` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL,
  `idTransport` int(11) NOT NULL,
  `idJour` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `circuit`
--

CREATE TABLE `circuit` (
  `idCircuit` int(11) NOT NULL,
  `idTheme` int(11) NOT NULL,
  `idEmploye` int(11) NOT NULL,
  `idPromotion` int(11) NOT NULL,
  `idPayement` int(11) NOT NULL,
  `prix` float NOT NULL,
  `nbrPersonneMax` int(5) NOT NULL,
  `nbrPersonneMin` int(5) NOT NULL,
  `dateDebut` date NOT NULL,
  `dateFin` date NOT NULL,
  `statut` varchar(25) NOT NULL,
  `image` varchar(255) NOT NULL,
  `idGuide` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `connexion`
--

CREATE TABLE `connexion` (
  `email` varchar(25) DEFAULT NULL,
  `motDePasse` varchar(25) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE `employe` (
  `idEmploye` int(11) NOT NULL,
  `nom` varchar(25) DEFAULT NULL,
  `prenom` varchar(25) DEFAULT NULL,
  `dateNaissance` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `telephone` varchar(25) DEFAULT NULL,
  `numRue` varchar(25) DEFAULT NULL,
  `numPorte` varchar(255) DEFAULT NULL,
  `Ville` varchar(25) DEFAULT NULL,
  `codePostal` varchar(25) DEFAULT NULL,
  `province` varchar(25) DEFAULT NULL,
  `pays` varchar(25) DEFAULT NULL,
  `role` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `etape`
--

CREATE TABLE `etape` (
  `idEtape` int(11) NOT NULL,
  `idCircuit` int(11) NOT NULL,
  `idJour` int(11) NOT NULL,
  `idTransport` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `dateDebut` date NOT NULL,
  `dateFin` date NOT NULL,
  `heureDebut` time NOT NULL,
  `heureFin` time NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `evaluation`
--

CREATE TABLE `evaluation` (
  `idEvaluation` int(11) NOT NULL,
  `idCircuit` int(11) NOT NULL,
  `idMembre` int(11) NOT NULL,
  `note` int(11) NOT NULL,
  `moyenne` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `guide`
--

CREATE TABLE `guide` (
  `idEmploye` int(11) NOT NULL,
  `idCircuit` int(11) NOT NULL,
  `idGuide` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `hebergement`
--

CREATE TABLE `hebergement` (
  `idHebergement` int(11) NOT NULL,
  `type` varchar(25) NOT NULL,
  `lien` varchar(25) NOT NULL,
  `idJour` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

CREATE TABLE `historique` (
  `idHistorique` int(11) NOT NULL,
  `idPaiement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `jour`
--

CREATE TABLE `jour` (
  `idJour` int(25) NOT NULL,
  `dateJour` varchar(255) DEFAULT NULL,
  `idEtape` int(11) NOT NULL,
  `idActivite` int(11) NOT NULL,
  `idRepas` int(11) NOT NULL,
  `idHebergement` int(11) NOT NULL,
  `idTransport` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE `membre` (
  `idMembre` int(11) NOT NULL,
  `nom` varchar(25) DEFAULT NULL,
  `prenom` varchar(25) DEFAULT NULL,
  `dateDeNaissance` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `telephone` varchar(25) DEFAULT NULL,
  `numRue` varchar(25) DEFAULT NULL,
  `numPorte` varchar(25) DEFAULT NULL,
  `ville` varchar(25) DEFAULT NULL,
  `codePostal` varchar(25) DEFAULT NULL,
  `province` varchar(25) DEFAULT NULL,
  `pays` varchar(25) DEFAULT NULL,
  `passPort` varchar(25) DEFAULT NULL,
  `imageMembre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `paiement`
--

CREATE TABLE `paiement` (
  `idPaiement` int(11) NOT NULL,
  `depotInitial` int(11) NOT NULL,
  `depotFinal` int(11) NOT NULL,
  `nbrPaiement` int(11) NOT NULL,
  `date` date NOT NULL,
  `idMembre` int(11) NOT NULL,
  `idVersement` int(11) NOT NULL,
  `idReservation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `promotion`
--

CREATE TABLE `promotion` (
  `idPromotion` int(11) NOT NULL,
  `idCircuit` int(11) NOT NULL,
  `pourcentage` float NOT NULL,
  `statut` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `repas`
--

CREATE TABLE `repas` (
  `idRepas` int(11) NOT NULL,
  `heure` varchar(25) NOT NULL,
  `categories` varchar(25) NOT NULL,
  `petitDejeuner` varchar(25) NOT NULL,
  `diner` varchar(25) NOT NULL,
  `souper` varchar(25) NOT NULL,
  `lien` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `idReservation` int(11) NOT NULL,
  `nbreParticipant` int(11) NOT NULL,
  `nbreAdulte` int(11) NOT NULL,
  `nbreEnfant` int(11) NOT NULL,
  `idMembre` int(11) NOT NULL,
  `idCircuit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `theme`
--

CREATE TABLE `theme` (
  `idtheme` int(11) NOT NULL,
  `nom` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `transport`
--

CREATE TABLE `transport` (
  `idTransport` int(255) NOT NULL,
  `TypeTransport` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `versement`
--

CREATE TABLE `versement` (
  `idVersement` int(11) NOT NULL,
  `date` date NOT NULL,
  `montant` int(11) NOT NULL,
  `idReservation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `accompagnateur`
--
ALTER TABLE `accompagnateur`
  ADD PRIMARY KEY (`idAccompaganteur`),
  ADD KEY `accompagnateur_ibfk_1` (`idMembre`);

--
-- Index pour la table `activite`
--
ALTER TABLE `activite`
  ADD PRIMARY KEY (`idActivite`),
  ADD KEY `activite_ibfk_3` (`idJour`),
  ADD KEY `activite_ibfk_4` (`idTransport`);

--
-- Index pour la table `circuit`
--
ALTER TABLE `circuit`
  ADD PRIMARY KEY (`idCircuit`),
  ADD KEY `circuit_ibfk_1` (`idTheme`),
  ADD KEY `circuit_ibfk_2` (`idGuide`),
  ADD KEY `circuit_ibfk_3` (`idPayement`),
  ADD KEY `circuit_ibfk_4` (`idPromotion`);

--
-- Index pour la table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`idEmploye`);

--
-- Index pour la table `etape`
--
ALTER TABLE `etape`
  ADD PRIMARY KEY (`idEtape`),
  ADD KEY `etape_ibfk_1` (`idCircuit`),
  ADD KEY `etape_ibfk_2` (`idJour`),
  ADD KEY `etape_ibfk_3` (`idTransport`);

--
-- Index pour la table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`idEvaluation`),
  ADD KEY `evaluation_ibfk_1` (`idMembre`),
  ADD KEY `evaluation_ibfk_2` (`idCircuit`);

--
-- Index pour la table `guide`
--
ALTER TABLE `guide`
  ADD PRIMARY KEY (`idEmploye`),
  ADD KEY `guide_ibfk_1` (`idCircuit`);

--
-- Index pour la table `hebergement`
--
ALTER TABLE `hebergement`
  ADD PRIMARY KEY (`idHebergement`),
  ADD KEY `hebergement_ibfk_1` (`idJour`);

--
-- Index pour la table `historique`
--
ALTER TABLE `historique`
  ADD PRIMARY KEY (`idHistorique`),
  ADD KEY `historique_ibfk_1` (`idPaiement`);

--
-- Index pour la table `jour`
--
ALTER TABLE `jour`
  ADD PRIMARY KEY (`idJour`),
  ADD KEY `jour_ibfk_1` (`idEtape`),
  ADD KEY `jour_ibfk_2` (`idActivite`),
  ADD KEY `jour_ibfk_3` (`idRepas`),
  ADD KEY `jour_ibfk_4` (`idHebergement`),
  ADD KEY `jour_ibfk_5` (`idTransport`);

--
-- Index pour la table `membre`
--
ALTER TABLE `membre`
  ADD PRIMARY KEY (`idMembre`);

--
-- Index pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD PRIMARY KEY (`idPaiement`),
  ADD KEY `paiement_ibfk_1` (`idMembre`),
  ADD KEY `paiement_ibfk_2` (`idVersement`),
  ADD KEY `paiement_ibfk_3` (`idReservation`);

--
-- Index pour la table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`idPromotion`),
  ADD KEY `promotion_ibfk_1` (`idCircuit`);

--
-- Index pour la table `repas`
--
ALTER TABLE `repas`
  ADD PRIMARY KEY (`idRepas`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`idReservation`),
  ADD KEY `reservation_ibfk_1` (`idMembre`),
  ADD KEY `reservation_ibfk_2` (`idCircuit`);

--
-- Index pour la table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`idtheme`);

--
-- Index pour la table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`idTransport`);

--
-- Index pour la table `versement`
--
ALTER TABLE `versement`
  ADD PRIMARY KEY (`idVersement`),
  ADD KEY `versement_ibfk_1` (`idReservation`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `accompagnateur`
--
ALTER TABLE `accompagnateur`
  MODIFY `idAccompaganteur` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `activite`
--
ALTER TABLE `activite`
  MODIFY `idActivite` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `theme`
--
ALTER TABLE `theme`
  MODIFY `idtheme` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `accompagnateur`
--
ALTER TABLE `accompagnateur`
  ADD CONSTRAINT `accompagnateur_ibfk_1` FOREIGN KEY (`idMembre`) REFERENCES `membre` (`idMembre`);

--
-- Contraintes pour la table `activite`
--
ALTER TABLE `activite`
  ADD CONSTRAINT `activite_ibfk_1` FOREIGN KEY (`idJour`) REFERENCES `etape` (`idEtape`),
  ADD CONSTRAINT `activite_ibfk_2` FOREIGN KEY (`idTransport`) REFERENCES `transport` (`idTransport`),
  ADD CONSTRAINT `activite_ibfk_3` FOREIGN KEY (`idJour`) REFERENCES `jour` (`idJour`),
  ADD CONSTRAINT `activite_ibfk_4` FOREIGN KEY (`idTransport`) REFERENCES `transport` (`idTransport`);

--
-- Contraintes pour la table `circuit`
--
ALTER TABLE `circuit`
  ADD CONSTRAINT `circuit_ibfk_1` FOREIGN KEY (`idTheme`) REFERENCES `theme` (`idtheme`),
  ADD CONSTRAINT `circuit_ibfk_2` FOREIGN KEY (`idGuide`) REFERENCES `guide` (`idEmploye`),
  ADD CONSTRAINT `circuit_ibfk_3` FOREIGN KEY (`idPayement`) REFERENCES `paiement` (`idPaiement`),
  ADD CONSTRAINT `circuit_ibfk_4` FOREIGN KEY (`idPromotion`) REFERENCES `promotion` (`idPromotion`);

--
-- Contraintes pour la table `etape`
--
ALTER TABLE `etape`
  ADD CONSTRAINT `etape_ibfk_1` FOREIGN KEY (`idCircuit`) REFERENCES `circuit` (`idCircuit`),
  ADD CONSTRAINT `etape_ibfk_2` FOREIGN KEY (`idJour`) REFERENCES `jour` (`idJour`),
  ADD CONSTRAINT `etape_ibfk_3` FOREIGN KEY (`idTransport`) REFERENCES `transport` (`idTransport`);

--
-- Contraintes pour la table `evaluation`
--
ALTER TABLE `evaluation`
  ADD CONSTRAINT `evaluation_ibfk_1` FOREIGN KEY (`idMembre`) REFERENCES `membre` (`idMembre`),
  ADD CONSTRAINT `evaluation_ibfk_2` FOREIGN KEY (`idCircuit`) REFERENCES `circuit` (`idCircuit`);

--
-- Contraintes pour la table `guide`
--
ALTER TABLE `guide`
  ADD CONSTRAINT `guide_ibfk_1` FOREIGN KEY (`idCircuit`) REFERENCES `circuit` (`idCircuit`),
  ADD CONSTRAINT `guide_ibfk_2` FOREIGN KEY (`idEmploye`) REFERENCES `employe` (`idEmploye`);

--
-- Contraintes pour la table `hebergement`
--
ALTER TABLE `hebergement`
  ADD CONSTRAINT `hebergement_ibfk_1` FOREIGN KEY (`idJour`) REFERENCES `jour` (`idJour`);

--
-- Contraintes pour la table `historique`
--
ALTER TABLE `historique`
  ADD CONSTRAINT `historique_ibfk_1` FOREIGN KEY (`idPaiement`) REFERENCES `paiement` (`idPaiement`);

--
-- Contraintes pour la table `jour`
--
ALTER TABLE `jour`
  ADD CONSTRAINT `jour_ibfk_1` FOREIGN KEY (`idEtape`) REFERENCES `etape` (`idEtape`),
  ADD CONSTRAINT `jour_ibfk_2` FOREIGN KEY (`idActivite`) REFERENCES `activite` (`idActivite`),
  ADD CONSTRAINT `jour_ibfk_3` FOREIGN KEY (`idRepas`) REFERENCES `repas` (`idRepas`),
  ADD CONSTRAINT `jour_ibfk_4` FOREIGN KEY (`idHebergement`) REFERENCES `hebergement` (`idHebergement`),
  ADD CONSTRAINT `jour_ibfk_5` FOREIGN KEY (`idTransport`) REFERENCES `transport` (`idTransport`);

--
-- Contraintes pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD CONSTRAINT `paiement_ibfk_1` FOREIGN KEY (`idMembre`) REFERENCES `membre` (`idMembre`),
  ADD CONSTRAINT `paiement_ibfk_2` FOREIGN KEY (`idVersement`) REFERENCES `versement` (`idVersement`),
  ADD CONSTRAINT `paiement_ibfk_3` FOREIGN KEY (`idReservation`) REFERENCES `reservation` (`idReservation`);

--
-- Contraintes pour la table `promotion`
--
ALTER TABLE `promotion`
  ADD CONSTRAINT `promotion_ibfk_1` FOREIGN KEY (`idCircuit`) REFERENCES `circuit` (`idCircuit`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`idMembre`) REFERENCES `membre` (`idMembre`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`idCircuit`) REFERENCES `circuit` (`idCircuit`);

--
-- Contraintes pour la table `versement`
--
ALTER TABLE `versement`
  ADD CONSTRAINT `versement_ibfk_1` FOREIGN KEY (`idReservation`) REFERENCES `reservation` (`idReservation`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
