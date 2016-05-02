-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 02, 2016 at 12:29 PM
-- Server version: 5.1.57
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `a9491971_android`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` VALUES('admin', 'administrateur', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `medecin`
--

CREATE TABLE `medecin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `tel` int(15) NOT NULL,
  `ville` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `heurematin` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `heureapresmidi` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `medecin`
--

INSERT INTO `medecin` VALUES(4, 'Cabinet Dentaire', 'Av 14 janvier rue Ahmed Aloulou, IMB El Hana, Sfax 3027, Tunisie', 98, 'SFAX', '13H30 a 17:00', '9H00 a 13H30', 34.737900, 10.754102);
INSERT INTO `medecin` VALUES(2, 'Dr Meriem Hakim Safraou', 'Bureau N B4-15 4eme etage.Immeuble le Cercle des Bureaux,Tunis 1003', 71947627, 'Tunis', '13H30 a 15:30', '10H00 a 13H30', 36.847092, 10.198469);
INSERT INTO `medecin` VALUES(5, 'Cabinet dentaire Dr.Foued Mokhtar', ' Avenue Habib Bourguiba, Gabes, Tunisie', 75274210, 'Gabes', '15H00 a 18:30', '8H30 a 13H30', 10.105125, 33.887451);
INSERT INTO `medecin` VALUES(6, 'Dr, Mohamed Aggouni', 'P15, Gafsa, Tunisie', 52668551, 'Gafsa', '14H00 a 18H00', '8H00 a 13H00', 34.428722, 8.782318);
INSERT INTO `medecin` VALUES(7, 'Dr Khaled SIDHOM', 'Avenue Habib Bourguiba, Nabeul&#8206;, Tunisie', 70030094, 'Nabel', '13H30 a 19:00', '8H30 a 13H30', 36.458794, 10.732746);
INSERT INTO `medecin` VALUES(8, 'Dr. Lamine Gallali', '2 Rue Taher Hadded, Kebili 4200', 75490340, 'Kebili', '13H30 a 17:00', '8H00 a 13H30', 33.705669, 8.973247);
INSERT INTO `medecin` VALUES(9, ' Dr .Haddad Mohamed', 'Avenue 14 Janvier Bizerte( au dessue de la Boulangerie Haj Yahya), Bizerte', 72436343, 'Bizerte', '15H00 a 18:00', '8H30 a 13H00', 37.281406, 9.857125);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacieJour`
--

CREATE TABLE `pharmacieJour` (
  `id1` int(11) NOT NULL AUTO_INCREMENT,
  `name1` varchar(60) NOT NULL,
  `tel1` int(11) NOT NULL,
  `ville1` varchar(80) NOT NULL,
  `address1` varchar(80) NOT NULL,
  `heurematin` varchar(80) NOT NULL,
  `heureapresmidi` varchar(80) NOT NULL,
  `lat1` float(10,6) NOT NULL,
  `lng1` float(10,6) NOT NULL,
  PRIMARY KEY (`id1`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `pharmacieJour`
--

INSERT INTO `pharmacieJour` VALUES(5, 'Mme. TRIGUI EP.CHINE HASSIBA', 75275907, 'Gabes', '52,AV JAMEL ABDENNACEUR, 6002 gabes', '8H00 a 13H30', '16H a 20H00', 33.876354, 10.092765);
INSERT INTO `pharmacieJour` VALUES(6, 'Abdelaziz Bouchrika', 0, 'Gabes', 'Boulevard Mohammed Ali, Gabes, Tunisie', '8H00 a 13H30', '16H a 20H00', 33.880238, 10.096051);
INSERT INTO `pharmacieJour` VALUES(9, 'M. JALLOUL JAMEL', 75271122, 'Gabes', '320, Avenue Mohamed Ali, 6000 gabes', '8H00 a 13H30', '16H a 20H00', 33.878929, 10.093999);
INSERT INTO `pharmacieJour` VALUES(10, 'Pharmacie jour ', 0, 'Kairouan', 'Rue bayet el hekma Kairouan, Tunisie', '8H00 a 13H30', '16H00 a 20H00', 35.667244, 10.098807);
INSERT INTO `pharmacieJour` VALUES(12, 'Mr : Romdhani', 0, 'Kairouan', 'C87, Al-Qayrawan 3100, Tunisie', '8H00 a 13H30', '16H00 a 20H00', 35.668995, 10.101472);
INSERT INTO `pharmacieJour` VALUES(13, 'Mr: Abboudi', 0, 'Kairouan', 'Rue Hassan En Nooman, Kairouan, Tunisie', '8H00 a 13H30', '16H00 a 20H00', 35.671265, 10.102907);
INSERT INTO `pharmacieJour` VALUES(14, 'M. GNAOUI', 77471407, 'Kasserine', '14 Rue 18 Janvier 1952, Kasserine 1200', '8H00 a 13H30', '16H00 a 20H00', 35.169056, 8.831779);
INSERT INTO `pharmacieJour` VALUES(15, 'M.Kchaou Letaief', 77473644, 'Kasserine', 'Avenue Taieb M''Hiri, Kasserine 1200, Tunisie', '8H00 a 13H30', '16H00 a 20H00', 35.167828, 8.831468);
INSERT INTO `pharmacieJour` VALUES(16, 'M.Jamel Chatti', 77470158, 'Kasserine', 'P13, Kasserine, Tunisie', '8H00 a 13H30', '16H00 a 20H00', 35.167713, 8.833614);
INSERT INTO `pharmacieJour` VALUES(17, 'M.Chelaifa hiboun mahdia', 0, 'Mahdia', 'hiboun mahdia, Avenue Habib Bourgiba, Hiboun, Tunisie', '8H00 a 13H30', '16H00 a 20H00', 35.516914, 11.030671);
INSERT INTO `pharmacieJour` VALUES(18, 'M.Sakka Mohamed', 73, 'Mahdia', ' 65 C82, Mahdia 5100, Tunisie ', '8H00 a 13H30', '13H30 a 19:30', 35.504963, 11.063973);
INSERT INTO `pharmacieJour` VALUES(19, 'Mme.Rachida ben youssef', 0, 'Mahdia', 'Avenue Bechir Sfar, Mahdia, Tunisie', '8H00 a 13H30', '16H00 a 20H00', 35.505348, 11.054961);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacieNuit`
--

