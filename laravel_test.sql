-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 17, 2021 at 07:04 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('05d60cf5995919f44cef50c7c703a8d5c689ac854a4efe86e72d855dee72826cfb37060be13f191f', 6, '92f4ce6c-c545-45a0-a41f-4fd267370685', 'authToken', '[]', 0, '2021-03-15 06:43:37', '2021-03-15 06:43:37', '2022-03-15 12:13:37'),
('14f731929560617d7efbeae5f206b0e2645d2e5292f57a702b13520b70293d7c462bd7f83e4d3740', 25, '930aebdc-05b6-473e-8d78-9c4306cbfb7c', 'authToken', '[]', 0, '2021-03-31 01:04:51', '2021-03-31 01:04:51', '2022-03-31 06:34:51'),
('1547af3348324d963ac2027bfd567c1f8c036768eabd1e9d029840aa1fcf884d71f13423c7cdfa2a', 30, '930aebdc-05b6-473e-8d78-9c4306cbfb7c', 'authToken', '[]', 0, '2021-03-26 04:04:27', '2021-03-26 04:04:27', '2022-03-26 09:34:27'),
('16465fdb69bae7230e1303bdbdbb49a3e3ece07c421010d652ec410e026a32abbaf1d811268d1d18', 25, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-17 07:45:50', '2021-03-17 07:45:50', '2022-03-17 13:15:50'),
('195dc56517130db8f230a10ad75c998f0262a8497ab36248276058f0d35f6dadbd43583510bc7496', 4, '92f4ce6c-c545-45a0-a41f-4fd267370685', 'authToken', '[]', 0, '2021-03-15 06:51:19', '2021-03-15 06:51:19', '2022-03-15 12:21:19'),
('1e7926a05ac02a0e47594ca9a87409d9c0bdb61a0714473a78e9cdd45d39897477ef012486636b4a', 22, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-18 01:42:51', '2021-03-18 01:42:51', '2022-03-18 07:12:51'),
('1fc4a27a2accebd0c5bda725c99577f002417cf74c86df6f1f4eecf31ca078223c822eaed7a25002', 26, '930aebdc-05b6-473e-8d78-9c4306cbfb7c', 'authToken', '[]', 0, '2021-04-13 00:31:53', '2021-04-13 00:31:53', '2022-04-13 06:01:53'),
('230622a8b17c0601700bf006f96e0907e407c9ea73031f2f560d02aff6019d150b4060723e4e4493', NULL, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-16 08:53:50', '2021-03-16 08:53:50', '2022-03-16 14:23:50'),
('256f696be8a69b9c0f1502d9efde2c56ac3ecbe25480f23ebbd889ba04848e1e5a0202563e706fcf', NULL, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-16 07:36:29', '2021-03-16 07:36:29', '2022-03-16 13:06:29'),
('259e1ba46fe93784663f2b6f011f79168ca67fc29bbb0731b2ad8e7f57cf52dad61994be5b8b00ac', 30, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 1, '2021-03-17 08:34:41', '2021-03-17 08:34:41', '2022-03-17 14:04:41'),
('2b1e87d02a24d2c91df5925f3dad01c3f247781f6deb56b33962856715516988886544e4792184fc', 30, '92fad7bd-dcad-44c2-8042-9658ed613469', 'authToken', '[]', 0, '2021-03-19 08:06:58', '2021-03-19 08:06:58', '2022-03-19 13:36:58'),
('2f7bf87616a8677fc2a2e91530ba23536893a5e1d5372559e4a9bd80ceec20d69e1fbffe8b53526e', 22, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-17 07:07:28', '2021-03-17 07:07:28', '2022-03-17 12:37:28'),
('2ff9d7d141b37b343444e81c13a4e1d195cec68defdea2d9f706f1efdb00e3bef517b8b9b85b20f9', 4, '92f4ce6c-c545-45a0-a41f-4fd267370685', 'authToken', '[]', 0, '2021-03-15 06:36:37', '2021-03-15 06:36:37', '2022-03-15 12:06:37'),
('32d496b3797414d2ea83e43e1bda1cb36dfb5813a489a672a844857d530fc4ea95437badc3da218d', NULL, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-16 08:24:53', '2021-03-16 08:24:53', '2022-03-16 13:54:53'),
('3c4ace2445b550b9e9a75300125592358f2d4a6c63728793e98aaa31b6bf69cfbac5f358ddbc70ba', NULL, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-16 08:57:11', '2021-03-16 08:57:11', '2022-03-16 14:27:11'),
('3cd0b70fddd49753bd118864c0cce448fbe144c4affb791f685b751208e4114d8c99155b40bbf05b', NULL, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-17 06:53:01', '2021-03-17 06:53:01', '2022-03-17 12:23:01'),
('3cd80ba24f38b9e30e2c96116fdae8ca040d3d1af57598b42e5312f53152eefab00d74e0e93fec11', 28, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-17 07:54:51', '2021-03-17 07:54:51', '2022-03-17 13:24:51'),
('4154af68166d482b5d50966a8e7fcbea8f527325d94ad4d87b6b55126fa91ff65bfab7f9da14f4a6', 26, '930aebdc-05b6-473e-8d78-9c4306cbfb7c', 'authToken', '[]', 0, '2021-04-15 23:41:00', '2021-04-15 23:41:00', '2022-04-16 05:11:00'),
('44716587c2bcd6e3bd198ca66d96587068acc4d023b42e8258a92e3fb283e00ecfc1cec8974b9900', 30, '92fad7bd-dcad-44c2-8042-9658ed613469', 'authToken', '[]', 0, '2021-03-19 07:31:49', '2021-03-19 07:31:49', '2022-03-19 13:01:49'),
('457660f22c17ef5e02924939064dea0a6e60748fb572f862940e621ec442a2ffa346a6976cba144e', 15, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-16 08:49:58', '2021-03-16 08:49:58', '2022-03-16 14:19:58'),
('4ae97f4a4031da92be3bb547e637c73b076a8c60badb1c61e099059d1b2eb089c51b4648debce680', 29, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-17 08:30:45', '2021-03-17 08:30:45', '2022-03-17 14:00:45'),
('50ce98983e9974b0bca560bdf5909144840761fe4a6b93a2085bf7426ba7d4cf1b5860ed8eadafed', 15, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-16 08:35:53', '2021-03-16 08:35:53', '2022-03-16 14:05:53'),
('5793f7733bbc4afb26b5713a4770e07e2c9eb3b8cf316b1bffb47fe6e65bf82c386628c2e101d17b', 22, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-17 07:06:09', '2021-03-17 07:06:09', '2022-03-17 12:36:09'),
('5f0fe3e720ab0e344707ab0e86dc4223a6b625c816b3cb55dbb40f62bfff9ebea02bd6296bfe7fa0', 53, '9336ecc0-98ed-4ead-856a-15f1f6b4eb7b', 'authToken', '[]', 0, '2021-04-17 01:03:27', '2021-04-17 01:03:27', '2022-04-17 06:33:27'),
('6a94a9b8fb2dfa60000ef3a1d196339e2a6e001e7a2542fc9eddd3db5556e8a6bec514cb755e417f', NULL, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-16 08:55:34', '2021-03-16 08:55:34', '2022-03-16 14:25:34'),
('7006f9310391cc1d1effb5014ca9fd40d1caea436fb2d86d6b719bbcea0c7818ef472a074bb09c46', 23, '930aebdc-05b6-473e-8d78-9c4306cbfb7c', 'authToken', '[]', 0, '2021-04-07 22:34:05', '2021-04-07 22:34:05', '2022-04-08 04:04:05'),
('73ebd2ffb13ce31870b5ddb8db2d7f7e9b4f2b98e055ca4845128b9b198335f5f1c51f23ab95cc7d', 26, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-17 07:47:01', '2021-03-17 07:47:01', '2022-03-17 13:17:01'),
('76ffe2f43423f65bae0725394378febe59e6de60384bb2fae40b42b3eb65a0bd1c7bfaca5f5604aa', NULL, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-16 08:26:09', '2021-03-16 08:26:09', '2022-03-16 13:56:09'),
('7a3f7e81c73ccf185d8fb2788f49fcf4f20696726281d2dfcc15e5243ecf5ffa569ed06f41372f90', 26, '930aebdc-05b6-473e-8d78-9c4306cbfb7c', 'authToken', '[]', 0, '2021-04-16 06:27:23', '2021-04-16 06:27:23', '2022-04-16 11:57:23'),
('7ce622367aea0dd68ff778d315738bf33d82ea8118137de16686c06b5444fcb860634ac6f78a76c6', 22, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-18 03:50:48', '2021-03-18 03:50:48', '2022-03-18 09:20:48'),
('8415bf7344932d9313f22b6a21b81810bb93b4789c646932be9f0dcb299324728f1ec8b311b44c4f', 15, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-16 08:34:54', '2021-03-16 08:34:54', '2022-03-16 14:04:54'),
('87a9b6cb2afee2e9536f7c9fd7a498f26b9eeae223c130ec9178d65ec14ea7904219fe06f5d08582', 25, '930aebdc-05b6-473e-8d78-9c4306cbfb7c', 'authToken', '[]', 0, '2021-04-01 00:08:18', '2021-04-01 00:08:18', '2022-04-01 05:38:18'),
('8a4f67b5b9490523fcadb91a4dbb3c2fcacda4dbfd4d6eba5285081b74e9f8226cfa646c255e00fd', 22, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-18 03:49:48', '2021-03-18 03:49:48', '2022-03-18 09:19:48'),
('8cf4ff959ebc14157714d8f563e4a4420dd64eaf13d5e89a3d42adb79cbe38a9198bb33300e135e9', 30, '930aebdc-05b6-473e-8d78-9c4306cbfb7c', 'authToken', '[]', 0, '2021-03-26 07:04:21', '2021-03-26 07:04:21', '2022-03-26 12:34:21'),
('8f8afd60b2c02ac6642763e39e21adf655d7704ac658492ed960078585c85bcbfe04246ea0396d44', 24, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-17 07:31:35', '2021-03-17 07:31:35', '2022-03-17 13:01:35'),
('90b33c18d3eeb44a71f889d539fa8484466ff0c8310bf48c8497d5c4997976142a67e778fb81ab3a', 23, '930aebdc-05b6-473e-8d78-9c4306cbfb7c', 'authToken', '[]', 0, '2021-04-12 05:20:27', '2021-04-12 05:20:27', '2022-04-12 10:50:27'),
('9bde7c625261bf876bbb8f324d4ae3493bd0b07ad98d7ceda9c6eb1c3eccb2d8bfe58b2fb471c24f', NULL, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-16 08:54:41', '2021-03-16 08:54:41', '2022-03-16 14:24:41'),
('ae4815664083bd3f9a13e1413e7c1519c835427208aaccd0763e923c28b8338c9f05ca8692f3a09d', 22, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-17 08:24:39', '2021-03-17 08:24:39', '2022-03-17 13:54:39'),
('b22a8bbbfb7256a8a91d460ab452cbe7d897118caa7db28ac6af8c52f49c20b852282d243cbc726c', 22, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-18 03:47:58', '2021-03-18 03:47:58', '2022-03-18 09:17:58'),
('b698e1c4b6e87b3c86dea4646457b9d67bc42fcabacb44a8d9dd50763d7e65ffdd91a888efb87095', 23, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-17 07:08:16', '2021-03-17 07:08:16', '2022-03-17 12:38:16'),
('b760a31627c0f4867a0883696d205f01c0acadb73c2cfc71903210487035de5aaa2dbf2a1790911c', 22, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-18 01:57:50', '2021-03-18 01:57:50', '2022-03-18 07:27:50'),
('b828044e8878a3a5070cb26eeb3291f9a74f6e8d11b177b50601c2397c2e529da92e68adca2c306a', NULL, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-16 08:53:35', '2021-03-16 08:53:35', '2022-03-16 14:23:35'),
('bad2e8b73d391e3d0bf72a3ec8e137486e00a38397f7a3ffff5394e4a4d49d24579c3b2a6acc80c8', 30, '92fad7bd-dcad-44c2-8042-9658ed613469', 'authToken', '[]', 0, '2021-03-19 07:31:56', '2021-03-19 07:31:56', '2022-03-19 13:01:56'),
('cad9fdcb789679265d0b137a8abd815381e3c4c59ce0d8bf095d6b292227ebcf0559d61b0f72c559', 25, '930aebdc-05b6-473e-8d78-9c4306cbfb7c', 'authToken', '[]', 0, '2021-03-30 06:54:23', '2021-03-30 06:54:23', '2022-03-30 12:24:23'),
('cb19525ad37586a9a644a3fa27ddfd27fbc9955f532f609f370ff58d4785bba1a165479002d5204e', 39, '930aebdc-05b6-473e-8d78-9c4306cbfb7c', 'authToken', '[]', 0, '2021-04-02 23:21:47', '2021-04-02 23:21:47', '2022-04-03 04:51:47'),
('cbd653dc23efac7ac705b4cab82d41a87e73df0af356c30f6b78bf27d5c52149f9f7b5409b8a8906', 25, '930aebdc-05b6-473e-8d78-9c4306cbfb7c', 'authToken', '[]', 0, '2021-03-30 23:29:38', '2021-03-30 23:29:38', '2022-03-31 04:59:38'),
('cd56119b5d33c7a25c6f3e8f795196a10f9b0fac750862d4bf8e763382b792c9efeeff5523fee010', NULL, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-16 08:26:11', '2021-03-16 08:26:11', '2022-03-16 13:56:11'),
('de281130b1739c3e6f510487ca8ed907d70759bca173e7889c25fb13cda59f12e8068c156cd0e0e0', NULL, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-16 08:25:06', '2021-03-16 08:25:06', '2022-03-16 13:55:06'),
('de39551071835900a33057dd30c16d7e280b433891da95c91c56c5217080ef57baa2ebc25e11b1bf', 27, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-17 07:54:13', '2021-03-17 07:54:13', '2022-03-17 13:24:13'),
('e32d616c4d456edaebd88b6c374f63f49884f7fea766f9c73d46f6da8600f483119a4a285bacb306', 5, '92f4ce6c-c545-45a0-a41f-4fd267370685', 'authToken', '[]', 0, '2021-03-15 06:42:20', '2021-03-15 06:42:20', '2022-03-15 12:12:20'),
('e380881fddb9deffdf6d175789e56d3936cbbf3a2f7c59900a0593c4d856f615e5c664b27b0640b4', NULL, '92f7023b-8b87-4336-88eb-e0ae4bd35767', 'authToken', '[]', 0, '2021-03-16 08:55:52', '2021-03-16 08:55:52', '2022-03-16 14:25:52'),
('e67b816de1041e973b224e5616e6983ccf55e5ad62572c0714e8b5d0c49c47bab58d0d43060917e8', 23, '930aebdc-05b6-473e-8d78-9c4306cbfb7c', 'authToken', '[]', 0, '2021-03-30 00:07:13', '2021-03-30 00:07:13', '2022-03-30 05:37:13'),
('e7b2c31632385ae2de8cd0040ce6d268b1582507e821bc3eabb5bf1bb133c92f9a2055dc46bf7803', 26, '930aebdc-05b6-473e-8d78-9c4306cbfb7c', 'authToken', '[]', 0, '2021-04-15 04:04:42', '2021-04-15 04:04:42', '2022-04-15 09:34:42'),
('ea7cd0c0009cbb68a70cccd5cab17535c3ab104cc09047dcc9f32a012d1dc6ebf074c08a16fd9636', 30, '92fad7bd-dcad-44c2-8042-9658ed613469', 'authToken', '[]', 0, '2021-03-19 07:31:42', '2021-03-19 07:31:42', '2022-03-19 13:01:42'),
('f950187b926184c23bee1a2340a6ef982eb84d1738eb9d96a9d6ecaa7132214c08037b648164b830', 53, '9336ecc0-98ed-4ead-856a-15f1f6b4eb7b', 'authToken', '[]', 0, '2021-04-17 01:01:51', '2021-04-17 01:01:51', '2022-04-17 06:31:51'),
('fa4fb3bb9b1eed89a77f205a38bf9d7e2f53a48889a630384ab3b2a42c736aafde8fe748151d0a84', 54, '9336ecc0-98ed-4ead-856a-15f1f6b4eb7b', 'authToken', '[]', 0, '2021-04-17 01:32:42', '2021-04-17 01:32:42', '2022-04-17 07:02:42'),
('fa9c78c8bf3b40c99a2fdfa52d13e9ef33a37e561be5b9abaef517d36a9f1a5049bcfbfefe3161e1', 53, '9336ecc0-98ed-4ead-856a-15f1f6b4eb7b', 'authToken', '[]', 0, '2021-04-17 01:12:54', '2021-04-17 01:12:54', '2022-04-17 06:42:54');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
('92f4ce6c-c545-45a0-a41f-4fd267370685', NULL, 'Laravel Personal Access Client', 'muU5VkTEgLLlpwjCEn3inMhS8cVQ3EWCzxrrBT5u', NULL, 'http://localhost', 1, 0, 0, '2021-03-15 04:12:09', '2021-03-15 04:12:09'),
('92f4ce6d-02c7-44ff-a804-d72ff5a02b8c', NULL, 'Laravel Password Grant Client', 'Nww369PYTPQbT4FwvBmaraLsCXJ9drvklUwo0pDd', 'users', 'http://localhost', 0, 1, 0, '2021-03-15 04:12:09', '2021-03-15 04:12:09'),
('92f7023b-8b87-4336-88eb-e0ae4bd35767', NULL, 'Dog-Dating Personal Access Client', 'EKxnTFGYBdP1cNw9ZoNmj3iR561s4ErOx7bWztFE', NULL, 'http://localhost', 1, 0, 0, '2021-03-16 06:28:40', '2021-03-16 06:28:40'),
('92f7023b-940c-46cb-92aa-b5a6d40d56c7', NULL, 'Dog-Dating Password Grant Client', 'luU1QSiCR8CLsetmnmeHK6J00Lcm8Odg89Oczywz', 'users', 'http://localhost', 0, 1, 0, '2021-03-16 06:28:40', '2021-03-16 06:28:40'),
('92fad7bd-dcad-44c2-8042-9658ed613469', NULL, 'Dog-Dating Personal Access Client', 'nHjmzGhJ6GpN2D3USJQlP0FfVIQpA2Ywkz28cTdM', NULL, 'http://localhost', 1, 0, 0, '2021-03-18 04:13:10', '2021-03-18 04:13:10'),
('92fad7be-3c2c-49f6-b830-f4181aed6621', NULL, 'Dog-Dating Password Grant Client', 'GAkeo25bh189WBgms5PUh4o8TJuRiwXeF7Lb8bOT', 'users', 'http://localhost', 0, 1, 0, '2021-03-18 04:13:10', '2021-03-18 04:13:10'),
('930aebdc-05b6-473e-8d78-9c4306cbfb7c', NULL, 'Dog-Dating Personal Access Client', 'PF8QOAx4o5LNmshSGcnO3qr4Dkn6cBVhURn3gtUV', NULL, 'http://localhost', 1, 0, 0, '2021-03-26 04:02:40', '2021-03-26 04:02:40'),
('930aebdc-446f-4049-97a1-838208620049', NULL, 'Dog-Dating Password Grant Client', 'siicosMGMClksnCdCv5PvKeeu78lWIgiqYF8B58B', 'users', 'http://localhost', 0, 1, 0, '2021-03-26 04:02:40', '2021-03-26 04:02:40'),
('9336ecbb-3809-43ff-81cb-14732775af65', NULL, 'Dog-Dating Personal Access Client', '0SD3MLKZ5SbuS3xANhoMRc3KLcxLY7zKK5QuYcJn', NULL, 'http://localhost', 1, 0, 0, '2021-04-17 01:01:32', '2021-04-17 01:01:32'),
('9336ecbb-41e1-47a0-995c-484a64734668', NULL, 'Dog-Dating Password Grant Client', 'EblYEgo8PzRXaeMUblcaNfDZvdUkpqMnNlEnd4DF', 'users', 'http://localhost', 0, 1, 0, '2021-04-17 01:01:32', '2021-04-17 01:01:32'),
('9336ecbc-01dd-49bc-b789-4781288889e8', NULL, 'Dog-Dating Personal Access Client', 'kMvI5pDe1nuXbQcehquJ1CyYGINrQyQ38lHY36mC', NULL, 'http://localhost', 1, 0, 0, '2021-04-17 01:01:32', '2021-04-17 01:01:32'),
('9336ecbc-082c-48e5-9f5c-0b6c8316d29b', NULL, 'Dog-Dating Password Grant Client', '7lbRrao1OndwVvX1Fl7UqIjm6mqVfCMV1bWzlq4g', 'users', 'http://localhost', 0, 1, 0, '2021-04-17 01:01:32', '2021-04-17 01:01:32'),
('9336ecbc-b591-4015-bd79-49a98b3d8a43', NULL, 'Dog-Dating Personal Access Client', 'Ry4R752rLyCNw6QrQ7F3wZksKQ3rsxiqOqYBDz3M', NULL, 'http://localhost', 1, 0, 0, '2021-04-17 01:01:33', '2021-04-17 01:01:33'),
('9336ecbc-bb96-43fe-9feb-31d0b34e9cc7', NULL, 'Dog-Dating Password Grant Client', 'nXbX0IhxONUbeXmU5FBcm0WtJgfvBnrD5OvqWkuJ', 'users', 'http://localhost', 0, 1, 0, '2021-04-17 01:01:33', '2021-04-17 01:01:33'),
('9336ecc0-98ed-4ead-856a-15f1f6b4eb7b', NULL, 'Dog-Dating Personal Access Client', 'TxEkrczsMCBMxYB1jR8UjpifMiewH2aek14gP3Iz', NULL, 'http://localhost', 1, 0, 0, '2021-04-17 01:01:35', '2021-04-17 01:01:35'),
('9336ecc0-a5af-4f4b-991f-5c12bfffceae', NULL, 'Dog-Dating Password Grant Client', 'sc9v9l3FXp1wQx7Io5dNguJhjEnobP5eZrrEp3ot', 'users', 'http://localhost', 0, 1, 0, '2021-04-17 01:01:35', '2021-04-17 01:01:35');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(5, '9336ecbb-3809-43ff-81cb-14732775af65', '2021-04-17 01:01:32', '2021-04-17 01:01:32'),
(6, '9336ecbc-01dd-49bc-b789-4781288889e8', '2021-04-17 01:01:32', '2021-04-17 01:01:32'),
(7, '9336ecbc-b591-4015-bd79-49a98b3d8a43', '2021-04-17 01:01:33', '2021-04-17 01:01:33'),
(8, '9336ecc0-98ed-4ead-856a-15f1f6b4eb7b', '2021-04-17 01:01:35', '2021-04-17 01:01:35');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL,
  `registered_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `verification_code` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `email`, `password`, `profile_image`, `role`, `registered_at`, `verification_code`, `is_verified`, `created_at`, `updated_at`) VALUES
(54, 'jdjalodara1', 'jdjalodara@gmail.com', '$2y$10$x3jcBjcXIdzHZ9MPKhrgYuVjf1UOiO6fR7Jz9p1bknWjsgMfBSp8e', NULL, 'user', '2021-04-17 07:02:17', NULL, 1, '2021-04-17 01:32:17', '2021-04-17 01:32:56');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
