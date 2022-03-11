-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : Dim 06 mars 2022 à 22:07
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `business_case`
--

-- --------------------------------------------------------

--
-- Structure de la table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `second_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `address`
--

INSERT INTO `address` (`id`, `first_address`, `second_address`, `country`, `city`, `zip_code`) VALUES
(1, '42 quae', '82 soluta', 'Sweden', 'Hermanberg', '15846'),
(2, '33 sint', '18 doloremque', 'Saint Martin', 'West Macborough', '79549'),
(3, '12 et', '66 sed', 'Guatemala', 'South Marianneport', '68646'),
(4, '8 amet', '100 aliquam', 'Niger', 'Lake Elenormouth', '73109'),
(5, '58 cum', '65 consequatur', 'Montenegro', 'Torpborough', '20269'),
(6, '6 autem', '75 eligendi', 'Cook Islands', 'North Darlene', '89963'),
(7, '81 et', '19 cumque', 'Palestinian Territories', 'West Ibrahim', '84500'),
(8, '20 sunt', '99 explicabo', 'Ukraine', 'North Jake', '27797'),
(9, '43 asperiores', '29 nisi', 'Cook Islands', 'Lake Frederic', '60998'),
(10, '85 libero', '67 non', 'Saint Kitts and Nevis', 'Murphyport', '43309'),
(11, '67 consequatur', '76 omnis', 'Brazil', 'East Janelle', '83157'),
(12, '89 quia', '98 error', 'Malta', 'Lake Octaviamouth', '35953'),
(13, '1 quae', '75 similique', 'Kyrgyz Republic', 'Frankland', '16991'),
(14, '43 dolor', '51 facere', 'Falkland Islands (Malvinas)', 'North Clintborough', '67398'),
(15, '85 facere', '44 alias', 'Kenya', 'West Alfredoshire', '26634'),
(16, '54 dolor', '80 voluptas', 'Cameroon', 'New Brandi', '31257'),
(17, '58 amet', '78 nam', 'Kyrgyz Republic', 'East Juvenal', '78400'),
(18, '79 quod', '87 modi', 'Dominican Republic', 'Dachhaven', '73946'),
(19, '12 eos', '43 et', 'Senegal', 'Harveyborough', '78611'),
(20, '2 exercitationem', '72 doloribus', 'Svalbard & Jan Mayen Islands', 'North Shanon', '23104'),
(21, '98 magni', '59 omnis', 'Sao Tome and Principe', 'West Jennyferport', '67537'),
(22, '41 dolore', '93 ea', 'Palau', 'Lake Daijaside', '41899'),
(23, '18 cum', '87 explicabo', 'Cote d\'Ivoire', 'Bashirianburgh', '10247'),
(24, '21 et', '83 et', 'Tajikistan', 'New Mack', '26717'),
(25, '98 consequuntur', '41 quas', 'Switzerland', 'South Sydneyton', '29427'),
(26, '77 et', '69 laboriosam', 'Libyan Arab Jamahiriya', 'Scottyfurt', '48242'),
(27, '84 aperiam', '12 quos', 'Cyprus', 'Faheyview', '29045'),
(28, '45 voluptas', '35 aliquam', 'South Georgia and the South Sandwich Islands', 'Mosesstad', '65683'),
(29, '8 cum', '80 sed', 'Trinidad and Tobago', 'West Nelletown', '48279'),
(30, '67 debitis', '68 adipisci', 'Tokelau', 'Hayesland', '45531'),
(31, '4 cupiditate', '73 optio', 'New Zealand', 'Lake Shania', '83955'),
(32, '42 officiis', '69 quas', 'Swaziland', 'Jaskolskimouth', '25425'),
(33, '78 ea', '62 qui', 'Pakistan', 'South Quintenmouth', '86349'),
(34, '4 vel', '27 cumque', 'Chile', 'Adalinestad', '87808'),
(35, '89 explicabo', '84 sed', 'France', 'Sengermouth', '15974'),
(36, '56 quasi', '43 blanditiis', 'British Indian Ocean Territory (Chagos Archipelago)', 'Llewellynmouth', '45310'),
(37, '49 maiores', '62 est', 'Aruba', 'Yasmeenport', '69097'),
(38, '53 optio', '14 commodi', 'Haiti', 'East Hattie', '78564'),
(39, '85 illum', '33 qui', 'Guinea-Bissau', 'Jaronstad', '81965'),
(40, '46 cumque', '16 rerum', 'Cocos (Keeling) Islands', 'Shanahanbury', '15553'),
(41, '16 ut', '43 omnis', 'Slovakia (Slovak Republic)', 'Alysaport', '83511'),
(42, '61 et', '17 aperiam', 'Paraguay', 'Wiegandmouth', '40422'),
(43, '6 expedita', '90 sint', 'Austria', 'Miashire', '67210'),
(44, '62 minus', '50 possimus', 'Montserrat', 'Schummbury', '38831'),
(45, '71 et', '35 natus', 'Equatorial Guinea', 'East Karine', '79821'),
(46, '42 nostrum', '75 ut', 'Heard Island and McDonald Islands', 'West Gloria', '36826'),
(47, '28 minus', '12 ducimus', 'Egypt', 'Toneyfort', '49284'),
(48, '16 eum', '6 labore', 'Belarus', 'Marvinbury', '42637'),
(49, '92 aliquid', '32 excepturi', 'Bahrain', 'Port Casper', '41301'),
(50, '78 voluptatem', '24 ullam', 'Belgium', 'Bernhardburgh', '61874'),
(51, '54 rem', '95 ducimus', 'Albania', 'Port Lew', '31107'),
(52, '28 voluptatem', '5 dolor', 'Iran', 'East Weldonhaven', '72955'),
(53, '60 corporis', '45 architecto', 'Colombia', 'Lake Angelicamouth', '20562'),
(54, '53 sit', '57 et', 'Bosnia and Herzegovina', 'North Horace', '31269'),
(55, '76 optio', '40 saepe', 'Mayotte', 'Moisesstad', '20712'),
(56, '42 nostrum', '3 consectetur', 'Tajikistan', 'West Cadestad', '64675'),
(57, '47 non', '77 non', 'Saint Kitts and Nevis', 'South Deon', '63962'),
(58, '2 in', '44 illum', 'United Kingdom', 'West Darius', '27295'),
(59, '45 et', '60 doloremque', 'Madagascar', 'Zemlaktown', '31602'),
(60, '4 corrupti', '75 iste', 'Western Sahara', 'Victorside', '46579'),
(61, '61 laborum', '83 et', 'Macao', 'Modestamouth', '88063'),
(62, '42 esse', '8 iste', 'Jordan', 'Arlofort', '52621'),
(63, '32 exercitationem', '90 omnis', 'Bahamas', 'Susanhaven', '60902'),
(64, '41 illum', '75 sit', 'Saint Barthelemy', 'Cruickshankstad', '61207'),
(65, '31 corporis', '79 eligendi', 'Tanzania', 'Creminburgh', '33069'),
(66, '46 nobis', '91 et', 'Malawi', 'Lexiehaven', '27477'),
(67, '44 dolorum', '53 est', 'Canada', 'Murraymouth', '69715'),
(68, '46 qui', '10 tempora', 'Dominican Republic', 'Lake Erikport', '34792'),
(69, '5 sunt', '47 modi', 'Andorra', 'Port Leonardobury', '55451'),
(70, '8 explicabo', '76 sit', 'Holy See (Vatican City State)', 'New Ethel', '34767'),
(71, '21 est', '42 praesentium', 'Singapore', 'North Keshaun', '66700'),
(72, '77 excepturi', '81 cum', 'Belarus', 'Port Reinatown', '18676'),
(73, '71 ut', '63 quidem', 'Papua New Guinea', 'North Marietta', '38581'),
(74, '17 nam', '59 eos', 'Ghana', 'Jaskolskiton', '84864'),
(75, '32 quaerat', '8 cum', 'Serbia', 'West Leolaburgh', '56968');

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `name`, `content`) VALUES
(1, 'atque 2', 'TEST molestias distinctio ut. Et voluptatem et et dolorem. Commodi aut quod totam odio sed autem sunt. Tempore eum itaque ex error.'),
(2, 'quas 1', 'Et id in excepturi dolores nostrum et hic. Aspernatur aut et qui et tempora. Officiis soluta quidem et nemo eaque. Non voluptatem quibusdam ut suscipit.'),
(3, 'ut 1', 'Non fugiat sed necessitatibus repudiandae consequatur qui. Cumque qui nulla et consequatur natus similique earum.'),
(4, 'quo 1', 'Nobis et provident vel et. Nostrum eveniet alias consequatur. Doloremque maiores corporis dolor tenetur labore dolore sunt. Voluptatem praesentium vero ut quam.'),
(5, 'est 4', 'Qui quidem autem voluptas quod harum culpa. Reprehenderit consequatur id ea quas ut voluptas rem. Quisquam magni explicabo aut.'),
(6, 'consectetur 2', 'Est rerum maiores est debitis. Facere eos alias vitae modi et omnis. Tempore iure nemo voluptatem aut omnis repellat. Eos et et est aperiam et.'),
(7, 'tenetur 3', 'Aut sit enim voluptate facere minima et minus. Animi occaecati molestiae dolor facere molestiae repellat cumque culpa. Fugiat est iure rerum unde autem.'),
(8, 'quasi 1', 'Facilis iste esse praesentium repellendus ratione nemo similique. Id dolorum doloremque dicta accusamus praesentium. Et est qui illum.'),
(9, 'enim 2', 'Quod sunt numquam sapiente eos quia provident. Debitis officiis architecto quas aspernatur dolorem sunt. Autem et expedita omnis fugit hic assumenda numquam assumenda. Illum autem quasi maiores.'),
(10, 'praesentium 5', 'Rerum possimus officiis eaque expedita. Voluptatem sed voluptate expedita perspiciatis illum omnis quia et. Rerum ipsa et sit fugit dolor.');

-- --------------------------------------------------------

--
-- Structure de la table `bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE IF NOT EXISTS `bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` date NOT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `bill`
--

