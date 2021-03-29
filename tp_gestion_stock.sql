-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 29 mars 2021 à 17:35
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
-- Base de données :  `tp_gestion_stock`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `nom`) VALUES
(1, 'SUV'),
(2, 'Berline'),
(3, 'Citadine'),
(4, 'Sportive'),
(5, 'Electrique'),
(6, 'Hybride'),
(7, '50cc'),
(8, '150cc'),
(9, '250cc'),
(10, 'GP'),
(11, 'Cross'),
(12, 'Agricole'),
(13, '4 roues motrices'),
(14, 'Traction'),
(15, 'Propulsion'),
(16, 'Camion'),
(17, 'Fourgon'),
(18, 'Pick-Up'),
(19, 'Automatique'),
(20, 'Manuelle'),
(21, 'Essence');

-- --------------------------------------------------------

--
-- Structure de la table `categoriser`
--

DROP TABLE IF EXISTS `categoriser`;
CREATE TABLE IF NOT EXISTS `categoriser` (
  `id_produit` int(11) DEFAULT NULL,
  `id_cat` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Déchargement des données de la table `categoriser`
--

INSERT INTO `categoriser` (`id_produit`, `id_cat`) VALUES
(1, 1),
(1, 19),
(1, 21),
(2, 4),
(2, 21),
(2, 20);

-- --------------------------------------------------------

--
-- Structure de la table `commander`
--

DROP TABLE IF EXISTS `commander`;
CREATE TABLE IF NOT EXISTS `commander` (
  `id_commande` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `quantite` float NOT NULL,
  `prix` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commander`
--

INSERT INTO `commander` (`id_commande`, `id_produit`, `quantite`, `prix`) VALUES
(3, 1, 0, 0),
(4, 1, 0, 0),
(4, 2, 0, 0),
(17, 1, 1, 150000),
(17, 2, 2, 660000);

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

DROP TABLE IF EXISTS `commandes`;
CREATE TABLE IF NOT EXISTS `commandes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `num_commande` varchar(10) NOT NULL,
  `date` datetime NOT NULL,
  `montant` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commandes`
--

INSERT INTO `commandes` (`id`, `id_user`, `num_commande`, `date`, `montant`) VALUES
(1, 14, '70978419\n', '2021-03-04 08:07:10', '300000'),
(2, 14, '226727967\n', '2021-03-04 08:15:15', '300000'),
(3, 14, '1190184899', '2021-03-04 08:22:20', '300000'),
(4, 14, '116615970\n', '2021-03-04 08:22:52', '630000'),
(5, 13, '1402595595', '2021-03-04 08:44:10', '1290000'),
(6, 14, '1523358902', '2021-03-04 09:56:54', '810000'),
(7, 14, '1306656266', '2021-03-04 09:57:56', '810000'),
(8, 14, '572542840\n', '2021-03-04 10:02:26', '810000'),
(9, 14, '1683496048', '2021-03-04 10:12:19', '810000'),
(10, 14, '1932473383', '2021-03-04 10:13:06', '810000'),
(11, 14, '875650194\n', '2021-03-04 10:17:17', '810000'),
(12, 14, '1362643879', '2021-03-04 10:36:01', '810000'),
(13, 14, '1826640653', '2021-03-04 10:38:04', '810000'),
(14, 14, '649474918\n', '2021-03-04 10:38:45', '810000'),
(15, 14, '1393698512', '2021-03-04 10:43:47', '810000'),
(16, 14, '1828959639', '2021-03-04 10:45:58', '810000'),
(17, 14, '405558491\n', '2021-03-04 10:46:47', '810000');

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

DROP TABLE IF EXISTS `marque`;
CREATE TABLE IF NOT EXISTS `marque` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Nationalitée` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id`, `nom`, `Nationalitée`) VALUES
(1, 'Porsche', 'Allemande'),
(2, 'Mercedes', 'Allemande'),
(3, 'Peugeot', 'Française'),
(4, 'Nissan', 'Japonaise'),
(5, 'Citroën', 'Française'),
(6, 'Ferrari', 'Italienne'),
(7, 'Lamborghini', 'Italienne'),
(8, 'Toyota', 'Japonaise'),
(9, 'Honda', 'Japonaise'),
(10, 'Opel', 'Allemande'),
(11, 'Renault', 'Française'),
(12, 'Ford', 'Americaine'),
(13, 'Chevrolet', 'Americaine');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

DROP TABLE IF EXISTS `produits`;
CREATE TABLE IF NOT EXISTS `produits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_type` int(11) NOT NULL,
  `id_marque` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `prix` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `id_type`, `id_marque`, `nom`, `description`, `prix`, `quantite`, `image`) VALUES
(1, 1, 1, 'Porsche Cayenne GTS', 'Fini le V6, les versions GTS repassent au V8 ! Pour répondre au besoin croissant de l\'augmentation de l\'efficacité de ces autos, Porsche a pris au cours des dernières années des décisions concernant les moteurs qui n\'ont pas satisfait tout le monde. On pense aux quatre cylindres turbo du Boxster et du Cayman notamment. Mais pour pallier ce problème, ils ont rapidement réintroduit un Flat-6 atmosphérique de 4,0 litres dans les Cayman GT4 et Boxster Spyder, juste histoire de satisfaire les puristes.', 150000, 50, '../images/porsche_cayenne_gts.jpg'),
(2, 1, 7, 'Lamborghini Aventador', 'Grâce aux techniques développées par Lamborghini concernant l\'utilisation du carbone (une usine spéciale a été conçue), l\'Aventador est la première Lamborghini de série dotée d\'un châssis monocoque en fibre de carbone. Cette spécificité lui permet d\'économiser du poids et d’être exceptionnellement rigide.', 330000, 50, '../images/lamborghini-aventador.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(255) NOT NULL,
  `nom` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `nom`) VALUES
(1, 'utilisateur'),
(2, 'moderateur'),
(3, 'administrateur');

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`id`, `nom`) VALUES
(1, 'Voiture'),
(2, 'Camion'),
(3, 'Utilitaire'),
(4, 'Scooter'),
(5, 'Moto'),
(6, 'Quad');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_role` int(255) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `prenom`, `email`, `password`, `id_role`) VALUES
(14, 'no', 'no', 'no@no.no', '$2y$10$ka6JoY84pBf6mmW1A4SbN.8kY/P2OCQIorTMes8x.uwxbguXDrlLO', 3),
(13, 'yes', 'yes', 'yes@yes.yes', '$2y$10$ToonLSt.l9ic78kcKPtp8e0MThgHXnHphDmiJMtgio3KeBM3gOidi', 1),
(11, 'Fernandez', 'lucas@gmail.com', 'Lucas', '$2y$10$kyYG4N0vj7iGvBCpkgVcye3aH8xtc4tWwIK.Tu0FuDfj0VJ3T/Zne', 1),
(12, 'wiz', 'wizkalifa@gmail.com', 'kal', '$2y$10$FwSfx5bfpDja373KA0jTNuhxJ16UXl1gn3zyrlCNJGzW0KBX1K1l.', 1),
(15, 'uo', 'uo', 'uo@uo.uo', '$2y$10$5bk/ipQ4QSh.x2m/GeIkauFH9uv95HGglyDDTz5MfRMBRL8mkrJgW', 1),
(16, 'tt', 'tt@tt.tt', 'tt', '$2y$10$84uSnwikEdrDG5sUjiE3suvJyUXSqBu79e52O0laMzjg4niE2mOEy', 1),
(17, 'oo', 'oo@oo.oo', 'oo', '$2y$10$4xoaLaEkDnZ/8Fi6GK.LsOBj914AyF3qGy7enpO8IC4Px8s2WvHS6', 1),
(18, 'aa', 'aa@aa.aa', 'aa', '$2y$10$SLBi/utdBNAHe7HrX5YGAuUNyPKd1fDSq5u3yG94TiI6Xb27.K6LW', 1),
(19, 'zz', 'zz@zz.Zz', 'zz', '', 1),
(22, 'new', 'new', 'user@user.user', '$2y$10$Xkb4u6e237eeyBpWcBhG4.52PVyIgl3BF9j99JysdOogRVpxzFZRe', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
