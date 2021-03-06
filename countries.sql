-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2015 at 01:32 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nigerianseminars2`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `continent` int(11) NOT NULL,
  `countries` varchar(300) CHARACTER SET latin1 NOT NULL,
  `africRegion` int(11) NOT NULL,
  `country_image` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=205 ;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `continent`, `countries`, `africRegion`, `country_image`) VALUES
(1, 1, 'Algeria', 3, 'algeria.png'),
(2, 1, 'Angola', 2, 'angola.png'),
(3, 1, 'Benin', 5, 'benin.png'),
(4, 1, 'Botswana', 4, 'botswana.png'),
(5, 1, 'Burkina Faso', 5, 'burkina-faso.png'),
(6, 1, 'Burundi', 1, 'burundi.png'),
(7, 1, 'Cameroon', 2, 'cameroon.png'),
(8, 1, 'Cape Verde', 5, 'cape-verde.png'),
(9, 1, 'Central African Republic', 2, 'central-african-republic.png'),
(10, 1, 'Chad', 2, 'chad.png'),
(11, 1, 'Comoros', 1, 'comoros.png'),
(12, 1, 'Congo', 2, 'congo.png'),
(13, 1, 'Democratic Republic of Congo', 2, 'democratic-republic-of-congo.png'),
(14, 1, 'Djibouti', 1, 'djibouti.png'),
(15, 1, 'Egypt', 3, 'egypt.png'),
(16, 1, 'Equatorial Guinea', 2, 'equatorial-guinea.png'),
(17, 1, 'Eritrea', 1, 'eritrea.png'),
(18, 1, 'Ethiopia', 1, 'ethiopia.png'),
(19, 1, 'Gabon', 2, 'gabon.png'),
(20, 1, 'Gambia', 5, 'gambia.png'),
(21, 1, 'Ghana', 5, 'ghana.png'),
(22, 1, 'Guinea', 5, 'guinea.png'),
(23, 1, 'Guinea-Bissau', 5, 'guinea-bissau.png'),
(24, 1, 'Cote d''Ivoire', 5, 'cote-d-ivoire.png'),
(25, 1, 'Kenya', 1, 'kenya.png'),
(26, 1, 'Lesotho', 4, 'lesotho.png'),
(27, 1, 'Liberia', 5, 'liberia.png'),
(28, 1, 'Libya', 3, 'libya.png'),
(29, 1, 'Madagascar', 1, 'madagascar.png'),
(30, 1, 'Malawi', 1, 'malawi.png'),
(31, 1, 'Mali', 5, 'mali.png'),
(32, 1, 'Mauritania', 5, 'mauritania.png'),
(33, 1, 'Mauritius', 1, 'mauritius.png'),
(34, 1, 'Morocco', 3, 'morocco.png'),
(35, 1, 'Mozambique', 1, 'mozambique.png'),
(36, 1, 'Namibia', 4, 'namibia.png'),
(37, 1, 'Niger', 5, 'niger.png'),
(38, 1, 'Nigeria', 5, 'nigeria.png'),
(39, 1, 'Rwanda', 1, 'rwanda.png'),
(40, 1, 'Sao Tome and Principe', 2, 'sao-tome-and-principe.png'),
(41, 1, 'Senegal', 5, 'senegal.png'),
(42, 1, 'Seychelles', 1, 'seychelles.png'),
(43, 1, 'Sierra Leone', 5, 'sierra-leone.png'),
(44, 1, 'Somalia', 1, 'somalia.png'),
(45, 1, 'South Africa', 4, 'south-africa.png'),
(46, 1, 'South Sudan', 3, 'south-sudan.png'),
(47, 1, 'Sudan', 3, 'sudan.png'),
(48, 1, 'Swaziland', 4, 'swaziland.png'),
(49, 1, 'Tanzania', 1, 'tanzania.png'),
(50, 1, 'Togo', 5, 'togo.png'),
(51, 1, 'Tunisia', 3, 'tunisia.png'),
(52, 1, 'Uganda', 1, 'uganda.png'),
(53, 1, 'Zambia', 1, 'zambia.png'),
(54, 1, 'Zimbabwe', 1, 'zimbabwe.png'),
(55, 2, 'Afghanistan', 0, 'afghanistan.png'),
(56, 2, 'Bahrain', 0, 'bahrain.png'),
(57, 2, 'Bangladesh', 0, 'bangladesh.png'),
(58, 2, 'Bhutan', 0, 'bhutan.png'),
(59, 2, 'Brunei', 0, 'brunei.png'),
(60, 2, 'Burma (Myanmar)', 0, 'burma-myanmar-.png'),
(61, 2, 'Cambodia', 0, 'cambodia.png'),
(62, 2, 'China', 0, 'china.png'),
(64, 2, 'India', 0, 'india.png'),
(65, 2, 'Indonesia', 0, 'indonesia.png'),
(66, 2, 'Iran', 0, 'iran.png'),
(67, 2, 'Iraq', 0, 'iraq.png'),
(68, 2, 'Israel', 0, 'israel.png'),
(69, 2, 'Japan', 0, 'japan.png'),
(70, 2, 'Jordan', 0, 'jordan.png'),
(71, 2, 'Kazakhstan', 0, 'kazakhstan.png'),
(72, 2, 'North Korea', 0, 'north-korea.png'),
(73, 2, 'South Korea', 0, 'south-korea.png'),
(74, 2, 'Kuwait', 0, 'kuwait.png'),
(75, 2, 'Kyrgyzstan', 0, 'kyrgyzstan.png'),
(76, 2, 'Laos', 0, 'laos.png'),
(77, 2, 'Lebanon', 0, 'lebanon.png'),
(78, 2, 'Malaysia', 0, 'malaysia.png'),
(79, 2, 'Maldives', 0, 'maldives.png'),
(80, 2, 'Mongolia', 0, 'mongolia.png'),
(81, 2, 'Nepal', 0, 'nepal.png'),
(82, 2, 'Oman', 0, 'oman.png'),
(83, 2, 'Pakistan', 0, 'pakistan.png'),
(84, 2, 'Philippines', 0, 'philippines.png'),
(85, 2, 'Qatar', 0, 'qatar.png'),
(86, 2, 'Russian Federation', 0, 'russian-federation.png'),
(87, 2, 'Saudi Arabia', 0, 'saudi-arabia.png'),
(88, 2, 'Singapore', 0, 'singapore.png'),
(89, 2, 'Sri Lanka', 0, 'sri-lanka.png'),
(90, 2, 'Syria', 0, 'syria.png'),
(91, 2, 'Tajikistan', 0, 'tajikistan.png'),
(92, 2, 'Thailand', 0, 'thailand.png'),
(93, 2, 'Turkey', 0, 'turkey.png'),
(94, 2, 'Turkmenistan', 0, 'turkmenistan.png'),
(95, 2, 'United Arab Emirates', 0, 'united-arab-emirates.png'),
(96, 2, 'Uzbekistan', 0, 'uzbekistan.png'),
(97, 2, 'Vietnam', 0, 'vietnam.png'),
(98, 2, 'Yemen', 0, 'yemen.png'),
(99, 3, 'Albania', 0, 'albania.png'),
(100, 3, 'Andorra', 0, 'andorra.png'),
(101, 3, 'Armenia', 0, 'armenia.png'),
(102, 3, 'Austria', 0, 'austria.png'),
(103, 3, 'Azerbaijan', 0, 'azerbaijan.png'),
(104, 3, 'Belarus', 0, 'belarus.png'),
(105, 3, 'Belgium', 0, 'belgium.png'),
(106, 3, 'Bosnia and Herzegovina', 0, 'bosnia-and-herzegovina.png'),
(107, 3, 'Bulgaria', 0, 'bulgaria.png'),
(108, 3, 'Croatia', 0, 'croatia.png'),
(109, 3, 'Cyprus', 0, 'cyprus.png'),
(110, 3, 'Czech Republic', 0, 'czech-republic.png'),
(111, 3, 'Denmark', 0, 'denmark.png'),
(112, 3, 'Estonia', 0, 'estonia.png'),
(113, 3, 'Finland', 0, 'finland.png'),
(114, 3, 'France', 0, 'france.png'),
(115, 3, 'Georgia', 0, 'georgia.png'),
(116, 3, 'Germany', 0, 'germany.png'),
(117, 3, 'Greece', 0, 'greece.png'),
(118, 3, 'Hungary', 0, 'hungary.png'),
(119, 3, 'Iceland', 0, 'iceland.png'),
(120, 3, 'Ireland', 0, 'ireland.png'),
(121, 3, 'Italy', 0, 'italy.png'),
(122, 3, 'Latvia', 0, 'latvia.png'),
(123, 3, 'Liechtenstein', 0, 'liechtenstein.png'),
(124, 3, 'Lithuania', 0, 'lithuania.png'),
(125, 3, 'Luxembourg', 0, 'luxembourg.png'),
(126, 3, 'Macedonia', 0, 'macedonia.png'),
(127, 3, 'Malta', 0, 'malta.png'),
(128, 3, 'Moldova', 0, 'moldova.png'),
(129, 3, 'Monaco', 0, 'monaco.png'),
(130, 3, 'Montenegro', 0, 'montenegro.png'),
(131, 3, 'Netherlands', 0, 'netherlands.png'),
(132, 3, 'Norway', 0, 'norway.png'),
(133, 3, 'Poland', 0, 'poland.png'),
(134, 3, 'Portugal', 0, 'portugal.png'),
(135, 3, 'Romania', 0, 'romania.png'),
(136, 3, 'San Marino', 0, 'san-marino.png'),
(137, 3, 'Serbia', 0, 'serbia.png'),
(138, 3, 'Slovakia', 0, 'slovakia.png'),
(139, 3, 'Slovenia', 0, 'slovenia.png'),
(140, 3, 'Spain', 0, 'spain.png'),
(141, 3, 'Sweden', 0, 'sweden.png'),
(142, 3, 'Switzerland', 0, 'switzerland.png'),
(143, 3, 'Ukraine', 0, 'ukraine.png'),
(144, 3, 'United Kingdom', 0, 'united-kingdom.png'),
(145, 3, 'Vatican City', 0, 'vatican-city.png'),
(146, 4, 'Antigua and Barbuda', 0, 'antigua-and-barbuda.png'),
(147, 4, 'Bahamas', 0, 'bahamas.png'),
(148, 4, 'Barbados', 0, 'barbados.png'),
(149, 4, 'Belize', 0, 'belize.png'),
(150, 4, 'Canada', 0, 'canada.png'),
(151, 4, 'Costa Rica', 0, 'costa-rica.png'),
(152, 4, 'Cuba', 0, 'cuba.png'),
(153, 4, 'Dominica', 0, 'dominica.png'),
(154, 4, 'Dominican Republic', 0, 'dominican-republic.png'),
(155, 4, 'El Salvador', 0, 'el-salvador.png'),
(156, 4, 'Grenada', 0, 'grenada.png'),
(157, 4, 'Guatemala', 0, 'guatemala.png'),
(158, 4, 'Haiti', 0, 'haiti.png'),
(159, 4, 'Honduras', 0, 'honduras.png'),
(160, 4, 'Jamaica', 0, 'jamaica.png'),
(161, 4, 'Mexico', 0, 'mexico.png'),
(162, 4, 'Nicaragua', 0, 'nicaragua.png'),
(163, 4, 'Panama', 0, 'panama.png'),
(164, 4, 'Saint Kitts and Nevis', 0, 'saint-kitts-and-nevis.png'),
(165, 4, 'Saint Lucia', 0, 'saint-lucia.png'),
(166, 4, 'Saint Vincent and the Grenadines', 0, 'saint-vincent-and-the-grenadines.png'),
(167, 4, 'Trinidad and Tobago', 0, 'trinidad-and-tobago.png'),
(168, 4, 'United States of America (USA)', 0, 'united-states-of-america-usa-.png'),
(169, 5, 'Australia', 0, 'australia.png'),
(170, 5, 'Fiji', 0, 'fiji.png'),
(171, 5, 'Kiribati', 0, 'kiribati.png'),
(172, 5, 'Marshall Islands', 0, 'marshall-islands.png'),
(173, 5, 'Micronesia', 0, 'micronesia.png'),
(174, 5, 'Nauru', 0, 'nauru.png'),
(175, 5, 'New Zealand', 0, 'new-zealand.png'),
(176, 5, 'Palau', 0, 'palau.png'),
(177, 5, 'Papua New Guinea', 0, 'papua-new-guinea.png'),
(178, 5, 'Samoa', 0, 'samoa.png'),
(179, 5, 'Solomon Islands', 0, 'solomon-islands.png'),
(180, 5, 'Tonga', 0, 'tonga.png'),
(181, 5, 'Tuvalu', 0, 'tuvalu.png'),
(182, 5, 'Vanuatu', 0, 'vanuatu.png'),
(183, 6, 'Argentina', 0, 'argentina.png'),
(184, 6, 'Bolivia', 0, 'bolivia.png'),
(185, 6, 'Brazil', 0, 'brazil.png'),
(186, 6, 'Chile', 0, 'chile.png'),
(187, 6, 'Colombia', 0, 'colombia.png'),
(188, 6, 'Ecuador', 0, 'ecuador.png'),
(189, 6, 'Guyana', 0, 'guyana.png'),
(190, 6, 'Paraguay', 0, 'paraguay.png'),
(191, 6, 'Peru', 0, 'peru.png'),
(192, 6, 'Suriname', 0, 'suriname.png'),
(193, 6, 'Uruguay', 0, 'uruguay.png'),
(194, 6, 'Venezuela', 0, 'venezuela.png'),
(195, 1, 'Western Sahara', 0, 'western-sahara.png'),
(196, 2, 'Timor-Leste', 2, 'timor-leste.png'),
(197, 2, 'Taiwan', 2, 'taiwan.png'),
(199, 4, 'Puerto Rico', 0, 'puerto-rico.png'),
(200, 2, 'Palestine', 2, 'palestine.png'),
(202, 5, 'Tahiti(French Polinesia)', 2, 'tahiti-french-polinesia-.png'),
(203, 5, 'Cook Islands', 5, 'cook-islands.png'),
(204, 4, 'Cayman Islands', 4, 'cayman-islands.png');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