INSERT INTO `bill` (`id`, `number`, `created_at`, `payment`) VALUES
(1, '25099', '2021-10-22', 'tenetur'),
(2, '5914', '2021-05-06', 'quo'),
(3, '2989', '2021-07-18', 'sapiente'),
(4, '57857', '2021-12-24', 'ea'),
(5, '17647', '2021-11-10', 'cum'),
(6, '43929', '2021-10-08', 'sequi'),
(7, '18811', '2021-07-03', 'amet'),
(8, '85010', '2021-06-12', 'saepe'),
(9, '12618', '2021-07-09', 'consequatur'),
(10, '82162', '2021-10-04', 'dolor'),
(11, '41776', '2021-03-24', 'consectetur'),
(12, '21404', '2021-03-29', 'id'),
(13, '63847', '2021-10-27', 'dolore'),
(14, '91980', '2021-08-10', 'neque'),
(15, '34159', '2021-11-23', 'sunt'),
(16, '54120', '2021-07-28', 'velit'),
(17, '41560', '2021-03-15', 'praesentium'),
(18, '76174', '2022-01-03', 'aut'),
(19, '85240', '2022-01-20', 'non'),
(20, '20151', '2021-03-24', 'et'),
(21, '56252', '2021-03-31', 'iusto'),
(22, '54665', '2021-03-31', 'praesentium'),
(23, '56407', '2021-12-13', 'illo'),
(24, '66840', '2021-06-26', 'omnis'),
(25, '92405', '2021-10-31', 'molestias'),
(26, '7823', '2021-04-23', 'a'),
(27, '80149', '2021-04-12', 'consequuntur'),
(28, '75877', '2021-05-02', 'est'),
(29, '63151', '2021-11-05', 'dicta'),
(30, '83189', '2021-09-26', 'quas'),
(31, '93853', '2022-01-09', 'ad'),
(32, '22834', '2021-08-13', 'nemo'),
(33, '10324', '2021-04-23', 'mollitia'),
(34, '11792', '2021-05-03', 'repellat'),
(35, '97194', '2022-02-13', 'soluta'),
(36, '514', '2021-03-26', 'culpa'),
(37, '72691', '2021-06-02', 'vel'),
(38, '97177', '2021-07-14', 'animi'),
(39, '9050', '2022-01-30', 'illum'),
(40, '20149', '2021-06-04', 'tenetur'),
(41, '27598', '2021-07-10', 'mollitia'),
(42, '46656', '2021-04-11', 'molestiae'),
(43, '68050', '2021-12-08', 'deserunt'),
(44, '52990', '2021-03-25', 'id'),
(45, '21841', '2022-01-18', 'dolorum'),
(46, '16302', '2021-10-28', 'non'),
(47, '69052', '2021-10-18', 'delectus'),
(48, '18792', '2021-09-17', 'maxime'),
(49, '59741', '2021-03-18', 'at'),
(50, '42155', '2021-07-03', 'est'),
(51, '41452', '2021-07-29', 'et'),
(52, '20210', '2021-10-19', 'qui'),
(53, '35448', '2021-11-18', 'alias'),
(54, '22446', '2021-07-04', 'deleniti'),
(55, '19934', '2021-09-13', 'dolorem'),
(56, '58525', '2022-03-03', 'voluptas'),
(57, '26800', '2021-10-25', 'qui'),
(58, '75824', '2021-11-23', 'accusamus'),
(59, '83723', '2021-05-30', 'quae'),
(60, '73664', '2021-04-12', 'voluptas'),
(61, '85708', '2022-03-06', 'saepe'),
(62, '97683', '2022-01-19', 'qui'),
(63, '63202', '2021-05-25', 'ut'),
(64, '64401', '2021-08-27', 'explicabo'),
(65, '9174', '2022-02-21', 'est'),
(66, '19779', '2021-04-01', 'pariatur'),
(67, '95365', '2021-06-17', 'voluptatibus'),
(68, '31853', '2021-08-03', 'est'),
(69, '34679', '2021-08-28', 'aliquid'),
(70, '26502', '2021-10-20', 'odio'),
(71, '53282', '2021-04-21', 'quae'),
(72, '26806', '2021-08-01', 'natus'),
(73, '94221', '2022-02-06', 'est'),
(74, '83563', '2022-01-01', 'atque'),
(75, '92720', '2022-02-01', 'in'),
(76, '62526', '2021-10-02', 'aut'),
(77, '25582', '2022-01-12', 'est'),
(78, '30510', '2021-06-09', 'omnis'),
(79, '20950', '2021-10-31', 'et'),
(80, '50335', '2021-10-23', 'dolor'),
(81, '11204', '2021-10-26', 'soluta'),
(82, '88810', '2022-02-12', 'culpa'),
(83, '22918', '2021-11-12', 'sapiente'),
(84, '4357', '2021-06-25', 'fugiat'),
(85, '83617', '2021-10-20', 'in'),
(86, '90985', '2021-06-14', 'eaque'),
(87, '30046', '2021-07-19', 'sit'),
(88, '94371', '2022-01-06', 'adipisci'),
(89, '99614', '2021-05-11', 'quasi'),
(90, '13325', '2021-04-05', 'in'),
(91, '21305', '2021-05-16', 'dicta'),
(92, '52671', '2022-01-13', 'quos'),
(93, '65125', '2021-10-19', 'aut'),
(94, '30909', '2021-06-01', 'modi'),
(95, '98561', '2021-06-13', 'nisi'),
(96, '37985', '2022-02-06', 'repellat'),
(97, '6366', '2022-01-20', 'numquam'),
(98, '75518', '2021-10-07', 'vel'),
(99, '86423', '2021-12-03', 'non'),
(100, '78592', '2021-12-04', 'vitae'),
(101, '27536', '2022-01-23', 'laboriosam'),
(102, '21815', '2021-12-15', 'commodi'),
(103, '64114', '2021-09-30', 'mollitia'),
(104, '21713', '2021-06-26', 'sunt'),
(105, '39568', '2022-02-18', 'non'),
(106, '98746', '2021-07-08', 'excepturi'),
(107, '20575', '2021-05-15', 'nesciunt'),
(108, '64827', '2022-01-22', 'ea'),
(109, '77632', '2021-07-23', 'voluptas'),
(110, '86699', '2022-01-05', 'voluptas'),
(111, '79811', '2021-12-04', 'facilis'),
(112, '7290', '2021-03-15', 'laudantium'),
(113, '18051', '2021-08-26', 'vitae'),
(114, '78672', '2021-08-23', 'laudantium'),
(115, '24805', '2021-12-03', 'laboriosam'),
(116, '13264', '2021-08-18', 'beatae'),
(117, '70194', '2021-07-01', 'voluptate'),
(118, '74914', '2021-05-11', 'nesciunt'),
(119, '8', '2022-02-15', 'quia'),
(120, '13613', '2021-09-15', 'id'),
(121, '11603', '2021-04-17', 'quo'),
(122, '87996', '2021-10-19', 'consequatur'),
(123, '22621', '2021-07-09', 'occaecati'),
(124, '47355', '2021-06-05', 'voluptas'),
(125, '79729', '2022-01-18', 'officia'),
(126, '63412', '2021-08-15', 'voluptatibus'),
(127, '91327', '2022-02-08', 'amet'),
(128, '90058', '2022-02-26', 'delectus'),
(129, '8101', '2021-10-08', 'non'),
(130, '73762', '2021-08-25', 'consectetur'),
(131, '78976', '2021-08-10', 'voluptatem'),
(132, '93487', '2022-01-16', 'deleniti'),
(133, '50026', '2021-08-16', 'repellendus'),
(134, '51476', '2021-05-04', 'commodi'),
(135, '61014', '2021-11-05', 'dolorum'),
(136, '92944', '2021-03-31', 'dolorem'),
(137, '4659', '2021-11-06', 'autem'),
(138, '52617', '2021-08-20', 'quisquam'),
(139, '38344', '2021-06-10', 'minus'),
(140, '99467', '2022-02-03', 'perspiciatis'),
(141, '92206', '2021-06-18', 'quia'),
(142, '92473', '2021-10-16', 'unde'),
(143, '83501', '2022-01-04', 'non'),
(144, '38754', '2021-10-23', 'et'),
(145, '74850', '2021-04-07', 'odio'),
(146, '81025', '2021-12-23', 'necessitatibus'),
(147, '71241', '2021-08-02', 'inventore'),
(148, '47528', '2021-07-15', 'autem'),
(149, '29125', '2021-08-30', 'repellendus'),
(150, '3297', '2021-04-28', 'consequatur'),
(151, '4745', '2021-12-24', 'et'),
(152, '98810', '2021-08-06', 'dicta'),
(153, '36983', '2021-10-08', 'officia'),
(154, '49770', '2021-10-03', 'illum'),
(155, '84113', '2021-07-28', 'doloribus'),
(156, '33572', '2021-09-30', 'nobis'),
(157, '26071', '2022-02-28', 'dolorem'),
(158, '24184', '2021-09-05', 'assumenda'),
(159, '47981', '2021-05-20', 'qui'),
(160, '16712', '2022-02-21', 'rerum'),
(161, '77267', '2021-10-28', 'dicta'),
(162, '78435', '2021-06-26', 'quibusdam'),
(163, '66137', '2021-07-13', 'tenetur'),
(164, '61809', '2022-01-27', 'et'),
(165, '71277', '2021-09-21', 'mollitia'),
(166, '24272', '2021-09-02', 'est'),
(167, '56168', '2021-04-18', 'assumenda'),
(168, '5131', '2021-12-31', 'totam'),
(169, '38164', '2021-04-28', 'rerum'),
(170, '21977', '2021-07-12', 'perspiciatis'),
(171, '97784', '2022-03-04', 'vel'),
(172, '72706', '2022-01-17', 'voluptatem'),
(173, '50625', '2022-01-17', 'tempore'),
(174, '31985', '2021-10-27', 'ducimus'),
(175, '37731', '2021-11-15', 'alias'),
(176, '83498', '2021-09-12', 'ipsum'),
(177, '40485', '2021-09-08', 'tenetur'),
(178, '83192', '2022-01-10', 'repellat'),
(179, '70212', '2021-07-12', 'sunt'),
(180, '78684', '2021-03-20', 'et'),
(181, '57562', '2021-05-14', 'et'),
(182, '22062', '2021-04-13', 'dolor'),
(183, '52318', '2021-12-10', 'et'),
(184, '5906', '2021-03-17', 'labore'),
(185, '61160', '2021-10-27', 'quibusdam'),
(186, '98277', '2022-01-15', 'facilis'),
(187, '68244', '2021-04-27', 'quis'),
(188, '77918', '2022-02-25', 'aut'),
(189, '20626', '2021-06-26', 'amet'),
(190, '47245', '2022-01-14', 'iusto'),
(191, '45451', '2021-05-12', 'eligendi'),
(192, '43455', '2021-07-20', 'est'),
(193, '99054', '2021-10-08', 'quo'),
(194, '49957', '2021-05-08', 'rerum'),
(195, '28256', '2022-01-09', 'nam'),
(196, '34152', '2021-07-06', 'voluptatem'),
(197, '38214', '2021-08-10', 'quas'),
(198, '80087', '2021-10-02', 'earum'),
(199, '23801', '2021-05-28', 'molestias'),
(200, '67391', '2021-07-26', 'et');

