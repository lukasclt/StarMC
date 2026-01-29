-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.6.21-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para blazeserver
CREATE DATABASE IF NOT EXISTS `minecraft` /*!40100 DEFAULT CHARACTER SET armscii8 COLLATE armscii8_bin */;
USE `minecraft`;

-- Copiando estrutura para tabela blazeserver.accounts
CREATE TABLE IF NOT EXISTS `accounts` (
  `index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(36) DEFAULT NULL,
  `username` varchar(16) DEFAULT NULL,
  `ranks` longtext DEFAULT NULL,
  `permissions` longtext DEFAULT NULL,
  `tags` longtext DEFAULT NULL,
  `clantags` longtext DEFAULT NULL,
  `medals` longtext DEFAULT NULL,
  `punishments` longtext DEFAULT NULL,
  `clan_id` int(100) DEFAULT NULL,
  `flags` int(100) DEFAULT NULL,
  `premium` varchar(10) DEFAULT NULL,
  `firstLogin` bigint(20) DEFAULT NULL,
  `lastLogin` bigint(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `banned` varchar(10) DEFAULT NULL,
  `muted` varchar(10) DEFAULT NULL,
  `friends` text DEFAULT '[]',
  `sent_friend_requests` text DEFAULT '[]',
  `received_friend_requests` text DEFAULT '[]',
  `nick_objects` text DEFAULT '[]',
  `pluscolors` text DEFAULT '[]',
  `friend_status` varchar(255) DEFAULT 'active',
  PRIMARY KEY (`index`),
  UNIQUE KEY `unique_id` (`unique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=322 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela blazeserver.accounts: ~2 rows (aproximadamente)
INSERT INTO `accounts` (`index`, `unique_id`, `username`, `ranks`, `permissions`, `tags`, `clantags`, `medals`, `punishments`, `clan_id`, `flags`, `premium`, `firstLogin`, `lastLogin`, `address`, `banned`, `muted`, `friends`, `sent_friend_requests`, `received_friend_requests`, `nick_objects`, `pluscolors`, `friend_status`) VALUES
	(10, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', '[{"rank":"6qx2d","expiration":-1,"added_by":"BlazeServer","added_at":1739631007101},{"rank":"dms0l","expiration":-1,"added_by":"BlazeServer","added_at":1739631025210},{"rank":"erv58","expiration":-1,"added_by":"BlazeServer","added_at":1740201298209}]', '[]', '[]', '[{"clanTag":"27adh","expiration":-1,"added_by":"Thormento","added_at":1739629997065}]', '[]', '[{"applier":"Thormento","applyDate":1739073224287,"time":1739091224278,"active":false,"reason":"Web Namoro","code":"hy8omv","type":"ban","category":"edating","unpunisher":"BlazeServer","unpunishDate":1739073255415},{"applier":"Thormento","applyDate":1739761850290,"time":-1,"active":false,"reason":"Web Namoro","code":"ywdoke","type":"ban","category":"edating","unpunisher":"BlazeServer","unpunishDate":1739761919326}]', 6, NULL, 'true', 1739072315493, 1740201319142, '127.0.0.1', 'false', NULL, '[]', '[]', '[]', '[]', '[]', 'SILENTVANISH'),
	(299, '4d74e801-2e8b-4cd5-b287-70a4fafe71be', 'ProgramaThor', '[]', '[]', '[]', '[]', '[]', NULL, NULL, NULL, 'true', 1740201284156, 1740201310050, '127.0.0.1', NULL, NULL, '[]', '[]', '[]', '[]', '[]', 'active');

-- Copiando estrutura para tabela blazeserver.anchor
CREATE TABLE IF NOT EXISTS `anchor` (
  `index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(36) DEFAULT NULL,
  `anchor_wins` int(100) DEFAULT NULL,
  `anchor_losses` int(100) DEFAULT NULL,
  `anchor_winstreak` int(100) DEFAULT NULL,
  `anchor_max_winstreak` int(100) DEFAULT NULL,
  `anchor_games` int(100) DEFAULT NULL,
  `anchor_rating` int(100) DEFAULT NULL,
  `anchor_inventory` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`index`),
  UNIQUE KEY `unique_id` (`unique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela blazeserver.anchor: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.auth
CREATE TABLE IF NOT EXISTS `auth` (
  `index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(36) DEFAULT NULL,
  `password` varchar(24) DEFAULT NULL,
  `session_address` varchar(50) DEFAULT NULL,
  `session_expiresAt` bigint(20) DEFAULT NULL,
  `registeredAt` bigint(20) DEFAULT NULL,
  `lastUpdate` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`index`),
  UNIQUE KEY `unique_id` (`unique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela blazeserver.auth: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.bedwars
CREATE TABLE IF NOT EXISTS `bedwars` (
  `index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(36) DEFAULT NULL,
  `wins` int(100) DEFAULT NULL,
  `losses` int(100) DEFAULT NULL,
  `kills` int(100) DEFAULT NULL,
  `deaths` int(100) DEFAULT NULL,
  `final_kills` int(100) DEFAULT NULL,
  `final_deaths` int(100) DEFAULT NULL,
  `beds_broken` int(100) DEFAULT NULL,
  `beds_lost` int(100) DEFAULT NULL,
  `games_played` int(100) DEFAULT NULL,
  `winstreak` int(100) DEFAULT NULL,
  `max_winstreak` int(100) DEFAULT NULL,
  `rank` int(100) DEFAULT NULL,
  `rank_exp` int(100) DEFAULT NULL,
  `solo_wins` int(100) DEFAULT NULL,
  `solo_losses` int(100) DEFAULT NULL,
  `solo_kills` int(100) DEFAULT NULL,
  `solo_deaths` int(100) DEFAULT NULL,
  `solo_finals` int(100) DEFAULT NULL,
  `solo_final_deaths` int(100) DEFAULT NULL,
  `solo_beds_broken` int(100) DEFAULT NULL,
  `solo_beds_lost` int(100) DEFAULT NULL,
  `solo_games_played` int(100) DEFAULT NULL,
  `solo_winstreak` int(100) DEFAULT NULL,
  `solo_max_winstreak` int(100) DEFAULT NULL,
  PRIMARY KEY (`index`),
  UNIQUE KEY `unique_id` (`unique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Copiando dados para a tabela blazeserver.bedwars: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.boxing
CREATE TABLE IF NOT EXISTS `boxing` (
  `index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(36) DEFAULT NULL,
  `boxing_wins` int(100) DEFAULT NULL,
  `boxing_losses` int(100) DEFAULT NULL,
  `boxing_winstreak` int(100) DEFAULT NULL,
  `boxing_max_winstreak` int(100) DEFAULT NULL,
  `boxing_games` int(100) DEFAULT NULL,
  `boxing_rating` int(100) DEFAULT NULL,
  `boxing_inventory` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`index`),
  UNIQUE KEY `unique_id` (`unique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela blazeserver.boxing: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.clans
CREATE TABLE IF NOT EXISTS `clans` (
  `index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `tag` varchar(16) NOT NULL,
  `members` longtext NOT NULL,
  `slots` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `creation` bigint(20) NOT NULL,
  `color` varchar(16) NOT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela blazeserver.clans: ~0 rows (aproximadamente)
INSERT INTO `clans` (`index`, `name`, `tag`, `members`, `slots`, `points`, `creation`, `color`) VALUES
	(6, 'BLAZE', 'BLAZE', '[{"name":"Thormento","uniqueId":"0ce630f9-9fe8-417f-8551-be08bbf3c929","role":"OWNER","join":1739741247721}]', 18, 0, 1739741247728, 'GOLD');

-- Copiando estrutura para tabela blazeserver.cosmetic
CREATE TABLE IF NOT EXISTS `cosmetic` (
  `index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(36) DEFAULT NULL,
  `accessory` varchar(100) DEFAULT NULL,
  `particle` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `titles` longtext DEFAULT NULL,
  PRIMARY KEY (`index`),
  UNIQUE KEY `unique_id` (`unique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Copiando dados para a tabela blazeserver.cosmetic: ~0 rows (aproximadamente)
INSERT INTO `cosmetic` (`index`, `unique_id`, `accessory`, `particle`, `title`, `titles`) VALUES
	(1, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'pula-pula', 'surpreso', NULL, NULL);

-- Copiando estrutura para tabela blazeserver.gladiator
CREATE TABLE IF NOT EXISTS `gladiator` (
  `index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(36) DEFAULT NULL,
  `gladiator_wins` int(100) DEFAULT NULL,
  `gladiator_losses` int(100) DEFAULT NULL,
  `gladiator_winstreak` int(100) DEFAULT NULL,
  `gladiator_max_winstreak` int(100) DEFAULT NULL,
  `gladiator_games` int(100) DEFAULT NULL,
  `gladiator_rating` int(100) DEFAULT NULL,
  `gladiator_inventory` varchar(5000) DEFAULT NULL,
  `old_soup_rating` int(100) DEFAULT NULL,
  `old_gladiator_inventory` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`index`),
  UNIQUE KEY `unique_id` (`unique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela blazeserver.gladiator: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.hungergames
CREATE TABLE IF NOT EXISTS `hungergames` (
  `index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(36) DEFAULT NULL,
  `hg_kills` int(100) DEFAULT NULL,
  `hg_deaths` int(100) DEFAULT NULL,
  `hg_wins` int(100) DEFAULT NULL,
  `hg_played_games` int(100) DEFAULT NULL,
  `hg_max_game_kills` int(100) DEFAULT NULL,
  `scrim_kills` int(100) DEFAULT NULL,
  `scrim_deaths` int(100) DEFAULT NULL,
  `scrim_wins` int(100) DEFAULT NULL,
  `scrim_played_games` int(100) DEFAULT NULL,
  `scrim_max_game_kills` int(100) DEFAULT NULL,
  `hg_rank` int(100) DEFAULT NULL,
  `hg_rank_exp` int(100) DEFAULT NULL,
  `scrim_rank` int(100) DEFAULT NULL,
  `scrim_rank_exp` int(100) DEFAULT NULL,
  `coins` int(100) DEFAULT NULL,
  `kits` longtext DEFAULT NULL,
  `dailyKit` longtext DEFAULT NULL,
  `points` int(100) DEFAULT NULL,
  PRIMARY KEY (`index`),
  UNIQUE KEY `unique_id` (`unique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela blazeserver.hungergames: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.logs
CREATE TABLE IF NOT EXISTS `logs` (
  `index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(36) NOT NULL,
  `nickname` varchar(16) NOT NULL,
  `server` varchar(20) NOT NULL,
  `content` tinytext NOT NULL,
  `type` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`index`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela blazeserver.logs: ~132 rows (aproximadamente)
INSERT INTO `logs` (`index`, `unique_id`, `nickname`, `server`, `content`, `type`, `created_at`) VALUES
	(141, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', 'a', 'CHAT', '2025-02-15 11:32:19'),
	(142, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan cortag', 'COMMAND', '2025-02-15 11:32:29'),
	(143, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan cortag dourada', 'COMMAND', '2025-02-15 11:32:34'),
	(144, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan cortag staf', 'COMMAND', '2025-02-15 11:32:42'),
	(145, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan cortag staff', 'COMMAND', '2025-02-15 11:32:45'),
	(146, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan cortag admin', 'COMMAND', '2025-02-15 11:32:50'),
	(147, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/acc Thormento clantag champion', 'COMMAND', '2025-02-15 11:33:17'),
	(148, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan cortag campeão', 'COMMAND', '2025-02-15 11:33:24'),
	(149, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan apagar', 'COMMAND', '2025-02-15 11:33:33'),
	(150, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan criar ImperioAlvarez ALVAREZ', 'COMMAND', '2025-02-15 11:33:45'),
	(151, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan cortag campeão', 'COMMAND', '2025-02-15 11:33:49'),
	(152, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan cortag partner+', 'COMMAND', '2025-02-15 11:33:59'),
	(153, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan cortag staff', 'COMMAND', '2025-02-15 11:34:08'),
	(154, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan cortag admin', 'COMMAND', '2025-02-15 11:34:13'),
	(155, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan ver', 'COMMAND', '2025-02-15 11:34:20'),
	(156, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan membros', 'COMMAND', '2025-02-15 11:34:25'),
	(157, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan cortag', 'COMMAND', '2025-02-15 11:34:39'),
	(158, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/tag', 'COMMAND', '2025-02-15 11:34:58'),
	(159, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/tag Admin', 'COMMAND', '2025-02-15 11:34:59'),
	(160, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan cortag partner+', 'COMMAND', '2025-02-15 11:35:07'),
	(161, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan apagar', 'COMMAND', '2025-02-15 11:35:15'),
	(162, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan criar Seyfert Seyfert', 'COMMAND', '2025-02-15 11:35:23'),
	(163, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan cortag staff', 'COMMAND', '2025-02-15 11:35:29'),
	(164, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan cortag partner+', 'COMMAND', '2025-02-15 11:35:34'),
	(165, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan cortag campeão', 'COMMAND', '2025-02-15 11:35:40'),
	(166, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan cortag admin', 'COMMAND', '2025-02-15 11:35:47'),
	(167, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/acc', 'COMMAND', '2025-02-15 11:35:55'),
	(168, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/', 'COMMAND', '2025-02-15 11:36:01'),
	(169, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/thor Thormento', 'COMMAND', '2025-02-15 11:36:44'),
	(170, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/acc', 'COMMAND', '2025-02-15 11:36:47'),
	(171, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan ver', 'COMMAND', '2025-02-15 11:36:59'),
	(172, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan membros', 'COMMAND', '2025-02-15 11:37:07'),
	(173, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/acc', 'COMMAND', '2025-02-15 11:37:57'),
	(174, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/ping', 'COMMAND', '2025-02-15 11:38:02'),
	(175, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan', 'COMMAND', '2025-02-15 11:38:03'),
	(176, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan loja', 'COMMAND', '2025-02-15 11:38:07'),
	(177, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan chat', 'COMMAND', '2025-02-15 11:38:12'),
	(178, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', 'a', 'CHAT', '2025-02-15 11:38:13'),
	(179, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan chat', 'COMMAND', '2025-02-15 11:38:16'),
	(180, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/v v', 'COMMAND', '2025-02-15 11:38:20'),
	(181, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/v v', 'COMMAND', '2025-02-15 11:38:22'),
	(182, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/bungee', 'COMMAND', '2025-02-15 11:38:59'),
	(183, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/yolo', 'COMMAND', '2025-02-15 11:39:20'),
	(184, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/version', 'COMMAND', '2025-02-15 11:39:24'),
	(185, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/walkids', 'COMMAND', '2025-02-15 11:39:27'),
	(186, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/cbum', 'COMMAND', '2025-02-15 11:39:40'),
	(187, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/sudo', 'COMMAND', '2025-02-15 11:39:51'),
	(188, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/recue', 'COMMAND', '2025-02-15 11:39:57'),
	(189, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/rescue', 'COMMAND', '2025-02-15 11:40:00'),
	(190, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/reward', 'COMMAND', '2025-02-15 11:40:13'),
	(191, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/setmotd &e TESTANDO MOTD', 'COMMAND', '2025-02-15 11:41:33'),
	(192, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/setmotd &e SERVIDOR EM DESENVOLVIMENTO', 'COMMAND', '2025-02-15 11:41:51'),
	(193, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/setmotd &eSERVIDOR EM DESENVOLVIMENTO', 'COMMAND', '2025-02-15 11:42:04'),
	(194, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/mute Thormento ofensa https://forum.blazemc.com.br/topic/22498494', 'COMMAND', '2025-02-15 11:42:55'),
	(195, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/thormento', 'COMMAND', '2025-02-15 11:43:27'),
	(196, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/whisper', 'COMMAND', '2025-02-15 11:43:58'),
	(197, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/denunciar', 'COMMAND', '2025-02-15 11:44:08'),
	(198, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/denunciar Thormento muito lindo', 'COMMAND', '2025-02-15 11:44:15'),
	(199, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/go Thormento', 'COMMAND', '2025-02-15 11:44:25'),
	(200, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan apagar', 'COMMAND', '2025-02-15 11:45:12'),
	(201, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/acc', 'COMMAND', '2025-02-15 11:48:20'),
	(202, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/prefs', 'COMMAND', '2025-02-15 11:48:49'),
	(203, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/acc Thormento rank developer', 'COMMAND', '2025-02-15 11:49:39'),
	(204, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/acc Thormento rank developer', 'COMMAND', '2025-02-15 11:49:41'),
	(205, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/prefs', 'COMMAND', '2025-02-15 11:50:10'),
	(206, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan membros', 'COMMAND', '2025-02-15 11:50:29'),
	(207, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/acc', 'COMMAND', '2025-02-15 11:50:31'),
	(208, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/acc', 'COMMAND', '2025-02-15 11:50:57'),
	(209, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/acc Thormento rank', 'COMMAND', '2025-02-16 15:12:04'),
	(210, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/acc Thormento rank bob', 'COMMAND', '2025-02-16 15:12:08'),
	(211, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan', 'COMMAND', '2025-02-16 15:12:30'),
	(212, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/ping', 'COMMAND', '2025-02-16 15:12:50'),
	(213, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/ping', 'COMMAND', '2025-02-16 15:12:51'),
	(214, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/ping', 'COMMAND', '2025-02-16 15:12:56'),
	(215, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/build', 'COMMAND', '2025-02-16 15:13:48'),
	(216, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/build', 'COMMAND', '2025-02-16 15:14:09'),
	(217, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/stats', 'COMMAND', '2025-02-16 15:15:07'),
	(218, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/vAR', 'COMMAND', '2025-02-16 15:17:49'),
	(219, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/vAR max_players 9000', 'COMMAND', '2025-02-16 15:17:57'),
	(220, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/setplayerlimit 10000', 'COMMAND', '2025-02-16 15:18:51'),
	(221, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/setplayerlimit 1000000', 'COMMAND', '2025-02-16 15:18:58'),
	(222, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/setplayerlimit 1', 'COMMAND', '2025-02-16 15:19:42'),
	(223, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/setplayerlimit 1', 'COMMAND', '2025-02-16 15:19:47'),
	(224, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/setplayerlimit 0', 'COMMAND', '2025-02-16 15:19:48'),
	(225, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/setplayerlimit 100', 'COMMAND', '2025-02-16 15:20:06'),
	(226, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/setplayerlimit 8001', 'COMMAND', '2025-02-16 15:20:26'),
	(227, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/setplayerlimit 2025', 'COMMAND', '2025-02-16 15:20:51'),
	(228, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/setmotd &aFELIZ ANO NOVO!!! 2026', 'COMMAND', '2025-02-16 15:21:44'),
	(229, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/setmotd &BFELIZ ANO NOVO!!! 2026', 'COMMAND', '2025-02-16 15:22:02'),
	(230, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/setmotd &ESERVIDOR EM DESENVOLVIMENTO', 'COMMAND', '2025-02-16 15:22:19'),
	(231, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan criar Seyfert SEYFERT', 'COMMAND', '2025-02-16 18:25:28'),
	(232, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan cortag', 'COMMAND', '2025-02-16 18:25:32'),
	(233, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan cortag staff', 'COMMAND', '2025-02-16 18:25:35'),
	(234, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan cortag partner+', 'COMMAND', '2025-02-16 18:25:38'),
	(235, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan apagar', 'COMMAND', '2025-02-16 18:27:24'),
	(236, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan criar BLAZE BLAZE', 'COMMAND', '2025-02-16 18:27:27'),
	(237, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan cortag campeão', 'COMMAND', '2025-02-16 18:27:31'),
	(238, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/acc', 'COMMAND', '2025-02-16 18:30:00'),
	(239, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/ping', 'COMMAND', '2025-02-16 18:30:34'),
	(240, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/ping', 'COMMAND', '2025-02-16 18:30:48'),
	(241, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/ping', 'COMMAND', '2025-02-16 18:30:49'),
	(242, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/ping', 'COMMAND', '2025-02-16 18:30:49'),
	(243, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/ping', 'COMMAND', '2025-02-16 18:30:50'),
	(244, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/ping', 'COMMAND', '2025-02-16 18:30:51'),
	(245, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/ping', 'COMMAND', '2025-02-16 18:30:51'),
	(246, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/ping', 'COMMAND', '2025-02-16 18:31:27'),
	(247, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/punish ban webnamoro 1y', 'COMMAND', '2025-02-17 00:10:40'),
	(248, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/punish ban webnamoro n Thormento Web Namoro', 'COMMAND', '2025-02-17 00:10:50'),
	(249, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/anuncio É extremamente probido o uso de pronome neutro dentro deste servidor.', 'COMMAND', '2025-02-17 00:12:56'),
	(250, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/anuncio Jao Gay Do Anal', 'COMMAND', '2025-02-18 13:20:43'),
	(251, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/acc', 'COMMAND', '2025-02-18 13:22:01'),
	(252, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', 'a', 'CHAT', '2025-02-18 13:22:30'),
	(253, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan', 'COMMAND', '2025-02-18 13:22:34'),
	(254, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/clan tagdisplay off', 'COMMAND', '2025-02-18 13:22:38'),
	(255, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/acc', 'COMMAND', '2025-02-19 00:23:58'),
	(256, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/gm o0', 'COMMAND', '2025-02-19 00:25:18'),
	(257, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/gm o', 'COMMAND', '2025-02-19 00:25:20'),
	(258, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/gm 0', 'COMMAND', '2025-02-19 00:25:22'),
	(259, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/ping', 'COMMAND', '2025-02-19 00:25:35'),
	(260, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/idioma', 'COMMAND', '2025-02-19 00:25:43'),
	(261, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/idioma', 'COMMAND', '2025-02-19 00:25:46'),
	(262, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/ping', 'COMMAND', '2025-02-19 00:25:48'),
	(263, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/idioma', 'COMMAND', '2025-02-19 00:26:30'),
	(264, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/bungee', 'COMMAND', '2025-02-19 00:27:09'),
	(265, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/about', 'COMMAND', '2025-02-19 00:27:37'),
	(266, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/help', 'COMMAND', '2025-02-19 00:27:42'),
	(267, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/arcadedev', 'COMMAND', '2025-02-19 00:27:51'),
	(268, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/arcadedev bedwars 3 2', 'COMMAND', '2025-02-19 00:28:03'),
	(269, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/build', 'COMMAND', '2025-02-19 00:28:11'),
	(270, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/build', 'COMMAND', '2025-02-19 00:28:13'),
	(271, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/gobuild', 'COMMAND', '2025-02-19 00:28:15'),
	(272, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/evento', 'COMMAND', '2025-02-19 00:28:21'),
	(273, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Thormento', 'lobby1a', '/acc Thormento setnick Isxbellaa', 'COMMAND', '2025-02-22 02:15:27'),
	(274, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Isxbellaa', 'lobby1a', '/tag', 'COMMAND', '2025-02-22 02:15:30'),
	(275, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Isxbellaa', 'lobby1a', '/tag Mod+', 'COMMAND', '2025-02-22 02:15:34'),
	(276, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Isxbellaa', 'lobby1a', 'Eu prometo que vou jogar Habbo com você.', 'CHAT', '2025-02-22 02:15:44'),
	(277, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Isxbellaa', 'lobby1a', 'Vou cumprir e nao posso desfalar', 'CHAT', '2025-02-22 02:15:51'),
	(278, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Isxbellaa', 'lobby1a', 'Eu prometo, juro', 'CHAT', '2025-02-22 02:15:55'),
	(279, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Isxbellaa', 'lobby1a', '/build', 'COMMAND', '2025-02-22 02:19:15'),
	(280, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Isxbellaa', 'lobby1a', '/save-all', 'COMMAND', '2025-02-22 02:19:28');

-- Copiando estrutura para tabela blazeserver.other
CREATE TABLE IF NOT EXISTS `other` (
  `index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(36) DEFAULT NULL,
  `nick` varchar(16) DEFAULT NULL,
  `tag` varchar(6) DEFAULT NULL,
  `clantag` varchar(6) DEFAULT NULL,
  `language` varchar(6) DEFAULT NULL,
  `prefixtype` varchar(6) DEFAULT NULL,
  `medal` varchar(6) DEFAULT NULL,
  `preferences` int(100) DEFAULT NULL,
  `skin` longtext DEFAULT NULL,
  `blocks` longtext DEFAULT NULL,
  `ultra_plus_months` int(11) DEFAULT 0,
  `last_nick` varchar(255) DEFAULT '',
  `pluscolor` text DEFAULT 'default_color',
  PRIMARY KEY (`index`),
  UNIQUE KEY `unique_id` (`unique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela blazeserver.other: ~2 rows (aproximadamente)
INSERT INTO `other` (`index`, `unique_id`, `nick`, `tag`, `clantag`, `language`, `prefixtype`, `medal`, `preferences`, `skin`, `blocks`, `ultra_plus_months`, `last_nick`, `pluscolor`) VALUES
	(14, '0ce630f9-9fe8-417f-8551-be08bbf3c929', 'Isxbellaa', 'CYrov', NULL, 'VIxPa', NULL, NULL, NULL, '{"name":"Thormento","value":"ewogICJ0aW1lc3RhbXAiIDogMTc0MDIwMTMyNTA0MCwKICAicHJvZmlsZUlkIiA6ICIwY2U2MzBmOTlmZTg0MTdmODU1MWJlMDhiYmYzYzkyOSIsCiAgInByb2ZpbGVOYW1lIiA6ICJUaG9ybWVudG8iLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2M2MjRmOTliOGM3NzM5MzgxMTRjZmM4OGM1NzU1ZGYzM2ZiNTFhMTQxYTI0ODY5ZjM4Y2YyZjYxN2IyZDhhZiIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9LAogICAgIkNBUEUiIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzU2OWI3ZjJhMWQwMGQyNmYzMGVmZTNmOWFiOWFjODE3YjFlNmQzNWY0ZjNjZmIwMzI0ZWYyZDMyODIyM2QzNTAiCiAgICB9CiAgfQp9","signature":"Y2ztEiPZAa6RnUi0rj07Fcsx6kpLSv34PqvBDgyTP6NSMc7s7gBOeDCLhhZrnovI7LpC4GNp3yuigs42P1u84HtKZkEJ4EwVmPRPe0IFa8SjCXIxUpNPsvUxJ+QKkk3j8Na5LOv9/XT0wRoIFDMdRFWyu+qH5VOli3XBveIPA6KRZuDExBzmeR2ptdl5x7Pj9CZyHQ9eDT8JJcl+R6Gs1XfbC4H8J7pC3i8kPD6WiISbgWdVwMICjcEXXlTPiRRW4kH3JMDDv9lDHRfaxqrnvVu85jXks15C/bUabWVKisEWtBN1LxBWKah4GI6051W12tkltGJt/JdhMnf5WpGeIk2AyxJrRm+0MVK+hdK9vJ/W1fbROCvCEcwdC05xCmumUppm6vTcRCtqFSeIos/kBFxX2n9OA+/JvBvP0Ul6g/foCJ4aknzO0U5qYkDagm+KTOM4RDTNGjTwG+rKoVUFcQU6Mc4sjPAlYG43EgwypfUDRkuzbt+ab2BUL5ePw7C7MCL1rfcBsWSXlB/k2POQ/k8+iVsvziHhHbTdimFw6hNDVBA/Uplop/8QttidzBC/2vR1BlmKb8BSlHG//wrBDf7dObnCa7QGMROHniSvWOpoFLCVswZ7T3qwrFYDn6S0eMuoyr6z0MbbYVpcvcsFZIxJ8od/jL/GkrLcSuEAj3M=","source":"ACCOUNT","updatedAt":1740201319140}', NULL, 0, 'Isxbellaa', 'default_color'),
	(92, '4d74e801-2e8b-4cd5-b287-70a4fafe71be', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"ProgramaThor","value":"ewogICJ0aW1lc3RhbXAiIDogMTc0MDIwMTMxNTk0NSwKICAicHJvZmlsZUlkIiA6ICI0ZDc0ZTgwMTJlOGI0Y2Q1YjI4NzcwYTRmYWZlNzFiZSIsCiAgInByb2ZpbGVOYW1lIiA6ICJQcm9ncmFtYVRob3IiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2M2MjRmOTliOGM3NzM5MzgxMTRjZmM4OGM1NzU1ZGYzM2ZiNTFhMTQxYTI0ODY5ZjM4Y2YyZjYxN2IyZDhhZiIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9","signature":"yayMGcdHHmLsWUrJRdVDz9Avb4mnS8CAhAymJHrw4VnjQAA92GD7GaAFDZNi59FELz5Ea4pTiJ3Icwao14pMLRQAIAHH5iBJaRLNHAfWSVZn1zO8nOmuORb4EsTdUJSxxo7HXjqFY2D41tMzIfzs3WFbZQ51bBDvUHRUl1jvrVrqotTX/7MWxXl9K4AeEB5cyuMcacO3iQECS54ON6QSVaMMr2XYTp2qS6kAtiVrgCjV1qsKwNd2cuNf/XvyMePA2AW8c+ZUDu0UXaR1WZv8ncgw3u0H2fMsqp1QkeZxF2lDYAxAfKHKP5rn3M0BcQGsc7QgLrpjOIgMDwadyWtonn5T43bmEICcSRs9vmc963y/M8vwzzzVH4Dvl11ThcH0wc6qJr7mW4+TuoaRMdOSdRAFXtjgmm24nWOJ4qEwOF2Ikl0NbJZhW9sbJvLCZrX6qaTE4LtmYwbx7B39Oj/EZy0eU0GOMkrjixMQIwThN6Yo4/YrMxfWOav8Stg9oetCSMKQotafomfq6YsQ6ZecnUnh1nCwJ5s67SURWgdC3k+BJqQ1AeMVRBF3nGx4ikJETewZMh8yd3NNCsdC3yGYx51JVs6t0a9UVF8+lWKC7N8V0GJMkH4sft5Hm8eaB2Tubck+0kCI8i0ocfe6MaOlQ0rqBfstHzhH6oHsbOjA1NQ=","source":"ACCOUNT","updatedAt":1740201310047}', NULL, 0, '', 'default_color');

-- Copiando estrutura para tabela blazeserver.parkour
CREATE TABLE IF NOT EXISTS `parkour` (
  `main_lobby_parkour_record` int(100) DEFAULT NULL,
  `the_bridge_lobby_parkour_record` int(100) DEFAULT NULL,
  `duels_lobby_parkour_record` int(100) DEFAULT NULL,
  `hungergames_lobby_parkour_record` int(100) DEFAULT NULL,
  `pvp_lobby_parkour_record` int(100) DEFAULT NULL,
  `unique_id` varchar(36) DEFAULT NULL,
  `main_parkour_record` int(11) DEFAULT NULL,
  `friend_status` varchar(255) DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Copiando dados para a tabela blazeserver.parkour: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.pvp
CREATE TABLE IF NOT EXISTS `pvp` (
  `index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(36) DEFAULT NULL,
  `arena_kills` int(100) DEFAULT NULL,
  `arena_deaths` int(100) DEFAULT NULL,
  `arena_killstreak` int(100) DEFAULT NULL,
  `arena_max_killstreak` int(100) DEFAULT NULL,
  `fps_kills` int(100) DEFAULT NULL,
  `fps_deaths` int(100) DEFAULT NULL,
  `fps_killstreak` int(100) DEFAULT NULL,
  `fps_max_killstreak` int(100) DEFAULT NULL,
  `damage_settings` longtext DEFAULT NULL,
  `rank` int(100) DEFAULT NULL,
  `rank_exp` int(100) DEFAULT NULL,
  `coins` int(100) DEFAULT NULL,
  `kits` longtext DEFAULT NULL,
  `damage_easy` int(100) DEFAULT NULL,
  `damage_medium` int(100) DEFAULT NULL,
  `damage_hard` int(100) DEFAULT NULL,
  `damage_extreme` int(100) DEFAULT NULL,
  PRIMARY KEY (`index`),
  UNIQUE KEY `unique_id` (`unique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela blazeserver.pvp: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.scrim
CREATE TABLE IF NOT EXISTS `scrim` (
  `index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(36) DEFAULT NULL,
  `scrim_wins` int(100) DEFAULT NULL,
  `scrim_losses` int(100) DEFAULT NULL,
  `scrim_winstreak` int(100) DEFAULT NULL,
  `scrim_max_winstreak` int(100) DEFAULT NULL,
  `scrim_games` int(100) DEFAULT NULL,
  `scrim_rating` int(100) DEFAULT NULL,
  `scrim_inventory` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`index`),
  UNIQUE KEY `unique_id` (`unique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela blazeserver.scrim: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.simulator
CREATE TABLE IF NOT EXISTS `simulator` (
  `index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(36) DEFAULT NULL,
  `simulator_wins` int(100) DEFAULT NULL,
  `simulator_losses` int(100) DEFAULT NULL,
  `simulator_winstreak` int(100) DEFAULT NULL,
  `simulator_max_winstreak` int(100) DEFAULT NULL,
  `simulator_games` int(100) DEFAULT NULL,
  `simulator_rating` int(100) DEFAULT NULL,
  `simulator_inventory` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`index`),
  UNIQUE KEY `unique_id` (`unique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela blazeserver.simulator: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.soup
CREATE TABLE IF NOT EXISTS `soup` (
  `index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(36) DEFAULT NULL,
  `soup_wins` int(100) DEFAULT NULL,
  `soup_losses` int(100) DEFAULT NULL,
  `soup_winstreak` int(100) DEFAULT NULL,
  `soup_max_winstreak` int(100) DEFAULT NULL,
  `soup_games` int(100) DEFAULT NULL,
  `soup_rating` int(100) DEFAULT NULL,
  `soup_inventory` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`index`),
  UNIQUE KEY `unique_id` (`unique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela blazeserver.soup: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.staff
CREATE TABLE IF NOT EXISTS `staff` (
  `index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(36) DEFAULT NULL,
  `weekly_bans` int(100) DEFAULT NULL,
  `weekly_events` int(100) DEFAULT NULL,
  `weekly_mutes` int(100) DEFAULT NULL,
  `monthly_bans` int(100) DEFAULT NULL,
  `monthly_events` int(100) DEFAULT NULL,
  `monthly_mutes` int(100) DEFAULT NULL,
  `lifetime_bans` int(100) DEFAULT NULL,
  `lifetime_events` int(100) DEFAULT NULL,
  `lifetime_mutes` int(100) DEFAULT NULL,
  PRIMARY KEY (`index`),
  UNIQUE KEY `unique_id` (`unique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela blazeserver.staff: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.sumo
CREATE TABLE IF NOT EXISTS `sumo` (
  `index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(36) DEFAULT NULL,
  `sumo_wins` int(100) DEFAULT NULL,
  `sumo_losses` int(100) DEFAULT NULL,
  `sumo_winstreak` int(100) DEFAULT NULL,
  `sumo_max_winstreak` int(100) DEFAULT NULL,
  `sumo_games` int(100) DEFAULT NULL,
  `sumo_rating` int(100) DEFAULT NULL,
  `sumo_inventory` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`index`),
  UNIQUE KEY `unique_id` (`unique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela blazeserver.sumo: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.the_bridge
CREATE TABLE IF NOT EXISTS `the_bridge` (
  `index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(36) DEFAULT NULL,
  `solo_wins` int(100) DEFAULT NULL,
  `solo_losses` int(100) DEFAULT NULL,
  `solo_kills` int(100) DEFAULT NULL,
  `solo_deaths` int(100) DEFAULT NULL,
  `solo_points` int(100) DEFAULT NULL,
  `solo_rounds` int(100) DEFAULT NULL,
  `solo_winstreak` int(100) DEFAULT NULL,
  `solo_max_winstreak` int(100) DEFAULT NULL,
  `doubles_wins` int(100) DEFAULT NULL,
  `doubles_losses` int(100) DEFAULT NULL,
  `doubles_kills` int(100) DEFAULT NULL,
  `doubles_deaths` int(100) DEFAULT NULL,
  `doubles_points` int(100) DEFAULT NULL,
  `doubles_rounds` int(100) DEFAULT NULL,
  `doubles_winstreak` int(100) DEFAULT NULL,
  `doubles_max_winstreak` int(100) DEFAULT NULL,
  `coins` int(100) DEFAULT NULL,
  `rank` int(100) DEFAULT NULL,
  `rank_exp` int(100) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`index`),
  UNIQUE KEY `unique_id` (`unique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela blazeserver.the_bridge: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.tiogerson
CREATE TABLE IF NOT EXISTS `tiogerson` (
  `index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(36) DEFAULT NULL,
  `tiogerson_wins` int(100) DEFAULT NULL,
  `tiogerson_losses` int(100) DEFAULT NULL,
  `tiogerson_winstreak` int(100) DEFAULT NULL,
  `tiogerson_max_winstreak` int(100) DEFAULT NULL,
  `tiogerson_games` int(100) DEFAULT NULL,
  PRIMARY KEY (`index`),
  UNIQUE KEY `unique_id` (`unique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Copiando dados para a tabela blazeserver.tiogerson: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.uhc
CREATE TABLE IF NOT EXISTS `uhc` (
  `index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(36) DEFAULT NULL,
  `uhc_wins` int(100) DEFAULT NULL,
  `uhc_losses` int(100) DEFAULT NULL,
  `uhc_winstreak` int(100) DEFAULT NULL,
  `uhc_max_winstreak` int(100) DEFAULT NULL,
  `uhc_games` int(100) DEFAULT NULL,
  `uhc_rating` int(100) DEFAULT NULL,
  `uhc_inventory` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`index`),
  UNIQUE KEY `unique_id` (`unique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela blazeserver.uhc: ~0 rows (aproximadamente)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
