-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           11.6.2-MariaDB - mariadb.org binary distribution
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
CREATE DATABASE IF NOT EXISTS `blazeserver` /*!40100 DEFAULT CHARACTER SET armscii8 COLLATE armscii8_bin */;
USE `blazeserver`;

-- Copiando estrutura para tabela blazeserver.accounts
CREATE TABLE IF NOT EXISTS `accounts` (
  `unique_id` varchar(36) NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `nick_objects` longtext DEFAULT NULL,
  `ranks` longtext DEFAULT NULL,
  `permissions` longtext DEFAULT NULL,
  `tags` longtext DEFAULT NULL,
  `pluscolors` longtext DEFAULT NULL,
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
  `last_nick` varchar(16) DEFAULT NULL,
  `ultra_plus_months` int(100) DEFAULT NULL,
  `friends` longtext DEFAULT NULL,
  `sent_friend_requests` longtext DEFAULT NULL,
  `received_friend_requests` longtext DEFAULT NULL,
  PRIMARY KEY (`unique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Copiando dados para a tabela blazeserver.accounts: ~0 rows (aproximadamente)
INSERT INTO `accounts` (`unique_id`, `username`, `nick_objects`, `ranks`, `permissions`, `tags`, `pluscolors`, `clantags`, `medals`, `punishments`, `clan_id`, `flags`, `premium`, `firstLogin`, `lastLogin`, `address`, `banned`, `muted`, `last_nick`, `ultra_plus_months`, `friends`, `sent_friend_requests`, `received_friend_requests`) VALUES
	('4d74e801-2e8b-4cd5-b287-70a4fafe71be', 'Nwtsu', '[]', '[]', '[]', '[]', '[]', '[]', '[]', NULL, NULL, NULL, 'true', 1739035929048, 1739035929048, '127.0.0.1', NULL, NULL, NULL, NULL, '[]', '[]', '[]');

-- Copiando estrutura para tabela blazeserver.auth
CREATE TABLE IF NOT EXISTS `auth` (
  `password` varchar(24) DEFAULT NULL,
  `session_address` varchar(50) DEFAULT NULL,
  `session_expiresAt` bigint(20) DEFAULT NULL,
  `registeredAt` bigint(20) DEFAULT NULL,
  `lastUpdate` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Copiando dados para a tabela blazeserver.auth: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.bedwars
CREATE TABLE IF NOT EXISTS `bedwars` (
  `bedwars_wins` int(100) DEFAULT NULL,
  `bedwars_losses` int(100) DEFAULT NULL,
  `bedwars_kills` int(100) DEFAULT NULL,
  `bedwars_deaths` int(100) DEFAULT NULL,
  `bedwars_final_kills` int(100) DEFAULT NULL,
  `bedwars_final_deaths` int(100) DEFAULT NULL,
  `bedwars_beds_broken` int(100) DEFAULT NULL,
  `bedwars_beds_lost` int(100) DEFAULT NULL,
  `bedwars_games` int(100) DEFAULT NULL,
  `bedwars_winstreak` int(100) DEFAULT NULL,
  `bedwars_max_winstreak` int(100) DEFAULT NULL,
  `bedwars_rank` int(100) DEFAULT NULL,
  `bedwars_rank_exp` int(100) DEFAULT NULL,
  `bedwars_solo_wins` int(100) DEFAULT NULL,
  `bedwars_solo_losses` int(100) DEFAULT NULL,
  `bedwars_solo_kills` int(100) DEFAULT NULL,
  `bedwars_solo_deaths` int(100) DEFAULT NULL,
  `bedwars_solo_final_kills` int(100) DEFAULT NULL,
  `bedwars_solo_final_deaths` int(100) DEFAULT NULL,
  `bedwars_solo_beds_broken` int(100) DEFAULT NULL,
  `bedwars_solo_beds_lost` int(100) DEFAULT NULL,
  `bedwars_solo_games` int(100) DEFAULT NULL,
  `bedwars_solo_winstreak` int(100) DEFAULT NULL,
  `bedwars_solo_max_winstreak` int(100) DEFAULT NULL
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
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Copiando dados para a tabela blazeserver.boxing: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.clans
CREATE TABLE IF NOT EXISTS `clans` (
  `index` int(10) unsigned NOT NULL,
  `name` varchar(16) NOT NULL,
  `tag` varchar(16) NOT NULL,
  `members` longtext NOT NULL,
  `slots` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `creation` bigint(20) NOT NULL,
  `color` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela blazeserver.clans: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.cosmetic
CREATE TABLE IF NOT EXISTS `cosmetic` (
  `accessory` varchar(100) DEFAULT NULL,
  `particle` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `titles` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Copiando dados para a tabela blazeserver.cosmetic: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.duels_boxing
CREATE TABLE IF NOT EXISTS `duels_boxing` (
  `boxing_wins` int(100) DEFAULT NULL,
  `boxing_losses` int(100) DEFAULT NULL,
  `boxing_winstreak` int(100) DEFAULT NULL,
  `boxing_max_winstreak` int(100) DEFAULT NULL,
  `boxing_games` int(100) DEFAULT NULL,
  `boxing_rating` int(100) DEFAULT NULL,
  `boxing_inventory` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Copiando dados para a tabela blazeserver.duels_boxing: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.duels_gladiator
CREATE TABLE IF NOT EXISTS `duels_gladiator` (
  `gladiator_wins` int(100) DEFAULT NULL,
  `gladiator_losses` int(100) DEFAULT NULL,
  `gladiator_winstreak` int(100) DEFAULT NULL,
  `gladiator_max_winstreak` int(100) DEFAULT NULL,
  `gladiator_games` int(100) DEFAULT NULL,
  `gladiator_rating` int(100) DEFAULT NULL,
  `gladiator_inventory` varchar(5000) DEFAULT NULL,
  `old_soup_rating` int(100) DEFAULT NULL,
  `old_gladiator_inventory` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Copiando dados para a tabela blazeserver.duels_gladiator: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.duels_scrim
CREATE TABLE IF NOT EXISTS `duels_scrim` (
  `scrim_wins` int(100) DEFAULT NULL,
  `scrim_losses` int(100) DEFAULT NULL,
  `scrim_winstreak` int(100) DEFAULT NULL,
  `scrim_max_winstreak` int(100) DEFAULT NULL,
  `scrim_games` int(100) DEFAULT NULL,
  `scrim_rating` int(100) DEFAULT NULL,
  `scrim_inventory` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Copiando dados para a tabela blazeserver.duels_scrim: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.duels_simulator
CREATE TABLE IF NOT EXISTS `duels_simulator` (
  `simulator_wins` int(100) DEFAULT NULL,
  `simulator_losses` int(100) DEFAULT NULL,
  `simulator_winstreak` int(100) DEFAULT NULL,
  `simulator_max_winstreak` int(100) DEFAULT NULL,
  `simulator_games` int(100) DEFAULT NULL,
  `simulator_rating` int(100) DEFAULT NULL,
  `simulator_inventory` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Copiando dados para a tabela blazeserver.duels_simulator: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.duels_soup
CREATE TABLE IF NOT EXISTS `duels_soup` (
  `soup_wins` int(100) DEFAULT NULL,
  `soup_losses` int(100) DEFAULT NULL,
  `soup_winstreak` int(100) DEFAULT NULL,
  `soup_max_winstreak` int(100) DEFAULT NULL,
  `soup_games` int(100) DEFAULT NULL,
  `soup_rating` int(100) DEFAULT NULL,
  `soup_inventory` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Copiando dados para a tabela blazeserver.duels_soup: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.duels_sumo
CREATE TABLE IF NOT EXISTS `duels_sumo` (
  `sumo_wins` int(100) DEFAULT NULL,
  `sumo_losses` int(100) DEFAULT NULL,
  `sumo_winstreak` int(100) DEFAULT NULL,
  `sumo_max_winstreak` int(100) DEFAULT NULL,
  `sumo_games` int(100) DEFAULT NULL,
  `sumo_rating` int(100) DEFAULT NULL,
  `sumo_inventory` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Copiando dados para a tabela blazeserver.duels_sumo: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.duels_uhc
CREATE TABLE IF NOT EXISTS `duels_uhc` (
  `uhc_wins` int(100) DEFAULT NULL,
  `uhc_losses` int(100) DEFAULT NULL,
  `uhc_winstreak` int(100) DEFAULT NULL,
  `uhc_max_winstreak` int(100) DEFAULT NULL,
  `uhc_games` int(100) DEFAULT NULL,
  `uhc_rating` int(100) DEFAULT NULL,
  `uhc_inventory` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Copiando dados para a tabela blazeserver.duels_uhc: ~0 rows (aproximadamente)

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
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Copiando dados para a tabela blazeserver.gladiator: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.hungergames
CREATE TABLE IF NOT EXISTS `hungergames` (
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
  `dailyKit` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Copiando dados para a tabela blazeserver.hungergames: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.logs
CREATE TABLE IF NOT EXISTS `logs` (
  `index` int(10) unsigned NOT NULL,
  `unique_id` varchar(36) NOT NULL,
  `nickname` varchar(16) NOT NULL,
  `server` varchar(20) NOT NULL,
  `content` tinytext NOT NULL,
  `type` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela blazeserver.logs: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.other
CREATE TABLE IF NOT EXISTS `other` (
  `nick` varchar(16) DEFAULT NULL,
  `last_nick` varchar(16) DEFAULT NULL,
  `ultra_plus_months` int(100) DEFAULT NULL,
  `tag` varchar(6) DEFAULT NULL,
  `clantag` varchar(6) DEFAULT NULL,
  `language` varchar(6) DEFAULT NULL,
  `pluscolor` varchar(6) DEFAULT NULL,
  `prefixtype` varchar(6) DEFAULT NULL,
  `medal` varchar(6) DEFAULT NULL,
  `preferences` int(100) DEFAULT NULL,
  `skin` longtext DEFAULT NULL,
  `duels_spec_preference` varchar(10) DEFAULT NULL,
  `blocks` longtext DEFAULT NULL,
  `friends` longtext DEFAULT NULL,
  `friend_status` varchar(16) DEFAULT NULL,
  `sent_friend_requests` longtext DEFAULT NULL,
  `received_friend_requests` longtext DEFAULT NULL,
  `unique_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Copiando dados para a tabela blazeserver.other: ~0 rows (aproximadamente)
INSERT INTO `other` (`nick`, `last_nick`, `ultra_plus_months`, `tag`, `clantag`, `language`, `pluscolor`, `prefixtype`, `medal`, `preferences`, `skin`, `duels_spec_preference`, `blocks`, `friends`, `friend_status`, `sent_friend_requests`, `received_friend_requests`, `unique_id`) VALUES
	(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"name":"Nwtsu","value":"ewogICJ0aW1lc3RhbXAiIDogMTczOTAzNjAyMTQ3MSwKICAicHJvZmlsZUlkIiA6ICI0ZDc0ZTgwMTJlOGI0Y2Q1YjI4NzcwYTRmYWZlNzFiZSIsCiAgInByb2ZpbGVOYW1lIiA6ICJOd3RzdSIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9kM2RhNTAyYTkwNTEzYmE4MzMxNGRlMGVjMTU0YmQ1M2E4NTA5MDQ1OGM4M2MzNDUzZjZjMDQyMjI1MjYwZjY1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0=","signature":"xXNITzb3Xb6LbXP5TT+2QFlsR98qUo5dNVsu4cpZDP3eFkeOVBnqbG5eEzYsyeq7iFLtBw2buGaGY0Zqs7n6fZIM90bKm23CpjkD4/IWeKgBzP/PRCSahRs4098QafphjH2sBUQeHmxuX99vSFK4rtIrvb/FUXYvnpBTajhiaTNZbgC8ADUzQdYmfQBv5wPKX6lK26fjdJUWbzJUpPqFwj0URNLbBpgmffoNvCUuuBkV2iQLHytvo/CwB76hZJ0g2JNH5d2h3ak8zokB3xZruQJm4TjSjkQUKT2VETf71gxTxrsI4n46ZttytkFJ9BjCVOjPYopDSQ4bJgtmAFVbptQOp99ep/Tu7/yqfrT3d1xa3syscBDJPbGlU5kQvfQXHRxKQBG5SqddbCXnf9+WwWok0IFcgYrdko56NVeKRqQB6UuCWdLdet9m4Pg1Ab8O1rkOF9Lp94pGeRWjnp7DtsKL9Ydz+BEno+T34UamJIhPTrrXkk31dj45XR/kj+3YPFeHuq9p5Tt0w7z42lFww7wr0LJPsfcOV102AAzO5o3QclsLhcU5KY3ctxeHKR9RebwoC4af2QUL8rNAF6VAPjjNiUH+5jxt/Xm324uyY/zXJPdUqJDa07oLfvM7VsSi6ANZiI/CpkN/LT2J+E+hFycCGNEJ4CtaIyFkemNTjpE=","source":"ACCOUNT","updatedAt":1739035929040}', NULL, NULL, NULL, NULL, NULL, NULL, '4d74e801-2e8b-4cd5-b287-70a4fafe71be');

-- Copiando estrutura para tabela blazeserver.parkour
CREATE TABLE IF NOT EXISTS `parkour` (
  `main_lobby_parkour_record` int(100) DEFAULT NULL,
  `the_bridge_lobby_parkour_record` int(100) DEFAULT NULL,
  `duels_lobby_parkour_record` int(100) DEFAULT NULL,
  `hungergames_lobby_parkour_record` int(100) DEFAULT NULL,
  `pvp_lobby_parkour_record` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Copiando dados para a tabela blazeserver.parkour: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.pvp
CREATE TABLE IF NOT EXISTS `pvp` (
  `arena_kills` int(100) DEFAULT NULL,
  `arena_deaths` int(100) DEFAULT NULL,
  `arena_killstreak` int(100) DEFAULT NULL,
  `arena_max_killstreak` int(100) DEFAULT NULL,
  `fps_kills` int(100) DEFAULT NULL,
  `fps_deaths` int(100) DEFAULT NULL,
  `fps_killstreak` int(100) DEFAULT NULL,
  `fps_max_killstreak` int(100) DEFAULT NULL,
  `damage_settings` longtext DEFAULT NULL,
  `damage_easy` int(100) DEFAULT NULL,
  `damage_medium` int(100) DEFAULT NULL,
  `damage_hard` int(100) DEFAULT NULL,
  `damage_extreme` int(100) DEFAULT NULL,
  `rank` int(100) DEFAULT NULL,
  `rank_exp` int(100) DEFAULT NULL,
  `coins` int(100) DEFAULT NULL,
  `kits` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

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
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

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
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

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
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Copiando dados para a tabela blazeserver.soup: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.staff
CREATE TABLE IF NOT EXISTS `staff` (
  `weekly_bans` int(100) DEFAULT NULL,
  `weekly_events` int(100) DEFAULT NULL,
  `weekly_mutes` int(100) DEFAULT NULL,
  `monthly_bans` int(100) DEFAULT NULL,
  `monthly_events` int(100) DEFAULT NULL,
  `monthly_mutes` int(100) DEFAULT NULL,
  `lifetime_bans` int(100) DEFAULT NULL,
  `lifetime_events` int(100) DEFAULT NULL,
  `lifetime_mutes` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

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
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Copiando dados para a tabela blazeserver.sumo: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.the_bridge
CREATE TABLE IF NOT EXISTS `the_bridge` (
  `bridge_solo_wins` int(100) DEFAULT NULL,
  `bridge_solo_losses` int(100) DEFAULT NULL,
  `bridge_solo_kills` int(100) DEFAULT NULL,
  `bridge_solo_deaths` int(100) DEFAULT NULL,
  `bridge_solo_points` int(100) DEFAULT NULL,
  `bridge_solo_rounds` int(100) DEFAULT NULL,
  `bridge_solo_winstreak` int(100) DEFAULT NULL,
  `bridge_solo_max_winstreak` int(100) DEFAULT NULL,
  `bridge_doubles_wins` int(100) DEFAULT NULL,
  `bridge_doubles_losses` int(100) DEFAULT NULL,
  `bridge_doubles_kills` int(100) DEFAULT NULL,
  `bridge_doubles_deaths` int(100) DEFAULT NULL,
  `bridge_doubles_points` int(100) DEFAULT NULL,
  `bridge_doubles_rounds` int(100) DEFAULT NULL,
  `bridge_doubles_winstreak` int(100) DEFAULT NULL,
  `bridge_doubles_max_winstreak` int(100) DEFAULT NULL,
  `bridge_coins` int(100) DEFAULT NULL,
  `bridge_rank` int(100) DEFAULT NULL,
  `bridge_rank_exp` int(100) DEFAULT NULL,
  `bridge_data` longtext DEFAULT NULL,
  `bridge_inventory` longtext DEFAULT NULL,
  `bridge_cage` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Copiando dados para a tabela blazeserver.the_bridge: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela blazeserver.tiogerson
CREATE TABLE IF NOT EXISTS `tiogerson` (
  `tiogerson_wins` int(100) DEFAULT NULL,
  `tiogerson_losses` int(100) DEFAULT NULL,
  `tiogerson_winstreak` int(100) DEFAULT NULL,
  `tiogerson_max_winstreak` int(100) DEFAULT NULL,
  `tiogerson_games` int(100) DEFAULT NULL
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
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Copiando dados para a tabela blazeserver.uhc: ~0 rows (aproximadamente)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