-- --------------------------------------------------------

--
-- Structure de la table `brand`
--

DROP TABLE IF EXISTS `brand`;
CREATE TABLE IF NOT EXISTS `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `brand`
--

INSERT INTO `brand` (`id`, `name`, `logo`) VALUES
(1, 'Koss Group', '8 repellendus'),
(2, 'Marquardt-Buckridge', '10 qui'),
(3, 'Watsica-Reichel', '4 mollitia'),
(4, 'Kohler PLC', '7 non'),
(5, 'Haag, Russel and Cremin', '5 doloremque'),
(6, 'Kulas, Adams and Wintheiser', '4 est'),
(7, 'Wintheiser-Trantow', '8 ab'),
(8, 'Fritsch, Gutmann and Grady', '10 dolorem'),
(9, 'Marquardt, Hammes and Lemke', '1 adipisci'),
(10, 'Smitham, Champlin and Kiehn', '1 sapiente'),
(11, 'Littel, Kiehn and Rippin', '6 blanditiis'),
(12, 'Johns, Gottlieb and Zieme', '8 corporis'),
(13, 'Stark-Heaney', '4 et'),
(14, 'Nolan Group', '2 nesciunt'),
(15, 'Sawayn-O\'Reilly', '1 non'),
(16, 'Crona PLC', '5 velit'),
(17, 'Moen-Mayer', '4 et'),
(18, 'Orn PLC', '10 voluptatem'),
(19, 'Skiles LLC', '9 et'),
(20, 'Haley, Tremblay and Labadie', '7 repudiandae'),
(21, 'Weimann-Rolfson', '6 eum'),
(22, 'Boyer-Gottlieb', '10 aut'),
(23, 'Green-Cassin', '3 voluptatem'),
(24, 'Steuber, Shanahan and Ruecker', '1 ut'),
(25, 'Bogisich Ltd', '2 vitae'),
(26, 'Cummerata, Bogisich and Schamberger', '4 fuga'),
(27, 'Deckow, Kovacek and Rutherford', '4 deleniti'),
(28, 'Kertzmann PLC', '5 voluptatem'),
(29, 'Reilly-Jacobson', '3 dicta'),
(30, 'Grimes, Little and Nitzsche', '7 et'),
(31, 'Bradtke-Ebert', '5 aperiam'),
(32, 'Paucek-Bosco', '9 cum'),
(33, 'Rath, Yost and Reichel', '7 quas'),
(34, 'Zboncak-Ondricka', '4 et'),
(35, 'Bergnaum, Feest and Nikolaus', '4 qui'),
(36, 'Bins PLC', '6 aperiam'),
(37, 'Schinner-Zieme', '7 porro'),
(38, 'Kutch PLC', '4 soluta'),
(39, 'Kuhn-Moore', '7 est'),
(40, 'Johns-Koepp', '7 tempora');

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `command_id` int(11) DEFAULT NULL,
  `cart_line_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BA388B733E1689A` (`command_id`),
  UNIQUE KEY `UNIQ_BA388B7B6A1BD45` (`cart_line_id`),
  KEY `IDX_BA388B7A76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cart`
--

INSERT INTO `cart` (`id`, `command_id`, `cart_line_id`, `user_id`, `created_at`) VALUES
(1, NULL, NULL, NULL, '2021-10-14'),
(2, NULL, NULL, NULL, '2022-02-12'),
(3, NULL, NULL, NULL, '2022-01-07'),
(4, NULL, NULL, NULL, '2021-03-14'),
(5, NULL, NULL, NULL, '2021-04-17'),
(6, NULL, NULL, NULL, '2021-10-09'),
(7, NULL, NULL, NULL, '2021-08-10'),
(8, NULL, NULL, NULL, '2021-06-28'),
(9, NULL, NULL, NULL, '2022-03-06'),
(10, NULL, NULL, NULL, '2022-02-08'),
(11, NULL, NULL, NULL, '2021-06-09'),
(12, NULL, NULL, NULL, '2021-11-21'),
(13, NULL, NULL, NULL, '2021-07-12'),
(14, NULL, NULL, NULL, '2021-12-09'),
(15, NULL, NULL, NULL, '2021-09-26'),
(16, NULL, NULL, NULL, '2021-10-04'),
(17, NULL, NULL, NULL, '2022-02-26'),
(18, NULL, NULL, NULL, '2022-02-14'),
(19, NULL, NULL, NULL, '2021-08-06'),
(20, NULL, NULL, NULL, '2021-07-03'),
(21, NULL, NULL, NULL, '2021-05-11'),
(22, NULL, NULL, NULL, '2021-04-06'),
(23, NULL, NULL, NULL, '2022-01-01'),
(24, NULL, NULL, NULL, '2021-03-28'),
(25, NULL, NULL, NULL, '2022-01-05'),
(26, NULL, NULL, NULL, '2021-05-19'),
(27, NULL, NULL, NULL, '2021-12-07'),
(28, NULL, NULL, NULL, '2021-06-12'),
(29, NULL, NULL, NULL, '2021-10-24'),
(30, NULL, NULL, NULL, '2021-04-11'),
(31, NULL, NULL, NULL, '2022-02-23'),
(32, NULL, NULL, NULL, '2021-10-19'),
(33, NULL, NULL, NULL, '2021-08-15'),
(34, NULL, NULL, NULL, '2022-01-12'),
(35, NULL, NULL, NULL, '2021-03-31'),
(36, NULL, NULL, NULL, '2022-02-09'),
(37, NULL, NULL, NULL, '2021-12-08'),
(38, NULL, NULL, NULL, '2021-10-24'),
(39, NULL, NULL, NULL, '2021-11-26'),
(40, NULL, NULL, NULL, '2021-08-12'),
(41, NULL, NULL, NULL, '2022-02-14'),
(42, NULL, NULL, NULL, '2021-06-19'),
(43, NULL, NULL, NULL, '2021-06-10'),
(44, NULL, NULL, NULL, '2021-05-17'),
(45, NULL, NULL, NULL, '2022-01-02'),
(46, NULL, NULL, NULL, '2021-05-20'),
(47, NULL, NULL, NULL, '2021-03-10'),
(48, NULL, NULL, NULL, '2022-02-24'),
(49, NULL, NULL, NULL, '2021-11-01'),
(50, NULL, NULL, NULL, '2021-04-11');

-- --------------------------------------------------------

--
-- Structure de la table `cart_line`
--

DROP TABLE IF EXISTS `cart_line`;
CREATE TABLE IF NOT EXISTS `cart_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cart_line`
--

INSERT INTO `cart_line` (`id`, `quantity`) VALUES
(1, '8'),
(2, '4'),
(3, '4'),
(4, '6'),
(5, '4'),
(6, '7'),
(7, '6'),
(8, '5'),
(9, '4'),
(10, '8'),
(11, '3'),
(12, '1'),
(13, '1'),
(14, '6'),
(15, '4'),
(16, '10'),
(17, '4'),
(18, '10'),
(19, '3'),
(20, '4'),
(21, '2'),
(22, '2'),
(23, '3'),
(24, '10'),
(25, '10'),
(26, '6'),
(27, '7'),
(28, '6'),
(29, '8'),
(30, '10'),
(31, '9'),
(32, '3'),
(33, '3'),
(34, '10'),
(35, '3'),
(36, '8'),
(37, '9'),
(38, '3'),
(39, '2'),
(40, '3'),
(41, '7'),
(42, '4'),
(43, '1'),
(44, '2'),
(45, '4'),
(46, '9'),
(47, '5'),
(48, '9'),
(49, '2'),
(50, '9'),
(51, '3'),
(52, '6'),
(53, '7'),
(54, '8'),
(55, '1'),
(56, '3'),
(57, '4'),
(58, '9'),
(59, '5'),
(60, '6'),
(61, '8'),
(62, '8'),
(63, '9'),
(64, '3'),
(65, '4'),
(66, '3'),
(67, '3'),
(68, '2'),
(69, '2'),
(70, '9'),
(71, '10'),
(72, '6'),
(73, '9'),
(74, '2'),
(75, '10'),
(76, '3'),
(77, '3'),
(78, '3'),
(79, '9'),
(80, '9'),
(81, '3'),
(82, '6'),
(83, '5'),
(84, '7'),
(85, '5'),
(86, '3'),
(87, '7'),
(88, '8'),
(89, '6'),
(90, '8'),
(91, '2'),
(92, '7'),
(93, '7'),
(94, '7'),
(95, '7'),
(96, '5'),
(97, '9'),
(98, '4'),
(99, '5'),
(100, '2'),
(101, '2'),
(102, '1'),
(103, '6'),
(104, '4'),
(105, '9'),
(106, '8'),
(107, '1'),
(108, '4'),
(109, '5'),
(110, '2'),
(111, '5'),
(112, '4'),
(113, '6'),
(114, '10'),
(115, '1'),
(116, '4'),
(117, '6'),
(118, '10'),
(119, '6'),
(120, '7'),
(121, '1'),
(122, '9'),
(123, '3'),
(124, '8'),
(125, '2'),
(126, '1'),
(127, '6'),
(128, '3'),
(129, '10'),
(130, '8'),
(131, '10'),
(132, '1'),
(133, '4'),
(134, '3'),
(135, '9'),
(136, '1'),
(137, '3'),
(138, '8'),
(139, '8'),
(140, '4'),
(141, '5'),
(142, '2'),
(143, '4'),
(144, '6'),
(145, '1'),
(146, '6'),
(147, '1'),
(148, '1'),
(149, '3'),
(150, '1'),
(151, '4'),
(152, '1'),
(153, '5'),
(154, '4'),
(155, '10'),
(156, '3'),
(157, '9'),
(158, '9'),
(159, '8'),
(160, '9'),
(161, '5'),
(162, '3'),
(163, '10'),
(164, '3'),
(165, '5'),
(166, '1'),
(167, '7'),
(168, '7'),
(169, '2'),
(170, '8'),
(171, '7'),
(172, '3'),
(173, '3'),
(174, '7'),
(175, '7'),
(176, '2'),
(177, '5'),
(178, '5'),
(179, '2'),
(180, '3'),
(181, '3'),
(182, '10'),
(183, '9'),
(184, '10'),
(185, '10'),
(186, '7'),
(187, '9'),
(188, '2'),
(189, '4'),
(190, '7'),
(191, '10'),
(192, '6'),
(193, '9'),
(194, '7'),
(195, '8'),
(196, '4'),
(197, '1'),
(198, '3'),
(199, '7'),
(200, '8'),
(201, '4'),
(202, '9'),
(203, '2'),
(204, '1'),
(205, '1'),
(206, '3'),
(207, '3'),
(208, '10'),
(209, '6'),
(210, '9'),
(211, '8'),
(212, '4'),
(213, '2'),
(214, '7'),
(215, '1'),
(216, '8'),
(217, '7'),
(218, '8'),
(219, '3'),
(220, '6'),
(221, '7'),
(222, '1'),
(223, '6'),
(224, '4'),
(225, '10'),
(226, '7'),
(227, '4'),
(228, '5'),
(229, '9'),
(230, '10'),
(231, '4'),
(232, '3'),
(233, '6'),
(234, '6'),
(235, '6'),
(236, '6'),
(237, '10'),
(238, '10'),
(239, '10'),
(240, '2'),
(241, '6'),
(242, '9'),
(243, '4'),
(244, '1'),
(245, '10'),
(246, '7'),
(247, '8'),
(248, '2'),
(249, '2'),
(250, '2'),
(251, '3'),
(252, '5'),
(253, '7'),
(254, '7'),
(255, '7'),
(256, '8'),
(257, '4'),
(258, '2'),
(259, '6'),
(260, '6'),
(261, '2'),
(262, '7'),
(263, '1'),
(264, '5'),
(265, '2'),
(266, '2'),
(267, '1'),
(268, '10'),
(269, '5'),
(270, '1'),
(271, '1'),
(272, '7'),
(273, '9'),
(274, '8'),
(275, '3'),
(276, '2'),
(277, '5'),
(278, '5'),
(279, '10'),
(280, '7'),
(281, '7'),
(282, '2'),
(283, '6'),
(284, '10'),
(285, '4'),
(286, '5'),
(287, '6'),
(288, '2'),
(289, '6'),
(290, '4'),
(291, '8'),
(292, '3'),
(293, '1'),
(294, '6'),
(295, '5'),
(296, '2'),
(297, '10'),
(298, '3'),
(299, '9'),
(300, '8');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `title`, `description`, `parent`) VALUES
(1, '58818', 'Qui qui officia quis sint. Quibusdam est ratione voluptatem et consequatur.', 'molestiae'),
(2, '68901', 'Earum unde et ut corporis recusandae ad omnis explicabo. Sed et quis aut facilis a eum.', 'iure'),
(3, '88954', 'Deleniti molestias velit deleniti enim rerum sequi vel. Nemo excepturi et eos vero.', 'earum'),
(4, '11749', 'Molestiae ut qui assumenda ex vel. Dolorem perspiciatis eos quis asperiores non qui eaque.', 'est'),
(5, '31105', 'Tempora perspiciatis repudiandae numquam veniam sequi. Quisquam amet nam ipsa eius.', 'et'),
(6, '30690', 'Nesciunt labore dolores iusto dolor est cum sit. Eius qui perferendis rem molestiae magnam.', 'atque'),
(7, '41912', 'Est qui minus necessitatibus aut. Quasi molestiae earum commodi placeat qui.', 'minima'),
(8, '51428', 'Sit provident repudiandae atque. Magni quia ut eaque aspernatur vero.', 'accusantium'),
(9, '34786', 'Libero nulla sed nobis qui rerum. Qui quo tempora cumque eos.', 'at'),
(10, '16175', 'Ducimus autem ea magni. Aperiam consequatur sequi rem.', 'voluptate'),
(11, '60211', 'Natus fugit quis deserunt minus alias. Laboriosam quae voluptatem itaque voluptatem sapiente non.', 'occaecati'),
(12, '1014', 'Quis sapiente velit rerum eligendi quis. Nemo natus architecto eum et id.', 'ducimus'),
(13, '63652', 'Modi molestias adipisci qui quam culpa qui aliquam. Et facilis ad sed illo quos et.', 'est'),
(14, '74407', 'Molestiae aut similique quaerat tenetur velit qui quo. Repellat qui aut debitis laborum.', 'voluptatum'),
(15, '9363', 'Et nesciunt dicta quod quos. Enim doloribus error vero nemo et.', 'ut'),
(16, '91465', 'In adipisci sed voluptas adipisci. Aut soluta in ea. Eum corporis quasi quasi.', 'voluptatem'),
(17, '24781', 'Voluptates ducimus officiis porro. Repudiandae eos beatae illum magni est unde quibusdam.', 'non'),
(18, '33567', 'Inventore ea dolores sit tempora molestias. Autem at dolor quis. Et animi corrupti id dolorem.', 'rerum'),
(19, '17004', 'Dolores voluptatem minima aperiam delectus similique. Ad est cumque et vel aut dicta est.', 'natus'),
(20, '70189', 'Ut dolor aut ratione maxime ex. Quia fuga eum eos officiis vel odio voluptatem. Impedit ut odio ab.', 'modi'),
(21, '72317', 'Ea hic odio qui necessitatibus reiciendis qui. Assumenda porro nisi ut.', 'possimus'),
(22, '93818', 'Incidunt quibusdam doloremque amet quas. Corrupti ut consequatur qui quos ut itaque voluptas.', 'corporis'),
(23, '2358', 'Voluptate ut qui laudantium et ut ut nemo. Hic neque et perferendis ut. Sint ducimus aut quia.', 'provident'),
(24, '32919', 'Ipsa dolorem nam accusamus. Et quas quaerat repudiandae est nisi illo. Atque quod adipisci ut.', 'veritatis'),
(25, '34869', 'Vel dolorem modi porro nostrum aut molestiae. Quae ut velit modi quasi.', 'deleniti'),
(26, '88503', 'Veniam id saepe facere voluptate accusamus aperiam. Dolorum reprehenderit deleniti et est.', 'ea'),
(27, '76470', 'Ipsum sit debitis a doloremque sit. Dolor quia fuga exercitationem ut et.', 'impedit'),
(28, '74615', 'Quia ea impedit natus ut voluptatem corporis velit. Commodi sed delectus ut.', 'ut'),
(29, '27531', 'Quasi illum laudantium explicabo in modi dolorem eum. Adipisci et sit earum debitis.', 'qui'),
(30, '4165', 'Consequatur eos beatae iure accusantium vitae molestias vitae. Quibusdam dolorum dicta blanditiis.', 'autem');

-- --------------------------------------------------------

--
-- Structure de la table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
CREATE TABLE IF NOT EXISTS `delivery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_line_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `delivery_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3781EC10BB01DC09` (`order_line_id`),
  UNIQUE KEY `UNIQ_3781EC10F5B7AF75` (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220306202245', '2022-03-06 20:22:52', 2133);

-- --------------------------------------------------------

--
-- Structure de la table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_line_id` int(11) DEFAULT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F5299398BB01DC09` (`order_line_id`),
  UNIQUE KEY `UNIQ_F52993981A8C12F5` (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `order_line`
--

DROP TABLE IF EXISTS `order_line`;
CREATE TABLE IF NOT EXISTS `order_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `order_line`
--

INSERT INTO `order_line` (`id`, `quantity`) VALUES
(1, 2),
(2, 2),
(3, 14),
(4, 6),
(5, 12),
(6, 7),
(7, 3),
(8, 3),
(9, 12),
(10, 14),
(11, 6),
(12, 3),
(13, 3),
(14, 14),
(15, 4),
(16, 3),
(17, 3),
(18, 2),
(19, 1),
(20, 12),
(21, 8),
(22, 5),
(23, 9),
(24, 14),
(25, 10),
(26, 7),
(27, 15),
(28, 5),
(29, 12),
(30, 4),
(31, 7),
(32, 15),
(33, 3),
(34, 2),
(35, 4),
(36, 5),
(37, 1),
(38, 15),
(39, 6),
(40, 6),
(41, 12),
(42, 12),
(43, 15),
(44, 7),
(45, 2),
(46, 8),
(47, 8),
(48, 8),
(49, 13),
(50, 9),
(51, 10),
(52, 8),
(53, 6),
(54, 5),
(55, 7),
(56, 5),
(57, 13),
(58, 3),
(59, 3),
(60, 11),
(61, 9),
(62, 8),
(63, 3),
(64, 7),
(65, 2),
(66, 2),
(67, 9),
(68, 1),
(69, 1),
(70, 7),
(71, 11),
(72, 5),
(73, 2),
(74, 11),
(75, 1),
(76, 2),
(77, 10),
(78, 9),
(79, 8),
(80, 1),
(81, 9),
(82, 5),
(83, 1),
(84, 8),
(85, 8),
(86, 14),
(87, 10),
(88, 15),
(89, 2),
(90, 12),
(91, 1),
(92, 12),
(93, 14),
(94, 13),
(95, 12),
(96, 4),
(97, 12),
(98, 3),
(99, 15),
(100, 1),
(101, 10),
(102, 9),
(103, 3),
(104, 1),
(105, 3),
(106, 9),
(107, 13),
(108, 10),
(109, 2),
(110, 8),
(111, 10),
(112, 1),
(113, 10),
(114, 6),
(115, 12),
(116, 6),
(117, 1),
(118, 7),
(119, 13),
(120, 10);

-- --------------------------------------------------------

--
-- Structure de la table `photo`
--

DROP TABLE IF EXISTS `photo`;
CREATE TABLE IF NOT EXISTS `photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_14B784184584665A` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) DEFAULT NULL,
  `cart_line_id` int(11) DEFAULT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D34A04AD44F5D008` (`brand_id`),
  KEY `IDX_D34A04ADB6A1BD45` (`cart_line_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `brand_id`, `cart_line_id`, `title`, `description`, `price`, `quantity`) VALUES
(1, NULL, NULL, 'culpa 1', 'quisquam', '94', '100'),
(2, NULL, NULL, 'accusamus 4', 'repellat', '86', '77'),
(3, NULL, NULL, 'voluptates 4', 'amet', '62', '66'),
(4, NULL, NULL, 'suscipit 2', 'recusandae', '47', '85'),
(5, NULL, NULL, 'quam 2', 'voluptatem', '53', '21'),
(6, NULL, NULL, 'natus 5', 'voluptas', '98', '47'),
(7, NULL, NULL, 'sit 5', 'esse', '55', '45'),
(8, NULL, NULL, 'error 5', 'itaque', '80', '23'),
(9, NULL, NULL, 'velit 4', 'ut', '20', '69'),
(10, NULL, NULL, 'explicabo 4', 'occaecati', '88', '87'),
(11, NULL, NULL, 'saepe 5', 'sint', '17', '97'),
(12, NULL, NULL, 'enim 1', 'inventore', '12', '68'),
(13, NULL, NULL, 'et 3', 'qui', '34', '96'),
(14, NULL, NULL, 'deserunt 3', 'quibusdam', '32', '29'),
(15, NULL, NULL, 'soluta 1', 'ipsam', '22', '17'),
(16, NULL, NULL, 'velit 5', 'aperiam', '25', '63'),
(17, NULL, NULL, 'doloribus 2', 'placeat', '70', '73'),
(18, NULL, NULL, 'ducimus 4', 'modi', '90', '8'),
(19, NULL, NULL, 'unde 3', 'dicta', '90', '30'),
(20, NULL, NULL, 'aut 4', 'sed', '14', '53'),
(21, NULL, NULL, 'sit 1', 'voluptas', '92', '22'),
(22, NULL, NULL, 'voluptates 2', 'optio', '50', '59'),
(23, NULL, NULL, 'illo 3', 'nihil', '62', '86'),
(24, NULL, NULL, 'a 3', 'id', '31', '24'),
(25, NULL, NULL, 'saepe 3', 'esse', '95', '70'),
(26, NULL, NULL, 'quos 3', 'ut', '5', '77'),
(27, NULL, NULL, 'sed 5', 'nam', '87', '52'),
(28, NULL, NULL, 'autem 1', 'aut', '59', '12'),
(29, NULL, NULL, 'aut 3', 'et', '45', '14'),
(30, NULL, NULL, 'odit 1', 'et', '61', '54'),
(31, NULL, NULL, 'eum 2', 'molestiae', '64', '35'),
(32, NULL, NULL, 'sunt 2', 'quidem', '73', '88'),
(33, NULL, NULL, 'aut 2', 'fuga', '65', '76'),
(34, NULL, NULL, 'rerum 2', 'et', '27', '36'),
(35, NULL, NULL, 'eveniet 4', 'sunt', '13', '97'),
(36, NULL, NULL, 'aut 4', 'et', '39', '8'),
(37, NULL, NULL, 'fugit 4', 'illo', '7', '45'),
(38, NULL, NULL, 'ex 3', 'veritatis', '41', '38'),
(39, NULL, NULL, 'possimus 4', 'aut', '24', '58'),
(40, NULL, NULL, 'cumque 5', 'incidunt', '39', '16'),
(41, NULL, NULL, 'cum 3', 'rem', '1', '89'),
(42, NULL, NULL, 'exercitationem 4', 'rem', '9', '77'),
(43, NULL, NULL, 'fuga 3', 'reiciendis', '73', '8'),
(44, NULL, NULL, 'fugiat 2', 'omnis', '1', '94'),
(45, NULL, NULL, 'qui 3', 'eos', '75', '7'),
(46, NULL, NULL, 'vel 4', 'provident', '94', '24'),
(47, NULL, NULL, 'magnam 3', 'et', '80', '93'),
(48, NULL, NULL, 'ab 4', 'voluptatum', '13', '18'),
(49, NULL, NULL, 'voluptatibus 4', 'accusantium', '90', '98'),
(50, NULL, NULL, 'atque 4', 'aut', '14', '29'),
(51, NULL, NULL, 'totam 2', 'ducimus', '4', '17'),
(52, NULL, NULL, 'est 1', 'assumenda', '28', '10'),
(53, NULL, NULL, 'qui 3', 'ut', '58', '57'),
(54, NULL, NULL, 'consequatur 5', 'sit', '81', '71'),
(55, NULL, NULL, 'ut 4', 'amet', '62', '39'),
(56, NULL, NULL, 'molestiae 5', 'dolore', '26', '43'),
(57, NULL, NULL, 'iste 3', 'dolores', '64', '95'),
(58, NULL, NULL, 'sequi 1', 'quasi', '5', '92'),
(59, NULL, NULL, 'saepe 2', 'tempora', '62', '72'),
(60, NULL, NULL, 'aperiam 3', 'ut', '100', '13'),
(61, NULL, NULL, 'quasi 4', 'aperiam', '37', '57'),
(62, NULL, NULL, 'ad 2', 'architecto', '75', '85'),
(63, NULL, NULL, 'maxime 5', 'quibusdam', '6', '42'),
(64, NULL, NULL, 'harum 1', 'rerum', '85', '27'),
(65, NULL, NULL, 'voluptas 4', 'quos', '21', '38'),
(66, NULL, NULL, 'voluptatibus 5', 'aut', '16', '76'),
(67, NULL, NULL, 'sit 2', 'recusandae', '4', '51'),
(68, NULL, NULL, 'sit 4', 'labore', '57', '54'),
(69, NULL, NULL, 'voluptatem 3', 'perferendis', '90', '42'),
(70, NULL, NULL, 'vero 4', 'corrupti', '56', '79'),
(71, NULL, NULL, 'maxime 5', 'suscipit', '47', '74'),
(72, NULL, NULL, 'magni 5', 'voluptas', '63', '22'),
(73, NULL, NULL, 'autem 5', 'non', '10', '25'),
(74, NULL, NULL, 'neque 5', 'ex', '27', '91'),
(75, NULL, NULL, 'aut 5', 'consequatur', '94', '64'),
(76, NULL, NULL, 'in 3', 'voluptas', '93', '63'),
(77, NULL, NULL, 'quod 4', 'non', '73', '27'),
(78, NULL, NULL, 'cupiditate 2', 'id', '9', '17'),
(79, NULL, NULL, 'veritatis 2', 'perferendis', '43', '78'),
(80, NULL, NULL, 'ut 2', 'possimus', '5', '40'),
(81, NULL, NULL, 'hic 5', 'odio', '21', '9'),
(82, NULL, NULL, 'maiores 2', 'beatae', '40', '30'),
(83, NULL, NULL, 'corrupti 1', 'reprehenderit', '98', '45'),
(84, NULL, NULL, 'omnis 5', 'consequatur', '92', '37'),
(85, NULL, NULL, 'est 2', 'doloremque', '4', '83'),
(86, NULL, NULL, 'rerum 5', 'beatae', '14', '32'),
(87, NULL, NULL, 'et 5', 'voluptatibus', '55', '5'),
(88, NULL, NULL, 'sapiente 1', 'suscipit', '99', '53'),
(89, NULL, NULL, 'dolorem 5', 'libero', '51', '14'),
(90, NULL, NULL, 'rerum 5', 'laudantium', '35', '72'),
(91, NULL, NULL, 'earum 4', 'esse', '90', '88'),
(92, NULL, NULL, 'omnis 1', 'voluptatem', '91', '4'),
(93, NULL, NULL, 'praesentium 3', 'praesentium', '65', '20'),
(94, NULL, NULL, 'molestiae 4', 'consequuntur', '50', '96'),
(95, NULL, NULL, 'animi 4', 'doloribus', '6', '42'),
(96, NULL, NULL, 'eius 3', 'dolore', '81', '87'),
(97, NULL, NULL, 'ipsam 4', 'saepe', '19', '58'),
(98, NULL, NULL, 'perspiciatis 1', 'consectetur', '79', '41'),
(99, NULL, NULL, 'laborum 5', 'hic', '98', '59'),
(100, NULL, NULL, 'rerum 4', 'in', '9', '43');

-- --------------------------------------------------------

--
-- Structure de la table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
CREATE TABLE IF NOT EXISTS `product_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `IDX_CDFC73564584665A` (`product_id`),
  KEY `IDX_CDFC735612469DE2` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rate`
--

DROP TABLE IF EXISTS `rate`;
CREATE TABLE IF NOT EXISTS `rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `testimonial` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_DFEC3F394584665A` (`product_id`),
  KEY `IDX_DFEC3F39A76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_at` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `first_name`, `last_name`, `telephone`, `birth_at`) VALUES
(1, 'timmothy.hudson@gmail.com', '[]', '4WH\\A;=G<gx.$g4b)r', 'Bailee', 'Auer', '+17437324108', '1992-08-05'),
(2, 'herbert.cummings@gmail.com', '[]', '??l:W}A5k{,x', 'Gwen', 'Koepp', '+13257285407', '1967-03-13'),
(3, 'gleichner.karolann@yahoo.com', '[]', '|V\'LmAByi[c(h}%2;', 'Sabrina', 'Douglas', '+13515124810', '1960-01-12'),
(4, 'jast.maximo@gmail.com', '[]', 'Svc6T+>c~7W8Mai!0Dc', 'Bradley', 'Heathcote', '+19734135561', '1978-08-13'),
(5, 'freeman13@gmail.com', '[]', '7e\\PzeZTd}>?E-o', 'Elenora', 'Nienow', '+18644061481', '1988-08-29'),
(6, 'abednar@corwin.com', '[]', 'm=?O6~=QwO', 'Taylor', 'Stamm', '+12064903028', '1975-04-08'),
(7, 'nicolas.melany@gmail.com', '[]', '|{ES!~TXh&XT', 'Creola', 'Wisoky', '+15347905684', '2002-02-13'),
(8, 'fkessler@schowalter.com', '[]', 'k@gR#J', 'Muhammad', 'Collier', '+19733958103', '1960-04-22'),
(9, 'wintheiser.clementine@barrows.info', '[]', '?uI[O9{#\\S5', 'Kaitlyn', 'Ratke', '+15809853758', '1979-10-24'),
(10, 'phoebe67@stark.biz', '[]', '*4SB$T#6(0EeI\'@1', 'Elsie', 'Ryan', '+18436006642', '1990-03-19'),
(11, 'hrempel@mohr.biz', '[]', '`5i5HQW!WLhr|', 'Bridget', 'Bruen', '+16823516881', '1969-07-24'),
(12, 'jeremy90@hotmail.com', '[]', '#Il[(oEy?t5CJ7Al\":PW', 'Eva', 'White', '+14153883356', '1970-05-20'),
(13, 'rschuppe@ratke.info', '[]', '~%z#v}`ruwaU#', 'Genevieve', 'Tromp', '+14848812615', '1962-01-11'),
(14, 'obuckridge@gaylord.info', '[]', 'Tr*OTy', 'Mina', 'Batz', '+13098804814', '1972-11-09'),
(15, 'schuppe.ewell@marvin.org', '[]', 'o-gE0(PB', 'Helmer', 'Abbott', '+14105089193', '1988-09-21'),
(16, 'nasir.stoltenberg@buckridge.com', '[]', 'Pl\'+}Q:Gn_/x8', 'Victor', 'Barton', '+12542854020', '1995-08-13'),
(17, 'irving.stroman@treutel.com', '[]', ']Vz|@9Sw?', 'Julian', 'West', '+14432062516', '1955-01-26'),
(18, 'lurline60@keeling.com', '[]', '\"owgdwf3GuMj:\"L,srV', 'Elizabeth', 'Roob', '+13398615008', '1994-06-01'),
(19, 'icie.windler@pfannerstill.com', '[]', '`VAslg[#\'', 'Jessyca', 'Schuppe', '+17344012482', '1965-10-22'),
(20, 'demetris37@hotmail.com', '[]', '~#8<BN9IRy.]jKp#$%', 'Kayden', 'Pfeffer', '+19705740531', '1988-05-11'),
(21, 'hansen.clay@upton.com', '[]', 'U>oi>4EwY4gK2{', 'Lulu', 'Aufderhar', '+15318929982', '1996-02-27'),
(22, 'jon.weber@pfannerstill.org', '[]', '{[?R+ll=eB/+`(<x}xh', 'Gladyce', 'Nader', '+15595993377', '1964-03-27'),
(23, 'nwolf@borer.biz', '[]', '\\^[x#;>%pi8)A{\"(v|(_', 'Moises', 'Klocko', '+17032455557', '1957-05-26'),
(24, 'caleb.prosacco@corwin.com', '[]', 'cxjlujsHE4|M', 'Kaycee', 'Schuster', '+14402775253', '1997-07-15'),
(25, 'ntreutel@yahoo.com', '[]', '9,`xfd*vaNw#/?r+V', 'Etha', 'Connelly', '+15348831513', '1978-05-28'),
(26, 'howard.marquardt@yahoo.com', '[]', 'ThrwzuN^.;su|uu5YW3J', 'Eldred', 'Mayert', '+19299216146', '1981-03-01'),
(27, 'alittel@vandervort.com', '[]', 'r8x.>G=`k{Y,o8nF', 'Jaiden', 'Stamm', '+12399911817', '1988-12-19'),
(28, 'beer.johnpaul@hotmail.com', '[]', '(E}nMA2:3w', 'Astrid', 'Windler', '+19155606548', '1966-04-21'),
(29, 'schmidt.daisy@toy.com', '[]', '\"M!z6\\V6V9Yf', 'Ryder', 'Miller', '+12812816992', '1995-02-05'),
(30, 'maverick42@yahoo.com', '[]', 'z~Y%[bJ*KjK@1;0h1.', 'Jasper', 'Pagac', '+13413589547', '1957-11-02'),
(31, 'tbarrows@hotmail.com', '[]', '*WO2f#ds', 'Amy', 'Gutkowski', '+12084072026', '2001-04-30'),
(32, 'morar.earline@yahoo.com', '[]', '\'fl#,dfvJesa', 'Brandt', 'Langosh', '+16063794167', '1997-01-02'),
(33, 'dillon.eichmann@bahringer.biz', '[]', '4[B0?^LSV-]6ee', 'Kelsie', 'Beier', '+14804896112', '1951-03-23'),
(34, 'armand.lakin@dickens.com', '[]', 'cv[3E,.S7r;P', 'Ashton', 'Kohler', '+17865428727', '1989-06-23'),
(35, 'harber.olen@kub.com', '[]', 'YK&~:7Ou??TOU5t-I%', 'Dawn', 'Toy', '+12249815793', '1955-04-12'),
(36, 'kaya04@ondricka.com', '[]', ')X\'nc\\byFSxT99bS,', 'Loren', 'Batz', '+13378217409', '1951-05-22'),
(37, 'smante@blick.com', '[]', 'xX?t4l\\j9_\'~th8)', 'Bettye', 'Davis', '+19017042773', '1971-04-08'),
(38, 'mkuphal@hotmail.com', '[]', '&VhHOdCL\'7b/|@bCBCwk', 'Ernestine', 'Rippin', '+14708795725', '1986-07-18'),
(39, 'leland.schamberger@gmail.com', '[]', '\"tN(21xbDi~~(0', 'Abby', 'Satterfield', '+17433012025', '1993-02-12'),
(40, 'estrella.prosacco@gmail.com', '[]', 'z!p0e-?J]XZ0pDL[Z', 'Terrance', 'Roberts', '+13412261805', '1950-12-17'),
(41, 'treutel.andreanne@yahoo.com', '[]', 'j^n2zMCsl9.msW0\"', 'Annabell', 'Tromp', '+16155481268', '1967-10-06'),
(42, 'xkuhic@hotmail.com', '[]', ',~^LKn+\',&;2^', 'Jaydon', 'Hyatt', '+18323412158', '1992-04-15'),
(43, 'tromp.delores@mccullough.com', '[]', ')QaID+A_<\"n', 'Erin', 'Bernhard', '+15027104064', '1950-04-08'),
(44, 'delphia33@smith.com', '[]', 'jpHW+x', 'Vernon', 'Reynolds', '+12813470995', '1976-10-05'),
(45, 'xschmitt@yahoo.com', '[]', '!`HZ/\"s', 'Jennie', 'Langworth', '+12796593695', '1994-11-12'),
(46, 'jacques.herzog@kuphal.com', '[]', 'PVJ$zy!`0$', 'Lonnie', 'Harber', '+17748046026', '1969-05-20'),
(47, 'chet.gusikowski@skiles.org', '[]', 'o*fpl<%TWM)\"j{', 'Edgardo', 'Schoen', '+18327904112', '1960-11-13'),
(48, 'metz.william@price.org', '[]', 'R%t<=P^WL', 'Maryse', 'Huel', '+18386798805', '1952-10-07'),
(49, 'rosenbaum.krystina@jenkins.net', '[]', 'r<8pdFooT!)][\'g=z', 'Kali', 'Douglas', '+17265790055', '1954-08-28'),
(50, 'aufderhar.mazie@jacobs.com', '[]', 'kFEI[9', 'May', 'Kihn', '+16176021029', '1955-06-30');

-- --------------------------------------------------------

--
-- Structure de la table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
CREATE TABLE IF NOT EXISTS `user_address` (
  `user_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`address_id`),
  KEY `IDX_5543718BA76ED395` (`user_id`),
  KEY `IDX_5543718BF5B7AF75` (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `FK_BA388B733E1689A` FOREIGN KEY (`command_id`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `FK_BA388B7A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_BA388B7B6A1BD45` FOREIGN KEY (`cart_line_id`) REFERENCES `cart_line` (`id`);

--
-- Contraintes pour la table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `FK_3781EC10BB01DC09` FOREIGN KEY (`order_line_id`) REFERENCES `order_line` (`id`),
  ADD CONSTRAINT `FK_3781EC10F5B7AF75` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`);

--
-- Contraintes pour la table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_F52993981A8C12F5` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`id`),
  ADD CONSTRAINT `FK_F5299398BB01DC09` FOREIGN KEY (`order_line_id`) REFERENCES `order_line` (`id`);

--
-- Contraintes pour la table `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `FK_14B784184584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD44F5D008` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`),
  ADD CONSTRAINT `FK_D34A04ADB6A1BD45` FOREIGN KEY (`cart_line_id`) REFERENCES `cart_line` (`id`);

--
-- Contraintes pour la table `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `FK_CDFC735612469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CDFC73564584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `rate`
--
ALTER TABLE `rate`
  ADD CONSTRAINT `FK_DFEC3F394584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FK_DFEC3F39A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `FK_5543718BA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5543718BF5B7AF75` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
