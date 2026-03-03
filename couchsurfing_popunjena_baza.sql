-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2024 at 12:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `couchsurfing`
--

-- --------------------------------------------------------

--
-- Table structure for table `aktivnosti`
--

CREATE TABLE `aktivnosti` (
  `AKTIVOST_ID` int(11) NOT NULL,
  `NAZIV_AKTIVNOSTI` varchar(20) NOT NULL,
  `DATUM` date NOT NULL,
  `MESTO` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aktivnosti`
--

INSERT INTO `aktivnosti` (`AKTIVOST_ID`, `NAZIV_AKTIVNOSTI`, `DATUM`, `MESTO`) VALUES
(1, 'Pozoriste', '2024-04-15', 'Berlin'),
(2, 'Piknik', '2024-04-13', 'Varsava'),
(3, 'ZooVrt', '2024-07-13', 'Beograd'),
(4, 'Skijanje', '2024-11-21', 'Alpi'),
(5, 'ZabavniPark', '2024-04-27', 'London');

-- --------------------------------------------------------

--
-- Table structure for table `autobusi`
--

CREATE TABLE `autobusi` (
  `AUTOBUS_ID` int(11) NOT NULL,
  `CENA` int(11) NOT NULL,
  `RED_VOZNJE` datetime DEFAULT NULL,
  `KOMPANIJA` varchar(15) DEFAULT NULL,
  `MESTO_POLAZNKA` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `autobusi`
--

INSERT INTO `autobusi` (`AUTOBUS_ID`, `CENA`, `RED_VOZNJE`, `KOMPANIJA`, `MESTO_POLAZNKA`) VALUES
(3, 3500, NULL, 'Lasta', 'Subotica'),
(6, 4500, NULL, NULL, 'Venecija');

-- --------------------------------------------------------

--
-- Table structure for table `automobili`
--

CREATE TABLE `automobili` (
  `AUTO_ID` int(11) NOT NULL,
  `CENA` int(11) NOT NULL,
  `RED_VOZNJE` datetime DEFAULT NULL,
  `VRSTA_AUTA` varchar(15) NOT NULL,
  `GORIVO` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `automobili`
--

INSERT INTO `automobili` (`AUTO_ID`, `CENA`, `RED_VOZNJE`, `VRSTA_AUTA`, `GORIVO`) VALUES
(2, 13000, '2024-03-15 22:11:02', 'fiat', 'benzin'),
(5, 15000, NULL, 'audi', NULL),
(10, 6700, NULL, 'mercedes', 'dizel');

-- --------------------------------------------------------

--
-- Table structure for table `avioni`
--

CREATE TABLE `avioni` (
  `AVION_ID` int(11) NOT NULL,
  `CENA` int(11) NOT NULL,
  `RED_VOZNJE` datetime DEFAULT NULL,
  `KLASA` varchar(20) NOT NULL,
  `IME_KOMPANIJE` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `avioni`
--

INSERT INTO `avioni` (`AVION_ID`, `CENA`, `RED_VOZNJE`, `KLASA`, `IME_KOMPANIJE`) VALUES
(4, 55000, NULL, 'ekonomska', 'AirSerbia'),
(7, 21000, NULL, 'ekonomska', 'AirSerbia');

-- --------------------------------------------------------

--
-- Table structure for table `domacini`
--

CREATE TABLE `domacini` (
  `DOMACIN_ID` int(11) NOT NULL,
  `POL` char(1) NOT NULL,
  `JEZIK` varchar(3) NOT NULL,
  `STATUSA` varchar(3) NOT NULL,
  `DRZAVA` varchar(3) NOT NULL,
  `GRAD` varchar(15) NOT NULL,
  `IME` varchar(20) NOT NULL,
  `PREZIME` varchar(20) NOT NULL,
  `GODINE` int(11) NOT NULL,
  `EMAIL` varchar(20) DEFAULT NULL,
  `OPIS` varchar(50) DEFAULT NULL,
  `GODINA_RODJENJA` int(11) NOT NULL,
  `REJTING_ID` int(11) NOT NULL,
  `ADRESA` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `domacini`
--

INSERT INTO `domacini` (`DOMACIN_ID`, `POL`, `JEZIK`, `STATUSA`, `DRZAVA`, `GRAD`, `IME`, `PREZIME`, `GODINE`, `EMAIL`, `OPIS`, `GODINA_RODJENJA`, `REJTING_ID`, `ADRESA`) VALUES
(6, 'z', 'DEU', 'P', 'DEU', 'Berlin', 'Adala', 'Fuchs', 23, 'ferrilopez@gmail.com', 'Ich mag es neue Leute zu treffen', 2000, 1, 'Heine Straße 5/23'),
(7, 'm', 'POL', 'P', 'POL', 'Varsava', 'Napoleon', 'Majeski', 15, NULL, NULL, 2008, 2, 'Msovian Voivodeship 25/3'),
(8, 'z', 'ITA', 'P', 'ITA', 'Milano', 'Rosabella', 'Venturi', 67, 'venturirossa57@gmail', NULL, 1957, 3, 'Lombardi 3/7'),
(9, 'm', 'ENG', 'P', 'ENG', 'Oxford', 'John', 'Brown', 41, NULL, NULL, 1983, 4, '26 Northmoor Rd'),
(10, 'z', 'SRB', 'P', 'SRB', 'Beograd', 'Una', 'Tomic', 1992, NULL, NULL, 1992, 5, 'Kneza Milosa 11/22');

-- --------------------------------------------------------

--
-- Table structure for table `donosepoklone`
--

CREATE TABLE `donosepoklone` (
  `GOST_ID` int(11) NOT NULL,
  `POKLON_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donosepoklone`
--

INSERT INTO `donosepoklone` (`GOST_ID`, `POKLON_ID`) VALUES
(1, 2),
(2, 1),
(3, 4),
(4, 5),
(5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `drzave`
--

CREATE TABLE `drzave` (
  `DRZAVA_SKRACENICA` varchar(3) NOT NULL,
  `NAZIV_DRZAVA` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drzave`
--

INSERT INTO `drzave` (`DRZAVA_SKRACENICA`, `NAZIV_DRZAVA`) VALUES
('CHN', 'Kina'),
('DEU', 'Nemacka'),
('ENG', 'Engleska'),
('ESP', 'Spanija'),
('FRA', 'Francuska'),
('IND', 'Indija'),
('ITA', 'Italija'),
('POL', 'Poljska'),
('RUS', 'Rusija'),
('SA', 'Saudijska Arabija'),
('SRB', 'Srbija');

-- --------------------------------------------------------

--
-- Table structure for table `gosti`
--

CREATE TABLE `gosti` (
  `GOST_ID` int(11) NOT NULL,
  `POL` char(1) NOT NULL,
  `JEZIK` varchar(3) NOT NULL,
  `STATUS` varchar(3) NOT NULL,
  `DRZAVA` varchar(3) NOT NULL,
  `GRAD` varchar(15) NOT NULL,
  `IME` varchar(20) NOT NULL,
  `PREZIME` varchar(20) NOT NULL,
  `GODINE` int(11) NOT NULL,
  `EMAIL` varchar(20) DEFAULT NULL,
  `OPIS` varchar(50) DEFAULT NULL,
  `GODINA_RODJENJA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gosti`
--

INSERT INTO `gosti` (`GOST_ID`, `POL`, `JEZIK`, `STATUS`, `DRZAVA`, `GRAD`, `IME`, `PREZIME`, `GODINE`, `EMAIL`, `OPIS`, `GODINA_RODJENJA`) VALUES
(1, 'm', 'ESP', 'NP', 'ESP', 'Madrid', 'Fernando', 'Lopez', 27, 'ferrilopez@gmail.com', NULL, 1997),
(2, 'z', 'RUS', 'MP', 'RUS', 'Sankt Petersbur', 'Masa', 'Pavlova', 34, NULL, NULL, 1995),
(3, 'm', 'SRB', 'NP', 'SRB', 'Kragujevac', 'Dusan', 'Kovacevic', 29, 'dukikovac221@gmail.c', NULL, 1995),
(4, 'z', 'ITA', 'NP', 'ITA', 'Venecija', 'Luna', 'Rossi', 22, 'rossil02@gmail.com', 'Amo Viaggiare', 2002),
(5, 'm', 'SA', 'NP', 'SA', 'Rijad', 'Jamal', 'Aziz', 54, 'zaazijam45@gmail.com', NULL, 1970);

-- --------------------------------------------------------

--
-- Table structure for table `gradovi`
--

CREATE TABLE `gradovi` (
  `DRZAVA_SKRACENICA` varchar(3) NOT NULL,
  `NAZIV_GRADA` varchar(15) NOT NULL,
  `SKRACENICA_GRADA` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gradovi`
--

INSERT INTO `gradovi` (`DRZAVA_SKRACENICA`, `NAZIV_GRADA`, `SKRACENICA_GRADA`) VALUES
('DEU', 'Berlin', 'BER'),
('ENG', 'Oxford', 'OXF'),
('ESP', 'Barselona', 'BAR'),
('ESP', 'Madrid', 'MAD'),
('FRA', 'Pariz', 'PAR'),
('IND', 'Nju Delhi ', 'ND'),
('ITA', 'Milano ', 'MIL'),
('ITA', 'Venecija', 'VEN'),
('POL', 'Varsava', 'VAR'),
('RUS', 'Moskva', 'MOS'),
('RUS', 'Sankt Petersbur', 'SP'),
('SA', 'Rijad', 'RIA'),
('SRB', 'Beograd', 'BG'),
('SRB', 'Kragujevac', 'KG'),
('SRB', 'Novi Sad', 'NS');

-- --------------------------------------------------------

--
-- Table structure for table `jezici`
--

CREATE TABLE `jezici` (
  `JEZIK_OZNAKA` varchar(3) NOT NULL,
  `NAZIV_JEZIKA` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jezici`
--

INSERT INTO `jezici` (`JEZIK_OZNAKA`, `NAZIV_JEZIKA`) VALUES
('CHN', 'kineski'),
('DEU', 'nemacki'),
('ENG', 'engleski'),
('ESP', 'spanski'),
('FRA', 'francuski'),
('IND', 'indijski'),
('ITA', 'italijanski'),
('POL', 'poljski'),
('RUS', 'ruski'),
('SA', 'arapski'),
('SRB', 'srpski');

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `KORISNIK_ID` int(11) NOT NULL,
  `POL` char(1) NOT NULL,
  `JEZIK` varchar(3) NOT NULL,
  `STATUS` varchar(3) NOT NULL,
  `DRZAVA` varchar(3) NOT NULL,
  `GRAD` varchar(15) NOT NULL,
  `IME` varchar(20) NOT NULL,
  `PREZIME` varchar(20) NOT NULL,
  `GODINE` int(11) NOT NULL,
  `EMAIL` varchar(20) DEFAULT NULL,
  `OPIS` varchar(50) DEFAULT NULL,
  `GODINA_RODJENJA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`KORISNIK_ID`, `POL`, `JEZIK`, `STATUS`, `DRZAVA`, `GRAD`, `IME`, `PREZIME`, `GODINE`, `EMAIL`, `OPIS`, `GODINA_RODJENJA`) VALUES
(1, 'm', 'ESP', 'NP', 'ESP', 'Madrid', 'Fernando ', 'Lopez', 27, 'ferrilopez@gmail.com', NULL, 1997),
(2, 'z', 'RUS', 'MP', 'RUS', 'Sankt Petersbur', 'Masa', 'Pavlova', 34, NULL, NULL, 1990),
(3, 'm', 'SRB', 'NP', 'SRB', 'Kragujevac', 'Dusan', 'Kovacevic', 29, 'dulekovac221@gmail.c', NULL, 1995),
(4, 'z', 'ITA', 'NP', 'ITA', 'Venecija', 'Luna', 'Rossi', 22, 'rossil02@gmail.com', 'Amo Viaggiare', 2002),
(5, 'm', 'SA', 'NP', 'SA', 'Rijad', 'Jamal ', 'Aziz', 54, 'zaazijam45@gmail.com', NULL, 1970),
(6, 'z', 'DEU', 'P', 'DEU', 'Berlin', 'Adala', 'Fuchs', 23, NULL, 'Ich mag es neue Leute zu treffen', 2000),
(7, 'm', 'POL', 'P', 'POL', 'Varsava', 'Napoleon ', 'Majeski', 15, NULL, NULL, 2008),
(8, 'z', 'ITA', 'P', 'ITA', 'Milano ', 'Rosabella ', 'Venturi', 67, 'venturirossa57@gmail', NULL, 1957),
(9, 'm', 'ENG', 'P', 'ENG', 'Oxford', 'John ', 'Brown ', 41, NULL, NULL, 1983),
(10, 'z', 'SRB', 'P', 'SRB', 'Beograd', 'Una', 'Tomic', 32, NULL, NULL, 1992);

-- --------------------------------------------------------

--
-- Table structure for table `naciniputovanja`
--

CREATE TABLE `naciniputovanja` (
  `NACIN_PUTOVANJA_ID` int(11) NOT NULL,
  `CENA` int(11) NOT NULL,
  `RED_VOZNJE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `naciniputovanja`
--

INSERT INTO `naciniputovanja` (`NACIN_PUTOVANJA_ID`, `CENA`, `RED_VOZNJE`) VALUES
(1, 2000, '2024-03-20 21:05:03'),
(2, 13000, '2024-03-15 21:05:03'),
(3, 3500, NULL),
(4, 55000, '2024-04-19 00:35:10'),
(5, 18000, NULL),
(6, 4500, NULL),
(7, 21000, '2024-05-14 23:43:26'),
(8, 3500, NULL),
(9, 14000, NULL),
(10, 6700, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pokloni`
--

CREATE TABLE `pokloni` (
  `POKLON_ID` int(11) NOT NULL,
  `KOLICINA` int(11) NOT NULL,
  `MATERIJAL` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pokloni`
--

INSERT INTO `pokloni` (`POKLON_ID`, `KOLICINA`, `MATERIJAL`) VALUES
(1, 5, 'ruze'),
(2, 1, 'cokolada'),
(3, 1, 'knjiga'),
(4, 1, 'vino'),
(5, 3, 'ukras');

-- --------------------------------------------------------

--
-- Table structure for table `polovi`
--

CREATE TABLE `polovi` (
  `POL_OZNAKA` char(1) NOT NULL,
  `NAZIV_POLA` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `polovi`
--

INSERT INTO `polovi` (`POL_OZNAKA`, `NAZIV_POLA`) VALUES
('m', 'muski'),
('z', 'zenski');

-- --------------------------------------------------------

--
-- Table structure for table `prijatelji`
--

CREATE TABLE `prijatelji` (
  `PRIJATELJ_ID` int(11) NOT NULL,
  `KORISNIK_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prijatelji`
--

INSERT INTO `prijatelji` (`PRIJATELJ_ID`, `KORISNIK_ID`) VALUES
(1, 10),
(4, 1),
(5, 3),
(7, 2),
(8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `prijave`
--

CREATE TABLE `prijave` (
  `PRIJAVA_ID` int(11) NOT NULL,
  `SMESTAJ_ID` int(11) NOT NULL,
  `NACIN_PUTOVANJA_ID` int(11) NOT NULL,
  `GOST_ID` int(11) NOT NULL,
  `VERIFIKACIJA` varchar(2) NOT NULL,
  `DATUM_DOLASKA` date NOT NULL,
  `DATUM_ODLASKA` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prijave`
--

INSERT INTO `prijave` (`PRIJAVA_ID`, `SMESTAJ_ID`, `NACIN_PUTOVANJA_ID`, `GOST_ID`, `VERIFIKACIJA`, `DATUM_DOLASKA`, `DATUM_ODLASKA`) VALUES
(1, 2, 6, 2, 'Da', '2024-03-19', '2024-03-21'),
(2, 4, 8, 3, 'Da', '2024-04-15', '2024-04-20'),
(3, 3, 2, 5, 'Da', '2024-05-08', '2024-05-09'),
(4, 1, 5, 1, 'Ne', '2024-04-26', '2024-04-29'),
(5, 5, 10, 4, 'Da', '2024-06-12', '2024-06-17');

-- --------------------------------------------------------

--
-- Table structure for table `rejtinzi`
--

CREATE TABLE `rejtinzi` (
  `REJTING_ID` int(11) NOT NULL,
  `GOST_ID` int(11) NOT NULL,
  `AKTIVOST_ID` int(11) NOT NULL,
  `POHVALA` varchar(20) DEFAULT NULL,
  `OCENA` int(11) NOT NULL,
  `POENI` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rejtinzi`
--

INSERT INTO `rejtinzi` (`REJTING_ID`, `GOST_ID`, `AKTIVOST_ID`, `POHVALA`, `OCENA`, `POENI`) VALUES
(1, 1, 4, 'Super smestaj ', 9, 10),
(2, 4, 5, 'Solidan smestaj', 7, 9),
(3, 2, 1, NULL, 8, 6),
(4, 5, 2, NULL, 10, 7),
(5, 3, 3, NULL, 7, 8);

-- --------------------------------------------------------

--
-- Table structure for table `smestaji`
--

CREATE TABLE `smestaji` (
  `SMESTAJ_ID` int(11) NOT NULL,
  `SMESTAJ_OZNAKA` char(1) NOT NULL,
  `DOMACIN_ID` int(11) NOT NULL,
  `USLUGE` varchar(20) NOT NULL,
  `DODATNE_USLUGE` varchar(20) DEFAULT NULL,
  `POVRSINA_SOBE` decimal(2,2) NOT NULL,
  `OPIS` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `smestaji`
--

INSERT INTO `smestaji` (`SMESTAJ_ID`, `SMESTAJ_OZNAKA`, `DOMACIN_ID`, `USLUGE`, `DODATNE_USLUGE`, `POVRSINA_SOBE`, `OPIS`) VALUES
(1, 'S', 6, 'ciscenje', 'prostor za decu', 0.99, NULL),
(2, 'D', 7, 'pokrivac i jastuk', NULL, 0.16, NULL),
(3, 'K', 8, 'dorucak', NULL, 0.36, NULL),
(4, 'S', 9, 'zasebno kupatilo', NULL, 0.87, NULL),
(5, 'D', 10, 'udoban dusek ', 'nov dusek', 0.98, 'Dusek punjen vodom ');

-- --------------------------------------------------------

--
-- Table structure for table `statusi`
--

CREATE TABLE `statusi` (
  `STATUS_OZNAKA` varchar(3) NOT NULL,
  `NAZIV_STATUSA` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `statusi`
--

INSERT INTO `statusi` (`STATUS_OZNAKA`, `NAZIV_STATUSA`) VALUES
('MP', 'Mozda_prihvata'),
('NP', 'Ne_prihvata'),
('P', 'Prihvata');

-- --------------------------------------------------------

--
-- Table structure for table `tipoviaktivnosti`
--

CREATE TABLE `tipoviaktivnosti` (
  `NAZIV_AKTIVNOSTI` varchar(20) NOT NULL,
  `BROJ_POENA` int(11) NOT NULL,
  `TRAJANJE_AKTIVNOSTI` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tipoviaktivnosti`
--

INSERT INTO `tipoviaktivnosti` (`NAZIV_AKTIVNOSTI`, `BROJ_POENA`, `TRAJANJE_AKTIVNOSTI`) VALUES
('Bioskop', 5, '02:00:00'),
('Kafic', 3, '01:00:00'),
('Koncert', 4, '03:00:00'),
('Piknik', 7, '01:30:00'),
('Pozoriste', 6, '02:30:00'),
('Skijanje', 10, '02:30:00'),
('ZabavniPark', 9, '03:00:00'),
('ZooVrt', 8, '02:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `ucestvovanje`
--

CREATE TABLE `ucestvovanje` (
  `GOST_ID` int(11) NOT NULL,
  `AKTIVOST_ID` int(11) NOT NULL,
  `OSVOJENI_POENI` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ucestvovanje`
--

INSERT INTO `ucestvovanje` (`GOST_ID`, `AKTIVOST_ID`, `OSVOJENI_POENI`) VALUES
(1, 4, 10),
(2, 1, 6),
(3, 3, 8),
(4, 5, 9),
(5, 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `vozovi`
--

CREATE TABLE `vozovi` (
  `VOZ_ID` int(11) NOT NULL,
  `CENA` int(11) NOT NULL,
  `RED_VOZNJE` datetime DEFAULT NULL,
  `KABINA` varchar(2) NOT NULL,
  `MAX_BRZINA_VOZA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vozovi`
--

INSERT INTO `vozovi` (`VOZ_ID`, `CENA`, `RED_VOZNJE`, `KABINA`, `MAX_BRZINA_VOZA`) VALUES
(1, 2000, '2024-03-20 21:05:03', '3', 160),
(8, 3500, NULL, '6', 200),
(9, 14000, '2024-05-08 23:47:29', '4', 210);

-- --------------------------------------------------------

--
-- Table structure for table `vrstesmestaja`
--

CREATE TABLE `vrstesmestaja` (
  `SMESTAJ_OZNAKA` char(1) NOT NULL,
  `VRSTA_SMESTAJA` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vrstesmestaja`
--

INSERT INTO `vrstesmestaja` (`SMESTAJ_OZNAKA`, `VRSTA_SMESTAJA`) VALUES
('D', 'dusek'),
('K', 'kauc'),
('S', 'soba');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aktivnosti`
--
ALTER TABLE `aktivnosti`
  ADD PRIMARY KEY (`AKTIVOST_ID`),
  ADD KEY `FK_AKTIVNOS_ODREDJENE_TIPOVIAK` (`NAZIV_AKTIVNOSTI`);

--
-- Indexes for table `autobusi`
--
ALTER TABLE `autobusi`
  ADD PRIMARY KEY (`AUTOBUS_ID`);

--
-- Indexes for table `automobili`
--
ALTER TABLE `automobili`
  ADD PRIMARY KEY (`AUTO_ID`);

--
-- Indexes for table `avioni`
--
ALTER TABLE `avioni`
  ADD PRIMARY KEY (`AVION_ID`);

--
-- Indexes for table `domacini`
--
ALTER TABLE `domacini`
  ADD PRIMARY KEY (`DOMACIN_ID`),
  ADD KEY `FK_DOMACINI_REJTINZI_REJTINZI` (`REJTING_ID`);

--
-- Indexes for table `donosepoklone`
--
ALTER TABLE `donosepoklone`
  ADD PRIMARY KEY (`GOST_ID`,`POKLON_ID`),
  ADD KEY `FK_DONOSEPO_NOSENJE_P_POKLONI` (`POKLON_ID`);

--
-- Indexes for table `drzave`
--
ALTER TABLE `drzave`
  ADD PRIMARY KEY (`DRZAVA_SKRACENICA`);

--
-- Indexes for table `gosti`
--
ALTER TABLE `gosti`
  ADD PRIMARY KEY (`GOST_ID`);

--
-- Indexes for table `gradovi`
--
ALTER TABLE `gradovi`
  ADD PRIMARY KEY (`DRZAVA_SKRACENICA`,`NAZIV_GRADA`);

--
-- Indexes for table `jezici`
--
ALTER TABLE `jezici`
  ADD PRIMARY KEY (`JEZIK_OZNAKA`);

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`KORISNIK_ID`),
  ADD KEY `FK_KORISNIC_JEZICI_KO_JEZICI` (`JEZIK`),
  ADD KEY `FK_KORISNIC_KORISNICI_GRADOVI` (`DRZAVA`,`GRAD`),
  ADD KEY `FK_KORISNIC_KORISNICI_POLOVI` (`POL`),
  ADD KEY `FK_KORISNIC_STATUSI_K_STATUSI` (`STATUS`);

--
-- Indexes for table `naciniputovanja`
--
ALTER TABLE `naciniputovanja`
  ADD PRIMARY KEY (`NACIN_PUTOVANJA_ID`);

--
-- Indexes for table `pokloni`
--
ALTER TABLE `pokloni`
  ADD PRIMARY KEY (`POKLON_ID`);

--
-- Indexes for table `polovi`
--
ALTER TABLE `polovi`
  ADD PRIMARY KEY (`POL_OZNAKA`);

--
-- Indexes for table `prijatelji`
--
ALTER TABLE `prijatelji`
  ADD PRIMARY KEY (`PRIJATELJ_ID`,`KORISNIK_ID`),
  ADD KEY `FK_PRIJATEL_KORISNICI_KORISNIC` (`KORISNIK_ID`);

--
-- Indexes for table `prijave`
--
ALTER TABLE `prijave`
  ADD PRIMARY KEY (`PRIJAVA_ID`),
  ADD KEY `FK_PRIJAVE_BIRANJE_N_NACINIPU` (`NACIN_PUTOVANJA_ID`),
  ADD KEY `FK_PRIJAVE_TRAZENJE__GOSTI` (`GOST_ID`),
  ADD KEY `FK_PRIJAVE_U_PRIJAVA_SMESTAJI` (`SMESTAJ_ID`);

--
-- Indexes for table `rejtinzi`
--
ALTER TABLE `rejtinzi`
  ADD PRIMARY KEY (`REJTING_ID`),
  ADD KEY `FK_REJTINZI_OSVOJENI__UCESTVOV` (`GOST_ID`,`AKTIVOST_ID`);

--
-- Indexes for table `smestaji`
--
ALTER TABLE `smestaji`
  ADD PRIMARY KEY (`SMESTAJ_ID`),
  ADD KEY `FK_SMESTAJI_POSEDOVAN_DOMACINI` (`DOMACIN_ID`),
  ADD KEY `FK_SMESTAJI_SMESTAJI__VRSTESME` (`SMESTAJ_OZNAKA`);

--
-- Indexes for table `statusi`
--
ALTER TABLE `statusi`
  ADD PRIMARY KEY (`STATUS_OZNAKA`);

--
-- Indexes for table `tipoviaktivnosti`
--
ALTER TABLE `tipoviaktivnosti`
  ADD PRIMARY KEY (`NAZIV_AKTIVNOSTI`);

--
-- Indexes for table `ucestvovanje`
--
ALTER TABLE `ucestvovanje`
  ADD PRIMARY KEY (`GOST_ID`,`AKTIVOST_ID`),
  ADD KEY `FK_UCESTVOV_UCESCE_U__AKTIVNOS` (`AKTIVOST_ID`);

--
-- Indexes for table `vozovi`
--
ALTER TABLE `vozovi`
  ADD PRIMARY KEY (`VOZ_ID`);

--
-- Indexes for table `vrstesmestaja`
--
ALTER TABLE `vrstesmestaja`
  ADD PRIMARY KEY (`SMESTAJ_OZNAKA`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aktivnosti`
--
ALTER TABLE `aktivnosti`
  ADD CONSTRAINT `FK_AKTIVNOS_ODREDJENE_TIPOVIAK` FOREIGN KEY (`NAZIV_AKTIVNOSTI`) REFERENCES `tipoviaktivnosti` (`NAZIV_AKTIVNOSTI`);

--
-- Constraints for table `autobusi`
--
ALTER TABLE `autobusi`
  ADD CONSTRAINT `FK_AUTOBUSI_VRSTE_PRE_NACINIPU` FOREIGN KEY (`AUTOBUS_ID`) REFERENCES `naciniputovanja` (`NACIN_PUTOVANJA_ID`);

--
-- Constraints for table `automobili`
--
ALTER TABLE `automobili`
  ADD CONSTRAINT `FK_AUTOMOBI_AUTOMOBIL_NACINIPU` FOREIGN KEY (`AUTO_ID`) REFERENCES `naciniputovanja` (`NACIN_PUTOVANJA_ID`);

--
-- Constraints for table `avioni`
--
ALTER TABLE `avioni`
  ADD CONSTRAINT `FK_AVIONI_VRSTE_PRE_NACINIPU` FOREIGN KEY (`AVION_ID`) REFERENCES `naciniputovanja` (`NACIN_PUTOVANJA_ID`);

--
-- Constraints for table `domacini`
--
ALTER TABLE `domacini`
  ADD CONSTRAINT `FK_DOMACINI_KORISNIK__KORISNIC` FOREIGN KEY (`DOMACIN_ID`) REFERENCES `korisnici` (`KORISNIK_ID`),
  ADD CONSTRAINT `FK_DOMACINI_REJTINZI_REJTINZI` FOREIGN KEY (`REJTING_ID`) REFERENCES `rejtinzi` (`REJTING_ID`);

--
-- Constraints for table `donosepoklone`
--
ALTER TABLE `donosepoklone`
  ADD CONSTRAINT `FK_DONOSEPO_NOSENJE_P_GOSTI` FOREIGN KEY (`GOST_ID`) REFERENCES `gosti` (`GOST_ID`),
  ADD CONSTRAINT `FK_DONOSEPO_NOSENJE_P_POKLONI` FOREIGN KEY (`POKLON_ID`) REFERENCES `pokloni` (`POKLON_ID`);

--
-- Constraints for table `gosti`
--
ALTER TABLE `gosti`
  ADD CONSTRAINT `FK_GOSTI_KORISNIK__KORISNIC` FOREIGN KEY (`GOST_ID`) REFERENCES `korisnici` (`KORISNIK_ID`);

--
-- Constraints for table `gradovi`
--
ALTER TABLE `gradovi`
  ADD CONSTRAINT `FK_GRADOVI_GRADOVI_S_DRZAVE` FOREIGN KEY (`DRZAVA_SKRACENICA`) REFERENCES `drzave` (`DRZAVA_SKRACENICA`);

--
-- Constraints for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD CONSTRAINT `FK_KORISNIC_JEZICI_KO_JEZICI` FOREIGN KEY (`JEZIK`) REFERENCES `jezici` (`JEZIK_OZNAKA`),
  ADD CONSTRAINT `FK_KORISNIC_KORISNICI_GRADOVI` FOREIGN KEY (`DRZAVA`,`GRAD`) REFERENCES `gradovi` (`DRZAVA_SKRACENICA`, `NAZIV_GRADA`),
  ADD CONSTRAINT `FK_KORISNIC_KORISNICI_POLOVI` FOREIGN KEY (`POL`) REFERENCES `polovi` (`POL_OZNAKA`),
  ADD CONSTRAINT `FK_KORISNIC_STATUSI_K_STATUSI` FOREIGN KEY (`STATUS`) REFERENCES `statusi` (`STATUS_OZNAKA`);

--
-- Constraints for table `prijatelji`
--
ALTER TABLE `prijatelji`
  ADD CONSTRAINT `FK_PRIJATEL_KORISNICI_KORISNIC` FOREIGN KEY (`KORISNIK_ID`) REFERENCES `korisnici` (`KORISNIK_ID`),
  ADD CONSTRAINT `FK_PRIJATEL_PRIJATELJ_KORISNIC` FOREIGN KEY (`PRIJATELJ_ID`) REFERENCES `korisnici` (`KORISNIK_ID`);

--
-- Constraints for table `prijave`
--
ALTER TABLE `prijave`
  ADD CONSTRAINT `FK_PRIJAVE_BIRANJE_N_NACINIPU` FOREIGN KEY (`NACIN_PUTOVANJA_ID`) REFERENCES `naciniputovanja` (`NACIN_PUTOVANJA_ID`),
  ADD CONSTRAINT `FK_PRIJAVE_TRAZENJE__GOSTI` FOREIGN KEY (`GOST_ID`) REFERENCES `gosti` (`GOST_ID`),
  ADD CONSTRAINT `FK_PRIJAVE_U_PRIJAVA_SMESTAJI` FOREIGN KEY (`SMESTAJ_ID`) REFERENCES `smestaji` (`SMESTAJ_ID`);

--
-- Constraints for table `rejtinzi`
--
ALTER TABLE `rejtinzi`
  ADD CONSTRAINT `FK_REJTINZI_OSVOJENI__UCESTVOV` FOREIGN KEY (`GOST_ID`,`AKTIVOST_ID`) REFERENCES `ucestvovanje` (`GOST_ID`, `AKTIVOST_ID`);

--
-- Constraints for table `smestaji`
--
ALTER TABLE `smestaji`
  ADD CONSTRAINT `FK_SMESTAJI_POSEDOVAN_DOMACINI` FOREIGN KEY (`DOMACIN_ID`) REFERENCES `domacini` (`DOMACIN_ID`),
  ADD CONSTRAINT `FK_SMESTAJI_SMESTAJI__VRSTESME` FOREIGN KEY (`SMESTAJ_OZNAKA`) REFERENCES `vrstesmestaja` (`SMESTAJ_OZNAKA`);

--
-- Constraints for table `ucestvovanje`
--
ALTER TABLE `ucestvovanje`
  ADD CONSTRAINT `FK_UCESTVOV_UCESCE_U__AKTIVNOS` FOREIGN KEY (`AKTIVOST_ID`) REFERENCES `aktivnosti` (`AKTIVOST_ID`),
  ADD CONSTRAINT `FK_UCESTVOV_UCESTVOVA_GOSTI` FOREIGN KEY (`GOST_ID`) REFERENCES `gosti` (`GOST_ID`);

--
-- Constraints for table `vozovi`
--
ALTER TABLE `vozovi`
  ADD CONSTRAINT `FK_VOZOVI_VRSTE_PRE_NACINIPU` FOREIGN KEY (`VOZ_ID`) REFERENCES `naciniputovanja` (`NACIN_PUTOVANJA_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
