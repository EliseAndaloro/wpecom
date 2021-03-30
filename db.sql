-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.7.24 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Listage de la structure de la base pour wpecom
CREATE DATABASE IF NOT EXISTS `wpecom` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `wpecom`;

-- Listage de la structure de la table wpecom. wp_actionscheduler_actions
CREATE TABLE IF NOT EXISTS `wp_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id` (`claim_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_actionscheduler_actions : ~34 rows (environ)
/*!40000 ALTER TABLE `wp_actionscheduler_actions` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
	(6, 'action_scheduler/migration_hook', 'complete', '2021-03-18 10:00:14', '2021-03-18 11:00:14', '[]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616061614;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616061614;}', 1, 1, '2021-03-18 10:00:28', '2021-03-18 11:00:28', 0, NULL),
	(7, 'adjust_download_permissions', 'complete', '2021-03-18 10:40:58', '2021-03-18 11:40:58', '[17]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616064058;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616064058;}', 0, 1, '2021-03-18 10:41:22', '2021-03-18 11:41:22', 0, NULL),
	(8, 'adjust_download_permissions', 'complete', '2021-03-18 10:41:23', '2021-03-18 11:41:23', '[17]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616064083;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616064083;}', 0, 1, '2021-03-18 10:42:12', '2021-03-18 11:42:12', 0, NULL),
	(9, 'adjust_download_permissions', 'complete', '2021-03-18 10:42:13', '2021-03-18 11:42:13', '[17]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616064133;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616064133;}', 0, 1, '2021-03-18 10:43:25', '2021-03-18 11:43:25', 0, NULL),
	(10, 'adjust_download_permissions', 'complete', '2021-03-18 10:46:01', '2021-03-18 11:46:01', '[17]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616064361;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616064361;}', 0, 1, '2021-03-18 10:46:12', '2021-03-18 11:46:12', 0, NULL),
	(11, 'wc-admin_import_orders', 'complete', '2021-03-22 14:13:33', '2021-03-22 15:13:33', '[22]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616422413;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616422413;}', 2, 1, '2021-03-22 14:13:43', '2021-03-22 15:13:43', 0, NULL),
	(12, 'wc-admin_import_customers', 'complete', '2021-03-22 14:15:40', '2021-03-22 15:15:40', '[1]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616422540;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616422540;}', 2, 1, '2021-03-22 14:16:41', '2021-03-22 15:16:41', 0, NULL),
	(13, 'wc-admin_import_orders', 'complete', '2021-03-22 14:15:43', '2021-03-22 15:15:43', '[22]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616422543;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616422543;}', 2, 1, '2021-03-22 14:16:41', '2021-03-22 15:16:41', 0, NULL),
	(14, 'wc-admin_import_orders', 'complete', '2021-03-22 14:39:13', '2021-03-22 15:39:13', '[23]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616423953;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616423953;}', 2, 1, '2021-03-22 14:40:10', '2021-03-22 15:40:10', 0, NULL),
	(15, 'wc-admin_import_orders', 'complete', '2021-03-22 14:40:29', '2021-03-22 15:40:29', '[23]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616424029;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616424029;}', 2, 1, '2021-03-22 14:41:37', '2021-03-22 15:41:37', 0, NULL),
	(16, 'wc-admin_import_orders', 'complete', '2021-03-22 14:41:43', '2021-03-22 15:41:43', '[23]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616424103;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616424103;}', 2, 1, '2021-03-22 14:43:07', '2021-03-22 15:43:07', 0, NULL),
	(17, 'wc-admin_import_customers', 'complete', '2021-03-22 14:51:14', '2021-03-22 15:51:14', '[1]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616424674;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616424674;}', 2, 1, '2021-03-22 14:52:59', '2021-03-22 15:52:59', 0, NULL),
	(18, 'wc-admin_import_orders', 'complete', '2021-03-22 14:51:14', '2021-03-22 15:51:14', '[24]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616424674;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616424674;}', 2, 1, '2021-03-22 14:52:59', '2021-03-22 15:52:59', 0, NULL),
	(19, 'wc-admin_import_customers', 'complete', '2021-03-22 15:05:22', '2021-03-22 16:05:22', '[1]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616425522;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616425522;}', 2, 1, '2021-03-22 15:05:40', '2021-03-22 16:05:40', 0, NULL),
	(20, 'wc-admin_import_orders', 'complete', '2021-03-22 15:05:22', '2021-03-22 16:05:22', '[25]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616425522;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616425522;}', 2, 1, '2021-03-22 15:05:40', '2021-03-22 16:05:40', 0, NULL),
	(21, 'wc-admin_import_orders', 'complete', '2021-03-22 15:05:53', '2021-03-22 16:05:53', '[25]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616425553;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616425553;}', 2, 1, '2021-03-22 15:08:07', '2021-03-22 16:08:07', 0, NULL),
	(22, 'wc-admin_import_customers', 'complete', '2021-03-22 15:16:38', '2021-03-22 16:16:38', '[1]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616426198;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616426198;}', 2, 1, '2021-03-22 15:17:12', '2021-03-22 16:17:12', 0, NULL),
	(23, 'wc-admin_import_orders', 'complete', '2021-03-22 15:16:38', '2021-03-22 16:16:38', '[26]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616426198;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616426198;}', 2, 1, '2021-03-22 15:17:12', '2021-03-22 16:17:12', 0, NULL),
	(24, 'wc-admin_import_orders', 'complete', '2021-03-22 15:16:56', '2021-03-22 16:16:56', '[27]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616426216;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616426216;}', 2, 1, '2021-03-22 15:17:12', '2021-03-22 16:17:12', 0, NULL),
	(25, 'wc-admin_import_customers', 'complete', '2021-03-22 15:17:17', '2021-03-22 16:17:17', '[1]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616426237;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616426237;}', 2, 1, '2021-03-22 15:18:07', '2021-03-22 16:18:07', 0, NULL),
	(26, 'wc-admin_import_orders', 'complete', '2021-03-22 15:17:17', '2021-03-22 16:17:17', '[28]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616426237;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616426237;}', 2, 1, '2021-03-22 15:18:07', '2021-03-22 16:18:07', 0, NULL),
	(27, 'wc-admin_import_orders', 'complete', '2021-03-22 15:17:29', '2021-03-22 16:17:29', '[29]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616426249;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616426249;}', 2, 1, '2021-03-22 15:18:07', '2021-03-22 16:18:07', 0, NULL),
	(28, 'wc-admin_import_orders', 'complete', '2021-03-22 15:21:52', '2021-03-22 16:21:52', '[29]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616426512;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616426512;}', 2, 1, '2021-03-22 15:22:32', '2021-03-22 16:22:32', 0, NULL),
	(29, 'wc-admin_import_orders', 'complete', '2021-03-22 17:16:26', '2021-03-22 18:16:26', '[26]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616433386;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616433386;}', 2, 1, '2021-03-22 17:18:22', '2021-03-22 18:18:22', 0, NULL),
	(30, 'wc-admin_import_orders', 'complete', '2021-03-22 17:16:26', '2021-03-22 18:16:26', '[27]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616433386;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616433386;}', 2, 1, '2021-03-22 17:18:22', '2021-03-22 18:18:22', 0, NULL),
	(31, 'wc-admin_import_orders', 'complete', '2021-03-22 17:16:26', '2021-03-22 18:16:26', '[28]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616433386;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616433386;}', 2, 1, '2021-03-22 17:18:22', '2021-03-22 18:18:22', 0, NULL),
	(32, 'adjust_download_permissions', 'complete', '2021-03-25 14:05:19', '2021-03-25 15:05:19', '[17]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616681119;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616681119;}', 0, 1, '2021-03-25 14:05:49', '2021-03-25 15:05:49', 0, NULL),
	(33, 'adjust_download_permissions', 'complete', '2021-03-25 14:06:03', '2021-03-25 15:06:03', '[17]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616681163;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616681163;}', 0, 1, '2021-03-25 14:06:08', '2021-03-25 15:06:08', 0, NULL),
	(34, 'wc-admin_import_customers', 'complete', '2021-03-25 14:06:56', '2021-03-25 15:06:56', '[1]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616681216;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616681216;}', 2, 1, '2021-03-25 14:07:13', '2021-03-25 15:07:13', 0, NULL),
	(35, 'wc-admin_import_orders', 'complete', '2021-03-25 14:06:56', '2021-03-25 15:06:56', '[31]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616681216;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616681216;}', 2, 1, '2021-03-25 14:07:13', '2021-03-25 15:07:13', 0, NULL),
	(36, 'action_scheduler/migration_hook', 'complete', '2021-03-25 14:15:24', '2021-03-25 15:15:24', '[]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616681724;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616681724;}', 1, 1, '2021-03-25 14:15:36', '2021-03-25 15:15:36', 0, NULL),
	(37, 'action_scheduler/migration_hook', 'complete', '2021-03-25 14:43:15', '2021-03-25 15:43:15', '[]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616683395;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616683395;}', 1, 1, '2021-03-25 14:43:26', '2021-03-25 15:43:26', 0, NULL),
	(38, 'action_scheduler/migration_hook', 'complete', '2021-03-25 15:43:30', '2021-03-25 16:43:30', '[]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616687010;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616687010;}', 1, 1, '2021-03-25 15:44:11', '2021-03-25 16:44:11', 0, NULL),
	(39, 'action_scheduler/migration_hook', 'complete', '2021-03-26 10:17:55', '2021-03-26 11:17:55', '[]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616753875;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616753875;}', 1, 1, '2021-03-26 10:18:03', '2021-03-26 11:18:03', 0, NULL),
	(40, 'action_scheduler/migration_hook', 'complete', '2021-03-26 14:04:34', '2021-03-26 15:04:34', '[]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616767474;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616767474;}', 1, 1, '2021-03-26 14:07:48', '2021-03-26 15:07:48', 0, NULL),
	(41, 'wc-admin_import_customers', 'complete', '2021-03-26 14:28:35', '2021-03-26 15:28:35', '[1]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616768915;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616768915;}', 2, 1, '2021-03-26 14:34:13', '2021-03-26 15:34:13', 0, NULL),
	(42, 'wc-admin_import_orders', 'complete', '2021-03-26 14:28:35', '2021-03-26 15:28:35', '[32]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1616768915;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1616768915;}', 2, 1, '2021-03-26 14:34:13', '2021-03-26 15:34:13', 0, NULL);
/*!40000 ALTER TABLE `wp_actionscheduler_actions` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_actionscheduler_claims
CREATE TABLE IF NOT EXISTS `wp_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=598 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_actionscheduler_claims : ~0 rows (environ)
/*!40000 ALTER TABLE `wp_actionscheduler_claims` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_actionscheduler_groups
CREATE TABLE IF NOT EXISTS `wp_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_actionscheduler_groups : ~0 rows (environ)
/*!40000 ALTER TABLE `wp_actionscheduler_groups` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
	(1, 'action-scheduler-migration'),
	(2, 'wc-admin-data');
/*!40000 ALTER TABLE `wp_actionscheduler_groups` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_actionscheduler_logs
CREATE TABLE IF NOT EXISTS `wp_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_actionscheduler_logs : ~102 rows (environ)
/*!40000 ALTER TABLE `wp_actionscheduler_logs` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
	(1, 6, 'action créée', '2021-03-18 09:59:14', '2021-03-18 10:59:14'),
	(2, 6, 'action lancée via WP Cron', '2021-03-18 10:00:28', '2021-03-18 11:00:28'),
	(3, 6, 'action terminée via WP Cron', '2021-03-18 10:00:28', '2021-03-18 11:00:28'),
	(4, 7, 'action créée', '2021-03-18 10:40:57', '2021-03-18 11:40:57'),
	(5, 7, 'action lancée via WP Cron', '2021-03-18 10:41:22', '2021-03-18 11:41:22'),
	(6, 7, 'action terminée via WP Cron', '2021-03-18 10:41:22', '2021-03-18 11:41:22'),
	(7, 8, 'action créée', '2021-03-18 10:41:22', '2021-03-18 11:41:22'),
	(8, 8, 'action lancée via WP Cron', '2021-03-18 10:42:12', '2021-03-18 11:42:12'),
	(9, 8, 'action terminée via WP Cron', '2021-03-18 10:42:12', '2021-03-18 11:42:12'),
	(10, 9, 'action créée', '2021-03-18 10:42:12', '2021-03-18 11:42:12'),
	(11, 9, 'action lancée via WP Cron', '2021-03-18 10:43:25', '2021-03-18 11:43:25'),
	(12, 9, 'action terminée via WP Cron', '2021-03-18 10:43:25', '2021-03-18 11:43:25'),
	(13, 10, 'action créée', '2021-03-18 10:46:00', '2021-03-18 11:46:00'),
	(14, 10, 'action lancée via WP Cron', '2021-03-18 10:46:11', '2021-03-18 11:46:11'),
	(15, 10, 'action terminée via WP Cron', '2021-03-18 10:46:12', '2021-03-18 11:46:12'),
	(16, 11, 'action créée', '2021-03-22 14:13:28', '2021-03-22 15:13:28'),
	(17, 11, 'action lancée via Async Request', '2021-03-22 14:13:43', '2021-03-22 15:13:43'),
	(18, 11, 'action terminée via Async Request', '2021-03-22 14:13:43', '2021-03-22 15:13:43'),
	(19, 12, 'action créée', '2021-03-22 14:15:35', '2021-03-22 15:15:35'),
	(20, 13, 'action créée', '2021-03-22 14:15:38', '2021-03-22 15:15:38'),
	(21, 12, 'action lancée via WP Cron', '2021-03-22 14:16:41', '2021-03-22 15:16:41'),
	(22, 12, 'action terminée via WP Cron', '2021-03-22 14:16:41', '2021-03-22 15:16:41'),
	(23, 13, 'action lancée via WP Cron', '2021-03-22 14:16:41', '2021-03-22 15:16:41'),
	(24, 13, 'action terminée via WP Cron', '2021-03-22 14:16:41', '2021-03-22 15:16:41'),
	(25, 14, 'action créée', '2021-03-22 14:39:08', '2021-03-22 15:39:08'),
	(26, 14, 'action lancée via WP Cron', '2021-03-22 14:40:10', '2021-03-22 15:40:10'),
	(27, 14, 'action terminée via WP Cron', '2021-03-22 14:40:10', '2021-03-22 15:40:10'),
	(28, 15, 'action créée', '2021-03-22 14:40:24', '2021-03-22 15:40:24'),
	(29, 15, 'action lancée via WP Cron', '2021-03-22 14:41:37', '2021-03-22 15:41:37'),
	(30, 15, 'action terminée via WP Cron', '2021-03-22 14:41:37', '2021-03-22 15:41:37'),
	(31, 16, 'action créée', '2021-03-22 14:41:38', '2021-03-22 15:41:38'),
	(32, 16, 'action lancée via WP Cron', '2021-03-22 14:43:07', '2021-03-22 15:43:07'),
	(33, 16, 'action terminée via WP Cron', '2021-03-22 14:43:07', '2021-03-22 15:43:07'),
	(34, 17, 'action créée', '2021-03-22 14:51:09', '2021-03-22 15:51:09'),
	(35, 18, 'action créée', '2021-03-22 14:51:09', '2021-03-22 15:51:09'),
	(36, 17, 'action lancée via WP Cron', '2021-03-22 14:52:59', '2021-03-22 15:52:59'),
	(37, 17, 'action terminée via WP Cron', '2021-03-22 14:52:59', '2021-03-22 15:52:59'),
	(38, 18, 'action lancée via WP Cron', '2021-03-22 14:52:59', '2021-03-22 15:52:59'),
	(39, 18, 'action terminée via WP Cron', '2021-03-22 14:52:59', '2021-03-22 15:52:59'),
	(40, 19, 'action créée', '2021-03-22 15:05:17', '2021-03-22 16:05:17'),
	(41, 20, 'action créée', '2021-03-22 15:05:17', '2021-03-22 16:05:17'),
	(42, 19, 'action lancée via Async Request', '2021-03-22 15:05:40', '2021-03-22 16:05:40'),
	(43, 19, 'action terminée via Async Request', '2021-03-22 15:05:40', '2021-03-22 16:05:40'),
	(44, 20, 'action lancée via Async Request', '2021-03-22 15:05:40', '2021-03-22 16:05:40'),
	(45, 20, 'action terminée via Async Request', '2021-03-22 15:05:40', '2021-03-22 16:05:40'),
	(46, 21, 'action créée', '2021-03-22 15:05:48', '2021-03-22 16:05:48'),
	(47, 21, 'action lancée via WP Cron', '2021-03-22 15:08:07', '2021-03-22 16:08:07'),
	(48, 21, 'action terminée via WP Cron', '2021-03-22 15:08:07', '2021-03-22 16:08:07'),
	(49, 22, 'action créée', '2021-03-22 15:16:33', '2021-03-22 16:16:33'),
	(50, 23, 'action créée', '2021-03-22 15:16:33', '2021-03-22 16:16:33'),
	(51, 24, 'action créée', '2021-03-22 15:16:51', '2021-03-22 16:16:51'),
	(52, 22, 'action lancée via WP Cron', '2021-03-22 15:17:12', '2021-03-22 16:17:12'),
	(53, 22, 'action terminée via WP Cron', '2021-03-22 15:17:12', '2021-03-22 16:17:12'),
	(54, 23, 'action lancée via WP Cron', '2021-03-22 15:17:12', '2021-03-22 16:17:12'),
	(55, 23, 'action terminée via WP Cron', '2021-03-22 15:17:12', '2021-03-22 16:17:12'),
	(56, 24, 'action lancée via WP Cron', '2021-03-22 15:17:12', '2021-03-22 16:17:12'),
	(57, 24, 'action terminée via WP Cron', '2021-03-22 15:17:12', '2021-03-22 16:17:12'),
	(58, 25, 'action créée', '2021-03-22 15:17:12', '2021-03-22 16:17:12'),
	(59, 26, 'action créée', '2021-03-22 15:17:12', '2021-03-22 16:17:12'),
	(60, 27, 'action créée', '2021-03-22 15:17:24', '2021-03-22 16:17:24'),
	(61, 25, 'action lancée via WP Cron', '2021-03-22 15:18:07', '2021-03-22 16:18:07'),
	(62, 25, 'action terminée via WP Cron', '2021-03-22 15:18:07', '2021-03-22 16:18:07'),
	(63, 26, 'action lancée via WP Cron', '2021-03-22 15:18:07', '2021-03-22 16:18:07'),
	(64, 26, 'action terminée via WP Cron', '2021-03-22 15:18:07', '2021-03-22 16:18:07'),
	(65, 27, 'action lancée via WP Cron', '2021-03-22 15:18:07', '2021-03-22 16:18:07'),
	(66, 27, 'action terminée via WP Cron', '2021-03-22 15:18:07', '2021-03-22 16:18:07'),
	(67, 28, 'action créée', '2021-03-22 15:21:47', '2021-03-22 16:21:47'),
	(68, 28, 'action lancée via WP Cron', '2021-03-22 15:22:32', '2021-03-22 16:22:32'),
	(69, 28, 'action terminée via WP Cron', '2021-03-22 15:22:32', '2021-03-22 16:22:32'),
	(70, 29, 'action créée', '2021-03-22 17:16:21', '2021-03-22 18:16:21'),
	(71, 30, 'action créée', '2021-03-22 17:16:21', '2021-03-22 18:16:21'),
	(72, 31, 'action créée', '2021-03-22 17:16:21', '2021-03-22 18:16:21'),
	(73, 29, 'action lancée via WP Cron', '2021-03-22 17:18:22', '2021-03-22 18:18:22'),
	(74, 29, 'action terminée via WP Cron', '2021-03-22 17:18:22', '2021-03-22 18:18:22'),
	(75, 30, 'action lancée via WP Cron', '2021-03-22 17:18:22', '2021-03-22 18:18:22'),
	(76, 30, 'action terminée via WP Cron', '2021-03-22 17:18:22', '2021-03-22 18:18:22'),
	(77, 31, 'action lancée via WP Cron', '2021-03-22 17:18:22', '2021-03-22 18:18:22'),
	(78, 31, 'action terminée via WP Cron', '2021-03-22 17:18:22', '2021-03-22 18:18:22'),
	(79, 32, 'action créée', '2021-03-25 14:05:18', '2021-03-25 15:05:18'),
	(80, 32, 'action lancée via Async Request', '2021-03-25 14:05:49', '2021-03-25 15:05:49'),
	(81, 32, 'action terminée via Async Request', '2021-03-25 14:05:49', '2021-03-25 15:05:49'),
	(82, 33, 'action créée', '2021-03-25 14:06:02', '2021-03-25 15:06:02'),
	(83, 33, 'action lancée via WP Cron', '2021-03-25 14:06:08', '2021-03-25 15:06:08'),
	(84, 33, 'action terminée via WP Cron', '2021-03-25 14:06:08', '2021-03-25 15:06:08'),
	(85, 34, 'action créée', '2021-03-25 14:06:51', '2021-03-25 15:06:51'),
	(86, 35, 'action créée', '2021-03-25 14:06:51', '2021-03-25 15:06:51'),
	(87, 34, 'action lancée via WP Cron', '2021-03-25 14:07:13', '2021-03-25 15:07:13'),
	(88, 34, 'action terminée via WP Cron', '2021-03-25 14:07:13', '2021-03-25 15:07:13'),
	(89, 35, 'action lancée via WP Cron', '2021-03-25 14:07:13', '2021-03-25 15:07:13'),
	(90, 35, 'action terminée via WP Cron', '2021-03-25 14:07:13', '2021-03-25 15:07:13'),
	(91, 36, 'action créée', '2021-03-25 14:14:24', '2021-03-25 15:14:24'),
	(92, 36, 'action lancée via WP Cron', '2021-03-25 14:15:36', '2021-03-25 15:15:36'),
	(93, 36, 'action terminée via WP Cron', '2021-03-25 14:15:36', '2021-03-25 15:15:36'),
	(94, 37, 'action créée', '2021-03-25 14:42:15', '2021-03-25 15:42:15'),
	(95, 37, 'action lancée via WP Cron', '2021-03-25 14:43:26', '2021-03-25 15:43:26'),
	(96, 37, 'action terminée via WP Cron', '2021-03-25 14:43:26', '2021-03-25 15:43:26'),
	(97, 38, 'action créée', '2021-03-25 15:42:30', '2021-03-25 16:42:30'),
	(98, 38, 'action lancée via WP Cron', '2021-03-25 15:44:11', '2021-03-25 16:44:11'),
	(99, 38, 'action terminée via WP Cron', '2021-03-25 15:44:11', '2021-03-25 16:44:11'),
	(100, 39, 'action créée', '2021-03-26 10:16:55', '2021-03-26 11:16:55'),
	(101, 39, 'action lancée via WP Cron', '2021-03-26 10:18:03', '2021-03-26 11:18:03'),
	(102, 39, 'action terminée via WP Cron', '2021-03-26 10:18:03', '2021-03-26 11:18:03'),
	(103, 40, 'action créée', '2021-03-26 14:03:34', '2021-03-26 15:03:34'),
	(104, 40, 'action lancée via WP Cron', '2021-03-26 14:07:48', '2021-03-26 15:07:48'),
	(105, 40, 'action terminée via WP Cron', '2021-03-26 14:07:48', '2021-03-26 15:07:48'),
	(106, 41, 'action créée', '2021-03-26 14:28:30', '2021-03-26 15:28:30'),
	(107, 42, 'action créée', '2021-03-26 14:28:30', '2021-03-26 15:28:30'),
	(108, 41, 'action lancée via WP Cron', '2021-03-26 14:34:13', '2021-03-26 15:34:13'),
	(109, 41, 'action terminée via WP Cron', '2021-03-26 14:34:13', '2021-03-26 15:34:13'),
	(110, 42, 'action lancée via WP Cron', '2021-03-26 14:34:13', '2021-03-26 15:34:13'),
	(111, 42, 'action terminée via WP Cron', '2021-03-26 14:34:13', '2021-03-26 15:34:13');
/*!40000 ALTER TABLE `wp_actionscheduler_logs` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_commentmeta
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_commentmeta : ~0 rows (environ)
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_comments
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_comments : ~17 rows (environ)
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
	(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-03-18 10:22:16', '2021-03-18 09:22:16', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', 'comment', 0, 0),
	(2, 22, 'root', 'elise.andaloro@hotmail.fr', '', '', '2021-03-22 15:14:48', '2021-03-22 14:14:48', 'Ajouté les lignes : Chaussure - Beige (#18)<span class="description"></span>', 0, '1', 'WooCommerce', 'order_note', 0, 0),
	(3, 22, 'root', 'elise.andaloro@hotmail.fr', '', '', '2021-03-22 15:15:37', '2021-03-22 14:15:37', 'État de la commande modifié de Attente paiement à Terminée.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
	(4, 22, 'root', 'elise.andaloro@hotmail.fr', '', '', '2021-03-22 15:15:38', '2021-03-22 14:15:38', 'Détails de la commande envoyés manuellement au client.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
	(5, 23, 'root', 'elise.andaloro@hotmail.fr', '', '', '2021-03-22 15:40:41', '2021-03-22 14:40:41', 'Ajouté les lignes : Sac à dos (#13)', 0, '1', 'WooCommerce', 'order_note', 0, 0),
	(6, 23, 'root', 'elise.andaloro@hotmail.fr', '', '', '2021-03-22 15:40:54', '2021-03-22 14:40:54', 'État de la commande modifié de Attente paiement à Terminée.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
	(7, 23, 'root', 'elise.andaloro@hotmail.fr', '', '', '2021-03-22 15:40:55', '2021-03-22 14:40:55', 'Détails de la commande envoyés manuellement au client.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
	(8, 23, 'root', 'elise.andaloro@hotmail.fr', '', '', '2021-03-22 15:41:38', '2021-03-22 14:41:38', 'Détails de la commande envoyés manuellement au client.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
	(9, 24, 'WooCommerce', 'woocommerce@127.0.0.1', '', '', '2021-03-22 15:51:09', '2021-03-22 14:51:09', 'En attente de règlement par chèque État de la commande modifié de Attente paiement à En attente.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
	(10, 25, 'WooCommerce', 'woocommerce@127.0.0.1', '', '', '2021-03-22 16:05:17', '2021-03-22 15:05:17', 'En attente de règlement par chèque État de la commande modifié de Attente paiement à En attente.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
	(11, 25, 'root', 'elise.andaloro@hotmail.fr', '', '', '2021-03-22 16:05:48', '2021-03-22 15:05:48', 'État de la commande modifié de En attente à Terminée.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
	(12, 29, 'WooCommerce', 'woocommerce@127.0.0.1', '', '', '2021-03-22 16:17:24', '2021-03-22 15:17:24', 'En attente de règlement par chèque État de la commande modifié de Attente paiement à En attente.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
	(13, 29, 'root', 'elise.andaloro@hotmail.fr', '', '', '2021-03-22 16:21:47', '2021-03-22 15:21:47', 'Détails de la commande envoyés manuellement au client.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
	(14, 26, 'WooCommerce', 'woocommerce@127.0.0.1', '', '', '2021-03-22 18:16:21', '2021-03-22 17:16:21', 'Commande impayée annulée - temps limite atteint. État de la commande modifié de Attente paiement à Annulée.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
	(15, 27, 'WooCommerce', 'woocommerce@127.0.0.1', '', '', '2021-03-22 18:16:21', '2021-03-22 17:16:21', 'Commande impayée annulée - temps limite atteint. État de la commande modifié de Attente paiement à Annulée.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
	(16, 28, 'WooCommerce', 'woocommerce@127.0.0.1', '', '', '2021-03-22 18:16:21', '2021-03-22 17:16:21', 'Commande impayée annulée - temps limite atteint. État de la commande modifié de Attente paiement à Annulée.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
	(17, 31, 'WooCommerce', 'woocommerce@127.0.0.1', '', '', '2021-03-25 15:06:51', '2021-03-25 14:06:51', 'En attente de règlement par chèque État de la commande modifié de Attente paiement à En attente.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
	(18, 32, 'WooCommerce', 'woocommerce@127.0.0.1', '', '', '2021-03-26 15:28:30', '2021-03-26 14:28:30', 'En attente de règlement par chèque État de la commande modifié de Attente paiement à En attente.', 0, '1', 'WooCommerce', 'order_note', 0, 0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_links
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_links : ~0 rows (environ)
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_messages
CREATE TABLE IF NOT EXISTS `wp_messages` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `message` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `active_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_messages : ~0 rows (environ)
/*!40000 ALTER TABLE `wp_messages` DISABLE KEYS */;
INSERT INTO `wp_messages` (`id`, `message`, `active_flag`) VALUES
	(1, 'fvdc', 0),
	(2, 'efogjdv', 1),
	(3, 'Voici le message laissé depuis le backoffice', 1),
	(4, 'Voici le message laissé depuis le backoffice', 0),
	(5, 'Voici le message laissé depuis le backoffice', 1),
	(6, 'Voici le message laissé depuis le backoffice', 0),
	(7, 'Voici le message laissé depuis le backoffice', 1);
/*!40000 ALTER TABLE `wp_messages` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_options
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1486 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_options : ~398 rows (environ)
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
	(1, 'siteurl', 'http://127.0.0.1/wpecom', 'yes'),
	(2, 'home', 'http://127.0.0.1/wpecom', 'yes'),
	(3, 'blogname', 'wpecom', 'yes'),
	(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
	(5, 'users_can_register', '0', 'yes'),
	(6, 'admin_email', 'elise.andaloro@hotmail.fr', 'yes'),
	(7, 'start_of_week', '1', 'yes'),
	(8, 'use_balanceTags', '0', 'yes'),
	(9, 'use_smilies', '1', 'yes'),
	(10, 'require_name_email', '1', 'yes'),
	(11, 'comments_notify', '1', 'yes'),
	(12, 'posts_per_rss', '10', 'yes'),
	(13, 'rss_use_excerpt', '0', 'yes'),
	(14, 'mailserver_url', 'mail.example.com', 'yes'),
	(15, 'mailserver_login', 'login@example.com', 'yes'),
	(16, 'mailserver_pass', 'password', 'yes'),
	(17, 'mailserver_port', '110', 'yes'),
	(18, 'default_category', '1', 'yes'),
	(19, 'default_comment_status', 'open', 'yes'),
	(20, 'default_ping_status', 'open', 'yes'),
	(21, 'default_pingback_flag', '0', 'yes'),
	(22, 'posts_per_page', '10', 'yes'),
	(23, 'date_format', 'j F Y', 'yes'),
	(24, 'time_format', 'G\\hi', 'yes'),
	(25, 'links_updated_date_format', 'd F Y G\\hi', 'yes'),
	(26, 'comment_moderation', '0', 'yes'),
	(27, 'moderation_notify', '1', 'yes'),
	(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
	(29, 'rewrite_rules', 'a:161:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:11:"boutique/?$";s:27:"index.php?post_type=product";s:41:"boutique/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:36:"boutique/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:28:"boutique/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:56:"categorie-produit/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:51:"categorie-produit/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:32:"categorie-produit/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:44:"categorie-produit/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:26:"categorie-produit/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:58:"etiquette-produit/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:53:"etiquette-produit/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:34:"etiquette-produit/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:46:"etiquette-produit/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:28:"etiquette-produit/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"produit/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"produit/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"produit/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"produit/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"produit/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"produit/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"produit/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"produit/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"produit/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"produit/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"produit/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"produit/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"produit/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"produit/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"produit/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"produit/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"produit/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"produit/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"produit/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"produit/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"produit/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"produit/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:62:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:99:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]";s:62:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:73:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
	(30, 'hack_file', '0', 'yes'),
	(31, 'blog_charset', 'UTF-8', 'yes'),
	(32, 'moderation_keys', '', 'no'),
	(33, 'active_plugins', 'a:2:{i:0;s:55:"show-message-on-dashboard/show-message-on-dashboard.php";i:1;s:27:"woocommerce/woocommerce.php";}', 'yes'),
	(34, 'category_base', '', 'yes'),
	(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
	(36, 'comment_max_links', '2', 'yes'),
	(37, 'gmt_offset', '0', 'yes'),
	(38, 'default_email_category', '1', 'yes'),
	(39, 'recently_edited', '', 'no'),
	(40, 'template', 'storefront', 'yes'),
	(41, 'stylesheet', 'storefront-child', 'yes'),
	(42, 'comment_registration', '0', 'yes'),
	(43, 'html_type', 'text/html', 'yes'),
	(44, 'use_trackback', '0', 'yes'),
	(45, 'default_role', 'subscriber', 'yes'),
	(46, 'db_version', '49752', 'yes'),
	(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
	(48, 'upload_path', '', 'yes'),
	(49, 'blog_public', '0', 'yes'),
	(50, 'default_link_category', '2', 'yes'),
	(51, 'show_on_front', 'posts', 'yes'),
	(52, 'tag_base', '', 'yes'),
	(53, 'show_avatars', '1', 'yes'),
	(54, 'avatar_rating', 'G', 'yes'),
	(55, 'upload_url_path', '', 'yes'),
	(56, 'thumbnail_size_w', '150', 'yes'),
	(57, 'thumbnail_size_h', '150', 'yes'),
	(58, 'thumbnail_crop', '1', 'yes'),
	(59, 'medium_size_w', '300', 'yes'),
	(60, 'medium_size_h', '300', 'yes'),
	(61, 'avatar_default', 'mystery', 'yes'),
	(62, 'large_size_w', '1024', 'yes'),
	(63, 'large_size_h', '1024', 'yes'),
	(64, 'image_default_link_type', 'none', 'yes'),
	(65, 'image_default_size', '', 'yes'),
	(66, 'image_default_align', '', 'yes'),
	(67, 'close_comments_for_old_posts', '0', 'yes'),
	(68, 'close_comments_days_old', '14', 'yes'),
	(69, 'thread_comments', '1', 'yes'),
	(70, 'thread_comments_depth', '5', 'yes'),
	(71, 'page_comments', '0', 'yes'),
	(72, 'comments_per_page', '50', 'yes'),
	(73, 'default_comments_page', 'newest', 'yes'),
	(74, 'comment_order', 'asc', 'yes'),
	(75, 'sticky_posts', 'a:0:{}', 'yes'),
	(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
	(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
	(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
	(79, 'uninstall_plugins', 'a:0:{}', 'no'),
	(80, 'timezone_string', 'Europe/Paris', 'yes'),
	(81, 'page_for_posts', '0', 'yes'),
	(82, 'page_on_front', '0', 'yes'),
	(83, 'default_post_format', '0', 'yes'),
	(84, 'link_manager_enabled', '0', 'yes'),
	(85, 'finished_splitting_shared_terms', '1', 'yes'),
	(86, 'site_icon', '0', 'yes'),
	(87, 'medium_large_size_w', '768', 'yes'),
	(88, 'medium_large_size_h', '0', 'yes'),
	(89, 'wp_page_for_privacy_policy', '3', 'yes'),
	(90, 'show_comments_cookies_opt_in', '1', 'yes'),
	(91, 'admin_email_lifespan', '1631611335', 'yes'),
	(92, 'disallowed_keys', '', 'no'),
	(93, 'comment_previously_approved', '1', 'yes'),
	(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
	(95, 'auto_update_core_dev', 'enabled', 'yes'),
	(96, 'auto_update_core_minor', 'enabled', 'yes'),
	(97, 'auto_update_core_major', 'enabled', 'yes'),
	(98, 'initial_db_version', '49752', 'yes'),
	(99, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:114:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:92:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"edit_theme_options";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}}', 'yes'),
	(100, 'fresh_site', '0', 'yes'),
	(101, 'WPLANG', 'fr_FR', 'yes'),
	(102, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
	(103, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
	(104, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
	(105, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
	(106, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
	(107, 'sidebars_widgets', 'a:8:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"header-1";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}s:13:"array_version";i:3;}', 'yes'),
	(108, 'cron', 'a:16:{i:1616849949;a:1:{s:24:"woocommerce_cleanup_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1617088027;a:1:{s:26:"action_scheduler_run_queue";a:1:{s:32:"0d04ed39571b55704c122d726248bbac";a:3:{s:8:"schedule";s:12:"every_minute";s:4:"args";a:1:{i:0;s:7:"WP Cron";}s:8:"interval";i:60;}}}i:1617088937;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1617091153;a:1:{s:33:"wc_admin_process_orders_milestone";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1617091175;a:1:{s:29:"wc_admin_unsnooze_admin_notes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1617091605;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1617096137;a:5:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:18:"wp_https_detection";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1617096160;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1617096162;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1617098354;a:1:{s:14:"wc_admin_daily";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1617098359;a:2:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:33:"woocommerce_cleanup_personal_data";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1617119949;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1617145200;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1617355337;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1617357609;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:11:"fifteendays";s:4:"args";a:0:{}s:8:"interval";i:1296000;}}}s:7:"version";i:2;}', 'yes'),
	(109, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(110, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(111, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(112, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(113, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(114, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(115, 'nonce_key', 'O<)9z1{@<t.@rG:1jD4+*[(o-~co9uPBj1(nUan6b+%q?mT(%ChBYd[v6MMH8jIA', 'no'),
	(116, 'nonce_salt', '@RL_Fe|rf@}/$<k-mF)38tI)c#2Q&W}_S_d{vbp99Y#&j0[Ke@2eGm{)2Z2k-!+#', 'no'),
	(117, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(118, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(119, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(121, 'recovery_keys', 'a:0:{}', 'yes'),
	(122, 'theme_mods_twentytwentyone', 'a:3:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1616772362;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}s:9:"sidebar-2";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}}}s:18:"nav_menu_locations";a:0:{}}', 'yes'),
	(123, 'https_detection_errors', 'a:1:{s:23:"ssl_verification_failed";a:1:{i:0;s:32:"La vérification SSL a échoué.";}}', 'yes'),
	(133, 'auth_key', '2?I}<Ti2L{UXFe<IL_8KR/]{-<*8VPaT5(b0a<8c<_;YThpoA|Ih_hVBCVy2b$rT', 'no'),
	(134, 'auth_salt', 'ce/ysL1bgJsjyeu$}s`&%$S1?]BI]WebWypbMKKy!}h[Ba5(P!^@#up@-9>x),X/', 'no'),
	(135, 'logged_in_key', 'Zj<=P;y$fl5a^@xLq!!c8}c^e(];SMoY3A1bL{]N6Z:NsKFp|k;d%5a/E}N XS?)', 'no'),
	(136, 'logged_in_salt', 'E2,s;|ENf!<UUR{Yz}/#>Lm05%T%y[~ynjXYaQ4 HoxP$9%PgGRF7aA;/VgTm:rE', 'no'),
	(148, 'can_compress_scripts', '1', 'no'),
	(153, 'finished_updating_comment_type', '1', 'yes'),
	(161, 'current_theme', 'Theme Storefront child', 'yes'),
	(162, 'theme_mods_child_storefront', 'a:6:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1616772356;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:6:{i:0;s:10:"archives-2";i:1;s:6:"meta-2";i:2;s:8:"search-2";i:3;s:12:"categories-2";i:4;s:14:"recent-posts-2";i:5;s:17:"recent-comments-2";}s:9:"sidebar-1";a:0:{}s:8:"header-1";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}}}s:34:"storefront_button_background_color";s:7:"#ec752d";s:38:"storefront_button_alt_background_color";s:7:"#ec752d";}', 'yes'),
	(163, 'theme_switched', '', 'yes'),
	(164, 'storefront_nux_fresh_site', '1', 'yes'),
	(166, 'storefront_cleared_widgets', '1', 'yes'),
	(168, 'theme_mods_storefront', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1616772366;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"header-1";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}}}}', 'yes'),
	(170, 'recently_activated', 'a:2:{s:19:"akismet/akismet.php";i:1616686973;s:9:"hello.php";i:1616686950;}', 'yes'),
	(177, 'action_scheduler_hybrid_store_demarkation', '5', 'yes'),
	(178, 'schema-ActionScheduler_StoreSchema', '3.0.1616061547', 'yes'),
	(179, 'schema-ActionScheduler_LoggerSchema', '2.0.1616061547', 'yes'),
	(182, 'woocommerce_schema_version', '430', 'yes'),
	(183, 'woocommerce_store_address', '0 Rue de la ville', 'yes'),
	(184, 'woocommerce_store_address_2', '', 'yes'),
	(185, 'woocommerce_store_city', 'La Ville', 'yes'),
	(186, 'woocommerce_default_country', 'FR', 'yes'),
	(187, 'woocommerce_store_postcode', '00000', 'yes'),
	(188, 'woocommerce_allowed_countries', 'specific', 'yes'),
	(189, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
	(190, 'woocommerce_specific_allowed_countries', 'a:1:{i:0;s:2:"FR";}', 'yes'),
	(191, 'woocommerce_ship_to_countries', '', 'yes'),
	(192, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
	(193, 'woocommerce_default_customer_address', 'base', 'yes'),
	(194, 'woocommerce_calc_taxes', 'no', 'yes'),
	(195, 'woocommerce_enable_coupons', 'yes', 'yes'),
	(196, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
	(197, 'woocommerce_currency', 'EUR', 'yes'),
	(198, 'woocommerce_currency_pos', 'right', 'yes'),
	(199, 'woocommerce_price_thousand_sep', '', 'yes'),
	(200, 'woocommerce_price_decimal_sep', ',', 'yes'),
	(201, 'woocommerce_price_num_decimals', '2', 'yes'),
	(202, 'woocommerce_shop_page_id', '7', 'yes'),
	(203, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
	(204, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
	(205, 'woocommerce_placeholder_image', '6', 'yes'),
	(206, 'woocommerce_weight_unit', 'kg', 'yes'),
	(207, 'woocommerce_dimension_unit', 'cm', 'yes'),
	(208, 'woocommerce_enable_reviews', 'yes', 'yes'),
	(209, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
	(210, 'woocommerce_review_rating_verification_required', 'no', 'no'),
	(211, 'woocommerce_enable_review_rating', 'yes', 'yes'),
	(212, 'woocommerce_review_rating_required', 'yes', 'no'),
	(213, 'woocommerce_manage_stock', 'yes', 'yes'),
	(214, 'woocommerce_hold_stock_minutes', '60', 'no'),
	(215, 'woocommerce_notify_low_stock', 'yes', 'no'),
	(216, 'woocommerce_notify_no_stock', 'yes', 'no'),
	(217, 'woocommerce_stock_email_recipient', 'elise.andaloro@hotmail.fr', 'no'),
	(218, 'woocommerce_notify_low_stock_amount', '2', 'no'),
	(219, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
	(220, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
	(221, 'woocommerce_stock_format', '', 'yes'),
	(222, 'woocommerce_file_download_method', 'force', 'no'),
	(223, 'woocommerce_downloads_require_login', 'no', 'no'),
	(224, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
	(225, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
	(226, 'woocommerce_prices_include_tax', 'no', 'yes'),
	(227, 'woocommerce_tax_based_on', 'shipping', 'yes'),
	(228, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
	(229, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
	(230, 'woocommerce_tax_classes', '', 'yes'),
	(231, 'woocommerce_tax_display_shop', 'excl', 'yes'),
	(232, 'woocommerce_tax_display_cart', 'excl', 'yes'),
	(233, 'woocommerce_price_display_suffix', '', 'yes'),
	(234, 'woocommerce_tax_total_display', 'itemized', 'no'),
	(235, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
	(236, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
	(237, 'woocommerce_ship_to_destination', 'billing', 'no'),
	(238, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
	(239, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
	(240, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
	(241, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
	(242, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
	(243, 'woocommerce_registration_generate_username', 'yes', 'no'),
	(244, 'woocommerce_registration_generate_password', 'yes', 'no'),
	(245, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
	(246, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
	(247, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
	(248, 'woocommerce_registration_privacy_policy_text', 'Vos données personnelles seront utilisées pour vous accompagner au cours de votre visite du site web, gérer l’accès à votre compte, et pour d’autres raisons décrites dans notre [privacy_policy].', 'yes'),
	(249, 'woocommerce_checkout_privacy_policy_text', 'Vos données personnelles seront utilisées pour le traitement de votre commande, vous accompagner au cours de votre visite du site web, et pour d’autres raisons décrites dans notre [privacy_policy].', 'yes'),
	(250, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
	(251, 'woocommerce_trash_pending_orders', '', 'no'),
	(252, 'woocommerce_trash_failed_orders', '', 'no'),
	(253, 'woocommerce_trash_cancelled_orders', '', 'no'),
	(254, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
	(255, 'woocommerce_email_from_name', 'wpecom', 'no'),
	(256, 'woocommerce_email_from_address', 'elise.andaloro@hotmail.fr', 'no'),
	(257, 'woocommerce_email_header_image', '', 'no'),
	(258, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
	(259, 'woocommerce_email_base_color', '#96588a', 'no'),
	(260, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
	(261, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
	(262, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
	(263, 'woocommerce_merchant_email_notifications', 'no', 'no'),
	(264, 'woocommerce_cart_page_id', '8', 'no'),
	(265, 'woocommerce_checkout_page_id', '9', 'no'),
	(266, 'woocommerce_myaccount_page_id', '10', 'no'),
	(267, 'woocommerce_terms_page_id', '', 'no'),
	(268, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
	(269, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
	(270, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
	(271, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
	(272, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
	(273, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
	(274, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
	(275, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
	(276, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
	(277, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
	(278, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
	(279, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
	(280, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
	(281, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
	(282, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
	(283, 'woocommerce_api_enabled', 'no', 'yes'),
	(284, 'woocommerce_allow_tracking', 'no', 'no'),
	(285, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
	(286, 'woocommerce_single_image_width', '600', 'yes'),
	(287, 'woocommerce_thumbnail_image_width', '300', 'yes'),
	(288, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
	(289, 'woocommerce_demo_store', 'no', 'no'),
	(290, 'woocommerce_permalinks', 'a:5:{s:12:"product_base";s:7:"produit";s:13:"category_base";s:17:"categorie-produit";s:8:"tag_base";s:17:"etiquette-produit";s:14:"attribute_base";s:0:"";s:22:"use_verbose_page_rules";b:0;}', 'yes'),
	(291, 'current_theme_supports_woocommerce', 'yes', 'yes'),
	(292, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
	(295, 'default_product_cat', '15', 'yes'),
	(298, 'woocommerce_version', '5.1.0', 'yes'),
	(299, 'woocommerce_db_version', '5.1.0', 'yes'),
	(303, '_transient_jetpack_autoloader_plugin_paths', 'a:1:{i:0;s:29:"{{WP_PLUGIN_DIR}}/woocommerce";}', 'yes'),
	(304, 'action_scheduler_lock_async-request-runner', '1617088074', 'yes'),
	(305, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:"no_secure_connection";}', 'yes'),
	(306, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:"database_prefix";s:32:"ZQTxjZiejdENK3qU746bRkpXPV1hWftY";}', 'yes'),
	(307, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
	(308, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(309, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(310, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(311, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(312, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(313, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(314, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(315, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(316, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(317, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(318, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(319, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(322, 'woocommerce_admin_version', '2.0.2', 'yes'),
	(323, 'woocommerce_admin_install_timestamp', '1616061554', 'yes'),
	(328, 'wc_blocks_db_schema_version', '260', 'yes'),
	(329, 'wc_remote_inbox_notifications_stored_state', 'O:8:"stdClass":3:{s:22:"there_were_no_products";b:1;s:22:"there_are_now_products";b:1;s:17:"new_product_count";i:0;}', 'yes'),
	(331, 'wc_remote_inbox_notifications_specs', 'a:13:{s:23:"facebook_pixel_api_2021";O:8:"stdClass":8:{s:4:"slug";s:23:"facebook_pixel_api_2021";s:4:"type";s:9:"marketing";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:44:"Improve the performance of your Facebook ads";s:7:"content";s:168:"Enable Facebook Pixel and Conversions API through the latest version of Facebook for WooCommerce for improved performance and measurement of your Facebook ad campaigns.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:30:"upgrade_now_facebook_pixel_api";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:11:"Upgrade now";}}s:3:"url";s:67:"plugin-install.php?tab=plugin-information&plugin=&section=changelog";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:3:{i:0;O:8:"stdClass":2:{s:4:"type";s:18:"publish_after_time";s:13:"publish_after";s:19:"2021-02-15 00:00:00";}i:1;O:8:"stdClass":2:{s:4:"type";s:19:"publish_before_time";s:14:"publish_before";s:19:"2021-02-29 00:00:00";}i:2;O:8:"stdClass":4:{s:4:"type";s:14:"plugin_version";s:6:"plugin";s:24:"facebook-for-woocommerce";s:7:"version";s:5:"2.1.4";s:8:"operator";s:2:"<=";}}}s:16:"facebook_ec_2021";O:8:"stdClass":8:{s:4:"slug";s:16:"facebook_ec_2021";s:4:"type";s:9:"marketing";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:59:"Sync your product catalog with Facebook to help boost sales";s:7:"content";s:170:"A single click adds all products to your Facebook Business Page shop. Product changes are automatically synced, with the flexibility to control which products are listed.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:22:"learn_more_facebook_ec";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:10:"Learn more";}}s:3:"url";s:42:"https://woocommerce.com/products/facebook/";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:10:"unactioned";}}s:5:"rules";a:3:{i:0;O:8:"stdClass":2:{s:4:"type";s:18:"publish_after_time";s:13:"publish_after";s:19:"2021-03-01 00:00:00";}i:1;O:8:"stdClass":2:{s:4:"type";s:19:"publish_before_time";s:14:"publish_before";s:19:"2021-03-15 00:00:00";}i:2;O:8:"stdClass":2:{s:4:"type";s:17:"plugins_activated";s:7:"plugins";a:1:{i:0;s:24:"facebook-for-woocommerce";}}}}s:37:"ecomm-need-help-setting-up-your-store";O:8:"stdClass":8:{s:4:"slug";s:37:"ecomm-need-help-setting-up-your-store";s:4:"type";s:4:"info";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:32:"Need help setting up your Store?";s:7:"content";s:350:"Schedule a free 30-min <a href="https://wordpress.com/support/concierge-support/">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:16:"set-up-concierge";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:21:"Schedule free session";}}s:3:"url";s:34:"https://wordpress.com/me/concierge";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:1:{i:0;O:8:"stdClass":2:{s:4:"type";s:17:"plugins_activated";s:7:"plugins";a:3:{i:0;s:35:"woocommerce-shipping-australia-post";i:1;s:32:"woocommerce-shipping-canada-post";i:2;s:30:"woocommerce-shipping-royalmail";}}}}s:20:"woocommerce-services";O:8:"stdClass":8:{s:4:"slug";s:20:"woocommerce-services";s:4:"type";s:4:"info";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:26:"WooCommerce Shipping & Tax";s:7:"content";s:255:"WooCommerce Shipping & Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:10:"learn-more";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:10:"Learn more";}}s:3:"url";s:84:"https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:10:"unactioned";}}s:5:"rules";a:2:{i:0;O:8:"stdClass":2:{s:4:"type";s:17:"plugins_activated";s:7:"plugins";a:1:{i:0;s:20:"woocommerce-services";}}i:1;O:8:"stdClass":3:{s:4:"type";s:18:"wcadmin_active_for";s:9:"operation";s:1:"<";s:4:"days";i:2;}}}s:32:"ecomm-unique-shopping-experience";O:8:"stdClass":8:{s:4:"slug";s:32:"ecomm-unique-shopping-experience";s:4:"type";s:4:"info";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:53:"For a shopping experience as unique as your customers";s:7:"content";s:274:"Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:43:"learn-more-ecomm-unique-shopping-experience";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:10:"Learn more";}}s:3:"url";s:71:"https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:2:{i:0;O:8:"stdClass":2:{s:4:"type";s:17:"plugins_activated";s:7:"plugins";a:3:{i:0;s:35:"woocommerce-shipping-australia-post";i:1;s:32:"woocommerce-shipping-canada-post";i:2;s:30:"woocommerce-shipping-royalmail";}}i:1;O:8:"stdClass":3:{s:4:"type";s:18:"wcadmin_active_for";s:9:"operation";s:1:"<";s:4:"days";i:2;}}}s:37:"wc-admin-getting-started-in-ecommerce";O:8:"stdClass":8:{s:4:"slug";s:37:"wc-admin-getting-started-in-ecommerce";s:4:"type";s:4:"info";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:38:"Getting Started in eCommerce - webinar";s:7:"content";s:174:"We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:17:"watch-the-webinar";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:17:"Watch the webinar";}}s:3:"url";s:28:"https://youtu.be/V_2XtCOyZ7o";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:2:{i:0;O:8:"stdClass":4:{s:4:"type";s:18:"onboarding_profile";s:5:"index";s:12:"setup_client";s:9:"operation";s:2:"!=";s:5:"value";b:1;}i:1;O:8:"stdClass":2:{s:4:"type";s:2:"or";s:8:"operands";a:3:{i:0;O:8:"stdClass":4:{s:4:"type";s:18:"onboarding_profile";s:5:"index";s:13:"product_count";s:9:"operation";s:1:"=";s:5:"value";s:1:"0";}i:1;O:8:"stdClass":4:{s:4:"type";s:18:"onboarding_profile";s:5:"index";s:7:"revenue";s:9:"operation";s:1:"=";s:5:"value";s:4:"none";}i:2;O:8:"stdClass":4:{s:4:"type";s:18:"onboarding_profile";s:5:"index";s:7:"revenue";s:9:"operation";s:1:"=";s:5:"value";s:10:"up-to-2500";}}}}}s:18:"your-first-product";O:8:"stdClass":8:{s:4:"slug";s:18:"your-first-product";s:4:"type";s:4:"info";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:18:"Your first product";s:7:"content";s:461:"That\'s huge! You\'re well on your way to building a successful online store — now it’s time to think about how you\'ll fulfill your orders.<br/><br/>Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href="https://href.li/?https://woocommerce.com/shipping" target="_blank">WooCommerce Shipping</a>.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:10:"learn-more";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:10:"Learn more";}}s:3:"url";s:82:"https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:4:{i:0;O:8:"stdClass":4:{s:4:"type";s:12:"stored_state";s:5:"index";s:22:"there_were_no_products";s:9:"operation";s:1:"=";s:5:"value";b:1;}i:1;O:8:"stdClass":4:{s:4:"type";s:12:"stored_state";s:5:"index";s:22:"there_are_now_products";s:9:"operation";s:1:"=";s:5:"value";b:1;}i:2;O:8:"stdClass":3:{s:4:"type";s:13:"product_count";s:9:"operation";s:2:">=";s:5:"value";i:1;}i:3;O:8:"stdClass":5:{s:4:"type";s:18:"onboarding_profile";s:5:"index";s:13:"product_types";s:9:"operation";s:8:"contains";s:5:"value";s:8:"physical";s:7:"default";a:0:{}}}}s:31:"wc-square-apple-pay-boost-sales";O:8:"stdClass":8:{s:4:"slug";s:31:"wc-square-apple-pay-boost-sales";s:4:"type";s:9:"marketing";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:26:"Boost sales with Apple Pay";s:7:"content";s:191:"Now that you accept Apple Pay® with Square you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:27:"boost-sales-marketing-guide";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:19:"See marketing guide";}}s:3:"url";s:97:"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-boost-sales";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:9:{i:0;O:8:"stdClass":4:{s:4:"type";s:14:"plugin_version";s:6:"plugin";s:11:"woocommerce";s:8:"operator";s:2:">=";s:7:"version";s:3:"4.8";}i:1;O:8:"stdClass":4:{s:4:"type";s:14:"plugin_version";s:6:"plugin";s:18:"woocommerce-square";s:8:"operator";s:2:">=";s:7:"version";s:3:"2.3";}i:2;O:8:"stdClass":5:{s:4:"type";s:6:"option";s:11:"option_name";s:27:"wc_square_apple_pay_enabled";s:5:"value";i:1;s:7:"default";b:0;s:9:"operation";s:1:"=";}i:3;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:38:"wc-square-apple-pay-grow-your-business";s:6:"status";s:8:"actioned";s:9:"operation";s:2:"!=";}i:4;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:38:"wc-square-apple-pay-grow-your-business";s:6:"status";s:10:"unactioned";s:9:"operation";s:2:"!=";}i:5;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:27:"wcpay-apple-pay-boost-sales";s:6:"status";s:8:"actioned";s:9:"operation";s:2:"!=";}i:6;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:27:"wcpay-apple-pay-boost-sales";s:6:"status";s:10:"unactioned";s:9:"operation";s:2:"!=";}i:7;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:34:"wcpay-apple-pay-grow-your-business";s:6:"status";s:8:"actioned";s:9:"operation";s:2:"!=";}i:8;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:34:"wcpay-apple-pay-grow-your-business";s:6:"status";s:10:"unactioned";s:9:"operation";s:2:"!=";}}}s:38:"wc-square-apple-pay-grow-your-business";O:8:"stdClass":8:{s:4:"slug";s:38:"wc-square-apple-pay-grow-your-business";s:4:"type";s:9:"marketing";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:45:"Grow your business with Square and Apple Pay ";s:7:"content";s:178:"Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:34:"grow-your-business-marketing-guide";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:19:"See marketing guide";}}s:3:"url";s:104:"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-grow-your-business";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:9:{i:0;O:8:"stdClass":4:{s:4:"type";s:14:"plugin_version";s:6:"plugin";s:11:"woocommerce";s:8:"operator";s:2:">=";s:7:"version";s:3:"4.8";}i:1;O:8:"stdClass":4:{s:4:"type";s:14:"plugin_version";s:6:"plugin";s:18:"woocommerce-square";s:8:"operator";s:2:">=";s:7:"version";s:3:"2.3";}i:2;O:8:"stdClass":5:{s:4:"type";s:6:"option";s:11:"option_name";s:27:"wc_square_apple_pay_enabled";s:5:"value";i:2;s:7:"default";b:0;s:9:"operation";s:1:"=";}i:3;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:31:"wc-square-apple-pay-boost-sales";s:6:"status";s:8:"actioned";s:9:"operation";s:2:"!=";}i:4;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:31:"wc-square-apple-pay-boost-sales";s:6:"status";s:10:"unactioned";s:9:"operation";s:2:"!=";}i:5;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:27:"wcpay-apple-pay-boost-sales";s:6:"status";s:8:"actioned";s:9:"operation";s:2:"!=";}i:6;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:27:"wcpay-apple-pay-boost-sales";s:6:"status";s:10:"unactioned";s:9:"operation";s:2:"!=";}i:7;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:34:"wcpay-apple-pay-grow-your-business";s:6:"status";s:8:"actioned";s:9:"operation";s:2:"!=";}i:8;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:34:"wcpay-apple-pay-grow-your-business";s:6:"status";s:10:"unactioned";s:9:"operation";s:2:"!=";}}}s:27:"wcpay-apple-pay-boost-sales";O:8:"stdClass":8:{s:4:"slug";s:27:"wcpay-apple-pay-boost-sales";s:4:"type";s:9:"marketing";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:26:"Boost sales with Apple Pay";s:7:"content";s:205:"Now that you accept Apple Pay® with WooCommerce Payments you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:27:"boost-sales-marketing-guide";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:19:"See marketing guide";}}s:3:"url";s:96:"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-boost-sales";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:4:{i:0;O:8:"stdClass":4:{s:4:"type";s:14:"plugin_version";s:6:"plugin";s:11:"woocommerce";s:8:"operator";s:2:">=";s:7:"version";s:3:"4.8";}i:1;O:8:"stdClass":5:{s:4:"type";s:6:"option";s:11:"option_name";s:26:"wcpay_is_apple_pay_enabled";s:5:"value";i:1;s:7:"default";b:0;s:9:"operation";s:1:"=";}i:2;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:34:"wcpay-apple-pay-grow-your-business";s:6:"status";s:8:"actioned";s:9:"operation";s:2:"!=";}i:3;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:34:"wcpay-apple-pay-grow-your-business";s:6:"status";s:10:"unactioned";s:9:"operation";s:2:"!=";}}}s:34:"wcpay-apple-pay-grow-your-business";O:8:"stdClass":8:{s:4:"slug";s:34:"wcpay-apple-pay-grow-your-business";s:4:"type";s:9:"marketing";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:58:"Grow your business with WooCommerce Payments and Apple Pay";s:7:"content";s:178:"Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:34:"grow-your-business-marketing-guide";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:19:"See marketing guide";}}s:3:"url";s:103:"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-grow-your-business";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:4:{i:0;O:8:"stdClass":4:{s:4:"type";s:14:"plugin_version";s:6:"plugin";s:11:"woocommerce";s:8:"operator";s:2:">=";s:7:"version";s:3:"4.8";}i:1;O:8:"stdClass":5:{s:4:"type";s:6:"option";s:11:"option_name";s:26:"wcpay_is_apple_pay_enabled";s:5:"value";i:2;s:7:"default";b:0;s:9:"operation";s:1:"=";}i:2;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:27:"wcpay-apple-pay-boost-sales";s:6:"status";s:8:"actioned";s:9:"operation";s:2:"!=";}i:3;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:27:"wcpay-apple-pay-boost-sales";s:6:"status";s:10:"unactioned";s:9:"operation";s:2:"!=";}}}s:37:"wc-admin-optimizing-the-checkout-flow";O:8:"stdClass":8:{s:4:"slug";s:37:"wc-admin-optimizing-the-checkout-flow";s:4:"type";s:4:"info";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:28:"Optimizing the checkout flow";s:7:"content";s:171:"It\'s crucial to get your store\'s checkout as smooth as possible to avoid losing sales. Let\'s take a look at how you can optimize the checkout experience for your shoppers.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:28:"optimizing-the-checkout-flow";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:10:"Learn more";}}s:3:"url";s:78:"https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:2:{i:0;O:8:"stdClass":3:{s:4:"type";s:18:"wcadmin_active_for";s:9:"operation";s:1:">";s:4:"days";i:3;}i:1;O:8:"stdClass":5:{s:4:"type";s:6:"option";s:11:"option_name";s:45:"woocommerce_task_list_tracked_completed_tasks";s:9:"operation";s:8:"contains";s:5:"value";s:8:"payments";s:7:"default";a:0:{}}}}s:39:"wc-admin-first-five-things-to-customize";O:8:"stdClass":8:{s:4:"slug";s:39:"wc-admin-first-five-things-to-customize";s:4:"type";s:4:"info";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:45:"The first 5 things to customize in your store";s:7:"content";s:173:"Deciding what to start with first is tricky. To help you properly prioritize, we\'ve put together this short list of the first few things you should customize in WooCommerce.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:10:"learn-more";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:10:"Learn more";}}s:3:"url";s:82:"https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:10:"unactioned";}}s:5:"rules";a:2:{i:0;O:8:"stdClass":3:{s:4:"type";s:18:"wcadmin_active_for";s:9:"operation";s:1:">";s:4:"days";i:2;}i:1;O:8:"stdClass":5:{s:4:"type";s:6:"option";s:11:"option_name";s:45:"woocommerce_task_list_tracked_completed_tasks";s:5:"value";s:9:"NOT EMPTY";s:7:"default";s:9:"NOT EMPTY";s:9:"operation";s:2:"!=";}}}}', 'yes'),
	(334, '_transient_woocommerce_reports-transient-version', '1616769253', 'yes'),
	(335, '_transient_timeout_orders-all-statuses', '1617374116', 'no'),
	(336, '_transient_orders-all-statuses', 'a:2:{s:7:"version";s:10:"1616769253";s:5:"value";a:3:{i:0;s:12:"wc-completed";i:1;s:10:"wc-on-hold";i:2;s:12:"wc-cancelled";}}', 'no'),
	(345, 'woocommerce_onboarding_profile', 'a:9:{s:12:"setup_client";b:0;s:8:"industry";a:1:{i:0;a:1:{s:4:"slug";s:27:"fashion-apparel-accessories";}}s:13:"product_types";a:1:{i:0;s:8:"physical";}s:13:"product_count";s:4:"1-10";s:14:"selling_venues";s:2:"no";s:19:"business_extensions";a:0:{}s:5:"theme";s:16:"child_storefront";s:7:"plugins";s:7:"skipped";s:9:"completed";b:1;}', 'yes'),
	(355, 'woocommerce_task_list_tracked_completed_tasks', 'a:3:{i:0;s:13:"store_details";i:1;s:8:"products";i:2;s:8:"shipping";}', 'yes'),
	(361, 'woocommerce_task_list_welcome_modal_dismissed', 'yes', 'yes'),
	(362, '_transient_shipping-transient-version', '1616064515', 'yes'),
	(363, '_transient_timeout_wc_shipping_method_count', '1618656451', 'no'),
	(364, '_transient_wc_shipping_method_count', 'a:2:{s:7:"version";s:10:"1616064416";s:5:"value";i:1;}', 'no'),
	(366, 'woocommerce_task_list_hidden', 'yes', 'yes'),
	(377, 'product_cat_children', 'a:0:{}', 'yes'),
	(384, '_transient_product_query-transient-version', '1616681259', 'yes'),
	(385, '_transient_product-transient-version', '1616681259', 'yes'),
	(397, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
	(403, '_transient_wc_attribute_taxonomies', 'a:1:{i:0;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"1";s:14:"attribute_name";s:7:"couleur";s:15:"attribute_label";s:7:"Couleur";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}}', 'yes'),
	(467, '_transient_timeout_wc_var_prices_12', '1618655885', 'no'),
	(468, '_transient_wc_var_prices_12', '{"version":"1616063880","f9e544f77b7eac7add281ef28ca5559f":{"price":[],"regular_price":[],"sale_price":[]}}', 'no'),
	(469, '_transient_timeout_wc_child_has_weight_12', '1618655885', 'no'),
	(470, '_transient_wc_child_has_weight_12', '0', 'no'),
	(471, '_transient_timeout_wc_child_has_dimensions_12', '1618655885', 'no'),
	(472, '_transient_wc_child_has_dimensions_12', '0', 'no'),
	(559, 'woocommerce_flat_rate_1_settings', 'a:3:{s:5:"title";s:7:"Forfait";s:10:"tax_status";s:7:"taxable";s:4:"cost";s:4:"2.00";}', 'yes'),
	(561, 'woocommerce_task_list_prompt_shown', '1', 'yes'),
	(562, 'woocommerce_default_homepage_layout', 'two_columns', 'yes'),
	(571, '_transient_timeout_wc_shipping_method_count_legacy', '1618656538', 'no'),
	(572, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:"version";s:10:"1616064515";s:5:"value";i:3;}', 'no'),
	(579, 'storefront_nux_guided_tour', '1', 'yes'),
	(588, 'woocommerce_maybe_regenerate_images_hash', '27acde77266b4d2a3491118955cb3f66', 'yes'),
	(617, '_transient_health-check-site-status-result', '{"good":"13","recommended":"6","critical":"1"}', 'yes'),
	(630, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:63:"https://downloads.wordpress.org/release/fr_FR/wordpress-5.7.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/fr_FR/wordpress-5.7.zip";s:10:"no_content";s:0:"";s:11:"new_bundled";s:0:"";s:7:"partial";s:0:"";s:8:"rollback";s:0:"";}s:7:"current";s:3:"5.7";s:7:"version";s:3:"5.7";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.6";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1617088005;s:15:"version_checked";s:3:"5.7";s:12:"translations";a:0:{}}', 'no'),
	(631, '_site_transient_update_themes', 'O:8:"stdClass":5:{s:12:"last_checked";i:1617088008;s:7:"checked";a:6:{s:16:"child_storefront";s:5:"1.0.0";s:16:"storefront-child";s:5:"1.0.0";s:10:"storefront";s:5:"3.5.1";s:14:"twentynineteen";s:3:"2.0";s:12:"twentytwenty";s:3:"1.7";s:15:"twentytwentyone";s:3:"1.2";}s:8:"response";a:0:{}s:9:"no_update";a:4:{s:10:"storefront";a:6:{s:5:"theme";s:10:"storefront";s:11:"new_version";s:5:"3.5.1";s:3:"url";s:40:"https://wordpress.org/themes/storefront/";s:7:"package";s:58:"https://downloads.wordpress.org/theme/storefront.3.5.1.zip";s:8:"requires";b:0;s:12:"requires_php";s:5:"5.6.0";}s:14:"twentynineteen";a:6:{s:5:"theme";s:14:"twentynineteen";s:11:"new_version";s:3:"2.0";s:3:"url";s:44:"https://wordpress.org/themes/twentynineteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip";s:8:"requires";s:5:"4.9.6";s:12:"requires_php";s:5:"5.2.4";}s:12:"twentytwenty";a:6:{s:5:"theme";s:12:"twentytwenty";s:11:"new_version";s:3:"1.7";s:3:"url";s:42:"https://wordpress.org/themes/twentytwenty/";s:7:"package";s:58:"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip";s:8:"requires";s:3:"4.7";s:12:"requires_php";s:5:"5.2.4";}s:15:"twentytwentyone";a:6:{s:5:"theme";s:15:"twentytwentyone";s:11:"new_version";s:3:"1.2";s:3:"url";s:45:"https://wordpress.org/themes/twentytwentyone/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentytwentyone.1.2.zip";s:8:"requires";s:3:"5.3";s:12:"requires_php";s:3:"5.6";}}s:12:"translations";a:0:{}}', 'no'),
	(632, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1617088008;s:7:"checked";a:4:{s:19:"akismet/akismet.php";s:5:"4.1.9";s:9:"hello.php";s:5:"1.7.2";s:55:"show-message-on-dashboard/show-message-on-dashboard.php";s:0:"";s:27:"woocommerce/woocommerce.php";s:5:"5.1.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.1.9";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:1:{s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/woocommerce";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"5.1.0";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.5.1.0.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418";s:2:"1x";s:64:"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418";}s:7:"banners";a:2:{s:2:"2x";s:67:"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418";s:2:"1x";s:66:"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
	(703, '_transient_orders-transient-version', '1616768912', 'yes'),
	(739, 'woocommerce_cheque_settings', 'a:4:{s:7:"enabled";s:3:"yes";s:5:"title";s:21:"Paiements par chèque";s:11:"description";s:81:"Veuillez envoyer un chèque à Nom de la boutique, rue, code postal, ville, pays.";s:12:"instructions";s:0:"";}', 'yes'),
	(756, 'woocommerce_admin_last_orders_milestone', '1', 'yes'),
	(1073, '_transient_timeout_wc_product_loop_6147550c3f3af9236789687d89ed040c', '1619273366', 'no'),
	(1074, '_transient_wc_product_loop_6147550c3f3af9236789687d89ed040c', 'a:2:{s:7:"version";s:10:"1616681259";s:5:"value";O:8:"stdClass":5:{s:3:"ids";a:2:{i:0;i:17;i:1;i:13;}s:5:"total";i:2;s:11:"total_pages";i:1;s:8:"per_page";i:2;s:12:"current_page";i:1;}}', 'no'),
	(1075, '_transient_timeout_wc_product_loop_cd4ceb08a6a3e9bac7f4260a4e03a47f', '1619273366', 'no'),
	(1076, '_transient_wc_product_loop_cd4ceb08a6a3e9bac7f4260a4e03a47f', 'a:2:{s:7:"version";s:10:"1616681259";s:5:"value";O:8:"stdClass":5:{s:3:"ids";a:2:{i:0;i:17;i:1;i:13;}s:5:"total";i:2;s:11:"total_pages";i:1;s:8:"per_page";i:4;s:12:"current_page";i:1;}}', 'no'),
	(1105, '_site_transient_timeout_browser_54855be98a049915c6fe552dcf945444', '1617285802', 'no'),
	(1106, '_site_transient_browser_54855be98a049915c6fe552dcf945444', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"88.0.4324.150";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
	(1107, '_site_transient_timeout_php_check_73ecd64509db505b6046b20394d377da', '1617285803', 'no'),
	(1108, '_site_transient_php_check_73ecd64509db505b6046b20394d377da', 'a:5:{s:19:"recommended_version";s:3:"7.4";s:15:"minimum_version";s:6:"5.6.20";s:12:"is_supported";b:0;s:9:"is_secure";b:1;s:13:"is_acceptable";b:1;}', 'no'),
	(1117, '_transient_timeout_wc_report_orders_9a85c3c7cc83daaf716964e869a9a27e', '1617293394', 'no'),
	(1118, '_transient_wc_report_orders_9a85c3c7cc83daaf716964e869a9a27e', 'a:2:{s:7:"version";s:10:"1616681233";s:5:"value";O:8:"stdClass":4:{s:4:"data";a:3:{i:0;a:11:{s:8:"order_id";i:31;s:9:"parent_id";i:0;s:12:"date_created";s:19:"2021-03-25 15:06:51";s:16:"date_created_gmt";s:19:"2021-03-25 14:06:51";s:6:"status";s:7:"on-hold";s:11:"customer_id";i:1;s:9:"net_total";d:12;s:11:"total_sales";d:14;s:14:"num_items_sold";i:1;s:13:"customer_type";s:9:"returning";s:13:"extended_info";a:3:{s:8:"products";a:1:{i:0;a:3:{s:2:"id";s:2:"18";s:4:"name";s:16:"Chaussure - Bleu";s:8:"quantity";s:1:"1";}}s:7:"coupons";a:0:{}s:8:"customer";a:12:{s:11:"customer_id";i:1;s:7:"user_id";s:1:"1";s:8:"username";s:4:"root";s:10:"first_name";s:5:"Elise";s:9:"last_name";s:8:"Andaloro";s:5:"email";s:12:"test@test.fr";s:16:"date_last_active";s:19:"2021-03-25 14:06:51";s:15:"date_registered";s:19:"2021-03-18 09:22:16";s:7:"country";s:2:"FR";s:8:"postcode";s:5:"00000";s:4:"city";s:4:"test";s:5:"state";s:0:"";}}}i:1;a:11:{s:8:"order_id";i:29;s:9:"parent_id";i:0;s:12:"date_created";s:19:"2021-03-22 16:17:24";s:16:"date_created_gmt";s:19:"2021-03-22 15:17:24";s:6:"status";s:7:"on-hold";s:11:"customer_id";i:1;s:9:"net_total";d:20;s:11:"total_sales";d:20;s:14:"num_items_sold";i:1;s:13:"customer_type";s:9:"returning";s:13:"extended_info";a:3:{s:8:"products";a:1:{i:0;a:3:{s:2:"id";s:2:"13";s:4:"name";s:10:"Sac à dos";s:8:"quantity";s:1:"1";}}s:7:"coupons";a:0:{}s:8:"customer";a:12:{s:11:"customer_id";i:1;s:7:"user_id";s:1:"1";s:8:"username";s:4:"root";s:10:"first_name";s:5:"Elise";s:9:"last_name";s:8:"Andaloro";s:5:"email";s:12:"test@test.fr";s:16:"date_last_active";s:19:"2021-03-25 14:06:51";s:15:"date_registered";s:19:"2021-03-18 09:22:16";s:7:"country";s:2:"FR";s:8:"postcode";s:5:"00000";s:4:"city";s:4:"test";s:5:"state";s:0:"";}}}i:2;a:11:{s:8:"order_id";i:24;s:9:"parent_id";i:0;s:12:"date_created";s:19:"2021-03-22 15:51:09";s:16:"date_created_gmt";s:19:"2021-03-22 14:51:09";s:6:"status";s:7:"on-hold";s:11:"customer_id";i:1;s:9:"net_total";d:20;s:11:"total_sales";d:20;s:14:"num_items_sold";i:1;s:13:"customer_type";s:9:"returning";s:13:"extended_info";a:3:{s:8:"products";a:1:{i:0;a:3:{s:2:"id";s:2:"13";s:4:"name";s:10:"Sac à dos";s:8:"quantity";s:1:"1";}}s:7:"coupons";a:0:{}s:8:"customer";a:12:{s:11:"customer_id";i:1;s:7:"user_id";s:1:"1";s:8:"username";s:4:"root";s:10:"first_name";s:5:"Elise";s:9:"last_name";s:8:"Andaloro";s:5:"email";s:12:"test@test.fr";s:16:"date_last_active";s:19:"2021-03-25 14:06:51";s:15:"date_registered";s:19:"2021-03-18 09:22:16";s:7:"country";s:2:"FR";s:8:"postcode";s:5:"00000";s:4:"city";s:4:"test";s:5:"state";s:0:"";}}}}s:5:"total";i:3;s:5:"pages";i:1;s:7:"page_no";i:1;}}', 'no'),
	(1119, '_transient_timeout_wc_report_orders_stats_d4c59d8b66d68b584826f72fc9baec29', '1617285828', 'no'),
	(1120, '_transient_wc_report_orders_stats_d4c59d8b66d68b584826f72fc9baec29', 'a:2:{s:7:"version";s:10:"1616680749";s:5:"value";O:8:"stdClass":5:{s:6:"totals";O:8:"stdClass":15:{s:12:"orders_count";i:0;s:14:"num_items_sold";i:0;s:11:"gross_sales";d:0;s:11:"total_sales";d:0;s:7:"coupons";d:0;s:13:"coupons_count";i:0;s:7:"refunds";d:0;s:5:"taxes";d:0;s:8:"shipping";d:0;s:11:"net_revenue";d:0;s:19:"avg_items_per_order";d:0;s:15:"avg_order_value";d:0;s:15:"total_customers";i:0;s:8:"products";i:0;s:8:"segments";a:0:{}}s:9:"intervals";a:1:{i:0;a:6:{s:8:"interval";s:7:"2021-12";s:10:"date_start";s:19:"2021-03-25 00:00:00";s:14:"date_start_gmt";s:19:"2021-03-24 23:00:00";s:8:"date_end";s:19:"2021-03-25 15:03:00";s:12:"date_end_gmt";s:19:"2021-03-25 14:03:00";s:9:"subtotals";O:8:"stdClass":14:{s:12:"orders_count";i:0;s:14:"num_items_sold";i:0;s:11:"gross_sales";d:0;s:11:"total_sales";d:0;s:7:"coupons";d:0;s:13:"coupons_count";i:0;s:7:"refunds";d:0;s:5:"taxes";d:0;s:8:"shipping";d:0;s:11:"net_revenue";d:0;s:19:"avg_items_per_order";d:0;s:15:"avg_order_value";d:0;s:15:"total_customers";i:0;s:8:"segments";a:0:{}}}}s:5:"total";i:1;s:5:"pages";i:1;s:7:"page_no";i:1;}}', 'no'),
	(1121, '_transient_timeout_wc_report_orders_stats_651dec9d5a78fadcb9170a83522bbbb6', '1617293394', 'no'),
	(1122, '_transient_wc_report_orders_stats_651dec9d5a78fadcb9170a83522bbbb6', 'a:2:{s:7:"version";s:10:"1616681233";s:5:"value";O:8:"stdClass":5:{s:6:"totals";O:8:"stdClass":15:{s:12:"orders_count";i:0;s:14:"num_items_sold";i:0;s:11:"gross_sales";d:0;s:11:"total_sales";d:0;s:7:"coupons";d:0;s:13:"coupons_count";i:0;s:7:"refunds";d:0;s:5:"taxes";d:0;s:8:"shipping";d:0;s:11:"net_revenue";d:0;s:19:"avg_items_per_order";d:0;s:15:"avg_order_value";d:0;s:15:"total_customers";i:0;s:8:"products";i:0;s:8:"segments";a:0:{}}s:9:"intervals";a:1:{i:0;a:6:{s:8:"interval";s:7:"2021-12";s:10:"date_start";s:19:"2021-03-24 00:00:00";s:14:"date_start_gmt";s:19:"2021-03-23 23:00:00";s:8:"date_end";s:19:"2021-03-24 23:59:59";s:12:"date_end_gmt";s:19:"2021-03-24 22:59:59";s:9:"subtotals";O:8:"stdClass":14:{s:12:"orders_count";i:0;s:14:"num_items_sold";i:0;s:11:"gross_sales";d:0;s:11:"total_sales";d:0;s:7:"coupons";d:0;s:13:"coupons_count";i:0;s:7:"refunds";d:0;s:5:"taxes";d:0;s:8:"shipping";d:0;s:11:"net_revenue";d:0;s:19:"avg_items_per_order";d:0;s:15:"avg_order_value";d:0;s:15:"total_customers";i:0;s:8:"segments";a:0:{}}}}s:5:"total";i:1;s:5:"pages";i:1;s:7:"page_no";i:1;}}', 'no'),
	(1123, '_transient_timeout_wc_report_orders_stats_eb799d3494f550af277ad878a8ba16be', '1617285828', 'no'),
	(1124, '_transient_timeout_wc_report_orders_stats_561645d47887435c4e3b14db415064c6', '1617293394', 'no'),
	(1125, '_transient_wc_report_orders_stats_eb799d3494f550af277ad878a8ba16be', 'a:2:{s:7:"version";s:10:"1616680749";s:5:"value";O:8:"stdClass":5:{s:6:"totals";O:8:"stdClass":15:{s:12:"orders_count";i:0;s:14:"num_items_sold";i:0;s:11:"gross_sales";d:0;s:11:"total_sales";d:0;s:7:"coupons";d:0;s:13:"coupons_count";i:0;s:7:"refunds";d:0;s:5:"taxes";d:0;s:8:"shipping";d:0;s:11:"net_revenue";d:0;s:19:"avg_items_per_order";d:0;s:15:"avg_order_value";d:0;s:15:"total_customers";i:0;s:8:"products";i:0;s:8:"segments";a:0:{}}s:9:"intervals";a:1:{i:0;a:6:{s:8:"interval";s:7:"2021-12";s:10:"date_start";s:19:"2021-03-25 00:00:00";s:14:"date_start_gmt";s:19:"2021-03-24 23:00:00";s:8:"date_end";s:19:"2021-03-25 15:03:00";s:12:"date_end_gmt";s:19:"2021-03-25 14:03:00";s:9:"subtotals";O:8:"stdClass":14:{s:12:"orders_count";i:0;s:14:"num_items_sold";i:0;s:11:"gross_sales";d:0;s:11:"total_sales";d:0;s:7:"coupons";d:0;s:13:"coupons_count";i:0;s:7:"refunds";d:0;s:5:"taxes";d:0;s:8:"shipping";d:0;s:11:"net_revenue";d:0;s:19:"avg_items_per_order";d:0;s:15:"avg_order_value";d:0;s:15:"total_customers";i:0;s:8:"segments";a:0:{}}}}s:5:"total";i:1;s:5:"pages";i:1;s:7:"page_no";i:1;}}', 'no'),
	(1126, '_transient_wc_report_orders_stats_561645d47887435c4e3b14db415064c6', 'a:2:{s:7:"version";s:10:"1616681233";s:5:"value";O:8:"stdClass":5:{s:6:"totals";O:8:"stdClass":15:{s:12:"orders_count";i:0;s:14:"num_items_sold";i:0;s:11:"gross_sales";d:0;s:11:"total_sales";d:0;s:7:"coupons";d:0;s:13:"coupons_count";i:0;s:7:"refunds";d:0;s:5:"taxes";d:0;s:8:"shipping";d:0;s:11:"net_revenue";d:0;s:19:"avg_items_per_order";d:0;s:15:"avg_order_value";d:0;s:15:"total_customers";i:0;s:8:"products";i:0;s:8:"segments";a:0:{}}s:9:"intervals";a:1:{i:0;a:6:{s:8:"interval";s:7:"2021-12";s:10:"date_start";s:19:"2021-03-24 00:00:00";s:14:"date_start_gmt";s:19:"2021-03-23 23:00:00";s:8:"date_end";s:19:"2021-03-24 23:59:59";s:12:"date_end_gmt";s:19:"2021-03-24 22:59:59";s:9:"subtotals";O:8:"stdClass":14:{s:12:"orders_count";i:0;s:14:"num_items_sold";i:0;s:11:"gross_sales";d:0;s:11:"total_sales";d:0;s:7:"coupons";d:0;s:13:"coupons_count";i:0;s:7:"refunds";d:0;s:5:"taxes";d:0;s:8:"shipping";d:0;s:11:"net_revenue";d:0;s:19:"avg_items_per_order";d:0;s:15:"avg_order_value";d:0;s:15:"total_customers";i:0;s:8:"segments";a:0:{}}}}s:5:"total";i:1;s:5:"pages";i:1;s:7:"page_no";i:1;}}', 'no'),
	(1127, '_transient_timeout_wc_report_orders_036321c54fcfacafe79d8561259ce92f', '1617285829', 'no'),
	(1128, '_transient_wc_report_orders_036321c54fcfacafe79d8561259ce92f', 'a:2:{s:7:"version";s:10:"1616680749";s:5:"value";O:8:"stdClass":4:{s:4:"data";a:2:{i:0;a:11:{s:8:"order_id";i:29;s:9:"parent_id";i:0;s:12:"date_created";s:19:"2021-03-22 16:17:24";s:16:"date_created_gmt";s:19:"2021-03-22 15:17:24";s:6:"status";s:7:"on-hold";s:11:"customer_id";i:1;s:9:"net_total";d:20;s:11:"total_sales";d:20;s:14:"num_items_sold";i:1;s:13:"customer_type";s:9:"returning";s:13:"extended_info";a:3:{s:8:"products";a:1:{i:0;a:3:{s:2:"id";s:2:"13";s:4:"name";s:10:"Sac à dos";s:8:"quantity";s:1:"1";}}s:7:"coupons";a:0:{}s:8:"customer";a:12:{s:11:"customer_id";i:1;s:7:"user_id";s:1:"1";s:8:"username";s:4:"root";s:10:"first_name";s:5:"Elise";s:9:"last_name";s:8:"Andaloro";s:5:"email";s:25:"elise.andaloro@hotmail.fr";s:16:"date_last_active";s:19:"2021-03-25 00:00:00";s:15:"date_registered";s:19:"2021-03-18 09:22:16";s:7:"country";s:2:"FR";s:8:"postcode";s:5:"42680";s:4:"city";s:24:"Saint Marcellin en Forez";s:5:"state";s:0:"";}}}i:1;a:11:{s:8:"order_id";i:24;s:9:"parent_id";i:0;s:12:"date_created";s:19:"2021-03-22 15:51:09";s:16:"date_created_gmt";s:19:"2021-03-22 14:51:09";s:6:"status";s:7:"on-hold";s:11:"customer_id";i:1;s:9:"net_total";d:20;s:11:"total_sales";d:20;s:14:"num_items_sold";i:1;s:13:"customer_type";s:9:"returning";s:13:"extended_info";a:3:{s:8:"products";a:1:{i:0;a:3:{s:2:"id";s:2:"13";s:4:"name";s:10:"Sac à dos";s:8:"quantity";s:1:"1";}}s:7:"coupons";a:0:{}s:8:"customer";a:12:{s:11:"customer_id";i:1;s:7:"user_id";s:1:"1";s:8:"username";s:4:"root";s:10:"first_name";s:5:"Elise";s:9:"last_name";s:8:"Andaloro";s:5:"email";s:25:"elise.andaloro@hotmail.fr";s:16:"date_last_active";s:19:"2021-03-25 00:00:00";s:15:"date_registered";s:19:"2021-03-18 09:22:16";s:7:"country";s:2:"FR";s:8:"postcode";s:5:"42680";s:4:"city";s:24:"Saint Marcellin en Forez";s:5:"state";s:0:"";}}}}s:5:"total";i:2;s:5:"pages";i:1;s:7:"page_no";i:1;}}', 'no'),
	(1148, '_transient_timeout_wc_product_children_17', '1619273168', 'no'),
	(1149, '_transient_wc_product_children_17', 'a:2:{s:3:"all";a:2:{i:0;i:19;i:1;i:18;}s:7:"visible";a:2:{i:0;i:19;i:1;i:18;}}', 'no'),
	(1151, '_transient_timeout_wc_var_prices_17', '1619273263', 'no'),
	(1152, '_transient_wc_var_prices_17', '{"version":"1616681259","f9e544f77b7eac7add281ef28ca5559f":{"price":{"19":"12.00","18":"12.00"},"regular_price":{"19":"12.00","18":"12.00"},"sale_price":{"19":"12.00","18":"12.00"}}}', 'no'),
	(1153, '_transient_timeout_wc_child_has_weight_17', '1619273172', 'no'),
	(1154, '_transient_wc_child_has_weight_17', '0', 'no'),
	(1155, '_transient_timeout_wc_child_has_dimensions_17', '1619273172', 'no'),
	(1156, '_transient_wc_child_has_dimensions_17', '0', 'no'),
	(1173, '_transient_timeout_wc_term_counts', '1619273366', 'no'),
	(1174, '_transient_wc_term_counts', 'a:3:{i:15;s:1:"2";i:16;s:0:"";i:17;s:1:"0";}', 'no'),
	(1178, '_transient_timeout_wc_low_stock_count', '1619273364', 'no'),
	(1179, '_transient_wc_low_stock_count', '0', 'no'),
	(1180, '_transient_timeout_wc_outofstock_count', '1619273364', 'no'),
	(1181, '_transient_wc_outofstock_count', '0', 'no'),
	(1182, '_transient_timeout_wc_featured_products', '1619273366', 'no'),
	(1183, '_transient_wc_featured_products', 'a:0:{}', 'no'),
	(1184, '_transient_timeout_wc_products_onsale', '1619273366', 'no'),
	(1185, '_transient_wc_products_onsale', 'a:0:{}', 'no'),
	(1253, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(1261, 'recovery_mode_email_last_sent', '1616687626', 'yes'),
	(1276, '_transient_timeout_wc_report_orders_stats_d3f7c32478289f5c48cc6670f0a9ddbc', '1617293394', 'no'),
	(1277, '_transient_wc_report_orders_stats_d3f7c32478289f5c48cc6670f0a9ddbc', 'a:2:{s:7:"version";s:10:"1616681233";s:5:"value";O:8:"stdClass":5:{s:6:"totals";O:8:"stdClass":15:{s:12:"orders_count";i:1;s:14:"num_items_sold";i:1;s:11:"gross_sales";d:12;s:11:"total_sales";d:14;s:7:"coupons";d:0;s:13:"coupons_count";i:0;s:7:"refunds";d:0;s:5:"taxes";d:0;s:8:"shipping";d:2;s:11:"net_revenue";d:12;s:19:"avg_items_per_order";d:1;s:15:"avg_order_value";d:12;s:15:"total_customers";i:1;s:8:"products";i:1;s:8:"segments";a:0:{}}s:9:"intervals";a:1:{i:0;a:6:{s:8:"interval";s:7:"2021-12";s:10:"date_start";s:19:"2021-03-25 00:00:00";s:14:"date_start_gmt";s:19:"2021-03-24 23:00:00";s:8:"date_end";s:19:"2021-03-25 17:09:00";s:12:"date_end_gmt";s:19:"2021-03-25 16:09:00";s:9:"subtotals";O:8:"stdClass":14:{s:12:"orders_count";i:1;s:14:"num_items_sold";i:1;s:11:"gross_sales";d:12;s:11:"total_sales";d:14;s:7:"coupons";d:0;s:13:"coupons_count";i:0;s:7:"refunds";d:0;s:5:"taxes";d:0;s:8:"shipping";d:2;s:11:"net_revenue";d:12;s:19:"avg_items_per_order";d:1;s:15:"avg_order_value";d:12;s:15:"total_customers";i:1;s:8:"segments";a:0:{}}}}s:5:"total";i:1;s:5:"pages";i:1;s:7:"page_no";i:1;}}', 'no'),
	(1278, '_transient_timeout_wc_report_orders_stats_63410a294b3688fa8fab3d3b78d96d22', '1617293394', 'no'),
	(1279, '_transient_wc_report_orders_stats_63410a294b3688fa8fab3d3b78d96d22', 'a:2:{s:7:"version";s:10:"1616681233";s:5:"value";O:8:"stdClass":5:{s:6:"totals";O:8:"stdClass":15:{s:12:"orders_count";i:1;s:14:"num_items_sold";i:1;s:11:"gross_sales";d:12;s:11:"total_sales";d:14;s:7:"coupons";d:0;s:13:"coupons_count";i:0;s:7:"refunds";d:0;s:5:"taxes";d:0;s:8:"shipping";d:2;s:11:"net_revenue";d:12;s:19:"avg_items_per_order";d:1;s:15:"avg_order_value";d:12;s:15:"total_customers";i:1;s:8:"products";i:1;s:8:"segments";a:0:{}}s:9:"intervals";a:1:{i:0;a:6:{s:8:"interval";s:7:"2021-12";s:10:"date_start";s:19:"2021-03-25 00:00:00";s:14:"date_start_gmt";s:19:"2021-03-24 23:00:00";s:8:"date_end";s:19:"2021-03-25 17:09:00";s:12:"date_end_gmt";s:19:"2021-03-25 16:09:00";s:9:"subtotals";O:8:"stdClass":14:{s:12:"orders_count";i:1;s:14:"num_items_sold";i:1;s:11:"gross_sales";d:12;s:11:"total_sales";d:14;s:7:"coupons";d:0;s:13:"coupons_count";i:0;s:7:"refunds";d:0;s:5:"taxes";d:0;s:8:"shipping";d:2;s:11:"net_revenue";d:12;s:19:"avg_items_per_order";d:1;s:15:"avg_order_value";d:12;s:15:"total_customers";i:1;s:8:"segments";a:0:{}}}}s:5:"total";i:1;s:5:"pages";i:1;s:7:"page_no";i:1;}}', 'no'),
	(1280, '_transient_timeout_wc_report_orders_1ac9bae637bba91dd5041a77d4c1b6bb', '1617293395', 'no'),
	(1281, '_transient_wc_report_orders_1ac9bae637bba91dd5041a77d4c1b6bb', 'a:2:{s:7:"version";s:10:"1616681233";s:5:"value";O:8:"stdClass":4:{s:4:"data";a:3:{i:0;a:11:{s:8:"order_id";i:31;s:9:"parent_id";i:0;s:12:"date_created";s:19:"2021-03-25 15:06:51";s:16:"date_created_gmt";s:19:"2021-03-25 14:06:51";s:6:"status";s:7:"on-hold";s:11:"customer_id";i:1;s:9:"net_total";d:12;s:11:"total_sales";d:14;s:14:"num_items_sold";i:1;s:13:"customer_type";s:9:"returning";s:13:"extended_info";a:3:{s:8:"products";a:1:{i:0;a:3:{s:2:"id";s:2:"18";s:4:"name";s:16:"Chaussure - Bleu";s:8:"quantity";s:1:"1";}}s:7:"coupons";a:0:{}s:8:"customer";a:12:{s:11:"customer_id";i:1;s:7:"user_id";s:1:"1";s:8:"username";s:4:"root";s:10:"first_name";s:5:"Elise";s:9:"last_name";s:8:"Andaloro";s:5:"email";s:12:"test@test.fr";s:16:"date_last_active";s:19:"2021-03-25 14:06:51";s:15:"date_registered";s:19:"2021-03-18 09:22:16";s:7:"country";s:2:"FR";s:8:"postcode";s:5:"00000";s:4:"city";s:4:"test";s:5:"state";s:0:"";}}}i:1;a:11:{s:8:"order_id";i:29;s:9:"parent_id";i:0;s:12:"date_created";s:19:"2021-03-22 16:17:24";s:16:"date_created_gmt";s:19:"2021-03-22 15:17:24";s:6:"status";s:7:"on-hold";s:11:"customer_id";i:1;s:9:"net_total";d:20;s:11:"total_sales";d:20;s:14:"num_items_sold";i:1;s:13:"customer_type";s:9:"returning";s:13:"extended_info";a:3:{s:8:"products";a:1:{i:0;a:3:{s:2:"id";s:2:"13";s:4:"name";s:10:"Sac à dos";s:8:"quantity";s:1:"1";}}s:7:"coupons";a:0:{}s:8:"customer";a:12:{s:11:"customer_id";i:1;s:7:"user_id";s:1:"1";s:8:"username";s:4:"root";s:10:"first_name";s:5:"Elise";s:9:"last_name";s:8:"Andaloro";s:5:"email";s:12:"test@test.fr";s:16:"date_last_active";s:19:"2021-03-25 14:06:51";s:15:"date_registered";s:19:"2021-03-18 09:22:16";s:7:"country";s:2:"FR";s:8:"postcode";s:5:"00000";s:4:"city";s:4:"test";s:5:"state";s:0:"";}}}i:2;a:11:{s:8:"order_id";i:24;s:9:"parent_id";i:0;s:12:"date_created";s:19:"2021-03-22 15:51:09";s:16:"date_created_gmt";s:19:"2021-03-22 14:51:09";s:6:"status";s:7:"on-hold";s:11:"customer_id";i:1;s:9:"net_total";d:20;s:11:"total_sales";d:20;s:14:"num_items_sold";i:1;s:13:"customer_type";s:9:"returning";s:13:"extended_info";a:3:{s:8:"products";a:1:{i:0;a:3:{s:2:"id";s:2:"13";s:4:"name";s:10:"Sac à dos";s:8:"quantity";s:1:"1";}}s:7:"coupons";a:0:{}s:8:"customer";a:12:{s:11:"customer_id";i:1;s:7:"user_id";s:1:"1";s:8:"username";s:4:"root";s:10:"first_name";s:5:"Elise";s:9:"last_name";s:8:"Andaloro";s:5:"email";s:12:"test@test.fr";s:16:"date_last_active";s:19:"2021-03-25 14:06:51";s:15:"date_registered";s:19:"2021-03-18 09:22:16";s:7:"country";s:2:"FR";s:8:"postcode";s:5:"00000";s:4:"city";s:4:"test";s:5:"state";s:0:"";}}}}s:5:"total";i:3;s:5:"pages";i:1;s:7:"page_no";i:1;}}', 'no'),
	(1307, 'woocommerce_catalog_rows', '4', 'yes'),
	(1308, 'woocommerce_catalog_columns', '3', 'yes'),
	(1320, 'woocommerce_sales_record_date', '2021-03-25', 'yes'),
	(1321, 'woocommerce_sales_record_amount', '14', 'yes'),
	(1417, 'action_scheduler_migration_status', 'complete', 'yes'),
	(1425, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:14:"total_comments";i:1;s:3:"all";i:1;s:8:"approved";s:1:"1";s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
	(1468, 'theme_mods_storefront-child', 'a:5:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:34:"storefront_button_background_color";s:7:"#ec752d";s:38:"storefront_button_alt_background_color";s:7:"#ec752d";}', 'yes'),
	(1476, '_transient_timeout__woocommerce_helper_subscriptions', '1617088906', 'no'),
	(1477, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
	(1478, '_site_transient_timeout_theme_roots', '1617089806', 'no'),
	(1479, '_site_transient_theme_roots', 'a:6:{s:16:"child_storefront";s:7:"/themes";s:16:"storefront-child";s:7:"/themes";s:10:"storefront";s:7:"/themes";s:14:"twentynineteen";s:7:"/themes";s:12:"twentytwenty";s:7:"/themes";s:15:"twentytwentyone";s:7:"/themes";}', 'no'),
	(1480, '_transient_timeout__woocommerce_helper_updates', '1617131207', 'no'),
	(1481, '_transient__woocommerce_helper_updates', 'a:4:{s:4:"hash";s:32:"d751713988987e9331980363e24189ce";s:7:"updated";i:1617088007;s:8:"products";a:0:{}s:6:"errors";a:1:{i:0;s:10:"http-error";}}', 'no'),
	(1482, '_transient_is_multi_author', '0', 'yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_postmeta
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_postmeta : ~116 rows (environ)
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
	(1, 17, '_edit_lock', '1616683959:1'),
	(2, 17, 'total_sales', '1'),
	(3, 17, '_tax_status', 'taxable'),
	(4, 17, '_tax_class', ''),
	(5, 17, '_manage_stock', 'no'),
	(6, 17, '_backorders', 'no'),
	(7, 17, '_sold_individually', 'no'),
	(8, 17, '_virtual', 'no'),
	(9, 17, '_downloadable', 'no'),
	(10, 17, '_download_limit', '-1'),
	(11, 17, '_download_expiry', '-1'),
	(12, 17, '_stock', NULL),
	(13, 17, '_stock_status', 'instock'),
	(14, 17, '_wc_average_rating', '0'),
	(15, 17, '_wc_review_count', '0'),
	(16, 17, '_product_attributes', 'a:1:{s:10:"pa_couleur";a:6:{s:4:"name";s:10:"pa_couleur";s:5:"value";s:0:"";s:8:"position";i:0;s:10:"is_visible";i:1;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:1;}}'),
	(17, 17, '_product_version', '5.1.0'),
	(18, 19, '_variation_description', ''),
	(19, 19, 'total_sales', '0'),
	(20, 19, '_tax_status', 'taxable'),
	(21, 19, '_tax_class', 'parent'),
	(22, 19, '_manage_stock', 'no'),
	(23, 19, '_backorders', 'no'),
	(24, 19, '_sold_individually', 'no'),
	(25, 19, '_virtual', 'no'),
	(26, 19, '_downloadable', 'no'),
	(27, 19, '_download_limit', '-1'),
	(28, 19, '_download_expiry', '-1'),
	(29, 19, '_thumbnail_id', '0'),
	(30, 19, '_stock', NULL),
	(31, 19, '_stock_status', 'instock'),
	(32, 19, '_wc_average_rating', '0'),
	(33, 19, '_wc_review_count', '0'),
	(34, 19, 'attribute_pa_couleur', 'beige'),
	(35, 19, '_product_version', '5.1.0'),
	(36, 18, '_variation_description', ''),
	(37, 18, '_regular_price', '12'),
	(38, 18, 'total_sales', '0'),
	(39, 18, '_tax_status', 'taxable'),
	(40, 18, '_tax_class', 'parent'),
	(41, 18, '_manage_stock', 'no'),
	(42, 18, '_backorders', 'no'),
	(43, 18, '_sold_individually', 'no'),
	(44, 18, '_virtual', 'no'),
	(45, 18, '_downloadable', 'no'),
	(46, 18, '_download_limit', '-1'),
	(47, 18, '_download_expiry', '-1'),
	(48, 18, '_thumbnail_id', '0'),
	(49, 18, '_stock', NULL),
	(50, 18, '_stock_status', 'instock'),
	(51, 18, '_wc_average_rating', '0'),
	(52, 18, '_wc_review_count', '0'),
	(53, 18, 'attribute_pa_couleur', 'bleu'),
	(54, 18, '_price', '12'),
	(55, 18, '_product_version', '5.1.0'),
	(57, 19, '_regular_price', '12'),
	(58, 19, '_price', '12'),
	(59, 17, '_price', '12'),
	(60, 17, '_edit_last', '1'),
	(61, 31, '_order_key', 'wc_order_7PWLld5PNRphG'),
	(62, 31, '_customer_user', '1'),
	(63, 31, '_payment_method', 'cheque'),
	(64, 31, '_payment_method_title', 'Paiements par chèque'),
	(65, 31, '_customer_ip_address', '127.0.0.1'),
	(66, 31, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36'),
	(67, 31, '_created_via', 'checkout'),
	(68, 31, '_cart_hash', '815dffc019b8518e9dc8ac2257be9f44'),
	(69, 31, '_billing_first_name', 'test'),
	(70, 31, '_billing_last_name', 'test'),
	(71, 31, '_billing_address_1', 'test'),
	(72, 31, '_billing_city', 'test'),
	(73, 31, '_billing_postcode', '00000'),
	(74, 31, '_billing_country', 'FR'),
	(75, 31, '_billing_email', 'test@test.fr'),
	(76, 31, '_billing_phone', '0000000000'),
	(77, 31, '_shipping_first_name', 'test'),
	(78, 31, '_shipping_last_name', 'test'),
	(79, 31, '_shipping_address_1', 'test'),
	(80, 31, '_shipping_city', 'test'),
	(81, 31, '_shipping_postcode', '00000'),
	(82, 31, '_shipping_country', 'FR'),
	(83, 31, '_order_currency', 'EUR'),
	(84, 31, '_cart_discount', '0'),
	(85, 31, '_cart_discount_tax', '0'),
	(86, 31, '_order_shipping', '2.00'),
	(87, 31, '_order_shipping_tax', '0'),
	(88, 31, '_order_tax', '0'),
	(89, 31, '_order_total', '14.00'),
	(90, 31, '_order_version', '5.1.0'),
	(91, 31, '_prices_include_tax', 'no'),
	(92, 31, '_billing_address_index', 'test test  test  test  00000 FR test@test.fr 0000000000'),
	(93, 31, '_shipping_address_index', 'test test  test  test  00000 FR'),
	(94, 31, 'is_vat_exempt', 'no'),
	(95, 31, 'ea-username-order', 'test'),
	(96, 31, '_recorded_sales', 'yes'),
	(97, 31, '_recorded_coupon_usage_counts', 'yes'),
	(98, 31, '_order_stock_reduced', 'yes'),
	(99, 31, '_new_order_email_sent', 'true'),
	(100, 13, '_edit_lock', '1616681117:1'),
	(101, 13, '_edit_last', '1'),
	(102, 13, '_regular_price', '20'),
	(103, 13, 'total_sales', '1'),
	(104, 13, '_tax_status', 'taxable'),
	(105, 13, '_tax_class', ''),
	(106, 13, '_manage_stock', 'no'),
	(107, 13, '_backorders', 'no'),
	(108, 13, '_sold_individually', 'no'),
	(109, 13, '_virtual', 'no'),
	(110, 13, '_downloadable', 'no'),
	(111, 13, '_download_limit', '-1'),
	(112, 13, '_download_expiry', '-1'),
	(114, 13, '_stock_status', 'instock'),
	(115, 13, '_wc_average_rating', '0'),
	(116, 13, '_wc_review_count', '0'),
	(117, 13, '_product_version', '5.1.0'),
	(118, 13, '_price', '20'),
	(119, 32, '_order_key', 'wc_order_7FpHnPnu4PRud'),
	(120, 32, '_customer_user', '1'),
	(121, 32, '_payment_method', 'cheque'),
	(122, 32, '_payment_method_title', 'Paiements par chèque'),
	(123, 32, '_customer_ip_address', '127.0.0.1'),
	(124, 32, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36'),
	(125, 32, '_created_via', 'checkout'),
	(126, 32, '_cart_hash', '206f8e5672905c45000f473d0211a33f'),
	(127, 32, '_billing_first_name', 'test'),
	(128, 32, '_billing_last_name', 'test'),
	(129, 32, '_billing_address_1', 'test'),
	(130, 32, '_billing_city', 'test'),
	(131, 32, '_billing_postcode', '00000'),
	(132, 32, '_billing_country', 'FR'),
	(133, 32, '_billing_email', 'test@test.fr'),
	(134, 32, '_billing_phone', '0000000000'),
	(135, 32, '_shipping_first_name', 'test'),
	(136, 32, '_shipping_last_name', 'test'),
	(137, 32, '_shipping_address_1', 'test'),
	(138, 32, '_shipping_city', 'test'),
	(139, 32, '_shipping_postcode', '00000'),
	(140, 32, '_shipping_country', 'FR'),
	(141, 32, '_order_currency', 'EUR'),
	(142, 32, '_cart_discount', '0'),
	(143, 32, '_cart_discount_tax', '0'),
	(144, 32, '_order_shipping', '2.00'),
	(145, 32, '_order_shipping_tax', '0'),
	(146, 32, '_order_tax', '0'),
	(147, 32, '_order_total', '22.00'),
	(148, 32, '_order_version', '5.1.0'),
	(149, 32, '_prices_include_tax', 'no'),
	(150, 32, '_billing_address_index', 'test test  test  test  00000 FR test@test.fr 0000000000'),
	(151, 32, '_shipping_address_index', 'test test  test  test  00000 FR'),
	(152, 32, 'is_vat_exempt', 'no'),
	(153, 32, 'ea-username-order', 'USERNAME'),
	(154, 32, '_recorded_sales', 'yes'),
	(155, 32, '_recorded_coupon_usage_counts', 'yes'),
	(156, 32, '_order_stock_reduced', 'yes'),
	(157, 32, '_new_order_email_sent', 'true'),
	(158, 10, '_edit_lock', '1616769418:1'),
	(159, 7, '_edit_lock', '1616769910:1'),
	(160, 33, '_wp_trash_meta_status', 'publish'),
	(161, 33, '_wp_trash_meta_time', '1616770558'),
	(162, 34, '_wp_trash_meta_status', 'publish'),
	(163, 34, '_wp_trash_meta_time', '1616771429'),
	(164, 35, '_wp_trash_meta_status', 'publish'),
	(165, 35, '_wp_trash_meta_time', '1616771483'),
	(166, 36, '_wp_trash_meta_status', 'publish'),
	(167, 36, '_wp_trash_meta_time', '1616772602');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_posts
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_posts : ~25 rows (environ)
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
	(1, 1, '2021-03-18 10:22:16', '2021-03-18 09:22:16', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2021-03-18 10:22:16', '2021-03-18 09:22:16', '', 0, 'http://127.0.0.1/wpecom/?p=1', 0, 'post', '', 1),
	(2, 1, '2021-03-18 10:22:16', '2021-03-18 09:22:16', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux personnes visitant du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules supers pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href="http://127.0.0.1/wpecom/wp-admin/">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2021-03-18 10:22:16', '2021-03-18 09:22:16', '', 0, 'http://127.0.0.1/wpecom/?page_id=2', 0, 'page', '', 0),
	(3, 1, '2021-03-18 10:22:16', '2021-03-18 09:22:16', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>L’adresse de notre site est : http://127.0.0.1/wpecom.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Commentaires</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Médias</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenu embarqué depuis d’autres sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2021-03-18 10:22:16', '2021-03-18 09:22:16', '', 0, 'http://127.0.0.1/wpecom/?page_id=3', 0, 'page', '', 0),
	(6, 1, '2021-03-18 10:59:09', '2021-03-18 09:59:09', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2021-03-18 10:59:09', '2021-03-18 09:59:09', '', 0, 'http://127.0.0.1/wpecom/wp-content/uploads/2021/03/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
	(7, 1, '2021-03-18 10:59:11', '2021-03-18 09:59:11', '', 'Boutique', '', 'publish', 'closed', 'closed', '', 'boutique', '', '', '2021-03-18 10:59:11', '2021-03-18 09:59:11', '', 0, 'http://127.0.0.1/wpecom/boutique/', 0, 'page', '', 0),
	(8, 1, '2021-03-18 10:59:11', '2021-03-18 09:59:11', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Panier', '', 'publish', 'closed', 'closed', '', 'panier', '', '', '2021-03-18 10:59:11', '2021-03-18 09:59:11', '', 0, 'http://127.0.0.1/wpecom/panier/', 0, 'page', '', 0),
	(9, 1, '2021-03-18 10:59:11', '2021-03-18 09:59:11', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Validation de la commande', '', 'publish', 'closed', 'closed', '', 'commander', '', '', '2021-03-18 10:59:11', '2021-03-18 09:59:11', '', 0, 'http://127.0.0.1/wpecom/commander/', 0, 'page', '', 0),
	(10, 1, '2021-03-18 10:59:11', '2021-03-18 09:59:11', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'Mon compte', '', 'publish', 'closed', 'closed', '', 'mon-compte', '', '', '2021-03-18 10:59:11', '2021-03-18 09:59:11', '', 0, 'http://127.0.0.1/wpecom/mon-compte/', 0, 'page', '', 0),
	(12, 1, '2021-03-18 11:24:31', '2021-03-18 10:24:31', 'Chaussures', 'Chaussure', 'Chaussure', 'trash', 'open', 'closed', '', 'chaussure__trashed', '', '', '2021-03-18 11:39:11', '2021-03-18 10:39:11', '', 0, 'http://127.0.0.1/wpecom/?post_type=product&#038;p=12', 0, 'product', '', 0),
	(13, 1, '2021-03-18 11:26:57', '2021-03-18 10:26:57', 'Sac à dos', 'Sac à dos', 'Sac à dos', 'publish', 'open', 'closed', '', 'sac-a-dos', '', '', '2021-03-25 15:07:39', '2021-03-25 14:07:39', '', 0, 'http://127.0.0.1/wpecom/?post_type=product&#038;p=13', 0, 'product', '', 0),
	(17, 1, '2021-03-18 11:46:00', '2021-03-18 10:46:00', 'Chaussures', 'Chaussure', '', 'publish', 'open', 'closed', '', 'chaussure', '', '', '2021-03-25 15:06:03', '2021-03-25 14:06:03', '', 0, 'http://127.0.0.1/wpecom/?post_type=product&#038;p=17', 0, 'product', '', 0),
	(18, 1, '2021-03-18 11:40:57', '2021-03-18 10:40:57', '', 'Chaussure - Bleu', 'Couleur: Bleu', 'publish', 'closed', 'closed', '', 'chaussure', '', '', '2021-03-25 15:05:41', '2021-03-25 14:05:41', '', 17, 'http://127.0.0.1/wpecom/?post_type=product_variation&#038;p=18', 2, 'product_variation', '', 0),
	(19, 1, '2021-03-18 11:42:18', '2021-03-18 10:42:18', '', 'Chaussure - Beige', 'Couleur: Beige', 'publish', 'closed', 'closed', '', 'chaussure-2', '', '', '2021-03-25 15:06:02', '2021-03-25 14:06:02', '', 17, 'http://127.0.0.1/wpecom/?post_type=product_variation&#038;p=19', 0, 'product_variation', '', 0),
	(20, 1, '2021-03-18 11:53:09', '2021-03-18 10:53:09', '{\n    "child_storefront::storefront_button_background_color": {\n        "value": "#ec752d",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2021-03-18 10:53:09"\n    },\n    "child_storefront::storefront_button_alt_background_color": {\n        "value": "#ec752d",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2021-03-18 10:53:09"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ec2f6290-e0c5-4a42-a43b-83d55542c731', '', '', '2021-03-18 11:53:09', '2021-03-18 10:53:09', '', 0, 'http://127.0.0.1/wpecom/2021/03/18/ec2f6290-e0c5-4a42-a43b-83d55542c731/', 0, 'customize_changeset', '', 0),
	(21, 1, '2021-03-18 11:59:07', '2021-03-18 10:59:07', '<!-- wp:shortcode -->\n[woocommerce_checkout]\n<!-- /wp:shortcode -->', 'Validation de la commande', '', 'inherit', 'closed', 'closed', '', '9-autosave-v1', '', '', '2021-03-18 11:59:07', '2021-03-18 10:59:07', '', 9, 'http://127.0.0.1/wpecom/?p=21', 0, 'revision', '', 0),
	(22, 1, '2021-03-22 15:13:28', '2021-03-22 14:13:28', '', 'Order &ndash; mars 22, 2021 @ 03:15  ', '', 'wc-completed', 'closed', 'closed', '', '', '', '', '2021-03-22 15:15:35', '2021-03-22 14:15:35', '', 0, 'http://127.0.0.1/wpecom/?post_type=shop_order&#038;p=22', 0, 'shop_order', '', 3),
	(23, 1, '2021-03-22 15:39:08', '2021-03-22 14:39:08', '', 'Order &ndash; mars 22, 2021 @ 03:39  ', '', 'wc-completed', 'closed', 'closed', '', 'order-mars-22-2021-0340', '', '', '2021-03-22 15:42:04', '2021-03-22 14:42:04', '', 0, 'http://127.0.0.1/wpecom/?post_type=shop_order&#038;p=23', 0, 'shop_order', '', 4),
	(24, 1, '2021-03-22 15:51:09', '2021-03-22 14:51:09', '', 'Order &ndash; mars 22, 2021 @ 03:51  ', '', 'wc-on-hold', 'open', 'closed', 'wc_order_90EJ3yjwZXrWl', 'commande-mar-22-2021-0251-pm', '', '', '2021-03-22 15:51:09', '2021-03-22 14:51:09', '', 0, 'http://127.0.0.1/wpecom/?post_type=shop_order&#038;p=24', 0, 'shop_order', '', 1),
	(25, 1, '2021-03-22 16:05:17', '2021-03-22 15:05:17', '', 'Order &ndash; mars 22, 2021 @ 04:05  ', '', 'wc-completed', 'open', 'closed', 'wc_order_LIrhHXXfMH7Ve', 'commande-mar-22-2021-0305-pm', '', '', '2021-03-22 16:05:48', '2021-03-22 15:05:48', '', 0, 'http://127.0.0.1/wpecom/?post_type=shop_order&#038;p=25', 0, 'shop_order', '', 2),
	(26, 1, '2021-03-22 16:16:33', '2021-03-22 15:16:33', '', 'Order &ndash; mars 22, 2021 @ 04:16  ', '', 'wc-cancelled', 'open', 'closed', 'wc_order_LwIYWJdqQlMtH', 'commande-mar-22-2021-0316-pm', '', '', '2021-03-22 18:16:21', '2021-03-22 17:16:21', '', 0, 'http://127.0.0.1/wpecom/?post_type=shop_order&#038;p=26', 0, 'shop_order', '', 1),
	(27, 1, '2021-03-22 16:16:51', '2021-03-22 15:16:51', '', 'Order &ndash; mars 22, 2021 @ 04:16  ', '', 'wc-cancelled', 'open', 'closed', 'wc_order_wHBtovDG4xl7U', 'commande-mar-22-2021-0316-pm-2', '', '', '2021-03-22 18:16:21', '2021-03-22 17:16:21', '', 0, 'http://127.0.0.1/wpecom/?post_type=shop_order&#038;p=27', 0, 'shop_order', '', 1),
	(28, 1, '2021-03-22 16:17:12', '2021-03-22 15:17:12', '', 'Order &ndash; mars 22, 2021 @ 04:17  ', '', 'wc-cancelled', 'open', 'closed', 'wc_order_T6JLvbU1pLVUT', 'commande-mar-22-2021-0317-pm', '', '', '2021-03-22 18:16:21', '2021-03-22 17:16:21', '', 0, 'http://127.0.0.1/wpecom/?post_type=shop_order&#038;p=28', 0, 'shop_order', '', 1),
	(29, 1, '2021-03-22 16:17:24', '2021-03-22 15:17:24', '', 'Order &ndash; mars 22, 2021 @ 04:17  ', '', 'wc-on-hold', 'closed', 'closed', 'wc_order_A1pRUITBU7m6P', 'commande-mar-22-2021-0317-pm-2', '', '', '2021-03-22 16:21:47', '2021-03-22 15:21:47', '', 0, 'http://127.0.0.1/wpecom/?post_type=shop_order&#038;p=29', 0, 'shop_order', '', 2),
	(30, 1, '2021-03-25 14:59:09', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-03-25 14:59:09', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/wpecom/?p=30', 0, 'post', '', 0),
	(31, 1, '2021-03-25 15:06:51', '2021-03-25 14:06:51', '', 'Order &ndash; mars 25, 2021 @ 03:06  ', '', 'wc-on-hold', 'open', 'closed', 'wc_order_7PWLld5PNRphG', 'commande-mar-25-2021-0206-pm', '', '', '2021-03-25 15:06:51', '2021-03-25 14:06:51', '', 0, 'http://127.0.0.1/wpecom/?post_type=shop_order&#038;p=31', 0, 'shop_order', '', 1),
	(32, 1, '2021-03-26 15:28:30', '2021-03-26 14:28:30', '', 'Order &ndash; mars 26, 2021 @ 03:28  ', '', 'wc-on-hold', 'open', 'closed', 'wc_order_7FpHnPnu4PRud', 'commande-mar-26-2021-0228-pm', '', '', '2021-03-26 15:28:30', '2021-03-26 14:28:30', '', 0, 'http://127.0.0.1/wpecom/?post_type=shop_order&#038;p=32', 0, 'shop_order', '', 1),
	(33, 1, '2021-03-26 15:55:58', '2021-03-26 14:55:58', '{\n    "child_storefront::storefront_button_background_color": {\n        "value": "#eeeeee",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2021-03-26 14:55:58"\n    },\n    "child_storefront::storefront_button_alt_background_color": {\n        "value": "#333333",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2021-03-26 14:55:58"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c4f53b4f-f633-4d06-b341-511e0d576cc3', '', '', '2021-03-26 15:55:58', '2021-03-26 14:55:58', '', 0, 'http://127.0.0.1/wpecom/2021/03/26/c4f53b4f-f633-4d06-b341-511e0d576cc3/', 0, 'customize_changeset', '', 0),
	(34, 1, '2021-03-26 16:10:29', '2021-03-26 15:10:29', '{\n    "child_storefront::storefront_button_background_color": {\n        "value": "#eeeeee",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2021-03-26 15:10:29"\n    },\n    "child_storefront::storefront_button_alt_background_color": {\n        "value": "#ec752d",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2021-03-26 15:10:29"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9b89c208-9222-4c9a-bd84-1622917155ab', '', '', '2021-03-26 16:10:29', '2021-03-26 15:10:29', '', 0, 'http://127.0.0.1/wpecom/2021/03/26/9b89c208-9222-4c9a-bd84-1622917155ab/', 0, 'customize_changeset', '', 0),
	(35, 1, '2021-03-26 16:11:23', '2021-03-26 15:11:23', '{\n    "child_storefront::storefront_button_background_color": {\n        "value": "#ec752d",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2021-03-26 15:11:23"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3a7365d9-3b4a-4a29-b447-58cdcff6c33b', '', '', '2021-03-26 16:11:23', '2021-03-26 15:11:23', '', 0, 'http://127.0.0.1/wpecom/2021/03/26/3a7365d9-3b4a-4a29-b447-58cdcff6c33b/', 0, 'customize_changeset', '', 0),
	(36, 1, '2021-03-26 16:30:02', '2021-03-26 15:30:02', '{\n    "storefront-child::storefront_button_background_color": {\n        "value": "#ec752d",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2021-03-26 15:30:02"\n    },\n    "storefront-child::storefront_button_alt_background_color": {\n        "value": "#ec752d",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2021-03-26 15:30:02"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '942a55c1-4711-401f-8d96-970856b56db3', '', '', '2021-03-26 16:30:02', '2021-03-26 15:30:02', '', 0, 'http://127.0.0.1/wpecom/2021/03/26/942a55c1-4711-401f-8d96-970856b56db3/', 0, 'customize_changeset', '', 0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_termmeta
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_termmeta : ~10 rows (environ)
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
	(1, 16, 'order', '0'),
	(2, 16, 'display_type', ''),
	(3, 16, 'thumbnail_id', '0'),
	(4, 17, 'order', '0'),
	(5, 17, 'display_type', ''),
	(6, 17, 'thumbnail_id', '0'),
	(7, 17, 'product_count_product_cat', '0'),
	(8, 15, 'product_count_product_cat', '2'),
	(9, 18, 'order_pa_couleur', '0'),
	(10, 19, 'order_pa_couleur', '0');
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_terms
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_terms : ~19 rows (environ)
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
	(1, 'Non classé', 'non-classe', 0),
	(2, 'simple', 'simple', 0),
	(3, 'grouped', 'grouped', 0),
	(4, 'variable', 'variable', 0),
	(5, 'external', 'external', 0),
	(6, 'exclude-from-search', 'exclude-from-search', 0),
	(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
	(8, 'featured', 'featured', 0),
	(9, 'outofstock', 'outofstock', 0),
	(10, 'rated-1', 'rated-1', 0),
	(11, 'rated-2', 'rated-2', 0),
	(12, 'rated-3', 'rated-3', 0),
	(13, 'rated-4', 'rated-4', 0),
	(14, 'rated-5', 'rated-5', 0),
	(15, 'Non classé', 'non-classe', 0),
	(16, 'Accessoires', 'accessoires', 0),
	(17, 'Chaussures', 'chaussures', 0),
	(18, 'Bleu', 'bleu', 0),
	(19, 'Beige', 'beige', 0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_term_relationships
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_term_relationships : ~11 rows (environ)
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
	(1, 1, 0),
	(12, 4, 0),
	(12, 17, 0),
	(12, 18, 0),
	(12, 19, 0),
	(13, 2, 0),
	(13, 15, 0),
	(17, 4, 0),
	(17, 15, 0),
	(17, 18, 0),
	(17, 19, 0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_term_taxonomy
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_term_taxonomy : ~19 rows (environ)
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
	(1, 1, 'category', '', 0, 1),
	(2, 2, 'product_type', '', 0, 1),
	(3, 3, 'product_type', '', 0, 0),
	(4, 4, 'product_type', '', 0, 1),
	(5, 5, 'product_type', '', 0, 0),
	(6, 6, 'product_visibility', '', 0, 0),
	(7, 7, 'product_visibility', '', 0, 0),
	(8, 8, 'product_visibility', '', 0, 0),
	(9, 9, 'product_visibility', '', 0, 0),
	(10, 10, 'product_visibility', '', 0, 0),
	(11, 11, 'product_visibility', '', 0, 0),
	(12, 12, 'product_visibility', '', 0, 0),
	(13, 13, 'product_visibility', '', 0, 0),
	(14, 14, 'product_visibility', '', 0, 0),
	(15, 15, 'product_cat', '', 0, 2),
	(16, 16, 'product_cat', '', 0, 0),
	(17, 17, 'product_cat', '', 0, 0),
	(18, 18, 'pa_couleur', '', 0, 1),
	(19, 19, 'pa_couleur', '', 0, 1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_usermeta
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_usermeta : ~42 rows (environ)
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
	(1, 1, 'nickname', 'root'),
	(2, 1, 'first_name', 'Elise'),
	(3, 1, 'last_name', 'Andaloro'),
	(4, 1, 'description', ''),
	(5, 1, 'rich_editing', 'true'),
	(6, 1, 'syntax_highlighting', 'true'),
	(7, 1, 'comment_shortcuts', 'false'),
	(8, 1, 'admin_color', 'fresh'),
	(9, 1, 'use_ssl', '0'),
	(10, 1, 'show_admin_bar_front', 'true'),
	(11, 1, 'locale', ''),
	(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
	(13, 1, 'wp_user_level', '10'),
	(14, 1, 'dismissed_wp_pointers', ''),
	(15, 1, 'show_welcome_panel', '1'),
	(17, 1, 'wp_dashboard_quick_press_last_post_id', '30'),
	(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
	(19, 1, '_woocommerce_tracks_anon_id', 'woo:6JSQtWx0CO+/JUny0n1v3iJa'),
	(20, 1, 'last_update', '1616768910'),
	(21, 1, 'woocommerce_admin_activity_panel_inbox_last_read', '1616684028458'),
	(22, 1, 'woocommerce_admin_task_list_tracked_started_tasks', '{"products":1,"shipping":1}'),
	(23, 1, 'wc_last_active', '1616716800'),
	(29, 1, 'paying_customer', '1'),
	(32, 1, 'billing_first_name', 'test'),
	(33, 1, 'billing_last_name', 'test'),
	(34, 1, 'billing_address_1', 'test'),
	(35, 1, 'billing_city', 'test'),
	(36, 1, 'billing_postcode', '00000'),
	(37, 1, 'billing_country', 'FR'),
	(38, 1, 'billing_email', 'test@test.fr'),
	(39, 1, 'billing_phone', '0000000000'),
	(40, 1, 'shipping_first_name', 'test'),
	(41, 1, 'shipping_last_name', 'test'),
	(42, 1, 'shipping_address_1', 'test'),
	(43, 1, 'shipping_city', 'test'),
	(44, 1, 'shipping_postcode', '00000'),
	(45, 1, 'shipping_country', 'FR'),
	(46, 1, 'shipping_method', 'a:1:{i:0;s:11:"flat_rate:1";}'),
	(64, 1, '_order_count', '2'),
	(65, 1, '_last_order', '32'),
	(66, 1, 'session_tokens', 'a:1:{s:64:"5484684fc844175e8a1cc903846d4cef3c2255968456393aec9591a71b501994";a:4:{s:10:"expiration";i:1616942390;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36";s:5:"login";i:1616769590;}}'),
	(68, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:1:{s:32:"c51ce410c124a10e0db5e4b97fc2af39";a:11:{s:3:"key";s:32:"c51ce410c124a10e0db5e4b97fc2af39";s:10:"product_id";i:13;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:2;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:20;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:20;s:8:"line_tax";i:0;}}}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_users
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_users : ~1 rows (environ)
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
	(1, 'root', '$P$BY.IBrMiJiplNNJTa/1axPYSHDMmJF0', 'root', 'elise.andaloro@hotmail.fr', 'http://127.0.0.1/wpecom', '2021-03-18 09:22:16', '', 0, 'root');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_wc_admin_notes
CREATE TABLE IF NOT EXISTS `wp_wc_admin_notes` (
  `note_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'info',
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_wc_admin_notes : ~31 rows (environ)
/*!40000 ALTER TABLE `wp_wc_admin_notes` DISABLE KEYS */;
INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `icon`) VALUES
	(1, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Se connecter à WooCommerce.com', 'Connectez-vous pour obtenir des notifications et des mises à jour importantes sur les produits.', '{}', 'unactioned', 'woocommerce-admin', '2021-03-18 09:59:15', NULL, 0, 'plain', '', 0, 'info'),
	(2, 'wc-admin-onboarding-email-marketing', 'info', 'en_US', 'Inscrivez-vous pour recevoir des astuces, des mises à jour des produits et des sources d’inspiration', 'Nous sommes là pour vous, obtenir des astuces, mises à jour de produits et inspirations directement dans votre boîte e-mail', '{}', 'unactioned', 'woocommerce-admin', '2021-03-18 09:59:16', NULL, 0, 'plain', '', 0, 'info'),
	(3, 'wc-admin-marketing-intro', 'info', 'en_US', 'Connectez-vous à votre audience', 'Faites croître votre base clients et augmentez vos ventes avec les outils marketing créés pour WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2021-03-18 09:59:16', NULL, 0, 'plain', '', 0, 'info'),
	(4, 'facebook_pixel_api_2021', 'marketing', 'en_US', 'Improve the performance of your Facebook ads', 'Enable Facebook Pixel and Conversions API through the latest version of Facebook for WooCommerce for improved performance and measurement of your Facebook ad campaigns.', '{}', 'pending', 'woocommerce.com', '2021-03-17 06:59:16', NULL, 0, 'plain', '', 0, 'info'),
	(5, 'facebook_ec_2021', 'marketing', 'en_US', 'Sync your product catalog with Facebook to help boost sales', 'A single click adds all products to your Facebook Business Page shop. Product changes are automatically synced, with the flexibility to control which products are listed.', '{}', 'pending', 'woocommerce.com', '2021-03-17 06:59:16', NULL, 0, 'plain', '', 0, 'info'),
	(6, 'ecomm-need-help-setting-up-your-store', 'info', 'en_US', 'Need help setting up your Store?', 'Schedule a free 30-min <a href="https://wordpress.com/support/concierge-support/">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.', '{}', 'pending', 'woocommerce.com', '2021-03-17 06:59:16', NULL, 0, 'plain', '', 0, 'info'),
	(7, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Shipping & Tax', 'WooCommerce Shipping &amp; Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '{}', 'pending', 'woocommerce.com', '2021-03-17 06:59:16', NULL, 0, 'plain', '', 0, 'info'),
	(8, 'ecomm-unique-shopping-experience', 'info', 'en_US', 'For a shopping experience as unique as your customers', 'Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.', '{}', 'pending', 'woocommerce.com', '2021-03-17 06:59:16', NULL, 0, 'plain', '', 0, 'info'),
	(9, 'wc-admin-getting-started-in-ecommerce', 'info', 'en_US', 'Getting Started in eCommerce - webinar', 'We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.', '{}', 'pending', 'woocommerce.com', '2021-03-17 06:59:16', NULL, 0, 'plain', '', 0, 'info'),
	(10, 'your-first-product', 'info', 'en_US', 'Your first product', 'That\'s huge! You\'re well on your way to building a successful online store — now it’s time to think about how you\'ll fulfill your orders.<br /><br />Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href="https://href.li/?https://woocommerce.com/shipping" target="_blank">WooCommerce Shipping</a>.', '{}', 'unactioned', 'woocommerce.com', '2021-03-17 09:24:31', NULL, 0, 'plain', '', 0, 'info'),
	(11, 'wc-square-apple-pay-boost-sales', 'marketing', 'en_US', 'Boost sales with Apple Pay', 'Now that you accept Apple Pay® with Square you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.', '{}', 'pending', 'woocommerce.com', '2021-03-17 06:59:16', NULL, 0, 'plain', '', 0, 'info'),
	(12, 'wc-square-apple-pay-grow-your-business', 'marketing', 'en_US', 'Grow your business with Square and Apple Pay ', 'Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.', '{}', 'pending', 'woocommerce.com', '2021-03-17 06:59:16', NULL, 0, 'plain', '', 0, 'info'),
	(13, 'wc-admin-optimizing-the-checkout-flow', 'info', 'en_US', 'Optimizing the checkout flow', 'It\'s crucial to get your store\'s checkout as smooth as possible to avoid losing sales. Let\'s take a look at how you can optimize the checkout experience for your shoppers.', '{}', 'pending', 'woocommerce.com', '2021-03-17 06:59:16', NULL, 0, 'plain', '', 0, 'info'),
	(14, 'wc-admin-first-five-things-to-customize', 'info', 'en_US', 'The first 5 things to customize in your store', 'Deciding what to start with first is tricky. To help you properly prioritize, we\'ve put together this short list of the first few things you should customize in WooCommerce.', '{}', 'unactioned', 'woocommerce.com', '2021-03-21 20:13:18', NULL, 0, 'plain', '', 0, 'info'),
	(15, 'storefront-customize', 'info', 'en_US', 'Concevez votre boutique avec Storefront 🎨', 'Visitez la page des réglages pour démarrer la configuration et la personnalisation de votre boutique.', '{}', 'unactioned', 'storefront', '2021-03-18 09:59:17', NULL, 0, 'plain', '', 0, 'info'),
	(16, 'wc-admin-learn-more-about-variable-products', 'info', 'en_US', 'En savoir plus sur les produits variables', 'Les produits variables sont un type de produit puissant qui vous permet de proposer un ensemble de variantes d’un produit avec contrôle des prix, du stock, de l’image et plus pour chaque variante. Vous pouvez l’appliquer à un produit comme une chemise, disponible en plusieurs tailles et dans différentes couleurs.', '{}', 'unactioned', 'woocommerce-admin', '2021-03-18 10:24:31', NULL, 0, 'plain', '', 0, 'info'),
	(17, 'wc-admin-launch-checklist', 'info', 'en_US', 'Prêt à lancer votre boutique ?', 'Pour ne jamais ressentir cette sensation d’avoir oublié quelque chose, nous avons conçu une liste de contrôle reprenant les points essentiels avant lancement.', '{}', 'unactioned', 'woocommerce-admin', '2021-03-19 10:50:16', NULL, 0, 'plain', '', 0, 'info'),
	(18, 'wc-admin-filter-by-product-variations-in-reports', 'info', 'en_US', 'Nouveau - filtrer les variations de produit dans les commandes et rapports de produits', 'L’une des fonctionnalités les plus attendues est enfin disponible ! Vous disposez désormais des tendances pour chaque variante de produit dans les commandes et les rapports sur les produits.', '{}', 'unactioned', 'woocommerce-admin', '2021-03-19 10:50:16', NULL, 0, 'banner', 'http://127.0.0.1/wpecom/wp-content/plugins/woocommerce/packages/woocommerce-admin/images/admin_notes/filter-by-product-variations-note.svg', 0, 'info'),
	(19, 'wc-admin-choosing-a-theme', 'marketing', 'en_US', 'Vous cherchez un thème ?', 'Découvrez les thèmes compatibles avec WooCommerce et choisissez celui qui correspond le mieux à l’image de votre marque et à vos besoins.', '{}', 'unactioned', 'woocommerce-admin', '2021-03-19 10:50:16', NULL, 0, 'plain', '', 0, 'info'),
	(20, 'wc-admin-insight-first-product-and-payment', 'survey', 'en_US', 'Tendances', 'Plus de 80 % des nouveaux commerçants ajoutent leur premier produit et configurent au moins un moyen de paiement durant la première semaine. Nous sommes là pour contribuer à la réussite de votre entreprise ! Trouvez-vous ce type d\'information utile ?', '{}', 'unactioned', 'woocommerce-admin', '2021-03-19 10:50:16', NULL, 0, 'plain', '', 0, 'info'),
	(21, 'wc-admin-customizing-product-catalog', 'info', 'en_US', 'Comment personnaliser votre catalogue de produits', 'Vous souhaitez soigner l’apparence de vos images et de votre catalogue de produits tout en vous conformant à votre marque. Ce guide contient tous les conseils dont vous avez besoin pour mettre en valeur vos produits dans votre boutique.', '{}', 'unactioned', 'woocommerce-admin', '2021-03-19 10:50:16', NULL, 0, 'plain', '', 0, 'info'),
	(22, 'wc-admin-mobile-app', 'info', 'en_US', 'Installer l’application mobile Woo', 'Installez l’application mobile WooCommerce pour gérer les commandes, recevoir des notifications de vente et afficher les statistiques principales où que vous soyez.', '{}', 'unactioned', 'woocommerce-admin', '2021-03-22 13:13:17', NULL, 0, 'plain', '', 0, 'info'),
	(23, 'wc-admin-need-some-inspiration', 'info', 'en_US', 'Parcourir nos modèles de réussite', 'Découvrez comment d’autres entrepreneurs ont utilisé WooCommerce pour créer des entreprises florissantes.', '{}', 'unactioned', 'woocommerce-admin', '2021-03-22 13:13:18', NULL, 0, 'plain', '', 0, 'info'),
	(24, 'wc-admin-online-clothing-store', 'info', 'en_US', 'Lancer votre boutique de vêtements en ligne', 'Lancer un site Web de mode est passionnant, mais peut sembler également accablant. Dans cet article, nous vous guiderons lors du processus de configuration, nous vous apprendrons à créer des listes de produits réussies et nous vous montrerons comment faire de la publicité auprès de votre public idéal.', '{}', 'unactioned', 'woocommerce-admin', '2021-03-22 13:13:18', NULL, 0, 'plain', '', 0, 'info'),
	(25, 'wc-admin-draw-attention', 'info', 'en_US', 'Apprendre à se faire remarquer : comment attirer l’attention sur votre boutique en ligne', 'Pour vous lancer, voici sept façons de dynamiser vos ventes et d’éviter d’être noyé par des produits similaires fabriqués en série et en concurrence pour les mêmes acheteurs.', '{}', 'unactioned', 'woocommerce-admin', '2021-03-22 13:13:18', NULL, 0, 'plain', '', 0, 'info'),
	(26, 'wcpay-apple-pay-boost-sales', 'marketing', 'en_US', 'Boost sales with Apple Pay', 'Now that you accept Apple Pay® with WooCommerce Payments you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.', '{}', 'pending', 'woocommerce.com', '2021-03-21 20:13:18', NULL, 0, 'plain', '', 0, 'info'),
	(27, 'wcpay-apple-pay-grow-your-business', 'marketing', 'en_US', 'Grow your business with WooCommerce Payments and Apple Pay', 'Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.', '{}', 'pending', 'woocommerce.com', '2021-03-21 20:13:18', NULL, 0, 'plain', '', 0, 'info'),
	(28, 'wc-admin-orders-milestone', 'info', 'en_US', 'Première commande reçue', 'Félicitations pour votre première commande ! C’est le moment idéal pour apprendre à gérer vos commandes.', '{}', 'unactioned', 'woocommerce-admin', '2021-03-22 15:00:35', NULL, 0, 'plain', '', 0, 'info'),
	(29, 'wc-admin-usage-tracking-opt-in', 'info', 'en_US', 'Aider WooCommerce à améliorer ses services grâce au suivi de l’utilisation', 'Récupérer les données d’utilisation nous permet d’améliorer WooCommerce. Votre boutique sera prise en compte lors de l’évaluation des nouvelles fonctionnalités et de la qualité d’une mise à jour, ou pour déterminer l’intérêt d’une amélioration. Vous pouvez toujours consulter les <a href="https://127.0.0.1/wpecom/wp-admin/admin.php?page=wc-settings&#038;tab=advanced&#038;section=woocommerce_com" target="_blank">Paramètres</a> et choisir d’interrompre le partage des données. <a href="https://woocommerce.com/usage-tracking" target="_blank">En savoir plus</a> sur les données que nous collectons.', '{}', 'unactioned', 'woocommerce-admin', '2021-03-25 13:56:50', NULL, 0, 'plain', '', 0, 'info'),
	(30, 'wc-admin-store-notice-giving-feedback-2', 'info', 'en_US', 'Nous vous invitons à partager votre expérience', 'Maintenant que vous nous avez choisis comme partenaire, notre objectif est de nous assurer que nous vous fournissons les bons outils pour répondre à vos besoins. Nous sommes impatients de recevoir vos commentaires sur votre expérience de conception de la boutique pour que nous puissions l’améliorer à l’avenir.', '{}', 'unactioned', 'woocommerce-admin', '2021-03-26 09:59:17', NULL, 0, 'plain', '', 0, 'info'),
	(31, 'wc-admin-insight-first-sale', 'survey', 'en_US', 'Le saviez-vous ?', 'Une boutique optimisée par WooCommerce nécessite en moyenne 31 jours pour réaliser sa première vente. Vous êtes sur la bonne voie ! Trouvez-vous ce type d’information utile ?', '{}', 'unactioned', 'woocommerce-admin', '2021-03-26 09:59:17', NULL, 0, 'plain', '', 0, 'info');
/*!40000 ALTER TABLE `wp_wc_admin_notes` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_wc_admin_note_actions
CREATE TABLE IF NOT EXISTS `wp_wc_admin_note_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `note_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`action_id`),
  KEY `note_id` (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=364 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_wc_admin_note_actions : ~32 rows (environ)
/*!40000 ALTER TABLE `wp_wc_admin_note_actions` DISABLE KEYS */;
INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`, `actioned_text`) VALUES
	(1, 1, 'connect', 'Connecter', '?page=wc-addons&section=helper', 'unactioned', 0, ''),
	(2, 2, 'yes-please', 'Oui, s’il vous plait !', 'https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin', 'actioned', 0, ''),
	(3, 3, 'open-marketing-hub', 'Espace marketing', 'http://127.0.0.1/wpecom/wp-admin/admin.php?page=wc-admin&path=/marketing', 'actioned', 0, ''),
	(15, 15, 'customize-store-with-storefront', 'C’est parti !', 'http://127.0.0.1/wpecom/wp-admin/themes.php?page=storefront-welcome', 'actioned', 1, ''),
	(27, 16, 'learn-more', 'En savoir plus', 'https://docs.woocommerce.com/document/variable-product/?utm_source=inbox', 'actioned', 0, ''),
	(105, 17, 'learn-more', 'En savoir plus', 'https://woocommerce.com/posts/pre-launch-checklist-the-essentials/?utm_source=inbox', 'actioned', 0, ''),
	(106, 18, 'learn-more', 'En savoir plus', 'https://docs.woocommerce.com/document/woocommerce-analytics/#variations-report', 'actioned', 0, ''),
	(107, 19, 'visit-the-theme-marketplace', 'Consulter la bibliothèque de thèmes', 'https://woocommerce.com/product-category/themes/?utm_source=inbox', 'actioned', 0, ''),
	(108, 20, 'affirm-insight-first-product-and-payment', 'Oui', '', 'actioned', 0, 'Merci pour vos retours'),
	(109, 21, 'day-after-first-product', 'En savoir plus', 'https://docs.woocommerce.com/document/woocommerce-customizer/?utm_source=inbox', 'actioned', 0, ''),
	(121, 22, 'learn-more', 'En savoir plus', 'https://woocommerce.com/mobile/', 'actioned', 0, ''),
	(122, 23, 'need-some-inspiration', 'Voir des réussites', 'https://woocommerce.com/success-stories/?utm_source=inbox', 'actioned', 1, ''),
	(123, 24, 'online-clothing-store', 'En savoir plus', 'https://woocommerce.com/posts/starting-an-online-clothing-store/?utm_source=inbox', 'actioned', 1, ''),
	(124, 25, 'learn-more', 'En savoir plus', 'https://woocommerce.com/posts/how-to-make-your-online-store-stand-out/?utm_source=inbox', 'actioned', 1, ''),
	(138, 28, 'learn-more', 'En savoir plus', 'https://docs.woocommerce.com/document/managing-orders/?utm_source=inbox', 'actioned', 0, ''),
	(152, 29, 'tracking-opt-in', 'Activer le suivi de l’utilisation', '', 'actioned', 1, ''),
	(283, 30, 'share-feedback', 'Partager des commentaires', 'https://automattic.survey.fm/store-setup-survey', 'actioned', 0, ''),
	(284, 31, 'affirm-insight-first-sale', 'Oui', '', 'actioned', 0, 'Merci pour vos retours'),
	(285, 31, 'deny-insight-first-sale', 'Non', '', 'actioned', 0, 'Merci pour vos retours'),
	(351, 4, 'upgrade_now_facebook_pixel_api', 'Upgrade now', 'plugin-install.php?tab=plugin-information&plugin=&section=changelog', 'actioned', 1, ''),
	(352, 5, 'learn_more_facebook_ec', 'Learn more', 'https://woocommerce.com/products/facebook/', 'unactioned', 1, ''),
	(353, 6, 'set-up-concierge', 'Schedule free session', 'https://wordpress.com/me/concierge', 'actioned', 1, ''),
	(354, 7, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox', 'unactioned', 1, ''),
	(355, 8, 'learn-more-ecomm-unique-shopping-experience', 'Learn more', 'https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox', 'actioned', 1, ''),
	(356, 9, 'watch-the-webinar', 'Watch the webinar', 'https://youtu.be/V_2XtCOyZ7o', 'actioned', 1, ''),
	(357, 10, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox', 'actioned', 1, ''),
	(358, 11, 'boost-sales-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-boost-sales', 'actioned', 1, ''),
	(359, 12, 'grow-your-business-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-grow-your-business', 'actioned', 1, ''),
	(360, 26, 'boost-sales-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-boost-sales', 'actioned', 1, ''),
	(361, 27, 'grow-your-business-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-grow-your-business', 'actioned', 1, ''),
	(362, 13, 'optimizing-the-checkout-flow', 'Learn more', 'https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox', 'actioned', 1, ''),
	(363, 14, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox', 'unactioned', 1, '');
/*!40000 ALTER TABLE `wp_wc_admin_note_actions` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_wc_category_lookup
CREATE TABLE IF NOT EXISTS `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`category_tree_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_wc_category_lookup : ~0 rows (environ)
/*!40000 ALTER TABLE `wp_wc_category_lookup` DISABLE KEYS */;
INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
	(15, 15);
/*!40000 ALTER TABLE `wp_wc_category_lookup` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_wc_customer_lookup
CREATE TABLE IF NOT EXISTS `wp_wc_customer_lookup` (
  `customer_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_wc_customer_lookup : ~1 rows (environ)
/*!40000 ALTER TABLE `wp_wc_customer_lookup` DISABLE KEYS */;
INSERT INTO `wp_wc_customer_lookup` (`customer_id`, `user_id`, `username`, `first_name`, `last_name`, `email`, `date_last_active`, `date_registered`, `country`, `postcode`, `city`, `state`) VALUES
	(1, 1, 'root', 'Elise', 'Andaloro', 'test@test.fr', '2021-03-26 14:28:30', '2021-03-18 09:22:16', 'FR', '00000', 'test', '');
/*!40000 ALTER TABLE `wp_wc_customer_lookup` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_wc_download_log
CREATE TABLE IF NOT EXISTS `wp_wc_download_log` (
  `download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`),
  CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_wc_download_log : ~0 rows (environ)
/*!40000 ALTER TABLE `wp_wc_download_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_download_log` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_wc_order_coupon_lookup
CREATE TABLE IF NOT EXISTS `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`coupon_id`),
  KEY `coupon_id` (`coupon_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_wc_order_coupon_lookup : ~0 rows (environ)
/*!40000 ALTER TABLE `wp_wc_order_coupon_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_coupon_lookup` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_wc_order_product_lookup
CREATE TABLE IF NOT EXISTS `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `variation_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_wc_order_product_lookup : ~8 rows (environ)
/*!40000 ALTER TABLE `wp_wc_order_product_lookup` DISABLE KEYS */;
INSERT INTO `wp_wc_order_product_lookup` (`order_item_id`, `order_id`, `product_id`, `variation_id`, `customer_id`, `date_created`, `product_qty`, `product_net_revenue`, `product_gross_revenue`, `coupon_amount`, `tax_amount`, `shipping_amount`, `shipping_tax_amount`) VALUES
	(1, 22, 17, 18, 1, '2021-03-22 15:13:28', 1, 12, 12, 0, 0, 0, 0),
	(2, 23, 13, 0, 1, '2021-03-22 15:39:08', 1, 20, 20, 0, 0, 0, 0),
	(3, 24, 13, 0, 1, '2021-03-22 15:51:09', 1, 20, 20, 0, 0, 0, 0),
	(5, 25, 17, 18, 1, '2021-03-22 16:05:17', 1, 12, 12, 0, 0, 0, 0),
	(7, 26, 13, 0, 1, '2021-03-22 16:16:33', 1, 20, 20, 0, 0, 0, 0),
	(9, 27, 13, 0, 1, '2021-03-22 16:16:51', 1, 20, 20, 0, 0, 0, 0),
	(11, 28, 13, 0, 1, '2021-03-22 16:17:12', 1, 20, 20, 0, 0, 0, 0),
	(13, 29, 13, 0, 1, '2021-03-22 16:17:24', 1, 20, 20, 0, 0, 0, 0),
	(15, 31, 17, 18, 1, '2021-03-25 15:06:51', 1, 12, 14, 0, 0, 2, 0),
	(17, 32, 13, 0, 1, '2021-03-26 15:28:30', 1, 20, 22, 0, 0, 2, 0);
/*!40000 ALTER TABLE `wp_wc_order_product_lookup` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_wc_order_stats
CREATE TABLE IF NOT EXISTS `wp_wc_order_stats` (
  `order_id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `date_created` (`date_created`),
  KEY `customer_id` (`customer_id`),
  KEY `status` (`status`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_wc_order_stats : ~8 rows (environ)
/*!40000 ALTER TABLE `wp_wc_order_stats` DISABLE KEYS */;
INSERT INTO `wp_wc_order_stats` (`order_id`, `parent_id`, `date_created`, `date_created_gmt`, `num_items_sold`, `total_sales`, `tax_total`, `shipping_total`, `net_total`, `returning_customer`, `status`, `customer_id`) VALUES
	(22, 0, '2021-03-22 15:13:28', '2021-03-22 14:13:28', 1, 12, 0, 0, 12, 0, 'wc-completed', 1),
	(23, 0, '2021-03-22 15:39:08', '2021-03-22 14:39:08', 1, 20, 0, 0, 20, 1, 'wc-completed', 1),
	(24, 0, '2021-03-22 15:51:09', '2021-03-22 14:51:09', 1, 20, 0, 0, 20, 1, 'wc-on-hold', 1),
	(25, 0, '2021-03-22 16:05:17', '2021-03-22 15:05:17', 1, 12, 0, 0, 12, 1, 'wc-completed', 1),
	(26, 0, '2021-03-22 16:16:33', '2021-03-22 15:16:33', 1, 20, 0, 0, 20, 1, 'wc-cancelled', 1),
	(27, 0, '2021-03-22 16:16:51', '2021-03-22 15:16:51', 1, 20, 0, 0, 20, 1, 'wc-cancelled', 1),
	(28, 0, '2021-03-22 16:17:12', '2021-03-22 15:17:12', 1, 20, 0, 0, 20, 1, 'wc-cancelled', 1),
	(29, 0, '2021-03-22 16:17:24', '2021-03-22 15:17:24', 1, 20, 0, 0, 20, 1, 'wc-on-hold', 1),
	(31, 0, '2021-03-25 15:06:51', '2021-03-25 14:06:51', 1, 14, 0, 2, 12, 1, 'wc-on-hold', 1),
	(32, 0, '2021-03-26 15:28:30', '2021-03-26 14:28:30', 1, 22, 0, 2, 20, 1, 'wc-on-hold', 1);
/*!40000 ALTER TABLE `wp_wc_order_stats` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_wc_order_tax_lookup
CREATE TABLE IF NOT EXISTS `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`tax_rate_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_wc_order_tax_lookup : ~0 rows (environ)
/*!40000 ALTER TABLE `wp_wc_order_tax_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_tax_lookup` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_wc_product_meta_lookup
CREATE TABLE IF NOT EXISTS `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0',
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`product_id`),
  KEY `virtual` (`virtual`),
  KEY `downloadable` (`downloadable`),
  KEY `stock_status` (`stock_status`),
  KEY `stock_quantity` (`stock_quantity`),
  KEY `onsale` (`onsale`),
  KEY `min_max_price` (`min_price`,`max_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_wc_product_meta_lookup : ~5 rows (environ)
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` DISABLE KEYS */;
INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
	(12, '', 0, 0, 12.0000, 12.0000, 0, 5000, 'instock', 0, 0.00, 0, 'taxable', ''),
	(13, '', 0, 0, 20.0000, 20.0000, 0, NULL, 'instock', 0, 0.00, 1, 'taxable', ''),
	(17, '', 0, 0, 12.0000, 12.0000, 0, NULL, 'instock', 0, 0.00, 1, 'taxable', ''),
	(18, '', 0, 0, 12.0000, 12.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
	(19, '', 0, 0, 12.0000, 12.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent');
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_wc_reserved_stock
CREATE TABLE IF NOT EXISTS `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_wc_reserved_stock : ~0 rows (environ)
/*!40000 ALTER TABLE `wp_wc_reserved_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_reserved_stock` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_wc_tax_rate_classes
CREATE TABLE IF NOT EXISTS `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_class_id`),
  UNIQUE KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_wc_tax_rate_classes : ~2 rows (environ)
/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` DISABLE KEYS */;
INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
	(1, 'Taux réduit', 'taux-reduit'),
	(2, 'Taux zéro', 'taux-zero');
/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_wc_webhooks
CREATE TABLE IF NOT EXISTS `wp_wc_webhooks` (
  `webhook_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_wc_webhooks : ~0 rows (environ)
/*!40000 ALTER TABLE `wp_wc_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_webhooks` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_woocommerce_api_keys
CREATE TABLE IF NOT EXISTS `wp_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_woocommerce_api_keys : ~0 rows (environ)
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_woocommerce_attribute_taxonomies
CREATE TABLE IF NOT EXISTS `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_woocommerce_attribute_taxonomies : ~0 rows (environ)
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
	(1, 'couleur', 'Couleur', 'select', 'menu_order', 0);
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_woocommerce_downloadable_product_permissions
CREATE TABLE IF NOT EXISTS `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_woocommerce_downloadable_product_permissions : ~0 rows (environ)
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_woocommerce_log
CREATE TABLE IF NOT EXISTS `wp_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_woocommerce_log : ~0 rows (environ)
/*!40000 ALTER TABLE `wp_woocommerce_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_log` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_woocommerce_order_itemmeta
CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_woocommerce_order_itemmeta : ~126 rows (environ)
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
	(1, 1, '_product_id', '17'),
	(2, 1, '_variation_id', '18'),
	(3, 1, '_qty', '1'),
	(4, 1, '_tax_class', ''),
	(5, 1, '_line_subtotal', '12'),
	(6, 1, '_line_subtotal_tax', '0'),
	(7, 1, '_line_total', '12'),
	(8, 1, '_line_tax', '0'),
	(9, 1, '_line_tax_data', 'a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}'),
	(10, 1, 'pa_couleur', 'beige'),
	(11, 2, '_product_id', '13'),
	(12, 2, '_variation_id', '0'),
	(13, 2, '_qty', '1'),
	(14, 2, '_tax_class', ''),
	(15, 2, '_line_subtotal', '20'),
	(16, 2, '_line_subtotal_tax', '0'),
	(17, 2, '_line_total', '20'),
	(18, 2, '_line_tax', '0'),
	(19, 2, '_line_tax_data', 'a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}'),
	(20, 3, '_product_id', '13'),
	(21, 3, '_variation_id', '0'),
	(22, 3, '_qty', '1'),
	(23, 3, '_tax_class', ''),
	(24, 3, '_line_subtotal', '20'),
	(25, 3, '_line_subtotal_tax', '0'),
	(26, 3, '_line_total', '20'),
	(27, 3, '_line_tax', '0'),
	(28, 3, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
	(29, 4, 'method_id', 'free_shipping'),
	(30, 4, 'instance_id', '2'),
	(31, 4, 'cost', '0.00'),
	(32, 4, 'total_tax', '0'),
	(33, 4, 'taxes', 'a:1:{s:5:"total";a:0:{}}'),
	(34, 4, 'Articles', 'Sac à dos &times; 1'),
	(35, 5, '_product_id', '17'),
	(36, 5, '_variation_id', '18'),
	(37, 5, '_qty', '1'),
	(38, 5, '_tax_class', ''),
	(39, 5, '_line_subtotal', '12'),
	(40, 5, '_line_subtotal_tax', '0'),
	(41, 5, '_line_total', '12'),
	(42, 5, '_line_tax', '0'),
	(43, 5, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
	(44, 5, 'pa_couleur', 'beige'),
	(45, 6, 'method_id', 'free_shipping'),
	(46, 6, 'instance_id', '2'),
	(47, 6, 'cost', '0.00'),
	(48, 6, 'total_tax', '0'),
	(49, 6, 'taxes', 'a:1:{s:5:"total";a:0:{}}'),
	(50, 6, 'Articles', 'Chaussure - Beige &times; 1'),
	(51, 7, '_product_id', '13'),
	(52, 7, '_variation_id', '0'),
	(53, 7, '_qty', '1'),
	(54, 7, '_tax_class', ''),
	(55, 7, '_line_subtotal', '20'),
	(56, 7, '_line_subtotal_tax', '0'),
	(57, 7, '_line_total', '20'),
	(58, 7, '_line_tax', '0'),
	(59, 7, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
	(60, 8, 'method_id', 'free_shipping'),
	(61, 8, 'instance_id', '2'),
	(62, 8, 'cost', '0.00'),
	(63, 8, 'total_tax', '0'),
	(64, 8, 'taxes', 'a:1:{s:5:"total";a:0:{}}'),
	(65, 8, 'Articles', 'Sac à dos &times; 1'),
	(66, 9, '_product_id', '13'),
	(67, 9, '_variation_id', '0'),
	(68, 9, '_qty', '1'),
	(69, 9, '_tax_class', ''),
	(70, 9, '_line_subtotal', '20'),
	(71, 9, '_line_subtotal_tax', '0'),
	(72, 9, '_line_total', '20'),
	(73, 9, '_line_tax', '0'),
	(74, 9, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
	(75, 10, 'method_id', 'free_shipping'),
	(76, 10, 'instance_id', '2'),
	(77, 10, 'cost', '0.00'),
	(78, 10, 'total_tax', '0'),
	(79, 10, 'taxes', 'a:1:{s:5:"total";a:0:{}}'),
	(80, 10, 'Articles', 'Sac à dos &times; 1'),
	(81, 11, '_product_id', '13'),
	(82, 11, '_variation_id', '0'),
	(83, 11, '_qty', '1'),
	(84, 11, '_tax_class', ''),
	(85, 11, '_line_subtotal', '20'),
	(86, 11, '_line_subtotal_tax', '0'),
	(87, 11, '_line_total', '20'),
	(88, 11, '_line_tax', '0'),
	(89, 11, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
	(90, 12, 'method_id', 'free_shipping'),
	(91, 12, 'instance_id', '2'),
	(92, 12, 'cost', '0.00'),
	(93, 12, 'total_tax', '0'),
	(94, 12, 'taxes', 'a:1:{s:5:"total";a:0:{}}'),
	(95, 12, 'Articles', 'Sac à dos &times; 1'),
	(96, 13, '_product_id', '13'),
	(97, 13, '_variation_id', '0'),
	(98, 13, '_qty', '1'),
	(99, 13, '_tax_class', ''),
	(100, 13, '_line_subtotal', '20'),
	(101, 13, '_line_subtotal_tax', '0'),
	(102, 13, '_line_total', '20'),
	(103, 13, '_line_tax', '0'),
	(104, 13, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
	(105, 14, 'method_id', 'free_shipping'),
	(106, 14, 'instance_id', '2'),
	(107, 14, 'cost', '0.00'),
	(108, 14, 'total_tax', '0'),
	(109, 14, 'taxes', 'a:1:{s:5:"total";a:0:{}}'),
	(110, 14, 'Articles', 'Sac à dos &times; 1'),
	(111, 15, '_product_id', '17'),
	(112, 15, '_variation_id', '18'),
	(113, 15, '_qty', '1'),
	(114, 15, '_tax_class', ''),
	(115, 15, '_line_subtotal', '12'),
	(116, 15, '_line_subtotal_tax', '0'),
	(117, 15, '_line_total', '12'),
	(118, 15, '_line_tax', '0'),
	(119, 15, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
	(120, 15, 'pa_couleur', 'bleu'),
	(121, 16, 'method_id', 'flat_rate'),
	(122, 16, 'instance_id', '1'),
	(123, 16, 'cost', '2.00'),
	(124, 16, 'total_tax', '0'),
	(125, 16, 'taxes', 'a:1:{s:5:"total";a:0:{}}'),
	(126, 16, 'Articles', 'Chaussure - Bleu &times; 1'),
	(127, 17, '_product_id', '13'),
	(128, 17, '_variation_id', '0'),
	(129, 17, '_qty', '1'),
	(130, 17, '_tax_class', ''),
	(131, 17, '_line_subtotal', '20'),
	(132, 17, '_line_subtotal_tax', '0'),
	(133, 17, '_line_total', '20'),
	(134, 17, '_line_tax', '0'),
	(135, 17, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
	(136, 18, 'method_id', 'flat_rate'),
	(137, 18, 'instance_id', '1'),
	(138, 18, 'cost', '2.00'),
	(139, 18, 'total_tax', '0'),
	(140, 18, 'taxes', 'a:1:{s:5:"total";a:0:{}}'),
	(141, 18, 'Articles', 'Sac à dos &times; 1');
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_woocommerce_order_items
CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_woocommerce_order_items : ~16 rows (environ)
/*!40000 ALTER TABLE `wp_woocommerce_order_items` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
	(1, 'Chaussure - Beige', 'line_item', 22),
	(2, 'Sac à dos', 'line_item', 23),
	(3, 'Sac à dos', 'line_item', 24),
	(4, 'Livraison gratuite', 'shipping', 24),
	(5, 'Chaussure - Beige', 'line_item', 25),
	(6, 'Livraison gratuite', 'shipping', 25),
	(7, 'Sac à dos', 'line_item', 26),
	(8, 'Livraison gratuite', 'shipping', 26),
	(9, 'Sac à dos', 'line_item', 27),
	(10, 'Livraison gratuite', 'shipping', 27),
	(11, 'Sac à dos', 'line_item', 28),
	(12, 'Livraison gratuite', 'shipping', 28),
	(13, 'Sac à dos', 'line_item', 29),
	(14, 'Livraison gratuite', 'shipping', 29),
	(15, 'Chaussure - Bleu', 'line_item', 31),
	(16, 'Forfait', 'shipping', 31),
	(17, 'Sac à dos', 'line_item', 32),
	(18, 'Forfait', 'shipping', 32);
/*!40000 ALTER TABLE `wp_woocommerce_order_items` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_woocommerce_payment_tokenmeta
CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_woocommerce_payment_tokenmeta : ~0 rows (environ)
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_woocommerce_payment_tokens
CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_woocommerce_payment_tokens : ~0 rows (environ)
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_woocommerce_sessions
CREATE TABLE IF NOT EXISTS `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_woocommerce_sessions : ~1 rows (environ)
/*!40000 ALTER TABLE `wp_woocommerce_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_sessions` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_woocommerce_shipping_zones
CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_woocommerce_shipping_zones : ~0 rows (environ)
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
	(1, 'France', 0);
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_woocommerce_shipping_zone_locations
CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_woocommerce_shipping_zone_locations : ~0 rows (environ)
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
	(1, 1, 'FR', 'country');
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_woocommerce_shipping_zone_methods
CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_woocommerce_shipping_zone_methods : ~2 rows (environ)
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
	(1, 1, 'flat_rate', 1, 1),
	(1, 2, 'free_shipping', 2, 1),
	(1, 3, 'local_pickup', 3, 1);
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_woocommerce_tax_rates
CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_woocommerce_tax_rates : ~0 rows (environ)
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` ENABLE KEYS */;

-- Listage de la structure de la table wpecom. wp_woocommerce_tax_rate_locations
CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Listage des données de la table wpecom.wp_woocommerce_tax_rate_locations : ~0 rows (environ)
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
