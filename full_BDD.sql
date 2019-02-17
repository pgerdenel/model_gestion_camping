-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  sam. 24 nov. 2018 à 20:02
-- Version du serveur :  10.1.36-MariaDB
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `camping`
--

-- --------------------------------------------------------

--
-- Structure de la table `accompagnant`
--

CREATE TABLE `accompagnant` (
  `ID_ACC` int(11) NOT NULL,
  `ID_CLIENT` int(11) NOT NULL,
  `NOM_ACC` char(20) DEFAULT NULL,
  `PRENOM_ACC` char(20) DEFAULT NULL,
  `AGE_ACC` decimal(2,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `accompagnant`
--

INSERT INTO `accompagnant` (`ID_ACC`, `ID_CLIENT`, `NOM_ACC`, `PRENOM_ACC`, `AGE_ACC`) VALUES
(1, 1, 'Didier', 'Armand', '46'),
(2, 1, 'alex', 'Armand', '8'),
(3, 1, 'joshua', 'Armand', '16'),
(4, 2, 'Copino', 'ramatoss', '40'),
(5, 3, 'Manuel', 'Macron', '35'),
(6, 3, 'Brigitte', 'Macron', '99');

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

CREATE TABLE `acteur` (
  `ID_ACTEUR` int(11) NOT NULL,
  `NOM_ACTEUR` char(20) DEFAULT NULL,
  `PRENOM_ACTEUR` char(20) DEFAULT NULL,
  `AGE_ACTEUR` decimal(2,0) DEFAULT NULL,
  `METIER_ACTEUR` char(20) DEFAULT NULL,
  `NIVEAU_ACCES_ACTEUR` decimal(1,0) DEFAULT NULL,
  `SALAIRE_ACTEUR` float(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `acteur`
--

INSERT INTO `acteur` (`ID_ACTEUR`, `NOM_ACTEUR`, `PRENOM_ACTEUR`, `AGE_ACTEUR`, `METIER_ACTEUR`, `NIVEAU_ACCES_ACTEUR`, `SALAIRE_ACTEUR`) VALUES
(1, 'Faitout', 'Marie', '31', 'secrétaire', '1', 99.99),
(2, 'Jolie', 'Emilie', '31', 'hotesse acceuil', '1', 99.99),
(3, 'Respire', 'Philippe', '31', 'animateur aquatique', '5', 99.99),
(4, 'Souleau', 'Gerard', '32', 'animateur aquatique', '5', 99.99),
(5, 'History', 'Marjorie', '51', 'animateur culturel', '5', 99.99),
(6, 'Marche', 'Roger', '42', 'animateur randonne', '5', 99.99),
(7, 'EnHaut', 'Boris', '24', 'animateur escalade', '5', 99.99),
(8, 'Reveilletoi', 'Jean', '29', 'animateur fiesta', '5', 99.99),
(9, 'Regime', 'Paola', '31', 'animateur culinaire', '5', 99.99);

-- --------------------------------------------------------

--
-- Structure de la table `animation`
--

CREATE TABLE `animation` (
  `ID_ANIMATION` int(11) NOT NULL,
  `ID_ACTEUR` int(11) NOT NULL,
  `ID_TYPE_ANIMATION` int(11) NOT NULL,
  `LABEL_ANIMATION` char(20) DEFAULT NULL,
  `DUREE_ANIMATION` decimal(2,0) DEFAULT NULL,
  `PREREQUIS_ANIMATION` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `animation`
--

INSERT INTO `animation` (`ID_ANIMATION`, `ID_ACTEUR`, `ID_TYPE_ANIMATION`, `LABEL_ANIMATION`, `DUREE_ANIMATION`, `PREREQUIS_ANIMATION`) VALUES
(1, 3, 1, 'Aquagym', '1', 'short/slip de bain'),
(2, 4, 1, 'Aquagym', '1', 'short/slip de bain'),
(3, 5, 1, 'culturel', '1', 'short/slip de bain'),
(4, 6, 1, 'randonnee', '2', 'short/slip de bain'),
(5, 7, 1, 'escalade', '2', 'short/slip de bain'),
(6, 8, 1, 'fiesta', '4', 'short/slip de bain'),
(7, 9, 1, 'culinaire', '1', 'short/slip de bain');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `ID_CLIENT` int(11) NOT NULL,
  `NOM_CLIENT` char(20) DEFAULT NULL,
  `PRENOM_CLIENT` char(20) DEFAULT NULL,
  `ADDRESSE_CLIENT` char(40) DEFAULT NULL,
  `AGE_CLIENT` decimal(2,0) DEFAULT NULL,
  `TEL_CLIENT` decimal(20,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`ID_CLIENT`, `NOM_CLIENT`, `PRENOM_CLIENT`, `ADDRESSE_CLIENT`, `AGE_CLIENT`, `TEL_CLIENT`) VALUES
(1, 'Rébecca', 'Armand', 'Rue de la forêt', '24', '324755964'),
(2, 'José', 'ramatoss', 'Avenue des champs', '38', '754649585'),
(3, 'Dingo', 'Mickey', 'Promenade des anglais', '49', '558916134');

-- --------------------------------------------------------

--
-- Structure de la table `devis`
--

CREATE TABLE `devis` (
  `ID_DEVIS` int(11) NOT NULL,
  `ID_CLIENT` int(11) NOT NULL,
  `TOTAL_A_PAYER_DEVIS` float(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `devis`
--

INSERT INTO `devis` (`ID_DEVIS`, `ID_CLIENT`, `TOTAL_A_PAYER_DEVIS`) VALUES
(1, 1, 1.00),
(2, 2, 1.00),
(3, 3, 1.00);

-- --------------------------------------------------------

--
-- Structure de la table `emplacement`
--

CREATE TABLE `emplacement` (
  `ID_EMPLACEMENT` int(11) NOT NULL,
  `ID_TYPE_EMPLACEMENT` int(11) NOT NULL,
  `TARIF_EMPLACEMENT` float(4,2) DEFAULT NULL,
  `TAILLE_EMPLACEMENT` float DEFAULT NULL,
  `COMMENTAIRES_EMPLACEMENT` text,
  `NUMERO_EMPLACEMENT` char(10) DEFAULT NULL,
  `REGLEMENT_EMPLACEMENT` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `emplacement`
--

INSERT INTO `emplacement` (`ID_EMPLACEMENT`, `ID_TYPE_EMPLACEMENT`, `TARIF_EMPLACEMENT`, `TAILLE_EMPLACEMENT`, `COMMENTAIRES_EMPLACEMENT`, `NUMERO_EMPLACEMENT`, `REGLEMENT_EMPLACEMENT`) VALUES
(1, 1, 50.00, 50, 'très bien', 'ER_M1', 'pas de bruit etc ...'),
(2, 1, 50.00, 50, 'très bien', 'ER_M2', 'pas de bruit etc ...'),
(3, 1, 50.00, 50, 'très bien', 'ER_M3', 'pas de bruit etc ...'),
(4, 1, 50.00, 50, 'très bien', 'ER_C1', 'pas de bruit etc ...'),
(5, 1, 50.00, 50, 'très bien', 'ER_C2', 'pas de bruit etc ...'),
(6, 1, 50.00, 50, 'très bien', 'ER_C3', 'pas de bruit etc ...'),
(7, 1, 50.00, 30, 'très bien', 'ER_T1', 'pas de bruit etc ...'),
(8, 1, 50.00, 30, 'très bien', 'ER_T2', 'pas de bruit etc ...'),
(9, 1, 50.00, 30, 'très bien', 'ER_T3', 'pas de bruit etc ...'),
(10, 1, 50.00, 150, 'très bien', 'ER_CC1', 'pas de bruit etc ...'),
(11, 1, 50.00, 150, 'très bien', 'ER_CC2', 'pas de bruit etc ...'),
(12, 1, 50.00, 150, 'très bien', 'ER_CC3', 'pas de bruit etc ...'),
(13, 1, 50.00, 150, 'très bien', 'ER_CA1', 'pas de bruit etc ...'),
(14, 1, 50.00, 150, 'très bien', 'ER_CA2', 'pas de bruit etc ...'),
(15, 1, 50.00, 150, 'très bien', 'ER_CA3', 'pas de bruit etc ...'),
(16, 2, 80.00, 80, 'très naturel', 'EF_M1', 'pas de papier par terre etc ...'),
(17, 2, 80.00, 80, 'très naturel', 'EF_M2', 'pas de papier par terre etc ...'),
(18, 2, 80.00, 80, 'très naturel', 'EF_M3', 'pas de papier par terre etc ...'),
(19, 2, 80.00, 80, 'très naturel', 'EF_C1', 'pas de papier par terre etc ...'),
(20, 2, 80.00, 80, 'très naturel', 'EF_C2', 'pas de papier par terre etc ...'),
(21, 2, 80.00, 80, 'très naturel', 'EF_C3', 'pas de papier par terre etc ...'),
(22, 2, 80.00, 60, 'très naturel', 'EF_T1', 'pas de papier par terre etc ...'),
(23, 2, 80.00, 60, 'très naturel', 'EF_T2', 'pas de papier par terre etc ...'),
(24, 2, 80.00, 60, 'très naturel', 'EF_T3', 'pas de papier par terre etc ...'),
(25, 2, 80.00, 200, 'très naturel', 'EF_CC1', 'pas de papier par terre etc ...'),
(26, 2, 80.00, 200, 'très naturel', 'EF_CC2', 'pas de papier par terre etc ...'),
(27, 2, 80.00, 200, 'très naturel', 'EF_CC3', 'pas de papier par terre etc ...'),
(28, 2, 80.00, 200, 'très naturel', 'EF_CA1', 'pas de papier par terre etc ...'),
(29, 2, 80.00, 200, 'très naturel', 'EF_CA2', 'pas de papier par terre etc ...'),
(30, 2, 80.00, 200, 'très naturel', 'EF_CA3', 'pas de papier par terre etc ...'),
(31, 3, 99.99, 140, 'belle vue', 'EM_M1', 'tenir le bout de plage propre'),
(32, 3, 99.99, 140, 'belle vue', 'EM_M2', 'tenir le bout de plage propre'),
(33, 3, 99.99, 140, 'belle vue', 'EM_M3', 'tenir le bout de plage propre'),
(34, 3, 99.99, 140, 'belle vue', 'EM_C1', 'tenir le bout de plage propre'),
(35, 3, 99.99, 140, 'belle vue', 'EM_C2', 'tenir le bout de plage propre'),
(36, 3, 99.99, 140, 'belle vue', 'EM_C3', 'tenir le bout de plage propre'),
(37, 3, 40.00, 120, 'belle vue', 'EM_T1', 'tenir le bout de plage propre'),
(38, 3, 40.00, 120, 'belle vue', 'EM_T2', 'tenir le bout de plage propre'),
(39, 3, 40.00, 120, 'belle vue', 'EM_T3', 'tenir le bout de plage propre'),
(40, 3, 99.99, 250, 'belle vue', 'EM_CC1', 'tenir le bout de plage propre'),
(41, 3, 99.99, 250, 'belle vue', 'EM_CC2', 'tenir le bout de plage propre'),
(42, 3, 99.99, 250, 'belle vue', 'EM_CC3', 'tenir le bout de plage propre'),
(43, 3, 99.99, 250, 'belle vue', 'EM_CA1', 'tenir le bout de plage propre'),
(44, 3, 99.99, 250, 'belle vue', 'EM_CA2', 'tenir le bout de plage propre'),
(45, 3, 99.99, 250, 'belle vue', 'EM_CA3', 'tenir le bout de plage propre');

-- --------------------------------------------------------

--
-- Structure de la table `equipement`
--

CREATE TABLE `equipement` (
  `ID_EQUIPEMENT` int(11) NOT NULL,
  `ID_EMPLACEMENT` int(11) DEFAULT NULL,
  `ID_TYPE_EQUIPEMENT` int(11) NOT NULL,
  `LABEL_EQUIPEMENT` char(20) DEFAULT NULL,
  `TARIF_EQUIPEMENT` float(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `equipement`
--

INSERT INTO `equipement` (`ID_EQUIPEMENT`, `ID_EMPLACEMENT`, `ID_TYPE_EQUIPEMENT`, `LABEL_EQUIPEMENT`, `TARIF_EQUIPEMENT`) VALUES
(1, 1, 1, 'TV', 9.99),
(2, 2, 1, 'TV', 9.99),
(3, 3, 1, 'TV', 9.99),
(4, 4, 1, 'TV', 9.99),
(5, 5, 1, 'TV', 9.99),
(6, 6, 1, 'TV', 9.99),
(7, 1, 1, 'Radio', 9.99),
(8, 2, 1, 'Radio', 9.99),
(9, 3, 1, 'Radio', 9.99),
(10, 4, 1, 'Radio', 9.99),
(11, 5, 1, 'Radio', 9.99),
(12, 6, 1, 'Radio', 9.99),
(13, 1, 1, 'Machine à laver', 9.99),
(14, 2, 1, 'Machine à laver', 9.99),
(15, 3, 1, 'Machine à laver', 9.99),
(16, 4, 1, 'Machine à laver', 9.99),
(17, 5, 1, 'Machine à laver', 9.99),
(18, 6, 1, 'Machine à laver', 9.99),
(19, 1, 1, 'Lave-aisselle', 9.99),
(20, 2, 1, 'Lave-aisselle', 9.99),
(21, 3, 1, 'Lave-aisselle', 9.99),
(22, 4, 1, 'Lave-aisselle', 9.99),
(23, 5, 1, 'Lave-aisselle', 9.99),
(24, 6, 1, 'Lave-aisselle', 9.99),
(25, 1, 2, 'barbecue', 9.99),
(26, 2, 2, 'barbecue', 9.99),
(27, 3, 2, 'barbecue', 9.99),
(28, 4, 2, 'barbecue', 9.99),
(29, 5, 2, 'barbecue', 9.99),
(30, 6, 2, 'barbecue', 9.99),
(31, 1, 3, 'serpillere', 9.99),
(32, 2, 3, 'serpillere', 9.99),
(33, 3, 3, 'serpillere', 9.99),
(34, 4, 3, 'serpillere', 9.99),
(35, 5, 3, 'serpillere', 9.99),
(36, 6, 3, 'serpillere', 9.99),
(37, 1, 3, 'produit nettoyage', 9.99),
(38, 2, 3, 'produit nettoyage', 9.99),
(39, 3, 3, 'produit nettoyage', 9.99),
(40, 4, 3, 'produit nettoyage', 9.99),
(41, 5, 3, 'produit nettoyage', 9.99),
(42, 6, 3, 'produit nettoyage', 9.99),
(43, 1, 3, 'karcher', 9.99),
(44, 2, 3, 'karcher', 9.99),
(45, 3, 3, 'karcher', 9.99),
(46, 4, 3, 'karcher', 9.99),
(47, 5, 3, 'karcher', 9.99),
(48, 6, 3, 'karcher', 9.99),
(49, 1, 3, 'aspirateur', 9.99),
(50, 2, 3, 'aspirateur', 9.99),
(51, 3, 3, 'aspirateur', 9.99),
(52, 4, 3, 'aspirateur', 9.99),
(53, 5, 3, 'aspirateur', 9.99),
(54, 6, 3, 'aspirateur', 9.99),
(55, 1, 3, 'grande poubelle', 9.99),
(56, 2, 3, 'grande poubelle', 9.99),
(57, 3, 3, 'grande poubelle', 9.99),
(58, 4, 3, 'grande poubelle', 9.99),
(59, 5, 3, 'grande poubelle', 9.99),
(60, 6, 3, 'grande poubelle', 9.99),
(61, 1, 4, 'seance de menage', 9.99),
(62, 2, 4, 'seance de menage', 9.99),
(63, 3, 4, 'seance de menage', 9.99),
(64, 4, 4, 'seance de menage', 9.99),
(65, 5, 4, 'seance de menage', 9.99),
(66, 6, 4, 'seance de menage', 9.99),
(67, 1, 4, 'svc matinale', 9.99),
(68, 2, 4, 'svc matinale', 9.99),
(69, 3, 4, 'svc matinale', 9.99),
(70, 4, 4, 'svc matinale', 9.99),
(71, 5, 4, 'svc matinale', 9.99),
(72, 6, 4, 'svc matinale', 9.99),
(73, 1, 4, 'course livraison', 9.99),
(74, 2, 4, 'course livraison', 9.99),
(75, 3, 4, 'course livraison', 9.99),
(76, 4, 4, 'course livraison', 9.99),
(77, 5, 4, 'course livraison', 9.99),
(78, 6, 4, 'course livraison', 9.99),
(79, 1, 4, 'service personalise', 9.99),
(80, 2, 4, 'service personalise', 9.99),
(81, 3, 4, 'service personalise', 9.99),
(82, 4, 4, 'service personalise', 9.99),
(83, 5, 4, 'service personalise', 9.99),
(84, 6, 4, 'service personalise', 9.99),
(85, 7, 1, 'Radio', 9.99),
(86, 9, 1, 'Radio', 9.99),
(87, 7, 2, 'barbecue', 9.99),
(88, 9, 2, 'barbecue', 9.99),
(89, 7, 3, 'grande poubelle', 9.99),
(90, 9, 3, 'grande poubelle', 9.99),
(91, 7, 4, 'svc matinale', 9.99),
(92, 8, 4, 'svc matinale', 9.99),
(93, 9, 4, 'svc matinale', 9.99),
(94, 7, 4, 'course livraison', 9.99),
(95, 8, 4, 'course livraison', 9.99),
(96, 9, 4, 'course livraison', 9.99),
(97, 7, 4, 'service personalise', 9.99),
(98, 8, 4, 'service personalise', 9.99),
(99, 9, 4, 'service personalise', 9.99),
(100, 10, 1, 'Radio', 9.99),
(101, 11, 1, 'Radio', 9.99),
(102, 12, 1, 'Radio', 9.99),
(103, 13, 1, 'Radio', 9.99),
(104, 14, 1, 'Radio', 9.99),
(105, 15, 1, 'Radio', 9.99),
(106, 10, 2, 'barbecue', 9.99),
(107, 11, 2, 'barbecue', 9.99),
(108, 12, 2, 'barbecue', 9.99),
(109, 13, 2, 'barbecue', 9.99),
(110, 14, 2, 'barbecue', 9.99),
(111, 15, 2, 'barbecue', 9.99),
(112, 10, 3, 'karcher', 9.99),
(113, 11, 3, 'karcher', 9.99),
(114, 12, 3, 'karcher', 9.99),
(115, 13, 3, 'karcher', 9.99),
(116, 14, 3, 'karcher', 9.99),
(117, 15, 3, 'karcher', 9.99),
(118, 10, 3, 'grande poubelle', 9.99),
(119, 11, 3, 'grande poubelle', 9.99),
(120, 12, 3, 'grande poubelle', 9.99),
(121, 13, 3, 'grande poubelle', 9.99),
(122, 14, 3, 'grande poubelle', 9.99),
(123, 15, 3, 'grande poubelle', 9.99),
(124, 10, 4, 'seance de menage', 9.99),
(125, 11, 4, 'seance de menage', 9.99),
(126, 12, 4, 'seance de menage', 9.99),
(127, 13, 4, 'seance de menage', 9.99),
(128, 14, 4, 'seance de menage', 9.99),
(129, 15, 4, 'seance de menage', 9.99),
(130, 10, 4, 'svc matinale', 9.99),
(131, 11, 4, 'svc matinale', 9.99),
(132, 12, 4, 'svc matinale', 9.99),
(133, 13, 4, 'svc matinale', 9.99),
(134, 14, 4, 'svc matinale', 9.99),
(135, 15, 4, 'svc matinale', 9.99),
(136, 10, 4, 'course livraison', 9.99),
(137, 11, 4, 'course livraison', 9.99),
(138, 12, 4, 'course livraison', 9.99),
(139, 13, 4, 'course livraison', 9.99),
(140, 14, 4, 'course livraison', 9.99),
(141, 15, 4, 'course livraison', 9.99),
(142, 10, 4, 'service personalise', 9.99),
(143, 11, 4, 'service personalise', 9.99),
(144, 12, 4, 'service personalise', 9.99),
(145, 13, 4, 'service personalise', 9.99),
(146, 14, 4, 'service personalise', 9.99),
(147, 15, 4, 'service personalise', 9.99),
(148, 16, 1, 'TV', 9.99),
(149, 1, 1, 'Radio', 9.99),
(150, 16, 1, 'Machine à laver', 9.99),
(151, 16, 1, 'Lave-aisselle', 9.99),
(152, 16, 2, 'barbecue', 9.99),
(153, 1, 2, 'grille', 9.99),
(154, 1, 2, 'emplacement feu', 9.99),
(155, 1, 3, 'serpillere', 9.99),
(156, 1, 3, 'produit nettoyage', 9.99),
(157, 1, 3, 'karcher', 9.99),
(158, 1, 3, 'aspirateur', 9.99),
(159, 1, 3, 'grande poubelle', 9.99),
(160, 1, 4, 'seance de menage', 9.99),
(161, 1, 4, 'svc matinale', 9.99),
(162, 1, 4, 'course livraison', 9.99),
(163, 1, 4, 'service personalise', 9.99),
(164, 1, 1, 'Radio', 9.99),
(165, 1, 2, 'balet', 9.99),
(166, 1, 2, 'barbecue', 9.99),
(167, 1, 2, 'grille', 9.99),
(168, 1, 2, 'emplacement feu', 9.99),
(169, 1, 3, 'grande poubelle', 9.99),
(170, 1, 4, 'svc matinale', 9.99),
(171, 1, 4, 'course livraison', 9.99),
(172, 1, 4, 'service personalise', 9.99),
(173, 1, 1, 'Radio', 9.99),
(174, 1, 2, 'barbecue', 9.99),
(175, 1, 3, 'serpillere', 9.99),
(176, 1, 3, 'produit nettoyage', 9.99),
(177, 1, 3, 'karcher', 9.99),
(178, 1, 3, 'aspirateur', 9.99),
(179, 1, 3, 'grande poubelle', 9.99),
(180, 1, 4, 'seance de menage', 9.99),
(181, 1, 4, 'svc matinale', 9.99),
(182, 1, 4, 'course livraison', 9.99),
(183, 1, 4, 'service personalise', 9.99),
(184, 1, 1, 'Radio', 9.99),
(185, 35, 1, 'Machine à laver', 9.99),
(186, 35, 1, 'Lave-aisselle', 9.99),
(187, 35, 2, 'barbecue', 9.99),
(188, 1, 3, 'serpillere', 9.99),
(189, 1, 3, 'produit nettoyage', 9.99),
(190, 1, 3, 'karcher', 9.99),
(191, 1, 3, 'aspirateur', 9.99),
(192, 1, 3, 'grande poubelle', 9.99),
(193, 1, 4, 'seance de menage', 9.99),
(194, 1, 4, 'svc matinale', 9.99),
(195, 1, 4, 'course livraison', 9.99),
(196, 1, 4, 'service personalise', 9.99),
(197, 1, 1, 'Radio', 9.99),
(198, 1, 2, 'balet', 9.99),
(199, 1, 2, 'barbecue', 9.99),
(200, 1, 3, 'grande poubelle', 9.99),
(201, 1, 4, 'svc matinale', 9.99),
(202, 1, 4, 'course livraison', 9.99),
(203, 1, 4, 'service personalise', 9.99),
(204, 1, 1, 'Radio', 9.99),
(205, 1, 2, 'barbecue', 9.99),
(206, 1, 3, 'serpillere', 9.99),
(207, 1, 3, 'produit nettoyage', 9.99),
(208, 1, 3, 'karcher', 9.99),
(209, 1, 3, 'aspirateur', 9.99),
(210, 1, 3, 'grande poubelle', 9.99),
(211, 1, 4, 'seance de menage', 9.99),
(212, 1, 4, 'svc matinale', 9.99),
(213, 1, 4, 'course livraison', 9.99),
(214, 1, 4, 'service personalise', 9.99);

-- --------------------------------------------------------

--
-- Structure de la table `formule`
--

CREATE TABLE `formule` (
  `ID_FORMULE` int(11) NOT NULL,
  `ID_LOCATION` int(11) NOT NULL,
  `ID_TYPE_SAISON` int(11) NOT NULL,
  `TEMPS_SEJOUR_FORMULE` decimal(2,0) DEFAULT NULL,
  `SOUSCRIT_ANIMATION` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `formule`
--

INSERT INTO `formule` (`ID_FORMULE`, `ID_LOCATION`, `ID_TYPE_SAISON`, `TEMPS_SEJOUR_FORMULE`, `SOUSCRIT_ANIMATION`) VALUES
(1, 1, 1, '1', 0),
(2, 2, 1, '1', 0),
(3, 3, 1, '1', 0),
(4, 4, 1, '1', 0),
(5, 5, 1, '1', 0),
(6, 6, 1, '1', 0),
(7, 7, 1, '1', 0),
(8, 8, 1, '1', 0),
(9, 9, 1, '1', 0),
(10, 10, 1, '1', 0),
(11, 11, 1, '1', 0),
(12, 12, 1, '1', 0),
(13, 13, 1, '1', 0),
(14, 14, 1, '1', 0),
(15, 15, 1, '1', 0),
(16, 16, 1, '1', 0),
(17, 17, 1, '1', 0),
(18, 18, 1, '1', 0),
(19, 19, 1, '1', 0),
(20, 20, 1, '1', 0),
(21, 21, 1, '1', 0),
(22, 22, 1, '1', 0),
(23, 23, 1, '1', 0),
(24, 24, 1, '1', 0),
(25, 25, 1, '1', 0),
(26, 26, 1, '1', 0),
(27, 27, 1, '1', 0),
(28, 28, 1, '1', 0),
(29, 29, 1, '1', 0),
(30, 30, 1, '1', 0),
(31, 31, 1, '1', 0),
(32, 32, 1, '1', 0),
(33, 33, 1, '1', 0),
(34, 34, 1, '1', 0),
(35, 35, 1, '1', 1),
(36, 36, 1, '1', 0),
(37, 37, 1, '1', 0),
(38, 38, 1, '1', 0),
(39, 39, 1, '1', 0),
(40, 40, 1, '1', 0),
(41, 41, 1, '1', 0),
(42, 42, 1, '1', 0),
(43, 43, 1, '1', 0),
(44, 44, 1, '1', 0),
(45, 45, 1, '1', 0),
(46, 1, 2, '1', 0),
(47, 2, 2, '1', 0),
(48, 3, 2, '1', 0),
(49, 4, 2, '1', 0),
(50, 5, 2, '1', 0),
(51, 6, 2, '1', 0),
(52, 7, 2, '1', 0),
(53, 8, 2, '1', 0),
(54, 9, 2, '1', 0),
(55, 10, 2, '1', 0),
(56, 11, 2, '1', 0),
(57, 12, 2, '1', 0),
(58, 13, 2, '1', 0),
(59, 14, 2, '1', 0),
(60, 15, 2, '1', 0),
(61, 16, 2, '1', 1),
(62, 17, 2, '1', 0),
(63, 18, 2, '1', 0),
(64, 19, 2, '1', 0),
(65, 20, 2, '1', 0),
(66, 21, 2, '1', 0),
(67, 22, 2, '1', 0),
(68, 23, 2, '1', 0),
(69, 24, 2, '1', 0),
(70, 25, 2, '1', 0),
(71, 26, 2, '1', 0),
(72, 27, 2, '1', 0),
(73, 28, 2, '1', 0),
(74, 29, 2, '1', 0),
(75, 30, 2, '1', 0),
(76, 31, 2, '1', 0),
(77, 32, 2, '1', 0),
(78, 33, 2, '1', 0),
(79, 34, 2, '1', 0),
(80, 35, 2, '1', 0),
(81, 36, 2, '1', 0),
(82, 37, 2, '1', 0),
(83, 38, 2, '1', 0),
(84, 39, 2, '1', 0),
(85, 40, 2, '1', 0),
(86, 41, 2, '1', 0),
(87, 42, 2, '1', 0),
(88, 43, 2, '1', 0),
(89, 44, 2, '1', 0),
(90, 45, 2, '1', 0),
(91, 1, 3, '1', 0),
(92, 2, 3, '1', 0),
(93, 3, 3, '1', 0),
(94, 4, 3, '1', 0),
(95, 5, 3, '1', 0),
(96, 6, 3, '1', 0),
(97, 7, 3, '1', 0),
(98, 8, 3, '1', 1),
(99, 9, 3, '1', 0),
(100, 10, 3, '1', 0),
(101, 11, 3, '1', 0),
(102, 12, 3, '1', 0),
(103, 13, 3, '1', 0),
(104, 14, 3, '1', 0),
(105, 15, 3, '1', 0),
(106, 16, 3, '1', 0),
(107, 17, 3, '1', 0),
(108, 18, 3, '1', 0),
(109, 19, 3, '1', 0),
(110, 20, 3, '1', 0),
(111, 21, 3, '1', 0),
(112, 22, 3, '1', 0),
(113, 23, 3, '1', 0),
(114, 24, 3, '1', 0),
(115, 25, 3, '1', 0),
(116, 26, 3, '1', 0),
(117, 27, 3, '1', 0),
(118, 28, 3, '1', 0),
(119, 29, 3, '1', 0),
(120, 30, 3, '1', 0),
(121, 31, 3, '1', 0),
(122, 32, 3, '1', 0),
(123, 33, 3, '1', 0),
(124, 34, 3, '1', 0),
(125, 35, 3, '1', 0),
(126, 36, 3, '1', 0),
(127, 37, 3, '1', 0),
(128, 38, 3, '1', 0),
(129, 39, 3, '1', 0),
(130, 40, 3, '1', 0),
(131, 41, 3, '1', 0),
(132, 42, 3, '1', 0),
(133, 43, 3, '1', 0),
(134, 44, 3, '1', 0),
(135, 45, 3, '1', 0);

-- --------------------------------------------------------

--
-- Structure de la table `inscription_session_client`
--

CREATE TABLE `inscription_session_client` (
  `ID_SESSION` int(11) NOT NULL,
  `ID_CLIENT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `inscription_session_client`
--

INSERT INTO `inscription_session_client` (`ID_SESSION`, `ID_CLIENT`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `inscription_session_client_acc`
--

CREATE TABLE `inscription_session_client_acc` (
  `ID_SESSION` int(11) NOT NULL,
  `ID_ACC` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `inscription_session_client_acc`
--

INSERT INTO `inscription_session_client_acc` (`ID_SESSION`, `ID_ACC`) VALUES
(1, 1),
(2, 5),
(3, 2),
(6, 3);

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE `location` (
  `ID_LOCATION` int(11) NOT NULL,
  `ID_EMPLACEMENT` int(11) NOT NULL,
  `ID_TYPE_LOCATION` int(11) NOT NULL,
  `TAILLE_LOCATION` float DEFAULT NULL,
  `NB_PERS_MAX_LOCATION` decimal(2,0) DEFAULT NULL,
  `TARIF_LOCATION` float(4,2) DEFAULT NULL,
  `CAUTION_LOCATION` float(4,2) DEFAULT NULL,
  `ETAT_LIBRE_LOCATION` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `location`
--

INSERT INTO `location` (`ID_LOCATION`, `ID_EMPLACEMENT`, `ID_TYPE_LOCATION`, `TAILLE_LOCATION`, `NB_PERS_MAX_LOCATION`, `TARIF_LOCATION`, `CAUTION_LOCATION`, `ETAT_LIBRE_LOCATION`) VALUES
(1, 1, 1, 25, '2', 99.99, 99.99, 0),
(2, 2, 1, 40, '4', 99.99, 99.99, 0),
(3, 3, 1, 70, '8', 99.99, 99.99, 1),
(4, 4, 2, 25, '2', 99.99, 99.99, 0),
(5, 5, 2, 40, '4', 99.99, 99.99, 0),
(6, 6, 2, 70, '8', 99.99, 99.99, 0),
(7, 7, 3, 15, '2', 50.00, 10.00, 0),
(8, 8, 3, 30, '4', 80.00, 10.00, 0),
(9, 9, 3, 60, '8', 99.99, 10.00, 0),
(10, 10, 4, 100, '2', 99.99, 10.00, 0),
(11, 11, 4, 150, '4', 99.99, 10.00, 0),
(12, 12, 4, 200, '8', 99.99, 10.00, 0),
(13, 13, 5, 100, '2', 99.99, 10.00, 0),
(14, 14, 5, 150, '4', 99.99, 10.00, 0),
(15, 15, 5, 200, '8', 99.99, 10.00, 0),
(16, 16, 1, 25, '2', 99.99, 99.99, 1),
(17, 17, 1, 40, '4', 99.99, 99.99, 0),
(18, 18, 1, 70, '8', 99.99, 99.99, 0),
(19, 19, 2, 25, '2', 99.99, 99.99, 0),
(20, 20, 2, 40, '4', 99.99, 99.99, 0),
(21, 21, 2, 70, '8', 99.99, 99.99, 0),
(22, 22, 3, 15, '2', 50.00, 10.00, 0),
(23, 23, 3, 30, '4', 80.00, 10.00, 0),
(24, 24, 3, 60, '8', 99.99, 10.00, 0),
(25, 25, 4, 100, '2', 99.99, 10.00, 0),
(26, 26, 4, 150, '4', 99.99, 10.00, 0),
(27, 27, 4, 200, '8', 99.99, 10.00, 0),
(28, 28, 5, 100, '2', 99.99, 10.00, 0),
(29, 29, 5, 150, '4', 99.99, 10.00, 0),
(30, 30, 5, 200, '8', 99.99, 10.00, 0),
(31, 31, 1, 25, '2', 99.99, 99.99, 0),
(32, 32, 1, 40, '4', 99.99, 99.99, 0),
(33, 33, 1, 70, '8', 99.99, 99.99, 0),
(34, 34, 2, 25, '2', 99.99, 99.99, 0),
(35, 35, 2, 40, '4', 99.99, 99.99, 0),
(36, 36, 2, 70, '8', 99.99, 99.99, 0),
(37, 37, 3, 15, '2', 50.00, 10.00, 0),
(38, 38, 3, 30, '4', 80.00, 10.00, 0),
(39, 39, 3, 60, '8', 99.99, 10.00, 0),
(40, 40, 4, 100, '2', 99.99, 10.00, 0),
(41, 41, 4, 150, '4', 99.99, 10.00, 0),
(42, 42, 4, 200, '8', 99.99, 10.00, 0),
(43, 43, 5, 100, '2', 99.99, 10.00, 0),
(44, 44, 5, 150, '4', 99.99, 10.00, 0),
(45, 45, 5, 200, '8', 99.99, 10.00, 0);

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE `session` (
  `ID_SESSION` int(11) NOT NULL,
  `ID_ANIMATION` int(11) NOT NULL,
  `DATE_DEBUT_SESSION` datetime DEFAULT NULL,
  `DATE_FIN_SESSION` datetime DEFAULT NULL,
  `HEURE_DEBUT_SESSION` time DEFAULT NULL,
  `HEURE_FIN_SESSION` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `session`
--

INSERT INTO `session` (`ID_SESSION`, `ID_ANIMATION`, `DATE_DEBUT_SESSION`, `DATE_FIN_SESSION`, `HEURE_DEBUT_SESSION`, `HEURE_FIN_SESSION`) VALUES
(1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '14:00:00', '15:00:00'),
(2, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '14:00:00', '15:00:00'),
(3, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '16:00:00', '17:00:00'),
(4, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '14:00:00', '16:00:00'),
(5, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '14:00:00', '16:00:00'),
(6, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '21:00:00', '01:00:00'),
(7, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '16:00:00', '17:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `souscrit_formule`
--

CREATE TABLE `souscrit_formule` (
  `ID_FORMULE` int(11) NOT NULL,
  `ID_DEVIS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `souscrit_formule`
--

INSERT INTO `souscrit_formule` (`ID_FORMULE`, `ID_DEVIS`) VALUES
(35, 1),
(61, 2),
(98, 3);

-- --------------------------------------------------------

--
-- Structure de la table `type_animation`
--

CREATE TABLE `type_animation` (
  `ID_TYPE_ANIMATION` int(11) NOT NULL,
  `NOM_TYPE_ANIMATION` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Chaque type d''animation sera enregistr? comme une entr?e un';

--
-- Déchargement des données de la table `type_animation`
--

INSERT INTO `type_animation` (`ID_TYPE_ANIMATION`, `NOM_TYPE_ANIMATION`) VALUES
(1, 'aquatique'),
(2, 'culturel'),
(3, 'randonnee'),
(4, 'escalade'),
(5, 'fiesta'),
(6, 'culinaire');

-- --------------------------------------------------------

--
-- Structure de la table `type_emplacement`
--

CREATE TABLE `type_emplacement` (
  `ID_TYPE_EMPLACEMENT` int(11) NOT NULL,
  `NOM_TYPE_EMPLACEMENT` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='il s''agit du type d''emplacement (pres de la for?t, pres de';

--
-- Déchargement des données de la table `type_emplacement`
--

INSERT INTO `type_emplacement` (`ID_TYPE_EMPLACEMENT`, `NOM_TYPE_EMPLACEMENT`) VALUES
(1, 'proche route'),
(2, 'proche forêt'),
(3, 'proche mer');

-- --------------------------------------------------------

--
-- Structure de la table `type_equipement`
--

CREATE TABLE `type_equipement` (
  `ID_TYPE_EQUIPEMENT` int(11) NOT NULL,
  `NOM_TYPE_EQUIPEMENT` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='il s''agit des types d''?quipements (media, jardin, m?nage, ';

--
-- Déchargement des données de la table `type_equipement`
--

INSERT INTO `type_equipement` (`ID_TYPE_EQUIPEMENT`, `NOM_TYPE_EQUIPEMENT`) VALUES
(1, 'media'),
(2, 'jardin'),
(3, 'ménage'),
(4, 'service');

-- --------------------------------------------------------

--
-- Structure de la table `type_location`
--

CREATE TABLE `type_location` (
  `ID_TYPE_LOCATION` int(11) NOT NULL,
  `NOM_TYPE_LOCATION` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='il s''agit du type de location (mobilhome, tente, campingcar';

--
-- Déchargement des données de la table `type_location`
--

INSERT INTO `type_location` (`ID_TYPE_LOCATION`, `NOM_TYPE_LOCATION`) VALUES
(1, 'mobilhome'),
(2, 'chalet'),
(3, 'tente'),
(4, 'campingcar'),
(5, 'caravane');

-- --------------------------------------------------------

--
-- Structure de la table `type_saison`
--

CREATE TABLE `type_saison` (
  `ID_TYPE_SAISON` int(11) NOT NULL,
  `NOM_TYPE_SAISON` char(10) DEFAULT NULL,
  `POURCENTAGE_TYPE_SAISON` decimal(2,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type_saison`
--

INSERT INTO `type_saison` (`ID_TYPE_SAISON`, `NOM_TYPE_SAISON`, `POURCENTAGE_TYPE_SAISON`) VALUES
(1, 'verte', '0.00'),
(2, 'orange', '0.99'),
(3, 'rouge', '0.99');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `accompagnant`
--
ALTER TABLE `accompagnant`
  ADD PRIMARY KEY (`ID_ACC`),
  ADD KEY `FK_EST_ACCOMPAGNE` (`ID_CLIENT`);

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`ID_ACTEUR`);

--
-- Index pour la table `animation`
--
ALTER TABLE `animation`
  ADD PRIMARY KEY (`ID_ANIMATION`),
  ADD KEY `FK_EST_ANIME_PAR` (`ID_ACTEUR`),
  ADD KEY `FK_EST_DE_TYPE_1` (`ID_TYPE_ANIMATION`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ID_CLIENT`);

--
-- Index pour la table `devis`
--
ALTER TABLE `devis`
  ADD PRIMARY KEY (`ID_DEVIS`),
  ADD KEY `FK_DEMANDE_UN` (`ID_CLIENT`);

--
-- Index pour la table `emplacement`
--
ALTER TABLE `emplacement`
  ADD PRIMARY KEY (`ID_EMPLACEMENT`),
  ADD KEY `FK_EST_DE_TYPE_3` (`ID_TYPE_EMPLACEMENT`);

--
-- Index pour la table `equipement`
--
ALTER TABLE `equipement`
  ADD PRIMARY KEY (`ID_EQUIPEMENT`),
  ADD KEY `FK_EST_DE_TYPE_4` (`ID_TYPE_EQUIPEMENT`),
  ADD KEY `FK_POSSEDE` (`ID_EMPLACEMENT`);

--
-- Index pour la table `formule`
--
ALTER TABLE `formule`
  ADD PRIMARY KEY (`ID_FORMULE`),
  ADD KEY `FK_EST_DE_TYPE_5` (`ID_TYPE_SAISON`),
  ADD KEY `FK_SE_COMPOSE_2` (`ID_LOCATION`);

--
-- Index pour la table `inscription_session_client`
--
ALTER TABLE `inscription_session_client`
  ADD PRIMARY KEY (`ID_SESSION`,`ID_CLIENT`),
  ADD KEY `FK_INSCRIPTION_SESSION_CLIENT2` (`ID_CLIENT`);

--
-- Index pour la table `inscription_session_client_acc`
--
ALTER TABLE `inscription_session_client_acc`
  ADD PRIMARY KEY (`ID_SESSION`,`ID_ACC`),
  ADD KEY `FK_INSCRIPTION_SESSION_CLIENT_ACC2` (`ID_ACC`);

--
-- Index pour la table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`ID_LOCATION`),
  ADD KEY `FK_COMPREND` (`ID_EMPLACEMENT`),
  ADD KEY `FK_EST_DE_TYPE_2` (`ID_TYPE_LOCATION`);

--
-- Index pour la table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`ID_SESSION`),
  ADD KEY `FK_EST_COMPOSE` (`ID_ANIMATION`);

--
-- Index pour la table `souscrit_formule`
--
ALTER TABLE `souscrit_formule`
  ADD PRIMARY KEY (`ID_FORMULE`,`ID_DEVIS`),
  ADD KEY `FK_SOUSCRIT_FORMULE2` (`ID_DEVIS`);

--
-- Index pour la table `type_animation`
--
ALTER TABLE `type_animation`
  ADD PRIMARY KEY (`ID_TYPE_ANIMATION`);

--
-- Index pour la table `type_emplacement`
--
ALTER TABLE `type_emplacement`
  ADD PRIMARY KEY (`ID_TYPE_EMPLACEMENT`);

--
-- Index pour la table `type_equipement`
--
ALTER TABLE `type_equipement`
  ADD PRIMARY KEY (`ID_TYPE_EQUIPEMENT`);

--
-- Index pour la table `type_location`
--
ALTER TABLE `type_location`
  ADD PRIMARY KEY (`ID_TYPE_LOCATION`);

--
-- Index pour la table `type_saison`
--
ALTER TABLE `type_saison`
  ADD PRIMARY KEY (`ID_TYPE_SAISON`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `accompagnant`
--
ALTER TABLE `accompagnant`
  MODIFY `ID_ACC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `acteur`
--
ALTER TABLE `acteur`
  MODIFY `ID_ACTEUR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `animation`
--
ALTER TABLE `animation`
  MODIFY `ID_ANIMATION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `ID_CLIENT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `devis`
--
ALTER TABLE `devis`
  MODIFY `ID_DEVIS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `emplacement`
--
ALTER TABLE `emplacement`
  MODIFY `ID_EMPLACEMENT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `equipement`
--
ALTER TABLE `equipement`
  MODIFY `ID_EQUIPEMENT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT pour la table `formule`
--
ALTER TABLE `formule`
  MODIFY `ID_FORMULE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT pour la table `location`
--
ALTER TABLE `location`
  MODIFY `ID_LOCATION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `session`
--
ALTER TABLE `session`
  MODIFY `ID_SESSION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `type_animation`
--
ALTER TABLE `type_animation`
  MODIFY `ID_TYPE_ANIMATION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `type_emplacement`
--
ALTER TABLE `type_emplacement`
  MODIFY `ID_TYPE_EMPLACEMENT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `type_equipement`
--
ALTER TABLE `type_equipement`
  MODIFY `ID_TYPE_EQUIPEMENT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `type_location`
--
ALTER TABLE `type_location`
  MODIFY `ID_TYPE_LOCATION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `type_saison`
--
ALTER TABLE `type_saison`
  MODIFY `ID_TYPE_SAISON` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `accompagnant`
--
ALTER TABLE `accompagnant`
  ADD CONSTRAINT `FK_EST_ACCOMPAGNE` FOREIGN KEY (`ID_CLIENT`) REFERENCES `client` (`ID_CLIENT`);

--
-- Contraintes pour la table `animation`
--
ALTER TABLE `animation`
  ADD CONSTRAINT `FK_EST_ANIME_PAR` FOREIGN KEY (`ID_ACTEUR`) REFERENCES `acteur` (`ID_ACTEUR`),
  ADD CONSTRAINT `FK_EST_DE_TYPE_1` FOREIGN KEY (`ID_TYPE_ANIMATION`) REFERENCES `type_animation` (`ID_TYPE_ANIMATION`);

--
-- Contraintes pour la table `devis`
--
ALTER TABLE `devis`
  ADD CONSTRAINT `FK_DEMANDE_UN` FOREIGN KEY (`ID_CLIENT`) REFERENCES `client` (`ID_CLIENT`);

--
-- Contraintes pour la table `emplacement`
--
ALTER TABLE `emplacement`
  ADD CONSTRAINT `FK_EST_DE_TYPE_3` FOREIGN KEY (`ID_TYPE_EMPLACEMENT`) REFERENCES `type_emplacement` (`ID_TYPE_EMPLACEMENT`);

--
-- Contraintes pour la table `equipement`
--
ALTER TABLE `equipement`
  ADD CONSTRAINT `FK_EST_DE_TYPE_4` FOREIGN KEY (`ID_TYPE_EQUIPEMENT`) REFERENCES `type_equipement` (`ID_TYPE_EQUIPEMENT`),
  ADD CONSTRAINT `FK_POSSEDE` FOREIGN KEY (`ID_EMPLACEMENT`) REFERENCES `emplacement` (`ID_EMPLACEMENT`);

--
-- Contraintes pour la table `formule`
--
ALTER TABLE `formule`
  ADD CONSTRAINT `FK_EST_DE_TYPE_5` FOREIGN KEY (`ID_TYPE_SAISON`) REFERENCES `type_saison` (`ID_TYPE_SAISON`),
  ADD CONSTRAINT `FK_SE_COMPOSE_2` FOREIGN KEY (`ID_LOCATION`) REFERENCES `location` (`ID_LOCATION`);

--
-- Contraintes pour la table `inscription_session_client`
--
ALTER TABLE `inscription_session_client`
  ADD CONSTRAINT `FK_INSCRIPTION_SESSION_CLIENT` FOREIGN KEY (`ID_SESSION`) REFERENCES `session` (`ID_SESSION`),
  ADD CONSTRAINT `FK_INSCRIPTION_SESSION_CLIENT2` FOREIGN KEY (`ID_CLIENT`) REFERENCES `client` (`ID_CLIENT`);

--
-- Contraintes pour la table `inscription_session_client_acc`
--
ALTER TABLE `inscription_session_client_acc`
  ADD CONSTRAINT `FK_INSCRIPTION_SESSION_CLIENT_ACC` FOREIGN KEY (`ID_SESSION`) REFERENCES `session` (`ID_SESSION`),
  ADD CONSTRAINT `FK_INSCRIPTION_SESSION_CLIENT_ACC2` FOREIGN KEY (`ID_ACC`) REFERENCES `accompagnant` (`ID_ACC`);

--
-- Contraintes pour la table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `FK_COMPREND` FOREIGN KEY (`ID_EMPLACEMENT`) REFERENCES `emplacement` (`ID_EMPLACEMENT`),
  ADD CONSTRAINT `FK_EST_DE_TYPE_2` FOREIGN KEY (`ID_TYPE_LOCATION`) REFERENCES `type_location` (`ID_TYPE_LOCATION`);

--
-- Contraintes pour la table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `FK_EST_COMPOSE` FOREIGN KEY (`ID_ANIMATION`) REFERENCES `animation` (`ID_ANIMATION`);

--
-- Contraintes pour la table `souscrit_formule`
--
ALTER TABLE `souscrit_formule`
  ADD CONSTRAINT `FK_SOUSCRIT_FORMULE` FOREIGN KEY (`ID_FORMULE`) REFERENCES `formule` (`ID_FORMULE`),
  ADD CONSTRAINT `FK_SOUSCRIT_FORMULE2` FOREIGN KEY (`ID_DEVIS`) REFERENCES `devis` (`ID_DEVIS`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
