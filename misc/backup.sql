-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.32-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.8.0.6908
-- --------------------------------------------------------

@OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT 
SET NAMES utf8 ;
SET NAMES utf8mb4 ;
SET @OLD_TIME_ZONE=@@TIME_ZONE ;
SET TIME_ZONE='+00:00' ;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 ;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' ;
SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 ;


-- Copiando estrutura do banco de dados para blazeserver
CREATE DATABASE IF NOT EXISTS `minecraft` DEFAULT CHARACTER SET armscii8 COLLATE armscii8_bin ;
USE `minecraft`;

CREATE USER IF NOT EXISTS 'server'@'localhost' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON minecraft.* TO 'server'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

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
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela blazeserver.accounts: ~1 rows (aproximadamente)
INSERT INTO `accounts` (`index`, `unique_id`, `username`, `ranks`, `permissions`, `tags`, `clantags`, `medals`, `punishments`, `clan_id`, `flags`, `premium`, `firstLogin`, `lastLogin`, `address`, `banned`, `muted`, `friends`, `sent_friend_requests`, `received_friend_requests`, `nick_objects`, `pluscolors`, `friend_status`) VALUES
	(10, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', '[{"rank":"erv58","expiration":-1,"added_by":"BlazeServer","added_at":1739072368203},{"rank":"6qx2d","expiration":-1,"added_by":"BlazeServer","added_at":1739631007101},{"rank":"dms0l","expiration":-1,"added_by":"BlazeServer","added_at":1739631025210}]', '[]', '[]', '[{"clanTag":"27adh","expiration":-1,"added_by":"DanariusBR","added_at":1739629997065}]', '[]', '[{"applier":"DanariusBR","applyDate":1739761850290,"time":-1,"active":false,"reason":"Web Namoro","code":"ywdoke","type":"ban","category":"edating","unpunisher":"BlazeServer","unpunishDate":1739761919326},{"applier":"DanariusBR","applyDate":1739073224287,"time":1739091224278,"active":false,"reason":"Web Namoro","code":"hy8omv","type":"ban","category":"edating","unpunisher":"BlazeServer","unpunishDate":1739073255415}]', 6, NULL, 'true', 1739072315493, 1739761943376, '127.0.0.1', 'false', NULL, '[]', '[]', '[]', '[]', '[]', 'SILENTVANISH');

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
	(6, 'BLAZE', 'BLAZE', '[{"name":"DanariusBR","uniqueId":"fda5d680-c125-471e-8478-f0c622fd3210","role":"OWNER","join":1739741247721}]', 18, 0, 1739741247728, 'GOLD');

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

-- Copiando dados para a tabela blazeserver.cosmetic: ~1 rows (aproximadamente)
INSERT INTO `cosmetic` (`index`, `unique_id`, `accessory`, `particle`, `title`, `titles`) VALUES
	(1, 'fda5d680-c125-471e-8478-f0c622fd3210', 'pula-pula', 'surpreso', NULL, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela blazeserver.logs: ~154 rows (aproximadamente)
INSERT INTO `logs` (`index`, `unique_id`, `nickname`, `server`, `content`, `type`, `created_at`) VALUES
	(93, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', 'a', 'CHAT', '2025-02-09 00:39:08'),
	(94, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/lang', 'COMMAND', '2025-02-09 00:39:48'),
	(95, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/lang', 'COMMAND', '2025-02-09 00:39:57'),
	(96, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/acc', 'COMMAND', '2025-02-09 00:40:13'),
	(97, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/amigos', 'COMMAND', '2025-02-09 00:40:59'),
	(98, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/amigo teste', 'COMMAND', '2025-02-09 00:41:03'),
	(99, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/thor DanariusBR', 'COMMAND', '2025-02-09 00:41:09'),
	(100, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan criar BLAZE BLAZE', 'COMMAND', '2025-02-09 00:41:19'),
	(101, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan cortag', 'COMMAND', '2025-02-09 00:41:24'),
	(102, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan cortag staf', 'COMMAND', '2025-02-09 00:42:47'),
	(103, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan cortag', 'COMMAND', '2025-02-09 00:42:50'),
	(104, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', 'a', 'CHAT', '2025-02-09 00:43:02'),
	(105, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/bc a', 'COMMAND', '2025-02-09 00:43:04'),
	(106, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/reward', 'COMMAND', '2025-02-09 00:47:42'),
	(107, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/acc', 'COMMAND', '2025-02-09 00:49:33'),
	(108, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/amigo adicionar', 'COMMAND', '2025-02-09 00:49:45'),
	(109, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/amigo list', 'COMMAND', '2025-02-09 00:49:50'),
	(110, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan membros', 'COMMAND', '2025-02-09 00:49:52'),
	(111, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan membros', 'COMMAND', '2025-02-09 00:49:57'),
	(112, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan ver', 'COMMAND', '2025-02-09 00:49:59'),
	(113, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan cortag ciana', 'COMMAND', '2025-02-09 00:50:12'),
	(114, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan cortag staff', 'COMMAND', '2025-02-09 00:50:16'),
	(115, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan cortag', 'COMMAND', '2025-02-09 00:50:20'),
	(116, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan cortag partner+', 'COMMAND', '2025-02-09 00:50:37'),
	(117, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/build', 'COMMAND', '2025-02-09 00:52:21'),
	(118, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/build', 'COMMAND', '2025-02-09 00:52:23'),
	(119, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan', 'COMMAND', '2025-02-09 00:52:43'),
	(120, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/cban DanariusBR', 'COMMAND', '2025-02-09 00:52:49'),
	(121, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/cban DanariusBR reach', 'COMMAND', '2025-02-09 00:52:51'),
	(122, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/p ban DanariusBR 5h', 'COMMAND', '2025-02-09 00:53:29'),
	(123, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/p ban DanariusBR 5h DanariusBR', 'COMMAND', '2025-02-09 00:53:32'),
	(124, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/p ban webnamoro 5h DanariusBR Web Namoro', 'COMMAND', '2025-02-09 00:53:44'),
	(125, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/skin', 'COMMAND', '2025-02-09 00:54:40'),
	(126, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/skin reset', 'COMMAND', '2025-02-09 00:54:47'),
	(127, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/tag', 'COMMAND', '2025-02-09 00:54:59'),
	(128, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/tag Blaze+2', 'COMMAND', '2025-02-09 00:55:05'),
	(129, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/vanish', 'COMMAND', '2025-02-09 00:55:24'),
	(130, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', 'a', 'CHAT', '2025-02-09 00:55:31'),
	(131, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/reload_leaderboard_staff_monthly_', 'COMMAND', '2025-02-09 00:55:47'),
	(132, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/reload_leaderboard_staff_monthly_mutes', 'COMMAND', '2025-02-09 00:55:50'),
	(133, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/reload_leaderboard_staff_monthly_bans', 'COMMAND', '2025-02-09 00:55:52'),
	(134, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/', 'COMMAND', '2025-02-09 00:56:27'),
	(135, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/p ban homofobia', 'COMMAND', '2025-02-09 00:56:55'),
	(136, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/p ban homofobia n DanariusBR Homofobia', 'COMMAND', '2025-02-09 00:57:06'),
	(137, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/p ban homofobia n DanariusBR Homofobia', 'COMMAND', '2025-02-09 00:57:13'),
	(138, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/p ban uso de trapaça DanariusBR', 'COMMAND', '2025-02-09 00:57:24'),
	(139, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/p ban construção DanariusBR DanariusBR', 'COMMAND', '2025-02-09 00:57:48'),
	(140, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/bungee', 'COMMAND', '2025-02-09 00:58:55'),
	(141, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', 'a', 'CHAT', '2025-02-15 11:32:19'),
	(142, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan cortag', 'COMMAND', '2025-02-15 11:32:29'),
	(143, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan cortag dourada', 'COMMAND', '2025-02-15 11:32:34'),
	(144, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan cortag staf', 'COMMAND', '2025-02-15 11:32:42'),
	(145, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan cortag staff', 'COMMAND', '2025-02-15 11:32:45'),
	(146, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan cortag admin', 'COMMAND', '2025-02-15 11:32:50'),
	(147, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/acc DanariusBR clantag champion', 'COMMAND', '2025-02-15 11:33:17'),
	(148, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan cortag campeão', 'COMMAND', '2025-02-15 11:33:24'),
	(149, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan apagar', 'COMMAND', '2025-02-15 11:33:33'),
	(150, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan criar ImperioAlvarez ALVAREZ', 'COMMAND', '2025-02-15 11:33:45'),
	(151, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan cortag campeão', 'COMMAND', '2025-02-15 11:33:49'),
	(152, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan cortag partner+', 'COMMAND', '2025-02-15 11:33:59'),
	(153, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan cortag staff', 'COMMAND', '2025-02-15 11:34:08'),
	(154, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan cortag admin', 'COMMAND', '2025-02-15 11:34:13'),
	(155, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan ver', 'COMMAND', '2025-02-15 11:34:20'),
	(156, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan membros', 'COMMAND', '2025-02-15 11:34:25'),
	(157, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan cortag', 'COMMAND', '2025-02-15 11:34:39'),
	(158, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/tag', 'COMMAND', '2025-02-15 11:34:58'),
	(159, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/tag Admin', 'COMMAND', '2025-02-15 11:34:59'),
	(160, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan cortag partner+', 'COMMAND', '2025-02-15 11:35:07'),
	(161, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan apagar', 'COMMAND', '2025-02-15 11:35:15'),
	(162, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan criar Seyfert Seyfert', 'COMMAND', '2025-02-15 11:35:23'),
	(163, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan cortag staff', 'COMMAND', '2025-02-15 11:35:29'),
	(164, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan cortag partner+', 'COMMAND', '2025-02-15 11:35:34'),
	(165, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan cortag campeão', 'COMMAND', '2025-02-15 11:35:40'),
	(166, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan cortag admin', 'COMMAND', '2025-02-15 11:35:47'),
	(167, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/acc', 'COMMAND', '2025-02-15 11:35:55'),
	(168, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/', 'COMMAND', '2025-02-15 11:36:01'),
	(169, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/thor DanariusBR', 'COMMAND', '2025-02-15 11:36:44'),
	(170, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/acc', 'COMMAND', '2025-02-15 11:36:47'),
	(171, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan ver', 'COMMAND', '2025-02-15 11:36:59'),
	(172, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan membros', 'COMMAND', '2025-02-15 11:37:07'),
	(173, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/acc', 'COMMAND', '2025-02-15 11:37:57'),
	(174, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/ping', 'COMMAND', '2025-02-15 11:38:02'),
	(175, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan', 'COMMAND', '2025-02-15 11:38:03'),
	(176, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan loja', 'COMMAND', '2025-02-15 11:38:07'),
	(177, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan chat', 'COMMAND', '2025-02-15 11:38:12'),
	(178, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', 'a', 'CHAT', '2025-02-15 11:38:13'),
	(179, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan chat', 'COMMAND', '2025-02-15 11:38:16'),
	(180, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/v v', 'COMMAND', '2025-02-15 11:38:20'),
	(181, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/v v', 'COMMAND', '2025-02-15 11:38:22'),
	(182, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/bungee', 'COMMAND', '2025-02-15 11:38:59'),
	(183, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/yolo', 'COMMAND', '2025-02-15 11:39:20'),
	(184, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/version', 'COMMAND', '2025-02-15 11:39:24'),
	(185, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/walkids', 'COMMAND', '2025-02-15 11:39:27'),
	(186, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/cbum', 'COMMAND', '2025-02-15 11:39:40'),
	(187, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/sudo', 'COMMAND', '2025-02-15 11:39:51'),
	(188, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/recue', 'COMMAND', '2025-02-15 11:39:57'),
	(189, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/rescue', 'COMMAND', '2025-02-15 11:40:00'),
	(190, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/reward', 'COMMAND', '2025-02-15 11:40:13'),
	(191, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/setmotd &e TESTANDO MOTD', 'COMMAND', '2025-02-15 11:41:33'),
	(192, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/setmotd &e SERVIDOR EM DESENVOLVIMENTO', 'COMMAND', '2025-02-15 11:41:51'),
	(193, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/setmotd &eSERVIDOR EM DESENVOLVIMENTO', 'COMMAND', '2025-02-15 11:42:04'),
	(194, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/mute DanariusBR ofensa https://forum.blazemc.com.br/topic/22498494', 'COMMAND', '2025-02-15 11:42:55'),
	(195, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/DanariusBR', 'COMMAND', '2025-02-15 11:43:27'),
	(196, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/whisper', 'COMMAND', '2025-02-15 11:43:58'),
	(197, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/denunciar', 'COMMAND', '2025-02-15 11:44:08'),
	(198, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/denunciar DanariusBR muito lindo', 'COMMAND', '2025-02-15 11:44:15'),
	(199, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/go DanariusBR', 'COMMAND', '2025-02-15 11:44:25'),
	(200, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan apagar', 'COMMAND', '2025-02-15 11:45:12'),
	(201, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/acc', 'COMMAND', '2025-02-15 11:48:20'),
	(202, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/prefs', 'COMMAND', '2025-02-15 11:48:49'),
	(203, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/acc DanariusBR rank developer', 'COMMAND', '2025-02-15 11:49:39'),
	(204, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/acc DanariusBR rank developer', 'COMMAND', '2025-02-15 11:49:41'),
	(205, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/prefs', 'COMMAND', '2025-02-15 11:50:10'),
	(206, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan membros', 'COMMAND', '2025-02-15 11:50:29'),
	(207, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/acc', 'COMMAND', '2025-02-15 11:50:31'),
	(208, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/acc', 'COMMAND', '2025-02-15 11:50:57'),
	(209, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/acc DanariusBR rank', 'COMMAND', '2025-02-16 15:12:04'),
	(210, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/acc DanariusBR rank bob', 'COMMAND', '2025-02-16 15:12:08'),
	(211, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan', 'COMMAND', '2025-02-16 15:12:30'),
	(212, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/ping', 'COMMAND', '2025-02-16 15:12:50'),
	(213, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/ping', 'COMMAND', '2025-02-16 15:12:51'),
	(214, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/ping', 'COMMAND', '2025-02-16 15:12:56'),
	(215, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/build', 'COMMAND', '2025-02-16 15:13:48'),
	(216, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/build', 'COMMAND', '2025-02-16 15:14:09'),
	(217, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/stats', 'COMMAND', '2025-02-16 15:15:07'),
	(218, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/vAR', 'COMMAND', '2025-02-16 15:17:49'),
	(219, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/vAR max_players 9000', 'COMMAND', '2025-02-16 15:17:57'),
	(220, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/setplayerlimit 10000', 'COMMAND', '2025-02-16 15:18:51'),
	(221, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/setplayerlimit 1000000', 'COMMAND', '2025-02-16 15:18:58'),
	(222, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/setplayerlimit 1', 'COMMAND', '2025-02-16 15:19:42'),
	(223, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/setplayerlimit 1', 'COMMAND', '2025-02-16 15:19:47'),
	(224, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/setplayerlimit 0', 'COMMAND', '2025-02-16 15:19:48'),
	(225, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/setplayerlimit 100', 'COMMAND', '2025-02-16 15:20:06'),
	(226, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/setplayerlimit 8001', 'COMMAND', '2025-02-16 15:20:26'),
	(227, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/setplayerlimit 2025', 'COMMAND', '2025-02-16 15:20:51'),
	(228, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/setmotd &aFELIZ ANO NOVO!!! 2026', 'COMMAND', '2025-02-16 15:21:44'),
	(229, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/setmotd &BFELIZ ANO NOVO!!! 2026', 'COMMAND', '2025-02-16 15:22:02'),
	(230, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/setmotd &ESERVIDOR EM DESENVOLVIMENTO', 'COMMAND', '2025-02-16 15:22:19'),
	(231, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan criar Seyfert SEYFERT', 'COMMAND', '2025-02-16 18:25:28'),
	(232, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan cortag', 'COMMAND', '2025-02-16 18:25:32'),
	(233, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan cortag staff', 'COMMAND', '2025-02-16 18:25:35'),
	(234, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan cortag partner+', 'COMMAND', '2025-02-16 18:25:38'),
	(235, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan apagar', 'COMMAND', '2025-02-16 18:27:24'),
	(236, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan criar BLAZE BLAZE', 'COMMAND', '2025-02-16 18:27:27'),
	(237, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/clan cortag campeão', 'COMMAND', '2025-02-16 18:27:31'),
	(238, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/acc', 'COMMAND', '2025-02-16 18:30:00'),
	(239, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/ping', 'COMMAND', '2025-02-16 18:30:34'),
	(240, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/ping', 'COMMAND', '2025-02-16 18:30:48'),
	(241, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/ping', 'COMMAND', '2025-02-16 18:30:49'),
	(242, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/ping', 'COMMAND', '2025-02-16 18:30:49'),
	(243, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/ping', 'COMMAND', '2025-02-16 18:30:50'),
	(244, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/ping', 'COMMAND', '2025-02-16 18:30:51'),
	(245, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/ping', 'COMMAND', '2025-02-16 18:30:51'),
	(246, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/ping', 'COMMAND', '2025-02-16 18:31:27'),
	(247, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/punish ban webnamoro 1y', 'COMMAND', '2025-02-17 00:10:40'),
	(248, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/punish ban webnamoro n DanariusBR Web Namoro', 'COMMAND', '2025-02-17 00:10:50'),
	(249, 'fda5d680-c125-471e-8478-f0c622fd3210', 'DanariusBR', 'lobby1a', '/anuncio É extremamente probido o uso de pronome neutro dentro deste servidor.', 'COMMAND', '2025-02-17 00:12:56');

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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela blazeserver.other: ~1 rows (aproximadamente)
INSERT INTO `other` (`index`, `unique_id`, `nick`, `tag`, `clantag`, `language`, `prefixtype`, `medal`, `preferences`, `skin`, `blocks`, `ultra_plus_months`, `last_nick`, `pluscolor`) VALUES
	(14, 'fda5d680-c125-471e-8478-f0c622fd3210', NULL, 'IzPLp', NULL, 'VIxPa', NULL, NULL, NULL, '{"name":"DanariusBR","value":"ewogICJ0aW1lc3RhbXAiIDogMTczOTc2MjA0NjM2OCwKICAicHJvZmlsZUlkIiA6ICIwY2U2MzBmOTlmZTg0MTdmODU1MWJlMDhiYmYzYzkyOSIsCiAgInByb2ZpbGVOYW1lIiA6ICJUaG9ybWVudG8iLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2M2MjRmOTliOGM3NzM5MzgxMTRjZmM4OGM1NzU1ZGYzM2ZiNTFhMTQxYTI0ODY5ZjM4Y2YyZjYxN2IyZDhhZiIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9LAogICAgIkNBUEUiIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzU2OWI3ZjJhMWQwMGQyNmYzMGVmZTNmOWFiOWFjODE3YjFlNmQzNWY0ZjNjZmIwMzI0ZWYyZDMyODIyM2QzNTAiCiAgICB9CiAgfQp9","signature":"mGqApxwrCKIuSlJ3nkVDh0eRpXZ8YsQyyToAlyPGlgi67Esxso9sdl+/u72zoEJOq/35qpS2XhhYHIMMpGN9lHeQUcvaTH7QroiPqy1q7kFkIF75OyIknrb4fCk8kNBSrTxWym07MEIW0rhuiBkJwX9tQt+NrwKyObOAJ/kBx79aF0zHGwm/yswycV2p3oGBGV1Nb4Qc6Uqf8nWoh3AacqbqGaQyBMhPsvDwPLf1PapmWY/qYMnJo+pprl2xfL4MaxlTRjHXpNWIEgf4rLyniTSpWCqK1gmFo7bPFhcTDnXlPQPzPXv18LR4lUSqpQhrJ2qR6TWok5WYj7loO2suz6ktde1OZ6Row/L/suc8d+F9dDs2xbjFtTiIeu9bvIIyZIcECYj6ni1EJDJ3W2HodUA9aqaTGL6XNXIlfjdhWyqjXbIwJ2mlaZUW91ule8knU5lCNGrIHf8BSayK0CFyk+ZRtCmaOsVsFTQjgzCZIjwY733968Z1N/VsGOvKlF8N03myx+BqschMvZzM3LTAEmHl02n+KRXkNOMSSzo/Bru6nNrNVkhsh6U/Fq1UFqzvIDI85SENLIiVeOTyIE339PMA8yO+veasCDMxCU3y3c2ID5ljrWZcStGztR6kogUv9WQleIeW67hSjpJ5J9ZudodNlmeWz9Cgt1xumm6wEno=","source":"ACCOUNT","updatedAt":1739761943374}', NULL, 0, '', 'default_color');

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

SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') ;
SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') ;
SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) ;
SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT ;
SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) ;
exit