CREATE TABLE `pharmacieNuit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `tel` int(15) NOT NULL,
  `ville` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `seancecontinu` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=38 ;

--
-- Dumping data for table `pharmacieNuit`
--

INSERT INTO `pharmacieNuit` VALUES(1, 'SAIHI GHAZI', '71 AVENUE HABIB BOURGUIBA,1110 MORNAGUIA', 71541778, 'MANNOUBA', '19H30 A 8H30', 36.766289, 10.016595);
INSERT INTO `pharmacieNuit` VALUES(2, 'Mme. MAALEJ EP.BEN MUSTAPHA FATHIA', '27,Avenue de Independance den den, 2011 den den', 71610884, 'MANNOUBA', '19H30 A 8H30', 36.802349, 10.106125);
INSERT INTO `pharmacieNuit` VALUES(3, 'M. BEN OMRANE MOEZ', 'Compl.comm.Municipale Av.H.Bourguiba,2021 oues ellil', 71535182, 'MANNOUBA', '19H30 A 8H30', 36.831989, 10.039964);
INSERT INTO `pharmacieNuit` VALUES(4, 'pharmacie de nuit', 'P5 Den Den Tunisia', 0, 'MANNOUBA', '19H30 A 8H30', 36.802448, 10.113993);
INSERT INTO `pharmacieNuit` VALUES(5, 'M. ELOUED NEJIB', '67, Avenue Habib Bourguiba, 2010 la manouba', 71520141, 'MANNOUBA', '19H30 A 8H30', 36.810596, 10.094533);
INSERT INTO `pharmacieNuit` VALUES(6, 'M. ESSOUSSI BELHASSEN', '20, Av. Aboul Kacem Chebbi, 2086 douar hicher', 0, 'MANNOUBA', '19H30 A 8H30', 36.821648, 10.089607);
INSERT INTO `pharmacieNuit` VALUES(7, 'M. BEN AOUN ABDESSALEM', 'Residence Nlle Air Av. des Martyrs Douar Hic', 71544091, 'MANNOUBA', '19H30 A 8H30', 36.826389, 10.096596);
INSERT INTO `pharmacieNuit` VALUES(8, 'M. NAJJAR HICHEM', '63, Av. Fattouma Bourguiba Sidi Fraj, 2036 la soukra', 70946544, 'ARIANA', '19H30 A 8H30', 36.876602, 10.268064);
INSERT INTO `pharmacieNuit` VALUES(9, 'Mme. AOUIDJ LATIFA', '15,rue Mustapha Mohsen, 2073 borj louzir', 71708008, 'ARIANA', '19H30 A 8H30', 36.865337, 10.202206);
INSERT INTO `pharmacieNuit` VALUES(10, 'M. OUESLATI FATHI', '30,Rue Ali Belhaouane, 2080 ariana', 71710676, 'ARIANA', '19H30 A 8H30', 36.858631, 10.188548);
INSERT INTO `pharmacieNuit` VALUES(11, 'Mme. JELLOULI EP.MASMOUDI HEDIA', 'Av. Hedi Nouira Residence Khalil, 2037 cite ennas', 70825060, 'ARIANA', '19H30 A 8H30', 36.856232, 10.156602);
INSERT INTO `pharmacieNuit` VALUES(12, 'M. KOTRANE RIADH', '49,Av.Fethi Zouhir Rte Raoued Ennkhilet, 2080 ariana', 71866672, 'ARIANA', '19H30 A 8H30', 36.879353, 10.185614);
INSERT INTO `pharmacieNuit` VALUES(13, 'M. SARRAI KARIM', '116,Av. Fethi Zouhir, 2056 raoued', 71515387, 'ARIANA', '19H30 A 8H30', 36.887394, 10.182811);
INSERT INTO `pharmacieNuit` VALUES(14, 'M. Atallah Hafedh', 'Rte de Bizerte MC 31 Km4 Cite Ennasr, 2094 el m''ni', 0, 'ARIANA', '19H30 A 8H30', 36.840317, 10.116788);
INSERT INTO `pharmacieNuit` VALUES(15, 'pahramcie de nuit', 'Tunis, Tunisie', 0, 'ARIANA', '19H30 A 8H30', 36.840240, 10.116488);
INSERT INTO `pharmacieNuit` VALUES(16, 'M. BEN YAGHLANE NADHIM', '112, Av. Taieb M''Hiri Cite 18 Janvier, 2041 cite ettadhamen', 70663644, 'ARIANA', '19H30 A 8H30', 36.833813, 10.103221);
INSERT INTO `pharmacieNuit` VALUES(17, 'pharmacie de nuit', ' Rue 105, Tunisia', 0, 'ARIANA', '19H30 A 8H30', 36.833626, 10.103436);
INSERT INTO `pharmacieNuit` VALUES(18, 'M. GUIGA MAHER', ' 8,Avenue de l''Independance, 2041 cite ettadhamen', 71546273, 'ARIANA', '19H30 A 8H30', 36.830769, 10.114651);
INSERT INTO `pharmacieNuit` VALUES(19, 'Mme. GUELLIM EP. LAASSIDI ALIA', 'GP1 Km 20, 2055 bir el bey', 71431272, 'BEN AROUS', '19H30 A 8H30', 36.710434, 10.376729);
INSERT INTO `pharmacieNuit` VALUES(20, 'pharmacie de nuit', 'P1, hammam lif, Tunisie ', 0, 'BEN AROUS', '19H30 A 8H30', 36.710251, 10.376659);
INSERT INTO `pharmacieNuit` VALUES(21, 'M. ABDENNADHER MOHAMED', '77,av. Salambo, 2050 hammam lif', 71292703, 'BEN AROUS', '19H30 A 8H30', 36.727219, 10.337068);
INSERT INTO `pharmacieNuit` VALUES(22, 'Mme. HALIOUI EP.M''HIRSI LAMIA', 'Residence Cleopatre,Angle Av.H.Bourguiba et Av. de l''environnement, 2034 ezzahra', 71582939, 'BEN AROUS', '19H30 A 8H30', 36.740318, 10.302837);
INSERT INTO `pharmacieNuit` VALUES(23, 'pharmacie de nuit', 'Ez Zahra Tunisia', 0, 'BEN AROUS', '19H30 A 8H30', 36.740376, 10.302577);
INSERT INTO `pharmacieNuit` VALUES(24, 'Mme. ANNABI EP.FARAH SAMIA', 'COMPLEX BOURICHA CITE ESSALEM, 2097 boumhel', 71217633, 'BEN AROUS', '19H30 A 8H30', 36.724747, 10.301577);
INSERT INTO `pharmacieNuit` VALUES(25, 'pharmacie de nuit', 'C39 Bou Mhel el-Bassatine Tunisia', 0, 'BEN AROUS', '19H30 A 8H30', 36.724533, 10.301476);
INSERT INTO `pharmacieNuit` VALUES(26, 'Mme. KSOURI EP.EL OUNI NAZIHA', '7,Rue de la Republique rades, 2040 rades', 79459822, 'BEN AROUS', '19H30 A 8H30', 36.767921, 10.276900);
INSERT INTO `pharmacieNuit` VALUES(27, 'pharmacie de nuit', 'Avenue De La République rades Tunisia', 0, 'BEN AROUS', '19H30 A 8H30', 36.767937, 10.273410);
INSERT INTO `pharmacieNuit` VALUES(28, 'M. ESSAIDI OTHMAN', '49, Avenue Habib Bourguiba, 2033 megrine', 71297642, 'BEN AROUS', '19H30 A 8H30', 36.769829, 10.233101);
INSERT INTO `pharmacieNuit` VALUES(29, 'M. BEN HAMOUDA ABERRAOUF', '15, Rue de Bizerte, 2063 nouvelle medina 3', 71314456, 'BEN AROUS', '19H30 A 8H30', 36.741837, 10.242450);
INSERT INTO `pharmacieNuit` VALUES(30, 'Mme. BENZINA EP ESSAIED AZZA', 'CENTRE 21,rue la Mahdia, 2074 el mourouj 1', 71364427, 'BEN AROUS', '19H30 A 8H30', 36.768402, 10.270710);
INSERT INTO `pharmacieNuit` VALUES(31, 'M. MBAREK SAMI', 'Av. 7 Novembre, 2074 el mourouj 3', 79452290, 'BEN AROUS', '19H30 A 8H30', 36.721611, 10.215494);
INSERT INTO `pharmacieNuit` VALUES(32, 'M. MOHSNI NEBIL', '2, Av. Farhat Hached, 2090 mornag', 71360467, 'BEN AROUS', '19H30 A 8H30', 36.678932, 10.286226);
INSERT INTO `pharmacieNuit` VALUES(33, 'Pharmacie du nuit', 'Mornag Tunisia', 0, 'BEN AROUS', '19H30 A 8H30', 36.679756, 10.288002);
INSERT INTO `pharmacieNuit` VALUES(34, 'Mlle. RIAHI YOSRA', 'Av. Habib Bourguiba, 9070 medjez el bab', 78562002, 'BEJA', '19H30 A 8H30', 36.653122, 9.610373);
INSERT INTO `pharmacieNuit` VALUES(35, 'M. BOULILA HATEM', 'Av. 7 Novembre, 9040 teboursouk', 0, 'BEJA', '19H30 A 8H30', 36.458809, 9.248920);
INSERT INTO `pharmacieNuit` VALUES(36, 'pharmacie de nuit', 'Rue des Martyrs, En face Hôpital de Fernana, Fernana 8140, Tunisie', 78, 'BEJA', '19H30 A 8H30', 36.650917, 8.695761);
INSERT INTO `pharmacieNuit` VALUES(37, 'pharmacie de nuit', 'Rue De La République, gaafour 6110, Tunisie', 0, 'BEJA', '19H30 A 8H30', 36.321892, 9.327475);

-- --------------------------------------------------------

--
-- Table structure for table `urgence`
--

CREATE TABLE `urgence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `tel` int(15) NOT NULL,
  `ville` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `seancecontinu` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `urgence`
--

INSERT INTO `urgence` VALUES(1, 'Clinique El Amen', '20 - 22 Rue Azziza Othmana, Tunis 1082, Tunisie', 71791533, 'Tunis', '19H30 A 8H30', 36.838223, 10.169567);
INSERT INTO `urgence` VALUES(3, 'Urgences Medicales Privees', 'Avenue 20 Mars, Hammam-Lif, Tunisie', 79218000, 'Ben arous', '08H30 A 8H00', 36.731007, 10.334663);
INSERT INTO `urgence` VALUES(4, 'Urgence', ' Urgences Avenue de la République Kairouan', 77226300, ' Kairouan', '19H30 A 8H30', 35.684921, 10.095606);
