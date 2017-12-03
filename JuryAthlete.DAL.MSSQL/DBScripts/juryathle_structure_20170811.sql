-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Hôte : clustermysql04.hosteur.com
-- Généré le :  ven. 11 août 2017 à 20:31
-- Version du serveur :  5.5.37
-- Version de PHP :  5.6.24

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `juryathle`
--

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `Jubilaires`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `Jubilaires`;
CREATE TABLE IF NOT EXISTS `Jubilaires` (
`nom` varchar(50)
,`prenom` varchar(50)
,`club` varchar(5)
,`nb_années` double
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `Liste des compétitions futures`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `Liste des compétitions futures`;
CREATE TABLE IF NOT EXISTS `Liste des compétitions futures` (
`id` int(11)
,`f_nom` varchar(40)
,`f_date` date
,`f_heure` varchar(10)
,`f_matin` tinyint(4)
,`f_apresmidi` tinyint(4)
,`f_soir` tinyint(4)
,`f_club` varchar(10)
,`f_lieu` varchar(255)
,`f_convocation_demande` int(11)
,`f_convocation` varchar(255)
,`f_rapport` tinyint(4)
,`f_actif` tinyint(4)
,`f_visible` tinyint(4)
,`f_entry_dt` timestamp
,`f_update_dt` timestamp
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `Liste des officiels de Bruxelles`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `Liste des officiels de Bruxelles`;
CREATE TABLE IF NOT EXISTS `Liste des officiels de Bruxelles` (
`Nom` varchar(50)
,`Prénom` varchar(50)
,`Surnom` varchar(50)
,`Club` varchar(5)
,`Province` varchar(100)
,`Brevet` int(11)
,`Tél` varchar(50)
,`Tél2` varchar(50)
,`Email` varchar(100)
,`Courrier_papier` varchar(3)
,`Adresse` varchar(100)
,`CP` varchar(10)
,`Ville` varchar(30)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `Liste des officiels de Bruxelles - Ancien`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `Liste des officiels de Bruxelles - Ancien`;
CREATE TABLE IF NOT EXISTS `Liste des officiels de Bruxelles - Ancien` (
`Nom` varchar(50)
,`Prénom` varchar(50)
,`Surnom` varchar(50)
,`Club` varchar(5)
,`Tél` varchar(50)
,`Tél2` varchar(50)
,`Email` varchar(100)
,`Courrier_papier` varchar(3)
,`Adresse` varchar(100)
,`CP` varchar(10)
,`Ville` varchar(30)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `Officiel-Bruxelles - FULL`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `Officiel-Bruxelles - FULL`;
CREATE TABLE IF NOT EXISTS `Officiel-Bruxelles - FULL` (
`nickname` varchar(50)
,`isActive` int(1)
,`isPostalMail` int(1)
,`f_club` varchar(5)
,`b1` date
,`b2` date
,`b3` date
,`ITOA` date
,`ITOW` date
,`m1` binary(0)
,`m2` binary(0)
,`lastname` varchar(50)
,`firstname` varchar(50)
,`sex` varchar(20)
,`birthday` datetime
,`email` varchar(100)
,`address` varchar(100)
,`postalCode` varchar(10)
,`city` varchar(30)
,`country` varchar(8)
,`phone` varchar(50)
,`phone2` varchar(50)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `Rapport des présences`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `Rapport des présences`;
CREATE TABLE IF NOT EXISTS `Rapport des présences` (
`saison` varchar(20)
,`competition_date` date
,`competition_club` varchar(10)
,`competition_type` varchar(100)
,`matin` tinyint(4)
,`apresmidi` tinyint(4)
,`soir` tinyint(4)
,`nb_convocation` int(6)
,`rapport` tinyint(4)
,`nom` varchar(50)
,`prenom` varchar(50)
,`club` varchar(10)
,`role` varchar(20)
,`status` varchar(20)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `Rapport des présences 2016`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `Rapport des présences 2016`;
CREATE TABLE IF NOT EXISTS `Rapport des présences 2016` (
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `Rapports manquants`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `Rapports manquants`;
CREATE TABLE IF NOT EXISTS `Rapports manquants` (
`f_saison` varchar(20)
,`f_date` date
,`f_club` varchar(10)
,`f_nom` varchar(40)
,`f_officiel_id` int(11)
,`f_surnom` varchar(50)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `Rapports manquants 2012-2013`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `Rapports manquants 2012-2013`;
CREATE TABLE IF NOT EXISTS `Rapports manquants 2012-2013` (
`f_date` date
,`f_club` varchar(10)
,`f_nom` varchar(40)
,`f_officiel_id` int(11)
,`f_surnom` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure de la table `t_annonces`
--

DROP TABLE IF EXISTS `t_annonces`;
CREATE TABLE IF NOT EXISTS `t_annonces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_desc` varchar(400) DEFAULT NULL,
  `f_type` varchar(20) DEFAULT 'banner',
  `f_actif` varchar(5) DEFAULT NULL,
  `f_entry_dt` datetime DEFAULT NULL,
  `f_expire_dt` datetime DEFAULT NULL,
  `f_new` varchar(5) DEFAULT 'n',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_batches`
--

DROP TABLE IF EXISTS `t_batches`;
CREATE TABLE IF NOT EXISTS `t_batches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_nom` varchar(150) DEFAULT NULL,
  `f_type` varchar(50) DEFAULT NULL,
  `f_execution` char(1) DEFAULT NULL,
  `f_sendmail` char(1) DEFAULT NULL,
  `f_destinataires` varchar(250) DEFAULT NULL,
  `f_description` text,
  `f_infofrequence` varchar(200) DEFAULT NULL,
  `f_fileexecuted` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_brevets`
--

DROP TABLE IF EXISTS `t_brevets`;
CREATE TABLE IF NOT EXISTS `t_brevets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `f_brevet` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_catalogue`
--

DROP TABLE IF EXISTS `t_catalogue`;
CREATE TABLE IF NOT EXISTS `t_catalogue` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `f_file` varchar(50) DEFAULT NULL,
  `f_desc_fr` text,
  `f_taille` int(11) DEFAULT '0',
  `f_reference` varchar(50) DEFAULT NULL,
  `f_prix_public` varchar(50) DEFAULT 'na',
  `f_prix_instructeur` varchar(50) DEFAULT 'na',
  `f_public` char(3) DEFAULT '1',
  `f_entry_dt` datetime DEFAULT NULL,
  `f_actif` char(1) DEFAULT NULL,
  `f_role_access` varchar(200) DEFAULT NULL,
  `f_fraispostaux_mandatory` char(3) DEFAULT '0',
  `f_category` varchar(50) DEFAULT NULL,
  `f_desc_sub_fr` text,
  `f_ristourne_quantite` int(10) UNSIGNED DEFAULT '0',
  `f_ristourne_pourcentage` int(10) UNSIGNED DEFAULT '0',
  `f_taille_choix` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=latin1 COMMENT='Liste des produits ADIP';

-- --------------------------------------------------------

--
-- Structure de la table `t_clubs`
--

DROP TABLE IF EXISTS `t_clubs`;
CREATE TABLE IF NOT EXISTS `t_clubs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_club` varchar(10) DEFAULT NULL,
  `f_clubname` varchar(100) DEFAULT NULL,
  `f_responsable` varchar(100) DEFAULT '',
  `f_province` varchar(100) DEFAULT NULL,
  `f_adresse` varchar(100) DEFAULT NULL,
  `f_cp` varchar(20) DEFAULT NULL,
  `f_pays` varchar(100) DEFAULT 'BELGIQUE',
  `f_ville` varchar(100) DEFAULT NULL,
  `f_phone` varchar(50) DEFAULT NULL,
  `f_email` varchar(100) DEFAULT NULL,
  `f_siteweb` varchar(200) DEFAULT NULL,
  `f_actif` int(1) DEFAULT '1',
  `f_entry_dt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `f_siteweb_visible` char(3) DEFAULT '1',
  `f_map_lat` varchar(50) DEFAULT NULL,
  `f_map_lng` varchar(50) DEFAULT NULL,
  `f_map_remarques` text,
  `f_map_icon` varchar(50) DEFAULT NULL,
  `f_map_options` text,
  `f_file` varchar(100) DEFAULT NULL,
  `f_photo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `f_club` (`f_club`),
  KEY `f_province` (`f_province`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_competitions`
--

DROP TABLE IF EXISTS `t_competitions`;
CREATE TABLE IF NOT EXISTS `t_competitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_nom` varchar(40) DEFAULT NULL,
  `f_date` date NOT NULL,
  `f_heure` varchar(10) DEFAULT NULL,
  `f_matin` tinyint(4) NOT NULL DEFAULT '0',
  `f_apresmidi` tinyint(4) NOT NULL DEFAULT '0',
  `f_soir` tinyint(4) NOT NULL DEFAULT '0',
  `f_club` varchar(10) DEFAULT NULL,
  `f_lieu` varchar(255) DEFAULT NULL,
  `f_type` varchar(100) DEFAULT NULL,
  `f_convocation_demande` int(11) DEFAULT NULL,
  `f_convocation` varchar(255) DEFAULT NULL,
  `f_rapport` tinyint(4) NOT NULL DEFAULT '0',
  `f_actif` tinyint(4) NOT NULL DEFAULT '1',
  `f_visible` tinyint(4) DEFAULT NULL,
  `f_entry_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `f_update_dt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `f_convocation_demande` (`f_convocation_demande`),
  KEY `f_club` (`f_club`),
  KEY `f_type` (`f_type`)
) ENGINE=InnoDB AUTO_INCREMENT=479 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_competitions_officiels`
--

DROP TABLE IF EXISTS `t_competitions_officiels`;
CREATE TABLE IF NOT EXISTS `t_competitions_officiels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_competition_id` int(11) NOT NULL,
  `f_officiel_id` int(11) NOT NULL,
  `f_role_id` varchar(20) NOT NULL,
  `f_order` int(11) NOT NULL DEFAULT '0',
  `f_status_id` int(11) NOT NULL,
  `f_comment` varchar(1000) DEFAULT NULL,
  `f_creation_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `f_update_dt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `f_competition_officiel_id` (`f_competition_id`,`f_officiel_id`),
  KEY `f_competition_id` (`f_competition_id`,`f_officiel_id`,`f_status_id`),
  KEY `f_officiel_id` (`f_officiel_id`),
  KEY `f_status_id` (`f_status_id`),
  KEY `f_role_id` (`f_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7080 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_compteurvisites`
--

DROP TABLE IF EXISTS `t_compteurvisites`;
CREATE TABLE IF NOT EXISTS `t_compteurvisites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_page` varchar(50) DEFAULT NULL,
  `f_nbrvisites` int(6) UNSIGNED ZEROFILL DEFAULT '000000',
  `f_lastvisite_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14213 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_convocations`
--

DROP TABLE IF EXISTS `t_convocations`;
CREATE TABLE IF NOT EXISTS `t_convocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_convocation` varchar(255) NOT NULL,
  `f_club` varchar(100) DEFAULT NULL,
  `f_dateheure_1` varchar(100) DEFAULT NULL,
  `f_dateheure_2` varchar(100) DEFAULT NULL,
  `f_nom` varchar(100) DEFAULT NULL,
  `f_nature` varchar(100) DEFAULT NULL,
  `f_lieu_1` varchar(100) DEFAULT NULL,
  `f_lieu_2` varchar(100) DEFAULT NULL,
  `f_lieu_3` varchar(100) DEFAULT NULL,
  `f_divers` varchar(300) DEFAULT NULL,
  `f_no` varchar(100) DEFAULT NULL,
  `f_secretaire_1` varchar(100) DEFAULT NULL,
  `f_secretaire_2` varchar(100) DEFAULT NULL,
  `f_secretaire_3` varchar(100) DEFAULT NULL,
  `f_directeur_1` varchar(100) DEFAULT NULL,
  `f_directeur_2` varchar(100) DEFAULT NULL,
  `f_creation_dt` timestamp NULL DEFAULT NULL,
  `f_update_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `f_convocation` (`f_convocation`)
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_convocations_demandes`
--

DROP TABLE IF EXISTS `t_convocations_demandes`;
CREATE TABLE IF NOT EXISTS `t_convocations_demandes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_convocation_id` int(11) NOT NULL,
  `f_ligne` varchar(10) NOT NULL,
  `f_colonne` varchar(10) NOT NULL,
  `f_valeur` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `f_convocation_id` (`f_convocation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40723 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_convocations_epreuves`
--

DROP TABLE IF EXISTS `t_convocations_epreuves`;
CREATE TABLE IF NOT EXISTS `t_convocations_epreuves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_convocation_id` int(11) NOT NULL,
  `f_sexe` varchar(10) NOT NULL,
  `f_category` varchar(10) NOT NULL,
  `f_epreuve_id` int(11) NOT NULL,
  `f_epreuve_type` varchar(20) NOT NULL,
  `f_epreuve_nom` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `f_convocation_id` (`f_convocation_id`),
  KEY `f_epreuve_id` (`f_epreuve_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10447 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_convocations_officiels`
--

DROP TABLE IF EXISTS `t_convocations_officiels`;
CREATE TABLE IF NOT EXISTS `t_convocations_officiels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_convocation_id` int(11) NOT NULL,
  `f_officiel_id` int(11) NOT NULL,
  `f_role_id` varchar(20) NOT NULL,
  `f_ordre` int(11) NOT NULL,
  `f_status` varchar(1) NOT NULL COMMENT 'Abstent, Convoqué, Déconvoqué, Présent',
  `f_creation_dt` timestamp NULL DEFAULT NULL,
  `f_update_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `f_convocation_officiel_id` (`f_convocation_id`,`f_officiel_id`),
  KEY `f_officiel_id` (`f_officiel_id`),
  KEY `f_role_id` (`f_role_id`),
  KEY `f_convocation_id` (`f_convocation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_documents_admin`
--

DROP TABLE IF EXISTS `t_documents_admin`;
CREATE TABLE IF NOT EXISTS `t_documents_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_region` varchar(10) NOT NULL DEFAULT 'fr',
  `f_document` varchar(200) NOT NULL DEFAULT '',
  `f_groupe` varchar(100) NOT NULL DEFAULT '',
  `f_actif` int(1) DEFAULT '0',
  `f_file` varchar(200) DEFAULT '',
  `f_count` int(10) DEFAULT '0',
  `f_new` char(1) DEFAULT 'n',
  `f_entry_dt` datetime DEFAULT '0000-00-00 00:00:00',
  `f_role_access` varchar(200) DEFAULT '',
  `f_file_groupe` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 COMMENT='Liste des documents à downloader pour les administrateurs';

-- --------------------------------------------------------

--
-- Structure de la table `t_download`
--

DROP TABLE IF EXISTS `t_download`;
CREATE TABLE IF NOT EXISTS `t_download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_action` varchar(200) NOT NULL DEFAULT '',
  `f_document` varchar(200) NOT NULL DEFAULT '',
  `f_groupe` varchar(100) NOT NULL DEFAULT '',
  `f_region` varchar(10) NOT NULL DEFAULT 'fr',
  `f_actif` int(1) DEFAULT '0',
  `f_file` varchar(200) DEFAULT '',
  `f_count` int(10) DEFAULT '0',
  `f_new` char(1) DEFAULT 'n',
  `f_entry_dt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `f_file_groupe` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 COMMENT='Liste des documents à downloader pour les plongeurs';

-- --------------------------------------------------------

--
-- Structure de la table `t_epreuves`
--

DROP TABLE IF EXISTS `t_epreuves`;
CREATE TABLE IF NOT EXISTS `t_epreuves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_nom` varchar(20) NOT NULL,
  `f_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `f_nom` (`f_nom`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_formations`
--

DROP TABLE IF EXISTS `t_formations`;
CREATE TABLE IF NOT EXISTS `t_formations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_date` date NOT NULL,
  `f_heure` varchar(10) NOT NULL,
  `f_lieu` varchar(255) NOT NULL,
  `f_plan` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_history`
--

DROP TABLE IF EXISTS `t_history`;
CREATE TABLE IF NOT EXISTS `t_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_subject` varchar(200) DEFAULT NULL,
  `f_message` text,
  `f_to` text,
  `f_from` text,
  `f_staff` varchar(200) DEFAULT '0',
  `f_actif` varchar(5) DEFAULT NULL,
  `f_entry_dt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=127426 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_historylogin`
--

DROP TABLE IF EXISTS `t_historylogin`;
CREATE TABLE IF NOT EXISTS `t_historylogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_nbrmembre` varchar(30) DEFAULT NULL,
  `f_entry_dt` datetime DEFAULT '0000-00-00 00:00:00',
  `f_actif` varchar(5) DEFAULT '1',
  `f_comment` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=70776 DEFAULT CHARSET=latin1 COMMENT='content of the login connection';

-- --------------------------------------------------------

--
-- Structure de la table `t_mailinglist`
--

DROP TABLE IF EXISTS `t_mailinglist`;
CREATE TABLE IF NOT EXISTS `t_mailinglist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_nom` varchar(150) DEFAULT NULL,
  `f_prenom` varchar(150) DEFAULT NULL,
  `f_email` varchar(150) DEFAULT NULL,
  `f_actif` int(1) DEFAULT '1',
  `f_typeimport` varchar(50) DEFAULT 'MANUEL',
  `f_entry_dt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7240 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_md_ddlb`
--

DROP TABLE IF EXISTS `t_md_ddlb`;
CREATE TABLE IF NOT EXISTS `t_md_ddlb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_md_provinces`
--

DROP TABLE IF EXISTS `t_md_provinces`;
CREATE TABLE IF NOT EXISTS `t_md_provinces` (
  `f_nom` varchar(100) NOT NULL,
  PRIMARY KEY (`f_nom`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_md_saisons`
--

DROP TABLE IF EXISTS `t_md_saisons`;
CREATE TABLE IF NOT EXISTS `t_md_saisons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_saison` varchar(20) NOT NULL,
  `f_start_dt` date NOT NULL,
  `f_end_dt` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `f_saison` (`f_saison`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_md_status`
--

DROP TABLE IF EXISTS `t_md_status`;
CREATE TABLE IF NOT EXISTS `t_md_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_status` varchar(20) NOT NULL,
  `f_order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `f_status` (`f_status`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_md_status_compet`
--

DROP TABLE IF EXISTS `t_md_status_compet`;
CREATE TABLE IF NOT EXISTS `t_md_status_compet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_status` varchar(20) NOT NULL,
  `f_order` int(11) NOT NULL,
  `f_delta` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Impact sur convocation',
  `f_coefficient` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'Coefficient de présence',
  PRIMARY KEY (`id`),
  UNIQUE KEY `f_status` (`f_status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_md_status_rel`
--

DROP TABLE IF EXISTS `t_md_status_rel`;
CREATE TABLE IF NOT EXISTS `t_md_status_rel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_status_id` int(11) NOT NULL,
  `f_status_compet_id` int(11) NOT NULL,
  `f_correction` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `f_status_id` (`f_status_id`,`f_status_compet_id`),
  KEY `f_status_compet_id` (`f_status_compet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_md_tailles`
--

DROP TABLE IF EXISTS `t_md_tailles`;
CREATE TABLE IF NOT EXISTS `t_md_tailles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_type` varchar(10) NOT NULL,
  `f_code` varchar(10) NOT NULL,
  `f_decode` varchar(20) NOT NULL,
  `f_ordre` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `f_type` (`f_type`,`f_code`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_md_typecompet`
--

DROP TABLE IF EXISTS `t_md_typecompet`;
CREATE TABLE IF NOT EXISTS `t_md_typecompet` (
  `f_type` varchar(100) NOT NULL,
  PRIMARY KEY (`f_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_md_typecompet_province`
--

DROP TABLE IF EXISTS `t_md_typecompet_province`;
CREATE TABLE IF NOT EXISTS `t_md_typecompet_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_typecompet` varchar(100) NOT NULL,
  `f_province` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `f_typecompet` (`f_typecompet`),
  KEY `f_province` (`f_province`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_membres`
--

DROP TABLE IF EXISTS `t_membres`;
CREATE TABLE IF NOT EXISTS `t_membres` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `f_nom` varchar(50) DEFAULT NULL,
  `f_prenom` varchar(50) DEFAULT NULL,
  `f_phone` varchar(50) DEFAULT NULL,
  `f_brevet` int(10) DEFAULT NULL,
  `f_email` varchar(50) DEFAULT NULL,
  `f_email2` varchar(50) DEFAULT NULL,
  `f_email3` varchar(50) DEFAULT NULL,
  `f_anniversaire` date DEFAULT NULL,
  `f_entry_dt` datetime DEFAULT '0000-00-00 00:00:00',
  `f_actif` int(1) DEFAULT '1',
  `f_sexe` varchar(20) DEFAULT '',
  `f_phone_visible` varchar(5) DEFAULT '0',
  `f_email_visible` varchar(5) DEFAULT '0',
  `f_adresse` varchar(100) DEFAULT '',
  `f_cp` varchar(10) DEFAULT '',
  `f_ville` varchar(30) DEFAULT '',
  `f_dan_dt` date DEFAULT NULL,
  `f_photo` varchar(100) DEFAULT NULL,
  `f_membre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_membres_acces`
--

DROP TABLE IF EXISTS `t_membres_acces`;
CREATE TABLE IF NOT EXISTS `t_membres_acces` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `f_nom` varchar(50) DEFAULT NULL,
  `f_prenom` varchar(50) DEFAULT NULL,
  `f_nbrmembre` varchar(30) DEFAULT '',
  `f_login` varchar(45) DEFAULT '',
  `f_password` varchar(100) DEFAULT NULL,
  `f_phone` varchar(50) DEFAULT NULL,
  `f_phone2` varchar(50) DEFAULT NULL,
  `f_brevet` varchar(50) DEFAULT NULL,
  `f_role` varchar(10) DEFAULT 'member',
  `f_acces` char(1) DEFAULT 'y',
  `f_entryDT` varchar(5) DEFAULT '2011',
  `f_email_1` varchar(100) DEFAULT NULL,
  `f_email_2` varchar(100) DEFAULT NULL,
  `f_email_3` varchar(100) DEFAULT NULL,
  `f_anniversaire_dt` datetime DEFAULT NULL,
  `f_entry_dt` datetime DEFAULT '0000-00-00 00:00:00',
  `f_actif` int(1) DEFAULT '1',
  `f_sexe` varchar(20) DEFAULT '',
  `f_phone_visible` varchar(5) DEFAULT '0',
  `f_email_visible` varchar(5) DEFAULT '0',
  `f_adresse` varchar(100) DEFAULT '',
  `f_cp` varchar(10) DEFAULT '',
  `f_ville` varchar(30) DEFAULT '',
  `f_pays` varchar(50) DEFAULT '',
  `f_dan_dt` datetime DEFAULT NULL,
  `f_photo` varchar(100) DEFAULT NULL,
  `f_infosupp` text,
  `f_nbrmembre_famille` int(9) DEFAULT '1',
  `f_lastupdate_who` varchar(30) DEFAULT '',
  `f_lastupdate_dt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `f_login` (`f_login`),
  UNIQUE KEY `f_email_1` (`f_email_1`)
) ENGINE=MyISAM AUTO_INCREMENT=210 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_membres_declarations`
--

DROP TABLE IF EXISTS `t_membres_declarations`;
CREATE TABLE IF NOT EXISTS `t_membres_declarations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_file` varchar(200) DEFAULT NULL,
  `f_annee` varchar(10) DEFAULT NULL,
  `f_nbrmembre` varchar(30) DEFAULT '0',
  `f_actif` varchar(1) DEFAULT '0',
  `f_entry_dt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1 COMMENT='content of the list of all declarations';

-- --------------------------------------------------------

--
-- Structure de la table `t_membres_documents`
--

DROP TABLE IF EXISTS `t_membres_documents`;
CREATE TABLE IF NOT EXISTS `t_membres_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_groupe` varchar(200) NOT NULL DEFAULT '',
  `f_document` varchar(200) NOT NULL DEFAULT '',
  `f_region` varchar(10) NOT NULL DEFAULT '',
  `f_actif` varchar(100) NOT NULL DEFAULT 'n',
  `f_file` varchar(200) DEFAULT '',
  `f_count` int(10) DEFAULT '0',
  `f_new` char(1) DEFAULT 'n',
  `f_entry_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `f_role_access` varchar(200) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=442 DEFAULT CHARSET=latin1 COMMENT='Liste des documents disponibles pour les instructeurs';

-- --------------------------------------------------------

--
-- Structure de la table `t_membres_requests`
--

DROP TABLE IF EXISTS `t_membres_requests`;
CREATE TABLE IF NOT EXISTS `t_membres_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_email` varchar(200) DEFAULT NULL,
  `f_success` int(1) NOT NULL DEFAULT '-1',
  `f_creation_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `f_update_dt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=858 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_menu_left`
--

DROP TABLE IF EXISTS `t_menu_left`;
CREATE TABLE IF NOT EXISTS `t_menu_left` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `f_menu_name` varchar(50) DEFAULT NULL,
  `f_menu_file` varchar(100) NOT NULL DEFAULT '',
  `f_situation` varchar(50) NOT NULL DEFAULT 'left',
  `f_menu_actif` int(10) DEFAULT '0',
  `f_entry_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `f_menu_new` char(1) DEFAULT 'n',
  `f_ordre` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_messages`
--

DROP TABLE IF EXISTS `t_messages`;
CREATE TABLE IF NOT EXISTS `t_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_subject` varchar(200) DEFAULT NULL,
  `f_body` text,
  `f_altbody` text,
  `f_priority` varchar(15) DEFAULT NULL,
  `f_as_from` varchar(100) DEFAULT NULL,
  `f_actif` int(1) DEFAULT '0',
  `f_entry_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7642 DEFAULT CHARSET=latin1 COMMENT='content of the messages to send';

-- --------------------------------------------------------

--
-- Structure de la table `t_messages_files`
--

DROP TABLE IF EXISTS `t_messages_files`;
CREATE TABLE IF NOT EXISTS `t_messages_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_id_messages` int(11) DEFAULT NULL,
  `f_file_path` varchar(400) DEFAULT NULL,
  `f_actif` int(1) DEFAULT '0',
  `f_entry_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1674 DEFAULT CHARSET=latin1 COMMENT='content of the files to send attached at one message';

-- --------------------------------------------------------

--
-- Structure de la table `t_messages_recipients`
--

DROP TABLE IF EXISTS `t_messages_recipients`;
CREATE TABLE IF NOT EXISTS `t_messages_recipients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_id_messages` int(11) DEFAULT NULL,
  `f_to_mail` varchar(100) DEFAULT NULL,
  `f_to_name` varchar(100) DEFAULT NULL,
  `f_from_mail` varchar(100) DEFAULT NULL,
  `f_from_name` varchar(100) DEFAULT NULL,
  `f_mail_type` varchar(20) DEFAULT NULL,
  `f_confirmreadingto` varchar(100) DEFAULT NULL,
  `f_actif` int(1) DEFAULT '0',
  `f_langue` varchar(2) DEFAULT NULL,
  `f_entry_dt` datetime DEFAULT NULL,
  `f_out_dt` datetime DEFAULT NULL,
  `f_errorinfo` text,
  `f_retry` int(1) UNSIGNED DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17127 DEFAULT CHARSET=latin1 COMMENT='content the list of recipients for each message';

-- --------------------------------------------------------

--
-- Structure de la table `t_news`
--

DROP TABLE IF EXISTS `t_news`;
CREATE TABLE IF NOT EXISTS `t_news` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `f_entry_dt` datetime DEFAULT NULL,
  `f_comment` text,
  `f_actif` int(1) NOT NULL DEFAULT '1',
  `f_subject` varchar(100) DEFAULT NULL,
  `f_photo_1` varchar(100) DEFAULT NULL,
  `f_photo_2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_officiels`
--

DROP TABLE IF EXISTS `t_officiels`;
CREATE TABLE IF NOT EXISTS `t_officiels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_membre_id` int(11) DEFAULT NULL,
  `f_nom` varchar(50) NOT NULL,
  `f_prenom` varchar(50) NOT NULL,
  `f_surnom` varchar(50) NOT NULL,
  `f_phone` varchar(50) DEFAULT NULL,
  `f_phone_2` varchar(50) DEFAULT NULL,
  `f_phone_contact` text,
  `f_brevet` int(11) NOT NULL,
  `f_entryDT` varchar(5) DEFAULT '2013',
  `f_email_1` varchar(100) DEFAULT NULL,
  `f_email_2` varchar(100) DEFAULT NULL,
  `f_email_3` varchar(100) DEFAULT NULL,
  `f_anniversaire_dt` datetime DEFAULT NULL,
  `f_actif` int(1) DEFAULT '1',
  `f_sexe` varchar(20) DEFAULT NULL COMMENT 'M = Homme, autre = Dame',
  `f_club` varchar(5) DEFAULT NULL,
  `f_province` varchar(100) NOT NULL DEFAULT 'Bruxelles',
  `f_taille_polo` varchar(20) NOT NULL DEFAULT '0',
  `f_taille_pantalon` varchar(20) NOT NULL DEFAULT '0',
  `f_taille_chaussure` varchar(20) NOT NULL DEFAULT '0',
  `f_courrier_papier` int(1) DEFAULT '0',
  `f_phone_visible` varchar(5) DEFAULT '0',
  `f_email_visible` varchar(5) DEFAULT '0',
  `f_adresse` varchar(100) DEFAULT '',
  `f_cp` varchar(10) DEFAULT '',
  `f_ville` varchar(30) DEFAULT '',
  `f_pays` varchar(50) DEFAULT '',
  `f_photo` varchar(100) DEFAULT NULL,
  `f_infosupp` text,
  `f_entry_dt` datetime DEFAULT '0000-00-00 00:00:00',
  `f_brevet_I_dt` date DEFAULT NULL,
  `f_brevet_II_dt` date DEFAULT NULL,
  `f_brevet_III_dt` date DEFAULT NULL,
  `f_brevet_ATO_dt` date DEFAULT NULL,
  `f_brevet_ITO_dt` date DEFAULT NULL,
  `f_lastupdate_who` varchar(30) DEFAULT '',
  `f_lastupdate_dt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `f_membre_id` (`f_membre_id`),
  KEY `f_club` (`f_club`)
) ENGINE=InnoDB AUTO_INCREMENT=364 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_officiels_declarations`
--

DROP TABLE IF EXISTS `t_officiels_declarations`;
CREATE TABLE IF NOT EXISTS `t_officiels_declarations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_file` varchar(200) DEFAULT NULL,
  `f_annee` varchar(10) DEFAULT NULL,
  `f_nbrofficiel` varchar(30) DEFAULT '0',
  `f_actif` varchar(1) DEFAULT '0',
  `f_entry_dt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2995 DEFAULT CHARSET=latin1 COMMENT='content of the list of all declarations';

-- --------------------------------------------------------

--
-- Structure de la table `t_officiels_disponibilites`
--

DROP TABLE IF EXISTS `t_officiels_disponibilites`;
CREATE TABLE IF NOT EXISTS `t_officiels_disponibilites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_officiel_id` int(11) NOT NULL,
  `f_date` date NOT NULL,
  `f_disponibilite` varchar(10) NOT NULL COMMENT 'Oui / Non / Inconnu',
  `f_creation_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `f_update_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `f_officiel_id_2` (`f_officiel_id`,`f_date`),
  KEY `f_officiel_id` (`f_officiel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101193 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_officiels_disponibilites_exceptions`
--

DROP TABLE IF EXISTS `t_officiels_disponibilites_exceptions`;
CREATE TABLE IF NOT EXISTS `t_officiels_disponibilites_exceptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_officiel_id` int(11) NOT NULL,
  `f_club` varchar(10) NOT NULL,
  `f_matin` tinyint(4) NOT NULL DEFAULT '1',
  `f_apresmidi` tinyint(4) NOT NULL DEFAULT '1',
  `f_soir` tinyint(4) NOT NULL DEFAULT '1',
  `f_creation_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `f_update_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `f_officiel_id` (`f_officiel_id`),
  KEY `f_club` (`f_club`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_officiels_meritants`
--

DROP TABLE IF EXISTS `t_officiels_meritants`;
CREATE TABLE IF NOT EXISTS `t_officiels_meritants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_annee` int(4) NOT NULL,
  `f_nom` varchar(40) NOT NULL DEFAULT '---',
  `f_officiel_id` int(11) DEFAULT NULL,
  `f_remarque` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `f_annee` (`f_annee`),
  KEY `f_officiel_id` (`f_officiel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_officiels_roles`
--

DROP TABLE IF EXISTS `t_officiels_roles`;
CREATE TABLE IF NOT EXISTS `t_officiels_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_officiel_id` int(11) NOT NULL,
  `f_role_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `f_officiel_role_id` (`f_officiel_id`,`f_role_id`),
  KEY `f_officiel_id` (`f_officiel_id`),
  KEY `f_role_id` (`f_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=520 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_parametres`
--

DROP TABLE IF EXISTS `t_parametres`;
CREATE TABLE IF NOT EXISTS `t_parametres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_desc` varchar(100) DEFAULT NULL,
  `f_value` varchar(100) DEFAULT NULL,
  `f_comment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_pays`
--

DROP TABLE IF EXISTS `t_pays`;
CREATE TABLE IF NOT EXISTS `t_pays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_pays` varchar(100) NOT NULL DEFAULT '',
  `f_pays_desc` varchar(200) NOT NULL DEFAULT '',
  `f_fraispostaux` varchar(50) DEFAULT '20',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=223 DEFAULT CHARSET=latin1 COMMENT='content of the list of pays';

-- --------------------------------------------------------

--
-- Structure de la table `t_quiz_answers`
--

DROP TABLE IF EXISTS `t_quiz_answers`;
CREATE TABLE IF NOT EXISTS `t_quiz_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_question` int(11) NOT NULL DEFAULT '0',
  `f_answers_fr` varchar(400) DEFAULT NULL,
  `f_answers_nl` varchar(400) DEFAULT NULL,
  `f_answers_en` varchar(400) DEFAULT NULL,
  `f_result` int(1) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11892 DEFAULT CHARSET=latin1 COMMENT='Contenu des réponses et résultats pour le Quiz';

-- --------------------------------------------------------

--
-- Structure de la table `t_quiz_history`
--

DROP TABLE IF EXISTS `t_quiz_history`;
CREATE TABLE IF NOT EXISTS `t_quiz_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_filename` varchar(100) DEFAULT NULL,
  `f_brevet_level` varchar(50) DEFAULT '1',
  `f_langue` varchar(5) DEFAULT NULL,
  `f_nbr_questions` int(11) DEFAULT '0',
  `f_list_ids` text,
  `f_actif` int(1) DEFAULT '1',
  `f_entry_dt` datetime DEFAULT NULL,
  `f_nbrinstructor` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=latin1 COMMENT='Contenu des examens générés';

-- --------------------------------------------------------

--
-- Structure de la table `t_quiz_history_tests`
--

DROP TABLE IF EXISTS `t_quiz_history_tests`;
CREATE TABLE IF NOT EXISTS `t_quiz_history_tests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_ipaddress` varchar(100) DEFAULT NULL,
  `f_player` varchar(50) DEFAULT NULL,
  `f_nbrinstructor` varchar(100) DEFAULT NULL,
  `f_brevet_level` varchar(50) DEFAULT '1',
  `f_langue` varchar(5) DEFAULT NULL,
  `f_nbr_questions` int(11) DEFAULT '0',
  `f_pourcentage` int(11) DEFAULT '0',
  `f_list_ids` text,
  `f_actif` int(1) DEFAULT '1',
  `f_entry_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1001 DEFAULT CHARSET=latin1 COMMENT='Contenu des tests réalisés';

-- --------------------------------------------------------

--
-- Structure de la table `t_quiz_questions`
--

DROP TABLE IF EXISTS `t_quiz_questions`;
CREATE TABLE IF NOT EXISTS `t_quiz_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_brevet_level` varchar(50) DEFAULT '1',
  `f_subject` varchar(100) DEFAULT NULL,
  `f_question_fr` varchar(400) DEFAULT NULL,
  `f_question_image_fr` varchar(100) DEFAULT NULL,
  `f_question_nl` varchar(400) DEFAULT NULL,
  `f_question_image_nl` varchar(100) DEFAULT NULL,
  `f_question_en` varchar(400) DEFAULT NULL,
  `f_question_image_en` varchar(100) DEFAULT NULL,
  `f_actif` int(1) UNSIGNED DEFAULT '1',
  `f_entry_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=680 DEFAULT CHARSET=latin1 COMMENT='Contenu des questions pour le Quiz';

-- --------------------------------------------------------

--
-- Structure de la table `t_roles`
--

DROP TABLE IF EXISTS `t_roles`;
CREATE TABLE IF NOT EXISTS `t_roles` (
  `id` varchar(20) NOT NULL,
  `f_nom` varchar(20) NOT NULL,
  `f_ordre` int(11) NOT NULL,
  `f_xls_ligne` int(11) NOT NULL DEFAULT '0',
  `f_xls_col` varchar(10) NOT NULL DEFAULT 'K',
  `f_brevet_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `f_brevet_id` (`f_brevet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_sites`
--

DROP TABLE IF EXISTS `t_sites`;
CREATE TABLE IF NOT EXISTS `t_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_site_name` varchar(100) DEFAULT NULL,
  `f_site_url` varchar(200) DEFAULT NULL,
  `f_site_actif` int(10) DEFAULT '0',
  `f_entry_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `f_site_category` varchar(100) DEFAULT NULL,
  `f_site_category_ordre` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_sondage_answers`
--

DROP TABLE IF EXISTS `t_sondage_answers`;
CREATE TABLE IF NOT EXISTS `t_sondage_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_sondage_questions` int(11) NOT NULL,
  `f_reponse_fr` varchar(100) DEFAULT NULL,
  `f_reponse_nl` varchar(100) DEFAULT NULL,
  `f_reponse_en` varchar(100) DEFAULT NULL,
  `f_nb_reponses` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COMMENT='Contenu des resultats des sondages';

-- --------------------------------------------------------

--
-- Structure de la table `t_sondage_ipaddress`
--

DROP TABLE IF EXISTS `t_sondage_ipaddress`;
CREATE TABLE IF NOT EXISTS `t_sondage_ipaddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_sondage_questions` int(11) NOT NULL,
  `f_ipaddress` varchar(100) DEFAULT NULL,
  `f_entry_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1307 DEFAULT CHARSET=latin1 COMMENT='Contenu des adresses IP pour les sondages';

-- --------------------------------------------------------

--
-- Structure de la table `t_sondage_questions`
--

DROP TABLE IF EXISTS `t_sondage_questions`;
CREATE TABLE IF NOT EXISTS `t_sondage_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_title_fr` varchar(250) DEFAULT NULL,
  `f_title_nl` varchar(250) DEFAULT NULL,
  `f_title_en` varchar(250) DEFAULT NULL,
  `f_question_fr` varchar(250) DEFAULT NULL,
  `f_question_nl` varchar(250) DEFAULT NULL,
  `f_question_en` varchar(250) DEFAULT NULL,
  `f_actif` int(1) DEFAULT '1',
  `f_closed` int(1) UNSIGNED DEFAULT '0',
  `f_entry_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='Contenu des questions des sondages';

-- --------------------------------------------------------

--
-- Structure de la table `t_sorties_club`
--

DROP TABLE IF EXISTS `t_sorties_club`;
CREATE TABLE IF NOT EXISTS `t_sorties_club` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `f_queljour` varchar(10) DEFAULT NULL,
  `f_quelledate` date DEFAULT NULL,
  `f_quelleheure` varchar(10) DEFAULT NULL,
  `f_ou` varchar(100) DEFAULT NULL,
  `f_plandusite` varchar(50) DEFAULT NULL,
  `f_lieuderdv` varchar(100) DEFAULT NULL,
  `f_actif` int(11) DEFAULT NULL,
  `f_entry_dt` datetime DEFAULT NULL,
  `f_organisateur` varchar(50) DEFAULT 'Toto',
  `f_type_sortie` varchar(50) DEFAULT '',
  `f_type_entrainement` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=511 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_sorties_participants`
--

DROP TABLE IF EXISTS `t_sorties_participants`;
CREATE TABLE IF NOT EXISTS `t_sorties_participants` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `f_nbrmembre` varchar(10) NOT NULL DEFAULT '0',
  `f_id_sorties_club` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `f_participation_date` datetime DEFAULT '0000-00-00 00:00:00',
  `f_entry_dt` datetime DEFAULT '0000-00-00 00:00:00',
  `f_actif` varchar(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_sorties_voyages`
--

DROP TABLE IF EXISTS `t_sorties_voyages`;
CREATE TABLE IF NOT EXISTS `t_sorties_voyages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_voyage` text,
  `f_quand` varchar(50) DEFAULT NULL,
  `f_actif` int(10) DEFAULT NULL,
  `f_entry_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_test_xls`
--

DROP TABLE IF EXISTS `t_test_xls`;
CREATE TABLE IF NOT EXISTS `t_test_xls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_fichier` varchar(255) NOT NULL,
  `f_ligne` varchar(10) NOT NULL,
  `f_colonne` varchar(10) NOT NULL,
  `f_valeur` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=498 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_transactions`
--

DROP TABLE IF EXISTS `t_transactions`;
CREATE TABLE IF NOT EXISTS `t_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_item_number` varchar(50) DEFAULT '',
  `f_item_name` varchar(200) DEFAULT '',
  `f_txn_id` varchar(25) DEFAULT '',
  `f_txn_type` varchar(25) DEFAULT '',
  `f_payment_type` varchar(50) DEFAULT '',
  `f_payment_status` varchar(50) DEFAULT 'Temporary',
  `f_payment_mode` varchar(20) DEFAULT 'Virement',
  `f_payment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `f_receiver_id` varchar(25) DEFAULT '0',
  `f_payer_id` varchar(25) DEFAULT '0',
  `f_payer_name` varchar(50) DEFAULT '',
  `f_payer_email` varchar(200) DEFAULT '',
  `f_payer_status` varchar(25) DEFAULT '',
  `f_residence_country` varchar(5) DEFAULT 'fr',
  `f_langue` varchar(5) DEFAULT 'fr',
  `f_mc_currency` varchar(5) DEFAULT 'EUR',
  `f_mc_fee_fede` varchar(50) DEFAULT '0.00',
  `f_mc_fee` varchar(50) DEFAULT '0.00',
  `f_mc_handling` varchar(50) DEFAULT '0.00',
  `f_mc_shipping` varchar(50) DEFAULT '0.00',
  `f_mc_gross` varchar(50) DEFAULT '0.00',
  `f_mc_restant` varchar(50) DEFAULT '0.00',
  `f_facture` text,
  `f_virement` text,
  `f_ins_numero` varchar(15) DEFAULT '',
  `f_ins_nom` varchar(200) DEFAULT '',
  `f_ins_prenom` varchar(200) DEFAULT '',
  `f_ins_email` varchar(200) DEFAULT '',
  `f_ins_commentaire` text,
  `f_reason_code` text,
  `f_source` varchar(100) DEFAULT '',
  `f_actif` varchar(5) DEFAULT '0',
  `f_entry_dt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `f_category` varchar(50) DEFAULT '0',
  `f_treated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `f_paye` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `f_colis` varchar(1) DEFAULT '0',
  `f_command_status` varchar(25) DEFAULT 'En cours',
  `f_facture_file` varchar(200) DEFAULT NULL,
  `f_url_suivi_colis_bpost` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1 COMMENT='Panier de toutes les transactions';

-- --------------------------------------------------------

--
-- Structure de la vue `Jubilaires`
--
DROP TABLE IF EXISTS `Jubilaires`;

CREATE ALGORITHM=UNDEFINED DEFINER=`juryathle`@`%` SQL SECURITY DEFINER VIEW `Jubilaires`  AS  select `t_officiels`.`f_nom` AS `nom`,`t_officiels`.`f_prenom` AS `prenom`,`t_officiels`.`f_club` AS `club`,(2014 - `t_officiels`.`f_entryDT`) AS `nb_années` from `t_officiels` where ((((2014 - `t_officiels`.`f_entryDT`) % 5) = 0) and ((2014 - `t_officiels`.`f_entryDT`) > 14)) order by `t_officiels`.`f_entryDT` ;

-- --------------------------------------------------------

--
-- Structure de la vue `Liste des compétitions futures`
--
DROP TABLE IF EXISTS `Liste des compétitions futures`;

CREATE ALGORITHM=UNDEFINED DEFINER=`juryathle`@`%` SQL SECURITY DEFINER VIEW `Liste des compétitions futures`  AS  select `t_competitions`.`id` AS `id`,`t_competitions`.`f_nom` AS `f_nom`,`t_competitions`.`f_date` AS `f_date`,`t_competitions`.`f_heure` AS `f_heure`,`t_competitions`.`f_matin` AS `f_matin`,`t_competitions`.`f_apresmidi` AS `f_apresmidi`,`t_competitions`.`f_soir` AS `f_soir`,`t_competitions`.`f_club` AS `f_club`,`t_competitions`.`f_lieu` AS `f_lieu`,`t_competitions`.`f_convocation_demande` AS `f_convocation_demande`,`t_competitions`.`f_convocation` AS `f_convocation`,`t_competitions`.`f_rapport` AS `f_rapport`,`t_competitions`.`f_actif` AS `f_actif`,`t_competitions`.`f_visible` AS `f_visible`,`t_competitions`.`f_entry_dt` AS `f_entry_dt`,`t_competitions`.`f_update_dt` AS `f_update_dt` from `t_competitions` where ((`t_competitions`.`f_date` > curdate()) and (`t_competitions`.`f_club` not in ('LBFA','LRBA'))) order by `t_competitions`.`f_convocation` ;

-- --------------------------------------------------------

--
-- Structure de la vue `Liste des officiels de Bruxelles`
--
DROP TABLE IF EXISTS `Liste des officiels de Bruxelles`;

CREATE ALGORITHM=UNDEFINED DEFINER=`juryathle`@`%` SQL SECURITY DEFINER VIEW `Liste des officiels de Bruxelles`  AS  select `o`.`f_nom` AS `Nom`,`o`.`f_prenom` AS `Prénom`,`o`.`f_surnom` AS `Surnom`,`o`.`f_club` AS `Club`,`o`.`f_province` AS `Province`,`o`.`f_brevet` AS `Brevet`,coalesce(`m`.`f_phone`,`o`.`f_phone`) AS `Tél`,coalesce(`m`.`f_phone2`,`o`.`f_phone_2`) AS `Tél2`,coalesce(`m`.`f_email_1`,`o`.`f_email_1`) AS `Email`,if((`o`.`f_courrier_papier` < 1),'Non','Oui') AS `Courrier_papier`,coalesce(`m`.`f_adresse`,`o`.`f_adresse`) AS `Adresse`,coalesce(`m`.`f_cp`,`o`.`f_cp`) AS `CP`,coalesce(`m`.`f_ville`,`o`.`f_ville`) AS `Ville` from ((`t_officiels` `o` join `t_clubs` `c` on((`o`.`f_club` = `c`.`f_club`))) left join `t_membres_acces` `m` on((`o`.`f_membre_id` = `m`.`id`))) where ((`o`.`f_actif` = 1) and (`c`.`f_province` = 'Bruxelles')) order by `o`.`f_nom`,`o`.`f_prenom` ;

-- --------------------------------------------------------

--
-- Structure de la vue `Liste des officiels de Bruxelles - Ancien`
--
DROP TABLE IF EXISTS `Liste des officiels de Bruxelles - Ancien`;

CREATE ALGORITHM=UNDEFINED DEFINER=`juryathle`@`%` SQL SECURITY DEFINER VIEW `Liste des officiels de Bruxelles - Ancien`  AS  select `o`.`f_nom` AS `Nom`,`o`.`f_prenom` AS `Prénom`,`o`.`f_surnom` AS `Surnom`,`o`.`f_club` AS `Club`,coalesce(`m`.`f_phone`,`o`.`f_phone`) AS `Tél`,coalesce(`m`.`f_phone2`,`o`.`f_phone_2`) AS `Tél2`,coalesce(`m`.`f_email_1`,`o`.`f_email_1`) AS `Email`,if((`o`.`f_courrier_papier` < 1),'Non','Oui') AS `Courrier_papier`,coalesce(`m`.`f_adresse`,`o`.`f_adresse`) AS `Adresse`,coalesce(`m`.`f_cp`,`o`.`f_cp`) AS `CP`,coalesce(`m`.`f_ville`,`o`.`f_ville`) AS `Ville` from ((`t_officiels` `o` join `t_clubs` `c` on((`o`.`f_club` = `c`.`f_club`))) left join `t_membres_acces` `m` on((`o`.`f_membre_id` = `m`.`id`))) where ((`o`.`f_actif` = 1) and (`c`.`f_province` = 'Bruxelles')) order by `o`.`f_nom`,`o`.`f_prenom` ;

-- --------------------------------------------------------

--
-- Structure de la vue `Officiel-Bruxelles - FULL`
--
DROP TABLE IF EXISTS `Officiel-Bruxelles - FULL`;

CREATE ALGORITHM=UNDEFINED DEFINER=`juryathle`@`%` SQL SECURITY DEFINER VIEW `Officiel-Bruxelles - FULL`  AS  select `o`.`f_surnom` AS `nickname`,`o`.`f_actif` AS `isActive`,`o`.`f_courrier_papier` AS `isPostalMail`,`o`.`f_club` AS `f_club`,`o`.`f_brevet_I_dt` AS `b1`,`o`.`f_brevet_II_dt` AS `b2`,`o`.`f_brevet_III_dt` AS `b3`,`o`.`f_brevet_ATO_dt` AS `ITOA`,`o`.`f_brevet_ITO_dt` AS `ITOW`,NULL AS `m1`,NULL AS `m2`,coalesce(`m`.`f_nom`,`o`.`f_nom`) AS `lastname`,coalesce(`m`.`f_prenom`,`o`.`f_prenom`) AS `firstname`,coalesce(`m`.`f_sexe`,`o`.`f_sexe`) AS `sex`,coalesce(`m`.`f_anniversaire_dt`,`o`.`f_anniversaire_dt`) AS `birthday`,coalesce(`m`.`f_email_1`,`o`.`f_email_1`) AS `email`,coalesce(`m`.`f_adresse`,`o`.`f_adresse`) AS `address`,coalesce(`m`.`f_cp`,`o`.`f_cp`) AS `postalCode`,coalesce(`m`.`f_ville`,`o`.`f_ville`) AS `city`,'Belgique' AS `country`,coalesce(`m`.`f_phone`,`o`.`f_phone`) AS `phone`,coalesce(`m`.`f_phone2`,`o`.`f_phone_2`) AS `phone2` from (`t_officiels` `o` left join `t_membres_acces` `m` on((`m`.`id` = `o`.`f_membre_id`))) where (`o`.`f_province` = 'Bruxelles') ;

-- --------------------------------------------------------

--
-- Structure de la vue `Rapport des présences`
--
DROP TABLE IF EXISTS `Rapport des présences`;

CREATE ALGORITHM=UNDEFINED DEFINER=`juryathle`@`%` SQL SECURITY DEFINER VIEW `Rapport des présences`  AS  select `s`.`f_saison` AS `saison`,`c`.`f_date` AS `competition_date`,`c`.`f_club` AS `competition_club`,`c`.`f_type` AS `competition_type`,`c`.`f_matin` AS `matin`,`c`.`f_apresmidi` AS `apresmidi`,`c`.`f_soir` AS `soir`,((`c`.`f_matin` + `c`.`f_apresmidi`) + `c`.`f_soir`) AS `nb_convocation`,`c`.`f_rapport` AS `rapport`,`o`.`f_nom` AS `nom`,`o`.`f_prenom` AS `prenom`,`oc`.`f_club` AS `club`,`r`.`f_nom` AS `role`,`os`.`f_status` AS `status` from ((((((`t_competitions` `c` join `t_competitions_officiels` `co`) join `t_officiels` `o`) join `t_md_status_compet` `os`) join `t_roles` `r`) join `t_md_saisons` `s`) join `t_clubs` `oc`) where ((`s`.`f_start_dt` <= `c`.`f_date`) and (`s`.`f_end_dt` >= `c`.`f_date`) and (`c`.`f_actif` = 1) and (`oc`.`f_club` = `o`.`f_club`) and (`oc`.`f_province` = 'Bruxelles') and (`co`.`f_competition_id` = `c`.`id`) and (`co`.`f_officiel_id` = `o`.`id`) and (`co`.`f_status_id` = `os`.`id`) and (`co`.`f_role_id` = `r`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure de la vue `Rapport des présences 2016`
--
DROP TABLE IF EXISTS `Rapport des présences 2016`;
-- Erreur de lecture de structure pour la table juryathle.Rapport des présences 2016 : #1267 - Illegal mix of collations (utf8mb4_general_ci,COERCIBLE) and (latin1_swedish_ci,IMPLICIT) for operation 'if'

-- --------------------------------------------------------

--
-- Structure de la vue `Rapports manquants`
--
DROP TABLE IF EXISTS `Rapports manquants`;

CREATE ALGORITHM=UNDEFINED DEFINER=`juryathle`@`%` SQL SECURITY DEFINER VIEW `Rapports manquants`  AS  select `s`.`f_saison` AS `f_saison`,`c`.`f_date` AS `f_date`,`c`.`f_club` AS `f_club`,`c`.`f_nom` AS `f_nom`,`co`.`f_officiel_id` AS `f_officiel_id`,`o`.`f_surnom` AS `f_surnom` from ((((`t_competitions` `c` join `t_clubs` `cl`) join `t_md_saisons` `s`) join `t_competitions_officiels` `co`) join `t_officiels` `o`) where ((`c`.`f_rapport` = 0) and (`c`.`f_actif` = 1) and (`c`.`f_date` >= `s`.`f_start_dt`) and (`c`.`f_date` <= `s`.`f_end_dt`) and (`cl`.`f_club` = `c`.`f_club`) and (`cl`.`f_province` = 'Bruxelles') and (`co`.`f_competition_id` = `c`.`id`) and (`co`.`f_role_id` = 'JA') and (`co`.`f_status_id` = 1) and (`co`.`f_officiel_id` = `o`.`id`)) order by `s`.`f_saison` desc,`o`.`f_surnom`,`c`.`f_date`,`c`.`id` ;

-- --------------------------------------------------------

--
-- Structure de la vue `Rapports manquants 2012-2013`
--
DROP TABLE IF EXISTS `Rapports manquants 2012-2013`;

CREATE ALGORITHM=UNDEFINED DEFINER=`juryathle`@`%` SQL SECURITY DEFINER VIEW `Rapports manquants 2012-2013`  AS  select `c`.`f_date` AS `f_date`,`c`.`f_club` AS `f_club`,`c`.`f_nom` AS `f_nom`,`co`.`f_officiel_id` AS `f_officiel_id`,`o`.`f_surnom` AS `f_surnom` from ((((`t_competitions` `c` join `t_clubs` `cl`) join `t_md_saisons` `s`) join `t_competitions_officiels` `co`) join `t_officiels` `o`) where ((`c`.`f_rapport` = 0) and (`c`.`f_actif` = 1) and (`c`.`f_date` >= `s`.`f_start_dt`) and (`c`.`f_date` <= `s`.`f_end_dt`) and (`s`.`f_saison` = '2012 - 2013') and (`cl`.`f_club` = `c`.`f_club`) and (`cl`.`f_province` = 'Bruxelles') and (`co`.`f_competition_id` = `c`.`id`) and (`co`.`f_role_id` = 'JA') and (`co`.`f_status_id` = 1) and (`co`.`f_officiel_id` = `o`.`id`)) order by `o`.`f_surnom`,`c`.`f_date`,`c`.`id` ;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `t_clubs`
--
ALTER TABLE `t_clubs`
  ADD CONSTRAINT `Province` FOREIGN KEY (`f_province`) REFERENCES `t_md_provinces` (`f_nom`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `t_competitions`
--
ALTER TABLE `t_competitions`
  ADD CONSTRAINT `Type_Competition` FOREIGN KEY (`f_type`) REFERENCES `t_md_typecompet` (`f_type`) ON UPDATE CASCADE,
  ADD CONSTRAINT `t_competitions_ibfk_2` FOREIGN KEY (`f_club`) REFERENCES `t_clubs` (`f_club`) ON UPDATE CASCADE,
  ADD CONSTRAINT `t_competitions_ibfk_3` FOREIGN KEY (`f_convocation_demande`) REFERENCES `t_convocations` (`id`);

--
-- Contraintes pour la table `t_competitions_officiels`
--
ALTER TABLE `t_competitions_officiels`
  ADD CONSTRAINT `t_competitions_officiels_ibfk_1` FOREIGN KEY (`f_competition_id`) REFERENCES `t_competitions` (`id`),
  ADD CONSTRAINT `t_competitions_officiels_ibfk_2` FOREIGN KEY (`f_officiel_id`) REFERENCES `t_officiels` (`id`),
  ADD CONSTRAINT `t_competitions_officiels_ibfk_3` FOREIGN KEY (`f_role_id`) REFERENCES `t_roles` (`id`),
  ADD CONSTRAINT `t_competitions_officiels_ibfk_5` FOREIGN KEY (`f_status_id`) REFERENCES `t_md_status_compet` (`id`);

--
-- Contraintes pour la table `t_convocations_demandes`
--
ALTER TABLE `t_convocations_demandes`
  ADD CONSTRAINT `t_convocations_demandes_ibfk_1` FOREIGN KEY (`f_convocation_id`) REFERENCES `t_convocations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `t_convocations_epreuves`
--
ALTER TABLE `t_convocations_epreuves`
  ADD CONSTRAINT `t_convocations_epreuves_ibfk_1` FOREIGN KEY (`f_convocation_id`) REFERENCES `t_convocations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_convocations_epreuves_ibfk_2` FOREIGN KEY (`f_epreuve_id`) REFERENCES `t_epreuves` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `t_convocations_officiels`
--
ALTER TABLE `t_convocations_officiels`
  ADD CONSTRAINT `t_convocations_officiels_ibfk_1` FOREIGN KEY (`f_convocation_id`) REFERENCES `t_convocations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_convocations_officiels_ibfk_2` FOREIGN KEY (`f_officiel_id`) REFERENCES `t_officiels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_convocations_officiels_ibfk_3` FOREIGN KEY (`f_role_id`) REFERENCES `t_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `t_md_status_rel`
--
ALTER TABLE `t_md_status_rel`
  ADD CONSTRAINT `t_md_status_rel_ibfk_1` FOREIGN KEY (`f_status_id`) REFERENCES `t_md_status` (`id`),
  ADD CONSTRAINT `t_md_status_rel_ibfk_2` FOREIGN KEY (`f_status_compet_id`) REFERENCES `t_md_status_compet` (`id`);

--
-- Contraintes pour la table `t_md_typecompet_province`
--
ALTER TABLE `t_md_typecompet_province`
  ADD CONSTRAINT `t_md_typecompet_province_ibfk_1` FOREIGN KEY (`f_typecompet`) REFERENCES `t_md_typecompet` (`f_type`) ON UPDATE CASCADE,
  ADD CONSTRAINT `t_md_typecompet_province_ibfk_2` FOREIGN KEY (`f_province`) REFERENCES `t_md_provinces` (`f_nom`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `t_officiels`
--
ALTER TABLE `t_officiels`
  ADD CONSTRAINT `Club` FOREIGN KEY (`f_club`) REFERENCES `t_clubs` (`f_club`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `t_officiels_disponibilites`
--
ALTER TABLE `t_officiels_disponibilites`
  ADD CONSTRAINT `t_officiels_disponibilites_ibfk_1` FOREIGN KEY (`f_officiel_id`) REFERENCES `t_officiels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `t_officiels_disponibilites_exceptions`
--
ALTER TABLE `t_officiels_disponibilites_exceptions`
  ADD CONSTRAINT `t_officiels_disponibilites_exceptions_ibfk_1` FOREIGN KEY (`f_officiel_id`) REFERENCES `t_officiels` (`id`),
  ADD CONSTRAINT `t_officiels_disponibilites_exceptions_ibfk_2` FOREIGN KEY (`f_club`) REFERENCES `t_clubs` (`f_club`);

--
-- Contraintes pour la table `t_officiels_meritants`
--
ALTER TABLE `t_officiels_meritants`
  ADD CONSTRAINT `t_officiels_meritants_ibfk_1` FOREIGN KEY (`f_officiel_id`) REFERENCES `t_officiels` (`id`);

--
-- Contraintes pour la table `t_officiels_roles`
--
ALTER TABLE `t_officiels_roles`
  ADD CONSTRAINT `t_officiels_roles_ibfk_1` FOREIGN KEY (`f_officiel_id`) REFERENCES `t_officiels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_officiels_roles_ibfk_2` FOREIGN KEY (`f_role_id`) REFERENCES `t_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
