-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 15 avr. 2021 à 18:49
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
-- Base de données :  `ultra_stock`
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
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

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
(21, 'Essence'),
(22, 'Muscle car');

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
(2, 20),
(5, 21),
(4, 21),
(4, 19),
(4, 16),
(5, 19),
(5, 16),
(13, 20),
(13, 17),
(12, 21),
(12, 10),
(11, 21),
(11, 10),
(10, 21),
(10, 10),
(9, 21),
(9, 10),
(13, 21),
(14, 5),
(14, 17),
(14, 19),
(15, 18),
(15, 20),
(15, 21),
(16, 2),
(16, 5),
(16, 19),
(17, 11),
(17, 21),
(18, 20),
(18, 21),
(18, 22),
(19, 21),
(20, 3),
(20, 6),
(20, 19),
(21, 20),
(21, 21),
(21, 22),
(22, 4),
(22, 13),
(22, 19),
(22, 21),
(23, 4),
(23, 19),
(23, 21);

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
(17, 2, 2, 660000),
(18, 1, 1, 150000),
(19, 1, 1, 150000),
(20, 1, 1, 150000),
(21, 1, 1, 150000),
(22, 1, 1, 150000);

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
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

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
(17, 14, '405558491\n', '2021-03-04 10:46:47', '810000'),
(18, 14, '1712272932', '2021-04-12 10:47:37', '150000'),
(19, 14, '1241040535', '2021-04-13 10:26:55', '150000'),
(20, 14, '1747081833', '2021-04-13 10:28:35', '150000'),
(21, 27, '1542819575', '2021-04-14 21:04:48', '150000'),
(22, 14, '480357867\n', '2021-04-15 15:16:08', '150000');

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
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

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
(13, 'Chevrolet', 'Americaine'),
(14, 'Ducati', 'Italie'),
(15, 'Kawasaki', 'Japon'),
(16, 'Suzuki', 'Japon'),
(17, 'MVAgusta', 'Italie'),
(18, 'Yamaha', 'Japon'),
(26, 'Bugatti', 'France'),
(25, 'Brabus', 'Allemagne'),
(24, 'Tesla', 'Américaine');

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
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `id_type`, `id_marque`, `nom`, `description`, `prix`, `quantite`, `image`) VALUES
(1, 1, 1, 'Porsche Cayenne GTS', 'Fini le V6, les versions GTS repassent au V8 ! Pour répondre au besoin croissant de l\'augmentation de l\'efficacité de ces autos, Porsche a pris au cours des dernières années des décisions concernant les moteurs qui n\'ont pas satisfait tout le monde. On pense aux quatre cylindres turbo du Boxster et du Cayman notamment. Mais pour pallier ce problème, ils ont rapidement réintroduit un Flat-6 atmosphérique de 4,0 litres dans les Cayman GT4 et Boxster Spyder, juste histoire de satisfaire les puristes.', 150000, 50, '../images/porsche_cayenne_gts.jpg'),
(2, 1, 7, 'Lamborghini Aventador', 'Grâce aux techniques développées par Lamborghini concernant l\'utilisation du carbone (une usine spéciale a été conçue), l\'Aventador est la première Lamborghini de série dotée d\'un châssis monocoque en fibre de carbone. Cette spécificité lui permet d\'économiser du poids et d’être exceptionnellement rigide.', 330000, 50, '../images/lamborghini-aventador.jpg'),
(4, 2, 2, 'Mercedes Actros', 'Le nouvel Actros jusqu’à 250 tonnes est également une référence incontournable en termes de confort, de puissance et de souplesse pour vos missions de transport lourds. Dès le premier coup d’œil, à chaque trajet et pendant les pauses.\r\n\r\nLe nouvel Actros jusqu’à 250 t est un tracteur conçu et construit pour transporter des charges particulièrement lourdes ou volumineuses. Mieux encore, les cabines GigaSpace et BigSpace offrent le confort intérieur et de travail qu’il vous faut pour vos missions de transport lourdes.', 150000, 10, 'https://cutt.ly/FvdmCJy'),
(5, 2, 11, 'Renault Truck T HIGH', 'Pensés pour les longues distances, Les Renault Trucks T et T High sont les véhicules parfaits pour faire de chaquekilomètre une source de profit. Fiable, performant et associé à une offre de services qui réduit les temps d\'immobilisation, le Renault Trucks T constitue un véritable centre de profit pour votre entreprise.', 90000, 5, 'https://cutt.ly/AvdE0Tu'),
(11, 5, 15, 'Kawasaki Ninja H2R', 'En repoussant les limites de la performance et de l’ingénierie, la Ninja H2R est une moto\r\nunique qui a le grand mérite de devenir une icône. Créée sans compromis et bénéficiant\r\ndu savoir-faire de Kawasaki Heavy Industries, le Ninja H2R exige le respect et\r\nattire les pilotes les plus compétents. Les caractéristiques de la Ninja H2R\r\n: Suspension arrière Ohlins, quickshifter, dispositifs aérodynamiques,\r\ngestion des virages et affichage de l\'angle d\'inclinaison. Ninja\r\nH2R, au-delà des espérances. Ce Véhicule n\'est pas destiné\r\nà être utilisé sur la voie publique.', 60000, 30, 'https://cutt.ly/FvdRmpw'),
(10, 5, 16, 'suzuki gsxr 1000 rr', 'Le \"Launch Control\", qui équipe la GSX-R1000R, stabilise automatiquement le régime moteur et optimise le couple délivré pour faire d\'excellents départs. Le shifter bi-directionnel (Up & Down) permet de monter et descendre les rapports sans utiliser l\'embrayage ni couper les gaz à l\'accélération. Le té de fourche supérieur ultra-léger et la batterie spécifique allégée favorisent le dynamisme de la moto. La GSX-R1000R est équipée de l\'ABS adaptatif combiné à l\'IMU. La centrale IMU analyse en permanence les mouvements de la moto et empêche la roue arrière de se soulever lors de puissants freinages. Ce sytème adapte également la puissance de freinage en virage ainsi que le couple moteur (contrôle de traction)  en sortie de courbe.', 20000, 5, 'https://cutt.ly/XvdEvn1'),
(9, 5, 14, 'Ducati pagnigal V4R', 'La nouvelle Panigale V4 R incarne l\'expression maximale des valeurs Ducati: style, sophistication, performance.\r\ncatégorie : essence\r\nC\'est l\'expression maximale de l\'ADN de course de Ducati, semblable à un prototype de course comme aucun autre vélo: un modèle tourné vers l\'avenir qui accompagne le pilote vers une dimension de conduite avancée, composée de courbes et de lignes droites qui courent incroyablement vite, grâce au l\'électronique qui, comme un filet de sécurité invisible et magique, permet de dépasser les limites.\r\n\r\nIl est conçu pour assurer une symphonie d\'émotions, grâce au nouveau concept de performance: non seulement l\'accélération, la capacité de freinage et le meilleur temps au tour, mais aussi la sécurité et la facilité de conduite, quel que soit le niveau d\'expérience.\r\n\r\nEn bref, l\'adrénaline pure de course sous contrôle.', 50000, 15, 'https://cutt.ly/gvdnVqw'),
(12, 5, 17, 'MV-Agusta F4 1000 RR', 'Les années glissent sur le carénage de la F4 sans même l\'écorcher. En attendant une relève hautement exigeante, l\'une des divas de Varese peut continuer à faire rêver du monde. Top du top de la gamme MV-Agusta (hormis la RC, plus proche du Superbike que de la série), la F4 1000 RR se dote du nécessaire pour briller au sommet du clan des hypersports. Au rang des plus importantes modifications, il y a ces superbes étriers de frein Brembo M50 et le réglage désormais électroniques des suspensions Öhlins. L\'amortisseur de direction de facture suédoise est assisté par électronique ou se règle manuellement, au choix. Quand au duo fourche et amortisseur, il n\'y a plus que la précontrainte du ressort arrière qui nécessite une intervention manuelle. Tous les réglages se font depuis le tableau de bord. La centrale électronique détermine l\'amortissement optimum (réglé par l\'usine) en fonction de la cartographie sélectionnée. Mais le pilote peut aussi choisir ses réglages d\'une manière totalement autonome.', 30000, 7, 'https://cutt.ly/uvdLvrY'),
(13, 3, 2, 'Mercedes sprinter fourgon', 'Le Sprinter si est polyvalent que vous trouverez forcément le véhicule qu\'il vous faut pour accomplir votre mission de transport. Par ailleurs, son allure ne manquera pas de faire tourner les têtes. Avec ses 4 longueurs de carrosserie et 3 hauteurs de toit et un volume de chargement jusqu\'à 17 m3, le Sprinter fourgon surprend par sa polyvalence. Ses multiples variantes et équipements permettent de concevoir aussi bien des modèles d\'accès économiques que des véhicules à l\'équipement très complet.\r\n\r\nLes véhicules équipés de la traction avant nouvellement intégrée au programme offrent par exemple un prix d’entrée de gamme plus avantageux, une charge utile accrue et un seuil de chargement plus bas que les modèles à propulsion arrière.\r\n\r\nLes conducteurs bénéficient d’un concept de commande et d’affichage intelligent, ainsi que de rangements modulables et de différents systèmes multimédias et d’assistance à la conduite qui s\'adaptent à leurs besoins. Nous avons conservé ce qui a fait ses preuves. Par exemple, il est possible d\'utiliser de nombreuses solutions de superstructure et d\'aménagement sans modification majeure.\r\n\r\nPuisant dans son esprit d\'innovation et une expérience de plus de 20 ans, le Sprinter s\'impose comme une solution de mobilité tournée vers l\'avenir, efficace et fiable qui fait progresser votre entreprise.', 30000, 43, 'https://cutt.ly/DvdBxwB'),
(14, 3, 3, 'Peugeot E-expert', 'Le fourgon PEUGEOT Expert a de nombreux atouts pour faciliter votre activité professionnelle et répondre à toutes vos exigences. Enfin, ce véhicule utilitaire vous offre la liberté de choisir entre un moteur diesel ou électrique.', 25000, 27, 'https://cutt.ly/tvdMWLz'),
(15, 3, 12, 'Ford Transit', 'Benne basculante, caisse grand volume, caisse frigorifique, plateau ridelles... Les possibilités d\'aménagement du Transit Châssis Simple Cabine semblent infinies.\r\n\r\nSon unique rangée de sièges optimise l\'espace disponible pour le carrossage et le transport de marchandises.\r\n\r\nDu L2 (empattement moyen) au L5 (empattement très long), chaque variant de Ford Transit Châssis Simple Cabine intègre un châssis-échelle robuste. Grâce à la nouvelle option 5 tonnes désormais disponible, vous disposez d’une solide plateforme vous permettant de configurer votre véhicule idéal selon vos goûts et avec une charge utile pouvant aller jusqu’à 2 960 kg. \r\n\r\nRobuste, fiable et polyvalent, le Transit Châssis Simple Cabine est conçu pour s’adapter facilement aux exigences de votre activité professionnelle.', 20000, 18, 'https://cutt.ly/Zvd1RcS'),
(16, 1, 24, 'Tesla Model S', 'Avec la plus grande autonomie et l\'accélération la plus rapide de tous les véhicules électriques en production, la Model S Plaid est la berline la plus performante jamais conçue. Les groupes motopropulseurs des versions Grande Autonomie et Plaid, combinés à une architecture de batterie revue, peuvent réaliser des lancements répétés avec des performances constantes.\r\n\r\nAvec le coefficient de traînée aérodynamique le plus faible au monde et une efficience inégalée, la Model S est dessinée pour la vitesse et l\'autonomie. Combinés à un chassis et une carrosserie plus large, ces attributs vous permettent de passer les lignes droites et virages plus vite que jamais.', 100000, 47, 'https://cutt.ly/4vd2uzp'),
(17, 6, 18, 'Yamaha Raptor 750 r', 'Le moteur quatre temps de 686 cm³ est doté de technologies qui dopent sa puissance pour des accélérations de folie. De plus, sa faible consommation en carburant vous permet de rouler plus longtemps avant de faire le plein. Conçu pour la compétition, le raptor 750R affiche une palette de caractéristiques exclusives, notamment une chambre haute compression, un profil de came spéciale ainsi qu\'une cartographie d\'injection de carburant pensée pour la course. En outre, avec ses amortisseurs à bonbonne et ses pneus de 22 pouces Maxxis, le raptor 750r est taillé pour la victoire.', 15000, 80, 'https://cutt.ly/Kvd2WP8'),
(18, 1, 12, 'Ford Mustang', 'Dès que vous démarrez la Ford Mustang, vous accédez à un large éventail de technologies évoluées destinées à améliorer votre expérience de conduite.\r\n\r\nPrenons l\'exemple du combiné d\'instruments numérique 12 pouces, il affiche des informations indispensables et spécifiques en fonction du mode de conduite sélectionné, par exemple, Normal, Sport+ ou Circuit. Les compteurs changent même d\'aspect en fonction des modes.\r\n\r\nLa Ford Mustang est également dotée d’amortisseurs MagneRide™ (en option), un système de suspension avancé qui offre une tenue de route exceptionnelle et un véritable confort sur la route.\r\n\r\nEt le régulateur de vitesse adaptatif vous permet de choisir la vitesse à laquelle vous souhaitez rouler. Le système freine ou accélère automatiquement pour maintenir la distance souhaitée par rapport au véhicule qui vous précède. ', 45000, 47, 'https://cutt.ly/Evd3h8t'),
(19, 4, 18, 'TMAX 20th Anniversary', 'Avec dix séries spéciales lancées entre 2006 et 2016, le TMAX reste le maxi-scooter le plus vendu en Europe ces 20 dernières années, avec près de 300 000 unités vendues. Pour célébrer cette incroyable réussite, Yamaha a créé une série limitée de 560 unités du TMAX 20e anniversaire. Arborant un coloris Tech Graphite associé à des roues de couleur bronze, des boomerangs, une protection thermique et un garde-boue avant en carbone forgé, ainsi qu\'une selle chauffante haut de gamme avec surpiqûres jaunes et logo 20e anniversaire, le TMAX 20e anniversaire est la référence des scooters sportifs de Yamaha.', 17000, 35, 'https://cutt.ly/Gvd9FVu'),
(20, 1, 11, 'Renault CLIO E-TECH', 'Découvrez le plaisir de la conduite électrique au volant de CLIO E-TECH Première Edition.\r\nPremière série limitée avec la nouvelle motorisation hybride E-TECH 140 ch pour célébrer l’introduction de cette technologie sur CLIO.\r\nSystème multimédia connecté EASY LINK 9.3’’, décors intérieurs et extérieurs exclusifs, jantes alliage 16’’ AGAPE et motorisation hybride auto-rechargeable.\r\n', 15300, 210, 'https://cutt.ly/Ivd77jW'),
(21, 1, 12, 'ELEANOR - Ford Mustang shelby gt500 1967', 'il s\'agit de la Ford Mustang Shelby GT500 de 1967, mieux connue sous le nom d\'Eleanor, rendue célèbre par le film « 60 Secondes Chrono » avec Nicolas Cage et Angelina Jolie. Bien qu\'il existe de nombreuses répliques de cette voiture sur le marché du véhicule de collection, celle-ci est une vraie affaire. Selon les informations qui accompagnent l\'annonce déposée sur ChromeCars en Allemagne, il s\'agit de l\'une des voitures originales construites pour le film, elle a donc été conduite par Nicolas Cage, qui a fait la plupart des cascades dans le film. Mais ce n\'est pas tout !', 2500000, 3, 'https://cutt.ly/Lvd4zDf'),
(22, 1, 26, 'Bugatti Chiron pur sport', 'LA PLUS PURE DES BUGATTI\r\nDÉCOUVREZ L\'AUTOMOBILE ULTIME\r\nPlaisir de conduite et adrénaline à l\'état pur : BUGATTI est fier de présenter la CHIRON PUR SPORT1, une évolution très audacieuse du concept CHIRON2 « la forme suit la performance » et le véhicule le plus agile et le plus intransigeant de la gamme CHIRON. De nettes améliorations technologiques au niveau du châssis, de la boîte de vitesses et du moteur lui permettent de repousser encore plus loin les limites de la dynamique de conduite. Plus radicale, plus agressive et plus intense, la CHIRON PUR SPORT incarne l\'apogée de la dynamique de conduite de BUGATTI. Elle se conduit facilement sur les routes les plus sinueuses tout en procurant des sensations fortes au volant.  Un véritable pur-sang de l\'automobile !', 5000000, 4, 'https://cutt.ly/evd630P'),
(23, 1, 25, 'Brabus S750', 'Mercedes classe S modifiée par le préparateur Brabus. ', 500000, 2, 'https://cutt.ly/gvfwoec');

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
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

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
(28, 'user', 'user', 'user@user.user', '$2y$10$6r9Fo8TQ9lJDJbMA2lVHpuWGICxCAF0zHEgjUh1.UX9wRTU0WXOL2', 1),
(27, 'admin', 'admin', 'admin@admin.admin', '$2y$10$1/8vt24k2VyQ/PalMnC5z.A0a9dxXHiIkmAynCT2yUFTllKPtgEdq', 1),
(29, 'modo', 'modo', 'modo@modo.modo', '$2y$10$IvykTiQ1p0R9wSqBoNIfke9iMeGMxFkVlSL6cVUGa/HFi42tmKkem', 1),
(26, 'Doe', 'John', 'johndoe@gmail.com', '$2y$10$VZ4Ledom912BODopYB/JF.7/mAJQdZl1/r5fCjW4nU1prh/HUt9Qm', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
