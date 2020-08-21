-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 21 août 2020 à 11:33
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(10) NOT NULL,
  `id_cms_users` int(10) NOT NULL,
  `titre` mediumtext NOT NULL,
  `contenue` longtext NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `id_cms_users`, `titre`, `contenue`, `photo`, `created_at`, `updated_at`) VALUES
(23, 2, 'Ligue des champions: le Bayern Münich a infligé une leçon historique à Barcelone (vidéos)', '<h3>Les Allemands du Bayern Munich ont facilement dispos&eacute; vendredi du FC Barcelone (8-2), en quarts de finale de la Ligue des champions. Ils affronteront au prochain tour le vainqueur de Lyon-Manchester City.</h3>\r\n\r\n<h3><a href=\"https://www.france24.com/fr/20200616-football-bundesliga-titre-sacre-bayern-munich-champion-allemagne\" target=\"_self\">Le Bayern Munich</a>&nbsp;n&#39;a fait qu&#39;une bouch&eacute;e du&nbsp;<a href=\"https://www.france24.com/fr/20200808-ligue-des-champions-le-bayern-munich-%C3%A9crase-chelsea-barcelone-s-impose-face-%C3%A0-naples\" target=\"_self\">FC Barcelone</a>&nbsp;de Lionel Messi. Le club bavarois s&#39;est facilement impos&eacute; 8 &agrave; 2 face aux Catalans lors de leur entr&eacute;e en lice dans le &quot;Final 8&quot; de la Ligue des champions.</h3>\r\n\r\n<h3>Au cours d&#39;une premi&egrave;re mi-temps un peu folle, les Bavarois ont donn&eacute; l&#39;impression de pouvoir marquer &agrave; chacune de leurs incursions et ont inscrit quatre buts en 31 minutes. Un record en phase finale de Ligue des champions. C&#39;est Thomas M&uuml;ller qui a ouvert le bal d&egrave;s la 4e minute apr&egrave;s un une-deux avec Lewandowski.</h3>\r\n\r\n<h3>Le Bar&ccedil;a, trop fragile dans ce match &agrave; haute intensit&eacute;, a cru pouvoir s&#39;en sortir en &eacute;galisant gr&acirc;ce &agrave; un but contre son camp de David Alaba (7e). Mais des buts d&#39;Ivan Perisic (22e) et Serge Gnabry (28e) ainsi qu&#39;une deuxi&egrave;me r&eacute;alisation de M&uuml;ller (31e) lui ont rapidement remis la t&ecirc;te sous l&#39;eau.</h3>\r\n\r\n<h3>Au retour des vestiaires, le Bar&ccedil;a affiche un meilleur visage. Sur un centre de Messi, Suarez &eacute;limine Boateng pour inscrire le but de l&#39;espoir en trompant Neuer (56e). Mais quelques instants plus tard, le jeune Alphonso Davies, 20 ans, douche les espoirs catalans. Auteur d&#39;un festival sur le c&ocirc;t&eacute; droit du but espagnol, il sert Kimmich qui n&#39;a plus qu&#39;&agrave; la pousser au fond (62e).</h3>\r\n\r\n<h3>Countinho va terminer le travail contre ses anciens co&eacute;quipiers. D&#39;abord d&#39;un centre piqu&eacute; pour la t&ecirc;te de l&#39;in&eacute;vitable Lewandowski (82e), puis en inscrivant un doubl&eacute; (85e et 89e). Le Bar&ccedil;a boit le calice jusqu&#39;&agrave; la lie.</h3>', '914cb.jpg', '2020-08-19 09:37:18', '2020-08-19 09:55:17'),
(24, 2, 'Coronavirus : La Tunisie compte 2314 contaminations, dont 129 nouveaux cas', '<p><big>Le minist&egrave;re de la Sant&eacute; annonce que 144 personnes ont &eacute;t&eacute; test&eacute;es positives au Coronavirus &agrave; la date du 17 ao&ucirc;t, dont 129 nouveaux cas&nbsp;: 112 locaux, et 17 import&eacute;s, ainsi que 15 personnes ayant contract&eacute; le virus pr&eacute;c&eacute;demment.</big></p>\r\n\r\n<p><big>Le bilan s&rsquo;&eacute;tablit d&eacute;sormais &agrave; 2314 cas confirm&eacute;s r&eacute;partis en 1370 gu&eacute;risons, 57 d&eacute;c&egrave;s, et 887 cas encore porteurs du virus, dont 20 hospitalisations et 08 malades plac&eacute;s en soins intensifs.</big></p>\r\n\r\n<p><big>Les nouveaux cas ont &eacute;t&eacute; enregistr&eacute;s &agrave; Tunis (3 import&eacute;s), l&rsquo;Ariana (2 import&eacute;s), le Kef (8 locaux, et 2 import&eacute;s), Sousse (8 locaux), Sfax (4 locaux et 2 import&eacute;s), Kairouan (11 locaux, et 2 locaux), Gab&egrave;s (77 locaux), M&eacute;denine (1 local et 5 import&eacute;s), et Tataouine (3 locaux et 1 import&eacute;).</big></p>\r\n\r\n<p><big>Depuis le 27 juin, date de la r&eacute;ouverture des fronti&egrave;res, quelque 1112 nouveaux cas de contamination confirm&eacute;s au coronavirus ont &eacute;t&eacute; enregistr&eacute;s, dont 441 import&eacute;s, 671 locaux et 7 d&eacute;c&egrave;s.</big></p>\r\n\r\n<p><big>Le minist&egrave;re de la Sant&eacute; ajoute que 1404 analyses en laboratoire ont &eacute;t&eacute; effectu&eacute;es &agrave; la date du 17 ao&ucirc;t 2020, dont 55 dans le cadre du suivi des anciens malades portant le nombre &agrave; 115 376 analyses au total.</big></p>', 'Covid-Tunisie.jpeg', '2020-08-19 10:18:13', NULL),
(25, 2, 'Facebook Avatars : C\'est quoi ?', '<p><big>Facebook a lanc&eacute; la cr&eacute;ation d&rsquo;Avatar sur iOS et Android. Une nouvelle fonctionnalit&eacute; qui permet de cr&eacute;er son personnage virtuel, qu&rsquo;on peut utiliser dans les commentaires, les Stories ou sur Messenger.</big></p>\r\n\r\n<p><big>Certains internautes pensent que le choix de la date du lancement de cette nouvelle fonctionnalit&eacute; en Afrique n&rsquo;a pas &eacute;t&eacute; al&eacute;atoire.</big></p>\r\n\r\n<p><big>En effet le 17 ao&ucirc;t co&iuml;ncide avec l&rsquo;anniversaire de &laquo; Fantasmagorie &raquo;, projet&eacute; le 17 ao&ucirc;t 1908 et consid&eacute;r&eacute; par plusieurs cin&eacute;astes comme le tout premier dessin anim&eacute; de l&rsquo;histoire du cin&eacute;ma.</big></p>', 'avatar.jpg', '2020-08-19 10:21:16', NULL),
(26, 2, 'Tunisie : Qatar Airways offre un contrat record au Club Africain !', '<h2><big><strong>Joli coup r&eacute;alis&eacute; par le&nbsp;<em>Club Africain</em>&nbsp;!</strong></big></h2>\r\n\r\n<p>L&rsquo;ann&eacute;e de son centenaire, la formation bas&eacute;e &agrave; Tunis vient d&rsquo;officialiser ce dimanche un contrat de sponsoring avec la compagnie a&eacute;rienne Qatar Airways qui devient son sponsor maillot principal pour une dur&eacute;e de 4 ans. Ce deal devrait rapporter au total 25 millions de dinars (<em><strong><ins>environ 7,7 millions d&rsquo;euros</ins></strong></em>) dans les caisses clubistes sur l&rsquo;ensemble de la p&eacute;riode. La presse locale le qualifie de plus gros contrat jamais sign&eacute; par un club tunisien !</p>\r\n\r\n<p>Confront&eacute;s &agrave; des probl&egrave;mes de tr&eacute;sorerie et &agrave; des litiges financiers r&eacute;currents, les Rouge et Blanc re&ccedil;oivent ainsi une v&eacute;ritable bouff&eacute;e d&rsquo;oxyg&egrave;ne, eux qui pourront se targuer d&rsquo;avoir le m&ecirc;me sponsor que le PSG, le Bayern Munich, l&rsquo;AS Rome ou encore Boca Juniors. A noter que ce contrat concerne toutes les sections du club : non seulement l&rsquo;&eacute;quipe de foot donc, mais aussi celle de hand et de basket. De quoi permettre au CA de briser l&rsquo;h&eacute;g&eacute;monie de l&rsquo;Esp&eacute;rance Tunis et de renouer avec un titre de champion de Tunisie qui lui &eacute;chappe depuis 2015 ?</p>', 'club-africain.jpg', '2020-08-19 10:22:28', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `article_category`
--

CREATE TABLE `article_category` (
  `id` int(10) NOT NULL,
  `id_article` int(10) NOT NULL,
  `id_category` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `article_category`
--

INSERT INTO `article_category` (`id`, `id_article`, `id_category`, `created_at`, `updated_at`) VALUES
(95, 22, 87, '2020-08-19 09:33:41', NULL),
(97, 22, 89, '2020-08-19 09:33:41', NULL),
(106, 23, 86, '2020-08-19 10:11:01', NULL),
(108, 25, 88, '2020-08-19 10:21:16', NULL),
(109, 26, 87, '2020-08-19 10:22:28', NULL),
(110, 26, 86, '2020-08-19 10:22:28', NULL),
(111, 26, 89, '2020-08-19 10:22:28', NULL),
(113, 24, 97, '2020-08-19 12:32:36', NULL),
(115, 28, 98, '2020-08-20 15:57:47', '2020-08-20 15:59:32'),
(116, 29, 98, '2020-08-20 16:00:50', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `created_at`, `updated_at`) VALUES
(86, 'SPORT', '2020-08-19 06:44:52', NULL),
(87, 'POLITIQUE', '2020-08-19 06:44:57', NULL),
(88, 'TECHNOLOGIE', '2020-08-19 06:45:02', NULL),
(89, 'TRANSPORT', '2020-08-19 08:48:31', NULL),
(97, 'SANTÉ', '2020-08-19 12:30:35', '2020-08-19 12:53:24'),
(98, 'TEST', '2020-08-20 15:56:42', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2020-08-16 13:00:17', NULL),
(2, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2020-08-16 13:12:08', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-08-17 05:50:08', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/12', 'Delete data Sport at Module Generator', '', 1, '2020-08-17 05:52:59', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'http://127.0.0.1:8000/admin/category/add-save', 'Add New Data Sport at Sport', '', 1, '2020-08-17 05:54:00', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'http://127.0.0.1:8000/admin/category/add-save', 'Add New Data Politique at Sport', '', 1, '2020-08-17 05:54:07', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'http://127.0.0.1:8000/admin/category/add-save', 'Add New Data Technologie at Sport', '', 1, '2020-08-17 05:54:15', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-08-17 06:33:58', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'http://127.0.0.1:8000/admin/category/edit-save/3', 'Update data TECHNOLOGIE at Sport', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Technologie</td><td>TECHNOLOGIE</td></tr></tbody></table>', 1, '2020-08-17 06:34:22', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'http://127.0.0.1:8000/admin/category/edit-save/2', 'Update data POLITIQUE at Sport', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Politique</td><td>POLITIQUE</td></tr></tbody></table>', 1, '2020-08-17 06:34:32', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'http://127.0.0.1:8000/admin/category/edit-save/1', 'Update data SPORT at Sport', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Sport</td><td>SPORT</td></tr></tbody></table>', 1, '2020-08-17 06:34:41', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-08-19 06:44:36', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'http://127.0.0.1:8000/admin/category/add-save', 'Add New Data Sport at Sport', '', 1, '2020-08-19 06:44:52', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'http://127.0.0.1:8000/admin/category/add-save', 'Add New Data Politique at Sport', '', 1, '2020-08-19 06:44:57', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'http://127.0.0.1:8000/admin/category/add-save', 'Add New Data Technologie at Sport', '', 1, '2020-08-19 06:45:02', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(2, 'Category', 'Route', 'AdminCategory1ControllerGetIndex', NULL, 'fa fa-tags', 0, 1, 0, 1, 1, '2020-08-17 05:53:37', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, 1, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2020-08-16 13:00:15', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2020-08-16 13:00:15', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2020-08-16 13:00:15', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2020-08-16 13:00:15', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2020-08-16 13:00:15', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2020-08-16 13:00:15', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2020-08-16 13:00:15', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2020-08-16 13:00:15', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2020-08-16 13:00:15', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2020-08-16 13:00:15', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2020-08-16 13:00:15', NULL, NULL),
(12, 'Sport', 'fa fa-tags', 'category', 'category', 'AdminCategory1Controller', 0, 0, '2020-08-17 05:50:36', NULL, '2020-08-17 05:52:59'),
(13, 'Category', 'fa fa-tags', 'category', 'category', 'AdminCategory1Controller', 0, 0, '2020-08-17 05:53:36', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2020-08-16 13:00:15', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2020-08-16 13:00:16', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2020-08-16 13:00:16', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2020-08-16 13:00:16', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2020-08-16 13:00:16', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2020-08-16 13:00:16', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2020-08-16 13:00:16', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2020-08-16 13:00:16', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2020-08-16 13:00:16', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2020-08-16 13:00:16', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2020-08-16 13:00:16', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2020-08-16 13:00:16', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2020-08-16 13:00:16', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2020-08-16 13:00:16', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2020-08-16 13:00:16', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2020-08-16 13:00:16', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2020-08-16 13:00:16', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2020-08-16 13:00:16', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2020-08-16 13:00:16', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2020-08-16 13:00:16', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2020-08-16 13:00:16', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'CRUDBooster', 'text', NULL, NULL, '2020-08-16 13:00:16', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2020-08-16 13:00:16', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', '', 'upload_image', NULL, NULL, '2020-08-16 13:00:16', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', '', 'upload_image', NULL, NULL, '2020-08-16 13:00:16', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2020-08-16 13:00:16', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', '', 'text', NULL, NULL, '2020-08-16 13:00:16', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', '', 'text', NULL, NULL, '2020-08-16 13:00:16', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Structure de la table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`, `remember_token`) VALUES
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$eWmRbV0gIX8NVxbw0Ky/yuTaKmLweS.SZQMmQzMFsIHf9kRkk5vBu', 1, '2020-08-16 13:00:15', NULL, 'Active', NULL),
(2, 'abc', 'person_4.jpg', 'abc@abc.com', '$2y$10$LTYguIVB9z/gduo/fKcDVON0m52I9WFGIYyqjfu.TM3hlEjioqtlm', NULL, '2020-08-17 05:55:27', '2020-08-19 08:53:30', NULL, 'K3GzmJ4HGMayAU9B333FxrCtNFCAfJtfdMaKhcFT48FaCNA7z46RhMYhLT8d'),
(3, 'testeur', 'person_2.jpg', 'test@test.com', '$2y$10$X2PUQ3E8ssNs8OQUo5T55uK3OXCLsNiH/cuAc1r4TwNIy.zj5jY.e', NULL, '2020-08-18 05:47:30', '2020-08-19 08:56:06', NULL, 'lCrP0iV10WSGdKMVV0naDVmauEmosGQKcYUXizZHkVEOmf8EDzfLy39enhuZ');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `id` int(10) NOT NULL,
  `contenue` longtext NOT NULL,
  `id_cms_users` int(10) NOT NULL,
  `id_article` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `contenue`, `id_cms_users`, `id_article`, `created_at`, `updated_at`) VALUES
(2, 'Génial !', 3, 26, '2020-08-19 10:56:35', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE `media` (
  `id` int(10) NOT NULL,
  `id_article` int(10) NOT NULL,
  `media` longtext NOT NULL,
  `extension` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `media`
--

INSERT INTO `media` (`id`, `id_article`, `media`, `extension`, `created_at`, `updated_at`) VALUES
(7, 23, 'Alphonso Davies.mp4', 'mp4', '2020-08-19 10:11:01', NULL),
(8, 26, 'contrat.jpg', 'jpg', '2020-08-19 10:22:28', NULL),
(9, 24, 'guide_de_sensibilisation_covid-19.pdf', 'pdf', '2020-08-19 12:32:36', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_151211_add_details_cms_logs', 1),
(5, '2016_08_07_152014_add_table_cms_privileges', 1),
(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(7, '2016_08_07_152320_add_table_cms_settings', 1),
(8, '2016_08_07_152421_add_table_cms_users', 1),
(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1),
(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(26, '2020_08_12_090754_create_users_table', 1),
(27, '2020_08_12_090936_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `article_category`
--
ALTER TABLE `article_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `article_category`
--
ALTER TABLE `article_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT pour la table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
