/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.14-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: improvision_export
-- ------------------------------------------------------
-- Server version	10.11.14-MariaDB-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `modx_access_actiondom`
--

DROP TABLE IF EXISTS `modx_access_actiondom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_actiondom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT 0,
  `authority` int(10) unsigned NOT NULL DEFAULT 9999,
  `policy` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_actiondom`
--

LOCK TABLES `modx_access_actiondom` WRITE;
/*!40000 ALTER TABLE `modx_access_actiondom` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_actiondom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_category`
--

DROP TABLE IF EXISTS `modx_access_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT 0,
  `authority` int(10) unsigned NOT NULL DEFAULT 9999,
  `policy` int(10) unsigned NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_category`
--

LOCK TABLES `modx_access_category` WRITE;
/*!40000 ALTER TABLE `modx_access_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_context`
--

DROP TABLE IF EXISTS `modx_access_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_context` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT 0,
  `authority` int(10) unsigned NOT NULL DEFAULT 9999,
  `policy` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_context`
--

LOCK TABLES `modx_access_context` WRITE;
/*!40000 ALTER TABLE `modx_access_context` DISABLE KEYS */;
INSERT INTO `modx_access_context` VALUES
(1,'web','MODX\\Revolution\\modUserGroup',0,9999,3),
(2,'mgr','MODX\\Revolution\\modUserGroup',1,0,2),
(3,'web','MODX\\Revolution\\modUserGroup',1,0,2),
(4,'en','MODX\\Revolution\\modUserGroup',0,9999,3),
(5,'en','MODX\\Revolution\\modUserGroup',1,0,2),
(6,'ru','MODX\\Revolution\\modUserGroup',0,9999,3),
(7,'ru','MODX\\Revolution\\modUserGroup',1,0,2);
/*!40000 ALTER TABLE `modx_access_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_elements`
--

DROP TABLE IF EXISTS `modx_access_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_elements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT 0,
  `authority` int(10) unsigned NOT NULL DEFAULT 9999,
  `policy` int(10) unsigned NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_elements`
--

LOCK TABLES `modx_access_elements` WRITE;
/*!40000 ALTER TABLE `modx_access_elements` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_media_source`
--

DROP TABLE IF EXISTS `modx_access_media_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_media_source` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT 0,
  `authority` int(10) unsigned NOT NULL DEFAULT 9999,
  `policy` int(10) unsigned NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_media_source`
--

LOCK TABLES `modx_access_media_source` WRITE;
/*!40000 ALTER TABLE `modx_access_media_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_media_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_menus`
--

DROP TABLE IF EXISTS `modx_access_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT 0,
  `authority` int(10) unsigned NOT NULL DEFAULT 9999,
  `policy` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_menus`
--

LOCK TABLES `modx_access_menus` WRITE;
/*!40000 ALTER TABLE `modx_access_menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_namespace`
--

DROP TABLE IF EXISTS `modx_access_namespace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_namespace` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT 0,
  `authority` int(10) unsigned NOT NULL DEFAULT 9999,
  `policy` int(10) unsigned NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_namespace`
--

LOCK TABLES `modx_access_namespace` WRITE;
/*!40000 ALTER TABLE `modx_access_namespace` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_namespace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_permissions`
--

DROP TABLE IF EXISTS `modx_access_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `value` tinyint(1) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `template` (`template`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_permissions`
--

LOCK TABLES `modx_access_permissions` WRITE;
/*!40000 ALTER TABLE `modx_access_permissions` DISABLE KEYS */;
INSERT INTO `modx_access_permissions` VALUES
(1,1,'about','perm.about_desc',1),
(2,1,'access_permissions','perm.access_permissions_desc',1),
(3,1,'actions','perm.actions_desc',1),
(4,1,'change_password','perm.change_password_desc',1),
(5,1,'change_profile','perm.change_profile_desc',1),
(6,1,'charsets','perm.charsets_desc',1),
(7,1,'class_map','perm.class_map_desc',1),
(8,1,'components','perm.components_desc',1),
(9,1,'content_types','perm.content_types_desc',1),
(10,1,'countries','perm.countries_desc',1),
(11,1,'create','perm.create_desc',1),
(12,1,'credits','perm.credits_desc',1),
(13,1,'customize_forms','perm.customize_forms_desc',1),
(14,1,'dashboards','perm.dashboards_desc',1),
(15,1,'database','perm.database_desc',1),
(16,1,'database_truncate','perm.database_truncate_desc',1),
(17,1,'delete_category','perm.delete_category_desc',1),
(18,1,'delete_chunk','perm.delete_chunk_desc',1),
(19,1,'delete_context','perm.delete_context_desc',1),
(20,1,'delete_document','perm.delete_document_desc',1),
(21,1,'delete_weblink','perm.delete_weblink_desc',1),
(22,1,'delete_symlink','perm.delete_symlink_desc',1),
(23,1,'delete_static_resource','perm.delete_static_resource_desc',1),
(24,1,'delete_eventlog','perm.delete_eventlog_desc',1),
(25,1,'delete_plugin','perm.delete_plugin_desc',1),
(26,1,'delete_propertyset','perm.delete_propertyset_desc',1),
(27,1,'delete_snippet','perm.delete_snippet_desc',1),
(28,1,'delete_template','perm.delete_template_desc',1),
(29,1,'delete_tv','perm.delete_tv_desc',1),
(30,1,'delete_role','perm.delete_role_desc',1),
(31,1,'delete_user','perm.delete_user_desc',1),
(32,1,'directory_chmod','perm.directory_chmod_desc',1),
(33,1,'directory_create','perm.directory_create_desc',1),
(34,1,'directory_list','perm.directory_list_desc',1),
(35,1,'directory_remove','perm.directory_remove_desc',1),
(36,1,'directory_update','perm.directory_update_desc',1),
(37,1,'edit_category','perm.edit_category_desc',1),
(38,1,'edit_chunk','perm.edit_chunk_desc',1),
(39,1,'edit_context','perm.edit_context_desc',1),
(40,1,'edit_document','perm.edit_document_desc',1),
(41,1,'edit_weblink','perm.edit_weblink_desc',1),
(42,1,'edit_symlink','perm.edit_symlink_desc',1),
(43,1,'edit_static_resource','perm.edit_static_resource_desc',1),
(44,1,'edit_locked','perm.edit_locked_desc',1),
(45,1,'edit_plugin','perm.edit_plugin_desc',1),
(46,1,'edit_propertyset','perm.edit_propertyset_desc',1),
(47,1,'edit_role','perm.edit_role_desc',1),
(48,1,'edit_snippet','perm.edit_snippet_desc',1),
(49,1,'edit_template','perm.edit_template_desc',1),
(50,1,'edit_tv','perm.edit_tv_desc',1),
(51,1,'edit_user','perm.edit_user_desc',1),
(52,1,'element_tree','perm.element_tree_desc',1),
(53,1,'empty_cache','perm.empty_cache_desc',1),
(54,1,'error_log_erase','perm.error_log_erase_desc',1),
(55,1,'error_log_view','perm.error_log_view_desc',1),
(56,1,'export_static','perm.export_static_desc',1),
(57,1,'file_create','perm.file_create_desc',1),
(58,1,'file_list','perm.file_list_desc',1),
(59,1,'file_manager','perm.file_manager_desc',1),
(60,1,'file_remove','perm.file_remove_desc',1),
(61,1,'file_tree','perm.file_tree_desc',1),
(62,1,'file_update','perm.file_update_desc',1),
(63,1,'file_upload','perm.file_upload_desc',1),
(64,1,'file_unpack','perm.file_unpack_desc',1),
(65,1,'file_view','perm.file_view_desc',1),
(66,1,'flush_sessions','perm.flush_sessions_desc',1),
(67,1,'frames','perm.frames_desc',1),
(68,1,'help','perm.help_desc',1),
(69,1,'home','perm.home_desc',1),
(70,1,'language','perm.language_desc',1),
(71,1,'languages','perm.languages_desc',1),
(72,1,'lexicons','perm.lexicons_desc',1),
(73,1,'list','perm.list_desc',1),
(74,1,'load','perm.load_desc',1),
(75,1,'logout','perm.logout_desc',1),
(76,1,'mgr_log_view','perm.mgr_log_view_desc',1),
(77,1,'mgr_log_erase','perm.mgr_log_erase_desc',1),
(78,1,'menu_reports','perm.menu_reports_desc',1),
(79,1,'menu_security','perm.menu_security_desc',1),
(80,1,'menu_site','perm.menu_site_desc',1),
(81,1,'menu_support','perm.menu_support_desc',1),
(82,1,'menu_system','perm.menu_system_desc',1),
(83,1,'menu_tools','perm.menu_tools_desc',1),
(84,1,'menu_trash','perm.menu_trash_desc',1),
(85,1,'menu_user','perm.menu_user_desc',1),
(86,1,'menus','perm.menus_desc',1),
(87,1,'messages','perm.messages_desc',1),
(88,1,'namespaces','perm.namespaces_desc',1),
(89,1,'new_category','perm.new_category_desc',1),
(90,1,'new_chunk','perm.new_chunk_desc',1),
(91,1,'new_context','perm.new_context_desc',1),
(92,1,'new_document','perm.new_document_desc',1),
(93,1,'new_static_resource','perm.new_static_resource_desc',1),
(94,1,'new_symlink','perm.new_symlink_desc',1),
(95,1,'new_weblink','perm.new_weblink_desc',1),
(96,1,'new_document_in_root','perm.new_document_in_root_desc',1),
(97,1,'new_plugin','perm.new_plugin_desc',1),
(98,1,'new_propertyset','perm.new_propertyset_desc',1),
(99,1,'new_role','perm.new_role_desc',1),
(100,1,'new_snippet','perm.new_snippet_desc',1),
(101,1,'new_template','perm.new_template_desc',1),
(102,1,'new_tv','perm.new_tv_desc',1),
(103,1,'new_user','perm.new_user_desc',1),
(104,1,'packages','perm.packages_desc',1),
(105,1,'policy_delete','perm.policy_delete_desc',1),
(106,1,'policy_edit','perm.policy_edit_desc',1),
(107,1,'policy_new','perm.policy_new_desc',1),
(108,1,'policy_save','perm.policy_save_desc',1),
(109,1,'policy_view','perm.policy_view_desc',1),
(110,1,'policy_template_delete','perm.policy_template_delete_desc',1),
(111,1,'policy_template_edit','perm.policy_template_edit_desc',1),
(112,1,'policy_template_new','perm.policy_template_new_desc',1),
(113,1,'policy_template_save','perm.policy_template_save_desc',1),
(114,1,'policy_template_view','perm.policy_template_view_desc',1),
(115,1,'property_sets','perm.property_sets_desc',1),
(116,1,'providers','perm.providers_desc',1),
(117,1,'publish_document','perm.publish_document_desc',1),
(118,1,'purge_deleted','perm.purge_deleted_desc',1),
(119,1,'remove','perm.remove_desc',1),
(120,1,'remove_locks','perm.remove_locks_desc',1),
(121,1,'resource_duplicate','perm.resource_duplicate_desc',1),
(122,1,'resourcegroup_delete','perm.resourcegroup_delete_desc',1),
(123,1,'resourcegroup_edit','perm.resourcegroup_edit_desc',1),
(124,1,'resourcegroup_new','perm.resourcegroup_new_desc',1),
(125,1,'resourcegroup_resource_edit','perm.resourcegroup_resource_edit_desc',1),
(126,1,'resourcegroup_resource_list','perm.resourcegroup_resource_list_desc',1),
(127,1,'resourcegroup_save','perm.resourcegroup_save_desc',1),
(128,1,'resourcegroup_view','perm.resourcegroup_view_desc',1),
(129,1,'resource_quick_create','perm.resource_quick_create_desc',1),
(130,1,'resource_quick_update','perm.resource_quick_update_desc',1),
(131,1,'resource_tree','perm.resource_tree_desc',1),
(132,1,'save','perm.save_desc',1),
(133,1,'save_category','perm.save_category_desc',1),
(134,1,'save_chunk','perm.save_chunk_desc',1),
(135,1,'save_context','perm.save_context_desc',1),
(136,1,'save_document','perm.save_document_desc',1),
(137,1,'save_plugin','perm.save_plugin_desc',1),
(138,1,'save_propertyset','perm.save_propertyset_desc',1),
(139,1,'save_role','perm.save_role_desc',1),
(140,1,'save_snippet','perm.save_snippet_desc',1),
(141,1,'save_template','perm.save_template_desc',1),
(142,1,'save_tv','perm.save_tv_desc',1),
(143,1,'save_user','perm.save_user_desc',1),
(144,1,'search','perm.search_desc',1),
(145,1,'set_sudo','perm.set_sudo_desc',1),
(146,1,'settings','perm.settings_desc',1),
(147,1,'events','perm.events_desc',1),
(148,1,'source_save','perm.source_save_desc',1),
(149,1,'source_delete','perm.source_delete_desc',1),
(150,1,'source_edit','perm.source_edit_desc',1),
(151,1,'source_view','perm.source_view_desc',1),
(152,1,'sources','perm.sources_desc',1),
(153,1,'steal_locks','perm.steal_locks_desc',1),
(154,1,'tree_show_element_ids','perm.tree_show_element_ids_desc',1),
(155,1,'tree_show_resource_ids','perm.tree_show_resource_ids_desc',1),
(156,1,'undelete_document','perm.undelete_document_desc',1),
(157,1,'unpublish_document','perm.unpublish_document_desc',1),
(158,1,'unlock_element_properties','perm.unlock_element_properties_desc',1),
(159,1,'usergroup_delete','perm.usergroup_delete_desc',1),
(160,1,'usergroup_edit','perm.usergroup_edit_desc',1),
(161,1,'usergroup_new','perm.usergroup_new_desc',1),
(162,1,'usergroup_save','perm.usergroup_save_desc',1),
(163,1,'usergroup_user_edit','perm.usergroup_user_edit_desc',1),
(164,1,'usergroup_user_list','perm.usergroup_user_list_desc',1),
(165,1,'usergroup_view','perm.usergroup_view_desc',1),
(166,1,'view','perm.view_desc',1),
(167,1,'view_category','perm.view_category_desc',1),
(168,1,'view_chunk','perm.view_chunk_desc',1),
(169,1,'view_context','perm.view_context_desc',1),
(170,1,'view_document','perm.view_document_desc',1),
(171,1,'view_element','perm.view_element_desc',1),
(172,1,'view_eventlog','perm.view_eventlog_desc',1),
(173,1,'view_offline','perm.view_offline_desc',1),
(174,1,'view_plugin','perm.view_plugin_desc',1),
(175,1,'view_propertyset','perm.view_propertyset_desc',1),
(176,1,'view_role','perm.view_role_desc',1),
(177,1,'view_snippet','perm.view_snippet_desc',1),
(178,1,'view_sysinfo','perm.view_sysinfo_desc',1),
(179,1,'view_template','perm.view_template_desc',1),
(180,1,'view_tv','perm.view_tv_desc',1),
(181,1,'view_user','perm.view_user_desc',1),
(182,1,'view_unpublished','perm.view_unpublished_desc',1),
(183,1,'workspaces','perm.workspaces_desc',1),
(184,2,'add_children','perm.add_children_desc',1),
(185,2,'copy','perm.copy_desc',1),
(186,2,'create','perm.create_desc',1),
(187,2,'delete','perm.delete_desc',1),
(188,2,'list','perm.list_desc',1),
(189,2,'load','perm.load_desc',1),
(190,2,'move','perm.move_desc',1),
(191,2,'publish','perm.publish_desc',1),
(192,2,'remove','perm.remove_desc',1),
(193,2,'save','perm.save_desc',1),
(194,2,'steal_lock','perm.steal_lock_desc',1),
(195,2,'undelete','perm.undelete_desc',1),
(196,2,'unpublish','perm.unpublish_desc',1),
(197,2,'view','perm.view_desc',1),
(198,3,'load','perm.load_desc',1),
(199,3,'list','perm.list_desc',1),
(200,3,'view','perm.view_desc',1),
(201,3,'save','perm.save_desc',1),
(202,3,'remove','perm.remove_desc',1),
(203,4,'add_children','perm.add_children_desc',1),
(204,4,'create','perm.create_desc',1),
(205,4,'copy','perm.copy_desc',1),
(206,4,'delete','perm.delete_desc',1),
(207,4,'list','perm.list_desc',1),
(208,4,'load','perm.load_desc',1),
(209,4,'remove','perm.remove_desc',1),
(210,4,'save','perm.save_desc',1),
(211,4,'view','perm.view_desc',1),
(212,5,'create','perm.create_desc',1),
(213,5,'copy','perm.copy_desc',1),
(214,5,'list','perm.list_desc',1),
(215,5,'load','perm.load_desc',1),
(216,5,'remove','perm.remove_desc',1),
(217,5,'save','perm.save_desc',1),
(218,5,'view','perm.view_desc',1),
(219,6,'load','perm.load_desc',1),
(220,6,'list','perm.list_desc',1),
(221,6,'view','perm.view_desc',1),
(222,6,'save','perm.save_desc',1),
(223,6,'remove','perm.remove_desc',1),
(224,6,'view_unpublished','perm.view_unpublished_desc',1),
(225,6,'copy','perm.copy_desc',1),
(226,7,'list','perm.list_desc',1),
(227,7,'load','perm.load_desc',1),
(228,7,'view','perm.view_desc',1),
(229,8,'babel_settings','babel.permission.babel_settings_desc',1);
/*!40000 ALTER TABLE `modx_access_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_policies`
--

DROP TABLE IF EXISTS `modx_access_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_policies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `parent` int(10) unsigned NOT NULL DEFAULT 0,
  `template` int(10) unsigned NOT NULL DEFAULT 0,
  `class` varchar(191) NOT NULL DEFAULT '',
  `data` text DEFAULT NULL,
  `lexicon` varchar(255) NOT NULL DEFAULT 'permissions',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `parent` (`parent`),
  KEY `class` (`class`),
  KEY `template` (`template`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_policies`
--

LOCK TABLES `modx_access_policies` WRITE;
/*!40000 ALTER TABLE `modx_access_policies` DISABLE KEYS */;
INSERT INTO `modx_access_policies` VALUES
(1,'Resource','policy_resource_desc',0,2,'','{\"add_children\":true,\"create\":true,\"copy\":true,\"delete\":true,\"list\":true,\"load\":true,\"move\":true,\"publish\":true,\"remove\":true,\"save\":true,\"steal_lock\":true,\"undelete\":true,\"unpublish\":true,\"view\":true}','permissions'),
(2,'Administrator','policy_administrator_desc',0,1,'','{\"about\":true,\"access_permissions\":true,\"actions\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"database_truncate\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_static_resource\":true,\"delete_symlink\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"delete_weblink\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_static_resource\":true,\"edit_symlink\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"edit_weblink\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"events\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_unpack\":true,\"file_update\":true,\"file_upload\":true,\"file_view\":true,\"flush_sessions\":true,\"frames\":true,\"help\":true,\"home\":true,\"language\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"mgr_log_view\":true,\"mgr_log_erase\":true,\"menu_reports\":true,\"menu_security\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_trash\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"policy_delete\":true,\"policy_edit\":true,\"policy_new\":true,\"policy_save\":true,\"policy_template_delete\":true,\"policy_template_edit\":true,\"policy_template_new\":true,\"policy_template_save\":true,\"policy_template_view\":true,\"policy_view\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"remove_locks\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"resourcegroup_delete\":true,\"resourcegroup_edit\":true,\"resourcegroup_new\":true,\"resourcegroup_resource_edit\":true,\"resourcegroup_resource_list\":true,\"resourcegroup_save\":true,\"resourcegroup_view\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_role\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"set_sudo\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"steal_locks\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"usergroup_delete\":true,\"usergroup_edit\":true,\"usergroup_new\":true,\"usergroup_save\":true,\"usergroup_user_edit\":true,\"usergroup_user_list\":true,\"usergroup_view\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true}','permissions'),
(3,'Load Only','policy_load_only_desc',0,3,'','{\"load\":true}','permissions'),
(4,'Load, List and View','policy_load_list_and_view_desc',0,3,'','{\"load\":true,\"list\":true,\"view\":true}','permissions'),
(5,'Object','policy_object_desc',0,3,'','{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true}','permissions'),
(6,'Element','policy_element_desc',0,4,'','{\"add_children\":true,\"create\":true,\"delete\":true,\"list\":true,\"load\":true,\"remove\":true,\"save\":true,\"view\":true,\"copy\":true}','permissions'),
(7,'Content Editor','policy_content_editor_desc',0,1,'','{\"change_profile\":true,\"class_map\":true,\"countries\":true,\"delete_document\":true,\"delete_static_resource\":true,\"delete_symlink\":true,\"delete_weblink\":true,\"edit_document\":true,\"edit_static_resource\":true,\"edit_symlink\":true,\"edit_weblink\":true,\"frames\":true,\"help\":true,\"home\":true,\"language\":true,\"list\":true,\"load\":true,\"logout\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_tools\":true,\"menu_user\":true,\"new_document\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_weblink\":true,\"resource_duplicate\":true,\"resource_tree\":true,\"save_document\":true,\"source_view\":true,\"tree_show_resource_ids\":true,\"view\":true,\"view_document\":true,\"view_template\":true}','permissions'),
(8,'Media Source Admin','policy_media_source_admin_desc',0,5,'','{\"create\":true,\"copy\":true,\"load\":true,\"list\":true,\"save\":true,\"remove\":true,\"view\":true}','permissions'),
(9,'Media Source User','policy_media_source_user_desc',0,5,'','{\"load\":true,\"list\":true,\"view\":true}','permissions'),
(10,'Developer','policy_developer_desc',0,1,'','{\"about\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_static_resource\":true,\"edit_symlink\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"edit_weblink\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_unpack\":true,\"file_update\":true,\"file_upload\":true,\"file_view\":true,\"frames\":true,\"help\":true,\"home\":true,\"language\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"mgr_log_view\":true,\"mgr_log_erase\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true}','permissions'),
(11,'Context','policy_context_desc',0,6,'','{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true,\"copy\":true,\"view_unpublished\":true}','permissions'),
(12,'Hidden Namespace','policy_hidden_namespace_desc',0,7,'','{\"load\":false,\"list\":false,\"view\":true}','permissions'),
(13,'Babel','Babel Access Policy with all attributes.',0,8,'','{\"babel_settings\":true}','babel:permissions');
/*!40000 ALTER TABLE `modx_access_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_policy_template_groups`
--

DROP TABLE IF EXISTS `modx_access_policy_template_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_policy_template_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_policy_template_groups`
--

LOCK TABLES `modx_access_policy_template_groups` WRITE;
/*!40000 ALTER TABLE `modx_access_policy_template_groups` DISABLE KEYS */;
INSERT INTO `modx_access_policy_template_groups` VALUES
(1,'Administrator','policy_template_group_administrator_desc'),
(2,'Object','policy_template_group_object_desc'),
(3,'Resource','policy_template_group_resource_desc'),
(4,'Element','policy_template_group_element_desc'),
(5,'MediaSource','policy_template_group_mediasource_desc'),
(6,'Namespace','policy_template_group_namespace_desc'),
(7,'Context','policy_template_group_context_desc');
/*!40000 ALTER TABLE `modx_access_policy_template_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_policy_templates`
--

DROP TABLE IF EXISTS `modx_access_policy_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_policy_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_group` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `lexicon` varchar(255) NOT NULL DEFAULT 'permissions',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_policy_templates`
--

LOCK TABLES `modx_access_policy_templates` WRITE;
/*!40000 ALTER TABLE `modx_access_policy_templates` DISABLE KEYS */;
INSERT INTO `modx_access_policy_templates` VALUES
(1,1,'AdministratorTemplate','policy_template_administrator_desc','permissions'),
(2,3,'ResourceTemplate','policy_template_resource_desc','permissions'),
(3,2,'ObjectTemplate','policy_template_object_desc','permissions'),
(4,4,'ElementTemplate','policy_template_element_desc','permissions'),
(5,5,'MediaSourceTemplate','policy_template_mediasource_desc','permissions'),
(6,7,'ContextTemplate','policy_template_context_desc','permissions'),
(7,6,'NamespaceTemplate','policy_template_namespace_desc','permissions'),
(8,1,'BabelTemplate','Babel Policy Template with all attributes.','babel:permissions');
/*!40000 ALTER TABLE `modx_access_policy_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_resource_groups`
--

DROP TABLE IF EXISTS `modx_access_resource_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_resource_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT 0,
  `authority` int(10) unsigned NOT NULL DEFAULT 9999,
  `policy` int(10) unsigned NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`,`target`,`principal`,`authority`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_resource_groups`
--

LOCK TABLES `modx_access_resource_groups` WRITE;
/*!40000 ALTER TABLE `modx_access_resource_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_resource_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_resources`
--

DROP TABLE IF EXISTS `modx_access_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_resources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT 0,
  `authority` int(10) unsigned NOT NULL DEFAULT 9999,
  `policy` int(10) unsigned NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_resources`
--

LOCK TABLES `modx_access_resources` WRITE;
/*!40000 ALTER TABLE `modx_access_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_templatevars`
--

DROP TABLE IF EXISTS `modx_access_templatevars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_templatevars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT 0,
  `authority` int(10) unsigned NOT NULL DEFAULT 9999,
  `policy` int(10) unsigned NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_templatevars`
--

LOCK TABLES `modx_access_templatevars` WRITE;
/*!40000 ALTER TABLE `modx_access_templatevars` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_templatevars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_actiondom`
--

DROP TABLE IF EXISTS `modx_actiondom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_actiondom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `set` int(11) NOT NULL DEFAULT 0,
  `action` varchar(191) NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `xtype` varchar(100) NOT NULL DEFAULT '',
  `container` varchar(255) NOT NULL DEFAULT '',
  `rule` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `constraint` varchar(255) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `for_parent` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `set` (`set`),
  KEY `action` (`action`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `for_parent` (`for_parent`),
  KEY `rank` (`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_actiondom`
--

LOCK TABLES `modx_actiondom` WRITE;
/*!40000 ALTER TABLE `modx_actiondom` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_actiondom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_actions_fields`
--

DROP TABLE IF EXISTS `modx_actions_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_actions_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT 'field',
  `tab` varchar(191) NOT NULL DEFAULT '',
  `form` varchar(255) NOT NULL DEFAULT '',
  `other` varchar(255) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `action` (`action`),
  KEY `type` (`type`),
  KEY `tab` (`tab`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_actions_fields`
--

LOCK TABLES `modx_actions_fields` WRITE;
/*!40000 ALTER TABLE `modx_actions_fields` DISABLE KEYS */;
INSERT INTO `modx_actions_fields` VALUES
(1,'resource/update','modx-resource-settings','tab','','modx-panel-resource','',0),
(2,'resource/update','modx-resource-main-left','tab','','modx-panel-resource','',1),
(3,'resource/update','id','field','modx-resource-main-left','modx-panel-resource','',0),
(4,'resource/update','pagetitle','field','modx-resource-main-left','modx-panel-resource','',1),
(5,'resource/update','alias','field','modx-resource-main-left','modx-panel-resource','',2),
(6,'resource/update','longtitle','field','modx-resource-main-left','modx-panel-resource','',3),
(7,'resource/update','description','field','modx-resource-main-left','modx-panel-resource','',4),
(8,'resource/update','introtext','field','modx-resource-main-left','modx-panel-resource','',5),
(9,'resource/update','modx-resource-content','field','modx-resource-content','modx-panel-resource','',0),
(10,'resource/update','modx-resource-main-right','tab','','modx-panel-resource','',3),
(11,'resource/update','modx-resource-main-right-top','tab','','modx-panel-resource','',4),
(12,'resource/update','published','field','modx-resource-main-right-top','modx-panel-resource','',0),
(13,'resource/update','deleted','field','modx-resource-main-right-top','modx-panel-resource','',1),
(14,'resource/update','publishedon','field','modx-resource-main-right-top','modx-panel-resource','',2),
(15,'resource/update','pub_date','field','modx-resource-main-right-top','modx-panel-resource','',3),
(16,'resource/update','unpub_date','field','modx-resource-main-right-top','modx-panel-resource','',4),
(17,'resource/update','modx-resource-main-right-middle','tab','','modx-panel-resource','',5),
(18,'resource/update','template','field','modx-resource-main-right-middle','modx-panel-resource','',0),
(19,'resource/update','modx-resource-main-right-bottom','tab','','modx-panel-resource','',6),
(20,'resource/update','hidemenu','field','modx-resource-main-right-bottom','modx-panel-resource','',0),
(21,'resource/update','menutitle','field','modx-resource-main-right-bottom','modx-panel-resource','',1),
(22,'resource/update','link_attributes','field','modx-resource-main-right-bottom','modx-panel-resource','',2),
(23,'resource/update','menuindex','field','modx-resource-main-right-bottom','modx-panel-resource','',3),
(24,'resource/update','modx-page-settings','tab','','modx-panel-resource','',7),
(25,'resource/update','modx-page-settings-left','tab','','modx-panel-resource','',8),
(26,'resource/update','class_key','field','modx-page-settings-left','modx-panel-resource','',0),
(27,'resource/update','content_type','field','modx-page-settings-left','modx-panel-resource','',1),
(28,'resource/update','modx-page-settings-right','tab','','modx-panel-resource','',9),
(29,'resource/update','parent-cmb','field','modx-page-settings-right','modx-panel-resource','',0),
(30,'resource/update','content_dispo','field','modx-page-settings-right','modx-panel-resource','',1),
(31,'resource/update','modx-page-settings-box-left','tab','','modx-panel-resource','',10),
(32,'resource/update','isfolder','field','modx-page-settings-box-left','modx-panel-resource','',0),
(33,'resource/update','show_in_tree','field','modx-page-settings-box-left','modx-panel-resource','',1),
(34,'resource/update','hide_children_in_tree','field','modx-page-settings-box-left','modx-panel-resource','',2),
(35,'resource/update','alias_visible','field','modx-page-settings-box-left','modx-panel-resource','',3),
(36,'resource/update','uri_override','field','modx-page-settings-box-left','modx-panel-resource','',4),
(37,'resource/update','uri','field','modx-page-settings-box-left','modx-panel-resource','',5),
(38,'resource/update','modx-page-settings-box-right','tab','','modx-panel-resource','',11),
(39,'resource/update','richtext','field','modx-page-settings-box-right','modx-panel-resource','',0),
(40,'resource/update','cacheable','field','modx-page-settings-box-right','modx-panel-resource','',1),
(41,'resource/update','searchable','field','modx-page-settings-box-right','modx-panel-resource','',2),
(42,'resource/update','syncsite','field','modx-page-settings-box-right','modx-panel-resource','',3),
(43,'resource/update','modx-panel-resource-tv','tab','','modx-panel-resource','tv',12),
(44,'resource/update','modx-resource-access-permissions','tab','','modx-panel-resource','',13),
(45,'resource/create','modx-resource-settings','tab','','modx-panel-resource','',0),
(46,'resource/create','modx-resource-main-left','tab','','modx-panel-resource','',1),
(47,'resource/create','id','field','modx-resource-main-left','modx-panel-resource','',0),
(48,'resource/create','pagetitle','field','modx-resource-main-left','modx-panel-resource','',1),
(49,'resource/create','alias','field','modx-resource-main-left','modx-panel-resource','',2),
(50,'resource/create','longtitle','field','modx-resource-main-left','modx-panel-resource','',3),
(51,'resource/create','description','field','modx-resource-main-left','modx-panel-resource','',4),
(52,'resource/create','introtext','field','modx-resource-main-left','modx-panel-resource','',5),
(53,'resource/create','modx-resource-content','field','modx-resource-content','modx-panel-resource','',0),
(54,'resource/create','modx-resource-main-right','tab','','modx-panel-resource','',3),
(55,'resource/create','modx-resource-main-right-top','tab','','modx-panel-resource','',4),
(56,'resource/create','published','field','modx-resource-main-right-top','modx-panel-resource','',0),
(57,'resource/create','deleted','field','modx-resource-main-right-top','modx-panel-resource','',1),
(58,'resource/create','publishedon','field','modx-resource-main-right-top','modx-panel-resource','',2),
(59,'resource/create','pub_date','field','modx-resource-main-right-top','modx-panel-resource','',3),
(60,'resource/create','unpub_date','field','modx-resource-main-right-top','modx-panel-resource','',4),
(61,'resource/create','modx-resource-main-right-middle','tab','','modx-panel-resource','',5),
(62,'resource/create','template','field','modx-resource-main-right-middle','modx-panel-resource','',0),
(63,'resource/create','modx-resource-main-right-bottom','tab','','modx-panel-resource','',6),
(64,'resource/create','hidemenu','field','modx-resource-main-right-bottom','modx-panel-resource','',0),
(65,'resource/create','menutitle','field','modx-resource-main-right-bottom','modx-panel-resource','',1),
(66,'resource/create','link_attributes','field','modx-resource-main-right-bottom','modx-panel-resource','',2),
(67,'resource/create','menuindex','field','modx-resource-main-right-bottom','modx-panel-resource','',3),
(68,'resource/create','modx-page-settings','tab','','modx-panel-resource','',7),
(69,'resource/create','modx-page-settings-left','tab','','modx-panel-resource','',8),
(70,'resource/create','class_key','field','modx-page-settings-left','modx-panel-resource','',0),
(71,'resource/create','content_type','field','modx-page-settings-left','modx-panel-resource','',1),
(72,'resource/create','modx-page-settings-right','tab','','modx-panel-resource','',9),
(73,'resource/create','parent-cmb','field','modx-page-settings-right','modx-panel-resource','',0),
(74,'resource/create','content_dispo','field','modx-page-settings-right','modx-panel-resource','',1),
(75,'resource/create','modx-page-settings-box-left','tab','','modx-panel-resource','',10),
(76,'resource/create','isfolder','field','modx-page-settings-box-left','modx-panel-resource','',0),
(77,'resource/create','show_in_tree','field','modx-page-settings-box-left','modx-panel-resource','',1),
(78,'resource/create','hide_children_in_tree','field','modx-page-settings-box-left','modx-panel-resource','',2),
(79,'resource/create','alias_visible','field','modx-page-settings-box-left','modx-panel-resource','',3),
(80,'resource/create','uri_override','field','modx-page-settings-box-left','modx-panel-resource','',4),
(81,'resource/create','uri','field','modx-page-settings-box-left','modx-panel-resource','',5),
(82,'resource/create','modx-page-settings-box-right','tab','','modx-panel-resource','',11),
(83,'resource/create','richtext','field','modx-page-settings-box-right','modx-panel-resource','',0),
(84,'resource/create','cacheable','field','modx-page-settings-box-right','modx-panel-resource','',1),
(85,'resource/create','searchable','field','modx-page-settings-box-right','modx-panel-resource','',2),
(86,'resource/create','syncsite','field','modx-page-settings-box-right','modx-panel-resource','',3),
(87,'resource/create','modx-panel-resource-tv','tab','','modx-panel-resource','tv',12),
(88,'resource/create','modx-resource-access-permissions','tab','','modx-panel-resource','',13);
/*!40000 ALTER TABLE `modx_actions_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_active_users`
--

DROP TABLE IF EXISTS `modx_active_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_active_users` (
  `internalKey` int(9) unsigned NOT NULL DEFAULT 0,
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT 0,
  `id` int(10) DEFAULT NULL,
  `action` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`internalKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_active_users`
--

LOCK TABLES `modx_active_users` WRITE;
/*!40000 ALTER TABLE `modx_active_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_active_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_categories`
--

DROP TABLE IF EXISTS `modx_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(10) unsigned DEFAULT 0,
  `category` varchar(45) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category` (`parent`,`category`),
  KEY `parent` (`parent`),
  KEY `rank` (`rank`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_categories`
--

LOCK TABLES `modx_categories` WRITE;
/*!40000 ALTER TABLE `modx_categories` DISABLE KEYS */;
INSERT INTO `modx_categories` VALUES
(1,0,'pdoTools',0),
(2,0,'MIGX',0),
(3,0,'Babel',0),
(4,0,'improvision',0),
(9,0,'SEO',0),
(10,0,'Зображення',0),
(11,0,'Тексти та блоки',0),
(12,0,'Списки MIGX',0),
(13,0,'Картка та фільтр',0),
(14,0,'Контакти',0),
(29,4,'Шаблони',0),
(30,4,'Чанки',0),
(31,4,'Іконки',0),
(32,4,'Сніпети і плагіни',0);
/*!40000 ALTER TABLE `modx_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_categories_closure`
--

DROP TABLE IF EXISTS `modx_categories_closure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_categories_closure` (
  `ancestor` int(10) unsigned NOT NULL DEFAULT 0,
  `descendant` int(10) unsigned NOT NULL DEFAULT 0,
  `depth` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ancestor`,`descendant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_categories_closure`
--

LOCK TABLES `modx_categories_closure` WRITE;
/*!40000 ALTER TABLE `modx_categories_closure` DISABLE KEYS */;
INSERT INTO `modx_categories_closure` VALUES
(0,1,0),
(0,2,0),
(0,3,0),
(0,4,0),
(0,5,0),
(0,6,0),
(0,7,0),
(0,8,0),
(0,9,0),
(0,10,0),
(0,11,0),
(0,12,0),
(0,13,0),
(0,14,0),
(0,29,0),
(0,30,0),
(0,31,0),
(0,32,0),
(1,1,0),
(2,2,0),
(3,3,0),
(4,4,0),
(4,5,0),
(4,6,0),
(4,7,0),
(4,8,0),
(4,29,0),
(4,30,0),
(4,31,0),
(4,32,0),
(5,5,0),
(6,6,0),
(7,7,0),
(8,8,0),
(9,9,0),
(10,10,0),
(11,11,0),
(12,12,0),
(13,13,0),
(14,14,0),
(29,29,0),
(30,30,0),
(31,31,0),
(32,32,0);
/*!40000 ALTER TABLE `modx_categories_closure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_content_type`
--

DROP TABLE IF EXISTS `modx_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_content_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` tinytext DEFAULT NULL,
  `mime_type` tinytext DEFAULT NULL,
  `file_extensions` tinytext DEFAULT NULL,
  `icon` tinytext DEFAULT NULL,
  `headers` mediumtext DEFAULT NULL,
  `binary` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_content_type`
--

LOCK TABLES `modx_content_type` WRITE;
/*!40000 ALTER TABLE `modx_content_type` DISABLE KEYS */;
INSERT INTO `modx_content_type` VALUES
(1,'HTML','HTML content','text/html','','',NULL,0),
(2,'XML','XML content','text/xml','.xml','icon-xml',NULL,0),
(3,'Text','Plain text content','text/plain','.txt','icon-txt',NULL,0),
(4,'CSS','CSS content','text/css','.css','icon-css',NULL,0),
(5,'JavaScript','JavaScript content','text/javascript','.js','icon-js',NULL,0),
(6,'RSS','For RSS feeds','application/rss+xml','.rss','icon-rss',NULL,0),
(7,'JSON','JSON','application/json','.json','icon-json',NULL,0),
(8,'PDF','PDF Files','application/pdf','.pdf','icon-pdf',NULL,1);
/*!40000 ALTER TABLE `modx_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_context`
--

DROP TABLE IF EXISTS `modx_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_context` (
  `key` varchar(100) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` tinytext DEFAULT NULL,
  `rank` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`key`),
  KEY `name` (`name`),
  KEY `rank` (`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_context`
--

LOCK TABLES `modx_context` WRITE;
/*!40000 ALTER TABLE `modx_context` DISABLE KEYS */;
INSERT INTO `modx_context` VALUES
('en','English','improvision — English',1),
('mgr','Manager','The default manager or administration context for content management activity.',9),
('ru','Русский','improvision — Русский',2),
('web','Українська','The default front-end context for your web site.',0);
/*!40000 ALTER TABLE `modx_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_context_resource`
--

DROP TABLE IF EXISTS `modx_context_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_context_resource` (
  `context_key` varchar(191) NOT NULL,
  `resource` int(11) unsigned NOT NULL,
  PRIMARY KEY (`context_key`,`resource`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_context_resource`
--

LOCK TABLES `modx_context_resource` WRITE;
/*!40000 ALTER TABLE `modx_context_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_context_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_context_setting`
--

DROP TABLE IF EXISTS `modx_context_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_context_setting` (
  `context_key` varchar(191) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext DEFAULT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`context_key`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_context_setting`
--

LOCK TABLES `modx_context_setting` WRITE;
/*!40000 ALTER TABLE `modx_context_setting` DISABLE KEYS */;
INSERT INTO `modx_context_setting` VALUES
('en','base_url','/en/','textfield','core','',NULL),
('en','cultureKey','en','textfield','core','',NULL),
('en','error_page','32','textfield','core','',NULL),
('en','improvision.blog_id','17','textfield','improvision','',NULL),
('en','improvision.contacts_id','23','textfield','improvision','',NULL),
('en','improvision.globals_id','35','textfield','improvision','',NULL),
('en','improvision.privacy_id','26','textfield','improvision','',NULL),
('en','improvision.projects_id','14','textfield','improvision','',NULL),
('en','improvision.services_id','11','textfield','improvision','',NULL),
('en','improvision.terms_id','29','textfield','improvision','',NULL),
('en','site_start','2','textfield','core','',NULL),
('en','site_url','https://improvision.com.ua/en/','textfield','core','','2026-11-12 14:47:44'),
('mgr','allow_tags_in_post','1','combo-boolean','core','system',NULL),
('mgr','modRequest.class','MODX\\Revolution\\modManagerRequest','textfield','core','system',NULL),
('ru','base_url','/ru/','textfield','core','',NULL),
('ru','cultureKey','ru','textfield','core','',NULL),
('ru','error_page','33','textfield','core','',NULL),
('ru','improvision.blog_id','18','textfield','improvision','',NULL),
('ru','improvision.contacts_id','24','textfield','improvision','',NULL),
('ru','improvision.globals_id','36','textfield','improvision','',NULL),
('ru','improvision.privacy_id','27','textfield','improvision','',NULL),
('ru','improvision.projects_id','15','textfield','improvision','',NULL),
('ru','improvision.services_id','12','textfield','improvision','',NULL),
('ru','improvision.terms_id','30','textfield','improvision','',NULL),
('ru','site_start','3','textfield','core','',NULL),
('ru','site_url','https://improvision.com.ua/ru/','textfield','core','','2026-11-12 14:47:44'),
('web','cultureKey','uk','textfield','core','',NULL),
('web','error_page','31','textfield','core','',NULL),
('web','improvision.blog_id','16','textfield','improvision','',NULL),
('web','improvision.contacts_id','22','textfield','improvision','',NULL),
('web','improvision.globals_id','34','textfield','improvision','',NULL),
('web','improvision.privacy_id','25','textfield','improvision','',NULL),
('web','improvision.projects_id','13','textfield','improvision','',NULL),
('web','improvision.services_id','10','textfield','improvision','',NULL),
('web','improvision.terms_id','28','textfield','improvision','',NULL),
('web','site_start','1','textfield','core','',NULL);
/*!40000 ALTER TABLE `modx_context_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_dashboard`
--

DROP TABLE IF EXISTS `modx_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `hide_trees` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `customizable` tinyint(1) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `hide_trees` (`hide_trees`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_dashboard`
--

LOCK TABLES `modx_dashboard` WRITE;
/*!40000 ALTER TABLE `modx_dashboard` DISABLE KEYS */;
INSERT INTO `modx_dashboard` VALUES
(1,'Default','',0,1);
/*!40000 ALTER TABLE `modx_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_dashboard_widget`
--

DROP TABLE IF EXISTS `modx_dashboard_widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_dashboard_widget` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `content` mediumtext DEFAULT NULL,
  `properties` text DEFAULT NULL,
  `namespace` varchar(191) NOT NULL DEFAULT '',
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:dashboards',
  `size` varchar(255) NOT NULL DEFAULT 'half',
  `permission` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `type` (`type`),
  KEY `namespace` (`namespace`),
  KEY `lexicon` (`lexicon`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_dashboard_widget`
--

LOCK TABLES `modx_dashboard_widget` WRITE;
/*!40000 ALTER TABLE `modx_dashboard_widget` DISABLE KEYS */;
INSERT INTO `modx_dashboard_widget` VALUES
(1,'w_newsfeed','w_newsfeed_desc','file','[[++manager_path]]controllers/default/dashboard/widget.modx-news.php',NULL,'core','core:dashboards','one-third',''),
(2,'w_securityfeed','w_securityfeed_desc','file','[[++manager_path]]controllers/default/dashboard/widget.modx-security.php',NULL,'core','core:dashboards','one-third',''),
(3,'w_whosonline','w_whosonline_desc','file','[[++manager_path]]controllers/default/dashboard/widget.grid-online.php',NULL,'core','core:dashboards','one-third',''),
(4,'w_recentlyeditedresources','w_recentlyeditedresources_desc','file','[[++manager_path]]controllers/default/dashboard/widget.grid-rer.php',NULL,'core','core:dashboards','two-thirds','view_document'),
(5,'w_configcheck','w_configcheck_desc','file','[[++manager_path]]controllers/default/dashboard/widget.configcheck.php',NULL,'core','core:dashboards','full',''),
(6,'w_buttons','w_buttons_desc','file','[[++manager_path]]controllers/default/dashboard/widget.buttons.php','{\"create-resource\":{\"link\":\"[[++manager_url]]?a=resource\\/create\",\"icon\":\"file-o\",\"title\":\"[[%action_new_resource]]\",\"description\":\"[[%action_new_resource_desc]]\"},\"view-site\":{\"link\":\"[[++site_url]]\",\"icon\":\"eye\",\"title\":\"[[%action_view_website]]\",\"description\":\"[[%action_view_website_desc]]\",\"target\":\"_blank\"},\"advanced-search\":{\"link\":\"[[++manager_url]]?a=search\",\"icon\":\"search\",\"title\":\"[[%action_advanced_search]]\",\"description\":\"[[%action_advanced_search_desc]]\"},\"manage-users\":{\"link\":\"[[++manager_url]]?a=security\\/user\",\"icon\":\"user\",\"title\":\"[[%action_manage_users]]\",\"description\":\"[[%action_manage_users_desc]]\"}}','core','core:dashboards','full',''),
(7,'w_updates','w_updates_desc','file','[[++manager_path]]controllers/default/dashboard/widget.updates.php',NULL,'core','core:dashboards','one-third','workspaces');
/*!40000 ALTER TABLE `modx_dashboard_widget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_dashboard_widget_placement`
--

DROP TABLE IF EXISTS `modx_dashboard_widget_placement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_dashboard_widget_placement` (
  `user` int(10) unsigned NOT NULL DEFAULT 0,
  `dashboard` int(10) unsigned NOT NULL DEFAULT 0,
  `widget` int(10) unsigned NOT NULL DEFAULT 0,
  `rank` int(10) unsigned NOT NULL DEFAULT 0,
  `size` varchar(255) NOT NULL DEFAULT 'half',
  PRIMARY KEY (`user`,`dashboard`,`widget`),
  KEY `rank` (`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_dashboard_widget_placement`
--

LOCK TABLES `modx_dashboard_widget_placement` WRITE;
/*!40000 ALTER TABLE `modx_dashboard_widget_placement` DISABLE KEYS */;
INSERT INTO `modx_dashboard_widget_placement` VALUES
(0,1,1,2,'one-third'),
(0,1,2,3,'one-third'),
(0,1,3,5,'one-third'),
(0,1,4,6,'two-thirds'),
(0,1,5,1,'full'),
(0,1,6,0,'full'),
(0,1,7,4,'one-third'),
(1,1,1,2,'one-third'),
(1,1,2,3,'one-third'),
(1,1,3,5,'one-third'),
(1,1,4,6,'two-thirds'),
(1,1,5,1,'full'),
(1,1,6,0,'full'),
(1,1,7,4,'one-third');
/*!40000 ALTER TABLE `modx_dashboard_widget_placement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_deprecated_call`
--

DROP TABLE IF EXISTS `modx_deprecated_call`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_deprecated_call` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `method` int(11) unsigned NOT NULL DEFAULT 0,
  `call_count` int(11) unsigned NOT NULL DEFAULT 0,
  `caller` varchar(191) NOT NULL DEFAULT '',
  `caller_file` varchar(191) NOT NULL DEFAULT '',
  `caller_line` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `method` (`method`),
  KEY `call_count` (`call_count`),
  KEY `caller` (`caller`),
  KEY `caller_file` (`caller_file`),
  KEY `caller_line` (`caller_line`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_deprecated_call`
--

LOCK TABLES `modx_deprecated_call` WRITE;
/*!40000 ALTER TABLE `modx_deprecated_call` DISABLE KEYS */;
INSERT INTO `modx_deprecated_call` VALUES
(1,1,2,'xPDO\\xPDO::newObject','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',808),
(2,2,2,'xPDO\\xPDO::call','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',774),
(3,2,2,'MODX\\Revolution\\modAccessibleObject::load','/home/claude/modxsite/core/src/Revolution/modAccessibleObject.php',106),
(4,3,2,'xPDO\\xPDO::newObject','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',808),
(5,4,2,'xPDO\\xPDO::call','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',774),
(6,4,2,'MODX\\Revolution\\modAccessibleObject::load','/home/claude/modxsite/core/src/Revolution/modAccessibleObject.php',106),
(7,5,23,'xPDO\\xPDO::newObject','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',808),
(8,5,2801,'xPDO\\xPDO::call','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',774),
(9,5,2801,'MODX\\Revolution\\modAccessibleObject::load','/home/claude/modxsite/core/src/Revolution/modAccessibleObject.php',106),
(10,6,4,'xPDO\\xPDO::newObject','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',808),
(11,6,4,'xPDO\\xPDO::call','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',774),
(12,6,4,'MODX\\Revolution\\modAccessibleObject::load','/home/claude/modxsite/core/src/Revolution/modAccessibleObject.php',106),
(13,7,13,'xPDO\\xPDO::newObject','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',808),
(14,7,13,'xPDO\\xPDO::call','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',774),
(15,7,13,'xPDO\\Om\\xPDOObject::load','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/Om/xPDOObject.php',402),
(16,8,2,'xPDO\\xPDO::newObject','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',808),
(17,9,2,'xPDO\\xPDO::call','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',774),
(18,9,2,'MODX\\Revolution\\modAccessibleObject::load','/home/claude/modxsite/core/src/Revolution/modAccessibleObject.php',106),
(19,10,8,'xPDO\\xPDO::newObject','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',808),
(20,11,9,'xPDO\\xPDO::call','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',774),
(21,11,9,'xPDO\\Om\\xPDOObject::load','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/Om/xPDOObject.php',402),
(22,12,8,'xPDO\\xPDO::newObject','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',808),
(23,12,73,'xPDO\\xPDO::call','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',774),
(24,12,73,'MODX\\Revolution\\modAccessibleObject::load','/home/claude/modxsite/core/src/Revolution/modAccessibleObject.php',106),
(25,13,1,'xPDO\\xPDO::call','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',774),
(26,13,1,'xPDO\\Om\\xPDOObject::load','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/Om/xPDOObject.php',402),
(27,13,1,'xPDO\\xPDO::newObject','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',808),
(28,14,1,'xPDO\\xPDO::call','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',774),
(29,14,1,'xPDO\\Om\\xPDOObject::load','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/Om/xPDOObject.php',402),
(30,14,1,'xPDO\\xPDO::newObject','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',808),
(31,15,1,'xPDO\\xPDO::call','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',774),
(32,15,1,'xPDO\\Om\\xPDOObject::load','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/Om/xPDOObject.php',402),
(33,15,1,'xPDO\\xPDO::newObject','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',808),
(34,16,5,'xPDO\\Om\\xPDOQuery::__construct','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/Om/xPDOQuery.php',122),
(35,16,5,'xPDO\\xPDO::getPK','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',1598),
(36,16,5,'xPDO\\xPDO::call','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',774),
(37,16,5,'xPDO\\xPDO::getFields','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',1422),
(38,16,5,'xPDO\\xPDO::newObject','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',808),
(39,17,1,'xPDO\\Om\\xPDOQuery::__construct','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/Om/xPDOQuery.php',122),
(40,17,1,'xPDO\\xPDO::getTableName','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',1289),
(41,17,1,'xPDO\\xPDO::call','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',774),
(42,17,1,'xPDO\\Om\\xPDOObject::load','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/Om/xPDOObject.php',402),
(43,18,69,'xPDO\\xPDO::call','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',774),
(44,18,69,'MODX\\Revolution\\modAccessibleObject::load','/home/claude/modxsite/core/src/Revolution/modAccessibleObject.php',106),
(45,18,31,'xPDO\\xPDO::newObject','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',808),
(46,19,27,'xPDO\\Om\\xPDOQuery::__construct','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/Om/xPDOQuery.php',122),
(47,19,27,'xPDO\\xPDO::getPK','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',1598),
(48,19,48,'xPDO\\xPDO::call','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',774),
(49,19,27,'xPDO\\xPDO::getFields','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',1422),
(50,20,162,'xPDO\\xPDO::call','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',774),
(51,20,162,'xPDO\\Om\\xPDOObject::load','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/Om/xPDOObject.php',402),
(52,18,13,'xPDO\\xPDO::getPKType','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',1660),
(53,18,13,'xPDO\\xPDO::getPK','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',1598),
(54,19,21,'MODX\\Revolution\\modAccessibleObject::load','/home/claude/modxsite/core/src/Revolution/modAccessibleObject.php',106),
(55,21,21,'xPDO\\xPDO::getPKType','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',1660),
(56,21,21,'xPDO\\xPDO::getPK','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',1598),
(57,21,21,'xPDO\\xPDO::call','/home/claude/modxsite/core/vendor/xpdo/xpdo/src/xPDO/xPDO.php',774),
(58,21,21,'MODX\\Revolution\\modAccessibleObject::load','/home/claude/modxsite/core/src/Revolution/modAccessibleObject.php',106);
/*!40000 ALTER TABLE `modx_deprecated_call` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_deprecated_method`
--

DROP TABLE IF EXISTS `modx_deprecated_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_deprecated_method` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `definition` varchar(191) NOT NULL DEFAULT '',
  `since` varchar(191) NOT NULL DEFAULT '',
  `recommendation` varchar(1024) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `definition` (`definition`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_deprecated_method`
--

LOCK TABLES `modx_deprecated_method` WRITE;
/*!40000 ALTER TABLE `modx_deprecated_method` DISABLE KEYS */;
INSERT INTO `modx_deprecated_method` VALUES
(1,'modx.modNamespace','3.0','Replace references to class modx.modNamespace with MODX\\Revolution\\modNamespace to take advantage of PSR-4 autoloading.'),
(2,'modNamespace','3.0','Replace references to class modNamespace with MODX\\Revolution\\modNamespace to take advantage of PSR-4 autoloading.'),
(3,'modx.modCategory','3.0','Replace references to class modx.modCategory with MODX\\Revolution\\modCategory to take advantage of PSR-4 autoloading.'),
(4,'modCategory','3.0','Replace references to class modCategory with MODX\\Revolution\\modCategory to take advantage of PSR-4 autoloading.'),
(5,'modSnippet','3.0','Replace references to class modSnippet with MODX\\Revolution\\modSnippet to take advantage of PSR-4 autoloading.'),
(6,'modPlugin','3.0','Replace references to class modPlugin with MODX\\Revolution\\modPlugin to take advantage of PSR-4 autoloading.'),
(7,'modPluginEvent','3.0','Replace references to class modPluginEvent with MODX\\Revolution\\modPluginEvent to take advantage of PSR-4 autoloading.'),
(8,'modx.modMenu','3.0','Replace references to class modx.modMenu with MODX\\Revolution\\modMenu to take advantage of PSR-4 autoloading.'),
(9,'modMenu','3.0','Replace references to class modMenu with MODX\\Revolution\\modMenu to take advantage of PSR-4 autoloading.'),
(10,'modx.modSystemSetting','3.0','Replace references to class modx.modSystemSetting with MODX\\Revolution\\modSystemSetting to take advantage of PSR-4 autoloading.'),
(11,'modSystemSetting','3.0','Replace references to class modSystemSetting with MODX\\Revolution\\modSystemSetting to take advantage of PSR-4 autoloading.'),
(12,'modChunk','3.0','Replace references to class modChunk with MODX\\Revolution\\modChunk to take advantage of PSR-4 autoloading.'),
(13,'modAccessPolicyTemplate','3.0','Replace references to class modAccessPolicyTemplate with MODX\\Revolution\\modAccessPolicyTemplate to take advantage of PSR-4 autoloading.'),
(14,'modAccessPolicy','3.0','Replace references to class modAccessPolicy with MODX\\Revolution\\modAccessPolicy to take advantage of PSR-4 autoloading.'),
(15,'modAccessPermission','3.0','Replace references to class modAccessPermission with MODX\\Revolution\\modAccessPermission to take advantage of PSR-4 autoloading.'),
(16,'modEvent','3.0','Replace references to class modEvent with MODX\\Revolution\\modEvent to take advantage of PSR-4 autoloading.'),
(17,'transport.modTransportPackage','3.0','Replace references to class transport.modTransportPackage with MODX\\Revolution\\Transport\\modTransportPackage to take advantage of PSR-4 autoloading.'),
(18,'modTemplateVar','3.0','Replace references to class modTemplateVar with MODX\\Revolution\\modTemplateVar to take advantage of PSR-4 autoloading.'),
(19,'modContext','3.0','Replace references to class modContext with MODX\\Revolution\\modContext to take advantage of PSR-4 autoloading.'),
(20,'modContextSetting','3.0','Replace references to class modContextSetting with MODX\\Revolution\\modContextSetting to take advantage of PSR-4 autoloading.'),
(21,'modResource','3.0','Replace references to class modResource with MODX\\Revolution\\modResource to take advantage of PSR-4 autoloading.');
/*!40000 ALTER TABLE `modx_deprecated_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_document_groups`
--

DROP TABLE IF EXISTS `modx_document_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_document_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `document_group` int(10) NOT NULL DEFAULT 0,
  `document` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `document_group` (`document_group`),
  KEY `document` (`document`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_document_groups`
--

LOCK TABLES `modx_document_groups` WRITE;
/*!40000 ALTER TABLE `modx_document_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_document_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_documentgroup_names`
--

DROP TABLE IF EXISTS `modx_documentgroup_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_documentgroup_names` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `private_webgroup` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_documentgroup_names`
--

LOCK TABLES `modx_documentgroup_names` WRITE;
/*!40000 ALTER TABLE `modx_documentgroup_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_documentgroup_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_element_property_sets`
--

DROP TABLE IF EXISTS `modx_element_property_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_element_property_sets` (
  `element` int(10) unsigned NOT NULL DEFAULT 0,
  `element_class` varchar(100) NOT NULL DEFAULT '',
  `property_set` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`element`,`element_class`,`property_set`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_element_property_sets`
--

LOCK TABLES `modx_element_property_sets` WRITE;
/*!40000 ALTER TABLE `modx_element_property_sets` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_element_property_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_extension_packages`
--

DROP TABLE IF EXISTS `modx_extension_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_extension_packages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `name` varchar(100) NOT NULL DEFAULT 'core',
  `path` text DEFAULT NULL,
  `table_prefix` varchar(255) NOT NULL DEFAULT '',
  `service_class` varchar(255) NOT NULL DEFAULT '',
  `service_name` varchar(255) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `namespace` (`namespace`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_extension_packages`
--

LOCK TABLES `modx_extension_packages` WRITE;
/*!40000 ALTER TABLE `modx_extension_packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_extension_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_fc_profiles`
--

DROP TABLE IF EXISTS `modx_fc_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_fc_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `rank` (`rank`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_fc_profiles`
--

LOCK TABLES `modx_fc_profiles` WRITE;
/*!40000 ALTER TABLE `modx_fc_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_fc_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_fc_profiles_usergroups`
--

DROP TABLE IF EXISTS `modx_fc_profiles_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_fc_profiles_usergroups` (
  `usergroup` int(11) NOT NULL DEFAULT 0,
  `profile` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`usergroup`,`profile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_fc_profiles_usergroups`
--

LOCK TABLES `modx_fc_profiles_usergroups` WRITE;
/*!40000 ALTER TABLE `modx_fc_profiles_usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_fc_profiles_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_fc_sets`
--

DROP TABLE IF EXISTS `modx_fc_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_fc_sets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile` int(11) NOT NULL DEFAULT 0,
  `action` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `template` int(11) NOT NULL DEFAULT 0,
  `constraint` varchar(255) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `profile` (`profile`),
  KEY `action` (`action`),
  KEY `active` (`active`),
  KEY `template` (`template`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_fc_sets`
--

LOCK TABLES `modx_fc_sets` WRITE;
/*!40000 ALTER TABLE `modx_fc_sets` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_fc_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_lexicon_entries`
--

DROP TABLE IF EXISTS `modx_lexicon_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_lexicon_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `topic` varchar(191) NOT NULL DEFAULT 'default',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `language` varchar(20) NOT NULL DEFAULT 'en',
  `createdon` datetime DEFAULT NULL,
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `topic` (`topic`),
  KEY `namespace` (`namespace`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_lexicon_entries`
--

LOCK TABLES `modx_lexicon_entries` WRITE;
/*!40000 ALTER TABLE `modx_lexicon_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_lexicon_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_manager_log`
--

DROP TABLE IF EXISTS `modx_manager_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_manager_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(10) unsigned NOT NULL DEFAULT 0,
  `occurred` datetime NOT NULL DEFAULT current_timestamp(),
  `action` varchar(100) NOT NULL DEFAULT '',
  `classKey` varchar(100) NOT NULL DEFAULT '',
  `item` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_occurred` (`user`,`occurred`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_manager_log`
--

LOCK TABLES `modx_manager_log` WRITE;
/*!40000 ALTER TABLE `modx_manager_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_manager_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_media_sources`
--

DROP TABLE IF EXISTS `modx_media_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_media_sources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `class_key` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\Sources\\modFileMediaSource',
  `properties` mediumtext DEFAULT NULL,
  `is_stream` tinyint(1) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `class_key` (`class_key`),
  KEY `is_stream` (`is_stream`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_media_sources`
--

LOCK TABLES `modx_media_sources` WRITE;
/*!40000 ALTER TABLE `modx_media_sources` DISABLE KEYS */;
INSERT INTO `modx_media_sources` VALUES
(1,'Filesystem','','MODX\\Revolution\\Sources\\modFileMediaSource','a:0:{}',1);
/*!40000 ALTER TABLE `modx_media_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_media_sources_contexts`
--

DROP TABLE IF EXISTS `modx_media_sources_contexts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_media_sources_contexts` (
  `source` int(11) NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  PRIMARY KEY (`source`,`context_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_media_sources_contexts`
--

LOCK TABLES `modx_media_sources_contexts` WRITE;
/*!40000 ALTER TABLE `modx_media_sources_contexts` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_media_sources_contexts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_media_sources_elements`
--

DROP TABLE IF EXISTS `modx_media_sources_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_media_sources_elements` (
  `source` int(11) unsigned NOT NULL DEFAULT 0,
  `object_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modTemplateVar',
  `object` int(11) unsigned NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  PRIMARY KEY (`source`,`object`,`object_class`,`context_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_media_sources_elements`
--

LOCK TABLES `modx_media_sources_elements` WRITE;
/*!40000 ALTER TABLE `modx_media_sources_elements` DISABLE KEYS */;
INSERT INTO `modx_media_sources_elements` VALUES
(1,'MODX\\Revolution\\modTemplateVar',2,'en'),
(1,'MODX\\Revolution\\modTemplateVar',2,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',2,'web'),
(1,'MODX\\Revolution\\modTemplateVar',3,'en'),
(1,'MODX\\Revolution\\modTemplateVar',3,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',3,'web'),
(1,'MODX\\Revolution\\modTemplateVar',4,'en'),
(1,'MODX\\Revolution\\modTemplateVar',4,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',4,'web'),
(1,'MODX\\Revolution\\modTemplateVar',5,'en'),
(1,'MODX\\Revolution\\modTemplateVar',5,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',5,'web'),
(1,'MODX\\Revolution\\modTemplateVar',6,'en'),
(1,'MODX\\Revolution\\modTemplateVar',6,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',6,'web'),
(1,'MODX\\Revolution\\modTemplateVar',7,'en'),
(1,'MODX\\Revolution\\modTemplateVar',7,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',7,'web'),
(1,'MODX\\Revolution\\modTemplateVar',8,'en'),
(1,'MODX\\Revolution\\modTemplateVar',8,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',8,'web'),
(1,'MODX\\Revolution\\modTemplateVar',9,'en'),
(1,'MODX\\Revolution\\modTemplateVar',9,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',9,'web'),
(1,'MODX\\Revolution\\modTemplateVar',10,'en'),
(1,'MODX\\Revolution\\modTemplateVar',10,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',10,'web'),
(1,'MODX\\Revolution\\modTemplateVar',11,'en'),
(1,'MODX\\Revolution\\modTemplateVar',11,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',11,'web'),
(1,'MODX\\Revolution\\modTemplateVar',12,'en'),
(1,'MODX\\Revolution\\modTemplateVar',12,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',12,'web'),
(1,'MODX\\Revolution\\modTemplateVar',13,'en'),
(1,'MODX\\Revolution\\modTemplateVar',13,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',13,'web'),
(1,'MODX\\Revolution\\modTemplateVar',14,'en'),
(1,'MODX\\Revolution\\modTemplateVar',14,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',14,'web'),
(1,'MODX\\Revolution\\modTemplateVar',15,'en'),
(1,'MODX\\Revolution\\modTemplateVar',15,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',15,'web'),
(1,'MODX\\Revolution\\modTemplateVar',16,'en'),
(1,'MODX\\Revolution\\modTemplateVar',16,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',16,'web'),
(1,'MODX\\Revolution\\modTemplateVar',17,'en'),
(1,'MODX\\Revolution\\modTemplateVar',17,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',17,'web'),
(1,'MODX\\Revolution\\modTemplateVar',18,'en'),
(1,'MODX\\Revolution\\modTemplateVar',18,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',18,'web'),
(1,'MODX\\Revolution\\modTemplateVar',19,'en'),
(1,'MODX\\Revolution\\modTemplateVar',19,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',19,'web'),
(1,'MODX\\Revolution\\modTemplateVar',20,'en'),
(1,'MODX\\Revolution\\modTemplateVar',20,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',20,'web'),
(1,'MODX\\Revolution\\modTemplateVar',21,'en'),
(1,'MODX\\Revolution\\modTemplateVar',21,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',21,'web'),
(1,'MODX\\Revolution\\modTemplateVar',22,'en'),
(1,'MODX\\Revolution\\modTemplateVar',22,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',22,'web'),
(1,'MODX\\Revolution\\modTemplateVar',23,'en'),
(1,'MODX\\Revolution\\modTemplateVar',23,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',23,'web'),
(1,'MODX\\Revolution\\modTemplateVar',24,'en'),
(1,'MODX\\Revolution\\modTemplateVar',24,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',24,'web'),
(1,'MODX\\Revolution\\modTemplateVar',25,'en'),
(1,'MODX\\Revolution\\modTemplateVar',25,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',25,'web'),
(1,'MODX\\Revolution\\modTemplateVar',26,'en'),
(1,'MODX\\Revolution\\modTemplateVar',26,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',26,'web'),
(1,'MODX\\Revolution\\modTemplateVar',27,'en'),
(1,'MODX\\Revolution\\modTemplateVar',27,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',27,'web'),
(1,'MODX\\Revolution\\modTemplateVar',28,'en'),
(1,'MODX\\Revolution\\modTemplateVar',28,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',28,'web'),
(1,'MODX\\Revolution\\modTemplateVar',29,'en'),
(1,'MODX\\Revolution\\modTemplateVar',29,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',29,'web'),
(1,'MODX\\Revolution\\modTemplateVar',30,'en'),
(1,'MODX\\Revolution\\modTemplateVar',30,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',30,'web'),
(1,'MODX\\Revolution\\modTemplateVar',31,'en'),
(1,'MODX\\Revolution\\modTemplateVar',31,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',31,'web'),
(1,'MODX\\Revolution\\modTemplateVar',32,'en'),
(1,'MODX\\Revolution\\modTemplateVar',32,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',32,'web'),
(1,'MODX\\Revolution\\modTemplateVar',33,'en'),
(1,'MODX\\Revolution\\modTemplateVar',33,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',33,'web'),
(1,'MODX\\Revolution\\modTemplateVar',34,'en'),
(1,'MODX\\Revolution\\modTemplateVar',34,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',34,'web'),
(1,'MODX\\Revolution\\modTemplateVar',35,'en'),
(1,'MODX\\Revolution\\modTemplateVar',35,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',35,'web'),
(1,'MODX\\Revolution\\modTemplateVar',36,'en'),
(1,'MODX\\Revolution\\modTemplateVar',36,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',36,'web'),
(1,'MODX\\Revolution\\modTemplateVar',37,'en'),
(1,'MODX\\Revolution\\modTemplateVar',37,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',37,'web'),
(1,'MODX\\Revolution\\modTemplateVar',38,'en'),
(1,'MODX\\Revolution\\modTemplateVar',38,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',38,'web'),
(1,'MODX\\Revolution\\modTemplateVar',39,'en'),
(1,'MODX\\Revolution\\modTemplateVar',39,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',39,'web'),
(1,'MODX\\Revolution\\modTemplateVar',40,'en'),
(1,'MODX\\Revolution\\modTemplateVar',40,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',40,'web'),
(1,'MODX\\Revolution\\modTemplateVar',41,'en'),
(1,'MODX\\Revolution\\modTemplateVar',41,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',41,'web'),
(1,'MODX\\Revolution\\modTemplateVar',42,'en'),
(1,'MODX\\Revolution\\modTemplateVar',42,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',42,'web'),
(1,'MODX\\Revolution\\modTemplateVar',43,'en'),
(1,'MODX\\Revolution\\modTemplateVar',43,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',43,'web'),
(1,'MODX\\Revolution\\modTemplateVar',44,'en'),
(1,'MODX\\Revolution\\modTemplateVar',44,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',44,'web'),
(1,'MODX\\Revolution\\modTemplateVar',45,'en'),
(1,'MODX\\Revolution\\modTemplateVar',45,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',45,'web'),
(1,'MODX\\Revolution\\modTemplateVar',46,'en'),
(1,'MODX\\Revolution\\modTemplateVar',46,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',46,'web'),
(1,'MODX\\Revolution\\modTemplateVar',47,'en'),
(1,'MODX\\Revolution\\modTemplateVar',47,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',47,'web'),
(1,'MODX\\Revolution\\modTemplateVar',48,'en'),
(1,'MODX\\Revolution\\modTemplateVar',48,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',48,'web'),
(1,'MODX\\Revolution\\modTemplateVar',49,'en'),
(1,'MODX\\Revolution\\modTemplateVar',49,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',49,'web'),
(1,'MODX\\Revolution\\modTemplateVar',50,'en'),
(1,'MODX\\Revolution\\modTemplateVar',50,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',50,'web'),
(1,'MODX\\Revolution\\modTemplateVar',51,'en'),
(1,'MODX\\Revolution\\modTemplateVar',51,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',51,'web'),
(1,'MODX\\Revolution\\modTemplateVar',52,'en'),
(1,'MODX\\Revolution\\modTemplateVar',52,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',52,'web'),
(1,'MODX\\Revolution\\modTemplateVar',53,'en'),
(1,'MODX\\Revolution\\modTemplateVar',53,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',53,'web'),
(1,'MODX\\Revolution\\modTemplateVar',54,'en'),
(1,'MODX\\Revolution\\modTemplateVar',54,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',54,'web'),
(1,'MODX\\Revolution\\modTemplateVar',55,'en'),
(1,'MODX\\Revolution\\modTemplateVar',55,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',55,'web'),
(1,'MODX\\Revolution\\modTemplateVar',56,'en'),
(1,'MODX\\Revolution\\modTemplateVar',56,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',56,'web'),
(1,'MODX\\Revolution\\modTemplateVar',57,'en'),
(1,'MODX\\Revolution\\modTemplateVar',57,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',57,'web'),
(1,'MODX\\Revolution\\modTemplateVar',58,'en'),
(1,'MODX\\Revolution\\modTemplateVar',58,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',58,'web'),
(1,'MODX\\Revolution\\modTemplateVar',59,'en'),
(1,'MODX\\Revolution\\modTemplateVar',59,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',59,'web'),
(1,'MODX\\Revolution\\modTemplateVar',60,'en'),
(1,'MODX\\Revolution\\modTemplateVar',60,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',60,'web'),
(1,'MODX\\Revolution\\modTemplateVar',61,'en'),
(1,'MODX\\Revolution\\modTemplateVar',61,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',61,'web'),
(1,'MODX\\Revolution\\modTemplateVar',62,'en'),
(1,'MODX\\Revolution\\modTemplateVar',62,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',62,'web'),
(1,'MODX\\Revolution\\modTemplateVar',63,'en'),
(1,'MODX\\Revolution\\modTemplateVar',63,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',63,'web'),
(1,'MODX\\Revolution\\modTemplateVar',64,'en'),
(1,'MODX\\Revolution\\modTemplateVar',64,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',64,'web'),
(1,'MODX\\Revolution\\modTemplateVar',65,'en'),
(1,'MODX\\Revolution\\modTemplateVar',65,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',65,'web'),
(1,'MODX\\Revolution\\modTemplateVar',66,'en'),
(1,'MODX\\Revolution\\modTemplateVar',66,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',66,'web'),
(1,'MODX\\Revolution\\modTemplateVar',67,'en'),
(1,'MODX\\Revolution\\modTemplateVar',67,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',67,'web'),
(1,'MODX\\Revolution\\modTemplateVar',68,'en'),
(1,'MODX\\Revolution\\modTemplateVar',68,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',68,'web'),
(1,'MODX\\Revolution\\modTemplateVar',69,'en'),
(1,'MODX\\Revolution\\modTemplateVar',69,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',69,'web'),
(1,'MODX\\Revolution\\modTemplateVar',70,'en'),
(1,'MODX\\Revolution\\modTemplateVar',70,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',70,'web'),
(1,'MODX\\Revolution\\modTemplateVar',71,'en'),
(1,'MODX\\Revolution\\modTemplateVar',71,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',71,'web'),
(1,'MODX\\Revolution\\modTemplateVar',72,'en'),
(1,'MODX\\Revolution\\modTemplateVar',72,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',72,'web'),
(1,'MODX\\Revolution\\modTemplateVar',73,'en'),
(1,'MODX\\Revolution\\modTemplateVar',73,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',73,'web'),
(1,'MODX\\Revolution\\modTemplateVar',74,'en'),
(1,'MODX\\Revolution\\modTemplateVar',74,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',74,'web'),
(1,'MODX\\Revolution\\modTemplateVar',75,'en'),
(1,'MODX\\Revolution\\modTemplateVar',75,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',75,'web'),
(1,'MODX\\Revolution\\modTemplateVar',76,'en'),
(1,'MODX\\Revolution\\modTemplateVar',76,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',76,'web'),
(1,'MODX\\Revolution\\modTemplateVar',77,'en'),
(1,'MODX\\Revolution\\modTemplateVar',77,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',77,'web'),
(1,'MODX\\Revolution\\modTemplateVar',78,'en'),
(1,'MODX\\Revolution\\modTemplateVar',78,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',78,'web'),
(1,'MODX\\Revolution\\modTemplateVar',79,'en'),
(1,'MODX\\Revolution\\modTemplateVar',79,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',79,'web'),
(1,'MODX\\Revolution\\modTemplateVar',80,'en'),
(1,'MODX\\Revolution\\modTemplateVar',80,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',80,'web'),
(1,'MODX\\Revolution\\modTemplateVar',81,'en'),
(1,'MODX\\Revolution\\modTemplateVar',81,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',81,'web'),
(1,'MODX\\Revolution\\modTemplateVar',82,'en'),
(1,'MODX\\Revolution\\modTemplateVar',82,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',82,'web'),
(1,'MODX\\Revolution\\modTemplateVar',83,'en'),
(1,'MODX\\Revolution\\modTemplateVar',83,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',83,'web'),
(1,'MODX\\Revolution\\modTemplateVar',84,'en'),
(1,'MODX\\Revolution\\modTemplateVar',84,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',84,'web'),
(1,'MODX\\Revolution\\modTemplateVar',85,'en'),
(1,'MODX\\Revolution\\modTemplateVar',85,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',85,'web'),
(1,'MODX\\Revolution\\modTemplateVar',86,'en'),
(1,'MODX\\Revolution\\modTemplateVar',86,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',86,'web'),
(1,'MODX\\Revolution\\modTemplateVar',87,'en'),
(1,'MODX\\Revolution\\modTemplateVar',87,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',87,'web'),
(1,'MODX\\Revolution\\modTemplateVar',88,'en'),
(1,'MODX\\Revolution\\modTemplateVar',88,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',88,'web'),
(1,'MODX\\Revolution\\modTemplateVar',89,'en'),
(1,'MODX\\Revolution\\modTemplateVar',89,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',89,'web'),
(1,'MODX\\Revolution\\modTemplateVar',90,'en'),
(1,'MODX\\Revolution\\modTemplateVar',90,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',90,'web'),
(1,'MODX\\Revolution\\modTemplateVar',91,'en'),
(1,'MODX\\Revolution\\modTemplateVar',91,'ru'),
(1,'MODX\\Revolution\\modTemplateVar',91,'web');
/*!40000 ALTER TABLE `modx_media_sources_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_member_groups`
--

DROP TABLE IF EXISTS `modx_member_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_member_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_group` int(10) unsigned NOT NULL DEFAULT 0,
  `member` int(10) unsigned NOT NULL DEFAULT 0,
  `role` int(10) unsigned NOT NULL DEFAULT 1,
  `rank` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `role` (`role`),
  KEY `rank` (`rank`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_member_groups`
--

LOCK TABLES `modx_member_groups` WRITE;
/*!40000 ALTER TABLE `modx_member_groups` DISABLE KEYS */;
INSERT INTO `modx_member_groups` VALUES
(1,1,1,2,0);
/*!40000 ALTER TABLE `modx_member_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_membergroup_names`
--

DROP TABLE IF EXISTS `modx_membergroup_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_membergroup_names` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `parent` int(10) unsigned NOT NULL DEFAULT 0,
  `rank` int(10) unsigned NOT NULL DEFAULT 0,
  `dashboard` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `parent` (`parent`),
  KEY `rank` (`rank`),
  KEY `dashboard` (`dashboard`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_membergroup_names`
--

LOCK TABLES `modx_membergroup_names` WRITE;
/*!40000 ALTER TABLE `modx_membergroup_names` DISABLE KEYS */;
INSERT INTO `modx_membergroup_names` VALUES
(1,'Administrator',NULL,0,0,1);
/*!40000 ALTER TABLE `modx_membergroup_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_menus`
--

DROP TABLE IF EXISTS `modx_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_menus` (
  `text` varchar(191) NOT NULL DEFAULT '',
  `parent` varchar(191) NOT NULL DEFAULT '',
  `action` varchar(191) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `menuindex` int(11) unsigned NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `handler` text NOT NULL,
  `permissions` text NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  PRIMARY KEY (`text`),
  KEY `parent` (`parent`),
  KEY `action` (`action`),
  KEY `namespace` (`namespace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_menus`
--

LOCK TABLES `modx_menus` WRITE;
/*!40000 ALTER TABLE `modx_menus` DISABLE KEYS */;
INSERT INTO `modx_menus` VALUES
('{$username}','user','security/profile','profile_desc','',0,'','','change_profile','core'),
('about','usernav','help','about_desc','<i class=\"icon-question-circle icon\"></i>',3,'','','help','core'),
('access','usernav','','','<i class=\"icon-user-lock icon\"></i>',1,'','','access_permissions','core'),
('acls','access','security/permission','acls_desc','',2,'','','access_permissions','core'),
('admin','usernav','','','<i class=\"icon-gear icon\"></i>',2,'','','settings','core'),
('babel','components','index','babel.desc','',0,'','','','babel'),
('components','topnav','','','<i class=\"icon-cube icon\"></i>',2,'','','components','core'),
('content_types','site','system/contenttype','content_types_desc','',4,'','','content_types','core'),
('contexts','admin','context','contexts_desc','',4,'','','view_context','core'),
('dashboards','admin','system/dashboards','dashboards_desc','',5,'','','dashboards','core'),
('edit_menu','admin','system/action','edit_menu_desc','',3,'','','actions','core'),
('eventlog_viewer','reports','system/event','eventlog_viewer_desc','',1,'','','view_eventlog','core'),
('file_browser','media','media/browser','file_browser_desc','',0,'','','file_manager','core'),
('flush_access','access','','flush_access_desc','',3,'','MODx.msg.confirm({\n                            title: _(\'flush_access\')\n                            ,text: _(\'flush_access_confirm\')\n                            ,url: MODx.config.connector_url\n                            ,params: {\n                                action: \'security/access/flush\'\n                            }\n                            ,listeners: {\n                                \'success\': {fn:function() { location.href = \'./\'; },scope:this},\n                                \'failure\': {fn:function(response) { Ext.MessageBox.alert(\'failure\', response.responseText); },scope:this},\n                            }\n                        });','access_permissions','core'),
('flush_sessions','access','','flush_sessions_desc','',4,'','MODx.msg.confirm({\n                            title: _(\'flush_sessions\')\n                            ,text: _(\'flush_sessions_confirm\')\n                            ,url: MODx.config.connector_url\n                            ,params: {\n                                action: \'security/flush\'\n                            }\n                            ,listeners: {\n                                \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n                            }\n                        });','flush_sessions','core'),
('form_customization','admin','security/forms','form_customization_desc','',1,'','','customize_forms','core'),
('installer','components','workspaces','installer_desc','',0,'','','packages','core'),
('language','admin','','language_desc','',8,'','','language','core'),
('lexicon_management','admin','workspaces/lexicon','lexicon_management_desc','',7,'','','lexicons','core'),
('logout','user','security/logout','logout_desc','',2,'','MODx.logout(); return false;','logout','core'),
('media','topnav','','','<i class=\"icon-file-image-o icon\"></i>',1,'','','file_manager','core'),
('messages','user','security/message','messages_desc','',1,'','','messages','core'),
('MIGX','components','index','','',1,'&configs=migxconfigs||packagemanager','','','migx'),
('namespaces','admin','workspaces/namespace','namespaces_desc','',6,'','','namespaces','core'),
('new_resource','site','resource/create','new_resource_desc','',0,'','','new_document','core'),
('propertysets','admin','element/propertyset','propertysets_desc','',2,'','','property_sets','core'),
('refresh_site','site','','refresh_site_desc','',1,'','MODx.clearCache(); return false;','empty_cache','core'),
('refreshuris','refresh_site','','refreshuris_desc','',0,'','MODx.refreshURIs(); return false;','empty_cache','core'),
('remove_locks','site','','remove_locks_desc','',2,'','MODx.removeLocks();return false;','remove_locks','core'),
('reports','admin','','reports_desc','',9,'','','menu_reports','core'),
('resource_groups','access','security/resourcegroup','resource_groups_desc','',1,'','','access_permissions','core'),
('site','topnav','','','<i class=\"icon-file-text-o icon\"></i>',0,'','','menu_site','core'),
('site_schedule','site','resource/site_schedule','site_schedule_desc','',3,'','','view_document','core'),
('sources','media','source','sources_desc','',1,'','','sources','core'),
('system_settings','admin','system/settings','system_settings_desc','',0,'','','settings','core'),
('topnav','','','topnav_desc','',0,'','','','core'),
('trash','site','resource/trash','trash_desc','',5,'','','menu_trash','core'),
('user','usernav','','','<span id=\"user-avatar\" title=\"{$username}\">{$userImage}</span> <span id=\"user-username\">{$username}</span>',0,'','','menu_user','core'),
('usernav','','','usernav_desc','',1,'','','','core'),
('users','access','security/user','user_management_desc','',0,'','','view_user','core'),
('view_logging','reports','system/logs','view_logging_desc','',0,'','','mgr_log_view','core'),
('view_sysinfo','reports','system/info','view_sysinfo_desc','',2,'','','view_sysinfo','core');
/*!40000 ALTER TABLE `modx_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_migx_config_elements`
--

DROP TABLE IF EXISTS `modx_migx_config_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_migx_config_elements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `config_id` int(10) NOT NULL DEFAULT 0,
  `element_id` int(10) NOT NULL DEFAULT 0,
  `rank` int(10) NOT NULL DEFAULT 0,
  `createdby` int(10) NOT NULL DEFAULT 0,
  `createdon` datetime DEFAULT NULL,
  `editedby` int(10) NOT NULL DEFAULT 0,
  `editedon` datetime DEFAULT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `deletedon` datetime DEFAULT NULL,
  `deletedby` int(10) NOT NULL DEFAULT 0,
  `published` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `publishedon` datetime DEFAULT NULL,
  `publishedby` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_migx_config_elements`
--

LOCK TABLES `modx_migx_config_elements` WRITE;
/*!40000 ALTER TABLE `modx_migx_config_elements` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_migx_config_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_migx_configs`
--

DROP TABLE IF EXISTS `modx_migx_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_migx_configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `formtabs` text NOT NULL,
  `contextmenus` text NOT NULL,
  `actionbuttons` text NOT NULL,
  `columnbuttons` text NOT NULL,
  `filters` text NOT NULL,
  `extended` text NOT NULL,
  `permissions` text NOT NULL,
  `fieldpermissions` text NOT NULL,
  `columns` text NOT NULL,
  `createdby` int(10) NOT NULL DEFAULT 0,
  `createdon` datetime DEFAULT NULL,
  `editedby` int(10) NOT NULL DEFAULT 0,
  `editedon` datetime DEFAULT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `deletedon` datetime DEFAULT NULL,
  `deletedby` int(10) NOT NULL DEFAULT 0,
  `published` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `publishedon` datetime DEFAULT NULL,
  `publishedby` int(10) NOT NULL DEFAULT 0,
  `category` varchar(191) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_migx_configs`
--

LOCK TABLES `modx_migx_configs` WRITE;
/*!40000 ALTER TABLE `modx_migx_configs` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_migx_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_migx_elements`
--

DROP TABLE IF EXISTS `modx_migx_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_migx_elements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `createdby` int(10) NOT NULL DEFAULT 0,
  `createdon` datetime DEFAULT NULL,
  `editedby` int(10) NOT NULL DEFAULT 0,
  `editedon` datetime DEFAULT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `deletedon` datetime DEFAULT NULL,
  `deletedby` int(10) NOT NULL DEFAULT 0,
  `published` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `publishedon` datetime DEFAULT NULL,
  `publishedby` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_migx_elements`
--

LOCK TABLES `modx_migx_elements` WRITE;
/*!40000 ALTER TABLE `modx_migx_elements` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_migx_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_migx_formtab_fields`
--

DROP TABLE IF EXISTS `modx_migx_formtab_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_migx_formtab_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `config_id` int(10) NOT NULL DEFAULT 0,
  `formtab_id` int(10) NOT NULL DEFAULT 0,
  `field` varchar(191) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `pos` int(10) NOT NULL DEFAULT 0,
  `description_is_code` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `inputTV` varchar(255) NOT NULL DEFAULT '',
  `inputTVtype` varchar(255) NOT NULL DEFAULT '',
  `validation` text NOT NULL,
  `configs` varchar(255) NOT NULL DEFAULT '',
  `restrictive_condition` text NOT NULL,
  `display` varchar(255) NOT NULL DEFAULT '',
  `sourceFrom` varchar(255) NOT NULL DEFAULT '',
  `sources` varchar(255) NOT NULL DEFAULT '',
  `inputOptionValues` text NOT NULL,
  `default` text NOT NULL,
  `extended` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_migx_formtab_fields`
--

LOCK TABLES `modx_migx_formtab_fields` WRITE;
/*!40000 ALTER TABLE `modx_migx_formtab_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_migx_formtab_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_migx_formtabs`
--

DROP TABLE IF EXISTS `modx_migx_formtabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_migx_formtabs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `config_id` int(10) NOT NULL DEFAULT 0,
  `caption` varchar(255) NOT NULL DEFAULT '',
  `pos` int(10) NOT NULL DEFAULT 0,
  `print_before_tabs` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `extended` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_migx_formtabs`
--

LOCK TABLES `modx_migx_formtabs` WRITE;
/*!40000 ALTER TABLE `modx_migx_formtabs` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_migx_formtabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_namespaces`
--

DROP TABLE IF EXISTS `modx_namespaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_namespaces` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `path` text DEFAULT NULL,
  `assets_path` text DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_namespaces`
--

LOCK TABLES `modx_namespaces` WRITE;
/*!40000 ALTER TABLE `modx_namespaces` DISABLE KEYS */;
INSERT INTO `modx_namespaces` VALUES
('babel','{core_path}components/babel/','{assets_path}components/babel/'),
('core','{core_path}','{assets_path}'),
('improvision','{core_path}components/improvision/','{assets_path}'),
('migx','{core_path}components/migx/','{assets_path}components/migx/'),
('pdotools','{core_path}components/pdotools/','');
/*!40000 ALTER TABLE `modx_namespaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_property_set`
--

DROP TABLE IF EXISTS `modx_property_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_property_set` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `category` int(10) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL DEFAULT '',
  `properties` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_property_set`
--

LOCK TABLES `modx_property_set` WRITE;
/*!40000 ALTER TABLE `modx_property_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_property_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_register_messages`
--

DROP TABLE IF EXISTS `modx_register_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_register_messages` (
  `topic` int(10) unsigned NOT NULL,
  `id` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `accesses` int(10) unsigned NOT NULL DEFAULT 0,
  `expires` int(20) NOT NULL DEFAULT 0,
  `payload` mediumtext NOT NULL,
  `kill` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`topic`,`id`),
  KEY `created` (`created`),
  KEY `valid` (`valid`),
  KEY `accessed` (`accessed`),
  KEY `accesses` (`accesses`),
  KEY `expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_register_messages`
--

LOCK TABLES `modx_register_messages` WRITE;
/*!40000 ALTER TABLE `modx_register_messages` DISABLE KEYS */;
INSERT INTO `modx_register_messages` VALUES
(1,'072b030ba126b2f4b2374f342be9ed44','2026-11-12 14:43:14','2026-11-12 14:43:14','2026-11-12 14:43:14',0,1794494954,'if (time() > 1794494954) return null;\nreturn 1;\n',0);
/*!40000 ALTER TABLE `modx_register_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_register_queues`
--

DROP TABLE IF EXISTS `modx_register_queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_register_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `options` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_register_queues`
--

LOCK TABLES `modx_register_queues` WRITE;
/*!40000 ALTER TABLE `modx_register_queues` DISABLE KEYS */;
INSERT INTO `modx_register_queues` VALUES
(1,'locks','a:1:{s:9:\"directory\";s:5:\"locks\";}');
/*!40000 ALTER TABLE `modx_register_queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_register_topics`
--

DROP TABLE IF EXISTS `modx_register_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_register_topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue` int(10) unsigned NOT NULL,
  `name` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `options` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `queue` (`queue`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_register_topics`
--

LOCK TABLES `modx_register_topics` WRITE;
/*!40000 ALTER TABLE `modx_register_topics` DISABLE KEYS */;
INSERT INTO `modx_register_topics` VALUES
(1,1,'/resource/','2026-11-12 14:41:22',NULL,NULL);
/*!40000 ALTER TABLE `modx_register_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_session`
--

DROP TABLE IF EXISTS `modx_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_session` (
  `id` varchar(191) NOT NULL DEFAULT '',
  `access` int(20) unsigned NOT NULL,
  `data` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `access` (`access`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_session`
--

LOCK TABLES `modx_session` WRITE;
/*!40000 ALTER TABLE `modx_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_content`
--

DROP TABLE IF EXISTS `modx_site_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_site_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `pagetitle` varchar(191) NOT NULL DEFAULT '',
  `longtitle` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `alias` varchar(191) DEFAULT '',
  `link_attributes` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `pub_date` int(20) NOT NULL DEFAULT 0,
  `unpub_date` int(20) NOT NULL DEFAULT 0,
  `parent` int(10) unsigned NOT NULL DEFAULT 0,
  `isfolder` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `introtext` text DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `richtext` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `template` int(10) NOT NULL DEFAULT 0,
  `menuindex` int(10) NOT NULL DEFAULT 0,
  `searchable` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `cacheable` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `createdby` int(10) NOT NULL DEFAULT 0,
  `createdon` int(20) NOT NULL DEFAULT 0,
  `editedby` int(10) NOT NULL DEFAULT 0,
  `editedon` int(20) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `deletedon` int(20) NOT NULL DEFAULT 0,
  `deletedby` int(10) NOT NULL DEFAULT 0,
  `publishedon` int(20) NOT NULL DEFAULT 0,
  `publishedby` int(10) NOT NULL DEFAULT 0,
  `menutitle` varchar(255) NOT NULL DEFAULT '',
  `content_dispo` tinyint(1) NOT NULL DEFAULT 0,
  `hidemenu` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `class_key` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modDocument',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  `content_type` int(11) unsigned NOT NULL DEFAULT 1,
  `uri` text DEFAULT NULL,
  `uri_override` tinyint(1) NOT NULL DEFAULT 0,
  `hide_children_in_tree` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_tree` tinyint(1) NOT NULL DEFAULT 1,
  `properties` mediumtext DEFAULT NULL,
  `alias_visible` tinyint(1) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`),
  KEY `published` (`published`),
  KEY `pub_date` (`pub_date`),
  KEY `unpub_date` (`unpub_date`),
  KEY `parent` (`parent`),
  KEY `isfolder` (`isfolder`),
  KEY `template` (`template`),
  KEY `menuindex` (`menuindex`),
  KEY `searchable` (`searchable`),
  KEY `cacheable` (`cacheable`),
  KEY `hidemenu` (`hidemenu`),
  KEY `class_key` (`class_key`),
  KEY `context_key` (`context_key`),
  KEY `uri` (`uri`(191)),
  KEY `uri_override` (`uri_override`),
  KEY `hide_children_in_tree` (`hide_children_in_tree`),
  KEY `show_in_tree` (`show_in_tree`),
  KEY `cache_refresh_idx` (`parent`,`menuindex`,`id`),
  FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_content`
--

LOCK TABLES `modx_site_content` WRITE;
/*!40000 ALTER TABLE `modx_site_content` DISABLE KEYS */;
INSERT INTO `modx_site_content` VALUES
(1,'document','Головна','','Повний цикл від проєкту й фасаду до реклами та здачі об\'єкта. Понад 15 років реалізуємо магазини, ресторани та бізнес-центри для провідних брендів.','index','',1,0,0,0,1,'Повний цикл — від проєкту й фасаду до реклами та здачі об\'єкта. Понад 15 років реалізуємо магазини, ресторани та бізнес-центри для провідних брендів.',NULL,0,5,0,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,1,'MODX\\Revolution\\modDocument','web',1,'index/',0,0,1,NULL,1),
(2,'document','Home','','Full cycle from design and facade to signage and handover. For over 15 years we have been delivering stores, restaurants and business centres for leading brands.','index','',1,0,0,0,1,'Full cycle — from design and facade to signage and handover. For over 15 years we have been delivering stores, restaurants and business centres for leading brands.',NULL,0,5,0,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,1,'MODX\\Revolution\\modDocument','en',1,'index/',0,0,1,NULL,1),
(3,'document','Главная','','Полный цикл от проекта и фасада до рекламы и сдачи объекта. Более 15 лет реализуем магазины, рестораны и бизнес-центры для ведущих брендов.','index','',1,0,0,0,1,'Полный цикл — от проекта и фасада до рекламы и сдачи объекта. Более 15 лет реализуем магазины, рестораны и бизнес-центры для ведущих брендов.',NULL,0,5,0,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,1,'MODX\\Revolution\\modDocument','ru',1,'index/',0,0,1,NULL,1),
(4,'document','Про нас','','improvision — київська компанія повного циклу: проєктування, власне виробництво та монтаж фасадів, вхідних груп, реклами й навігації. 480+ реалізованих проєктів.','about','',1,0,0,0,1,'improvision — київська компанія повного циклу. Ми проєктуємо, виготовляємо у власному цеху та монтуємо все, що робить комерційний простір готовим до роботи: фасади, вхідні групи, рекламу, навігацію та оздоблення.','<p>За понад 15 років ми реалізували обʼєкти для міжнародних мереж і локальних брендів — від бутиків у ТРЦ до вентильованих фасадів бізнес-центрів.</p>\n<p>Наш підхід прибирає стики між підрядниками, скорочує строки та закріплює єдину відповідальність за результат.</p>',0,6,1,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','web',1,'about/',0,0,1,NULL,1),
(5,'document','About us','','improvision is a Kyiv-based full-cycle company: design, in-house production and installation of facades, entrance groups, signage and wayfinding. 480+ completed projects.','about','',1,0,0,0,1,'improvision is a Kyiv-based full-cycle company. We design, manufacture in our own workshop and install everything that makes a commercial space ready for business: facades, entrance groups, signage, wayfinding and finishing.','<p>Over more than 15 years we have delivered projects for international chains and local brands — from mall boutiques to ventilated facades of business centres.</p>\n<p>Our approach removes the gaps between contractors, shortens timelines and establishes single responsibility for the result.</p>',0,6,1,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','en',1,'about/',0,0,1,NULL,1),
(6,'document','О нас','','improvision — киевская компания полного цикла: проектирование, собственное производство и монтаж фасадов, входных групп, рекламы и навигации. 480+ реализованных проектов.','about','',1,0,0,0,1,'improvision — киевская компания полного цикла. Мы проектируем, изготавливаем в собственном цехе и монтируем всё, что делает коммерческое пространство готовым к работе: фасады, входные группы, рекламу, навигацию и отделку.','<p>За более чем 15 лет мы реализовали объекты для международных сетей и локальных брендов — от бутиков в ТРЦ до вентилируемых фасадов бизнес-центров.</p>\n<p>Наш подход убирает стыки между подрядчиками, сокращает сроки и закрепляет единую ответственность за результат.</p>',0,6,1,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','ru',1,'about/',0,0,1,NULL,1),
(7,'document','Новини','','','news','',0,0,0,0,1,'Новини компанії — розділ готується.','',0,13,2,1,1,1,1794494669,0,0,0,0,0,0,0,'',0,0,'MODX\\Revolution\\modDocument','web',1,'news/',0,0,1,NULL,1),
(8,'document','News','','','news','',0,0,0,0,1,'Company news — this section is coming soon.','',0,13,2,1,1,1,1794494669,0,0,0,0,0,0,0,'',0,0,'MODX\\Revolution\\modDocument','en',1,'news/',0,0,1,NULL,1),
(9,'document','Новости','','','news','',0,0,0,0,1,'Новости компании — раздел готовится.','',0,13,2,1,1,1,1794494669,0,0,0,0,0,0,0,'',0,0,'MODX\\Revolution\\modDocument','ru',1,'news/',0,0,1,NULL,1),
(10,'reference','Послуги','','','services','',1,0,0,0,1,NULL,'[[~1]]#services',0,13,3,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modWebLink','web',1,'services/',0,0,1,NULL,1),
(11,'reference','Services','','','services','',1,0,0,0,1,NULL,'[[~2]]#services',0,13,3,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modWebLink','en',1,'services/',0,0,1,NULL,1),
(12,'reference','Услуги','','','services','',1,0,0,0,1,NULL,'[[~3]]#services',0,13,3,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modWebLink','ru',1,'services/',0,0,1,NULL,1),
(13,'document','Проєкти','Проєкти','Реалізовані обʼєкти для провідних брендів: бутики й ресторани в ТРЦ, вхідні групи, вивіски та вентильовані фасади бізнес-центрів у Києві.','projects','',1,0,0,0,1,'Реалізовані обʼєкти для провідних брендів — від бутиків і ресторанів до вентильованих фасадів бізнес-центрів. Оберіть напрямок, щоб відфільтрувати роботи.',NULL,0,8,4,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','web',1,'projects/',0,0,1,NULL,1),
(14,'document','Projects','Projects','Completed projects for leading brands: mall boutiques and restaurants, entrance groups, signage and ventilated facades of business centres in Kyiv.','projects','',1,0,0,0,1,'Completed projects for leading brands — from boutiques and restaurants to ventilated facades of business centres. Choose a category to filter the work.',NULL,0,8,4,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','en',1,'projects/',0,0,1,NULL,1),
(15,'document','Проекты','Проекты','Реализованные объекты для ведущих брендов: бутики и рестораны в ТРЦ, входные группы, вывески и вентилируемые фасады бизнес-центров в Киеве.','projects','',1,0,0,0,1,'Реализованные объекты для ведущих брендов — от бутиков и ресторанов до вентилируемых фасадов бизнес-центров. Выберите направление, чтобы отфильтровать работы.',NULL,0,8,4,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','ru',1,'projects/',0,0,1,NULL,1),
(16,'document','Блог','Статті та поради','Досвід, кейси та практичні матеріали про будівництво, вентильовані фасади, вхідні групи та брендування комерційних просторів.','blog','',1,0,0,0,1,'Досвід, кейси та практичні матеріали про будівництво, фасади та брендування комерційних просторів.',NULL,0,10,5,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','web',1,'blog/',0,0,1,NULL,1),
(17,'document','Blog','Articles and tips','Experience, case studies and practical guides on construction, ventilated facades, entrance groups and branding of commercial spaces.','blog','',1,0,0,0,1,'Experience, case studies and practical guides on construction, facades and branding of commercial spaces.',NULL,0,10,5,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','en',1,'blog/',0,0,1,NULL,1),
(18,'document','Блог','Статьи и советы','Опыт, кейсы и практические материалы о строительстве, вентилируемых фасадах, входных группах и брендировании коммерческих пространств.','blog','',1,0,0,0,1,'Опыт, кейсы и практические материалы о строительстве, фасадах и брендировании коммерческих пространств.',NULL,0,10,5,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','ru',1,'blog/',0,0,1,NULL,1),
(19,'document','Вакансії','','','vacancies','',0,0,0,0,1,'Вакансії — розділ готується. Резюме надсилайте на hr@improvision.com.ua.','',0,13,6,1,1,1,1794494669,0,0,0,0,0,0,0,'',0,1,'MODX\\Revolution\\modDocument','web',1,'vacancies/',0,0,1,NULL,1),
(20,'document','Careers','','','vacancies','',0,0,0,0,1,'Careers — this section is coming soon. Send your CV to hr@improvision.com.ua.','',0,13,6,1,1,1,1794494669,0,0,0,0,0,0,0,'',0,1,'MODX\\Revolution\\modDocument','en',1,'vacancies/',0,0,1,NULL,1),
(21,'document','Вакансии','','','vacancies','',0,0,0,0,1,'Вакансии — раздел готовится. Резюме отправляйте на hr@improvision.com.ua.','',0,13,6,1,1,1,1794494669,0,0,0,0,0,0,0,'',0,1,'MODX\\Revolution\\modDocument','ru',1,'vacancies/',0,0,1,NULL,1),
(22,'document','Контакти','Контакти','Звʼяжіться з improvision: +38 044 228 88 69, office@improvision.com.ua, вул. Здолбунівська, 7Г, Київ. Безкоштовний виїзд спеціаліста на обʼєкт.','contacts','',1,0,0,0,1,'Звʼяжіться з нами зручним способом або залиште заявку — відповімо протягом робочого дня.',NULL,0,12,7,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','web',1,'contacts/',0,0,1,NULL,1),
(23,'document','Contacts','Contacts','Contact improvision: +38 044 228 88 69, office@improvision.com.ua, 7G Zdolbunivska St, Kyiv. Free on-site visit by a specialist.','contacts','',1,0,0,0,1,'Get in touch in any way you like or leave a request — we’ll reply within one business day.',NULL,0,12,7,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','en',1,'contacts/',0,0,1,NULL,1),
(24,'document','Контакты','Контакты','Свяжитесь с improvision: +38 044 228 88 69, office@improvision.com.ua, ул. Здолбуновская, 7Г, Киев. Бесплатный выезд специалиста на объект.','contacts','',1,0,0,0,1,'Свяжитесь с нами удобным способом или оставьте заявку — ответим в течение рабочего дня.',NULL,0,12,7,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','ru',1,'contacts/',0,0,1,NULL,1),
(25,'document','Політика конфіденційності','','','privacy','',1,0,0,0,1,'Як ми обробляємо персональні дані, які ви залишаєте на сайті improvision.','<p>Ця політика пояснює, які персональні дані збирає сайт improvision, з якою метою та як ми їх захищаємо. Обробка здійснюється відповідно до Закону України «Про захист персональних даних».</p>\n<h2>Які дані ми отримуємо</h2>\n<p>Через форми заявки ви можете передати нам імʼя, номер телефону, адресу електронної пошти, вибрану послугу та текст повідомлення. Інших персональних даних сайт не збирає.</p>\n<h2>Навіщо ми їх використовуємо</h2>\n<ul>\n<li>щоб звʼязатися з вами та уточнити задачу;</li>\n<li>щоб підготувати орієнтовний розрахунок і комерційну пропозицію;</li>\n<li>щоб вести листування щодо вашого обʼєкта.</li>\n</ul>\n<h2>Зберігання та передача</h2>\n<p>Дані зберігаються не довше, ніж це потрібно для зазначених цілей. Ми не продаємо й не передаємо їх третім особам, окрім випадків, передбачених законодавством.</p>\n<h2>Файли cookie</h2>\n<p>Сайт використовує лише технічні cookie, потрібні для його роботи. Вбудована мапа Google на сторінці контактів може встановлювати власні cookie відповідно до політики Google.</p>\n<h2>Ваші права</h2>\n<p>Ви можете попросити надати, виправити або видалити ваші дані, написавши на <a href=\"mailto:office@improvision.com.ua\">office@improvision.com.ua</a>.</p>',0,13,8,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,1,'MODX\\Revolution\\modDocument','web',1,'privacy/',0,0,1,NULL,1),
(26,'document','Privacy policy','','','privacy','',1,0,0,0,1,'How we process the personal data you leave on the improvision website.','<p>This policy explains what personal data the improvision website collects, why, and how we protect it. Data is processed in accordance with the Law of Ukraine “On Personal Data Protection”.</p>\n<h2>What data we receive</h2>\n<p>Through the request forms you can send us your name, phone number, e-mail address, the service you are interested in and a message. The website does not collect any other personal data.</p>\n<h2>Why we use it</h2>\n<ul>\n<li>to contact you and clarify the task;</li>\n<li>to prepare a preliminary estimate and a commercial proposal;</li>\n<li>to correspond with you about your project.</li>\n</ul>\n<h2>Storage and disclosure</h2>\n<p>We keep the data no longer than needed for these purposes. We do not sell it or pass it on to third parties, except where required by law.</p>\n<h2>Cookies</h2>\n<p>The website only uses technical cookies required for it to work. The embedded Google map on the contacts page may set its own cookies under Google’s policy.</p>\n<h2>Your rights</h2>\n<p>You can ask us to provide, correct or delete your data by writing to <a href=\"mailto:office@improvision.com.ua\">office@improvision.com.ua</a>.</p>',0,13,8,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,1,'MODX\\Revolution\\modDocument','en',1,'privacy/',0,0,1,NULL,1),
(27,'document','Политика конфиденциальности','','','privacy','',1,0,0,0,1,'Как мы обрабатываем персональные данные, которые вы оставляете на сайте improvision.','<p>Эта политика объясняет, какие персональные данные собирает сайт improvision, с какой целью и как мы их защищаем. Обработка осуществляется в соответствии с Законом Украины «О защите персональных данных».</p>\n<h2>Какие данные мы получаем</h2>\n<p>Через формы заявки вы можете передать нам имя, номер телефона, адрес электронной почты, выбранную услугу и текст сообщения. Других персональных данных сайт не собирает.</p>\n<h2>Зачем мы их используем</h2>\n<ul>\n<li>чтобы связаться с вами и уточнить задачу;</li>\n<li>чтобы подготовить ориентировочный расчёт и коммерческое предложение;</li>\n<li>чтобы вести переписку по вашему объекту.</li>\n</ul>\n<h2>Хранение и передача</h2>\n<p>Данные хранятся не дольше, чем это нужно для указанных целей. Мы не продаём и не передаём их третьим лицам, кроме случаев, предусмотренных законодательством.</p>\n<h2>Файлы cookie</h2>\n<p>Сайт использует только технические cookie, необходимые для его работы. Встроенная карта Google на странице контактов может устанавливать собственные cookie в соответствии с политикой Google.</p>\n<h2>Ваши права</h2>\n<p>Вы можете попросить предоставить, исправить или удалить ваши данные, написав на <a href=\"mailto:office@improvision.com.ua\">office@improvision.com.ua</a>.</p>',0,13,8,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,1,'MODX\\Revolution\\modDocument','ru',1,'privacy/',0,0,1,NULL,1),
(28,'document','Умови використання','','','terms','',1,0,0,0,1,'Правила користування сайтом improvision.','<p>Користуючись сайтом improvision, ви погоджуєтеся з цими умовами. Якщо ви з ними не згодні, будь ласка, не використовуйте сайт.</p>\n<h2>Інформація на сайті</h2>\n<p>Матеріали сайту мають довідковий характер і не є публічною офертою. Вартість і строки робіт визначаються індивідуально після обстеження обʼєкта та фіксуються в договорі.</p>\n<h2>Права на матеріали</h2>\n<p>Тексти, фотографії реалізованих обʼєктів, графіка та дизайн сайту належать improvision або використовуються з дозволу правовласників. Копіювання без письмової згоди заборонене.</p>\n<h2>Посилання на інші сайти</h2>\n<p>Сайт може містити посилання на сторонні ресурси. Ми не відповідаємо за їхній зміст і політику конфіденційності.</p>\n<h2>Зміни умов</h2>\n<p>Ми можемо оновлювати ці умови. Актуальна версія завжди доступна на цій сторінці.</p>\n<p>Питання щодо умов надсилайте на <a href=\"mailto:office@improvision.com.ua\">office@improvision.com.ua</a>.</p>',0,13,9,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,1,'MODX\\Revolution\\modDocument','web',1,'terms/',0,0,1,NULL,1),
(29,'document','Terms of use','','','terms','',1,0,0,0,1,'Rules for using the improvision website.','<p>By using the improvision website you agree to these terms. If you do not agree with them, please do not use the website.</p>\n<h2>Information on the website</h2>\n<p>The materials on the website are for information only and do not constitute a public offer. The cost and timing of work are determined individually after a site survey and are fixed in the contract.</p>\n<h2>Rights to the materials</h2>\n<p>The texts, photos of completed projects, graphics and website design belong to improvision or are used with the permission of their owners. Copying without written consent is prohibited.</p>\n<h2>Links to other websites</h2>\n<p>The website may contain links to third-party resources. We are not responsible for their content or privacy policies.</p>\n<h2>Changes to the terms</h2>\n<p>We may update these terms. The current version is always available on this page.</p>\n<p>Please send questions about the terms to <a href=\"mailto:office@improvision.com.ua\">office@improvision.com.ua</a>.</p>',0,13,9,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,1,'MODX\\Revolution\\modDocument','en',1,'terms/',0,0,1,NULL,1),
(30,'document','Условия использования','','','terms','',1,0,0,0,1,'Правила пользования сайтом improvision.','<p>Пользуясь сайтом improvision, вы соглашаетесь с этими условиями. Если вы с ними не согласны, пожалуйста, не используйте сайт.</p>\n<h2>Информация на сайте</h2>\n<p>Материалы сайта носят справочный характер и не являются публичной офертой. Стоимость и сроки работ определяются индивидуально после обследования объекта и фиксируются в договоре.</p>\n<h2>Права на материалы</h2>\n<p>Тексты, фотографии реализованных объектов, графика и дизайн сайта принадлежат improvision или используются с разрешения правообладателей. Копирование без письменного согласия запрещено.</p>\n<h2>Ссылки на другие сайты</h2>\n<p>Сайт может содержать ссылки на сторонние ресурсы. Мы не отвечаем за их содержание и политику конфиденциальности.</p>\n<h2>Изменение условий</h2>\n<p>Мы можем обновлять эти условия. Актуальная версия всегда доступна на этой странице.</p>\n<p>Вопросы по условиям отправляйте на <a href=\"mailto:office@improvision.com.ua\">office@improvision.com.ua</a>.</p>',0,13,9,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,1,'MODX\\Revolution\\modDocument','ru',1,'terms/',0,0,1,NULL,1),
(31,'document','Сторінку не знайдено','','','404','',1,0,0,0,1,'Можливо, сторінку перенесено або в адресі є помилка.','<p>Почніть із <a href=\"/\">головної сторінки</a> або перегляньте наші <a href=\"/projects/\">проєкти</a>. Якщо шукаєте щось конкретне — зателефонуйте або залиште заявку, ми підкажемо.</p>',0,13,10,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,1,'MODX\\Revolution\\modDocument','web',1,'404/',0,0,1,NULL,1),
(32,'document','Page not found','','','404','',1,0,0,0,1,'The page may have been moved, or there is a typo in the address.','<p>Start from the <a href=\"/en/\">home page</a> or have a look at our <a href=\"/en/projects/\">projects</a>. Looking for something specific? Call us or send a request and we will help.</p>',0,13,10,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,1,'MODX\\Revolution\\modDocument','en',1,'404/',0,0,1,NULL,1),
(33,'document','Страница не найдена','','','404','',1,0,0,0,1,'Возможно, страницу перенесли или в адресе есть ошибка.','<p>Начните с <a href=\"/ru/\">главной страницы</a> или посмотрите наши <a href=\"/ru/projects/\">проекты</a>. Если ищете что-то конкретное — позвоните или оставьте заявку, мы подскажем.</p>',0,13,10,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,1,'MODX\\Revolution\\modDocument','ru',1,'404/',0,0,1,NULL,1),
(34,'document','Загальні блоки','','','globals','',0,0,0,0,1,NULL,NULL,0,14,11,0,1,1,1794494669,0,0,0,0,0,0,0,'',0,1,'MODX\\Revolution\\modDocument','web',1,'globals/',0,0,1,NULL,1),
(35,'document','Shared blocks','','','globals','',0,0,0,0,1,NULL,NULL,0,14,11,0,1,1,1794494669,0,0,0,0,0,0,0,'',0,1,'MODX\\Revolution\\modDocument','en',1,'globals/',0,0,1,NULL,1),
(36,'document','Общие блоки','','','globals','',0,0,0,0,1,NULL,NULL,0,14,11,0,1,1,1794494669,0,0,0,0,0,0,0,'',0,1,'MODX\\Revolution\\modDocument','ru',1,'globals/',0,0,1,NULL,1),
(37,'document','Заявка','','','lead','',1,0,0,0,0,NULL,'',0,15,12,0,0,1,1794494669,0,0,0,0,0,1794494669,0,'',0,1,'MODX\\Revolution\\modDocument','web',7,'lead.json',0,0,1,NULL,1),
(38,'document','Комерційне будівництво «під ключ»','','Будівництво та облаштування магазинів, ресторанів, офісів і відділень під ключ: проєкт, будівельні роботи, оздоблення, реклама та здача обʼєкта. Один підрядник і один договір.','construction','',1,0,0,10,1,'Повний цикл будівельно-монтажних робіт для комерційних обʼєктів — від нульового циклу та інженерних мереж до оздоблення, реклами й відкриття.','<h2>Від порожнього приміщення до відкриття — з одним підрядником</h2>\n<p>Комерційне будівництво — це не лише стіни й перекриття. Магазин, ресторан чи відділення банку мають відповідати бренд-буку мережі, вимогам орендодавця та нормам безпеки, а відкриття часто привʼязане до жорсткої дати.</p>\n<p>improvision веде обʼєкт від обмірів і проєкту до здачі в експлуатацію. Будівельні бригади, власне виробництво та монтажники працюють за одним графіком, тому роботи йдуть паралельно, а не по черзі.</p>',0,7,0,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'Комерційне будівництво «під ключ»',0,0,'MODX\\Revolution\\modDocument','web',1,'services/construction/',0,0,1,NULL,1),
(39,'document','Turnkey commercial construction','','Turnkey construction and fit-out of stores, restaurants, offices and branches: design, construction, finishing, signage and handover. One contractor, one contract.','construction','',1,0,0,11,1,'A full cycle of construction and installation works for commercial properties — from groundwork and utilities to finishing, signage and opening day.','<h2>From an empty shell to opening day — with one contractor</h2>\n<p>Commercial construction is more than walls and slabs. A store, restaurant or bank branch has to meet the chain’s brand book, the landlord’s requirements and safety codes — and opening day is usually fixed in advance.</p>\n<p>improvision runs the project from survey and design to commissioning. Construction crews, our own production and installers work to a single schedule, so works run in parallel rather than one after another.</p>',0,7,0,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'Turnkey commercial construction',0,0,'MODX\\Revolution\\modDocument','en',1,'services/construction/',0,0,1,NULL,1),
(40,'document','Коммерческое строительство «под ключ»','','Строительство и обустройство магазинов, ресторанов, офисов и отделений под ключ: проект, строительные работы, отделка, реклама и сдача объекта. Один подрядчик и один договор.','construction','',1,0,0,12,1,'Полный цикл строительно-монтажных работ для коммерческих объектов — от нулевого цикла и инженерных сетей до отделки, рекламы и открытия.','<h2>От пустого помещения до открытия — с одним подрядчиком</h2>\n<p>Коммерческое строительство — это не только стены и перекрытия. Магазин, ресторан или отделение банка должны соответствовать бренд-буку сети, требованиям арендодателя и нормам безопасности, а открытие часто привязано к жёсткой дате.</p>\n<p>improvision ведёт объект от обмеров и проекта до сдачи в эксплуатацию. Строительные бригады, собственное производство и монтажники работают по одному графику, поэтому работы идут параллельно, а не по очереди.</p>',0,7,0,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'Коммерческое строительство «под ключ»',0,0,'MODX\\Revolution\\modDocument','ru',1,'services/construction/',0,0,1,NULL,1),
(41,'document','Вентильовані фасади','','Проєктування, виготовлення та монтаж навісних вентильованих фасадів для комерційних і громадських будівель. Композит, керамограніт, HPL, фіброцемент. Власне виробництво.','facades','',1,0,0,10,1,'Проєктування, виготовлення та монтаж навісних вентильованих фасадів для комерційних і громадських будівель — від бізнес-центрів до торговельних комплексів.','<h2>Сучасне фасадне рішення — естетика, енергоефективність і довговічність</h2>\n<p>Вентильований фасад — це навісна конструкція з повітряним зазором між утеплювачем і облицюванням. Такий підхід відводить вологу, покращує теплоізоляцію будівлі та дозволяє реалізувати будь-яке архітектурне рішення.</p>\n<p>improvision виконує повний цикл: від обстеження обʼєкта та проєктування підсистеми до виготовлення елементів і монтажу «під ключ». Працюємо з сертифікованими системами та несемо відповідальність за результат.</p>',0,7,1,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'Вентильовані фасади',0,0,'MODX\\Revolution\\modDocument','web',1,'services/facades/',0,0,1,NULL,1),
(42,'document','Ventilated facades','','Design, manufacturing and installation of ventilated rainscreen facades for commercial and public buildings. Composite, porcelain stoneware, HPL, fibre cement. In-house production.','facades','',1,0,0,11,1,'Design, manufacturing and installation of ventilated rainscreen facades for commercial and public buildings — from business centres to shopping complexes.','<h2>A modern facade solution — aesthetics, energy efficiency and durability</h2>\n<p>A ventilated facade is a rainscreen system with an air gap between the insulation and the cladding. This removes moisture, improves the building’s thermal insulation and allows any architectural idea to be realised.</p>\n<p>improvision delivers the full cycle: from site survey and subframe design to element production and turnkey installation. We work with certified systems and take responsibility for the result.</p>',0,7,1,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'Ventilated facades',0,0,'MODX\\Revolution\\modDocument','en',1,'services/facades/',0,0,1,NULL,1),
(43,'document','Вентилируемые фасады','','Проектирование, изготовление и монтаж навесных вентилируемых фасадов для коммерческих и общественных зданий. Композит, керамогранит, HPL, фиброцемент. Собственное производство.','facades','',1,0,0,12,1,'Проектирование, изготовление и монтаж навесных вентилируемых фасадов для коммерческих и общественных зданий — от бизнес-центров до торговых комплексов.','<h2>Современное фасадное решение — эстетика, энергоэффективность и долговечность</h2>\n<p>Вентилируемый фасад — это навесная конструкция с воздушным зазором между утеплителем и облицовкой. Такой подход отводит влагу, улучшает теплоизоляцию здания и позволяет реализовать любое архитектурное решение.</p>\n<p>improvision выполняет полный цикл: от обследования объекта и проектирования подсистемы до изготовления элементов и монтажа «под ключ». Работаем с сертифицированными системами и несём ответственность за результат.</p>',0,7,1,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'Вентилируемые фасады',0,0,'MODX\\Revolution\\modDocument','ru',1,'services/facades/',0,0,1,NULL,1),
(44,'document','Вхідні групи','','Проєктування, виготовлення та монтаж вхідних груп, порталів, вітрин і козирків для магазинів, ресторанів і бізнес-центрів. Власне виробництво в Києві.','entrance','',1,0,0,10,1,'Проєктування й виготовлення вхідних груп, порталів і вітрин для магазинів, ресторанів та офісів — перше, що бачить відвідувач.','<h2>Вхідна група, яка працює на бренд</h2>\n<p>Вхідна група формує перше враження про заклад ще до того, як клієнт відчинив двері. Портал, вітрина, вивіска та освітлення мають працювати як одне ціле й витримувати навантаження щоденного трафіку та погоди.</p>\n<p>Ми проєктуємо вхідні групи під бренд-бук мережі, виготовляємо металоконструкції та облицювання у власному цеху й монтуємо їх власними бригадами — з погодженням у ТРЦ, міста чи власника будівлі.</p>',0,7,2,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'Вхідні групи',0,0,'MODX\\Revolution\\modDocument','web',1,'services/entrance/',0,0,1,NULL,1),
(45,'document','Entrance groups','','Design, manufacturing and installation of entrance groups, portals, storefronts and canopies for stores, restaurants and business centres. Own production in Kyiv.','entrance','',1,0,0,11,1,'Design and manufacturing of entrance groups, portals and storefronts for stores, restaurants and offices — the first thing a visitor sees.','<h2>An entrance that works for your brand</h2>\n<p>An entrance creates the first impression of a venue before the customer even opens the door. The portal, storefront, sign and lighting must work as one and withstand daily foot traffic and weather.</p>\n<p>We design entrances to the chain’s brand book, manufacture the metal structures and cladding in our own workshop and install them with our own crews — including approvals with the mall, the city or the building owner.</p>',0,7,2,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'Entrance groups',0,0,'MODX\\Revolution\\modDocument','en',1,'services/entrance/',0,0,1,NULL,1),
(46,'document','Входные группы','','Проектирование, изготовление и монтаж входных групп, порталов, витрин и козырьков для магазинов, ресторанов и бизнес-центров. Собственное производство в Киеве.','entrance','',1,0,0,12,1,'Проектирование и изготовление входных групп, порталов и витрин для магазинов, ресторанов и офисов — первое, что видит посетитель.','<h2>Входная группа, которая работает на бренд</h2>\n<p>Входная группа формирует первое впечатление о заведении ещё до того, как клиент открыл дверь. Портал, витрина, вывеска и освещение должны работать как одно целое и выдерживать нагрузку ежедневного трафика и погоды.</p>\n<p>Мы проектируем входные группы под бренд-бук сети, изготавливаем металлоконструкции и облицовку в собственном цехе и монтируем их собственными бригадами — с согласованием в ТРЦ, городе или у владельца здания.</p>',0,7,2,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'Входные группы',0,0,'MODX\\Revolution\\modDocument','ru',1,'services/entrance/',0,0,1,NULL,1),
(47,'document','Зовнішня реклама','','Виготовлення та монтаж вивісок, обʼємних літер, лайтбоксів, світлодіодних екранів і дахових установок. Власне виробництво, погодження та сервіс.','outdoor','',1,0,0,10,1,'Вивіски, обʼємні літери, лайтбокси та дахові установки з власного виробництва — помітні вдень і вночі.','<h2>Вивіска, яку помічають і вдень, і вночі</h2>\n<p>Зовнішня реклама — найдовговічніший рекламний носій бізнесу. Вона працює цілодобово, тому має бути не лише гарною, а й надійною: витримувати мороз, спеку, вітер і роками зберігати колір та яскравість.</p>\n<p>Ми виготовляємо вивіски у власному цеху: фрезерування, гнуття, зварювання, фарбування та збирання світлотехніки відбуваються під одним дахом. Це дає контроль якості та точне відтворення фірмових кольорів за бренд-буком.</p>',0,7,3,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'Зовнішня реклама',0,0,'MODX\\Revolution\\modDocument','web',1,'services/outdoor/',0,0,1,NULL,1),
(48,'document','Outdoor advertising','','Manufacturing and installation of signs, channel letters, lightboxes, LED screens and rooftop installations. Own production, permits and service.','outdoor','',1,0,0,11,1,'Signs, channel letters, lightboxes and rooftop installations from our own production — visible day and night.','<h2>A sign that stands out by day and by night</h2>\n<p>Outdoor advertising is a business’s longest-lasting ad medium. It works around the clock, so it must be not only attractive but reliable: withstand frost, heat and wind and keep its colour and brightness for years.</p>\n<p>We make signs in our own workshop: milling, bending, welding, painting and lighting assembly all happen under one roof. This gives us quality control and accurate reproduction of brand colours to the brand book.</p>',0,7,3,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'Outdoor advertising',0,0,'MODX\\Revolution\\modDocument','en',1,'services/outdoor/',0,0,1,NULL,1),
(49,'document','Наружная реклама','','Изготовление и монтаж вывесок, объёмных букв, лайтбоксов, светодиодных экранов и крышных установок. Собственное производство, согласования и сервис.','outdoor','',1,0,0,12,1,'Вывески, объёмные буквы, лайтбоксы и крышные установки собственного производства — заметные днём и ночью.','<h2>Вывеска, которую замечают и днём, и ночью</h2>\n<p>Наружная реклама — самый долговечный рекламный носитель бизнеса. Она работает круглосуточно, поэтому должна быть не только красивой, но и надёжной: выдерживать мороз, жару, ветер и годами сохранять цвет и яркость.</p>\n<p>Мы изготавливаем вывески в собственном цехе: фрезеровка, гибка, сварка, покраска и сборка светотехники происходят под одной крышей. Это даёт контроль качества и точное воспроизведение фирменных цветов по бренд-буку.</p>',0,7,3,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'Наружная реклама',0,0,'MODX\\Revolution\\modDocument','ru',1,'services/outdoor/',0,0,1,NULL,1),
(50,'document','Інтерʼєрна реклама та навігація','','Брендування торгових залів і офісів, системи навігації, меню-борди та POS-конструкції. Дизайн, виробництво та монтаж під ключ.','interior','',1,0,0,10,1,'Оформлення торгових залів, брендування простору, системи навігації та POS-конструкції, які ведуть клієнта до покупки.','<h2>Простір, у якому легко орієнтуватися й хочеться купувати</h2>\n<p>Усередині закладу реклама працює інакше, ніж на фасаді: її бачать зблизька, тому важливі матеріали, якість друку та точність монтажу. Навігація має бути інтуїтивною, а брендування — підсилювати впізнаваність без перевантаження простору.</p>\n<p>Ми розробляємо та виготовляємо інтерʼєрні рішення для магазинів, ресторанів, банків і офісів: від табличок і піктограм до великих світлових панно та фірмових стін.</p>',0,7,4,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'Інтерʼєрна реклама та навігація',0,0,'MODX\\Revolution\\modDocument','web',1,'services/interior/',0,0,1,NULL,1),
(51,'document','Interior signage and wayfinding','','Branding of retail spaces and offices, wayfinding systems, menu boards and POS displays. Design, production and turnkey installation.','interior','',1,0,0,11,1,'Retail interiors, space branding, wayfinding systems and POS displays that guide customers to a purchase.','<h2>A space that’s easy to navigate and makes people want to buy</h2>\n<p>Inside a venue, advertising works differently than on the facade: it’s seen up close, so materials, print quality and precise installation matter. Wayfinding should be intuitive, and branding should strengthen recognition without cluttering the space.</p>\n<p>We design and produce interior solutions for stores, restaurants, banks and offices: from signs and pictograms to large light panels and branded walls.</p>',0,7,4,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'Interior signage and wayfinding',0,0,'MODX\\Revolution\\modDocument','en',1,'services/interior/',0,0,1,NULL,1),
(52,'document','Интерьерная реклама и навигация','','Брендирование торговых залов и офисов, навигационные системы, меню-борды и POS-конструкции. Дизайн, производство и монтаж под ключ.','interior','',1,0,0,12,1,'Оформление торговых залов, брендирование пространства, навигационные системы и POS-конструкции, которые ведут клиента к покупке.','<h2>Пространство, в котором легко ориентироваться и хочется покупать</h2>\n<p>Внутри заведения реклама работает иначе, чем на фасаде: её видят вблизи, поэтому важны материалы, качество печати и точность монтажа. Навигация должна быть интуитивной, а брендирование — усиливать узнаваемость без перегрузки пространства.</p>\n<p>Мы разрабатываем и изготавливаем интерьерные решения для магазинов, ресторанов, банков и офисов: от табличек и пиктограмм до больших световых панно и фирменных стен.</p>',0,7,4,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'Интерьерная реклама и навигация',0,0,'MODX\\Revolution\\modDocument','ru',1,'services/interior/',0,0,1,NULL,1),
(53,'document','Дизайн і проєктування','','Дизайн-проєкти, 3D-візуалізація, робоча документація та кошториси для магазинів, ресторанів, фасадів і реклами. Проєкти, готові до виробництва та монтажу.','design','',1,0,0,10,1,'Дизайн-проєкти, візуалізації та робоча документація, за якими обʼєкт можна одразу виготовляти й монтувати.','<h2>Проєкт, який можна збудувати без сюрпризів</h2>\n<p>Красива візуалізація — лише половина справи. Щоб обʼєкт відкрився вчасно і в бюджеті, проєкт має враховувати реальні розміри, інженерні мережі, вимоги ТРЦ і технологію виробництва конструкцій.</p>\n<p>Наші дизайнери та інженери працюють поруч із виробництвом і монтажниками, тому кожне рішення одразу перевіряється на реалізованість. Ви отримуєте проєкт, за яким можна будувати, а не лише красиву картинку.</p>',0,7,5,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'Дизайн і проєктування',0,0,'MODX\\Revolution\\modDocument','web',1,'services/design/',0,0,1,NULL,1),
(54,'document','Design and engineering','','Design concepts, 3D visualisation, working documentation and estimates for stores, restaurants, facades and signage. Designs ready for production and installation.','design','',1,0,0,11,1,'Design concepts, visualisations and working documentation that can go straight into production and installation.','<h2>A design you can build without surprises</h2>\n<p>A beautiful visualisation is only half the job. For a property to open on time and on budget, the design must account for real dimensions, utilities, mall requirements and the production technology of the structures.</p>\n<p>Our designers and engineers work alongside production and installers, so every solution is checked for buildability straight away. You get a design you can build from, not just a pretty picture.</p>',0,7,5,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'Design and engineering',0,0,'MODX\\Revolution\\modDocument','en',1,'services/design/',0,0,1,NULL,1),
(55,'document','Дизайн и проектирование','','Дизайн-проекты, 3D-визуализация, рабочая документация и сметы для магазинов, ресторанов, фасадов и рекламы. Проекты, готовые к производству и монтажу.','design','',1,0,0,12,1,'Дизайн-проекты, визуализации и рабочая документация, по которым объект можно сразу изготавливать и монтировать.','<h2>Проект, который можно построить без сюрпризов</h2>\n<p>Красивая визуализация — лишь половина дела. Чтобы объект открылся вовремя и в бюджете, проект должен учитывать реальные размеры, инженерные сети, требования ТРЦ и технологию производства конструкций.</p>\n<p>Наши дизайнеры и инженеры работают рядом с производством и монтажниками, поэтому каждое решение сразу проверяется на реализуемость. Вы получаете проект, по которому можно строить, а не только красивую картинку.</p>',0,7,5,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'Дизайн и проектирование',0,0,'MODX\\Revolution\\modDocument','ru',1,'services/design/',0,0,1,NULL,1),
(56,'document','Оздоблювальні та реконструкційні роботи','','Оздоблення та реконструкція комерційних приміщень і фасадів: перепланування, інженерні мережі, стелі, підлоги та фінішні роботи під ключ.','renovation','',1,0,0,10,1,'Оздоблення, перепланування та реконструкція комерційних приміщень і фасадів — з мінімальним простоєм бізнесу.','<h2>Оновлення простору без зайвих зупинок</h2>\n<p>Ребрендинг мережі, зміна орендаря чи застарілі інженерні мережі — приводів для реконструкції багато. Головне завдання — оновити простір швидко, якісно та з мінімальним впливом на роботу бізнесу.</p>\n<p>improvision виконує оздоблювальні та реконструкційні роботи на діючих обʼєктах: розбиваємо роботи на етапи, працюємо в нічні зміни та вихідні й залишаємо зону робіт чистою щодня.</p>',0,7,6,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'Оздоблювальні та реконструкційні роботи',0,0,'MODX\\Revolution\\modDocument','web',1,'services/renovation/',0,0,1,NULL,1),
(57,'document','Finishing and renovation works','','Finishing and renovation of commercial premises and facades: re-planning, utilities, ceilings, floors and turnkey final finishing.','renovation','',1,0,0,11,1,'Finishing, re-planning and renovation of commercial premises and facades — with minimal business downtime.','<h2>Upgrading your space without unnecessary downtime</h2>\n<p>Chain rebranding, a new tenant or outdated utilities — there are many reasons to renovate. The main task is to upgrade the space quickly, to a high standard and with minimal impact on the business.</p>\n<p>improvision carries out finishing and renovation works at operating properties: we split the works into stages, work night shifts and weekends, and leave the work area clean every day.</p>',0,7,6,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'Finishing and renovation works',0,0,'MODX\\Revolution\\modDocument','en',1,'services/renovation/',0,0,1,NULL,1),
(58,'document','Отделочные и реконструкционные работы','','Отделка и реконструкция коммерческих помещений и фасадов: перепланировка, инженерные сети, потолки, полы и финишные работы под ключ.','renovation','',1,0,0,12,1,'Отделка, перепланировка и реконструкция коммерческих помещений и фасадов — с минимальным простоем бизнеса.','<h2>Обновление пространства без лишних остановок</h2>\n<p>Ребрендинг сети, смена арендатора или устаревшие инженерные сети — поводов для реконструкции много. Главная задача — обновить пространство быстро, качественно и с минимальным влиянием на работу бизнеса.</p>\n<p>improvision выполняет отделочные и реконструкционные работы на действующих объектах: разбиваем работы на этапы, работаем в ночные смены и выходные и оставляем зону работ чистой каждый день.</p>',0,7,6,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'Отделочные и реконструкционные работы',0,0,'MODX\\Revolution\\modDocument','ru',1,'services/renovation/',0,0,1,NULL,1),
(59,'document','Ресторан у ТРЦ ArtMall','','Комплексне облаштування ресторану KFC у ТРЦ ArtMall: вхідна група, фасадні елементи, світлові вивіски, внутрішня навігація та POS-конструкції під ключ.','kfc-artmall','',1,0,0,13,1,'Комплексне облаштування ресторану швидкого харчування в новому торговельно-розважальному центрі — від вхідної групи та фасадних елементів до внутрішньої навігації й вивісок, у повній відповідності до міжнародного бренд-буку мережі.','<h2>Обʼєкт «під ключ» — від фасаду<br class=\"br-desk\"> до вивіски</h2>\n<p>Роботи виконувалися в стислі строки паралельно з відкриттям ТРЦ. Команда improvision взяла на себе весь цикл: проєктування конструкцій, виготовлення у власному цеху, доставку та монтаж на обʼєкті.</p>\n<p>Особливу увагу приділили світлотехніці вивісок і точності відтворення фірмових кольорів — усі елементи пройшли погодження з бренд-центром замовника перед виготовленням.</p>',0,9,0,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','web',1,'projects/kfc-artmall/',0,0,1,NULL,1),
(60,'document','Restaurant at ArtMall','','Complete turnkey fit-out of a KFC restaurant at ArtMall: entrance group, facade elements, illuminated signs, interior wayfinding and POS displays.','kfc-artmall','',1,0,0,14,1,'Complete fit-out of a fast-food restaurant in a new shopping and entertainment centre — from the entrance group and facade elements to interior wayfinding and signs, in full compliance with the chain’s international brand book.','<h2>A turnkey project — from facade<br class=\"br-desk\"> to sign</h2>\n<p>The works were carried out on a tight schedule in parallel with the mall’s opening. The improvision team took on the full cycle: structural design, manufacturing in our own workshop, delivery and installation on site.</p>\n<p>Particular attention was paid to sign lighting and accurate reproduction of brand colours — all elements were approved by the client’s brand centre before production.</p>',0,9,0,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','en',1,'projects/kfc-artmall/',0,0,1,NULL,1),
(61,'document','Ресторан в ТРЦ ArtMall','','Комплексное обустройство ресторана KFC в ТРЦ ArtMall: входная группа, фасадные элементы, световые вывески, внутренняя навигация и POS-конструкции под ключ.','kfc-artmall','',1,0,0,15,1,'Комплексное обустройство ресторана быстрого питания в новом торгово-развлекательном центре — от входной группы и фасадных элементов до внутренней навигации и вывесок, в полном соответствии с международным бренд-буком сети.','<h2>Объект «под ключ» — от фасада<br class=\"br-desk\"> до вывески</h2>\n<p>Работы выполнялись в сжатые сроки параллельно с открытием ТРЦ. Команда improvision взяла на себя весь цикл: проектирование конструкций, изготовление в собственном цехе, доставку и монтаж на объекте.</p>\n<p>Особое внимание уделили светотехнике вывесок и точности воспроизведения фирменных цветов — все элементы прошли согласование с бренд-центром заказчика перед изготовлением.</p>',0,9,0,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','ru',1,'projects/kfc-artmall/',0,0,1,NULL,1),
(62,'document','Флагманський магазин, Lavina Mall','','LEGO: Флагманський магазин, Lavina Mall, Київ, 2023 — проєкт improvision.','lego-lavina-mall','',1,0,0,13,1,NULL,NULL,0,9,1,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','web',1,'projects/lego-lavina-mall/',0,0,1,NULL,1),
(63,'document','Flagship store, Lavina Mall','','LEGO: Flagship store, Lavina Mall, Kyiv, 2023 — an improvision project.','lego-lavina-mall','',1,0,0,14,1,NULL,NULL,0,9,1,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','en',1,'projects/lego-lavina-mall/',0,0,1,NULL,1),
(64,'document','Флагманский магазин, Lavina Mall','','LEGO: Флагманский магазин, Lavina Mall, Киев, 2023 — проект improvision.','lego-lavina-mall','',1,0,0,15,1,NULL,NULL,0,9,1,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','ru',1,'projects/lego-lavina-mall/',0,0,1,NULL,1),
(65,'document','Вентильований фасад БЦ','','Carnegie Center: Вентильований фасад БЦ, Київ, 2023 — проєкт improvision.','carnegie-center','',1,0,0,13,1,NULL,NULL,0,9,2,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','web',1,'projects/carnegie-center/',0,0,1,NULL,1),
(66,'document','Business centre ventilated facade','','Carnegie Center: Business centre ventilated facade, Kyiv, 2023 — an improvision project.','carnegie-center','',1,0,0,14,1,NULL,NULL,0,9,2,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','en',1,'projects/carnegie-center/',0,0,1,NULL,1),
(67,'document','Вентилируемый фасад БЦ','','Carnegie Center: Вентилируемый фасад БЦ, Киев, 2023 — проект improvision.','carnegie-center','',1,0,0,15,1,NULL,NULL,0,9,2,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','ru',1,'projects/carnegie-center/',0,0,1,NULL,1),
(68,'document','Бутик у ТРЦ Ocean Plaza','','Intimissimi: Бутик у ТРЦ Ocean Plaza, Київ, 2021 — проєкт improvision.','intimissimi-ocean-plaza','',1,0,0,13,1,NULL,NULL,0,9,3,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','web',1,'projects/intimissimi-ocean-plaza/',0,0,1,NULL,1),
(69,'document','Boutique at Ocean Plaza','','Intimissimi: Boutique at Ocean Plaza, Kyiv, 2021 — an improvision project.','intimissimi-ocean-plaza','',1,0,0,14,1,NULL,NULL,0,9,3,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','en',1,'projects/intimissimi-ocean-plaza/',0,0,1,NULL,1),
(70,'document','Бутик в ТРЦ Ocean Plaza','','Intimissimi: Бутик в ТРЦ Ocean Plaza, Киев, 2021 — проект improvision.','intimissimi-ocean-plaza','',1,0,0,15,1,NULL,NULL,0,9,3,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','ru',1,'projects/intimissimi-ocean-plaza/',0,0,1,NULL,1),
(71,'document','Магазин у ТРЦ Domosfera','','Calzedonia: Магазин у ТРЦ Domosfera, Київ, 2023 — проєкт improvision.','calzedonia-domosfera','',1,0,0,13,1,NULL,NULL,0,9,4,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','web',1,'projects/calzedonia-domosfera/',0,0,1,NULL,1),
(72,'document','Store at Domosfera mall','','Calzedonia: Store at Domosfera mall, Kyiv, 2023 — an improvision project.','calzedonia-domosfera','',1,0,0,14,1,NULL,NULL,0,9,4,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','en',1,'projects/calzedonia-domosfera/',0,0,1,NULL,1),
(73,'document','Магазин в ТРЦ Domosfera','','Calzedonia: Магазин в ТРЦ Domosfera, Киев, 2023 — проект improvision.','calzedonia-domosfera','',1,0,0,15,1,NULL,NULL,0,9,4,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','ru',1,'projects/calzedonia-domosfera/',0,0,1,NULL,1),
(74,'document','Брендинг відділення','','Globus Bank: Брендинг відділення, Київ, 2024 — проєкт improvision.','globus-bank','',1,0,0,13,1,NULL,NULL,0,9,5,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','web',1,'projects/globus-bank/',0,0,1,NULL,1),
(75,'document','Branch branding','','Globus Bank: Branch branding, Kyiv, 2024 — an improvision project.','globus-bank','',1,0,0,14,1,NULL,NULL,0,9,5,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','en',1,'projects/globus-bank/',0,0,1,NULL,1),
(76,'document','Брендинг отделения','','Globus Bank: Брендинг отделения, Киев, 2024 — проект improvision.','globus-bank','',1,0,0,15,1,NULL,NULL,0,9,5,1,1,1,1794494669,0,0,0,0,0,1794494669,0,'',0,0,'MODX\\Revolution\\modDocument','ru',1,'projects/globus-bank/',0,0,1,NULL,1),
(77,'document','Що входить у будівництво магазину «під ключ»','','Розбираємо повний цикл робіт: від проєкту й погодження до оздоблення, реклами та здачі обʼєкта — і чому один підрядник зазвичай вигідніший за кількох.','turnkey-store','',1,0,0,16,1,'Розбираємо повний цикл робіт: від проєкту й погодження до оздоблення, реклами та здачі об\'єкта — і чому один підрядник. Розбираємо повний цикл робіт: від проєкту й погодження до оздоблення, реклами та здачі об\'єкта — і чому один підрядник зазвичай вигідніший за кількох.','<p>Відкриття магазину — це не лише оренда приміщення й завезення товару. Між «голими стінами» та готовим до роботи простором стоїть десяток видів робіт, які потрібно спроєктувати, узгодити та злагоджено виконати. Формат «під ключ» означає, що всю цю відповідальність бере на себе один підрядник.</p>\n<h2 id=\"what-is-turnkey\">Що означає «під ключ»</h2>\n<p>«Під ключ» — це модель, за якої замовник отримує готовий результат, а не набір окремих послуг. Підрядник відповідає за весь ланцюжок: проєкт, матеріали, виробництво, монтаж і здачу об\'єкта. Замовнику не потрібно координувати кілька бригад і стикувати їхні графіки.</p>\n<div class=\"callout\">\n<img alt=\"\" class=\"callout__icon\" height=\"40\" src=\"/assets/icons/ic-contract-pen.svg\" width=\"52\">\n<p>Один договір і одна точка відповідальності знижують ризики зривів<br class=\"br-desk\"> строків і «розмивання» гарантії між підрядниками.</p>\n</div>\n<p>«Під ключ» — це модель, за якої замовник отримує готовий результат, а не набір окремих послуг. Підрядник відповідає за весь ланцюжок: проєкт, матеріали, виробництво, монтаж і здачу об\'єкта. Замовнику не потрібно координувати кілька бригад і стикувати їхні графіки. Модель, за якої замовник отримує готовий результат, а не набір окремих послуг. Підрядник відповідає за весь ланцюжок: проєкт, матеріали, виробництво, монтаж і здачу об\'єкта. Замовнику не потрібно координувати кілька бригад і стикувати їхні графіки.</p>\n<h2 id=\"stages\">Етапи будівництва магазину</h2>\n<p>Незалежно від площі, роботи проходять кілька послідовних етапів. Ось як це виглядає на практиці:</p>\n<ol class=\"step-list\">\n<li class=\"step-list__item\">\n<span aria-hidden=\"true\" class=\"step-list__num\">01</span>\n<div>\n<h3 class=\"step-list__title\">Обстеження та проєкт</h3>\n<p class=\"step-list__text\">Заміри приміщення, планувальне рішення, робоча документація та кошторис.</p>\n</div>\n</li>\n<li class=\"step-list__item\">\n<span aria-hidden=\"true\" class=\"step-list__num\">02</span>\n<div>\n<h3 class=\"step-list__title\">Будівельні та оздоблювальні роботи</h3>\n<p class=\"step-list__text\">Перегородки, стеля, підлога, інженерні мережі та фінішне оздоблення.</p>\n</div>\n</li>\n<li class=\"step-list__item\">\n<span aria-hidden=\"true\" class=\"step-list__num\">03</span>\n<div>\n<h3 class=\"step-list__title\">Реклама й навігація</h3>\n<p class=\"step-list__text\">Фасадна вивіска, вхідна група, внутрішня навігація та POS-конструкції.</p>\n</div>\n</li>\n<li class=\"step-list__item\">\n<span aria-hidden=\"true\" class=\"step-list__num\">04</span>\n<div>\n<h3 class=\"step-list__title\">Здача під ключ</h3>\n<p class=\"step-list__text\">Монтаж обладнання, прибирання, введення в експлуатацію та гарантія.</p>\n</div>\n</li>\n</ol>\n<figure class=\"figure--crop\">\n<img alt=\"Фасад ресторану KFC з вивісками вночі\" height=\"815\" loading=\"lazy\" src=\"/assets/img/photos/kfc-artmall-1.jpg\" width=\"1448\">\n<figcaption>Монтаж обладнання та реклами часто виконується паралельно з оздобленням, щоб скоротити строки.</figcaption>\n</figure>\n<h2 id=\"one-contractor\">Чому один підрядник вигідніший</h2>\n<p>Коли роботи розподілені між кількома компаніями, замовник ризикує зіткнутися з «сірими зонами» відповідальності. Модель «під ключ» прибирає ці стики:</p>\n<div class=\"checklist-box checklist-box--compact\">\n<ul class=\"checklist checklist--single\">\n<li>Єдиний графік і кошторис без прихованих витрат між підрядниками.</li>\n<li>Одна гарантія на весь обʼєкт замість розрізнених гарантій на окремі роботи.</li>\n<li>Швидша реалізація завдяки паралельному виконанню етапів.</li>\n<li>Менше управлінського навантаження — комунікація через одного менеджера.</li>\n</ul>\n</div>\n<blockquote>\n<p>«Замовник має бачити один графік, один кошторис і одну відповідальну команду — решту складнощів беремо на себе».</p>\n</blockquote>\n<p>Коли роботи розподілені між кількома компаніями, замовник ризикує зіткнутися з «сірими зонами» відповідальності. Модель «під ключ» прибирає ці стики: Коли роботи розподілені між кількома компаніями, замовник ризикує зіткнутися з «сірими зонами» відповідальності. Модель «під ключ» прибирає ці стики:</p>\n<h2 id=\"conclusion\">Висновок</h2>\n<p>Будівництво магазину «під ключ» — це передбачувані строки, єдина гарантія та менше управлінського навантаження на замовника. Якщо ви плануєте відкриття або реконструкцію торгового простору, почніть із обстеження об\'єкта та кошторису — це дасть реалістичну картину бюджету й термінів.</p>\n<aside aria-labelledby=\"summary-title\" class=\"summary-box\">\n<h3 class=\"summary-box__title\" id=\"summary-title\">Коротко</h3>\n<ul class=\"summary-box__list\">\n<li>«Під ключ» = готовий результат, а не набір окремих послуг.</li>\n<li>Один підрядник знижує ризики зривів строків і «розмивання» гарантії.</li>\n<li>Старт будь-якого проєкту — обстеження обʼєкта та кошторис.</li>\n</ul>\n</aside>',0,11,0,1,1,1,1794494669,0,0,0,0,0,1781776800,0,'',0,0,'MODX\\Revolution\\modDocument','web',1,'blog/turnkey-store/',0,0,1,NULL,1),
(78,'document','What turnkey store construction includes','','We break down the full cycle of works: from design and approvals to finishing, signage and handover — and why one contractor is usually better value than several.','turnkey-store','',1,0,0,17,1,'We break down the full cycle of works: from design and approvals to finishing, signage and handover — and why one contractor. We break down the full cycle of works: from design and approvals to finishing, signage and handover — and why one contractor is usually better value than several.','<p>Opening a store is more than renting a space and bringing in stock. Between bare walls and a space ready for business lie dozens of types of work that need to be designed, approved and carried out in a coordinated way. The turnkey format means one contractor takes on all of this responsibility.</p>\n<h2 id=\"what-is-turnkey\">What “turnkey” means</h2>\n<p>“Turnkey” is a model in which the client receives a finished result rather than a set of separate services. The contractor is responsible for the whole chain: design, materials, production, installation and handover. The client doesn’t need to coordinate several crews and align their schedules.</p>\n<div class=\"callout\">\n<img alt=\"\" class=\"callout__icon\" height=\"40\" src=\"/assets/icons/ic-contract-pen.svg\" width=\"52\">\n<p>One contract and a single point of responsibility reduce the risk<br class=\"br-desk\"> of missed deadlines and warranties “blurred” between contractors.</p>\n</div>\n<p>“Turnkey” is a model in which the client receives a finished result rather than a set of separate services. The contractor is responsible for the whole chain: design, materials, production, installation and handover. The client doesn’t need to coordinate several crews and align their schedules. A model in which the client receives a finished result rather than a set of separate services. The contractor is responsible for the whole chain: design, materials, production, installation and handover. The client doesn’t need to coordinate several crews and align their schedules.</p>\n<h2 id=\"stages\">Stages of store construction</h2>\n<p>Regardless of the floor area, the works go through several consecutive stages. Here’s how it looks in practice:</p>\n<ol class=\"step-list\">\n<li class=\"step-list__item\">\n<span aria-hidden=\"true\" class=\"step-list__num\">01</span>\n<div>\n<h3 class=\"step-list__title\">Survey and design</h3>\n<p class=\"step-list__text\">Premises measurements, layout, working documentation and estimate.</p>\n</div>\n</li>\n<li class=\"step-list__item\">\n<span aria-hidden=\"true\" class=\"step-list__num\">02</span>\n<div>\n<h3 class=\"step-list__title\">Construction and finishing works</h3>\n<p class=\"step-list__text\">Partitions, ceiling, floor, utilities and final finishing.</p>\n</div>\n</li>\n<li class=\"step-list__item\">\n<span aria-hidden=\"true\" class=\"step-list__num\">03</span>\n<div>\n<h3 class=\"step-list__title\">Signage and wayfinding</h3>\n<p class=\"step-list__text\">Facade sign, entrance group, interior wayfinding and POS displays.</p>\n</div>\n</li>\n<li class=\"step-list__item\">\n<span aria-hidden=\"true\" class=\"step-list__num\">04</span>\n<div>\n<h3 class=\"step-list__title\">Turnkey handover</h3>\n<p class=\"step-list__text\">Equipment installation, cleaning, commissioning and warranty.</p>\n</div>\n</li>\n</ol>\n<figure class=\"figure--crop\">\n<img alt=\"KFC restaurant facade with signs at night\" height=\"815\" loading=\"lazy\" src=\"/assets/img/photos/kfc-artmall-1.jpg\" width=\"1448\">\n<figcaption>Equipment and signage are often installed in parallel with finishing to shorten timelines.</figcaption>\n</figure>\n<h2 id=\"one-contractor\">Why one contractor is better value</h2>\n<p>When works are split between several companies, the client risks running into “grey zones” of responsibility. The turnkey model removes these gaps:</p>\n<div class=\"checklist-box checklist-box--compact\">\n<ul class=\"checklist checklist--single\">\n<li>A single schedule and estimate with no hidden costs between contractors.</li>\n<li>One warranty for the whole project instead of separate warranties for individual works.</li>\n<li>Faster delivery thanks to stages running in parallel.</li>\n<li>Less management overhead — communication through one manager.</li>\n</ul>\n</div>\n<blockquote>\n<p>“The client should see one schedule, one estimate and one responsible team — we take care of the rest.”</p>\n</blockquote>\n<p>When works are split between several companies, the client risks running into “grey zones” of responsibility. The turnkey model removes these gaps: When works are split between several companies, the client risks running into “grey zones” of responsibility. The turnkey model removes these gaps:</p>\n<h2 id=\"conclusion\">Conclusion</h2>\n<p>Turnkey store construction means predictable timelines, a single warranty and less management overhead for the client. If you are planning to open or renovate a retail space, start with a site survey and an estimate — it will give you a realistic picture of the budget and timeline.</p>\n<aside aria-labelledby=\"summary-title\" class=\"summary-box\">\n<h3 class=\"summary-box__title\" id=\"summary-title\">In short</h3>\n<ul class=\"summary-box__list\">\n<li>“Turnkey” = a finished result, not a set of separate services.</li>\n<li>One contractor reduces the risk of missed deadlines and “blurred” warranties.</li>\n<li>Every project starts with a site survey and an estimate.</li>\n</ul>\n</aside>',0,11,0,1,1,1,1794494669,0,0,0,0,0,1781776800,0,'',0,0,'MODX\\Revolution\\modDocument','en',1,'blog/turnkey-store/',0,0,1,NULL,1),
(79,'document','Что входит в строительство магазина «под ключ»','','Разбираем полный цикл работ: от проекта и согласования до отделки, рекламы и сдачи объекта — и почему один подрядчик обычно выгоднее нескольких.','turnkey-store','',1,0,0,18,1,'Разбираем полный цикл работ: от проекта и согласования до отделки, рекламы и сдачи объекта — и почему один подрядчик. Разбираем полный цикл работ: от проекта и согласования до отделки, рекламы и сдачи объекта — и почему один подрядчик обычно выгоднее нескольких.','<p>Открытие магазина — это не только аренда помещения и завоз товара. Между «голыми стенами» и готовым к работе пространством стоит десяток видов работ, которые нужно спроектировать, согласовать и слаженно выполнить. Формат «под ключ» означает, что всю эту ответственность берёт на себя один подрядчик.</p>\n<h2 id=\"what-is-turnkey\">Что означает «под ключ»</h2>\n<p>«Под ключ» — это модель, при которой заказчик получает готовый результат, а не набор отдельных услуг. Подрядчик отвечает за всю цепочку: проект, материалы, производство, монтаж и сдачу объекта. Заказчику не нужно координировать несколько бригад и стыковать их графики.</p>\n<div class=\"callout\">\n<img alt=\"\" class=\"callout__icon\" height=\"40\" src=\"/assets/icons/ic-contract-pen.svg\" width=\"52\">\n<p>Один договор и одна точка ответственности снижают риски срыва<br class=\"br-desk\"> сроков и «размывания» гарантии между подрядчиками.</p>\n</div>\n<p>«Под ключ» — это модель, при которой заказчик получает готовый результат, а не набор отдельных услуг. Подрядчик отвечает за всю цепочку: проект, материалы, производство, монтаж и сдачу объекта. Заказчику не нужно координировать несколько бригад и стыковать их графики. Модель, при которой заказчик получает готовый результат, а не набор отдельных услуг. Подрядчик отвечает за всю цепочку: проект, материалы, производство, монтаж и сдачу объекта. Заказчику не нужно координировать несколько бригад и стыковать их графики.</p>\n<h2 id=\"stages\">Этапы строительства магазина</h2>\n<p>Независимо от площади, работы проходят несколько последовательных этапов. Вот как это выглядит на практике:</p>\n<ol class=\"step-list\">\n<li class=\"step-list__item\">\n<span aria-hidden=\"true\" class=\"step-list__num\">01</span>\n<div>\n<h3 class=\"step-list__title\">Обследование и проект</h3>\n<p class=\"step-list__text\">Замеры помещения, планировочное решение, рабочая документация и смета.</p>\n</div>\n</li>\n<li class=\"step-list__item\">\n<span aria-hidden=\"true\" class=\"step-list__num\">02</span>\n<div>\n<h3 class=\"step-list__title\">Строительные и отделочные работы</h3>\n<p class=\"step-list__text\">Перегородки, потолок, пол, инженерные сети и финишная отделка.</p>\n</div>\n</li>\n<li class=\"step-list__item\">\n<span aria-hidden=\"true\" class=\"step-list__num\">03</span>\n<div>\n<h3 class=\"step-list__title\">Реклама и навигация</h3>\n<p class=\"step-list__text\">Фасадная вывеска, входная группа, внутренняя навигация и POS-конструкции.</p>\n</div>\n</li>\n<li class=\"step-list__item\">\n<span aria-hidden=\"true\" class=\"step-list__num\">04</span>\n<div>\n<h3 class=\"step-list__title\">Сдача под ключ</h3>\n<p class=\"step-list__text\">Монтаж оборудования, уборка, ввод в эксплуатацию и гарантия.</p>\n</div>\n</li>\n</ol>\n<figure class=\"figure--crop\">\n<img alt=\"Фасад ресторана KFC с вывесками ночью\" height=\"815\" loading=\"lazy\" src=\"/assets/img/photos/kfc-artmall-1.jpg\" width=\"1448\">\n<figcaption>Монтаж оборудования и рекламы часто выполняется параллельно с отделкой, чтобы сократить сроки.</figcaption>\n</figure>\n<h2 id=\"one-contractor\">Почему один подрядчик выгоднее</h2>\n<p>Когда работы распределены между несколькими компаниями, заказчик рискует столкнуться с «серыми зонами» ответственности. Модель «под ключ» убирает эти стыки:</p>\n<div class=\"checklist-box checklist-box--compact\">\n<ul class=\"checklist checklist--single\">\n<li>Единый график и смета без скрытых расходов между подрядчиками.</li>\n<li>Одна гарантия на весь объект вместо разрозненных гарантий на отдельные работы.</li>\n<li>Более быстрая реализация благодаря параллельному выполнению этапов.</li>\n<li>Меньше управленческой нагрузки — коммуникация через одного менеджера.</li>\n</ul>\n</div>\n<blockquote>\n<p>«Заказчик должен видеть один график, одну смету и одну ответственную команду — остальные сложности берём на себя».</p>\n</blockquote>\n<p>Когда работы распределены между несколькими компаниями, заказчик рискует столкнуться с «серыми зонами» ответственности. Модель «под ключ» убирает эти стыки: Когда работы распределены между несколькими компаниями, заказчик рискует столкнуться с «серыми зонами» ответственности. Модель «под ключ» убирает эти стыки:</p>\n<h2 id=\"conclusion\">Вывод</h2>\n<p>Строительство магазина «под ключ» — это предсказуемые сроки, единая гарантия и меньше управленческой нагрузки на заказчика. Если вы планируете открытие или реконструкцию торгового пространства, начните с обследования объекта и сметы — это даст реалистичную картину бюджета и сроков.</p>\n<aside aria-labelledby=\"summary-title\" class=\"summary-box\">\n<h3 class=\"summary-box__title\" id=\"summary-title\">Коротко</h3>\n<ul class=\"summary-box__list\">\n<li>«Под ключ» = готовый результат, а не набор отдельных услуг.</li>\n<li>Один подрядчик снижает риски срыва сроков и «размывания» гарантии.</li>\n<li>Старт любого проекта — обследование объекта и смета.</li>\n</ul>\n</aside>',0,11,0,1,1,1,1794494669,0,0,0,0,0,1781776800,0,'',0,0,'MODX\\Revolution\\modDocument','ru',1,'blog/turnkey-store/',0,0,1,NULL,1),
(80,'document','Як обрати систему вентильованого фасаду для ТРЦ','','Порівнюємо підсистеми, матеріали за ціною, довговічністю й естетикою.','ventilated-facade-for-mall','',1,0,0,16,1,'Порівнюємо підсистеми, матеріали за ціною, довговічністю й естетикою.','<p>Вентильований фасад для торговельного центру — це не лише облицювання. Від вибору підсистеми та матеріалу залежать вага конструкції, пожежна безпека, строки монтажу й вигляд будівлі через десять років.</p>\n<h2>Підсистема: основа, яку не видно</h2>\n<p>Підсистема тримає облицювання й передає навантаження на стіну. Для ТРЦ найчастіше обирають алюмінієві системи — вони легкі та не кородують — або оцинковану й нержавіючу сталь, коли потрібна більша несуча здатність. Крок кронштейнів і тип анкерів визначає розрахунок на вітрове навантаження для конкретної висоти та основи.</p>\n<h2>Матеріал облицювання</h2>\n<ul>\n<li><strong>Композитні панелі</strong> — легкі, з великою палітрою кольорів, зручні для фірмових кольорів і складних форм.</li>\n<li><strong>Керамограніт</strong> — довговічний і стійкий до механічних пошкоджень, добре підходить для нижніх поверхів.</li>\n<li><strong>HPL і фіброцемент</strong> — сучасна фактура та натуральний вигляд для акцентних площин.</li>\n</ul>\n<p>Для громадських будівель обовʼязково перевіряйте клас пожежної безпеки матеріалу й утеплювача.</p>\n<h2>Що врахувати до старту</h2>\n<p>Почніть з обстеження основи та обмірів: від них залежить розкладка панелей і кошторис. Узгодьте з орендодавцем вимоги до вивісок і світла на фасаді — так монтаж реклами не доведеться переробляти.</p>',0,11,1,1,1,1,1794494669,0,0,0,0,0,1781258400,0,'',0,0,'MODX\\Revolution\\modDocument','web',1,'blog/ventilated-facade-for-mall/',0,0,1,NULL,1),
(81,'document','How to choose a ventilated facade system for a shopping mall','','We compare subframes and materials by price, durability and appearance.','ventilated-facade-for-mall','',1,0,0,17,1,'We compare subframes and materials by price, durability and appearance.','<p>A ventilated facade for a shopping centre is more than cladding. The choice of subframe and material determines the weight of the structure, fire safety, installation time and how the building will look in ten years.</p>\n<h2>The subframe: the part you don’t see</h2>\n<p>The subframe carries the cladding and transfers the loads to the wall. For shopping malls, aluminium systems are the most common choice — they are light and do not corrode — or galvanised and stainless steel when a higher load capacity is needed. The bracket spacing and anchor type come from a wind-load calculation for the specific height and substrate.</p>\n<h2>Cladding material</h2>\n<ul>\n<li><strong>Composite panels</strong> — light, available in a wide range of colours, convenient for brand colours and complex shapes.</li>\n<li><strong>Porcelain stoneware</strong> — durable and resistant to mechanical damage, a good fit for lower floors.</li>\n<li><strong>HPL and fibre cement</strong> — a modern texture and natural look for accent surfaces.</li>\n</ul>\n<p>For public buildings, always check the fire safety class of the cladding and insulation.</p>\n<h2>What to consider before you start</h2>\n<p>Start with a survey of the substrate and measurements: they define the panel layout and the estimate. Agree on the landlord’s requirements for signage and facade lighting, so the advertising does not have to be reworked after installation.</p>',0,11,1,1,1,1,1794494669,0,0,0,0,0,1781258400,0,'',0,0,'MODX\\Revolution\\modDocument','en',1,'blog/ventilated-facade-for-mall/',0,0,1,NULL,1),
(82,'document','Как выбрать систему вентилируемого фасада для ТРЦ','','Сравниваем подсистемы и материалы по цене, долговечности и эстетике.','ventilated-facade-for-mall','',1,0,0,18,1,'Сравниваем подсистемы и материалы по цене, долговечности и эстетике.','<p>Вентилируемый фасад для торгового центра — это не только облицовка. От выбора подсистемы и материала зависят вес конструкции, пожарная безопасность, сроки монтажа и то, как здание будет выглядеть через десять лет.</p>\n<h2>Подсистема: основа, которую не видно</h2>\n<p>Подсистема держит облицовку и передаёт нагрузку на стену. Для ТРЦ чаще всего выбирают алюминиевые системы — они лёгкие и не корродируют — или оцинкованную и нержавеющую сталь, когда нужна большая несущая способность. Шаг кронштейнов и тип анкеров определяет расчёт на ветровую нагрузку для конкретной высоты и основания.</p>\n<h2>Материал облицовки</h2>\n<ul>\n<li><strong>Композитные панели</strong> — лёгкие, с большой палитрой цветов, удобны для фирменных цветов и сложных форм.</li>\n<li><strong>Керамогранит</strong> — долговечный и стойкий к механическим повреждениям, хорошо подходит для нижних этажей.</li>\n<li><strong>HPL и фиброцемент</strong> — современная фактура и натуральный вид для акцентных плоскостей.</li>\n</ul>\n<p>Для общественных зданий обязательно проверяйте класс пожарной безопасности материала и утеплителя.</p>\n<h2>Что учесть до старта</h2>\n<p>Начните с обследования основания и обмеров: от них зависят раскладка панелей и смета. Согласуйте с арендодателем требования к вывескам и подсветке фасада — тогда монтаж рекламы не придётся переделывать.</p>',0,11,1,1,1,1,1794494669,0,0,0,0,0,1781258400,0,'',0,0,'MODX\\Revolution\\modDocument','ru',1,'blog/ventilated-facade-for-mall/',0,0,1,NULL,1),
(83,'document','Строки монтажу вхідної групи: від чого залежать','','Що впливає на терміни та як спланувати роботи без зупинки торгівлі.','entrance-group-timing','',1,0,0,16,1,'Що впливає на терміни та як спланувати роботи без зупинки торгівлі.','<p>Вхідна група — перше, що бачить відвідувач, тому її монтаж зазвичай планують під конкретну дату відкриття. Реальні строки складаються з кількох етапів, і найбільше часу забирають не самі монтажні роботи.</p>\n<h2>З чого складаються строки</h2>\n<ol class=\"step-list\">\n<li class=\"step-list__item\"><span class=\"step-list__num\" aria-hidden=\"true\">01</span><div><h3 class=\"step-list__title\">Проєкт і погодження</h3><p class=\"step-list__text\">Обміри, ескіз, погодження з орендодавцем і бренд-центром мережі.</p></div></li>\n<li class=\"step-list__item\"><span class=\"step-list__num\" aria-hidden=\"true\">02</span><div><h3 class=\"step-list__title\">Виготовлення</h3><p class=\"step-list__text\">Каркас, облицювання, скління та світлотехніка у власному цеху.</p></div></li>\n<li class=\"step-list__item\"><span class=\"step-list__num\" aria-hidden=\"true\">03</span><div><h3 class=\"step-list__title\">Монтаж</h3><p class=\"step-list__text\">Встановлення на обʼєкті, підключення та пусконалагодження.</p></div></li>\n</ol>\n<h2>Що найчастіше затягує роботу</h2>\n<p>Найбільше часу втрачається на погодженнях: зміни в дизайні після початку виробництва зсувають графік на тижні. Друга причина — обмеження ТРЦ: роботи в галереях часто дозволені лише вночі, а заїзд техніки потребує окремого допуску.</p>\n<h2>Як не зупиняти торгівлю</h2>\n<p>Більшість елементів виготовляються заздалегідь, тому на обʼєкті лишається лише збірка. Монтаж можна розбити на нічні зміни й тимчасово огородити зону робіт — магазин продовжує працювати.</p>',0,11,2,1,1,1,1794494669,0,0,0,0,0,1780653600,0,'',0,0,'MODX\\Revolution\\modDocument','web',1,'blog/entrance-group-timing/',0,0,1,NULL,1),
(84,'document','Entrance group installation timelines: what they depend on','','What affects timelines and how to plan works without stopping trade.','entrance-group-timing','',1,0,0,17,1,'What affects timelines and how to plan works without stopping trade.','<p>The entrance group is the first thing a visitor sees, so its installation is usually planned for a specific opening date. The real timeline consists of several stages, and the installation work itself is not what takes the most time.</p>\n<h2>What the timeline consists of</h2>\n<ol class=\"step-list\">\n<li class=\"step-list__item\"><span class=\"step-list__num\" aria-hidden=\"true\">01</span><div><h3 class=\"step-list__title\">Design and approvals</h3><p class=\"step-list__text\">Measurements, a sketch, approval by the landlord and the chain’s brand centre.</p></div></li>\n<li class=\"step-list__item\"><span class=\"step-list__num\" aria-hidden=\"true\">02</span><div><h3 class=\"step-list__title\">Manufacturing</h3><p class=\"step-list__text\">Frame, cladding, glazing and lighting made in our own workshop.</p></div></li>\n<li class=\"step-list__item\"><span class=\"step-list__num\" aria-hidden=\"true\">03</span><div><h3 class=\"step-list__title\">Installation</h3><p class=\"step-list__text\">On-site installation, connection and commissioning.</p></div></li>\n</ol>\n<h2>What delays the work most often</h2>\n<p>Most time is lost on approvals: design changes after manufacturing has started shift the schedule by weeks. The second reason is mall restrictions: work in the galleries is often allowed only at night, and bringing in equipment requires a separate permit.</p>\n<h2>How to keep the store trading</h2>\n<p>Most elements are made in advance, so only assembly remains on site. Installation can be split into night shifts with the work area temporarily fenced off — the store keeps working.</p>',0,11,2,1,1,1,1794494669,0,0,0,0,0,1780653600,0,'',0,0,'MODX\\Revolution\\modDocument','en',1,'blog/entrance-group-timing/',0,0,1,NULL,1),
(85,'document','Сроки монтажа входной группы: от чего зависят','','Что влияет на сроки и как спланировать работы без остановки торговли.','entrance-group-timing','',1,0,0,18,1,'Что влияет на сроки и как спланировать работы без остановки торговли.','<p>Входная группа — первое, что видит посетитель, поэтому её монтаж обычно планируют под конкретную дату открытия. Реальные сроки складываются из нескольких этапов, и больше всего времени занимают не сами монтажные работы.</p>\n<h2>Из чего складываются сроки</h2>\n<ol class=\"step-list\">\n<li class=\"step-list__item\"><span class=\"step-list__num\" aria-hidden=\"true\">01</span><div><h3 class=\"step-list__title\">Проект и согласование</h3><p class=\"step-list__text\">Обмеры, эскиз, согласование с арендодателем и бренд-центром сети.</p></div></li>\n<li class=\"step-list__item\"><span class=\"step-list__num\" aria-hidden=\"true\">02</span><div><h3 class=\"step-list__title\">Изготовление</h3><p class=\"step-list__text\">Каркас, облицовка, остекление и светотехника в собственном цехе.</p></div></li>\n<li class=\"step-list__item\"><span class=\"step-list__num\" aria-hidden=\"true\">03</span><div><h3 class=\"step-list__title\">Монтаж</h3><p class=\"step-list__text\">Установка на объекте, подключение и пусконаладка.</p></div></li>\n</ol>\n<h2>Что чаще всего затягивает работу</h2>\n<p>Больше всего времени теряется на согласованиях: изменения в дизайне после начала производства сдвигают график на недели. Вторая причина — ограничения ТРЦ: работы в галереях часто разрешены только ночью, а заезд техники требует отдельного допуска.</p>\n<h2>Как не останавливать торговлю</h2>\n<p>Большинство элементов изготавливаются заранее, поэтому на объекте остаётся только сборка. Монтаж можно разбить на ночные смены и временно оградить зону работ — магазин продолжает работать.</p>',0,11,2,1,1,1,1794494669,0,0,0,0,0,1780653600,0,'',0,0,'MODX\\Revolution\\modDocument','ru',1,'blog/entrance-group-timing/',0,0,1,NULL,1),
(86,'document','Обʼємні букви чи лайтбокс: що обрати для вивіски','','Переваги, обмеження та вартість двох найпопулярніших рішень для фасадної реклами.','letters-or-lightbox','',1,0,0,16,1,'Переваги, обмеження та вартість двох найпопулярніших рішень для фасадної реклами.','<p>Обʼємні букви й лайтбокс — два найпопулярніші рішення для фасадної вивіски. Обидва добре видно вдень і вночі, але вони по-різному виглядають, коштують і погоджуються.</p>\n<h2>Обʼємні букви</h2>\n<p>Кожна літера — окрема конструкція з лицьовою частиною з акрилу чи металу й світлодіодним підсвічуванням. Вивіска виглядає дорого й «чисто», добре передає фірмовий шрифт і логотип. Водночас виготовлення займає більше часу, а вартість зростає разом із кількістю та розміром літер.</p>\n<h2>Лайтбокс</h2>\n<p>Короб із підсвічуванням і зображенням на лицьовій поверхні. Його швидше виготовити й простіше замінити зображення під час ребрендингу, а велика світна площа добре помітна здалеку. Мінус — масивніший вигляд, який підходить не кожному фасаду.</p>\n<h2>Як обрати</h2>\n<div class=\"checklist-box checklist-box--compact\">\n<ul class=\"checklist checklist--single\">\n<li>Перевірте вимоги ТРЦ або архітектурного вигляду будівлі — часто вони визначають тип вивіски.</li>\n<li>Для преміального бренду й складного логотипа частіше обирають обʼємні букви.</li>\n<li>Якщо важливі бюджет і строки або дизайн часто змінюється — лайтбокс.</li>\n</ul>\n</div>\n<p>Нерідко рішення комбінують: обʼємні букви з назвою на фасаді й лайтбокс над входом.</p>',0,11,3,1,1,1,1794494669,0,0,0,0,0,1779962400,0,'',0,0,'MODX\\Revolution\\modDocument','web',1,'blog/letters-or-lightbox/',0,0,1,NULL,1),
(87,'document','Channel letters or a lightbox: which to choose for your sign','','Pros, limitations and cost of the two most popular facade signage solutions.','letters-or-lightbox','',1,0,0,17,1,'Pros, limitations and cost of the two most popular facade signage solutions.','<p>Channel letters and lightboxes are the two most popular solutions for a facade sign. Both are well visible by day and at night, but they look, cost and get approved differently.</p>\n<h2>Channel letters</h2>\n<p>Each letter is a separate structure with an acrylic or metal face and LED lighting. The sign looks premium and clean, and conveys the brand font and logo well. On the other hand, manufacturing takes longer, and the cost grows with the number and size of the letters.</p>\n<h2>Lightbox</h2>\n<p>An illuminated box with an image on the front. It is faster to make and easier to update during a rebranding, and the large illuminated area is visible from afar. The downside is a bulkier look that does not suit every facade.</p>\n<h2>How to choose</h2>\n<div class=\"checklist-box checklist-box--compact\">\n<ul class=\"checklist checklist--single\">\n<li>Check the shopping centre’s requirements or the building’s architectural guidelines — they often determine the type of sign.</li>\n<li>Premium brands and complex logos usually go for channel letters.</li>\n<li>If budget and timing matter, or the design changes often — choose a lightbox.</li>\n</ul>\n</div>\n<p>The solutions are often combined: channel letters with the name on the facade and a lightbox above the entrance.</p>',0,11,3,1,1,1,1794494669,0,0,0,0,0,1779962400,0,'',0,0,'MODX\\Revolution\\modDocument','en',1,'blog/letters-or-lightbox/',0,0,1,NULL,1),
(88,'document','Объёмные буквы или лайтбокс: что выбрать для вывески','','Преимущества, ограничения и стоимость двух самых популярных решений для фасадной рекламы.','letters-or-lightbox','',1,0,0,18,1,'Преимущества, ограничения и стоимость двух самых популярных решений для фасадной рекламы.','<p>Объёмные буквы и лайтбокс — два самых популярных решения для фасадной вывески. Оба хорошо видны днём и ночью, но по-разному выглядят, стоят и согласовываются.</p>\n<h2>Объёмные буквы</h2>\n<p>Каждая буква — отдельная конструкция с лицевой частью из акрила или металла и светодиодной подсветкой. Вывеска выглядит дорого и «чисто», хорошо передаёт фирменный шрифт и логотип. При этом изготовление занимает больше времени, а стоимость растёт вместе с количеством и размером букв.</p>\n<h2>Лайтбокс</h2>\n<p>Короб с подсветкой и изображением на лицевой поверхности. Его быстрее изготовить и проще заменить изображение при ребрендинге, а большая светящаяся площадь хорошо заметна издалека. Минус — более массивный вид, который подходит не каждому фасаду.</p>\n<h2>Как выбрать</h2>\n<div class=\"checklist-box checklist-box--compact\">\n<ul class=\"checklist checklist--single\">\n<li>Проверьте требования ТРЦ или архитектурного облика здания — часто они определяют тип вывески.</li>\n<li>Для премиального бренда и сложного логотипа чаще выбирают объёмные буквы.</li>\n<li>Если важны бюджет и сроки или дизайн часто меняется — лайтбокс.</li>\n</ul>\n</div>\n<p>Нередко решения комбинируют: объёмные буквы с названием на фасаде и лайтбокс над входом.</p>',0,11,3,1,1,1,1794494669,0,0,0,0,0,1779962400,0,'',0,0,'MODX\\Revolution\\modDocument','ru',1,'blog/letters-or-lightbox/',0,0,1,NULL,1),
(89,'document','sitemap.xml','','','sitemap','',1,0,0,0,0,NULL,'[[pdoSitemap? &context=`web,en,ru` &showHidden=`1` &resources=`-10,-11,-12,-31,-32,-33,-34,-35,-36,-37`]]',0,0,13,0,1,1,1794494671,0,0,0,0,0,1794494671,0,'',0,1,'MODX\\Revolution\\modDocument','web',2,'sitemap.xml',0,0,1,NULL,1);
/*!40000 ALTER TABLE `modx_site_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_htmlsnippets`
--

DROP TABLE IF EXISTS `modx_site_htmlsnippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_site_htmlsnippets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `cache_type` tinyint(1) NOT NULL DEFAULT 0,
  `snippet` mediumtext DEFAULT NULL,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL,
  `static` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `static` (`static`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_htmlsnippets`
--

LOCK TABLES `modx_site_htmlsnippets` WRITE;
/*!40000 ALTER TABLE `modx_site_htmlsnippets` DISABLE KEYS */;
INSERT INTO `modx_site_htmlsnippets` VALUES
(1,0,0,'tplBabellink','',0,3,0,'<li>\n    <a href=\"[[+url]]\" class=\"[[+cultureKey]][[+active:notempty=` [[+active]]`]]\">\n        [[+language]]\n    </a>\n</li>',0,'a:0:{}',0,''),
(2,0,0,'tplBabellinkWrapper','',0,3,0,'<ul>\n    [[+babelLinks]]\n</ul>',0,'a:0:{}',0,''),
(3,0,0,'tplBabelContextMenu','',0,3,0,'[[+name]] ([[+context_key]]) – [[+description]] ([[+culture_key:default=`[[+context_key]]`]]))\n',0,'a:0:{}',0,''),
(5,0,0,'brands','Chunk',0,30,0,'{set $brands = $g.brands | fromJSON}\n  <!-- ============================== BRANDS ============================== -->\n  <section class=\"brands\" aria-labelledby=\"brands-title\">\n    <div class=\"container\">\n      <h2 class=\"brands__title\" id=\"brands-title\" data-reveal=\"fade\">{$g.brands_title}</h2>\n      <div class=\"brands__slider\" data-slider=\"dots\">\n        <ul class=\"slider__track brands__track\" data-slider-track data-stagger=\"fade\">\n{foreach $brands as $b}\n          <li class=\"brands__item\"><img src=\"/{$b.image}\" {$_modx->runSnippet(\'impImg\', [\'src\' => $b.image])} alt=\"{$b.alt | esc}\" loading=\"lazy\"></li>\n{/foreach}\n        </ul>\n        <div class=\"slider__dots\" data-slider-dots></div>\n      </div>\n    </div>\n  </section>\n',0,NULL,1,'{core_path}components/improvision/elements/chunks/brands.tpl'),
(6,0,0,'breadcrumbs','Chunk',0,30,0,'{* Breadcrumbs: Home › parents › current. A weblink parent (Послуги) links to its target. *}\n{set $crumbIds = $_modx->getParentIds($res.id) | reverse}\n      <nav class=\"breadcrumbs\" aria-label=\"{\'imp.breadcrumbs\' | lexicon}\">\n        <ol>\n          <li><a href=\"{$_modx->makeUrl($_modx->config.site_start, \'\', \'\', \'abs\')}\">{\'imp.home\' | lexicon}</a></li>\n{foreach $crumbIds as $pid}\n{if $pid > 0 && $pid != $_modx->config.site_start}\n{set $pr = $_modx->getResource($pid)}\n{if $pr}\n{if $pid == $_modx->config[\'improvision.services_id\']}\n{set $crumbUrl = $_modx->makeUrl($_modx->config.site_start, \'\', \'\', \'abs\') ~ \'#services\'}\n{else}\n{set $crumbUrl = $_modx->makeUrl($pid, \'\', \'\', \'abs\')}\n{/if}\n          <li><a href=\"{$crumbUrl}\">{$pr.menutitle ?: $pr.pagetitle}</a></li>\n{/if}\n{/if}\n{/foreach}\n          <li><span aria-current=\"page\">{$res.menutitle ?: $res.pagetitle}</span></li>\n        </ol>\n      </nav>\n',0,NULL,1,'{core_path}components/improvision/elements/chunks/breadcrumbs.tpl'),
(7,0,0,'card_post','Chunk',0,30,0,'{* Blog post card. Params: $p (resource array with TVs image, category) *}\n{set $href = $_modx->makeUrl($p.id, \'\', \'\', \'abs\')}\n        <article class=\"post-card\" data-category=\"{$p.post_category}\">\n          <a class=\"post-card__media\" href=\"{$href}\" tabindex=\"-1\" aria-hidden=\"true\">\n            <img src=\"/{$p.card_image ?: $p.image}\" {$_modx->runSnippet(\'impImg\', [\'src\' => ($p.card_image ?: $p.image)])} alt=\"\" loading=\"lazy\">\n            <span class=\"post-card__tag\">{(\"imp.pcat_\" ~ $p.post_category) | lexicon}</span>\n          </a>\n          <div class=\"post-card__body\">\n            <time class=\"post-card__date\" datetime=\"{$p.publishedon | date : \'Y-m-d\'}\">{$_modx->runSnippet(\'impDate\', [\'date\' => $p.publishedon])}</time>\n            <h3 class=\"post-card__title\"><a href=\"{$href}\">{$p.pagetitle}</a></h3>\n            <p class=\"post-card__text\">{$p.featured_text ?: $p.introtext}</p>\n            <a class=\"btn btn--outline btn--card\" href=\"{$href}\">{\'imp.read_post\' | lexicon}{include \'icon_arrow\'}<span class=\"visually-hidden\">: {$p.pagetitle}</span></a>\n          </div>\n        </article>\n',0,NULL,1,'{core_path}components/improvision/elements/chunks/card_post.tpl'),
(8,0,0,'card_project','Chunk',0,30,0,'{* Project card. Params: $p (resource array with TVs: brand, city, year, category, card_image, card_image_alt) *}\n        <article class=\"project-card\" data-category=\"{$p.category}\">\n          <a class=\"project-card__link\" href=\"{$_modx->makeUrl($p.id, \'\', \'\', \'abs\')}\">\n            <div class=\"project-card__media\">\n              <img src=\"/{$p.card_image}\" {$_modx->runSnippet(\'impImg\', [\'src\' => $p.card_image])} alt=\"{($p.card_image_alt ?: ($p.brand ~ \' — \' ~ $p.pagetitle)) | esc}\" loading=\"lazy\">\n              <span class=\"project-card__tag\">{(\'imp.cat_\' ~ $p.category) | lexicon}</span>\n            </div>\n            <div class=\"project-card__body\">\n              <span class=\"project-card__brand\">{$p.brand}</span>\n              <h3 class=\"project-card__title\">{$p.pagetitle}</h3>\n              <span class=\"project-card__meta\">{$p.city}{if $p.city && $p.year}, {/if}{$p.year}</span>\n            </div>\n          </a>\n        </article>\n',0,NULL,1,'{core_path}components/improvision/elements/chunks/card_project.tpl'),
(9,0,0,'consult_card','Chunk',0,30,0,'{* Params: ctitle, ctext, cwide, side (\'left\'|\'right\') *}\n        <div class=\"consult-card{if $cwide?} consult-card--wide{/if}\" data-reveal=\"{$side ?: \'left\'}\">\n          <p class=\"consult-card__title\">{$ctitle ?: (\'imp.consult_title\' | lexicon)}</p>\n          <p class=\"consult-card__text\">{$ctext ?: (\'imp.consult_text\' | lexicon)}</p>\n          <a class=\"btn btn--primary consult-card__btn\" href=\"#contact\">{\'imp.request\' | lexicon}{include \'icon_arrow\'}</a>\n        </div>\n',0,NULL,1,'{core_path}components/improvision/elements/chunks/consult_card.tpl'),
(10,0,0,'contact','Chunk',0,30,0,'  <!-- ============================== CONTACT FORM ============================== -->\n  <section class=\"contact\" id=\"contact\" aria-labelledby=\"contact-title\">\n    <div class=\"container contact__container\">\n      <div class=\"contact__grid\">\n        <div class=\"contact__media\" data-reveal=\"left\">\n          <img src=\"/{$g.contact_image}\" {$_modx->runSnippet(\'impImg\', [\'src\' => $g.contact_image])} alt=\"{$g.contact_image_alt | esc}\" loading=\"lazy\">\n        </div>\n        <div class=\"contact__body\" data-stagger>\n          <h2 class=\"title\" id=\"contact-title\">{$g.contact_title}</h2>\n          <p class=\"contact__text\">{$g.contact_text}</p>\n          {include \'lead_form\' variant=\'inline\' modal=0}\n        </div>\n      </div>\n    </div>\n  </section>\n',0,NULL,1,'{core_path}components/improvision/elements/chunks/contact.tpl'),
(11,0,0,'footer','Chunk',0,30,0,'{* Footer: socials, legal links, contacts, company menu, services menu, developer credit; then modal + script *}\n{set $exclude = [\n  $_modx->config.site_start, $_modx->config[\'improvision.services_id\'], $_modx->config[\'improvision.privacy_id\'],\n  $_modx->config[\'improvision.terms_id\'], $_modx->config.error_page, $_modx->config[\'improvision.lead_id\']\n]}\n{set $company = $_modx->getResources(\n  [\'parent\' => 0, \'published\' => 1, \'deleted\' => 0, \'context_key\' => $res.context_key, \'id:NOT IN\' => $exclude],\n  [\'sortby\' => \'menuindex\', \'sortdir\' => \'ASC\', \'limit\' => 0]\n)}\n{set $svcFoot = $_modx->getResources(\n  [\'parent\' => $_modx->config[\'improvision.services_id\'], \'published\' => 1, \'deleted\' => 0],\n  [\'sortby\' => \'menuindex\', \'sortdir\' => \'ASC\', \'limit\' => 0]\n)}\n{set $legal = $_modx->getResources(\n  [\'id:IN\' => [$_modx->config[\'improvision.privacy_id\'], $_modx->config[\'improvision.terms_id\'] ], \'published\' => 1, \'deleted\' => 0],\n  [\'sortby\' => \'menuindex\', \'sortdir\' => \'ASC\', \'limit\' => 0]\n)}\n{set $socials = $g.socials | fromJSON}\n<!-- ============================== FOOTER ============================== -->\n<footer class=\"footer\">\n  <div class=\"container footer__grid\">\n    <div class=\"footer__brand\">\n{if $socials}\n      <ul class=\"socials\">\n{foreach $socials as $s}\n        <li><a class=\"socials__link\" href=\"{$s.url}\" target=\"_blank\" rel=\"noopener\">{$s.title}{include \'icon_arrow\'}</a></li>\n{/foreach}\n      </ul>\n{/if}\n      <a class=\"footer__logo\" href=\"{$_modx->makeUrl($_modx->config.site_start, \'\', \'\', \'abs\')}\" aria-label=\"{\'imp.logo_aria\' | lexicon}\">{include \'icon_logo\'}</a>\n      <p class=\"footer__copy\">{\'imp.copyright\' | lexicon : [\'year\' => (\'now\' | date : \'Y\')]}</p>\n{if $legal}\n      <ul class=\"footer__legal\">\n{foreach $legal as $l}\n        <li><a href=\"{$_modx->makeUrl($l.id, \'\', \'\', \'abs\')}\">{$l.menutitle ?: $l.pagetitle}</a></li>\n{/foreach}\n      </ul>\n{/if}\n      <a class=\"footer__dev\" href=\"https://impulse-design.com.ua/\" target=\"_blank\" rel=\"dofollow\">by<span class=\"visually-hidden\"> Impulse Design</span>{include \'icon_impulse\'}</a>\n    </div>\n\n    <div class=\"footer__contacts\">\n      <div class=\"footer__contact\">\n        <span class=\"footer__label\">{\'imp.phone\' | lexicon}</span>\n        <a class=\"footer__phone\" href=\"tel:{$tel}\">{$phone | replace : \' \' : \'&nbsp;\'}</a>\n      </div>\n      <div class=\"footer__contact\">\n        <span class=\"footer__label\">{\'imp.email\' | lexicon}</span>\n        <a href=\"mailto:{$g.email}\">{$g.email}</a>\n      </div>\n      <div class=\"footer__contact\">\n        <span class=\"footer__label\">{\'imp.address\' | lexicon}</span>\n        <address>{$g.address}</address>\n      </div>\n    </div>\n\n    <nav aria-label=\"{\'imp.footer_company\' | lexicon}\">\n      <span class=\"footer__label\">{\'imp.footer_company\' | lexicon}</span>\n      <ul class=\"footer__menu\">\n{foreach $company as $item}\n        <li><a href=\"{$_modx->makeUrl($item.id, \'\', \'\', \'abs\')}\">{$item.menutitle ?: $item.pagetitle}</a></li>\n{/foreach}\n      </ul>\n    </nav>\n\n    <nav aria-label=\"{\'imp.footer_services\' | lexicon}\">\n      <span class=\"footer__label\">{\'imp.footer_services\' | lexicon}</span>\n      <ul class=\"footer__menu\">\n{foreach $svcFoot as $s}\n        <li><a href=\"{$_modx->makeUrl($s.id, \'\', \'\', \'abs\')}\">{$s.menutitle ?: $s.pagetitle}</a></li>\n{/foreach}\n      </ul>\n    </nav>\n  </div>\n</footer>\n\n{include \'modal\'}\n\n<script src=\"/assets/js/main.js\" defer></script>\n',0,NULL,1,'{core_path}components/improvision/elements/chunks/footer.tpl'),
(12,0,0,'header','Chunk',0,30,0,'{* Header: logo, main menu (top-level resources with \"Показувати в меню\"), services dropdown, phone, languages *}\n{set $parents = $_modx->getParentIds($res.id)}\n{set $svcId = $_modx->config[\'improvision.services_id\']}\n{set $menu = $_modx->getResources(\n  [\'parent\' => 0, \'published\' => 1, \'deleted\' => 0, \'hidemenu\' => 0, \'context_key\' => $res.context_key],\n  [\'sortby\' => \'menuindex\', \'sortdir\' => \'ASC\', \'limit\' => 0]\n)}\n{set $services = $_modx->getResources(\n  [\'parent\' => $svcId, \'published\' => 1, \'deleted\' => 0, \'hidemenu\' => 0],\n  [\'sortby\' => \'menuindex\', \'sortdir\' => \'ASC\', \'limit\' => 0]\n)}\n{set $phoneHtml = $phone | replace : \' \' : \'&nbsp;\'}\n<!-- ============================== HEADER ============================== -->\n<header class=\"header\" data-header{if $solid} data-header-solid{/if}>\n  <div class=\"container header__inner\">\n    <a class=\"header__logo\" href=\"{$_modx->makeUrl($_modx->config.site_start, \'\', \'\', \'abs\')}\" aria-label=\"{\'imp.logo_aria\' | lexicon}\">{include \'icon_logo\'}</a>\n\n    <nav class=\"nav\" id=\"site-nav\" aria-label=\"{\'imp.nav_aria\' | lexicon}\" data-nav>\n      <ul class=\"nav__list\">\n{foreach $menu as $item}\n{if $item.id == $svcId}\n{set $isCur = $svcId in $parents}\n        <li class=\"nav__item nav__item--dropdown\" data-dropdown>\n          <button class=\"nav__link nav__toggle{if $isCur} is-current{/if}\" type=\"button\" aria-expanded=\"false\" aria-controls=\"nav-services\" data-dropdown-toggle>\n            {$item.menutitle ?: $item.pagetitle}<span class=\"nav__arrow\">{include \'icon_chevron\'}</span>\n          </button>\n          <ul class=\"nav__sub\" id=\"nav-services\">\n{foreach $services as $s}\n            <li><a href=\"{$_modx->makeUrl($s.id, \'\', \'\', \'abs\')}\"{if $s.id == $res.id} aria-current=\"page\"{/if}>{$s.menutitle ?: $s.pagetitle}</a></li>\n{/foreach}\n          </ul>\n        </li>\n{else}\n{set $isCur = $item.id == $res.id || $item.id in $parents}\n        <li class=\"nav__item\"><a class=\"nav__link{if $isCur} is-current{/if}\" href=\"{$_modx->makeUrl($item.id, \'\', \'\', \'abs\')}\"{if $isCur} aria-current=\"page\"{/if}>{$item.menutitle ?: $item.pagetitle}</a></li>\n{/if}\n{/foreach}\n      </ul>\n      <div class=\"nav__extra\">\n        <a class=\"nav__phone\" href=\"tel:{$tel}\">{$phoneHtml}</a>\n        <a class=\"btn btn--primary\" href=\"#contact\" data-nav-close>{\'imp.request\' | lexicon}{include \'icon_arrow\'}</a>\n      </div>\n    </nav>\n\n    <div class=\"header__actions\">\n      <a class=\"header__phone\" href=\"tel:{$tel}\">{$phoneHtml}</a>\n      <a class=\"header__call\" href=\"tel:{$tel}\" aria-label=\"{\'imp.call_aria\' | lexicon : [\'phone\' => $phone]}\">{include \'icon_phone\'}</a>\n      <div class=\"lang\" data-dropdown>\n{foreach $langs as $l}{if $l.current}\n        <button class=\"lang__current\" type=\"button\" aria-expanded=\"false\" aria-controls=\"lang-list\" aria-label=\"{\'imp.lang_aria\' | lexicon}\" data-dropdown-toggle>{$l.label}{include \'icon_chevron\'}</button>\n{/if}{/foreach}\n        <ul class=\"lang__list\" id=\"lang-list\">\n{foreach $langs as $l}\n          <li><a href=\"{$l.url}\" lang=\"{$l.lang}\" hreflang=\"{$l.lang}\"{if $l.current} aria-current=\"true\"{/if}>{$l.label}</a></li>\n{/foreach}\n        </ul>\n      </div>\n      <a class=\"btn btn--white btn--sm header__cta\" href=\"#contact\">{\'imp.request\' | lexicon}{include \'icon_arrow\'}</a>\n      <button class=\"burger\" type=\"button\" aria-label=\"{\'imp.menu_open\' | lexicon}\" aria-expanded=\"false\" aria-controls=\"site-nav\" data-burger><span></span></button>\n    </div>\n  </div>\n</header>\n',0,NULL,1,'{core_path}components/improvision/elements/chunks/header.tpl'),
(13,0,0,'lead_form','Chunk',0,30,0,'{* Lead form. Params: variant = inline (contact block) | boxed (contacts page, modal); modal = 1 adds data-modal-service *}\n{set $svcList = $_modx->getResources(\n  [\'parent\' => $_modx->config[\'improvision.services_id\'], \'published\' => 1, \'deleted\' => 0],\n  [\'sortby\' => \'menuindex\', \'sortdir\' => \'ASC\', \'limit\' => 0]\n)}\n{set $phonePh = \'imp.form_phone_ph\' | lexicon}\n<form class=\"form{if $variant == \'boxed\'} form--boxed{/if}\" action=\"{$leadUrl}\" method=\"post\" novalidate data-form data-endpoint=\"{$leadUrl}\">\n{if $variant == \'boxed\'}\n            <label class=\"field\">\n              <span class=\"visually-hidden\">{\'imp.form_name\' | lexicon}</span>\n              <input class=\"field__control\" type=\"text\" name=\"name\" placeholder=\"{\'imp.form_name\' | lexicon}\" autocomplete=\"name\" required>\n            </label>\n            <div class=\"form__row\">\n              <label class=\"field\">\n                <span class=\"visually-hidden\">{\'imp.form_phone\' | lexicon}</span>\n                <input class=\"field__control\" type=\"tel\" name=\"phone\" placeholder=\"{$phonePh}\" autocomplete=\"tel\" inputmode=\"tel\" required data-phone-mask>\n              </label>\n              <label class=\"field\">\n                <span class=\"visually-hidden\">{\'imp.form_email\' | lexicon}</span>\n                <input class=\"field__control\" type=\"email\" name=\"email\" placeholder=\"{\'imp.form_email\' | lexicon}\" autocomplete=\"email\">\n              </label>\n            </div>\n{else}\n            <div class=\"form__row\">\n              <label class=\"field\">\n                <span class=\"visually-hidden\">{\'imp.form_name\' | lexicon}</span>\n                <input class=\"field__control\" type=\"text\" name=\"name\" placeholder=\"{\'imp.form_name\' | lexicon}\" autocomplete=\"name\" required>\n              </label>\n              <label class=\"field\">\n                <span class=\"visually-hidden\">{\'imp.form_phone\' | lexicon}</span>\n                <input class=\"field__control\" type=\"tel\" name=\"phone\" placeholder=\"{$phonePh}\" autocomplete=\"tel\" inputmode=\"tel\" required data-phone-mask>\n              </label>\n            </div>\n            <label class=\"field\">\n              <span class=\"visually-hidden\">{\'imp.form_email\' | lexicon}</span>\n              <input class=\"field__control\" type=\"email\" name=\"email\" placeholder=\"{\'imp.form_email\' | lexicon}\" autocomplete=\"email\">\n            </label>\n{/if}\n            <label class=\"field field--select\">\n              <span class=\"visually-hidden\">{\'imp.form_service\' | lexicon}</span>\n              <select class=\"field__control is-placeholder\" name=\"service\" data-select{if $modal} data-modal-service{/if}>\n                <option value=\"\" selected>{\'imp.form_service\' | lexicon}</option>\n{if $variant == \'boxed\'}\n                <option data-visit-option>{\'imp.form_visit\' | lexicon}</option>\n{/if}\n{foreach $svcList as $s}\n                <option>{$s.menutitle ?: $s.pagetitle}</option>\n{/foreach}\n                <option>{\'imp.form_other\' | lexicon}</option>\n              </select>\n            </label>\n            <label class=\"field\">\n              <span class=\"visually-hidden\">{\'imp.form_message\' | lexicon}</span>\n              <textarea class=\"field__control\" name=\"message\" rows=\"{$variant == \'boxed\' ? 3 : 2}\" placeholder=\"{\'imp.form_message\' | lexicon}\"></textarea>\n            </label>\n            <div class=\"form__hp\" aria-hidden=\"true\"><input type=\"text\" name=\"website\" tabindex=\"-1\" autocomplete=\"off\"></div>\n            <input type=\"hidden\" name=\"lang\" value=\"{$lang}\">\n            <input type=\"hidden\" name=\"page\" value=\"{$url}\">\n{if $variant == \'boxed\'}\n            <button class=\"btn btn--primary form__submit\" type=\"submit\">{\'imp.send\' | lexicon}{include \'icon_arrow\'}</button>\n            <p class=\"form__consent form__consent--center\">{\'imp.form_consent\' | lexicon : [\'url\' => $privacyUrl]}</p>\n{else}\n            <div class=\"form__footer\">\n              <button class=\"btn btn--primary\" type=\"submit\">{\'imp.send\' | lexicon}{include \'icon_arrow\'}</button>\n              <p class=\"form__consent\">{\'imp.form_consent\' | lexicon : [\'url\' => $privacyUrl]}</p>\n            </div>\n{/if}\n            <p class=\"form__status\" role=\"status\" aria-live=\"polite\" hidden data-form-status></p>\n          </form>\n',0,NULL,1,'{core_path}components/improvision/elements/chunks/lead_form.tpl'),
(14,0,0,'modal','Chunk',0,30,0,'<!-- ============================== LEAD FORM MODAL ============================== -->\n<dialog class=\"modal\" aria-labelledby=\"modal-title\" data-modal>\n  <div class=\"modal__box\">\n    <button class=\"modal__close\" type=\"button\" aria-label=\"{\'imp.close\' | lexicon}\" data-modal-close>{include \'icon_close\'}</button>\n    <h2 class=\"modal__title\" id=\"modal-title\">{\'imp.request\' | lexicon}</h2>\n    <p class=\"modal__text\">{\'imp.modal_text\' | lexicon}</p>\n    {include \'lead_form\' variant=\'boxed\' modal=1}\n  </div>\n</dialog>\n\n<button class=\"to-top\" type=\"button\" aria-label=\"{\'imp.to_top\' | lexicon}\" data-to-top>{include \'icon_arrow-up\'}</button>\n',0,NULL,1,'{core_path}components/improvision/elements/chunks/modal.tpl'),
(15,0,0,'post_filters','Chunk',0,30,0,'      <div class=\"projects__filters\" role=\"group\" aria-label=\"{\'imp.filter_posts_aria\' | lexicon}\" data-filters data-reveal=\"fade\">\n        <button class=\"chip chip--all is-active\" type=\"button\" data-filter=\"all\" aria-pressed=\"true\">{\'imp.filter_all\' | lexicon}</button>\n{foreach [\'construction\', \'ads\', \'facades\', \'tips\'] as $cat}\n        <button class=\"chip\" type=\"button\" data-filter=\"{$cat}\" aria-pressed=\"false\">{(\'imp.pcat_\' ~ $cat) | lexicon}</button>\n{/foreach}\n      </div>\n',0,NULL,1,'{core_path}components/improvision/elements/chunks/post_filters.tpl'),
(16,0,0,'project_filters','Chunk',0,30,0,'{* Category chips for projects (client-side filter). Categories = options of the \"category\" TV, labels from the lexicon *}\n      <div class=\"projects__filters\" role=\"group\" aria-label=\"{\'imp.filter_projects_aria\' | lexicon}\" data-filters data-reveal=\"fade\">\n        <button class=\"chip chip--all is-active\" type=\"button\" data-filter=\"all\" aria-pressed=\"true\">{\'imp.filter_all\' | lexicon}</button>\n{foreach [\'retail\', \'restaurants\', \'facades\', \'business\'] as $cat}\n        <button class=\"chip{if $cat == \'business\'} chip--wide{/if}\" type=\"button\" data-filter=\"{$cat}\" aria-pressed=\"false\">{(\'imp.cat_\' ~ $cat) | lexicon}</button>\n{/foreach}\n      </div>\n',0,NULL,1,'{core_path}components/improvision/elements/chunks/project_filters.tpl'),
(17,0,0,'service_aside','Chunk',0,30,0,'{set $asideSvc = $_modx->getResources(\n  [\'parent\' => $_modx->config[\'improvision.services_id\'], \'published\' => 1, \'deleted\' => 0],\n  [\'sortby\' => \'menuindex\', \'sortdir\' => \'ASC\', \'limit\' => 0]\n)}\n      <aside class=\"service-aside\">\n        <h2 class=\"service-aside__title\">{\'imp.other_services\' | lexicon}</h2>\n        <nav class=\"service-menu\" aria-label=\"{\'imp.services_list_aria\' | lexicon}\" data-reveal=\"left\">\n          <ul>\n{foreach $asideSvc as $s}\n{if $s.id == $res.id}\n            <li class=\"is-current\"><a href=\"{$_modx->makeUrl($s.id, \'\', \'\', \'abs\')}\" aria-current=\"page\">{$s.menutitle ?: $s.pagetitle}</a></li>\n{else}\n            <li><a href=\"{$_modx->makeUrl($s.id, \'\', \'\', \'abs\')}\">{$s.menutitle ?: $s.pagetitle}</a></li>\n{/if}\n{/foreach}\n          </ul>\n        </nav>\n{include \'consult_card\' side=\'left\'}\n      </aside>\n',0,NULL,1,'{core_path}components/improvision/elements/chunks/service_aside.tpl'),
(18,0,0,'stats_items','Chunk',0,30,0,'{foreach ($g.stats | fromJSON) as $s}\n          <div class=\"stats__item\">\n            <dt class=\"stats__label\">{$s.label | replace : \"\\n\" : \'<br> \'}</dt>\n            <dd class=\"stats__value\"><span data-count=\"{$s.value}\">{$s.value}</span>{if $s.plus}+{/if}{if $s.unit} <small>{$s.unit | replace : \'²\' : \'<sup>2</sup>\'}</small>{/if}</dd>\n          </div>\n{/foreach}\n',0,NULL,1,'{core_path}components/improvision/elements/chunks/stats_items.tpl'),
(19,0,0,'steps','Chunk',0,30,0,'{foreach ($g.steps | fromJSON) as $s}\n        <li class=\"step-card\">\n          <img class=\"step-card__icon\" src=\"/{$s.icon}\" {$_modx->runSnippet(\'impImg\', [\'src\' => $s.icon])} alt=\"\" loading=\"lazy\">\n          <h3 class=\"step-card__title\">{$s.title}</h3>\n          <p class=\"step-card__text\">{$s.text}</p>\n        </li>\n{/foreach}\n',0,NULL,1,'{core_path}components/improvision/elements/chunks/steps.tpl'),
(20,0,0,'why','Chunk',0,30,0,'  <!-- ============================== WHY US ============================== -->\n  <section class=\"why\" aria-labelledby=\"why-title\">\n    <img class=\"why__bg\" src=\"/{$g.why_bg}\" {$_modx->runSnippet(\'impImg\', [\'src\' => $g.why_bg])} alt=\"\" loading=\"lazy\">\n    <div class=\"container why__grid\">\n      <h2 class=\"title title--light\" id=\"why-title\" data-reveal>{$g.why_title | replace : \"\\n\" : \'<br class=\"br-desk\"> \'}</h2>\n      <ul class=\"why__list\" data-stagger>\n{foreach ($g.why | fromJSON) as $w index=$i}\n        <li class=\"why-card\">\n          <span class=\"why-card__num\" aria-hidden=\"true\">{($i + 1) < 10 ? \'0\' : \'\'}{$i + 1}</span>\n          <h3 class=\"why-card__title\">{$w.title}</h3>\n          <p class=\"why-card__text\">{$w.text}</p>\n        </li>\n{/foreach}\n      </ul>\n    </div>\n  </section>\n',0,NULL,1,'{core_path}components/improvision/elements/chunks/why.tpl'),
(21,0,0,'icon_arrow-left','SVG-іконка',0,31,0,'<svg class=\"icon icon--long\" viewBox=\"0 0 17 10\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M16.5 5H.5M5 .5.5 5 5 9.5\" fill=\"none\" stroke=\"currentColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\"/></svg>',0,NULL,1,'{core_path}components/improvision/elements/icons/arrow-left.svg'),
(22,0,0,'icon_arrow-right','SVG-іконка',0,31,0,'<svg class=\"icon icon--long\" viewBox=\"0 0 17 10\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M.5 5h16M12 .5 16.5 5 12 9.5\" fill=\"none\" stroke=\"currentColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\"/></svg>',0,NULL,1,'{core_path}components/improvision/elements/icons/arrow-right.svg'),
(23,0,0,'icon_arrow-up','SVG-іконка',0,31,0,'<svg class=\"icon\" viewBox=\"0 0 16 16\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M8 14.5v-13M2.5 7 8 1.5 13.5 7\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"1.6\" stroke-linecap=\"round\" stroke-linejoin=\"round\"/></svg>',0,NULL,1,'{core_path}components/improvision/elements/icons/arrow-up.svg'),
(24,0,0,'icon_arrow','SVG-іконка',0,31,0,'<svg class=\"icon\" viewBox=\"0 0 12 12\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M.5 11.5 11.5.5M5.5.5h6v6\" fill=\"none\" stroke=\"currentColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\"/></svg>',0,NULL,1,'{core_path}components/improvision/elements/icons/arrow.svg'),
(25,0,0,'icon_chevron','SVG-іконка',0,31,0,'<svg viewBox=\"0 0 10 5\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M.7.7 5 4.3 9.3.7\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"1.4\" stroke-linecap=\"round\" stroke-linejoin=\"round\"/></svg>',0,NULL,1,'{core_path}components/improvision/elements/icons/chevron.svg'),
(26,0,0,'icon_close','SVG-іконка',0,31,0,'<svg class=\"icon\" viewBox=\"0 0 16 16\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M2 2l12 12M14 2 2 14\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"1.6\" stroke-linecap=\"round\"/></svg>',0,NULL,1,'{core_path}components/improvision/elements/icons/close.svg'),
(27,0,0,'icon_impulse','SVG-іконка',0,31,0,'<svg class=\"icon\" width=\"31\" height=\"24\" viewBox=\"0 0 31 24\" fill=\"none\" aria-hidden=\"true\" focusable=\"false\"><defs><linearGradient id=\"impulse-grad\" x1=\"0\" y1=\"23.5\" x2=\"33.6889\" y2=\"18.4548\" gradientUnits=\"userSpaceOnUse\"><stop stop-color=\"#BFA660\"/><stop offset=\"1\" stop-color=\"#BFAB73\"/></linearGradient></defs><path fill=\"url(#impulse-grad)\" fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M20 6C20 2.96243 22.4624 0.5 25.5 0.5C28.5376 0.5 31 2.96243 31 6H28C28 4.61929 26.8807 3.5 25.5 3.5C24.1193 3.5 23 4.61929 23 6V10V14V18.5C23 21.2614 20.7614 23.5 18 23.5C15.2386 23.5 13 21.2614 13 18.5V15.5714V13.4286V10C13 9.17157 12.3284 8.5 11.5 8.5C10.6716 8.5 10 9.17157 10 10V18.5V19H9.97531C9.72445 21.5267 7.59267 23.5 5 23.5C2.23858 23.5 0 21.2614 0 18.5V15.4286H3V18.5C3 19.6046 3.89543 20.5 5 20.5C6.1041 20.5 6.99925 19.6053 7 18.5014V18.5V10C7 7.51472 9.01472 5.5 11.5 5.5C13.9853 5.5 16 7.51472 16 10V13.4286V15.5714V18.5C16 19.6046 16.8954 20.5 18 20.5C19.1046 20.5 20 19.6046 20 18.5V14V10V6ZM1 10C0.447715 10 0 10.4477 0 11V12C0 12.5523 0.447715 13 1 13H2C2.55228 13 3 12.5523 3 12V11C3 10.4477 2.55228 10 2 10H1Z\"/></svg>\n',0,NULL,1,'{core_path}components/improvision/elements/icons/impulse.svg'),
(28,0,0,'icon_logo','SVG-іконка',0,31,0,'<svg aria-hidden=\"true\" focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 325 57\" fill=\"none\"><path fill=\"currentColor\" d=\"M325 45.07L320.39 45.07L320.39 27.15C320.39 23.09 319.48 19.95 317.65 17.72C315.86 15.55 313.23 14.44 309.76 14.4C306.73 14.4 303.81 15.33 301.83 17.72C300 19.94 299.09 23.09 299.09 27.15L299.09 45.07L294.48 45.07L294.48 27.15C294.48 25.55 294.54 24.11 294.86 22.52C295.49 19.02 296.87 16.21 299.02 14.09C302.23 10.93 305.81 10.26 310.11 10.23C314.39 10.23 317.83 11.51 320.45 14.09C322.6 16.21 323.99 19.02 324.61 22.52C324.92 24.06 324.99 25.47 324.99 27.02L324.99 45.08L325 45.07\"/><path fill=\"currentColor\" d=\"M245.48 45.07L240.88 45.07L240.88 11.03L245.48 11.03L245.48 45.07\"/><path fill=\"currentColor\" d=\"M234.21 35.05C234.21 38.2 233.23 40.8 231.28 42.83C229.33 44.87 226.66 45.88 223.25 45.88C219.85 45.88 217.27 44.78 215.4 42.58C213.7 40.59 212.85 38.08 212.85 35.05L217.46 35.05C217.29 36.84 217.79 38.39 218.96 39.72C220.12 41.05 221.67 41.72 223.63 41.72C225.58 41.72 226.96 41.14 228.02 40C229.08 38.86 229.61 37.46 229.61 35.8C229.61 33.94 228.93 32.49 227.56 31.45C226.68 30.79 225.17 30.08 223.01 29.34C220.31 28.43 218.38 27.51 217.22 26.6C215.14 24.94 214.11 22.68 214.11 19.82C214.11 16.95 215 14.8 216.78 12.97C218.57 11.14 220.96 10.23 223.94 10.23C226.68 10.23 228.94 11.11 230.7 12.88C232.47 14.64 233.35 16.85 233.35 19.51L228.74 19.51C228.74 18.01 228.28 16.79 227.37 15.83C226.46 14.88 225.27 14.4 223.82 14.4C222.25 14.4 221 14.88 220.09 15.83C219.17 16.79 218.72 17.99 218.72 19.44C218.72 21.18 219.42 22.58 220.83 23.61C221.74 24.28 223.26 24.94 225.38 25.61C228.12 26.48 230.09 27.41 231.29 28.41C233.24 29.98 234.22 32.21 234.22 35.06L234.21 35.05\"/><path fill=\"currentColor\" d=\"M206.18 45.07L201.57 45.07L201.57 11.03L206.18 11.03L206.18 45.07\"/><path fill=\"currentColor\" d=\"M63.09 45.07L58.48 45.07L58.48 25.56C58.48 25.09 58.47 24.62 58.43 24.16C58.24 21.29 57.41 18.41 55.11 16.45C53.48 15.07 51.5 14.36 49.19 14.34C46.43 14.34 43.99 15.29 42.29 17.52C40.79 19.47 40.05 22.16 40.05 25.56L40.05 45.08L35.44 45.08L35.44 25.56C35.44 22.16 34.69 19.47 33.2 17.52C32.43 16.52 31.48 15.72 30.33 15.18C29.95 15 29.57 14.86 29.17 14.74C28.32 14.49 27.38 14.36 26.36 14.34C24.13 14.34 22.08 15.01 20.37 16.46C18.08 18.42 17.24 21.29 17.05 24.17C17.02 24.63 17 25.1 17 25.56L17 45.08L12.39 45.08L12.39 25.41C12.45 19.98 14.09 15.91 17.31 13.22C19.76 11.19 22.71 10.17 26.15 10.17C29.07 10.17 31.8 10.83 34.18 12.56C35.69 13.62 36.87 14.98 37.73 16.65C38.6 14.98 39.79 13.62 41.28 12.56C43.78 10.76 46.62 10.13 49.63 10.17C52.94 10.24 55.78 11.25 58.15 13.22C61.9 16.35 63.07 20.96 63.07 25.67L63.07 45.08L63.09 45.07\"/><path fill=\"currentColor\" d=\"M5.74 45.07L1.13 45.07L1.13 11.03L5.74 11.03L5.74 45.07\"/><path fill=\"currentColor\" fill-rule=\"evenodd\" d=\"M3.43 6.87C5.33 6.87 6.87 5.33 6.87 3.44C6.87 1.54 5.33 0 3.43 0C1.54 0 0 1.54 0 3.43C0 5.33 1.54 6.86 3.43 6.86L3.43 6.87\"/><path fill=\"currentColor\" fill-rule=\"evenodd\" d=\"M243.18 6.87C245.08 6.87 246.61 5.33 246.61 3.44C246.61 1.54 245.08 0.01 243.18 0.01C241.28 0.01 239.75 1.54 239.75 3.44C239.75 5.33 241.28 6.87 243.18 6.87\"/><path fill=\"#197de1\" d=\"M126.36 14.89C123.83 14.89 121.67 15.69 119.88 17.26C117.77 19.13 116.71 21.68 116.71 24.91L116.71 45.07L112.1 45.07L112.1 24.91C112.1 21.77 113.28 17.72 115.63 15C118.33 11.88 122.48 10.29 126.35 10.29L126.35 14.89L126.36 14.89\"/><path fill=\"#197de1\" fill-rule=\"evenodd\" d=\"M145.1 10.23C154.95 10.23 162.94 18.21 162.94 28.05C162.94 37.9 154.95 45.88 145.1 45.88C135.24 45.88 127.26 37.9 127.26 28.05C127.26 18.21 135.24 10.23 145.1 10.23M145.1 14.86C152.39 14.86 158.3 20.77 158.3 28.05C158.3 35.34 152.39 41.25 145.1 41.25C137.81 41.25 131.9 35.34 131.9 28.05C131.9 20.77 137.81 14.86 145.1 14.86\"/><path fill=\"#197de1\" fill-rule=\"evenodd\" d=\"M87.51 10.18C97.37 10.18 105.36 18.17 105.36 28.02C105.36 37.87 97.37 45.86 87.51 45.86C82.27 45.86 77.56 43.61 74.3 40.01L74.3 57L69.66 57L69.66 28.02C69.66 18.17 77.65 10.18 87.51 10.18L87.51 10.18M87.51 14.81C94.81 14.81 100.72 20.73 100.72 28.01C100.72 35.3 94.8 41.21 87.51 41.21C80.22 41.21 74.3 35.3 74.3 28.01C74.3 20.73 80.22 14.81 87.51 14.81\"/><path fill=\"currentColor\" fill-rule=\"evenodd\" d=\"M269.98 10.23C279.83 10.23 287.82 18.21 287.82 28.05C287.82 37.9 279.84 45.88 269.98 45.88C260.13 45.88 252.14 37.9 252.14 28.05C252.14 18.21 260.13 10.23 269.98 10.23M269.98 14.86C277.28 14.86 283.19 20.77 283.19 28.05C283.19 35.34 277.28 41.25 269.98 41.25C262.69 41.25 256.78 35.34 256.78 28.05C256.78 20.77 262.69 14.86 269.98 14.86\"/><path fill=\"currentColor\" d=\"M182.84 45.07L197.35 11.03L192.36 11.03L180.41 39.08L168.45 11.03L163.47 11.03L177.98 45.07L182.84 45.07\"/><path fill=\"currentColor\" fill-rule=\"evenodd\" d=\"M203.88 6.87C205.78 6.87 207.31 5.33 207.31 3.44C207.31 1.54 205.78 0.01 203.88 0.01C201.98 0.01 200.45 1.54 200.45 3.44C200.45 5.33 201.98 6.87 203.88 6.87\"/></svg>',0,NULL,1,'{core_path}components/improvision/elements/icons/logo.svg'),
(29,0,0,'icon_phone','SVG-іконка',0,31,0,'<svg class=\"icon\" viewBox=\"0 0 32 32\" aria-hidden=\"true\" focusable=\"false\"><path fill=\"currentColor\" d=\"M26.67 18.67C26.01 17.98 25.21 17.61 24.36 17.61C23.51 17.61 22.71 17.97 22.01 18.66L19.85 20.82C19.67 20.72 19.49 20.63 19.32 20.54C19.08 20.42 18.84 20.3 18.65 20.18C16.62 18.9 14.78 17.22 13.01 15.05C12.15 13.97 11.58 13.06 11.16 12.14C11.72 11.63 12.24 11.09 12.75 10.58C12.94 10.39 13.13 10.19 13.32 10C14.76 8.56 14.76 6.7 13.32 5.27L11.46 3.4C11.24 3.19 11.02 2.97 10.82 2.75C10.41 2.33 9.98 1.89 9.53 1.48C8.87 0.82 8.07 0.47 7.24 0.47C6.4 0.47 5.59 0.82 4.91 1.48C4.9 1.49 4.9 1.49 4.9 1.49L2.57 3.84C1.69 4.71 1.19 5.78 1.08 7.02C0.92 9.01 1.51 10.87 1.96 12.09C3.07 15.08 4.72 17.85 7.2 20.82C10.2 24.39 13.8 27.22 17.93 29.21C19.5 29.95 21.6 30.84 23.95 30.99C24.1 30.99 24.25 31 24.38 31C25.97 31 27.29 30.43 28.34 29.3C28.34 29.29 28.36 29.28 28.36 29.27C28.72 28.84 29.13 28.45 29.56 28.03C29.86 27.75 30.16 27.46 30.45 27.15C31.13 26.45 31.49 25.62 31.49 24.78C31.49 23.94 31.12 23.12 30.43 22.44L26.67 18.67M29.12 25.87C29.12 25.87 29.12 25.88 29.12 25.87C28.86 26.16 28.58 26.42 28.29 26.71C27.84 27.13 27.39 27.57 26.97 28.07C26.27 28.81 25.46 29.16 24.39 29.16C24.29 29.16 24.18 29.16 24.08 29.15C22.04 29.02 20.15 28.23 18.73 27.55C14.86 25.68 11.46 23.02 8.63 19.65C6.29 16.84 4.73 14.24 3.7 11.45C3.06 9.75 2.83 8.42 2.93 7.17C3 6.37 3.31 5.71 3.87 5.14L6.21 2.81C6.55 2.49 6.9 2.32 7.25 2.32C7.68 2.32 8.03 2.58 8.25 2.8C8.26 2.81 8.26 2.81 8.27 2.82C8.69 3.21 9.09 3.61 9.5 4.04C9.72 4.26 9.94 4.48 10.15 4.71L12.02 6.57C12.75 7.3 12.75 7.97 12.02 8.69C11.83 8.89 11.63 9.09 11.43 9.28C10.86 9.87 10.31 10.42 9.72 10.95C9.7 10.96 9.69 10.97 9.68 10.98C9.09 11.57 9.2 12.15 9.33 12.54C9.33 12.56 9.34 12.58 9.35 12.6C9.83 13.77 10.52 14.88 11.56 16.2L11.56 16.21C13.45 18.53 15.45 20.35 17.65 21.73C17.93 21.91 18.21 22.06 18.49 22.19C18.73 22.31 18.97 22.43 19.17 22.55C19.19 22.57 19.22 22.59 19.25 22.6C19.48 22.72 19.7 22.77 19.93 22.77C20.49 22.77 20.85 22.42 20.97 22.3L23.31 19.96C23.54 19.73 23.91 19.45 24.34 19.45C24.77 19.45 25.12 19.72 25.33 19.95C25.34 19.96 25.34 19.96 25.34 19.96L29.12 23.73C29.82 24.43 29.82 25.15 29.12 25.87\"/></svg>',0,NULL,1,'{core_path}components/improvision/elements/icons/phone.svg'),
(30,0,0,'icon_zoom','SVG-іконка',0,31,0,'<svg class=\"icon\" viewBox=\"0 0 20 20\" aria-hidden=\"true\" focusable=\"false\"><circle cx=\"8.5\" cy=\"8.5\" r=\"6.5\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"1.6\"/><path d=\"M13.3 13.3 19 19M8.5 5.5v6M5.5 8.5h6\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"1.6\" stroke-linecap=\"round\"/></svg>',0,NULL,1,'{core_path}components/improvision/elements/icons/zoom.svg'),
(31,0,0,'project_specs','Chunk',0,30,0,'{if $specs}\n        <section class=\"specs\" aria-labelledby=\"specs-title\" data-reveal=\"{$side}\">\n          <h2 class=\"specs__title\" id=\"specs-title\">{\'imp.specs\' | lexicon}</h2>\n          <dl class=\"specs__list\">\n{foreach $specs as $s}\n            <div class=\"specs__row\"><dt>{$s.label}</dt><dd>{$s.value}</dd></div>\n{/foreach}\n          </dl>\n        </section>\n{/if}\n',0,NULL,1,'{core_path}components/improvision/elements/chunks/project_specs.tpl');
/*!40000 ALTER TABLE `modx_site_htmlsnippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_plugin_events`
--

DROP TABLE IF EXISTS `modx_site_plugin_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL DEFAULT 0,
  `event` varchar(191) NOT NULL DEFAULT '',
  `priority` int(10) NOT NULL DEFAULT 0,
  `propertyset` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`pluginid`,`event`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_plugin_events`
--

LOCK TABLES `modx_site_plugin_events` WRITE;
/*!40000 ALTER TABLE `modx_site_plugin_events` DISABLE KEYS */;
INSERT INTO `modx_site_plugin_events` VALUES
(1,'OnSiteRefresh',0,0),
(1,'OnWebPagePrerender',-101,0),
(2,'OnDocFormPrerender',0,0),
(2,'OnTVInputPropertiesList',0,0),
(2,'OnTVInputRenderList',0,0),
(3,'OnDocFormPrerender',0,0),
(4,'OnFileManagerUpload',0,0),
(5,'OnContextRemove',0,0),
(5,'OnContextSave',0,0),
(5,'OnDocFormPrerender',0,0),
(5,'OnDocFormSave',0,0),
(5,'OnEmptyTrash',0,0),
(5,'OnResourceDuplicate',0,0),
(5,'OnResourceSort',0,0),
(5,'OnSiteRefresh',0,0),
(6,'OnHandleRequest',0,0);
/*!40000 ALTER TABLE `modx_site_plugin_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_plugins`
--

DROP TABLE IF EXISTS `modx_site_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_site_plugins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `cache_type` tinyint(1) NOT NULL DEFAULT 0,
  `plugincode` mediumtext NOT NULL,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL,
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `disabled` (`disabled`),
  KEY `static` (`static`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_plugins`
--

LOCK TABLES `modx_site_plugins` WRITE;
/*!40000 ALTER TABLE `modx_site_plugins` DISABLE KEYS */;
INSERT INTO `modx_site_plugins` VALUES
(1,1,0,'pdoTools','',0,1,0,'/** @var \\MODX\\Revolution\\modX $modx */\n\nswitch ($modx->event->name) {\n    case \'OnSiteRefresh\':\n        /** @var ModxPro\\PdoTools\\CoreTools $coreTools */\n        if ($coreTools = $modx->services->get(\'pdotools\')) {\n            if ($coreTools->clearFileCache()) {\n                $modx->log(modX::LOG_LEVEL_INFO, $modx->lexicon(\'refresh_default\') . \': pdoTools\');\n            }\n        }\n        break;\n    case \'OnWebPagePrerender\':\n        /** @var ModxPro\\PdoTools\\Parsing\\Parser $parser */\n        $parser = $modx->getParser();\n        if ($parser instanceof ModxPro\\PdoTools\\Parsing\\Parser) {\n            foreach ($parser->ignores as $key => $val) {\n                $modx->resource->_output = str_replace($key, $val, $modx->resource->_output);\n            }\n        }\n        break;\n}',0,NULL,0,'',0,'core/components/pdotools/elements/plugins/plugin.pdotools.php'),
(2,0,0,'MIGX','',0,2,0,'$corePath = $modx->getOption(\'migx.core_path\',null,$modx->getOption(\'core_path\').\'components/migx/\');\r\n$assetsUrl = $modx->getOption(\'migx.assets_url\', null, $modx->getOption(\'assets_url\') . \'components/migx/\');\r\nswitch ($modx->event->name) {\r\n    case \'OnTVInputRenderList\':\r\n        $modx->event->output($corePath.\'elements/tv/input/\');\r\n        break;\r\n    case \'OnTVInputPropertiesList\':\r\n        $modx->event->output($corePath.\'elements/tv/inputoptions/\');\r\n        break;\r\n\r\n        case \'OnDocFormPrerender\':\r\n        $modx->controller->addCss($assetsUrl.\'css/mgr.css\');\r\n        break; \r\n \r\n    /*          \r\n    case \'OnTVOutputRenderList\':\r\n        $modx->event->output($corePath.\'elements/tv/output/\');\r\n        break;\r\n    case \'OnTVOutputRenderPropertiesList\':\r\n        $modx->event->output($corePath.\'elements/tv/properties/\');\r\n        break;\r\n    \r\n    case \'OnDocFormPrerender\':\r\n        $assetsUrl = $modx->getOption(\'colorpicker.assets_url\',null,$modx->getOption(\'assets_url\').\'components/colorpicker/\'); \r\n        $modx->regClientStartupHTMLBlock(\'<script type=\"text/javascript\">\r\n        Ext.onReady(function() {\r\n            \r\n        });\r\n        </script>\');\r\n        $modx->regClientStartupScript($assetsUrl.\'sources/ColorPicker.js\');\r\n        $modx->regClientStartupScript($assetsUrl.\'sources/ColorMenu.js\');\r\n        $modx->regClientStartupScript($assetsUrl.\'sources/ColorPickerField.js\');		\r\n        $modx->regClientCSS($assetsUrl.\'resources/css/colorpicker.css\');\r\n        break;\r\n     */\r\n}\r\nreturn;',0,'a:0:{}',0,'',0,''),
(3,0,0,'MIGXquip','',0,2,0,'$quipCorePath = $modx->getOption(\'quip.core_path\', null, $modx->getOption(\'core_path\') . \'components/quip/\');\r\n//$assetsUrl = $modx->getOption(\'migx.assets_url\', null, $modx->getOption(\'assets_url\') . \'components/migx/\');\r\nswitch ($modx->event->name)\r\n{\r\n\r\n    case \'OnDocFormPrerender\':\r\n\r\n        \r\n        require_once $quipCorePath . \'model/quip/quip.class.php\';\r\n        $modx->quip = new Quip($modx);\r\n\r\n        $modx->lexicon->load(\'quip:default\');\r\n        $quipconfig = $modx->toJson($modx->quip->config);\r\n        \r\n        $js = \"\r\n        Quip.config = Ext.util.JSON.decode(\'{$quipconfig}\');\r\n        console.log(Quip);\";\r\n\r\n        //$modx->controller->addCss($assetsUrl . \'css/mgr.css\');\r\n        $modx->controller->addJavascript($modx->quip->config[\'jsUrl\'].\'quip.js\');\r\n        $modx->controller->addHtml(\'<script type=\"text/javascript\">\' . $js . \'</script>\');\r\n        break;\r\n\r\n}\r\nreturn;',0,'a:0:{}',1,'',0,''),
(4,0,0,'migxResizeOnUpload','',0,2,0,'/**\n * migxResizeOnUpload Plugin\n *\n * Events: OnFileManagerUpload\n * Author: Bruno Perner <b.perner@gmx.de>\n * Modified to read multiple configs from mediasource-property\n * \n * First Author: Vasiliy Naumkin <bezumkin@yandex.ru>\n * Required: PhpThumbOf snippet for resizing images\n * \n * Example: mediasource - property \'resizeConfig\':\n * [{\"alias\":\"origin\",\"w\":\"500\",\"h\":\"500\",\"far\":1},{\"alias\":\"thumb\",\"w\":\"150\",\"h\":\"150\",\"far\":1}]\n */\n\nif ($modx->event->name != \'OnFileManagerUpload\') {\n    return;\n}\n\n\n$file = $modx->event->params[\'files\'][\'file\'];\n$directory = $modx->event->params[\'directory\'];\n\nif ($file[\'error\'] != 0) {\n    return;\n}\n\n$name = $file[\'name\'];\n//$extensions = explode(\',\', $modx->getOption(\'upload_images\'));\n\n$source = $modx->event->params[\'source\'];\n\nif ($source instanceof modMediaSource) {\n    //$dirTree = $modx->getOption(\'dirtree\', $_REQUEST, \'\');\n    //$modx->setPlaceholder(\'docid\', $resource_id);\n    $source->initialize();\n    $basePath = str_replace(\'/./\', \'/\', $source->getBasePath());\n    //$cachepath = $cachepath . $dirTree;\n    $baseUrl = $modx->getOption(\'site_url\') . $source->getBaseUrl();\n    //$baseUrl = $baseUrl . $dirTree;\n    $sourceProperties = $source->getPropertyList();\n\n    //echo \'<pre>\' . print_r($sourceProperties, 1) . \'</pre>\';\n    //$allowedExtensions = $modx->getOption(\'allowedFileTypes\', $sourceProperties, \'\');\n    //$allowedExtensions = empty($allowedExtensions) ? \'jpg,jpeg,png,gif\' : $allowedExtensions;\n    //$maxFilesizeMb = $modx->getOption(\'maxFilesizeMb\', $sourceProperties, \'8\');\n    //$maxFiles = $modx->getOption(\'maxFiles\', $sourceProperties, \'0\');\n    //$thumbX = $modx->getOption(\'thumbX\', $sourceProperties, \'100\');\n    //$thumbY = $modx->getOption(\'thumbY\', $sourceProperties, \'100\');\n    $resizeConfigs = $modx->getOption(\'resizeConfigs\', $sourceProperties, \'\');\n    $resizeConfigs = $modx->fromJson($resizeConfigs);\n    $thumbscontainer = $modx->getOption(\'thumbscontainer\', $sourceProperties, \'thumbs/\');\n    $imageExtensions = $modx->getOption(\'imageExtensions\', $sourceProperties, \'jpg,jpeg,png,gif,JPG\');\n    $imageExtensions = explode(\',\', $imageExtensions);\n    //$uniqueFilenames = $modx->getOption(\'uniqueFilenames\', $sourceProperties, false);\n    //$onImageUpload = $modx->getOption(\'onImageUpload\', $sourceProperties, \'\');\n    //$onImageRemove = $modx->getOption(\'onImageRemove\', $sourceProperties, \'\');\n    $cleanalias = $modx->getOption(\'cleanFilename\', $sourceProperties, false);\n\n}\n\nif (is_array($resizeConfigs) && count($resizeConfigs) > 0) {\n    foreach ($resizeConfigs as $rc) {\n        if (isset($rc[\'alias\'])) {\n            $filePath = $basePath . $directory;\n            $filePath = str_replace(\'//\',\'/\',$filePath);\n            if ($rc[\'alias\'] == \'origin\') {\n                $thumbPath = $filePath;\n            } else {\n                $thumbPath = $filePath . $rc[\'alias\'] . \'/\';\n                $permissions = octdec(\'0\' . (int)($modx->getOption(\'new_folder_permissions\', null, \'755\', true)));\n                if (!@mkdir($thumbPath, $permissions, true)) {\n                    $modx->log(MODX_LOG_LEVEL_ERROR, sprintf(\'[migxResourceMediaPath]: could not create directory %s).\', $thumbPath));\n                } else {\n                    chmod($thumbPath, $permissions);\n                }\n\n            }\n\n\n            $filename = $filePath . $name;\n            $thumbname = $thumbPath . $name;\n            $ext = substr(strrchr($name, \'.\'), 1);\n            if (in_array($ext, $imageExtensions)) {\n                $sizes = getimagesize($filename);\n                echo $sizes[0]; \n                //$format = substr($sizes[\'mime\'], 6);\n                if ($sizes[0] > $rc[\'w\'] || $sizes[1] > $rc[\'h\']) {\n                    if ($sizes[0] < $rc[\'w\']) {\n                        $rc[\'w\'] = $sizes[0];\n                    }\n                    if ($sizes[1] < $rc[\'h\']) {\n                        $rc[\'h\'] = $sizes[1];\n                    }\n                    $type = $sizes[0] > $sizes[1] ? \'landscape\' : \'portrait\';\n                    if (isset($rc[\'far\']) && $rc[\'far\'] == \'1\' && isset($rc[\'w\']) && isset($rc[\'h\'])) {\n                        if ($type = \'landscape\') {\n                            unset($rc[\'h\']);\n                        }else {\n                            unset($rc[\'w\']);\n                        }\n                    }\n\n                    $options = \'\';\n                    foreach ($rc as $k => $v) {\n                        if ($k != \'alias\') {\n                            $options .= \'&\' . $k . \'=\' . $v;\n                        }\n                    }\n                    $resized = $modx->runSnippet(\'phpthumbof\', array(\'input\' => $filePath . $name, \'options\' => $options));\n                    rename(MODX_BASE_PATH . substr($resized, 1), $thumbname);\n                }\n            }\n\n\n        }\n    }\n}',0,'a:0:{}',0,'',0,''),
(5,0,0,'Babel','Links and synchronizes multilingual resources.',0,3,0,'/**\n * Babel Plugin\n *\n * @package babel\n * @subpackage plugin\n *\n * @var modX $modx\n * @var array $scriptProperties\n */\n\n$className = \'mikrobi\\Babel\\Plugins\\Events\\\\\' . $modx->event->name;\n\n$corePath = $modx->getOption(\'babel.core_path\', null, $modx->getOption(\'core_path\') . \'components/babel/\');\n/** @var Babel $babel */\n$babel = $modx->getService(\'babel\', Babel::class, $corePath . \'model/babel/\', [\n    \'core_path\' => $corePath\n]);\n\nif ($babel) {\n    if (class_exists($className)) {\n        $handler = new $className($modx, $scriptProperties);\n        if (get_class($handler) == $className) {\n            $handler->run();\n        } else {\n            $modx->log(xPDO::LOG_LEVEL_ERROR, $className . \' could not be initialized!\', \'\', \'Babel Plugin\');\n        }\n    } else {\n        $modx->log(xPDO::LOG_LEVEL_ERROR, $className . \' was not found!\', \'\', \'Babel Plugin\');\n    }\n}\n\nreturn;',0,'a:0:{}',0,'',0,''),
(6,0,0,'impRouter','Мовні версії: /en/, /ru/ → контексти en, ru',0,32,0,'/**\n * impRouter — language versions by URL prefix (Babel contexts):\n *   /…      → context \"web\" (Ukrainian)\n *   /en/…   → context \"en\"\n *   /ru/…   → context \"ru\"\n * Also keeps site_url/base_url of the language contexts in line with the current domain,\n * so the site works on any host without editing context settings.\n * Event: OnHandleRequest.\n *\n * @var modX $modx\n */\nif ($modx->event->name !== \'OnHandleRequest\') {\n    return;\n}\n$prefixes = [\'en\' => \'en\', \'ru\' => \'ru\']; // URL prefix => context key\n\n// 1. site_url / base_url of every language context follow the current host\n$paths = [\'web\' => \'\'] + array_combine(array_values($prefixes), array_map(function ($p) { return $p . \'/\'; }, array_keys($prefixes)));\nforeach ($paths as $ctxKey => $path) {\n    if ($ctx = $modx->getContext($ctxKey)) {\n        $ctx->config[\'site_url\'] = MODX_SITE_URL . $path;\n        $ctx->config[\'base_url\'] = MODX_BASE_URL . $path;\n    }\n}\nif ($modx->context->get(\'key\') === \'mgr\') {\n    return;\n}\n\n// 2. route /en/… and /ru/… to their contexts\n$param = $modx->getOption(\'request_param_alias\', null, \'q\');\n$q = isset($_REQUEST[$param]) ? ltrim((string)$_REQUEST[$param], \'/\') : \'\';\n$first = explode(\'/\', $q, 2)[0];\nif ($first === \'\' || !isset($prefixes[$first])) {\n    return;\n}\nif ($q === $first) {\n    // \"/en\" → \"/en/\"\n    $qs = $_GET;\n    unset($qs[$param]);\n    $modx->sendRedirect(MODX_BASE_URL . $first . \'/\' . ($qs ? \'?\' . http_build_query($qs) : \'\'), [\'responseCode\' => \'HTTP/1.1 301 Moved Permanently\']);\n}\n$modx->switchContext($prefixes[$first]);\n$rest = (string)substr($q, strlen($first) + 1);\n$_REQUEST[$param] = $_GET[$param] = $rest;',0,NULL,0,'',1,'{core_path}components/improvision/elements/plugins/impRouter.php');
/*!40000 ALTER TABLE `modx_site_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_snippets`
--

DROP TABLE IF EXISTS `modx_site_snippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_site_snippets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `cache_type` tinyint(1) NOT NULL DEFAULT 0,
  `snippet` mediumtext DEFAULT NULL,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `moduleguid` (`moduleguid`),
  KEY `static` (`static`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_snippets`
--

LOCK TABLES `modx_site_snippets` WRITE;
/*!40000 ALTER TABLE `modx_site_snippets` DISABLE KEYS */;
INSERT INTO `modx_site_snippets` VALUES
(1,1,0,'pdoResources','',0,1,0,'use ModxPro\\PdoTools\\Fetch;\nuse MODX\\Revolution\\modSnippet;\n\n/** @var array $scriptProperties */\n/** @var \\MODX\\Revolution\\modX $modx */\n\nif (isset($parents) && $parents === \'\') {\n    $scriptProperties[\'parents\'] = $modx->resource->id;\n}\nif (!empty($returnIds)) {\n    $scriptProperties[\'return\'] = $return = \'ids\';\n} elseif (!isset($return)) {\n    $scriptProperties[\'return\'] = $return = \'chunks\';\n}\n\n// Adding extra parameters into special place so we can put them in a results\n/** @var modSnippet $snippet */\n$additionalPlaceholders = $properties = [];\nif (isset($this) && $this instanceof modSnippet && $this->get(\'properties\')) {\n    $properties = $this->get(\'properties\');\n} elseif ($snippet = $modx->getObject(modSnippet::class, [\'name\' => \'pdoResources\'])) {\n    $properties = $snippet->get(\'properties\');\n}\nif (!empty($properties)) {\n    foreach ($scriptProperties as $k => $v) {\n        if (!isset($properties[$k])) {\n            $additionalPlaceholders[$k] = $v;\n        }\n    }\n}\n$scriptProperties[\'additionalPlaceholders\'] = $additionalPlaceholders;\n\n$modx->services[\'pdotools_config\'] = $scriptProperties;\n$pdoFetch = $modx->services->get(Fetch::class);\n$pdoFetch->addTime(\'pdoTools loaded\');\n$output = $pdoFetch->run();\n\nif ($modx->user->isAuthenticated(\'mgr\') && !empty($showLog)) {\n    $modx->setPlaceholder(\'pdoResourcesLog\', print_r($pdoFetch->getTime(), true));\n}\n\n// Return output\nif (!empty($returnIds)) {\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n} elseif ($return === \'data\') {\n    return $output;\n} elseif (!empty($toSeparatePlaceholders)) {\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\n} else {\n    if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\n        $output = $pdoFetch->getChunk($tplWrapper, array_merge($additionalPlaceholders, [\'output\' => $output]),\n            $pdoFetch->config(\'fastMode\'));\n    }\n\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n}',0,'a:47:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"returnIds\";a:7:{s:4:\"name\";s:9:\"returnIds\";s:4:\"desc\";s:23:\"pdotools_prop_returnIds\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:11:\"publishedon\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"sortbyTV\";a:7:{s:4:\"name\";s:8:\"sortbyTV\";s:4:\"desc\";s:22:\"pdotools_prop_sortbyTV\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"sortbyTVType\";a:7:{s:4:\"name\";s:12:\"sortbyTVType\";s:4:\"desc\";s:26:\"pdotools_prop_sortbyTVType\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:4:\"DESC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"sortdirTV\";a:7:{s:4:\"name\";s:9:\"sortdirTV\";s:4:\"desc\";s:23:\"pdotools_prop_sortdirTV\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"includeContent\";a:7:{s:4:\"name\";s:14:\"includeContent\";s:4:\"desc\";s:28:\"pdotools_prop_includeContent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"tvFilters\";a:7:{s:4:\"name\";s:9:\"tvFilters\";s:4:\"desc\";s:23:\"pdotools_prop_tvFilters\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:21:\"tvFiltersAndDelimiter\";a:7:{s:4:\"name\";s:21:\"tvFiltersAndDelimiter\";s:4:\"desc\";s:35:\"pdotools_prop_tvFiltersAndDelimiter\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\",\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:20:\"tvFiltersOrDelimiter\";a:7:{s:4:\"name\";s:20:\"tvFiltersOrDelimiter\";s:4:\"desc\";s:34:\"pdotools_prop_tvFiltersOrDelimiter\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:2:\"||\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"idx\";a:7:{s:4:\"name\";s:3:\"idx\";s:4:\"desc\";s:17:\"pdotools_prop_idx\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"first\";a:7:{s:4:\"name\";s:5:\"first\";s:4:\"desc\";s:19:\"pdotools_prop_first\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"last\";a:7:{s:4:\"name\";s:4:\"last\";s:4:\"desc\";s:18:\"pdotools_prop_last\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplFirst\";a:7:{s:4:\"name\";s:8:\"tplFirst\";s:4:\"desc\";s:22:\"pdotools_prop_tplFirst\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplLast\";a:7:{s:4:\"name\";s:7:\"tplLast\";s:4:\"desc\";s:21:\"pdotools_prop_tplLast\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplOdd\";a:7:{s:4:\"name\";s:6:\"tplOdd\";s:4:\"desc\";s:20:\"pdotools_prop_tplOdd\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplCondition\";a:7:{s:4:\"name\";s:12:\"tplCondition\";s:4:\"desc\";s:26:\"pdotools_prop_tplCondition\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplOperator\";a:7:{s:4:\"name\";s:11:\"tplOperator\";s:4:\"desc\";s:25:\"pdotools_prop_tplOperator\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:10:{i:0;a:2:{s:4:\"text\";s:11:\"is equal to\";s:5:\"value\";s:2:\"==\";}i:1;a:2:{s:4:\"text\";s:15:\"is not equal to\";s:5:\"value\";s:2:\"!=\";}i:2;a:2:{s:4:\"text\";s:9:\"less than\";s:5:\"value\";s:1:\"<\";}i:3;a:2:{s:4:\"text\";s:21:\"less than or equal to\";s:5:\"value\";s:2:\"<=\";}i:4;a:2:{s:4:\"text\";s:24:\"greater than or equal to\";s:5:\"value\";s:2:\">=\";}i:5;a:2:{s:4:\"text\";s:8:\"is empty\";s:5:\"value\";s:5:\"empty\";}i:6;a:2:{s:4:\"text\";s:12:\"is not empty\";s:5:\"value\";s:6:\"!empty\";}i:7;a:2:{s:4:\"text\";s:7:\"is null\";s:5:\"value\";s:4:\"null\";}i:8;a:2:{s:4:\"text\";s:11:\"is in array\";s:5:\"value\";s:7:\"inarray\";}i:9;a:2:{s:4:\"text\";s:10:\"is between\";s:5:\"value\";s:7:\"between\";}}s:5:\"value\";s:2:\"==\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"conditionalTpls\";a:7:{s:4:\"name\";s:15:\"conditionalTpls\";s:4:\"desc\";s:29:\"pdotools_prop_conditionalTpls\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:22:\"toSeparatePlaceholders\";a:7:{s:4:\"name\";s:22:\"toSeparatePlaceholders\";s:4:\"desc\";s:36:\"pdotools_prop_toSeparatePlaceholders\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"loadModels\";a:7:{s:4:\"name\";s:10:\"loadModels\";s:4:\"desc\";s:24:\"pdotools_prop_loadModels\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}','',0,'core/components/pdotools/elements/snippets/snippet.pdoresources.php'),
(2,1,0,'pdoUsers','',0,1,0,'use ModxPro\\PdoTools\\Fetch;\nuse MODX\\Revolution\\modUser;\nuse MODX\\Revolution\\modUserGroup;\nuse MODX\\Revolution\\modUserGroupMember;\nuse MODX\\Revolution\\modUserGroupRole;\nuse MODX\\Revolution\\modUserProfile;\n\n/** @var array $scriptProperties */\n/** @var \\MODX\\Revolution\\modX $modx */\n\nif (!empty($returnIds)) {\n    $scriptProperties[\'return\'] = $return = \'ids\';\n} elseif (!isset($return)) {\n    $scriptProperties[\'return\'] = $return = \'chunks\';\n}\n$modx->services[\'pdotools_config\'] = $scriptProperties;\n$pdoFetch = $modx->services->get(Fetch::class);\n$pdoFetch->addTime(\'pdoTools loaded\');\n\n$class = modUser::class;\n$alias_class = $modx->getAlias($class);\n$profile = modUserProfile::class;\n$alias_profile = $modx->getAlias($profile);\n$member = modUserGroupMember::class;\n$alias_member = $modx->getAlias($member);\n\n// Start building \"Where\" expression\n$where = [];\nif (empty($showInactive)) {\n    $where[$alias_class . \'.active\'] = 1;\n}\nif (empty($showBlocked)) {\n    $where[$alias_profile . \'.blocked\'] = 0;\n}\n\n// Add users profiles and groups\n$innerJoin = [\n    $profile => [\'class\' => $profile, \'alias\' => $alias_profile, \'on\' => \"$alias_class.id = $alias_profile.internalKey\"],\n];\n\n// Filter by users, groups and roles\n$tmp = [\n    \'users\' => [\n        \'class\' => $class,\n        \'name\' => \'username\',\n        \'join\' => $alias_class . \'.id\',\n    ],\n    \'groups\' => [\n        \'class\' => modUserGroup::class,\n        \'name\' => \'name\',\n        \'join\' => $alias_member . \'.user_group\',\n    ],\n    \'roles\' => [\n        \'class\' => modUserGroupRole::class,\n        \'name\' => \'name\',\n        \'join\' => $alias_member . \'.role\',\n    ],\n];\nforeach ($tmp as $k => $p) {\n    if (!empty($$k)) {\n        $$k = array_map(\'trim\', explode(\',\', $$k));\n        ${$k . \'_in\'} = ${$k . \'_out\'} = $fetch_in = $fetch_out = [];\n        foreach ($$k as $v) {\n            if (is_numeric($v)) {\n                if ($v[0] == \'-\') {\n                    ${$k . \'_out\'}[] = abs($v);\n                } else {\n                    ${$k . \'_in\'}[] = abs($v);\n                }\n            } else {\n                if ($v[0] == \'-\') {\n                    $fetch_out[] = $v;\n                } else {\n                    $fetch_in[] = $v;\n                }\n            }\n        }\n\n        if (!empty($fetch_in) || !empty($fetch_out)) {\n            $q = $modx->newQuery($p[\'class\'], [$p[\'name\'] . \':IN\' => array_merge($fetch_in, $fetch_out)]);\n            $q->select(\'id,\' . $p[\'name\']);\n            $tstart = microtime(true);\n            if ($q->prepare() && $q->stmt->execute()) {\n                $modx->queryTime += microtime(true) - $tstart;\n                $modx->executedQueries++;\n                while ($row = $q->stmt->fetch(PDO::FETCH_ASSOC)) {\n                    if (in_array($row[$p[\'name\']], $fetch_in)) {\n                        ${$k . \'_in\'}[] = $row[\'id\'];\n                    } else {\n                        ${$k . \'_out\'}[] = $row[\'id\'];\n                    }\n                }\n            }\n        }\n\n        if (!empty(${$k . \'_in\'})) {\n            $where[$p[\'join\'] . \':IN\'] = ${$k . \'_in\'};\n        }\n        if (!empty(${$k . \'_out\'})) {\n            $where[$p[\'join\'] . \':NOT IN\'] = ${$k . \'_out\'};\n        }\n    }\n}\n\nif (!empty($groups_in) || !empty($groups_out) || !empty($roles_in) || !empty($roles_out)) {\n    $innerJoin[$alias_member] = [\'class\' => $member, \'alias\' => $alias_member, \'on\' => \"$alias_class.id = $alias_member.member\"];\n}\n\n// Fields to select\n$select = [\n    $profile => implode(\',\', array_diff(array_keys($modx->getFieldMeta($profile)), [\'sessionid\'])),\n    $class => implode(\',\', array_diff(array_keys($modx->getFieldMeta($class)), [\'password\', \'cachepwd\', \'salt\', \'session_stale\', \'remote_key\', \'remote_data\', \'hash_class\'])),\n];\n\n// Add custom parameters\nforeach ([\'where\', \'innerJoin\', \'select\'] as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n$default = [\n    \'class\' => $class,\n    \'innerJoin\' => $innerJoin,\n    \'where\' => $where,\n    \'select\' => $select,\n    \'groupby\' => $alias_class . \'.id\',\n    \'sortby\' => $alias_class . \'.id\',\n    \'sortdir\' => \'ASC\',\n    \'fastMode\' => false,\n    \'return\' => $return,\n    \'disableConditions\' => true,\n];\n\nif (!empty($users_in) && (empty($scriptProperties[\'sortby\']) || $scriptProperties[\'sortby\'] == $alias_class . \'.id\')) {\n    $scriptProperties[\'sortby\'] = \"find_in_set(`$alias_class`.`id`,\'\" . implode(\',\', $users_in) . \"\')\";\n    $scriptProperties[\'sortdir\'] = \'\';\n}\n\n// Merge all properties and run!\n$pdoFetch->addTime(\'Query parameters ready\');\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n$output = $pdoFetch->run();\n\n$log = \'\';\nif ($modx->user->isAuthenticated(\'mgr\') && !empty($showLog)) {\n    $modx->setPlaceholder(\'pdoUsersLog\',  print_r($pdoFetch->getTime(), true));\n}\n\n// Return output\nif (!empty($returnIds)) {\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n} elseif ($return === \'data\') {\n    return $output;\n} elseif (!empty($toSeparatePlaceholders)) {\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\n} else {\n    if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\n        $output = $pdoFetch->getChunk($tplWrapper, [\'output\' => $output], $pdoFetch->config(\'fastMode\'));\n    }\n\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n}',0,'a:30:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"returnIds\";a:7:{s:4:\"name\";s:9:\"returnIds\";s:4:\"desc\";s:23:\"pdotools_prop_returnIds\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:10:\"modUser.id\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"groups\";a:7:{s:4:\"name\";s:6:\"groups\";s:4:\"desc\";s:20:\"pdotools_prop_groups\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"roles\";a:7:{s:4:\"name\";s:5:\"roles\";s:4:\"desc\";s:19:\"pdotools_prop_roles\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"users\";a:7:{s:4:\"name\";s:5:\"users\";s:4:\"desc\";s:19:\"pdotools_prop_users\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"showInactive\";a:7:{s:4:\"name\";s:12:\"showInactive\";s:4:\"desc\";s:26:\"pdotools_prop_showInactive\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showBlocked\";a:7:{s:4:\"name\";s:11:\"showBlocked\";s:4:\"desc\";s:25:\"pdotools_prop_showBlocked\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"idx\";a:7:{s:4:\"name\";s:3:\"idx\";s:4:\"desc\";s:17:\"pdotools_prop_idx\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"first\";a:7:{s:4:\"name\";s:5:\"first\";s:4:\"desc\";s:19:\"pdotools_prop_first\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"last\";a:7:{s:4:\"name\";s:4:\"last\";s:4:\"desc\";s:18:\"pdotools_prop_last\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplFirst\";a:7:{s:4:\"name\";s:8:\"tplFirst\";s:4:\"desc\";s:22:\"pdotools_prop_tplFirst\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplLast\";a:7:{s:4:\"name\";s:7:\"tplLast\";s:4:\"desc\";s:21:\"pdotools_prop_tplLast\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplOdd\";a:7:{s:4:\"name\";s:6:\"tplOdd\";s:4:\"desc\";s:20:\"pdotools_prop_tplOdd\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplCondition\";a:7:{s:4:\"name\";s:12:\"tplCondition\";s:4:\"desc\";s:26:\"pdotools_prop_tplCondition\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplOperator\";a:7:{s:4:\"name\";s:11:\"tplOperator\";s:4:\"desc\";s:25:\"pdotools_prop_tplOperator\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:10:{i:0;a:2:{s:4:\"text\";s:11:\"is equal to\";s:5:\"value\";s:2:\"==\";}i:1;a:2:{s:4:\"text\";s:15:\"is not equal to\";s:5:\"value\";s:2:\"!=\";}i:2;a:2:{s:4:\"text\";s:9:\"less than\";s:5:\"value\";s:1:\"<\";}i:3;a:2:{s:4:\"text\";s:21:\"less than or equal to\";s:5:\"value\";s:2:\"<=\";}i:4;a:2:{s:4:\"text\";s:24:\"greater than or equal to\";s:5:\"value\";s:2:\">=\";}i:5;a:2:{s:4:\"text\";s:8:\"is empty\";s:5:\"value\";s:5:\"empty\";}i:6;a:2:{s:4:\"text\";s:12:\"is not empty\";s:5:\"value\";s:6:\"!empty\";}i:7;a:2:{s:4:\"text\";s:7:\"is null\";s:5:\"value\";s:4:\"null\";}i:8;a:2:{s:4:\"text\";s:11:\"is in array\";s:5:\"value\";s:7:\"inarray\";}i:9;a:2:{s:4:\"text\";s:10:\"is between\";s:5:\"value\";s:7:\"between\";}}s:5:\"value\";s:2:\"==\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"conditionalTpls\";a:7:{s:4:\"name\";s:15:\"conditionalTpls\";s:4:\"desc\";s:29:\"pdotools_prop_conditionalTpls\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:22:\"toSeparatePlaceholders\";a:7:{s:4:\"name\";s:22:\"toSeparatePlaceholders\";s:4:\"desc\";s:36:\"pdotools_prop_toSeparatePlaceholders\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}','',0,'core/components/pdotools/elements/snippets/snippet.pdousers.php'),
(3,1,0,'pdoCrumbs','',0,1,0,'use ModxPro\\PdoTools\\Fetch;\nuse MODX\\Revolution\\modResource;\nuse MODX\\Revolution\\modWebLink;\n\n/** @var array $scriptProperties */\n/** @var \\MODX\\Revolution\\modX $modx */\n\n\n$modx->services[\'pdotools_config\'] = $scriptProperties;\n$pdoFetch = $modx->services->get(Fetch::class);\n\n$pdoFetch->addTime(\'pdoTools loaded\');\n\nif (!isset($from) || $from == \'\') {\n    $from = 0;\n}\nif (empty($to)) {\n    $to = $modx->resource->id;\n}\nif (empty($direction)) {\n    $direction = \'ltr\';\n}\nif ($outputSeparator == \'&nbsp;&rarr;&nbsp;\' && $direction == \'rtl\') {\n    $outputSeparator = \'&nbsp;&larr;&nbsp;\';\n}\n$limit = $limit ?: 10;\n\n// For compatibility with BreadCrumb\nif (!empty($maxCrumbs)) {\n    $limit = $maxCrumbs;\n}\nif (!empty($containerTpl)) {\n    $tplWrapper = $containerTpl;\n}\nif (!empty($currentCrumbTpl)) {\n    $tplCurrent = $currentCrumbTpl;\n}\nif (!empty($linkCrumbTpl)) {\n    $scriptProperties[\'tpl\'] = $linkCrumbTpl;\n}\nif (!empty($maxCrumbTpl)) {\n    $tplMax = $maxCrumbTpl;\n}\nif (isset($showBreadCrumbsAtHome)) {\n    $showAtHome = $showBreadCrumbsAtHome;\n}\nif (isset($showHomeCrumb)) {\n    $showHome = $showHomeCrumb;\n}\nif (isset($showCurrentCrumb)) {\n    $showCurrent = $showCurrentCrumb;\n}\n// --\n$fastMode = !empty($fastMode);\n$siteStart = (int)$modx->getOption(\'siteStart\', $scriptProperties, $modx->getOption(\'site_start\'));\n\nif (empty($showAtHome) && $modx->resource->id === $siteStart) {\n    return \'\';\n}\n\n$class = modResource::class;\n$alias = $modx->getAlias($class);\n// Start building \"Where\" expression\n$where = [];\nif (empty($showUnpublished) && empty($showUnPub)) {\n    $where[\'published\'] = 1;\n}\nif (empty($showHidden)) {\n    $where[\'hidemenu\'] = 0;\n}\nif (empty($showDeleted)) {\n    $where[\'deleted\'] = 0;\n}\nif (!empty($hideContainers) && empty($showContainer)) {\n    $where[\'isfolder\'] = 0;\n}\n\n$resource = ($to == $modx->resource->id)\n    ? $modx->resource\n    : $modx->getObject($class, $to);\n\nif (!$resource) {\n    $message = \'Could not build breadcrumbs to resource \"\' . $to . \'\"\';\n\n    return \'\';\n}\n\nif (!empty($customParents)) {\n    $customParents = is_array($customParents) ? $customParents : array_map(\'trim\', explode(\',\', $customParents));\n    $parents = is_array($customParents) ? array_reverse($customParents) : [];\n}\nif (empty($parents)) {\n    $parents = $modx->getParentIds($resource->id, $limit, [\'context\' => $resource->get(\'context_key\')]);\n}\nif (!empty($showHome)) {\n    $parents[] = $siteStart;\n}\n\n$ids = [$resource->id];\nforeach ($parents as $parent) {\n    if (!empty($parent)) {\n        $ids[] = $parent;\n    }\n    if (!empty($from) && $parent == $from) {\n        break;\n    }\n}\n$where[\'id:IN\'] = $ids;\n\nif (!empty($exclude)) {\n    $where[\'id:NOT IN\'] = array_map(\'trim\', explode(\',\', $exclude));\n}\n\n// Fields to select\n$resourceColumns = array_keys($modx->getFieldMeta($class));\n$select = [$alias => implode(\',\', $resourceColumns)];\n\n// Add custom parameters\nforeach ([\'where\', \'select\'] as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n// Default parameters\n$default = [\n    \'class\' => $class,\n    \'where\' => $where,\n    \'select\' => $select,\n    \'groupby\' => $alias . \'.id\',\n    \'sortby\' => \"find_in_set(`$alias`.`id`,\'\" . implode(\',\', $ids) . \"\')\",\n    \'sortdir\' => \'\',\n    \'return\' => \'data\',\n    \'totalVar\' => \'pdocrumbs.total\',\n    \'disableConditions\' => true,\n];\n\n// Merge all properties and run!\n$pdoFetch->addTime(\'Query parameters ready\');\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n$rows = $pdoFetch->run();\n\n$output = [];\nif (!empty($rows) && is_array($rows)) {\n    if (strtolower($direction) == \'ltr\') {\n        $rows = array_reverse($rows);\n    }\n\n    foreach ($rows as $row) {\n        if (!empty($useWeblinkUrl) && $row[\'class_key\'] === modWebLink::class) {\n            $row[\'link\'] = is_numeric(trim($row[\'content\'], \'[]~ \'))\n                ? $pdoFetch->makeUrl((int)trim($row[\'content\'], \'[]~ \'), $row)\n                : $row[\'content\'];\n        } else {\n            $row[\'link\'] = $pdoFetch->makeUrl($row[\'id\'], $row);\n        }\n\n        $row = array_merge(\n            $scriptProperties,\n            $row,\n            [\'idx\' => $pdoFetch->idx++]\n        );\n        if (empty($row[\'menutitle\'])) {\n            $row[\'menutitle\'] = $row[\'pagetitle\'];\n        }\n\n        if (isset($return) && $return === \'data\') {\n            $output[] = $row;\n            continue;\n        }\n        if ($row[\'id\'] == $resource->id && empty($showCurrent)) {\n            continue;\n        } elseif ($row[\'id\'] == $resource->id && !empty($tplCurrent)) {\n            $tpl = $tplCurrent;\n        } elseif ($row[\'id\'] == $siteStart && !empty($tplHome)) {\n            $tpl = $tplHome;\n        } else {\n            $tpl = $pdoFetch->defineChunk($row);\n        }\n        $output[] = empty($tpl)\n            ? \'<pre>\' . $pdoFetch->getChunk(\'\', $row) . \'</pre>\'\n            : $pdoFetch->getChunk($tpl, $row, $fastMode);\n    }\n}\nif (isset($return) && $return === \'data\') {\n    return $output;\n}\n\n$pdoFetch->addTime(\'Chunks processed\');\n\nif (count($output) == 1 && !empty($hideSingle)) {\n    $pdoFetch->addTime(\'The only result was hidden, because the parameter \"hideSingle\" activated\');\n    $output = [];\n}\n\n$log = \'\';\nif ($modx->user->isAuthenticated(\'mgr\') && (bool)$showLog) {\n    $modx->setPlaceholder(\'pdoCrumbsLog\', print_r($pdoFetch->getTime(), true));\n}\n\nif (!empty($toSeparatePlaceholders)) {\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\n} else {\n    $output = implode($outputSeparator, $output);\n    if ($pdoFetch->idx >= $limit && !empty($tplMax) && !empty($output)) {\n        $output = ($direction == \'ltr\')\n            ? $pdoFetch->getChunk($tplMax, [], $fastMode) . $output\n            : $output . $pdoFetch->getChunk($tplMax, [], $fastMode);\n    }\n    $output .= $log;\n\n    if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\n        $output = $pdoFetch->getChunk($tplWrapper, [\'output\' => $output, \'crumbs\' => $output], $fastMode);\n    }\n\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n}',0,'a:31:{s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"from\";a:7:{s:4:\"name\";s:4:\"from\";s:4:\"desc\";s:18:\"pdotools_prop_from\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:2:\"to\";a:7:{s:4:\"name\";s:2:\"to\";s:4:\"desc\";s:16:\"pdotools_prop_to\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"customParents\";a:7:{s:4:\"name\";s:13:\"customParents\";s:4:\"desc\";s:27:\"pdotools_prop_customParents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"exclude\";a:7:{s:4:\"name\";s:7:\"exclude\";s:4:\"desc\";s:21:\"pdotools_prop_exclude\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:79:\"@INLINE <li class=\"breadcrumb-item\"><a href=\"[[+link]]\">[[+menutitle]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplCurrent\";a:7:{s:4:\"name\";s:10:\"tplCurrent\";s:4:\"desc\";s:24:\"pdotools_prop_tplCurrent\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:62:\"@INLINE <li class=\"breadcrumb-item active\">[[+menutitle]]</li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplMax\";a:7:{s:4:\"name\";s:6:\"tplMax\";s:4:\"desc\";s:20:\"pdotools_prop_tplMax\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:65:\"@INLINE <li class=\"breadcrumb-item disabled\">&nbsp;...&nbsp;</li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplHome\";a:7:{s:4:\"name\";s:7:\"tplHome\";s:4:\"desc\";s:21:\"pdotools_prop_tplHome\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:47:\"@INLINE <ol class=\"breadcrumb\">[[+output]]</ol>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showCurrent\";a:7:{s:4:\"name\";s:11:\"showCurrent\";s:4:\"desc\";s:25:\"pdotools_prop_showCurrent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"showHome\";a:7:{s:4:\"name\";s:8:\"showHome\";s:4:\"desc\";s:22:\"pdotools_prop_showHome\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showAtHome\";a:7:{s:4:\"name\";s:10:\"showAtHome\";s:4:\"desc\";s:24:\"pdotools_prop_showAtHome\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"hideSingle\";a:7:{s:4:\"name\";s:10:\"hideSingle\";s:4:\"desc\";s:24:\"pdotools_prop_hideSingle\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"direction\";a:7:{s:4:\"name\";s:9:\"direction\";s:4:\"desc\";s:23:\"pdotools_prop_direction\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:5:\"value\";s:3:\"ltr\";s:4:\"text\";s:19:\"Left To Right (ltr)\";}i:1;a:2:{s:5:\"value\";s:3:\"rtl\";s:4:\"text\";s:19:\"Right To Left (rtl)\";}}s:5:\"value\";s:3:\"ltr\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}','',0,'core/components/pdotools/elements/snippets/snippet.pdocrumbs.php'),
(4,1,0,'pdoField','',0,1,0,'use ModxPro\\PdoTools\\Fetch;\nuse MODX\\Revolution\\modResource;\n\n/** @var array $scriptProperties */\n/** @var modX $modx */\n\nif (!empty($input)) {\n    $id = $input;\n}\nif (!isset($default)) {\n    $default = \'\';\n}\nif (!isset($output)) {\n    $output = \'\';\n}\n$class = $modx->getOption(\'class\', $scriptProperties, modResource::class, true);\n$alias = $modx->getAlias($class);\n$isResource = $class === modResource::class || in_array($class, $modx->getDescendants(modResource::class));\n\nif (empty($field)) {\n    $field = \'pagetitle\';\n}\n$top = isset($top) ? (int)$top : 0;\n$topLevel = isset($topLevel) ? (int)$topLevel : 0;\nif (!empty($options) && is_string($options)) {\n    $options = trim($options);\n    if ($options[0] == \'{\') {\n        $tmp = json_decode($options, true);\n        if (is_array($tmp)) {\n            extract($tmp, EXTR_OVERWRITE);\n            $scriptProperties = array_merge($scriptProperties, $tmp);\n        }\n    } else {\n        $field = $options;\n    }\n}\nif (empty($id)) {\n    if (!empty($modx->resource)) {\n        $id = $modx->resource->id;\n    } else {\n        return \'You must specify an id of \' . $alias;\n    }\n}\nif (!isset($context)) {\n    $context = \'\';\n}\n\n// Gets the parent from root of context, if specified\nif ($isResource && $id && ($top || $topLevel)) {\n    // Select needed context for parents functionality\n    if (empty($context)) {\n        $q = $modx->newQuery($class, $id);\n        $q->select(\'context_key\');\n        $tstart = microtime(true);\n        if ($q->prepare() && $q->stmt->execute()) {\n            $modx->queryTime += microtime(true) - $tstart;\n            $modx->executedQueries++;\n            $context = $q->stmt->fetch(PDO::FETCH_COLUMN);\n        }\n    }\n    // Original pdoField logic\n    if (empty($ultimate)) {\n        if ($topLevel) {\n            $pids = $modx->getChildIds(0, $topLevel, [\'context\' => $context]);\n            $pid = $id;\n            while (true) {\n                $tmp = $modx->getParentIds($pid, 1, [\'context\' => $context]);\n                if (!$pid = current($tmp)) {\n                    break;\n                } elseif (in_array($pid, $pids)) {\n                    $id = $pid;\n                    break;\n                }\n            }\n        } elseif ($top) {\n            $pid = $id;\n            for ($i = 1; $i <= $top; $i++) {\n                $tmp = $modx->getParentIds($pid, 1, [\'context\' => $context]);\n                if (!$pid = current($tmp)) {\n                    break;\n                }\n                $id = $pid;\n            }\n        }\n    }\n    // UltimateParent logic\n    // https://github.com/splittingred/UltimateParent/blob/develop/core/components/ultimateparent/snippet.ultimateparent.php\n    elseif ($id != $top) {\n        $pid = $id;\n        $pids = $modx->getParentIds($id, 10, [\'context\' => $context]);\n        if (!$topLevel || count($pids) >= $topLevel) {\n            while ($parentIds = $modx->getParentIds($id, 1, [\'context\' => $context])) {\n                $pid = array_pop($parentIds);\n                if ($pid == $top) {\n                    break;\n                }\n                $id = $pid;\n                $parentIds = $modx->getParentIds($id, 10, [\'context\' => $context]);\n                if ($topLevel && count($parentIds) < $topLevel) {\n                    break;\n                }\n            }\n        }\n    }\n}\n\n$modx->services[\'pdotools_config\'] = $scriptProperties;\n$pdoFetch = $modx->services->get(Fetch::class);\n$pdoFetch->addTime(\'pdoTools loaded\');\n\n$where = [$alias . \'.id\' => $id];\n// Add custom parameters\nforeach ([\'where\'] as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n// Fields to select\n$resourceColumns = array_keys($modx->getFieldMeta($class));\n$field = strtolower($field);\nif (in_array($field, $resourceColumns)) {\n    $scriptProperties[\'select\'] = [$alias => $field];\n    $scriptProperties[\'includeTVs\'] = \'\';\n} elseif ($isResource) {\n    $scriptProperties[\'select\'] = [$alias => \'id\'];\n    $scriptProperties[\'includeTVs\'] = $field;\n}\n// Additional default field\nif (!empty($default)) {\n    $default = strtolower($default);\n    if (in_array($default, $resourceColumns)) {\n        $scriptProperties[\'select\'][$alias] .= \',\' . $default;\n    } elseif ($isResource) {\n        $scriptProperties[\'includeTVs\'] = empty($scriptProperties[\'includeTVs\'])\n            ? $default\n            : $scriptProperties[\'includeTVs\'] . \',\' . $default;\n    }\n}\n\n$scriptProperties[\'disableConditions\'] = true;\nif ($row = $pdoFetch->getArray($class, $where, $scriptProperties)) {\n    foreach ($row as $k => $v) {\n        if (strtolower($k) == $field && $v != \'\') {\n            $output = $v;\n            break;\n        }\n    }\n\n    if (empty($output) && !empty($default)) {\n        foreach ($row as $k => $v) {\n            if (strtolower($k) == $default && $v != \'\') {\n                $output = $v;\n                break;\n            }\n        }\n    }\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n} else {\n    return $output;\n}',0,'a:12:{s:2:\"id\";a:7:{s:4:\"name\";s:2:\"id\";s:4:\"desc\";s:16:\"pdotools_prop_id\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"field\";a:7:{s:4:\"name\";s:5:\"field\";s:4:\"desc\";s:19:\"pdotools_prop_field\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"pagetitle\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:27:\"pdotools_prop_field_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"top\";a:7:{s:4:\"name\";s:3:\"top\";s:4:\"desc\";s:17:\"pdotools_prop_top\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"topLevel\";a:7:{s:4:\"name\";s:8:\"topLevel\";s:4:\"desc\";s:22:\"pdotools_prop_topLevel\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"default\";a:7:{s:4:\"name\";s:7:\"default\";s:4:\"desc\";s:27:\"pdotools_prop_field_default\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"output\";a:7:{s:4:\"name\";s:6:\"output\";s:4:\"desc\";s:26:\"pdotools_prop_field_output\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"ultimate\";a:7:{s:4:\"name\";s:8:\"ultimate\";s:4:\"desc\";s:22:\"pdotools_prop_ultimate\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}','',0,'core/components/pdotools/elements/snippets/snippet.pdofield.php'),
(5,1,0,'pdoSitemap','',0,1,0,'use ModxPro\\PdoTools\\Fetch;\nuse MODX\\Revolution\\modResource;\nuse MODX\\Revolution\\modWebLink;\n\n/** @var array $scriptProperties */\n/** @var \\MODX\\Revolution\\modX $modx */\n\n$modx->services[\'pdotools_config\'] = [];\n$pdoFetch = $modx->services->get(Fetch::class);\n$pdoFetch->addTime(\'pdoTools loaded\');\n\n// Default variables\nif (empty($tpl)) {\n    $tpl = \"@INLINE \\n<url>\\n\\t<loc>[[+url]]</loc>\\n\\t<lastmod>[[+date]]</lastmod>\\n\\t<changefreq>[[+update]]</changefreq>\\n\\t<priority>[[+priority]]</priority>\\n</url>\";\n}\nif (empty($tplWrapper)) {\n    $tplWrapper = \"@INLINE <?xml version=\\\"1.0\\\" encoding=\\\"[[++modx_charset]]\\\"?>\\n<urlset xmlns=\\\"[[+schema]]\\\">\\n[[+output]]\\n</urlset>\";\n}\nif (empty($sitemapSchema)) {\n    $sitemapSchema = \'http://www.sitemaps.org/schemas/sitemap/0.9\';\n}\nif (empty($outputSeparator)) {\n    $outputSeparator = \"\\n\";\n}\nif (empty($cacheKey)) {\n    $scriptProperties[\'cacheKey\'] = \'sitemap/\' . substr(md5(json_encode($scriptProperties)), 0, 6);\n}\n\n// Convert parameters from GoogleSiteMap if exists\nif (!empty($itemTpl)) {\n    $tpl = $itemTpl;\n}\nif (!empty($containerTpl)) {\n    $tplWrapper = $containerTpl;\n}\nif (!empty($allowedtemplates)) {\n    $scriptProperties[\'templates\'] = $allowedtemplates;\n}\nif (!empty($maxDepth)) {\n    $scriptProperties[\'depth\'] = $maxDepth;\n}\nif (isset($hideDeleted)) {\n    $scriptProperties[\'showDeleted\'] = !$hideDeleted;\n}\nif (isset($published)) {\n    $scriptProperties[\'showUnpublished\'] = !$published;\n}\nif (isset($searchable)) {\n    $scriptProperties[\'showUnsearchable\'] = !$searchable;\n}\nif (!empty($googleSchema)) {\n    $sitemapSchema = $googleSchema;\n}\nif (!empty($excludeResources)) {\n    $tmp = array_map(\'trim\', explode(\',\', $excludeResources));\n    foreach ($tmp as $v) {\n        if (!empty($scriptProperties[\'resources\'])) {\n            $scriptProperties[\'resources\'] .= \',-\' . $v;\n        } else {\n            $scriptProperties[\'resources\'] = \'-\' . $v;\n        }\n    }\n}\nif (!empty($excludeChildrenOf)) {\n    $tmp = array_map(\'trim\', explode(\',\', $excludeChildrenOf));\n    foreach ($tmp as $v) {\n        if (!empty($scriptProperties[\'parents\'])) {\n            $scriptProperties[\'parents\'] .= \',-\' . $v;\n        } else {\n            $scriptProperties[\'parents\'] = \'-\' . $v;\n        }\n    }\n}\nif (!empty($startId)) {\n    if (!empty($scriptProperties[\'parents\'])) {\n        $scriptProperties[\'parents\'] .= \',\' . $startId;\n    } else {\n        $scriptProperties[\'parents\'] = $startId;\n    }\n}\nif (!empty($sortBy)) {\n    $scriptProperties[\'sortby\'] = $sortBy;\n}\nif (!empty($sortDir)) {\n    $scriptProperties[\'sortdir\'] = $sortDir;\n}\nif (!empty($priorityTV)) {\n    if (!empty($scriptProperties[\'includeTVs\'])) {\n        $scriptProperties[\'includeTVs\'] .= \',\' . $priorityTV;\n    } else {\n        $scriptProperties[\'includeTVs\'] = $priorityTV;\n    }\n}\nif (!empty($itemSeparator)) {\n    $outputSeparator = $itemSeparator;\n}\n//---\n\n\n$class = modResource::class;\n$alias = $modx->getAlias($class);\n$where = [];\nif (empty($showHidden)) {\n    $where[] = [\n        $alias . \'.hidemenu\' => 0,\n        \'OR:\' . $alias . \'.class_key:IN\' => [\'Ticket\', \'Article\'],\n    ];\n}\nif (empty($context)) {\n    $scriptProperties[\'context\'] = $modx->context->key;\n}\n\n$select = [$alias => \'id,editedon,createdon,context_key,class_key,uri\'];\nif (!empty($useWeblinkUrl)) {\n    $select[$alias] .= \',content\';\n}\n// Add custom parameters\nforeach ([\'where\', \'select\'] as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n// Default parameters\n$default = [\n    \'class\' => $class,\n    \'where\' => $where,\n    \'select\' => $select,\n    \'sortby\' => \"{$alias}.parent ASC, {$alias}.menuindex\",\n    \'sortdir\' => \'ASC\',\n    \'return\' => \'data\',\n    \'scheme\' => \'full\',\n    \'limit\' => 0,\n];\n// Merge all properties and run!\n$pdoFetch->addTime(\'Query parameters ready\');\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n\nif (!empty($cache)) {\n    $data = $pdoFetch->getCache($scriptProperties);\n}\nif (!isset($return)) {\n    $return = \'chunks\';\n}\nif (empty($data)) {\n    $now = time();\n    $data = $urls = [];\n    $rows = $pdoFetch->run();\n    foreach ($rows as $row) {\n        if (!empty($useWeblinkUrl) && $row[\'class_key\'] == modWebLink::class) {\n            $row[\'url\'] = is_numeric(trim($row[\'content\'], \'[]~ \'))\n                ? $pdoFetch->makeUrl((int)trim($row[\'content\'], \'[]~ \'), $row)\n                : $row[\'content\'];\n        } else {\n            $row[\'url\'] = $pdoFetch->makeUrl($row[\'id\'], $row);\n        }\n        unset($row[\'content\']);\n        $time = !empty($row[\'editedon\'])\n            ? $row[\'editedon\']\n            : $row[\'createdon\'];\n        $row[\'date\'] = date(\'c\', $time);\n\n        $datediff = floor(($now - $time) / 86400);\n        if ($datediff <= 1) {\n            $row[\'priority\'] = \'1.0\';\n            $row[\'update\'] = \'daily\';\n        } elseif (($datediff > 1) && ($datediff <= 7)) {\n            $row[\'priority\'] = \'0.75\';\n            $row[\'update\'] = \'weekly\';\n        } elseif (($datediff > 7) && ($datediff <= 30)) {\n            $row[\'priority\'] = \'0.50\';\n            $row[\'update\'] = \'weekly\';\n        } else {\n            $row[\'priority\'] = \'0.25\';\n            $row[\'update\'] = \'monthly\';\n        }\n        if (!empty($priorityTV) && !empty($row[$priorityTV])) {\n            $row[\'priority\'] = $row[$priorityTV];\n        }\n\n        // Fix possible duplicates made by modWebLink\n        if (!empty($urls[$row[\'url\']])) {\n            if ($urls[$row[\'url\']] > $row[\'date\']) {\n                continue;\n            }\n        }\n        $urls[$row[\'url\']] = $row[\'date\'];\n\n        // Add item to output\n        if ($return === \'data\') {\n            $data[$row[\'url\']] = $row;\n        } else {\n            $data[$row[\'url\']] = $pdoFetch->parseChunk($tpl, $row);\n            if (strpos($data[$row[\'url\']], \'[[\') !== false) {\n                $modx->parser->processElementTags(\'\', $data[$row[\'url\']], true, true, \'[[\', \']]\', array(), 10);\n            }\n        }\n    }\n    $pdoFetch->addTime(\'Rows processed\');\n    if (!empty($cache)) {\n        $pdoFetch->setCache($data, $scriptProperties);\n    }\n}\n\nif ($return === \'data\') {\n    $output = $data;\n} else {\n    $output = implode($outputSeparator, $data);\n    $output = $pdoFetch->getChunk($tplWrapper, [\n        \'schema\' => $sitemapSchema,\n        \'output\' => $output,\n        \'items\' => $output,\n    ]);\n    $pdoFetch->addTime(\'Rows wrapped\');\n\n    if ($modx->user->isAuthenticated(\'mgr\') && !empty($showLog)) {\n        $modx->setPlaceholder(\'pdoSitemapLog\', print_r($pdoFetch->getTime(), true));\n    }\n}\nif (!empty($forceXML)) {\n    header(\"Content-Type:text/xml\");\n    @session_write_close();\n    exit($output);\n} else {\n    return $output;\n}',0,'a:24:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:145:\"@INLINE <url>\n	<loc>[[+url]]</loc>\n	<lastmod>[[+date]]</lastmod>\n	<changefreq>[[+update]]</changefreq>\n	<priority>[[+priority]]</priority>\n</url>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:110:\"@INLINE <?xml version=\"1.0\" encoding=\"[[++modx_charset]]\"?>\n<urlset xmlns=\"[[+schema]]\">\n[[+output]]\n</urlset>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"templates\";a:7:{s:4:\"name\";s:9:\"templates\";s:4:\"desc\";s:23:\"pdotools_prop_templates\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"sitemapSchema\";a:7:{s:4:\"name\";s:13:\"sitemapSchema\";s:4:\"desc\";s:27:\"pdotools_prop_sitemapSchema\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:43:\"http://www.sitemaps.org/schemas/sitemap/0.9\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"hideUnsearchable\";a:7:{s:4:\"name\";s:16:\"hideUnsearchable\";s:4:\"desc\";s:30:\"pdotools_prop_hideUnsearchable\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"menuindex\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"asc\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"forceXML\";a:7:{s:4:\"name\";s:8:\"forceXML\";s:4:\"desc\";s:22:\"pdotools_prop_forceXML\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:19:\"pdotools_prop_cache\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"cacheKey\";a:7:{s:4:\"name\";s:8:\"cacheKey\";s:4:\"desc\";s:22:\"pdotools_prop_cacheKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:600;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}','',0,'core/components/pdotools/elements/snippets/snippet.pdositemap.php'),
(6,1,0,'pdoNeighbors','',0,1,0,'use ModxPro\\PdoTools\\Fetch;\nuse MODX\\Revolution\\modResource;\nuse MODX\\Revolution\\modWebLink;\n\n/** @var \\MODX\\Revolution\\modX $modx */\n/** @var array $scriptProperties */\n\n$modx->services[\'pdotools_config\'] = $scriptProperties;\n$pdoFetch = $modx->services->get(Fetch::class);\n$pdoFetch->addTime(\'pdoTools loaded\');\n\nif (empty($id)) {\n    $id = $modx->resource->id;\n}\nif (empty($limit)) {\n    $limit = 1;\n}\nif (!isset($outputSeparator)) {\n    $outputSeparator = \"\\n\";\n}\n$fastMode = !empty($fastMode);\n\n$class = modResource::class;\n$alias = $modx->getAlias($class);\n$resource = ($id == $modx->resource->id)\n    ? $modx->resource\n    : $modx->getObject($class, $id);\nif (!$resource) {\n    return \'\';\n}\n\n// We need to determine ids of neighbors\n$params = $scriptProperties;\n$params[\'select\'] = \'id\';\n$params[\'limit\'] = 0;\nif (!empty($parents) && is_string($parents)) {\n    $parents = array_map(\'trim\', explode(\',\', $parents));\n    if (!in_array($resource->parent, $parents)) {\n        $parents[] = $resource->parent;\n    }\n    $key = array_search($resource->parent * -1, $parents);\n    if ($key !== false) {\n        unset($parents[$key]);\n    }\n    $params[\'parents\'] = implode(\',\', $parents);\n    $ids = $pdoFetch->getCollection(modResource::class, [], $params);\n    unset($scriptProperties[\'parents\']);\n} else {\n    $ids = $pdoFetch->getCollection(modResource::class, [\'parent\' => $resource->parent], $params);\n}\n\n$found = false;\n$prev = $next = [];\nforeach ($ids as $v) {\n    if ($v[\'id\'] == $id) {\n        $found = true;\n        continue;\n    } elseif (!$found) {\n        $prev[] = $v[\'id\'];\n    } else {\n        $next[] = $v[\'id\'];\n        if (count($next) >= $limit) {\n            break;\n        }\n    }\n}\n$prev = array_splice($prev, $limit * -1);\nif (!empty($loop)) {\n    if (!count($prev)) {\n        $v = end($ids);\n        $prev[] = $v[\'id\'];\n    } else {\n        if (!count($next)) {\n            $v = reset($ids);\n            $next[] = $v[\'id\'];\n        }\n    }\n}\n$ids = array_merge($prev, $next, [$resource->parent]);\n$pdoFetch->addTime(\'Found ids of neighbors: \' . implode(\',\', $ids));\n\n// Query conditions\n$where = [$alias . \'.id:IN\' => $ids];\n\n// Fields to select\n$resourceColumns = array_keys($modx->getFieldMeta($class));\nif (empty($includeContent) && empty($useWeblinkUrl)) {\n    $key = array_search(\'content\', $resourceColumns);\n    unset($resourceColumns[$key]);\n}\n$select = [$alias => implode(\',\', $resourceColumns)];\n\n// Add custom parameters\nforeach ([\'where\', \'select\'] as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n// Default parameters\n$default = [\n    \'class\' => $class,\n    \'where\' => $where,\n    \'select\' => $select,\n    //\'groupby\' => $class.\'.id\',\n    \'sortby\' => $class . \'.menuindex\',\n    \'sortdir\' => \'ASC\',\n    \'return\' => \'data\',\n    \'limit\' => 0,\n    \'totalVar\' => \'pdoneighbors.total\',\n];\n\n// Merge all properties and run!\nunset($scriptProperties[\'limit\']);\n$pdoFetch->addTime(\'Query parameters ready\');\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n\n$rows = $pdoFetch->run();\n$prev = array_flip($prev);\n$next = array_flip($next);\n\nif (!isset($return)) {\n    $return = \'chunks\';\n}\n$output = [\'prev\' => [], \'up\' => [], \'next\' => []];\nforeach ($rows as $row) {\n    if (empty($row[\'menutitle\'])) {\n        $row[\'menutitle\'] = $row[\'pagetitle\'];\n    }\n    if (!empty($useWeblinkUrl) && $row[\'class_key\'] === modWebLink::class) {\n        $row[\'link\'] = is_numeric(trim($row[\'content\'], \'[]~ \'))\n            ? $pdoFetch->makeUrl((int)trim($row[\'content\'], \'[]~ \'), $row)\n            : $row[\'content\'];\n    } else {\n        $row[\'link\'] = $pdoFetch->makeUrl($row[\'id\'], $row);\n    }\n\n    if (isset($prev[$row[\'id\']])) {\n        if ($return === \'data\') {\n            $output[\'prev\'][] = $row;\n        } else {\n            $output[\'prev\'][] = !empty($tplPrev)\n                ? $pdoFetch->getChunk($tplPrev, $row, $fastMode)\n                : $pdoFetch->getChunk(\'\', $row);\n        }\n    } elseif (isset($next[$row[\'id\']])) {\n        if ($return === \'data\') {\n            $output[\'next\'][] = $row;\n        } else {\n            $output[\'next\'][] = !empty($tplNext)\n                ? $pdoFetch->getChunk($tplNext, $row, $fastMode)\n                : $pdoFetch->getChunk(\'\', $row);\n        }\n    } else {\n        if ($return === \'data\') {\n            $output[\'up\'][] = $row;\n        } else {\n            $output[\'up\'][] = !empty($tplUp)\n                ? $pdoFetch->getChunk($tplUp, $row, $fastMode)\n                : $pdoFetch->getChunk(\'\', $row);\n        }\n    }\n}\n$pdoFetch->addTime(\'Chunks processed\');\n\n$log = \'\';\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $log .= \'<pre class=\"pdoNeighborsLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\nforeach ($output as &$row) {\n    $row = implode($outputSeparator, $row);\n}\n\nif (!empty($toSeparatePlaceholders)) {\n    $output[\'log\'] = $log;\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\n} else {\n    if (!empty($rows) || !empty($wrapIfEmpty)) {\n        $output = !empty($tplWrapper)\n            ? $pdoFetch->getChunk($tplWrapper, $output, $fastMode)\n            : $pdoFetch->getChunk(\'\', $output);\n    } else {\n        $output = \'\';\n    }\n    $output .= $log;\n\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n}',0,'a:27:{s:2:\"id\";a:7:{s:4:\"name\";s:2:\"id\";s:4:\"desc\";s:16:\"pdotools_prop_id\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:29:\"pdotools_prop_neighbors_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"menuindex\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"asc\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplPrev\";a:7:{s:4:\"name\";s:7:\"tplPrev\";s:4:\"desc\";s:21:\"pdotools_prop_tplPrev\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:106:\"@INLINE <span class=\"link-prev\"><a href=\"[[+link]]\" class=\"btn btn-light\">&larr; [[+menutitle]]</a></span>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"tplUp\";a:7:{s:4:\"name\";s:5:\"tplUp\";s:4:\"desc\";s:19:\"pdotools_prop_tplUp\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:104:\"@INLINE <span class=\"link-up\"><a href=\"[[+link]]\" class=\"btn btn-light\">&uarr; [[+menutitle]]</a></span>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplNext\";a:7:{s:4:\"name\";s:7:\"tplNext\";s:4:\"desc\";s:21:\"pdotools_prop_tplNext\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:106:\"@INLINE <span class=\"link-next\"><a href=\"[[+link]]\" class=\"btn btn-light\">[[+menutitle]] &rarr;</a></span>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:34:\"pdotools_prop_neighbors_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:93:\"@INLINE <div class=\"neighbors d-flex justify-content-between\">[[+prev]][[+up]][[+next]]</div>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:22:\"toSeparatePlaceholders\";a:7:{s:4:\"name\";s:22:\"toSeparatePlaceholders\";s:4:\"desc\";s:36:\"pdotools_prop_toSeparatePlaceholders\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"loop\";a:7:{s:4:\"name\";s:4:\"loop\";s:4:\"desc\";s:18:\"pdotools_prop_loop\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}','',0,'core/components/pdotools/elements/snippets/snippet.pdoneighbors.php'),
(7,1,0,'pdoPage','',0,1,0,'use ModxPro\\PdoTools\\Support\\Paginator;\nuse MODX\\Revolution\\modSnippet;\n\n/** @var array $scriptProperties */\n/** @var modX $modx */\n\n// Default variables\nif (empty($pageVarKey)) {\n    $pageVarKey = \'page\';\n}\nif (empty($pageNavVar)) {\n    $pageNavVar = \'page.nav\';\n}\nif (empty($pageCountVar)) {\n    $pageCountVar = \'pageCount\';\n}\nif (empty($totalVar)) {\n    $totalVar = \'total\';\n}\nif (empty($page)) {\n    $page = 1;\n}\nif (empty($pageLimit)) {\n    $pageLimit = 5;\n} else {\n    $pageLimit = (integer)$pageLimit;\n}\nif (!isset($plPrefix)) {\n    $plPrefix = \'\';\n}\nif (!empty($scriptProperties[\'ajaxMode\'])) {\n    $scriptProperties[\'ajax\'] = 1;\n}\n\n// Convert parameters from getPage if exists\nif (!empty($namespace)) {\n    $plPrefix = $namespace;\n}\nif (!empty($pageNavTpl)) {\n    $scriptProperties[\'tplPage\'] = $pageNavTpl;\n}\nif (!empty($pageNavOuterTpl)) {\n    $scriptProperties[\'tplPageWrapper\'] = $pageNavOuterTpl;\n}\nif (!empty($pageActiveTpl)) {\n    $scriptProperties[\'tplPageActive\'] = $pageActiveTpl;\n}\nif (!empty($pageFirstTpl)) {\n    $scriptProperties[\'tplPageFirst\'] = $pageFirstTpl;\n}\nif (!empty($pagePrevTpl)) {\n    $scriptProperties[\'tplPagePrev\'] = $pagePrevTpl;\n}\nif (!empty($pageNextTpl)) {\n    $scriptProperties[\'tplPageNext\'] = $pageNextTpl;\n}\nif (!empty($pageLastTpl)) {\n    $scriptProperties[\'tplPageLast\'] = $pageLastTpl;\n}\nif (!empty($pageSkipTpl)) {\n    $scriptProperties[\'tplPageSkip\'] = $pageSkipTpl;\n}\nif (!empty($pageNavScheme)) {\n    $scriptProperties[\'scheme\'] = $pageNavScheme;\n}\nif (!empty($cache_expires)) {\n    $scriptProperties[\'cacheTime\'] = $cache_expires;\n}\n//---\n$strictMode = !empty($strictMode);\n\n$isAjax = !empty($scriptProperties[\'ajax\']) && !empty($_SERVER[\'HTTP_X_REQUESTED_WITH\']) && $_SERVER[\'HTTP_X_REQUESTED_WITH\'] == \'XMLHttpRequest\';\nif ($isAjax && !isset($_REQUEST[$pageVarKey])) {\n    return;\n}\n\n$modx->services[\'pdotools_config\'] = $scriptProperties;\n/** @var Paginator $paginator */\n$paginator = $modx->services->get(Paginator::class);\n$paginator->pdoTools->addTime(\'pdoTools loaded\');\n\n// Script and styles\nif (!$isAjax && !empty($scriptProperties[\'ajaxMode\'])) {\n    $paginator->loadJsCss();\n}\n// Removing of default scripts and styles so they do not overwrote nested snippet parameters\nif ($snippet = $modx->getObject(modSnippet::class, [\'name\' => \'pdoPage\'])) {\n    $properties = $snippet->get(\'properties\');\n    if ($scriptProperties[\'frontend_js\'] == $properties[\'frontend_js\'][\'value\']) {\n        unset($scriptProperties[\'frontend_js\']);\n    }\n    if ($scriptProperties[\'frontend_css\'] == $properties[\'frontend_css\'][\'value\']) {\n        unset($scriptProperties[\'frontend_css\']);\n    }\n}\n\n// Page\nif (isset($_REQUEST[$pageVarKey]) && $strictMode && (!is_numeric($_REQUEST[$pageVarKey]) || ($_REQUEST[$pageVarKey] <= 1 && !$isAjax))) {\n    return $paginator->redirectToFirst($isAjax);\n} elseif (!empty($_REQUEST[$pageVarKey])) {\n    $page = (integer)$_REQUEST[$pageVarKey];\n}\n$scriptProperties[\'page\'] = $page;\n$scriptProperties[\'request\'] = $_REQUEST;\n$scriptProperties[\'setTotal\'] = true;\n// Limit\nif (isset($_REQUEST[\'limit\'])) {\n    if (is_numeric($_REQUEST[\'limit\']) && abs($_REQUEST[\'limit\']) > 0) {\n        $scriptProperties[\'limit\'] = abs($_REQUEST[\'limit\']);\n    } elseif ($strictMode) {\n        unset($_GET[\'limit\']);\n\n        return $paginator->redirectToFirst($isAjax);\n    }\n}\nif (!empty($maxLimit) && !empty($scriptProperties[\'limit\']) && $scriptProperties[\'limit\'] > $maxLimit) {\n    $scriptProperties[\'limit\'] = $maxLimit;\n}\n\n// Offset\n$_offset = !empty($scriptProperties[\'offset\']) && $scriptProperties[\'offset\'] > 0\n    ? (int)$scriptProperties[\'offset\']\n    : 0;\n$scriptProperties[\'offset\'] = $page > 1\n    ? $scriptProperties[\'limit\'] * ($page - 1) + $_offset\n    : $_offset;\nif (!empty($scriptProperties[\'offset\']) && empty($scriptProperties[\'limit\'])) {\n    $scriptProperties[\'limit\'] = 10000000;\n}\n\n$cache = !empty($cache) || (!$modx->user->id && !empty($cacheAnonymous));\n$charset = $modx->getOption(\'modx_charset\', null, \'UTF-8\');\n$url = htmlentities($paginator->getBaseUrl(), ENT_QUOTES, $charset);\n$output = $pagination = $total = $pageCount = \'\';\n\n$data = $cache\n    ? $paginator->pdoTools->getCache($scriptProperties)\n    : [];\n\nif (empty($data)) {\n    $output = $paginator->pdoTools->runSnippet(\'!\' . $scriptProperties[\'element\'], $scriptProperties);\n    if ($output === false) {\n        return \'\';\n    } elseif (!empty($toPlaceholder)) {\n        $output = $modx->getPlaceholder($toPlaceholder);\n    }\n\n    // Pagination\n    $total = (int)$modx->getPlaceholder($totalVar);\n    $pageCount = !empty($scriptProperties[\'limit\']) && $total > $_offset\n        ? ceil(($total - $_offset) / $scriptProperties[\'limit\'])\n        : 0;\n\n    // Redirect to start if somebody specified incorrect page\n    if ($page > 1 && $page > $pageCount && $strictMode) {\n        return $paginator->redirectToFirst($isAjax);\n    }\n    if (!empty($pageCount) && $pageCount > 1) {\n        $pagination = [\n            \'first\' => $page > 1 && !empty($tplPageFirst)\n                ? $paginator->makePageLink($url, 1, $tplPageFirst)\n                : \'\',\n            \'prev\' => $page > 1 && !empty($tplPagePrev)\n                ? $paginator->makePageLink($url, $page - 1, $tplPagePrev)\n                : \'\',\n            \'pages\' => $pageLimit >= 7 && empty($disableModernPagination)\n                ? $paginator->buildModernPagination($page, $pageCount, $url)\n                : $paginator->buildClassicPagination($page, $pageCount, $url),\n            \'next\' => $page < $pageCount && !empty($tplPageNext)\n                ? $paginator->makePageLink($url, $page + 1, $tplPageNext)\n                : \'\',\n            \'last\' => $page < $pageCount && !empty($tplPageLast)\n                ? $paginator->makePageLink($url, $pageCount, $tplPageLast)\n                : \'\',\n        ];\n\n        if (!empty($pageCount)) {\n            foreach ([\'first\', \'prev\', \'next\', \'last\'] as $v) {\n                $_tpl = \'tplPage\' . ucfirst($v) . \'Empty\';\n                if (!empty(${$_tpl}) && empty($pagination[$v])) {\n                    $pagination[$v] = $paginator->pdoTools->getChunk(${$_tpl});\n                }\n            }\n        }\n    } else {\n        $pagination = [\n            \'first\' => \'\',\n            \'prev\' => \'\',\n            \'pages\' => \'\',\n            \'next\' => \'\',\n            \'last\' => \'\',\n        ];\n    }\n\n    $data = [\n        \'output\' => $output,\n        $pageVarKey => $page,\n        $pageCountVar => $pageCount,\n        $pageNavVar => !empty($tplPageWrapper)\n            ? $paginator->pdoTools->getChunk($tplPageWrapper, array_merge($scriptProperties, $pagination))\n            : $paginator->pdoTools->parseChunk(\'\', array_merge($scriptProperties, $pagination)),\n        $totalVar => $total,\n    ];\n    if ($cache) {\n        $paginator->pdoTools->setCache($data, $scriptProperties);\n    }\n}\n/** @var bool $showLog */\nif (isset($showLog) && $modx->user->isAuthenticated(\'mgr\') && (bool)$showLog) {\n    $modx->setPlaceholder(\'pdoPageLog\', print_r($paginator->pdoTools->getTime(), true));\n}\n\nif ($isAjax) {\n    if ($pageNavVar !== \'pagination\') {\n        $data[\'pagination\'] = $data[$pageNavVar];\n        unset($data[$pageNavVar]);\n    }\n    if ($pageCountVar !== \'pages\') {\n        $data[\'pages\'] = (int)$data[$pageCountVar];\n        unset($data[$pageCountVar]);\n    }\n    if ($pageVarKey !== \'page\') {\n        $data[\'page\'] = (int)$data[$pageVarKey];\n        unset($data[$pageVarKey]);\n    }\n    if ($totalVar !== \'total\') {\n        $data[\'total\'] = (int)$data[$totalVar];\n        unset($data[$totalVar]);\n    }\n\n    $maxIterations = (integer)$modx->getOption(\'parser_max_iterations\', null, 10);\n    $modx->getParser()->processElementTags(\'\', $data[\'output\'], false, false, \'[[\', \']]\', [], $maxIterations);\n    $modx->getParser()->processElementTags(\'\', $data[\'output\'], true, true, \'[[\', \']]\', [], $maxIterations);\n\n    @session_write_close();\n    exit(json_encode($data));\n}\n\nif (!empty($setMeta)) {\n    $canurl = $paginator->pdoTools->config(\'scheme\') !== \'full\'\n        ? $paginator->getCanonicalUrl($url)\n        : $url;\n    $modx->regClientStartupHTMLBlock(\'<link rel=\"canonical\" href=\"\' . $canurl . \'\"/>\');\n    if ($data[$pageVarKey] > 1) {\n        $prevUrl = $paginator->makePageLink($canurl, $data[$pageVarKey] - 1);\n        $modx->regClientStartupHTMLBlock(\n            \'<link rel=\"prev\" href=\"\' . $prevUrl . \'\"/>\'\n        );\n    }\n    if ($data[$pageVarKey] < $data[$pageCountVar]) {\n        $nextUrl = $paginator->makePageLink($canurl, $data[$pageVarKey] + 1);\n        $modx->regClientStartupHTMLBlock(\n            \'<link rel=\"next\" href=\"\' . $nextUrl . \'\"/>\'\n        );\n    }\n}\n\n$modx->setPlaceholders($data, $plPrefix);\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $data[\'output\']);\n} else {\n    return $data[\'output\'];\n}',0,'a:41:{s:8:\"plPrefix\";a:7:{s:4:\"name\";s:8:\"plPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_plPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"maxLimit\";a:7:{s:4:\"name\";s:8:\"maxLimit\";s:4:\"desc\";s:22:\"pdotools_prop_maxLimit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:100;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"page\";a:7:{s:4:\"name\";s:4:\"page\";s:4:\"desc\";s:18:\"pdotools_prop_page\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"pageVarKey\";a:7:{s:4:\"name\";s:10:\"pageVarKey\";s:4:\"desc\";s:24:\"pdotools_prop_pageVarKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"page\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:10:\"page.total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"pageLimit\";a:7:{s:4:\"name\";s:9:\"pageLimit\";s:4:\"desc\";s:23:\"pdotools_prop_pageLimit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:5;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"element\";a:7:{s:4:\"name\";s:7:\"element\";s:4:\"desc\";s:21:\"pdotools_prop_element\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:12:\"pdoResources\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"pageNavVar\";a:7:{s:4:\"name\";s:10:\"pageNavVar\";s:4:\"desc\";s:24:\"pdotools_prop_pageNavVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:8:\"page.nav\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"pageCountVar\";a:7:{s:4:\"name\";s:12:\"pageCountVar\";s:4:\"desc\";s:26:\"pdotools_prop_pageCountVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"pageCount\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"pageLinkScheme\";a:7:{s:4:\"name\";s:14:\"pageLinkScheme\";s:4:\"desc\";s:28:\"pdotools_prop_pageLinkScheme\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplPage\";a:7:{s:4:\"name\";s:7:\"tplPage\";s:4:\"desc\";s:21:\"pdotools_prop_tplPage\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:88:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">[[+pageNo]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"tplPageWrapper\";a:7:{s:4:\"name\";s:14:\"tplPageWrapper\";s:4:\"desc\";s:28:\"pdotools_prop_tplPageWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:83:\"@INLINE <ul class=\"pagination\">[[+first]][[+prev]][[+pages]][[+next]][[+last]]</ul>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"tplPageActive\";a:7:{s:4:\"name\";s:13:\"tplPageActive\";s:4:\"desc\";s:27:\"pdotools_prop_tplPageActive\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:95:\"@INLINE <li class=\"page-item active\"><a class=\"page-link\" href=\"[[+href]]\">[[+pageNo]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplPageFirst\";a:7:{s:4:\"name\";s:12:\"tplPageFirst\";s:4:\"desc\";s:26:\"pdotools_prop_tplPageFirst\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:95:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">[[%pdopage_first]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPageLast\";a:7:{s:4:\"name\";s:11:\"tplPageLast\";s:4:\"desc\";s:25:\"pdotools_prop_tplPageLast\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:94:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">[[%pdopage_last]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPagePrev\";a:7:{s:4:\"name\";s:11:\"tplPagePrev\";s:4:\"desc\";s:25:\"pdotools_prop_tplPagePrev\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:84:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">&laquo;</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPageNext\";a:7:{s:4:\"name\";s:11:\"tplPageNext\";s:4:\"desc\";s:25:\"pdotools_prop_tplPageNext\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:84:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">&raquo;</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPageSkip\";a:7:{s:4:\"name\";s:11:\"tplPageSkip\";s:4:\"desc\";s:25:\"pdotools_prop_tplPageSkip\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:78:\"@INLINE <li class=\"page-item disabled\"><span class=\"page-link\">...</span></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:17:\"tplPageFirstEmpty\";a:7:{s:4:\"name\";s:17:\"tplPageFirstEmpty\";s:4:\"desc\";s:31:\"pdotools_prop_tplPageFirstEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:93:\"@INLINE <li class=\"page-item disabled\"><span class=\"page-link\">[[%pdopage_first]]</span></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplPageLastEmpty\";a:7:{s:4:\"name\";s:16:\"tplPageLastEmpty\";s:4:\"desc\";s:30:\"pdotools_prop_tplPageLastEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:92:\"@INLINE <li class=\"page-item disabled\"><span class=\"page-link\">[[%pdopage_last]]</span></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplPagePrevEmpty\";a:7:{s:4:\"name\";s:16:\"tplPagePrevEmpty\";s:4:\"desc\";s:30:\"pdotools_prop_tplPagePrevEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:82:\"@INLINE <li class=\"page-item disabled\"><span class=\"page-link\">&laquo;</span></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplPageNextEmpty\";a:7:{s:4:\"name\";s:16:\"tplPageNextEmpty\";s:4:\"desc\";s:30:\"pdotools_prop_tplPageNextEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:83:\"@INLINE <li class=\"page-item disabled\"><span class=\"page-link\" >&raquo;</span></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:19:\"pdotools_prop_cache\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3600;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"cacheAnonymous\";a:7:{s:4:\"name\";s:14:\"cacheAnonymous\";s:4:\"desc\";s:28:\"pdotools_prop_cacheAnonymous\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"ajax\";a:7:{s:4:\"name\";s:4:\"ajax\";s:4:\"desc\";s:18:\"pdotools_prop_ajax\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"ajaxMode\";a:7:{s:4:\"name\";s:8:\"ajaxMode\";s:4:\"desc\";s:22:\"pdotools_prop_ajaxMode\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:4:{i:0;a:2:{s:4:\"text\";s:4:\"None\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:4:\"text\";s:7:\"Default\";s:5:\"value\";s:7:\"default\";}i:2;a:2:{s:4:\"text\";s:6:\"Scroll\";s:5:\"value\";s:6:\"scroll\";}i:3;a:2:{s:4:\"text\";s:6:\"Button\";s:5:\"value\";s:6:\"button\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"ajaxElemWrapper\";a:7:{s:4:\"name\";s:15:\"ajaxElemWrapper\";s:4:\"desc\";s:29:\"pdotools_prop_ajaxElemWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:8:\"#pdopage\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"ajaxElemRows\";a:7:{s:4:\"name\";s:12:\"ajaxElemRows\";s:4:\"desc\";s:26:\"pdotools_prop_ajaxElemRows\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:14:\"#pdopage .rows\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:18:\"ajaxElemPagination\";a:7:{s:4:\"name\";s:18:\"ajaxElemPagination\";s:4:\"desc\";s:32:\"pdotools_prop_ajaxElemPagination\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:20:\"#pdopage .pagination\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"ajaxElemLink\";a:7:{s:4:\"name\";s:12:\"ajaxElemLink\";s:4:\"desc\";s:26:\"pdotools_prop_ajaxElemLink\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:22:\"#pdopage .pagination a\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"ajaxElemMore\";a:7:{s:4:\"name\";s:12:\"ajaxElemMore\";s:4:\"desc\";s:26:\"pdotools_prop_ajaxElemMore\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:18:\"#pdopage .btn-more\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"ajaxTplMore\";a:7:{s:4:\"name\";s:11:\"ajaxTplMore\";s:4:\"desc\";s:25:\"pdotools_prop_ajaxTplMore\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:75:\"@INLINE <button class=\"btn btn-primary btn-more\">[[%pdopage_more]]</button>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"ajaxHistory\";a:7:{s:4:\"name\";s:11:\"ajaxHistory\";s:4:\"desc\";s:25:\"pdotools_prop_ajaxHistory\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:3:{i:0;a:2:{s:4:\"text\";s:4:\"Auto\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:4:\"text\";s:7:\"Enabled\";s:5:\"value\";i:1;}i:2;a:2:{s:4:\"text\";s:8:\"Disabled\";s:5:\"value\";i:0;}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"frontend_js\";a:7:{s:4:\"name\";s:11:\"frontend_js\";s:4:\"desc\";s:25:\"pdotools_prop_frontend_js\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:31:\"[[+assetsUrl]]js/pdopage.min.js\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"frontend_css\";a:7:{s:4:\"name\";s:12:\"frontend_css\";s:4:\"desc\";s:26:\"pdotools_prop_frontend_css\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:33:\"[[+assetsUrl]]css/pdopage.min.css\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"setMeta\";a:7:{s:4:\"name\";s:7:\"setMeta\";s:4:\"desc\";s:21:\"pdotools_prop_setMeta\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"strictMode\";a:7:{s:4:\"name\";s:10:\"strictMode\";s:4:\"desc\";s:24:\"pdotools_prop_strictMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}','',0,'core/components/pdotools/elements/snippets/snippet.pdopage.php'),
(8,1,0,'pdoMenu','',0,1,0,'use ModxPro\\PdoTools\\Fetch;\nuse ModxPro\\PdoTools\\Support\\MenuBuilder;\nuse MODX\\Revolution\\modResource;\n\n/** @var \\MODX\\Revolution\\modX $modx */\n/** @var array $scriptProperties */\n\n// Convert parameters from Wayfinder if exists\nif (isset($startId)) {\n    $scriptProperties[\'parents\'] = $startId;\n}\nif (!empty($includeDocs)) {\n    $tmp = array_map(\'trim\', explode(\',\', $includeDocs));\n    foreach ($tmp as $v) {\n        if (!empty($scriptProperties[\'resources\'])) {\n            $scriptProperties[\'resources\'] .= \',\' . $v;\n        } else {\n            $scriptProperties[\'resources\'] = $v;\n        }\n    }\n}\nif (!empty($excludeDocs)) {\n    $tmp = array_map(\'trim\', explode(\',\', $excludeDocs));\n    foreach ($tmp as $v) {\n        if (!empty($scriptProperties[\'resources\'])) {\n            $scriptProperties[\'resources\'] .= \',-\' . $v;\n        } else {\n            $scriptProperties[\'resources\'] = \'-\' . $v;\n        }\n    }\n}\n\nif (!empty($previewUnpublished) && $modx->hasPermission(\'view_unpublished\')) {\n    $scriptProperties[\'showUnpublished\'] = 1;\n}\n\n$scriptProperties[\'depth\'] = empty($level) ? 100 : abs($level) - 1;\nif (!empty($contexts)) {\n    $scriptProperties[\'context\'] = $contexts;\n}\nif (empty($scriptProperties[\'context\'])) {\n    $scriptProperties[\'context\'] = $modx->resource->context_key;\n}\n\n// Save original parents specified by user\n$specified_parents = array_map(\'trim\', explode(\',\', $scriptProperties[\'parents\']));\n\nif ($scriptProperties[\'parents\'] === \'\') {\n    $scriptProperties[\'parents\'] = $modx->resource->id;\n} elseif ($scriptProperties[\'parents\'] === 0 || $scriptProperties[\'parents\'] === \'0\') {\n    if ($scriptProperties[\'depth\'] !== \'\' && $scriptProperties[\'depth\'] !== 100) {\n        $contexts = array_map(\'trim\', explode(\',\', $scriptProperties[\'context\']));\n        $parents = [];\n        if (!empty($scriptProperties[\'showDeleted\'])) {\n            /** @var Fetch $pdoFetch */\n            $pdoFetch = $modx->services->get(\'pdofetch\');\n            foreach ($contexts as $ctx) {\n                $parents = array_merge($parents, $pdoFetch->getChildIds(modResource::class, 0, $scriptProperties[\'depth\'], [\'context\' => $ctx]));\n            }\n        } else {\n            foreach ($contexts as $ctx) {\n                $parents = array_merge($parents, $modx->getChildIds(0, $scriptProperties[\'depth\'], [\'context\' => $ctx]));\n            }\n        }\n        $scriptProperties[\'parents\'] = !empty($parents) ? implode(\',\', $parents) : \'+0\';\n        $scriptProperties[\'depth\'] = 0;\n    }\n    $scriptProperties[\'includeParents\'] = 1;\n    $scriptProperties[\'displayStart\'] = 0;\n} else {\n    $parents = array_map(\'trim\', explode(\',\', $scriptProperties[\'parents\']));\n    $parents_in = $parents_out = [];\n    foreach ($parents as $v) {\n        if (!is_numeric($v)) {\n            continue;\n        }\n        if ($v[0] == \'-\') {\n            $parents_out[] = abs($v);\n        } else {\n            $parents_in[] = abs($v);\n        }\n    }\n\n    if (empty($parents_in)) {\n        $scriptProperties[\'includeParents\'] = 1;\n        $scriptProperties[\'displayStart\'] = 0;\n    }\n}\n\nif (!empty($displayStart)) {\n    $scriptProperties[\'includeParents\'] = 1;\n}\nif (!empty($ph)) {\n    $toPlaceholder = $ph;\n}\nif (!empty($sortOrder)) {\n    $scriptProperties[\'sortdir\'] = $sortOrder;\n}\nif (!empty($sortBy)) {\n    $scriptProperties[\'sortby\'] = $sortBy;\n}\nif (!empty($permissions)) {\n    $scriptProperties[\'checkPermissions\'] = $permissions;\n}\nif (!empty($cacheResults)) {\n    $scriptProperties[\'cache\'] = $cacheResults;\n}\nif (!empty($ignoreHidden)) {\n    $scriptProperties[\'showHidden\'] = $ignoreHidden;\n}\n\n$wfTemplates = [\n    \'outerTpl\' => \'tplOuter\',\n    \'rowTpl\' => \'tpl\',\n    \'parentRowTpl\' => \'tplParentRow\',\n    \'parentRowHereTpl\' => \'tplParentRowHere\',\n    \'hereTpl\' => \'tplHere\',\n    \'innerTpl\' => \'tplInner\',\n    \'innerRowTpl\' => \'tplInnerRow\',\n    \'innerHereTpl\' => \'tplInnerHere\',\n    \'activeParentRowTpl\' => \'tplParentRowActive\',\n    \'categoryFoldersTpl\' => \'tplCategoryFolder\',\n    \'startItemTpl\' => \'tplStart\',\n];\nforeach ($wfTemplates as $k => $v) {\n    if (isset(${$k})) {\n        $scriptProperties[$v] = ${$k};\n    }\n}\n//---\n\n/** @var MenuBuilder $menuBuilder */\n$modx->services[\'pdotools_config\'] = $scriptProperties;\n$menuBuilder = $modx->services->get(MenuBuilder::class);\n$menuBuilder->pdoTools->addTime(\'MenuBuilder loaded\');\n\n$cache = !empty($cache) || (!$modx->user->id && !empty($cacheAnonymous));\nif (empty($scriptProperties[\'cache_key\'])) {\n    $scriptProperties[\'cache_key\'] = \'pdomenu/\' . sha1(serialize($scriptProperties));\n}\n\n$output = \'\';\n$tree = [];\nif ($cache) {\n    $tree = $menuBuilder->pdoTools->getCache($scriptProperties);\n}\nif (empty($tree)) {\n    $data = $menuBuilder->pdoTools->run();\n    $data = $menuBuilder->pdoTools->buildTree($data, \'id\', \'parent\', $specified_parents);\n    $tree = [];\n    foreach ($data as $k => $v) {\n        if (empty($v[\'id\'])) {\n            if (!in_array($k, $specified_parents) && !$menuBuilder->checkResource($k)) {\n                continue;\n            } else {\n                $tree = array_merge($tree, $v[\'children\']);\n            }\n        } else {\n            $tree[$k] = $v;\n        }\n    }\n    if ($cache) {\n        $menuBuilder->pdoTools->setCache($tree, $scriptProperties);\n    }\n}\nif (isset($return) && $return === \'data\') {\n    return $tree;\n}\nif (!empty($tree)) {\n    $output = $menuBuilder->templateTree($tree);\n}\n\nif ($modx->user->isAuthenticated(\'mgr\') && !empty($showLog)) {\n    $modx->setPlaceholder(\'pdoMenuLog\', print_r($menuBuilder->pdoTools->getTime(), true));\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n} else {\n    return $output;\n}',0,'a:51:{s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"level\";a:7:{s:4:\"name\";s:5:\"level\";s:4:\"desc\";s:19:\"pdotools_prop_level\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"displayStart\";a:7:{s:4:\"name\";s:12:\"displayStart\";s:4:\"desc\";s:26:\"pdotools_prop_displayStart\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"templates\";a:7:{s:4:\"name\";s:9:\"templates\";s:4:\"desc\";s:23:\"pdotools_prop_templates\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:19:\"pdotools_prop_cache\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3600;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"cacheAnonymous\";a:7:{s:4:\"name\";s:14:\"cacheAnonymous\";s:4:\"desc\";s:28:\"pdotools_prop_cacheAnonymous\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"plPrefix\";a:7:{s:4:\"name\";s:8:\"plPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_plPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"wf.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:18:\"previewUnpublished\";a:7:{s:4:\"name\";s:18:\"previewUnpublished\";s:4:\"desc\";s:32:\"pdotools_prop_previewUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"hideSubMenus\";a:7:{s:4:\"name\";s:12:\"hideSubMenus\";s:4:\"desc\";s:26:\"pdotools_prop_hideSubMenus\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"menuindex\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"rowIdPrefix\";a:7:{s:4:\"name\";s:11:\"rowIdPrefix\";s:4:\"desc\";s:25:\"pdotools_prop_rowIdPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"firstClass\";a:7:{s:4:\"name\";s:10:\"firstClass\";s:4:\"desc\";s:24:\"pdotools_prop_firstClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"first\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"lastClass\";a:7:{s:4:\"name\";s:9:\"lastClass\";s:4:\"desc\";s:23:\"pdotools_prop_lastClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"last\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"hereClass\";a:7:{s:4:\"name\";s:9:\"hereClass\";s:4:\"desc\";s:23:\"pdotools_prop_hereClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:6:\"active\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"parentClass\";a:7:{s:4:\"name\";s:11:\"parentClass\";s:4:\"desc\";s:25:\"pdotools_prop_parentClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"rowClass\";a:7:{s:4:\"name\";s:8:\"rowClass\";s:4:\"desc\";s:22:\"pdotools_prop_rowClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"outerClass\";a:7:{s:4:\"name\";s:10:\"outerClass\";s:4:\"desc\";s:24:\"pdotools_prop_outerClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"innerClass\";a:7:{s:4:\"name\";s:10:\"innerClass\";s:4:\"desc\";s:24:\"pdotools_prop_innerClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"levelClass\";a:7:{s:4:\"name\";s:10:\"levelClass\";s:4:\"desc\";s:24:\"pdotools_prop_levelClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"selfClass\";a:7:{s:4:\"name\";s:9:\"selfClass\";s:4:\"desc\";s:23:\"pdotools_prop_selfClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"webLinkClass\";a:7:{s:4:\"name\";s:12:\"webLinkClass\";s:4:\"desc\";s:26:\"pdotools_prop_webLinkClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplOuter\";a:7:{s:4:\"name\";s:8:\"tplOuter\";s:4:\"desc\";s:22:\"pdotools_prop_tplOuter\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:41:\"@INLINE <ul[[+classes]]>[[+wrapper]]</ul>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:95:\"@INLINE <li[[+classes]]><a href=\"[[+link]]\" [[+attributes]]>[[+menutitle]]</a>[[+wrapper]]</li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplParentRow\";a:7:{s:4:\"name\";s:12:\"tplParentRow\";s:4:\"desc\";s:26:\"pdotools_prop_tplParentRow\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplParentRowHere\";a:7:{s:4:\"name\";s:16:\"tplParentRowHere\";s:4:\"desc\";s:30:\"pdotools_prop_tplParentRowHere\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplHere\";a:7:{s:4:\"name\";s:7:\"tplHere\";s:4:\"desc\";s:21:\"pdotools_prop_tplHere\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplInner\";a:7:{s:4:\"name\";s:8:\"tplInner\";s:4:\"desc\";s:22:\"pdotools_prop_tplInner\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplInnerRow\";a:7:{s:4:\"name\";s:11:\"tplInnerRow\";s:4:\"desc\";s:25:\"pdotools_prop_tplInnerRow\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplInnerHere\";a:7:{s:4:\"name\";s:12:\"tplInnerHere\";s:4:\"desc\";s:26:\"pdotools_prop_tplInnerHere\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:18:\"tplParentRowActive\";a:7:{s:4:\"name\";s:18:\"tplParentRowActive\";s:4:\"desc\";s:32:\"pdotools_prop_tplParentRowActive\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:17:\"tplCategoryFolder\";a:7:{s:4:\"name\";s:17:\"tplCategoryFolder\";s:4:\"desc\";s:31:\"pdotools_prop_tplCategoryFolder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplStart\";a:7:{s:4:\"name\";s:8:\"tplStart\";s:4:\"desc\";s:22:\"pdotools_prop_tplStart\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:55:\"@INLINE <h2[[+classes]]>[[+menutitle]]</h2>[[+wrapper]]\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"checkPermissions\";a:7:{s:4:\"name\";s:16:\"checkPermissions\";s:4:\"desc\";s:30:\"pdotools_prop_checkPermissions\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"hereId\";a:7:{s:4:\"name\";s:6:\"hereId\";s:4:\"desc\";s:20:\"pdotools_prop_hereId\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"countChildren\";a:7:{s:4:\"name\";s:13:\"countChildren\";s:4:\"desc\";s:27:\"pdotools_prop_countChildren\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}','',0,'core/components/pdotools/elements/snippets/snippet.pdomenu.php'),
(9,1,0,'pdoTitle','',0,1,0,'use ModxPro\\PdoTools\\CoreTools;\nuse MODX\\Revolution\\modResource;\n\n/** @var array $scriptProperties */\n/** @var \\MODX\\Revolution\\modX $modx */\n\nif (empty($outputSeparator)) {\n    $outputSeparator = \' / \';\n}\nif (empty($titleField)) {\n    $titleField = \'longtitle\';\n}\nif (!isset($pageVarKey)) {\n    $pageVarKey = \'page\';\n}\nif (!isset($queryVarKey)) {\n    $queryVarKey = \'query\';\n}\nif (empty($tplPages)) {\n    $tplPages = \'@INLINE [[%pdopage_page]] [[+page]] [[%pdopage_from]] [[+pageCount]]\';\n}\nif (empty($tplSearch)) {\n    $tplSearch = \'@INLINE «[[+mse2_query]]»\';\n}\nif (empty($minQuery)) {\n    $minQuery = 3;\n}\nif (empty($id)) {\n    $id = $modx->resource->id;\n}\nif (empty($cacheKey)) {\n    $cacheKey = \'title_crumbs\';\n}\nif (!isset($cacheTime)) {\n    $cacheTime = 0;\n}\n/** @var CoreTools $pdoTools */\n$modx->services[\'pdotools_config\'] = $scriptProperties;\n$pdoTools = $modx->services->get(CoreTools::class);\n$modx->lexicon->load(\'pdotools:pdopage\');\n\n/** @var modResource $resource */\n$resource = ($id == $modx->resource->id)\n    ? $modx->resource\n    : $modx->getObject(\'modResource\', $id);\nif (!$resource) {\n    return \'\';\n}\n\n$title = [];\n$pagetitle = trim($resource->get($titleField));\nif (empty($pagetitle)) {\n    $pagetitle = $resource->get(\'pagetitle\');\n}\n\n// Add search request if exists\nif (!empty($_GET[$queryVarKey]) && strlen($_GET[$queryVarKey]) >= $minQuery && !empty($tplSearch)) {\n    $pagetitle .= \' \' . $pdoTools->getChunk($tplSearch, [\n            $queryVarKey => $modx->stripTags($_GET[$queryVarKey]),\n        ]);\n}\n$title[] = $pagetitle;\n\n// Add pagination if exists\nif (!empty($_GET[$pageVarKey]) && !empty($tplPages)) {\n    $title[] = $pdoTools->getChunk($tplPages, [\n        \'page\' => (int)$_GET[$pageVarKey],\n    ]);\n}\n\n// Add parents\n$cacheKey = $resource->getCacheKey() . \'/\' . $cacheKey;\n$cacheOptions = [\'cache_key\' => $modx->getOption(\'cache_resource_key\', null, \'resource\')];\n$crumbs = \'\';\nif (empty($cache) || !$crumbs = $modx->cacheManager->get($cacheKey, $cacheOptions)) {\n    $crumbs = $pdoTools->runSnippet(\'!pdoCrumbs\', array_merge(\n        [\n            \'to\' => $resource->id,\n            \'outputSeparator\' => $outputSeparator,\n            \'showHome\' => 0,\n            \'showAtHome\' => 0,\n            \'showCurrent\' => 0,\n            \'direction\' => \'rtl\',\n            \'tpl\' => \'@INLINE [[+menutitle]]\',\n            \'tplCurrent\' => \'@INLINE [[+menutitle]]\',\n            \'tplWrapper\' => \'@INLINE [[+output]]\',\n            \'tplMax\' => \'\',\n            \'tplHome\' => \'\',\n        ], $scriptProperties\n    ));\n}\nif (!empty($crumbs)) {\n    if (!empty($cache)) {\n        $modx->cacheManager->set($cacheKey, $crumbs, $cacheTime, $cacheOptions);\n    }\n    $title[] = $crumbs;\n}\n\nif (!empty($registerJs)) {\n    $config = [\n        \'separator\' => $outputSeparator,\n        \'tpl\' => str_replace([\'[[+\', \']]\'], [\'{\', \'}\'], $pdoTools->getChunk($tplPages)),\n    ];\n    /** @noinspection Annotator */\n    $modx->regClientStartupScript(\'<script>pdoTitle = \' . json_encode($config) . \';</script>\',\n        true);\n}\n\nreturn implode($outputSeparator, $title);',0,'a:13:{s:2:\"id\";a:7:{s:4:\"name\";s:2:\"id\";s:4:\"desc\";s:16:\"pdotools_prop_id\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"exclude\";a:7:{s:4:\"name\";s:7:\"exclude\";s:4:\"desc\";s:21:\"pdotools_prop_exclude\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:25:\"pdotools_prop_title_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"titleField\";a:7:{s:4:\"name\";s:10:\"titleField\";s:4:\"desc\";s:24:\"pdotools_prop_titleField\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"longtitle\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:25:\"pdotools_prop_title_cache\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplPages\";a:7:{s:4:\"name\";s:8:\"tplPages\";s:4:\"desc\";s:22:\"pdotools_prop_tplPages\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:68:\"@INLINE [[%pdopage_page]] [[+page]] [[%pdopage_from]] [[+pageCount]]\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"pageVarKey\";a:7:{s:4:\"name\";s:10:\"pageVarKey\";s:4:\"desc\";s:24:\"pdotools_prop_pageVarKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"page\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"tplSearch\";a:7:{s:4:\"name\";s:9:\"tplSearch\";s:4:\"desc\";s:23:\"pdotools_prop_tplSearch\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:27:\"@INLINE «[[+mse2_query]]»\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"queryVarKey\";a:7:{s:4:\"name\";s:11:\"queryVarKey\";s:4:\"desc\";s:25:\"pdotools_prop_queryVarKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"query\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"minQuery\";a:7:{s:4:\"name\";s:8:\"minQuery\";s:4:\"desc\";s:22:\"pdotools_prop_minQuery\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:35:\"pdotools_prop_title_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\" / \";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"registerJs\";a:7:{s:4:\"name\";s:10:\"registerJs\";s:4:\"desc\";s:24:\"pdotools_prop_registerJs\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}','',0,'core/components/pdotools/elements/snippets/snippet.pdotitle.php'),
(10,1,0,'pdoArchive','',0,1,0,'use ModxPro\\PdoTools\\Fetch;\nuse MODX\\Revolution\\modSnippet;\nuse MODX\\Revolution\\modWebLink;\n\n/** @var MODX\\Revolution\\modX $modx */\n/** @var array $scriptProperties */\n\n$modx->lexicon->load(\'pdotools:pdoarchive\');\n\n$tplWrapper = $modx->getOption(\'tplWrapper\', $scriptProperties);\n$tplYear = $modx->getOption(\'tplYear\', $scriptProperties);\n$tplMonth = $modx->getOption(\'tplMonth\', $scriptProperties);\n$tplDay = $modx->getOption(\'tplDay\', $scriptProperties);\n$tpl = $modx->getOption(\'tpl\', $scriptProperties);\n$dateField = $modx->getOption(\'dateField\', $scriptProperties, \'createdon\', true);\n$dateFormat = $modx->getOption(\'dateFormat\', $scriptProperties, \'H:i\', true);\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \"\\n\");\n\n// Adding extra parameters into special place so we can put them in a results\n/** @var modSnippet $snippet */\n$additionalPlaceholders = $properties = [];\nif (isset($this) && $this instanceof modSnippet) {\n    $properties = $this->get(\'properties\');\n} elseif ($snippet = $modx->getObject(modSnippet::class, [\'name\' => \'pdoResources\'])) {\n    $properties = $snippet->get(\'properties\');\n}\nif (!empty($properties)) {\n    foreach ($scriptProperties as $k => $v) {\n        if (!isset($properties[$k])) {\n            $additionalPlaceholders[$k] = $v;\n        }\n    }\n}\n$scriptProperties[\'additionalPlaceholders\'] = $additionalPlaceholders;\nif (isset($parents) && $parents === \'\') {\n    $scriptProperties[\'parents\'] = $modx->resource->id;\n}\n$scriptProperties[\'return\'] = \'data\';\n$modx->services[\'pdotools_config\'] = $scriptProperties;\n$pdoFetch = $modx->services->get(Fetch::class);\n$pdoFetch->addTime(\'pdoTools loaded\');\n$rows = $pdoFetch->run();\n\n// Process rows\n$tree = [];\nforeach ($rows as $row) {\n    $tmp = $row[$dateField];\n    if (!is_numeric($tmp)) {\n        $tmp = strtotime($tmp);\n    }\n    $year = date(\'Y\', $tmp);\n    $month = date(\'m\', $tmp);\n    $day = date(\'d\', $tmp);\n    $tree[$year][$month][$day][] = $row;\n}\n\n$output = \'\';\nforeach ($tree as $year => $months) {\n    $rows_year = \'\';\n    $count_year = 0;\n\n    foreach ($months as $month => $days) {\n        $rows_month = \'\';\n        $count_month = 0;\n\n        foreach ($days as $day => $resources) {\n            $rows_day = [];\n            $count_day = 0;\n            $idx = 1;\n\n            foreach ($resources as $resource) {\n                $resource[\'day\'] = $day;\n                $resource[\'month\'] = $month;\n                $resource[\'year\'] = $year;\n                $resource[\'date\'] = strftime($dateFormat, $resource[$dateField]);\n                $resource[\'idx\'] = $idx++;\n                $resource[\'menutitle\'] = !empty($resource[\'menutitle\'])\n                    ? $resource[\'menutitle\']\n                    : $resource[\'pagetitle\'];\n                // Add placeholder [[+link]] if specified\n                if (!empty($scriptProperties[\'useWeblinkUrl\'])) {\n                    if (!isset($resource[\'context_key\'])) {\n                        $resource[\'context_key\'] = \'\';\n                    }\n                    if (isset($resource[\'class_key\']) && ($resource[\'class_key\'] == modWebLink::class)) {\n                        $resource[\'link\'] = isset($resource[\'content\']) && is_numeric(trim($resource[\'content\'], \'[]~ \'))\n                            ? $pdoFetch->makeUrl(intval(trim($resource[\'content\'], \'[]~ \')), $resource)\n                            : (isset($resource[\'content\']) ? $resource[\'content\'] : \'\');\n                    } else {\n                        $resource[\'link\'] = $pdoFetch->makeUrl($resource[\'id\'], $resource);\n                    }\n                } else {\n                    $resource[\'link\'] = \'\';\n                }\n                $tpl = $pdoFetch->defineChunk($resource);\n                $rows_day[] = $pdoFetch->getChunk($tpl, $resource);\n                $count_year++;\n                $count_month++;\n                $count_day++;\n            }\n\n            $rows_month .= !empty($tplDay)\n                ? $pdoFetch->getChunk($tplDay, [\n                    \'day\' => $day,\n                    \'month\' => $month,\n                    \'year\' => $year,\n                    \'count\' => $count_day,\n                    \'wrapper\' => implode($outputSeparator, $rows_day),\n                ], $pdoFetch->config(\'fastMode\'))\n                : implode($outputSeparator, $rows_day);\n        }\n\n        $rows_year .= !empty($tplMonth)\n            ? $pdoFetch->getChunk($tplMonth, [\n                \'month\' => $month,\n                \'month_name\' => $modx->lexicon(\'pdoarchive_month_\' . $month),\n                \'year\' => $year,\n                \'count\' => $count_month,\n                \'wrapper\' => $rows_month,\n            ], $pdoFetch->config(\'fastMode\'))\n            : $rows_month;\n    }\n\n    $output .= !empty($tplYear)\n        ? $pdoFetch->getChunk($tplYear, [\n            \'year\' => $year,\n            \'count\' => $count_year,\n            \'wrapper\' => $rows_year,\n        ], $pdoFetch->config(\'fastMode\'))\n        : $rows_year;\n}\n$pdoFetch->addTime(\'Rows processed\');\n\n// Return output\nif (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\n    $output = $pdoFetch->getChunk(\n        $tplWrapper,\n        array_merge($additionalPlaceholders, [\'output\' => $output]),\n        $pdoFetch->config(\'fastMode\')\n    );\n    $pdoFetch->addTime(\'Rows wrapped\');\n}\n\nif ($modx->user->isAuthenticated(\'mgr\') && (bool)$showLog) {\n    $modx->setPlaceholder(\'pdoArchiveLog\', print_r($pdoFetch->getTime(), true));\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n} else {\n    return $output;\n}',0,'a:36:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:65:\"@INLINE <li>[[+date]] <a href=\"[[+link]]\">[[+menutitle]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplYear\";a:7:{s:4:\"name\";s:7:\"tplYear\";s:4:\"desc\";s:21:\"pdotools_prop_tplYear\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:71:\"@INLINE <h3>[[+year]] <sup>([[+count]])</sup></h3><ul>[[+wrapper]]</ul>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplMonth\";a:7:{s:4:\"name\";s:8:\"tplMonth\";s:4:\"desc\";s:22:\"pdotools_prop_tplMonth\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:86:\"@INLINE <li><h4>[[+month_name]] <sup>([[+count]])</sup></h4><ul>[[+wrapper]]</ul></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplDay\";a:7:{s:4:\"name\";s:6:\"tplDay\";s:4:\"desc\";s:20:\"pdotools_prop_tplDay\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:79:\"@INLINE <li><h5>[[+day]] <sup>([[+count]])</sup></h5><ul>[[+wrapper]]</ul></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"dateField\";a:7:{s:4:\"name\";s:9:\"dateField\";s:4:\"desc\";s:23:\"pdotools_prop_dateField\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"createdon\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"dateFormat\";a:7:{s:4:\"name\";s:10:\"dateFormat\";s:4:\"desc\";s:24:\"pdotools_prop_dateFormat\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"%H:%M\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"createdon\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"sortbyTV\";a:7:{s:4:\"name\";s:8:\"sortbyTV\";s:4:\"desc\";s:22:\"pdotools_prop_sortbyTV\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"sortbyTVType\";a:7:{s:4:\"name\";s:12:\"sortbyTVType\";s:4:\"desc\";s:26:\"pdotools_prop_sortbyTVType\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:4:\"DESC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"sortdirTV\";a:7:{s:4:\"name\";s:9:\"sortdirTV\";s:4:\"desc\";s:23:\"pdotools_prop_sortdirTV\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"includeContent\";a:7:{s:4:\"name\";s:14:\"includeContent\";s:4:\"desc\";s:28:\"pdotools_prop_includeContent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}','',0,'core/components/pdotools/elements/snippets/snippet.pdoarchive.php'),
(11,0,0,'getImageList','',0,2,0,'/**\r\n * getImageList\r\n *\r\n * Copyright 2009-2014 by Bruno Perner <b.perner@gmx.de>\r\n *\r\n * getImageList is free software; you can redistribute it and/or modify it\r\n * under the terms of the GNU General Public License as published by the Free\r\n * Software Foundation; either version 2 of the License, or (at your option) any\r\n * later version.\r\n *\r\n * getImageList is distributed in the hope that it will be useful, but WITHOUT ANY\r\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\r\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\r\n *\r\n * You should have received a copy of the GNU General Public License along with\r\n * getImageList; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\r\n * Suite 330, Boston, MA 02111-1307 USA\r\n *\r\n * @package migx\r\n */\r\n/**\r\n * getImageList\r\n *\r\n * display Items from outputvalue of TV with custom-TV-input-type MIGX or from other JSON-string for MODx Revolution \r\n *\r\n * @version 1.4\r\n * @author Bruno Perner <b.perner@gmx.de>\r\n * @copyright Copyright &copy; 2009-2014\r\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\r\n * version 2 or (at your option) any later version.\r\n * @package migx\r\n */\r\n\r\n/*example: <ul>[[!getImageList? &tvname=`myTV`&tpl=`@CODE:<li>[[+idx]]<img src=\"[[+imageURL]]\"/><p>[[+imageAlt]]</p></li>`]]</ul>*/\r\n/* get default properties */\r\n\r\n$allow_request = (bool)$modx->getOption(\'allowRequest\', $scriptProperties, false);\r\n$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\r\n$inherit_children_tvname = $modx->getOption(\'inherit_children_tvname\', $scriptProperties, \'\');\r\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'\');\r\n$wrapperTpl = $modx->getOption(\'wrapperTpl\', $scriptProperties, \'\');\r\n$emptyTpl = $modx->getOption(\'emptyTpl\', $scriptProperties, \'\'); \r\n$limit = $modx->getOption(\'limit\', $scriptProperties, \'0\');\r\n$offset = $modx->getOption(\'offset\', $scriptProperties, 0);\r\n$totalVar = $modx->getOption(\'totalVar\', $scriptProperties, \'total\');\r\n$randomize = $modx->getOption(\'randomize\', $scriptProperties, false);\r\n$preselectLimit = $modx->getOption(\'preselectLimit\', $scriptProperties, 0); // when random preselect important images\r\n$where = $modx->getOption(\'where\', $scriptProperties, \'\');\r\n$where = !empty($where) ? json_decode($where,true) : array();\r\n$sort = $modx->getOption(\'sort\', $scriptProperties, \'\');\r\n$sort = !empty($sort) ? json_decode($sort,true) : array();\r\n$toSeparatePlaceholders = $modx->getOption(\'toSeparatePlaceholders\', $scriptProperties, false);\r\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, false);\r\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \'\');\r\n$splitSeparator = $modx->getOption(\'splitSeparator\', $scriptProperties, \'\');\r\n$placeholdersKeyField = $modx->getOption(\'placeholdersKeyField\', $scriptProperties, \'MIGX_id\');\r\n$toJsonPlaceholder = $modx->getOption(\'toJsonPlaceholder\', $scriptProperties, false);\r\n$jsonVarKey = $modx->getOption(\'jsonVarKey\', $scriptProperties, \'migx_outputvalue\');\r\n$outputvalue = $modx->getOption(\'value\', $scriptProperties, \'\');\r\nif ($allow_request) {\r\n    $outputvalue = isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\r\n}\r\n$docidVarKey = $modx->getOption(\'docidVarKey\', $scriptProperties, \'migx_docid\');\r\n$docid = $modx->getOption(\'docid\', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(\'id\') : 1));\r\nif ($allow_request) {\r\n    $docid = isset($_REQUEST[$docidVarKey]) ? $_REQUEST[$docidVarKey] : $docid;\r\n}\r\n$processTVs = $modx->getOption(\'processTVs\', $scriptProperties, \'1\');\r\n$reverse = $modx->getOption(\'reverse\', $scriptProperties, \'0\');\r\n$sumFields = $modx->getOption(\'sumFields\', $scriptProperties, \'\');\r\n$sumPrefix = $modx->getOption(\'sumPrefix\', $scriptProperties, \'summary_\');\r\n$addfields = $modx->getOption(\'addfields\', $scriptProperties, \'\');\r\n$addfields = !empty($addfields) ? explode(\',\', $addfields) : null;\r\n//split json into parts\r\n$splits = json_decode($modx->getOption(\'splits\', $scriptProperties, 0),true);\r\n$splitTpl = $modx->getOption(\'splitTpl\', $scriptProperties, \'\');\r\n$splitSeparator = $modx->getOption(\'splitSeparator\', $scriptProperties, \'\');\r\n$inheritFrom = $modx->getOption(\'inheritFrom\', $scriptProperties, \'\'); //commaseparated list of resource-ids or/and the keyword \'parents\' where to inherit from\r\n$inheritFrom = !empty($inheritFrom) ? explode(\',\', $inheritFrom) : \'\';\r\n\r\n$modx->setPlaceholder(\'docid\', $docid);\r\n\r\n$base_path = $modx->getOption(\'base_path\', null, MODX_BASE_PATH);\r\n$base_url = $modx->getOption(\'base_url\', null, MODX_BASE_URL);\r\n\r\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\r\nif (!($migx instanceof Migx))\r\n    return \'\';\r\n$migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : \'web\';\r\n\r\nif (!empty($tvname)) {\r\n    if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $tvname))) {\r\n\r\n        /*\r\n        *   get inputProperties\r\n        */\r\n\r\n\r\n        $properties = $tv->get(\'input_properties\');\r\n        $properties = isset($properties[\'formtabs\']) ? $properties : $tv->getProperties();\r\n\r\n        $migx->config[\'configs\'] = $modx->getOption(\'configs\', $properties, \'\');\r\n        if (!empty($migx->config[\'configs\'])) {\r\n            $migx->loadConfigs();\r\n            // get tabs from file or migx-config-table\r\n            $formtabs = $migx->getTabs();\r\n        }\r\n        if (empty($formtabs) && isset($properties[\'formtabs\'])) {\r\n            //try to get formtabs and its fields from properties\r\n            $formtabs = json_decode($properties[\'formtabs\'],true);\r\n        }\r\n\r\n        if (!empty($properties[\'basePath\'])) {\r\n            if ($properties[\'autoResourceFolders\'] == \'true\') {\r\n                $scriptProperties[\'base_path\'] = $base_path . $properties[\'basePath\'] . $docid . \'/\';\r\n                $scriptProperties[\'base_url\'] = $base_url . $properties[\'basePath\'] . $docid . \'/\';\r\n            } else {\r\n                $scriptProperties[\'base_path\'] = $base_path . $properties[\'base_path\'];\r\n                $scriptProperties[\'base_url\'] = $base_url . $properties[\'basePath\'];\r\n            }\r\n        }\r\n        if ($jsonVarKey == \'migx_outputvalue\' && !empty($properties[\'jsonvarkey\'])) {\r\n            $jsonVarKey = $properties[\'jsonvarkey\'];\r\n            $outputvalue = $allow_request && isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\r\n        }\r\n\r\n        if (empty($outputvalue)) {\r\n            $outputvalue = $tv->renderOutput($docid);\r\n            if (empty($outputvalue) && !empty($inheritFrom)) {\r\n                foreach ($inheritFrom as $from) {\r\n                    if ($from == \'parents\') {\r\n                        if (!empty($inherit_children_tvname)){\r\n                            //try to get items from optional MIGX-TV for children\r\n                            if ($inh_tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $inherit_children_tvname))) {\r\n                                $outputvalue = $inh_tv->processInheritBinding(\'\', $docid);    \r\n                            }\r\n                        }\r\n                        $outputvalue = empty($outputvalue) ? $tv->processInheritBinding(\'\', $docid) : $outputvalue;\r\n                    } else {\r\n                        $outputvalue = $tv->renderOutput($from);\r\n                    }\r\n                    if (!empty($outputvalue)) {\r\n                        break;\r\n                    }\r\n                }\r\n            }\r\n        }\r\n\r\n\r\n        /*\r\n        *   get inputTvs \r\n        */\r\n        $inputTvs = array();\r\n        if (is_array($formtabs)) {\r\n\r\n            //multiple different Forms\r\n            // Note: use same field-names and inputTVs in all forms\r\n            $inputTvs = $migx->extractInputTvs($formtabs);\r\n        }\r\n        if ($migx->source = $tv->getSource($migx->working_context, false)) {\r\n            $migx->source->initialize();\r\n        }\r\n\r\n    }\r\n\r\n\r\n}\r\n\r\nif (empty($outputvalue)) {\r\n    $modx->setPlaceholder($totalVar, 0);\r\n    return \'\';\r\n}\r\n\r\n//echo $outputvalue.\'<br/><br/>\';\r\n\r\n$items = json_decode($outputvalue,true);\r\n\r\nif (!is_array($items)){\r\n    $items = [];\r\n}\r\n\r\n// where filter\r\nif (is_array($where) && count($where) > 0) {\r\n    $items = $migx->filterItems($where, $items);\r\n}\r\n$modx->setPlaceholder($totalVar, count($items));\r\n\r\nif (!empty($reverse)) {\r\n    $items = array_reverse($items);\r\n}\r\n\r\n// sort items\r\nif (is_array($sort) && count($sort) > 0) {\r\n    $items = $migx->sortDbResult($items, $sort);\r\n}\r\n\r\n$summaries = array();\r\n$output = \'\';\r\n$items = $offset > 0 ? array_slice($items, $offset) : $items;\r\n$count = count($items);\r\n\r\nif ($count > 0) {\r\n    $limit = $limit == 0 || $limit > $count ? $count : $limit;\r\n    $preselectLimit = $preselectLimit > $count ? $count : $preselectLimit;\r\n    //preselect important items\r\n    $preitems = array();\r\n    if ($randomize && $preselectLimit > 0) {\r\n        for ($i = 0; $i < $preselectLimit; $i++) {\r\n            $preitems[] = $items[$i];\r\n            unset($items[$i]);\r\n        }\r\n        $limit = $limit - count($preitems);\r\n    }\r\n\r\n    //shuffle items\r\n    if ($randomize) {\r\n        shuffle($items);\r\n    }\r\n\r\n    //limit items\r\n    $count = count($items);\r\n    $tempitems = array();\r\n\r\n    for ($i = 0; $i < $limit; $i++) {\r\n        if ($i >= $count) {\r\n            break;\r\n        }\r\n        $tempitems[] = $items[$i];\r\n    }\r\n    $items = $tempitems;\r\n\r\n    //add preselected items and schuffle again\r\n    if ($randomize && $preselectLimit > 0) {\r\n        $items = array_merge($preitems, $items);\r\n        shuffle($items);\r\n    }\r\n\r\n    $properties = array();\r\n    foreach ($scriptProperties as $property => $value) {\r\n        $properties[\'property.\' . $property] = $value;\r\n    }\r\n\r\n    $idx = 0;\r\n    $output = array();\r\n    $template = array();\r\n    $count = count($items);\r\n\r\n    foreach ($items as $key => $item) {\r\n        $formname = isset($item[\'MIGX_formname\']) ? $item[\'MIGX_formname\'] . \'_\' : \'\';\r\n        $fields = array();\r\n        foreach ($item as $field => $value) {\r\n            if (is_array($value)) {\r\n                if (is_array($value[0])) {\r\n                    //nested array - convert to json\r\n                    $value = json_encode($value);\r\n                } else {\r\n                    $value = implode(\'||\', $value); //handle arrays (checkboxes, multiselects)\r\n                }\r\n            }\r\n\r\n\r\n            $inputTVkey = $formname . $field;\r\n\r\n            if ($processTVs && isset($inputTvs[$inputTVkey])) {\r\n                if (isset($inputTvs[$inputTVkey][\'inputTV\']) && $tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $inputTvs[$inputTVkey][\'inputTV\']))) {\r\n\r\n                } else {\r\n                    $tv = $modx->newObject(\'modTemplateVar\');\r\n                    $tv->set(\'type\', $inputTvs[$inputTVkey][\'inputTVtype\']);\r\n                }\r\n                $inputTV = $inputTvs[$inputTVkey];\r\n\r\n                $mTypes = $modx->getOption(\'manipulatable_url_tv_output_types\', null, \'image,file\');\r\n                //don\'t manipulate any urls here\r\n                $modx->setOption(\'manipulatable_url_tv_output_types\', \'\');\r\n                $tv->set(\'default_text\', $value);\r\n\r\n                // $value = $tv->renderOutput($docid); breaks if the TV used in MIGX is also assigned to this Template,\r\n                // example tv: imageLogo is assigned to the template and imageLogo is assigned to the MIGX TV as a result\r\n                // only the value of the imageLogo is returned for the MIGX TV instance\r\n                // need to override default MODX method: $value = $tv->renderOutput($docid);\r\n                /* process any TV commands in value */\r\n                $tv_value = $tv->processBindings($value, $docid);\r\n                $params = $tv->get(\'output_properties\');\r\n                if (empty($params) || $params === null) {\r\n                    $params = [];\r\n                }\r\n                /* run prepareOutput to allow for custom overriding */\r\n                $tv_value = $tv->prepareOutput($tv_value, $docid);\r\n                /* find the render */\r\n                $outputRenderPaths = $tv->getRenderDirectories(\'OnTVOutputRenderList\',\'output\');\r\n                $value = $tv->getRender($params, $tv_value, $outputRenderPaths, \'output\', $docid, $tv->get(\'display\'));\r\n                // End override of $value = $tv->renderOutput($docid);\r\n				\r\n                //set option back\r\n                $modx->setOption(\'manipulatable_url_tv_output_types\', $mTypes);\r\n                //now manipulate urls\r\n                if ($mediasource = $migx->getFieldSource($inputTV, $tv)) {\r\n                    $mTypes = explode(\',\', $mTypes);\r\n                    if (!empty($value) && in_array($tv->get(\'type\'), $mTypes)) {\r\n                        //$value = $mediasource->prepareOutputUrl($value);\r\n                        $value = str_replace(\'/./\', \'/\', $mediasource->prepareOutputUrl($value));\r\n                    }\r\n                }\r\n\r\n            }\r\n            $fields[$field] = $value;\r\n\r\n        }\r\n\r\n        if (!empty($addfields)) {\r\n            foreach ($addfields as $addfield) {\r\n                $addfield = explode(\':\', $addfield);\r\n                $addname = $addfield[0];\r\n                $adddefault = isset($addfield[1]) ? $addfield[1] : \'\';\r\n                $fields[$addname] = $adddefault;\r\n            }\r\n        }\r\n\r\n        if (!empty($sumFields)) {\r\n            $sumFields = is_array($sumFields) ? $sumFields : explode(\',\', $sumFields);\r\n            foreach ($sumFields as $sumField) {\r\n                if (isset($fields[$sumField])) {\r\n                    $summaries[$sumPrefix . $sumField] = $summaries[$sumPrefix . $sumField] + $fields[$sumField];\r\n                    $fields[$sumPrefix . $sumField] = $summaries[$sumPrefix . $sumField];\r\n                }\r\n            }\r\n        }\r\n\r\n\r\n        if ($toJsonPlaceholder) {\r\n            $output[] = $fields;\r\n        } else {\r\n            $fields[\'_alt\'] = $idx % 2;\r\n            $idx++;\r\n            $fields[\'_first\'] = $idx == 1 ? true : \'\';\r\n            $fields[\'_last\'] = $idx == $limit ? true : \'\';\r\n            $fields[\'idx\'] = $idx;\r\n            $rowtpl = \'\';\r\n            //get changing tpls from field\r\n            if (substr($tpl, 0, 7) == \"@FIELD:\") {\r\n                $tplField = substr($tpl, 7);\r\n                $rowtpl = $fields[$tplField];\r\n            }\r\n\r\n            if ($fields[\'_first\'] && !empty($tplFirst)) {\r\n                $rowtpl = $tplFirst;\r\n            }\r\n            if ($fields[\'_last\'] && empty($rowtpl) && !empty($tplLast)) {\r\n                $rowtpl = $tplLast;\r\n            }\r\n            $tplidx = \'tpl_\' . $idx;\r\n            if (empty($rowtpl) && !empty($$tplidx)) {\r\n                $rowtpl = $$tplidx;\r\n            }\r\n            if ($idx > 1 && empty($rowtpl)) {\r\n                $divisors = $migx->getDivisors($idx);\r\n                if (!empty($divisors)) {\r\n                    foreach ($divisors as $divisor) {\r\n                        $tplnth = \'tpl_n\' . $divisor;\r\n                        if (!empty($$tplnth)) {\r\n                            $rowtpl = $$tplnth;\r\n                            if (!empty($rowtpl)) {\r\n                                break;\r\n                            }\r\n                        }\r\n                    }\r\n                }\r\n            }\r\n\r\n            if ($count == 1 && isset($tpl_oneresult)) {\r\n                $rowtpl = $tpl_oneresult;\r\n            }\r\n\r\n            $fields = array_merge($fields, $properties);\r\n\r\n            if (!empty($rowtpl)) {\r\n                $template = $migx->getTemplate($tpl, $template);\r\n                $fields[\'_tpl\'] = $template[$tpl];\r\n            } else {\r\n                $rowtpl = $tpl;\r\n\r\n            }\r\n            $template = $migx->getTemplate($rowtpl, $template);\r\n\r\n\r\n            if ($template[$rowtpl]) {\r\n                $chunk = $modx->newObject(\'modChunk\');\r\n                $chunk->setCacheable(false);\r\n                $chunk->setContent($template[$rowtpl]);\r\n\r\n\r\n                if (!empty($placeholdersKeyField) && isset($fields[$placeholdersKeyField])) {\r\n                    $output[$fields[$placeholdersKeyField]] = $chunk->process($fields);\r\n                } else {\r\n                    $output[] = $chunk->process($fields);\r\n                }\r\n            } else {\r\n                if (!empty($placeholdersKeyField)) {\r\n                    $output[$fields[$placeholdersKeyField]] = \'<pre>\' . print_r($fields, 1) . \'</pre>\';\r\n                } else {\r\n                    $output[] = \'<pre>\' . print_r($fields, 1) . \'</pre>\';\r\n                }\r\n            }\r\n        }\r\n\r\n\r\n    }\r\n}\r\n\r\nif (count($summaries) > 0) {\r\n    $modx->toPlaceholders($summaries);\r\n}\r\n\r\n\r\nif ($toJsonPlaceholder) {\r\n    $modx->setPlaceholder($toJsonPlaceholder, json_encode($output));\r\n    return \'\';\r\n}\r\n\r\nif (!empty($toSeparatePlaceholders)) {\r\n    $modx->toPlaceholders($output, $toSeparatePlaceholders);\r\n    return \'\';\r\n}\r\n/*\r\nif (!empty($outerTpl))\r\n$o = parseTpl($outerTpl, array(\'output\'=>implode($outputSeparator, $output)));\r\nelse \r\n*/\r\n\r\nif ($count > 0 && $splits > 0) {\r\n    $size = ceil($count / $splits);\r\n    $chunks = array_chunk($output, $size);\r\n    $output = array();\r\n    foreach ($chunks as $chunk) {\r\n        $o = implode($outputSeparator, $chunk);\r\n        $output[] = $modx->getChunk($splitTpl, array(\'output\' => $o));\r\n    }\r\n    $outputSeparator = $splitSeparator;\r\n}\r\n\r\nif (is_array($output)) {\r\n    $o = implode($outputSeparator, $output);\r\n} else {\r\n    $o = $output;\r\n}\r\n\r\nif (!empty($o) && !empty($wrapperTpl)) {\r\n    $template = $migx->getTemplate($wrapperTpl);\r\n    if ($template[$wrapperTpl]) {\r\n        $chunk = $modx->newObject(\'modChunk\');\r\n        $chunk->setCacheable(false);\r\n        $chunk->setContent($template[$wrapperTpl]);\r\n        $properties[\'output\'] = $o;\r\n        $o = $chunk->process($properties);\r\n    }\r\n}\r\n\r\nif (empty($o) && !empty($emptyTpl)) {\r\n    $template = $migx->getTemplate($emptyTpl);\r\n    if ($template[$emptyTpl]) {\r\n        $chunk = $modx->newObject(\'modChunk\');\r\n        $chunk->setCacheable(false);\r\n        $chunk->setContent($template[$emptyTpl]);\r\n        $o = $chunk->process($properties);\r\n    }\r\n}\r\n\r\nif (!empty($toPlaceholder)) {\r\n    $modx->setPlaceholder($toPlaceholder, $o);\r\n    return \'\';\r\n}\r\n\r\nreturn $o;',0,'a:0:{}','',0,''),
(12,0,0,'migxGetRelations','',0,2,0,'$id = $modx->getOption(\'id\', $scriptProperties, $modx->resource->get(\'id\'));\r\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, \'\');\r\n$element = $modx->getOption(\'element\', $scriptProperties, \'getResources\');\r\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \',\');\r\n$sourceWhere = $modx->getOption(\'sourceWhere\', $scriptProperties, \'\');\r\n$ignoreRelationIfEmpty = $modx->getOption(\'ignoreRelationIfEmpty\', $scriptProperties, false);\r\n$inheritFromParents = $modx->getOption(\'inheritFromParents\', $scriptProperties, false);\r\n$parentIDs = $inheritFromParents ? array_merge(array($id), $modx->getParentIds($id)) : array($id);\r\n\r\n$packageName = \'resourcerelations\';\r\n\r\n$packagepath = $modx->getOption(\'core_path\') . \'components/\' . $packageName . \'/\';\r\n$modelpath = $packagepath . \'model/\';\r\n\r\n$modx->addPackage($packageName, $modelpath, $prefix);\r\n$classname = \'rrResourceRelation\';\r\n$output = \'\';\r\n\r\nforeach ($parentIDs as $id) {\r\n    if (!empty($id)) {\r\n        $output = \'\';\r\n                \r\n        $c = $modx->newQuery($classname, array(\'target_id\' => $id, \'published\' => \'1\'));\r\n        $c->select($modx->getSelectColumns($classname, $c->getAlias()));\r\n\r\n        if (!empty($sourceWhere)) {\r\n            $sourceWhere_ar = $modx->fromJson($sourceWhere);\r\n            if (is_array($sourceWhere_ar)) {\r\n                $where = array();\r\n                foreach ($sourceWhere_ar as $key => $value) {\r\n                    $where[\'Source.\' . $key] = $value;\r\n                }\r\n                $joinclass = \'modResource\';\r\n                $joinalias = \'Source\';\r\n                $selectfields = \'id\';\r\n                $selectfields = !empty($selectfields) ? explode(\',\', $selectfields) : null;\r\n                $c->leftjoin($joinclass, $joinalias);\r\n                $c->select($modx->getSelectColumns($joinclass, $joinalias, $joinalias . \'_\', $selectfields));\r\n                $c->where($where);\r\n            }\r\n        }\r\n\r\n        //$c->prepare(); echo $c->toSql();\r\n        if ($c->prepare() && $c->stmt->execute()) {\r\n            $collection = $c->stmt->fetchAll(PDO::FETCH_ASSOC);\r\n        }\r\n        \r\n        foreach ($collection as $row) {\r\n            $ids[] = $row[\'source_id\'];\r\n        }\r\n        $output = implode($outputSeparator, $ids);\r\n    }\r\n    if (!empty($output)){\r\n        break;\r\n    }\r\n}\r\n\r\n\r\nif (!empty($element)) {\r\n    if (empty($output) && $ignoreRelationIfEmpty) {\r\n        return $modx->runSnippet($element, $scriptProperties);\r\n    } else {\r\n        $scriptProperties[\'resources\'] = $output;\r\n        $scriptProperties[\'parents\'] = \'9999999\';\r\n        return $modx->runSnippet($element, $scriptProperties);\r\n    }\r\n\r\n\r\n}\r\n\r\nif (!empty($toPlaceholder)) {\r\n    $modx->setPlaceholder($toPlaceholder, $output);\r\n    return \'\';\r\n}\r\n\r\nreturn $output;',0,'a:0:{}','',0,''),
(13,0,0,'migx','',0,2,0,'$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\r\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'\');\r\n$limit = $modx->getOption(\'limit\', $scriptProperties, \'0\');\r\n$offset = $modx->getOption(\'offset\', $scriptProperties, 0);\r\n$totalVar = $modx->getOption(\'totalVar\', $scriptProperties, \'total\');\r\n$randomize = $modx->getOption(\'randomize\', $scriptProperties, false);\r\n$preselectLimit = $modx->getOption(\'preselectLimit\', $scriptProperties, 0); // when random preselect important images\r\n$where = $modx->getOption(\'where\', $scriptProperties, \'\');\r\n$where = !empty($where) ? $modx->fromJSON($where) : array();\r\n$sortConfig = $modx->getOption(\'sortConfig\', $scriptProperties, \'\');\r\n$sortConfig = !empty($sortConfig) ? $modx->fromJSON($sortConfig) : array();\r\n$configs = $modx->getOption(\'configs\', $scriptProperties, \'\');\r\n$configs = !empty($configs) ? explode(\',\',$configs):array();\r\n$toSeparatePlaceholders = $modx->getOption(\'toSeparatePlaceholders\', $scriptProperties, false);\r\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, false);\r\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \'\');\r\n//$placeholdersKeyField = $modx->getOption(\'placeholdersKeyField\', $scriptProperties, \'MIGX_id\');\r\n$placeholdersKeyField = $modx->getOption(\'placeholdersKeyField\', $scriptProperties, \'id\');\r\n$toJsonPlaceholder = $modx->getOption(\'toJsonPlaceholder\', $scriptProperties, false);\r\n$jsonVarKey = $modx->getOption(\'jsonVarKey\', $scriptProperties, \'migx_outputvalue\');\r\n$outputvalue = $modx->getOption(\'value\', $scriptProperties, \'\');\r\n$outputvalue = isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\r\n$docidVarKey = $modx->getOption(\'docidVarKey\', $scriptProperties, \'migx_docid\');\r\n$docid = $modx->getOption(\'docid\', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(\'id\') : 1));\r\n$docid = isset($_REQUEST[$docidVarKey]) ? $_REQUEST[$docidVarKey] : $docid;\r\n$processTVs = $modx->getOption(\'processTVs\', $scriptProperties, \'1\');\r\n\r\n$base_path = $modx->getOption(\'base_path\', null, MODX_BASE_PATH);\r\n$base_url = $modx->getOption(\'base_url\', null, MODX_BASE_URL);\r\n\r\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\r\nif (!($migx instanceof Migx))\r\n    return \'\';\r\n//$modx->migx = &$migx;\r\n$defaultcontext = \'web\';\r\n$migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : $defaultcontext;\r\n\r\nif (!empty($tvname))\r\n{\r\n    if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $tvname)))\r\n    {\r\n\r\n        /*\r\n        *   get inputProperties\r\n        */\r\n\r\n\r\n        $properties = $tv->get(\'input_properties\');\r\n        $properties = isset($properties[\'configs\']) ? $properties : $tv->getProperties();\r\n        $cfgs = $modx->getOption(\'configs\',$properties,\'\');\r\n        if (!empty($cfgs)){\r\n            $cfgs = explode(\',\',$cfgs);\r\n            $configs = array_merge($configs,$cfgs);\r\n           \r\n        }\r\n        \r\n    }\r\n}\r\n\r\n\r\n\r\n//$migx->config[\'configs\'] = implode(\',\',$configs);\r\n$migx->loadConfigs(false,true,array(\'configs\'=>implode(\',\',$configs)));\r\n$migx->customconfigs = array_merge($migx->customconfigs,$scriptProperties);\r\n\r\n\r\n\r\n// get tabs from file or migx-config-table\r\n$formtabs = $migx->getTabs();\r\nif (empty($formtabs))\r\n{\r\n    //try to get formtabs and its fields from properties\r\n    $formtabs = $modx->fromJSON($properties[\'formtabs\']);\r\n}\r\n\r\nif ($jsonVarKey == \'migx_outputvalue\' && !empty($properties[\'jsonvarkey\']))\r\n{\r\n    $jsonVarKey = $properties[\'jsonvarkey\'];\r\n    $outputvalue = isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\r\n}\r\n\r\n$outputvalue = $tv && empty($outputvalue) ? $tv->renderOutput($docid) : $outputvalue;\r\n/*\r\n*   get inputTvs \r\n*/\r\n$inputTvs = array();\r\nif (is_array($formtabs))\r\n{\r\n\r\n    //multiple different Forms\r\n    // Note: use same field-names and inputTVs in all forms\r\n    $inputTvs = $migx->extractInputTvs($formtabs);\r\n}\r\n\r\nif ($tv)\r\n{\r\n    $migx->source = $tv->getSource($migx->working_context, false);\r\n}\r\n\r\n//$task = $modx->migx->getTask();\r\n$filename = \'getlist.php\';\r\n$processorspath = $migx->config[\'processorsPath\'] . \'mgr/\';\r\n$filenames = array();\r\n$scriptProperties[\'start\'] = $modx->getOption(\'offset\', $scriptProperties, 0);\r\nif ($processor_file = $migx->findProcessor($processorspath, $filename, $filenames))\r\n{\r\n    include ($processor_file);\r\n    //todo: add getlist-processor for default-MIGX-TV\r\n}\r\n\r\n$items = isset($rows) && is_array($rows) ? $rows : array();\r\n$modx->setPlaceholder($totalVar, isset($count) ? $count : 0);\r\n\r\n$properties = array();\r\nforeach ($scriptProperties as $property => $value)\r\n{\r\n    $properties[\'property.\' . $property] = $value;\r\n}\r\n\r\n$idx = 0;\r\n$output = array();\r\nforeach ($items as $key => $item)\r\n{\r\n\r\n    $fields = array();\r\n    foreach ($item as $field => $value)\r\n    {\r\n        $value = is_array($value) ? implode(\'||\', $value) : $value; //handle arrays (checkboxes, multiselects)\r\n        if ($processTVs && isset($inputTvs[$field]))\r\n        {\r\n            if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $inputTvs[$field][\'inputTV\'])))\r\n            {\r\n\r\n            } else\r\n            {\r\n                $tv = $modx->newObject(\'modTemplateVar\');\r\n                $tv->set(\'type\', $inputTvs[$field][\'inputTVtype\']);\r\n            }\r\n            $inputTV = $inputTvs[$field];\r\n\r\n            $mTypes = $modx->getOption(\'manipulatable_url_tv_output_types\', null, \'image,file\');\r\n            //don\'t manipulate any urls here\r\n            $modx->setOption(\'manipulatable_url_tv_output_types\', \'\');\r\n            $tv->set(\'default_text\', $value);\r\n            $value = $tv->renderOutput($docid);\r\n            //set option back\r\n            $modx->setOption(\'manipulatable_url_tv_output_types\', $mTypes);\r\n            //now manipulate urls\r\n            if ($mediasource = $migx->getFieldSource($inputTV, $tv))\r\n            {\r\n                $mTypes = explode(\',\', $mTypes);\r\n                if (!empty($value) && in_array($tv->get(\'type\'), $mTypes))\r\n                {\r\n                    //$value = $mediasource->prepareOutputUrl($value);\r\n                    $value = str_replace(\'/./\', \'/\', $mediasource->prepareOutputUrl($value));\r\n                }\r\n            }\r\n\r\n        }\r\n        $fields[$field] = $value;\r\n\r\n    }\r\n    if ($toJsonPlaceholder)\r\n    {\r\n        $output[] = $fields;\r\n    } else\r\n    {\r\n        $fields[\'_alt\'] = $idx % 2;\r\n        $idx++;\r\n        $fields[\'_first\'] = $idx == 1 ? true : \'\';\r\n        $fields[\'_last\'] = $idx == $limit ? true : \'\';\r\n        $fields[\'idx\'] = $idx;\r\n        $rowtpl = $tpl;\r\n        //get changing tpls from field\r\n        if (substr($tpl, 0, 7) == \"@FIELD:\")\r\n        {\r\n            $tplField = substr($tpl, 7);\r\n            $rowtpl = $fields[$tplField];\r\n        }\r\n\r\n        if (!isset($template[$rowtpl]))\r\n        {\r\n            if (substr($rowtpl, 0, 6) == \"@FILE:\")\r\n            {\r\n                $template[$rowtpl] = file_get_contents($modx->config[\'base_path\'] . substr($rowtpl, 6));\r\n            } elseif (substr($rowtpl, 0, 6) == \"@CODE:\")\r\n            {\r\n                $template[$rowtpl] = substr($tpl, 6);\r\n            } elseif ($chunk = $modx->getObject(\'modChunk\', array(\'name\' => $rowtpl), true))\r\n            {\r\n                $template[$rowtpl] = $chunk->getContent();\r\n            } else\r\n            {\r\n                $template[$rowtpl] = false;\r\n            }\r\n        }\r\n\r\n        $fields = array_merge($fields, $properties);\r\n\r\n        if ($template[$rowtpl])\r\n        {\r\n            $chunk = $modx->newObject(\'modChunk\');\r\n            $chunk->setCacheable(false);\r\n            $chunk->setContent($template[$rowtpl]);\r\n            if (!empty($placeholdersKeyField) && isset($fields[$placeholdersKeyField]))\r\n            {\r\n                $output[$fields[$placeholdersKeyField]] = $chunk->process($fields);\r\n            } else\r\n            {\r\n                $output[] = $chunk->process($fields);\r\n            }\r\n        } else\r\n        {\r\n            if (!empty($placeholdersKeyField))\r\n            {\r\n                $output[$fields[$placeholdersKeyField]] = \'<pre>\' . print_r($fields, 1) . \'</pre>\';\r\n            } else\r\n            {\r\n                $output[] = \'<pre>\' . print_r($fields, 1) . \'</pre>\';\r\n            }\r\n        }\r\n    }\r\n\r\n\r\n}\r\n\r\n\r\nif ($toJsonPlaceholder)\r\n{\r\n    $modx->setPlaceholder($toJsonPlaceholder, $modx->toJson($output));\r\n    return \'\';\r\n}\r\n\r\nif (!empty($toSeparatePlaceholders))\r\n{\r\n    $modx->toPlaceholders($output, $toSeparatePlaceholders);\r\n    return \'\';\r\n}\r\n/*\r\nif (!empty($outerTpl))\r\n$o = parseTpl($outerTpl, array(\'output\'=>implode($outputSeparator, $output)));\r\nelse \r\n*/\r\nif (is_array($output))\r\n{\r\n    $o = implode($outputSeparator, $output);\r\n} else\r\n{\r\n    $o = $output;\r\n}\r\n\r\nif (!empty($toPlaceholder))\r\n{\r\n    $modx->setPlaceholder($toPlaceholder, $o);\r\n    return \'\';\r\n}\r\n\r\nreturn $o;',0,'a:0:{}','',0,''),
(14,0,0,'migxLoopCollection','',0,2,0,'/*\r\ngetXpdoInstanceAndAddPackage - properties\r\n\r\n$prefix\r\n$usecustomprefix\r\n$packageName\r\n\r\n\r\nprepareQuery - properties:\r\n\r\n$limit\r\n$offset\r\n$totalVar\r\n$where\r\n$queries\r\n$sortConfig\r\n$groupby\r\n$joins\r\n$selectfields\r\n$classname\r\n$debug\r\n\r\nrenderOutput - properties:\r\n\r\n$tpl\r\n$wrapperTpl\r\n$toSeparatePlaceholders\r\n$toPlaceholder\r\n$outputSeparator\r\n$placeholdersKeyField\r\n$toJsonPlaceholder\r\n$jsonVarKey\r\n$addfields\r\n\r\n*/\r\n\r\n\r\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\r\nif (!($migx instanceof Migx))\r\n    return \'\';\r\n//$modx->migx = &$migx;\r\n\r\n$xpdo = $migx->getXpdoInstanceAndAddPackage($scriptProperties);\r\n\r\n$defaultcontext = \'web\';\r\n$migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : $defaultcontext;\r\n\r\n$c = $migx->prepareQuery($xpdo,$scriptProperties);\r\n$rows = $migx->getCollection($c);\r\n\r\n$output = $migx->renderOutput($rows,$scriptProperties);\r\n\r\nreturn $output;',0,'a:0:{}','',0,''),
(15,0,0,'migxResourceMediaPath','',0,2,0,'/**\r\n * @name migxResourceMediaPath\r\n * @description Dynamically calculates the upload path for a given resource\r\n * \r\n * This Snippet is meant to dynamically calculate your baseBath attribute\r\n * for custom Media Sources.  This is useful if you wish to shepard uploaded\r\n * images to a folder dedicated to a given resource.  E.g. page 123 would \r\n * have its own images that page 456 could not reference.\r\n *\r\n * USAGE:\r\n * [[migxResourceMediaPath? &pathTpl=`assets/businesses/{id}/`]]\r\n * [[migxResourceMediaPath? &pathTpl=`assets/resourceimages/{id}/` &checkTVs=`mymigxtv`]]\r\n * [[migxResourceMediaPath? &pathTpl=`assets/test/{breadcrumb}`]]\r\n * [[migxResourceMediaPath? &pathTpl=`assets/test/{breadcrumb}` &breadcrumbdepth=`2`]]\r\n *\r\n * PARAMETERS\r\n * &pathTpl string formatting string specifying the file path. \r\n *		Relative to MODX base_path\r\n *		Available placeholders: {id}, {pagetitle}, {parent}\r\n * &docid (optional) integer page id\r\n * &createFolder (optional) boolean whether or not to create directory\r\n * &checkTVs (optional) commaseperated list of TVs to check, before directory is created \r\n */\r\n$pathTpl = $modx->getOption(\'pathTpl\', $scriptProperties, \'\');\r\n$docid = $modx->getOption(\'docid\', $scriptProperties, \'\');\r\n$createfolder = $modx->getOption(\'createFolder\', $scriptProperties, false);\r\n$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\r\n$checktvs = $modx->getOption(\'checkTVs\', $scriptProperties, false);\r\n\r\n$path = \'\';\r\n$fullpath = \'\';\r\n$createpath = false;\r\n$fallbackpath = $modx->getOption(\'fallbackPath\', $scriptProperties, \'assets/migxfallback/\');\r\n\r\nif (empty($pathTpl)) {\r\n    $modx->log(MODX_LOG_LEVEL_DEBUG, \'[migxResourceMediaPath]: pathTpl not specified.\');\r\n}\r\n\r\nif (empty($docid) && $modx->getPlaceholder(\'mediasource_docid\')) {\r\n    // placeholder was set by some script\r\n    // warning: the parser may not render placeholders, e.g. &docid=`[[*parent]]` may fail\r\n    $docid = $modx->getPlaceholder(\'mediasource_docid\');\r\n}\r\n\r\nif (empty($docid) && $modx->getPlaceholder(\'docid\')) {\r\n    // placeholder was set by some script\r\n    // warning: the parser may not render placeholders, e.g. &docid=`[[*parent]]` may fail\r\n    $docid = $modx->getPlaceholder(\'docid\');\r\n}\r\nif (empty($docid)) {\r\n\r\n    //on frontend\r\n    if (is_object($modx->resource)) {\r\n        $docid = $modx->resource->get(\'id\');\r\n    }\r\n    //on manager resource/update page\r\n    else {\r\n        $createpath = $createfolder;\r\n        // We do this to read the &id param from an Ajax request\r\n        $parsedUrl = parse_url($_SERVER[\'HTTP_REFERER\']);\r\n        parse_str($parsedUrl[\'query\'], $parsedQuery);\r\n\r\n        $action = $parsedQuery[\'a\'] ?? \'\';\r\n        if ($action == \'resource/update\'){\r\n            $docid = (int)$parsedQuery[\'amp;id\'] ?? (int)$parsedQuery[\'id\'] ?? 0;\r\n        }\r\n    }\r\n}\r\n\r\nif (empty($docid)) {\r\n    $modx->log(MODX_LOG_LEVEL_DEBUG, \'[migxResourceMediaPath]: docid could not be determined.\');\r\n}\r\n\r\nif (empty($docid) || empty($pathTpl)) {\r\n    $path = $fallbackpath;\r\n    $fullpath = $modx->getOption(\'base_path\') . $fallbackpath;\r\n    $createpath = true;\r\n}\r\n\r\nif (empty($fullpath) && $resource = $modx->getObject(\'modResource\', $docid)) {\r\n    $path = $pathTpl;\r\n    $ultimateParent = \'\';\r\n    if (strstr($path, \'{breadcrumb}\') || strstr($path, \'{ultimateparent}\')) {\r\n        $depth = $modx->getOption(\'breadcrumbdepth\', $scriptProperties, 10);\r\n        $ctx = $resource->get(\'context_key\');\r\n        $parentids = $modx->getParentIds($docid, $depth, array(\'context\' => $ctx));\r\n        $breadcrumbdepth = $modx->getOption(\'breadcrumbdepth\', $scriptProperties, count($parentids));\r\n        $breadcrumbdepth = $breadcrumbdepth > count($parentids) ? count($parentids) : $breadcrumbdepth;\r\n        if (count($parentids) > 1) {\r\n            $parentids = array_reverse($parentids);\r\n            $parentids[] = $docid;\r\n            $ultimateParent = $parentids[1];\r\n        } else {\r\n            $ultimateParent = $docid;\r\n            $parentids = array();\r\n            $parentids[] = $docid;\r\n        }\r\n    }\r\n\r\n    if (strstr($path, \'{breadcrumb}\')) {\r\n        $breadcrumbpath = \'\';\r\n        for ($i = 1; $i <= $breadcrumbdepth; $i++) {\r\n            $breadcrumbpath .= $parentids[$i] . \'/\';\r\n        }\r\n        $path = str_replace(\'{breadcrumb}\', $breadcrumbpath, $path);\r\n    }\r\n    \r\n    if (!empty($tvname)){\r\n        $path = str_replace(\'{tv_value}\', $resource->getTVValue($tvname), $path);    \r\n    }\r\n    $path = str_replace(\'{id}\', $docid, $path);\r\n    $path = str_replace(\'{pagetitle}\', $resource->get(\'pagetitle\'), $path);\r\n    $path = str_replace(\'{alias}\', $resource->get(\'alias\'), $path);\r\n    $path = str_replace(\'{parent}\', $resource->get(\'parent\'), $path);\r\n    $path = str_replace(\'{context_key}\', $resource->get(\'context_key\'), $path);\r\n    $path = str_replace(\'{ultimateparent}\', $ultimateParent, $path);\r\n    if ($template = $resource->getOne(\'Template\')) {\r\n        $path = str_replace(\'{templatename}\', $template->get(\'templatename\'), $path);\r\n    }\r\n    if ($user = $modx->user) {\r\n        $path = str_replace(\'{username}\', $modx->user->get(\'username\'), $path);\r\n        $path = str_replace(\'{userid}\', $modx->user->get(\'id\'), $path);\r\n    }\r\n\r\n    $fullpath = $modx->getOption(\'base_path\') . $path;\r\n\r\n    if ($createpath && $checktvs){\r\n        $createpath = false;\r\n        if ($template) {\r\n            $tvs = explode(\',\',$checktvs);\r\n            foreach ($tvs as $tv){\r\n                if ($template->hasTemplateVar($tv)){\r\n                    $createpath = true;\r\n                }\r\n            }            \r\n        } \r\n\r\n    }\r\n\r\n} else {\r\n    $modx->log(MODX_LOG_LEVEL_DEBUG, sprintf(\'[migxResourceMediaPath]: resource not found (page id %s).\', $docid));\r\n}\r\n\r\nif ($createpath && !file_exists($fullpath)) {\r\n\r\n    $permissions = octdec(\'0\' . (int)($modx->getOption(\'new_folder_permissions\', null, \'755\', true)));\r\n    if (!@mkdir($fullpath, $permissions, true)) {\r\n        $modx->log(MODX_LOG_LEVEL_DEBUG, sprintf(\'[migxResourceMediaPath]: could not create directory %s).\', $fullpath));\r\n    } else {\r\n        chmod($fullpath, $permissions);\r\n    }\r\n}\r\n\r\nreturn $path;',0,'a:0:{}','',0,''),
(16,0,0,'migxImageUpload','',0,2,0,'return include $modx->getOption(\'core_path\').\'components/migx/model/imageupload/imageupload.php\';',0,'a:0:{}','',0,''),
(17,0,0,'migxChunklistToJson','',0,2,0,'$category = $modx->getOption(\'category\', $scriptProperties, \'\');\r\n$format = $modx->getOption(\'format\', $scriptProperties, \'json\');\r\n\r\n$classname = \'modChunk\';\r\n$rows = array();\r\n$output = \'\';\r\n\r\n$c = $modx->newQuery($classname);\r\n$c->select($modx->getSelectColumns($classname, $c->getAlias(), \'\', array(\'id\', \'name\')));\r\n$c->sortby(\'name\');\r\n\r\nif (!empty($category)) {\r\n    $c->where(array(\'category\' => $category));\r\n}\r\n//$c->prepare();echo $c->toSql();\r\nif ($collection = $modx->getCollection($classname, $c)) {\r\n    $i = 0;\r\n\r\n    switch ($format) {\r\n        case \'json\':\r\n            foreach ($collection as $object) {\r\n                $row[\'MIGX_id\'] = (string )$i;\r\n                $row[\'name\'] = $object->get(\'name\');\r\n                $row[\'selected\'] = \'0\';\r\n                $rows[] = $row;\r\n                $i++;\r\n            }\r\n            $output = $modx->toJson($rows);\r\n            break;\r\n        \r\n        case \'optionlist\':\r\n            foreach ($collection as $object) {\r\n                $rows[] = $object->get(\'name\');\r\n                $i++;\r\n            }\r\n            $output = implode(\'||\',$rows);      \r\n        break;\r\n            \r\n    }\r\n\r\n\r\n}\r\n\r\nreturn $output;',0,'a:0:{}','',0,''),
(18,0,0,'migxSwitchDetailChunk','',0,2,0,'//[[migxSwitchDetailChunk? &detailChunk=`detailChunk` &listingChunk=`listingChunk`]]\r\n\r\n\r\n$properties[\'migx_id\'] = $modx->getOption(\'migx_id\',$_GET,\'\');\r\n\r\nif (!empty($properties[\'migx_id\'])){\r\n    $output = $modx->getChunk($detailChunk,$properties);\r\n}\r\nelse{\r\n    $output = $modx->getChunk($listingChunk);\r\n}\r\n\r\nreturn $output;',0,'a:0:{}','',0,''),
(19,0,0,'getSwitchColumnCol','',0,2,0,'$scriptProperties = $_REQUEST;\r\n$col = \'\';\r\n// special actions, for example the showSelector - action\r\n$tempParams = $modx->getOption(\'tempParams\', $scriptProperties, \'\');\r\n\r\nif (!empty($tempParams)) {\r\n    $tempParams = $modx->fromJson($tempParams);\r\n    $col = $modx->getOption(\'col\', $tempParams, \'\');\r\n}\r\n\r\nreturn $col;',0,'a:0:{}','',0,''),
(20,0,0,'getDayliMIGXrecord','',0,2,0,'/**\r\n * getDayliMIGXrecord\r\n *\r\n * Copyright 2009-2011 by Bruno Perner <b.perner@gmx.de>\r\n *\r\n * getDayliMIGXrecord is free software; you can redistribute it and/or modify it\r\n * under the terms of the GNU General Public License as published by the Free\r\n * Software Foundation; either version 2 of the License, or (at your option) any\r\n * later version.\r\n *\r\n * getDayliMIGXrecord is distributed in the hope that it will be useful, but WITHOUT ANY\r\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\r\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\r\n *\r\n * You should have received a copy of the GNU General Public License along with\r\n * getDayliMIGXrecord; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\r\n * Suite 330, Boston, MA 02111-1307 USA\r\n *\r\n * @package migx\r\n */\r\n/**\r\n * getDayliMIGXrecord\r\n *\r\n * display Items from outputvalue of TV with custom-TV-input-type MIGX or from other JSON-string for MODx Revolution \r\n *\r\n * @version 1.0\r\n * @author Bruno Perner <b.perner@gmx.de>\r\n * @copyright Copyright &copy; 2012\r\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\r\n * version 2 or (at your option) any later version.\r\n * @package migx\r\n */\r\n\r\n/*example: [[!getDayliMIGXrecord? &tvname=`myTV`&tpl=`@CODE:<img src=\"[[+image]]\"/>` &randomize=`1`]]*/\r\n/* get default properties */\r\n\r\n\r\n$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\r\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'\');\r\n$randomize = $modx->getOption(\'randomize\', $scriptProperties, false);\r\n$where = $modx->getOption(\'where\', $scriptProperties, \'\');\r\n$where = !empty($where) ? $modx->fromJSON($where) : array();\r\n$sort = $modx->getOption(\'sort\', $scriptProperties, \'\');\r\n$sort = !empty($sort) ? $modx->fromJSON($sort) : array();\r\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, false);\r\n$docid = $modx->getOption(\'docid\', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(\'id\') : 1));\r\n$processTVs = $modx->getOption(\'processTVs\', $scriptProperties, \'1\');\r\n\r\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\r\nif (!($migx instanceof Migx))\r\n    return \'\';\r\n$migx->working_context = $modx->resource->get(\'context_key\');\r\n\r\nif (!empty($tvname)) {\r\n    if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $tvname))) {\r\n\r\n        /*\r\n        *   get inputProperties\r\n        */\r\n\r\n\r\n        $properties = $tv->get(\'input_properties\');\r\n        $properties = isset($properties[\'formtabs\']) ? $properties : $tv->getProperties();\r\n\r\n        $migx->config[\'configs\'] = $properties[\'configs\'];\r\n        $migx->loadConfigs();\r\n        // get tabs from file or migx-config-table\r\n        $formtabs = $migx->getTabs();\r\n        if (empty($formtabs)) {\r\n            //try to get formtabs and its fields from properties\r\n            $formtabs = $modx->fromJSON($properties[\'formtabs\']);\r\n        }\r\n\r\n        //$tv->setCacheable(false);\r\n        //$outputvalue = $tv->renderOutput($docid);\r\n        \r\n        $tvresource = $modx->getObject(\'modTemplateVarResource\', array(\r\n            \'tmplvarid\' => $tv->get(\'id\'),\r\n            \'contentid\' => $docid,\r\n            ));\r\n\r\n\r\n        $outputvalue = $tvresource->get(\'value\');\r\n        \r\n        /*\r\n        *   get inputTvs \r\n        */\r\n        $inputTvs = array();\r\n        if (is_array($formtabs)) {\r\n\r\n            //multiple different Forms\r\n            // Note: use same field-names and inputTVs in all forms\r\n            $inputTvs = $migx->extractInputTvs($formtabs);\r\n        }\r\n        $migx->source = $tv->getSource($migx->working_context, false);\r\n\r\n        if (empty($outputvalue)) {\r\n            return \'\';\r\n        }\r\n\r\n        $items = $modx->fromJSON($outputvalue);\r\n\r\n\r\n        //is there an active item for the current date?\r\n        $activedate = $modx->getOption(\'activedate\', $scriptProperties, strftime(\'%Y/%m/%d\'));\r\n        //$activedate = $modx->getOption(\'activedate\', $_GET, strftime(\'%Y/%m/%d\'));\r\n        $activewhere = array();\r\n        $activewhere[\'activedate\'] = $activedate;\r\n        $activewhere[\'activated\'] = \'1\';\r\n        $activeitems = $migx->filterItems($activewhere, $items);\r\n\r\n        if (count($activeitems) == 0) {\r\n\r\n            $activeitems = array();\r\n            // where filter\r\n            if (is_array($where) && count($where) > 0) {\r\n                $items = $migx->filterItems($where, $items);\r\n            }\r\n\r\n            $tempitems = array();\r\n            $count = count($items);\r\n            $emptycount = 0;\r\n            $latestdate = $activedate;\r\n            $nextdate = strtotime($latestdate);\r\n            foreach ($items as $item) {\r\n                //empty all dates and active-states which are older than today\r\n                if (!empty($item[\'activedate\']) && $item[\'activedate\'] < $activedate) {\r\n                    $item[\'activated\'] = \'0\';\r\n                    $item[\'activedate\'] = \'\';\r\n                }\r\n                if (empty($item[\'activedate\'])) {\r\n                    $emptycount++;\r\n                }\r\n                if ($item[\'activedate\'] > $latestdate) {\r\n                    $latestdate = $item[\'activedate\'];\r\n                    $nextdate = strtotime($latestdate) + (24 * 60 * 60);\r\n                }\r\n                if ($item[\'activedate\'] == $activedate) {\r\n                    $item[\'activated\'] = \'1\';\r\n                    $activeitems[] = $item;\r\n                }\r\n                $tempitems[] = $item;\r\n            }\r\n\r\n            //echo \'<pre>\' . print_r($tempitems, 1) . \'</pre>\';\r\n\r\n            $items = $tempitems;\r\n\r\n\r\n            //are there more than half of all items with empty activedates\r\n\r\n            if ($emptycount >= $count / 2) {\r\n\r\n                // sort items\r\n                if (is_array($sort) && count($sort) > 0) {\r\n                    $items = $migx->sortDbResult($items, $sort);\r\n                }\r\n                if (count($items) > 0) {\r\n                    //shuffle items\r\n                    if ($randomize) {\r\n                        shuffle($items);\r\n                    }\r\n                }\r\n\r\n                $tempitems = array();\r\n                foreach ($items as $item) {\r\n                    if (empty($item[\'activedate\'])) {\r\n                        $item[\'activedate\'] = strftime(\'%Y/%m/%d\', $nextdate);\r\n                        $nextdate = $nextdate + (24 * 60 * 60);\r\n                        if ($item[\'activedate\'] == $activedate) {\r\n                            $item[\'activated\'] = \'1\';\r\n                            $activeitems[] = $item;\r\n                        }\r\n                    }\r\n\r\n                    $tempitems[] = $item;\r\n                }\r\n\r\n                $items = $tempitems;\r\n            }\r\n\r\n            //$resource = $modx->getObject(\'modResource\', $docid);\r\n            //echo $modx->toJson($items);\r\n            $sort = \'[{\"sortby\":\"activedate\"}]\';\r\n            $items = $migx->sortDbResult($items, $modx->fromJson($sort));\r\n\r\n            //echo \'<pre>\' . print_r($items, 1) . \'</pre>\';\r\n\r\n            $tv->setValue($docid, $modx->toJson($items));\r\n            $tv->save();\r\n\r\n        }\r\n    }\r\n\r\n}\r\n\r\n\r\n$properties = array();\r\nforeach ($scriptProperties as $property => $value) {\r\n    $properties[\'property.\' . $property] = $value;\r\n}\r\n\r\n$output = \'\';\r\n\r\nforeach ($activeitems as $key => $item) {\r\n\r\n    $fields = array();\r\n    foreach ($item as $field => $value) {\r\n        $value = is_array($value) ? implode(\'||\', $value) : $value; //handle arrays (checkboxes, multiselects)\r\n        if ($processTVs && isset($inputTvs[$field])) {\r\n            if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $inputTvs[$field][\'inputTV\']))) {\r\n\r\n            } else {\r\n                $tv = $modx->newObject(\'modTemplateVar\');\r\n                $tv->set(\'type\', $inputTvs[$field][\'inputTVtype\']);\r\n            }\r\n            $inputTV = $inputTvs[$field];\r\n\r\n            $mTypes = $modx->getOption(\'manipulatable_url_tv_output_types\', null, \'image,file\');\r\n            //don\'t manipulate any urls here\r\n            $modx->setOption(\'manipulatable_url_tv_output_types\', \'\');\r\n            $tv->set(\'default_text\', $value);\r\n            $value = $tv->renderOutput($docid);\r\n            //set option back\r\n            $modx->setOption(\'manipulatable_url_tv_output_types\', $mTypes);\r\n            //now manipulate urls\r\n            if ($mediasource = $migx->getFieldSource($inputTV, $tv)) {\r\n                $mTypes = explode(\',\', $mTypes);\r\n                if (!empty($value) && in_array($tv->get(\'type\'), $mTypes)) {\r\n                    //$value = $mediasource->prepareOutputUrl($value);\r\n                    $value = str_replace(\'/./\', \'/\', $mediasource->prepareOutputUrl($value));\r\n                }\r\n            }\r\n\r\n        }\r\n        $fields[$field] = $value;\r\n\r\n    }\r\n\r\n    $rowtpl = $tpl;\r\n    //get changing tpls from field\r\n    if (substr($tpl, 0, 7) == \"@FIELD:\") {\r\n        $tplField = substr($tpl, 7);\r\n        $rowtpl = $fields[$tplField];\r\n    }\r\n\r\n    if (!isset($template[$rowtpl])) {\r\n        if (substr($rowtpl, 0, 6) == \"@FILE:\") {\r\n            $template[$rowtpl] = file_get_contents($modx->config[\'base_path\'] . substr($rowtpl, 6));\r\n        } elseif (substr($rowtpl, 0, 6) == \"@CODE:\") {\r\n            $template[$rowtpl] = substr($tpl, 6);\r\n        } elseif ($chunk = $modx->getObject(\'modChunk\', array(\'name\' => $rowtpl), true)) {\r\n            $template[$rowtpl] = $chunk->getContent();\r\n        } else {\r\n            $template[$rowtpl] = false;\r\n        }\r\n    }\r\n\r\n    $fields = array_merge($fields, $properties);\r\n\r\n    if ($template[$rowtpl]) {\r\n        $chunk = $modx->newObject(\'modChunk\');\r\n        $chunk->setCacheable(false);\r\n        $chunk->setContent($template[$rowtpl]);\r\n        $output .= $chunk->process($fields);\r\n\r\n    } else {\r\n        $output .= \'<pre>\' . print_r($fields, 1) . \'</pre>\';\r\n\r\n    }\r\n\r\n\r\n}\r\n\r\n\r\nif (!empty($toPlaceholder)) {\r\n    $modx->setPlaceholder($toPlaceholder, $output);\r\n    return \'\';\r\n}\r\n\r\nreturn $output;',0,'a:0:{}','',0,''),
(21,0,0,'filterbytag','',0,2,0,'if (!is_array($subject)) {\r\n    $subject = explode(\',\',str_replace(array(\'||\',\' \'),array(\',\',\'\'),$subject));\r\n}\r\n\r\nreturn (in_array($operand,$subject));',0,'a:0:{}','',0,''),
(22,0,0,'migxObjectMediaPath','',0,2,0,'$pathTpl = $modx->getOption(\'pathTpl\', $scriptProperties, \'\');\r\n$objectid = $modx->getOption(\'objectid\', $scriptProperties, \'\');\r\n$createfolder = $modx->getOption(\'createFolder\', $scriptProperties, \'1\');\r\n$path = \'\';\r\n$createpath = false;\r\nif (empty($objectid) && $modx->getPlaceholder(\'objectid\')) {\r\n    // placeholder was set by some script on frontend for example\r\n    $objectid = $modx->getPlaceholder(\'objectid\');\r\n}\r\nif (empty($objectid) && isset($_REQUEST[\'object_id\'])) {\r\n    $objectid = $_REQUEST[\'object_id\'];\r\n}\r\n\r\n\r\n\r\nif (empty($objectid)) {\r\n\r\n    //set Session - var in fields.php - processor\r\n    if (isset($_SESSION[\'migxWorkingObjectid\'])) {\r\n        $objectid = $_SESSION[\'migxWorkingObjectid\'];\r\n        $createpath = !empty($createfolder);\r\n    }\r\n\r\n}\r\n\r\n\r\n$path = str_replace(\'{id}\', $objectid, $pathTpl);\r\n\r\n$fullpath = $modx->getOption(\'base_path\') . $path;\r\n\r\nif ($createpath && !file_exists($fullpath)) {\r\n        $permissions = octdec(\'0\' . (int)($modx->getOption(\'new_folder_permissions\', null, \'755\', true)));\r\n        if (!@mkdir($fullpath, $permissions, true)) {\r\n            $modx->log(MODX_LOG_LEVEL_ERROR, sprintf(\'[migxResourceMediaPath]: could not create directory %s).\', $fullpath));\r\n        }\r\n        else{\r\n            chmod($fullpath, $permissions); \r\n        }\r\n}\r\n\r\nreturn $path;',0,'a:0:{}','',0,''),
(23,0,0,'exportMIGX2db','',0,2,0,'/**\r\n * exportMIGX2db\r\n *\r\n * Copyright 2014 by Bruno Perner <b.perner@gmx.de>\r\n * \r\n * Sponsored by Simon Wurster <info@wurster-medien.de>\r\n *\r\n * exportMIGX2db is free software; you can redistribute it and/or modify it\r\n * under the terms of the GNU General Public License as published by the Free\r\n * Software Foundation; either version 2 of the License, or (at your option) any\r\n * later version.\r\n *\r\n * exportMIGX2db is distributed in the hope that it will be useful, but WITHOUT ANY\r\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\r\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\r\n *\r\n * You should have received a copy of the GNU General Public License along with\r\n * exportMIGX2db; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\r\n * Suite 330, Boston, MA 02111-1307 USA\r\n *\r\n * @package migx\r\n */\r\n/**\r\n * exportMIGX2db\r\n *\r\n * export Items from outputvalue of TV with custom-TV-input-type MIGX or from other JSON-string to db-table \r\n *\r\n * @version 1.0\r\n * @author Bruno Perner <b.perner@gmx.de>\r\n * @copyright Copyright &copy; 2014\r\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\r\n * version 2 or (at your option) any later version.\r\n * @package migx\r\n */\r\n\r\n/*\r\n[[!exportMIGX2db? \r\n&tvname=`references` \r\n&resources=`25` \r\n&packageName=`projekte`\r\n&classname=`Projekt` \r\n&migx_id_field=`migx_id` \r\n&renamed_fields=`{\"Firmen-URL\":\"Firmen_url\",\"Projekt-URL\":\"Projekt_URL\",\"main-image\":\"main_image\"}`\r\n]]\r\n*/\r\n\r\n\r\n$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\r\n$resources = $modx->getOption(\'resources\', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(\'id\') : \'\'));\r\n$resources = explode(\',\', $resources);\r\n$prefix = isset($scriptProperties[\'prefix\']) ? $scriptProperties[\'prefix\'] : null;\r\n$packageName = $modx->getOption(\'packageName\', $scriptProperties, \'\');\r\n$classname = $modx->getOption(\'classname\', $scriptProperties, \'\');\r\n$value = $modx->getOption(\'value\', $scriptProperties, \'\');\r\n$migx_id_field = $modx->getOption(\'migx_id_field\', $scriptProperties, \'\');\r\n$pos_field = $modx->getOption(\'pos_field\', $scriptProperties, \'\');\r\n$renamed_fields = $modx->getOption(\'renamed_fields\', $scriptProperties, \'\');\r\n\r\n$packagepath = $modx->getOption(\'core_path\') . \'components/\' . $packageName .\r\n    \'/\';\r\n$modelpath = $packagepath . \'model/\';\r\n\r\n$modx->addPackage($packageName, $modelpath, $prefix);\r\n$added = 0;\r\n$modified = 0;\r\n\r\nforeach ($resources as $docid) {\r\n    \r\n    $outputvalue = \'\';\r\n    if (count($resources)==1){\r\n        $outputvalue = $value;    \r\n    }\r\n    \r\n    if (!empty($tvname)) {\r\n        if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $tvname))) {\r\n\r\n            $outputvalue = empty($outputvalue) ? $tv->renderOutput($docid) : $outputvalue;\r\n        }\r\n    }\r\n\r\n    if (!empty($outputvalue)) {\r\n        $renamed = !empty($renamed_fields) ? $modx->fromJson($renamed_fields) : array();\r\n\r\n        $items = $modx->fromJSON($outputvalue);\r\n        $pos = 1;\r\n        $searchfields = array();\r\n        if (is_array($items)) {\r\n            foreach ($items as $fields) {\r\n                $search = array();\r\n                if (!empty($migx_id_field)) {\r\n                    $search[$migx_id_field] = $fields[\'MIGX_id\'];\r\n                }\r\n                if (!empty($resource_id_field)) {\r\n                    $search[$resource_id_field] = $docid;\r\n                }\r\n                if (!empty($migx_id_field) && $object = $modx->getObject($classname, $search)) {\r\n                    $mode = \'mod\';\r\n                } else {\r\n                    $object = $modx->newObject($classname);\r\n                    $object->fromArray($search);\r\n                    $mode = \'add\';\r\n                }\r\n                foreach ($fields as $field => $value) {\r\n                    $fieldname = array_key_exists($field, $renamed) ? $renamed[$field] : $field;\r\n                    $object->set($fieldname, $value);\r\n                }\r\n                if (!empty($pos_field)) {\r\n                    $object->set($pos_field,$pos) ;\r\n                }                \r\n                if ($object->save()) {\r\n                    if ($mode == \'add\') {\r\n                        $added++;\r\n                    } else {\r\n                        $modified++;\r\n                    }\r\n                }\r\n                $pos++;\r\n            }\r\n            \r\n        }\r\n    }\r\n}\r\n\r\n\r\nreturn $added . \' rows added to db, \' . $modified . \' existing rows actualized\';',0,'a:0:{}','',0,''),
(24,0,0,'preparedatewhere','',0,2,0,'$name = $modx->getOption(\'name\', $scriptProperties, \'\');\r\n$date = $modx->getOption($name . \'_date\', $_REQUEST, \'\');\r\n$dir = str_replace(\'T\', \' \', $modx->getOption($name . \'_dir\', $_REQUEST, \'\'));\r\n\r\nif (!empty($date) && !empty($dir) && $dir != \'all\') {\r\n    switch ($dir) {\r\n        case \'=\':\r\n            $where = array(\r\n            \'enddate:>=\' => strftime(\'%Y-%m-%d 00:00:00\',strtotime($date)),\r\n            \'startdate:<=\' => strftime(\'%Y-%m-%d 23:59:59\',strtotime($date))\r\n            );\r\n            break;\r\n        case \'>=\':\r\n            $where = array(\r\n            \'enddate:>=\' => strftime(\'%Y-%m-%d 00:00:00\',strtotime($date))\r\n            );\r\n            break;\r\n        case \'<=\':\r\n            $where = array(\r\n            \'startdate:<=\' => strftime(\'%Y-%m-%d 23:59:59\',strtotime($date))\r\n            );            \r\n            break;\r\n\r\n    }\r\n\r\n    return $modx->toJson($where);\r\n}',0,'a:0:{}','',0,''),
(25,0,0,'migxJsonToPlaceholders','',0,2,0,'$value = $modx->getOption(\'value\',$scriptProperties,\'\');\r\n$prefix = $modx->getOption(\'prefix\',$scriptProperties,\'\');\r\n\r\n//$modx->setPlaceholders($modx->fromJson($value),$prefix,\'\',true);\r\n\r\n$values = json_decode($value, true);\r\n\r\n$it = new RecursiveIteratorIterator(new RecursiveArrayIterator($values));\r\n\r\nif (is_array($values)){\r\n    foreach ($it as $key => $value){\r\n        $value = $value == null ? \'\' : $value;\r\n        $modx->setPlaceholder($prefix . $key, $value);\r\n    }\r\n}',0,'a:0:{}','',0,''),
(26,0,0,'migxGetCollectionTree','',0,2,0,'/**\r\n * migxGetCollectionTree\r\n *\r\n * Copyright 2014 by Bruno Perner <b.perner@gmx.de>\r\n *\r\n * migxGetCollectionTree is free software; you can redistribute it and/or modify it\r\n * under the terms of the GNU General Public License as published by the Free\r\n * Software Foundation; either version 2 of the License, or (at your option) any\r\n * later version.\r\n *\r\n * migxGetCollectionTree is distributed in the hope that it will be useful, but WITHOUT ANY\r\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\r\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\r\n *\r\n * You should have received a copy of the GNU General Public License along with\r\n * migxGetCollectionTree; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\r\n * Suite 330, Boston, MA 02111-1307 USA\r\n *\r\n * @package migx\r\n */\r\n/**\r\n * migxGetCollectionTree\r\n *\r\n *          display nested items from different objects. The tree-schema is defined by a json-property. \r\n *\r\n * @version 1.0.0\r\n * @author Bruno Perner <b.perner@gmx.de>\r\n * @copyright Copyright &copy; 2014\r\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\r\n * version 2 or (at your option) any later version.\r\n * @package migx\r\n */\r\n\r\n$treeSchema = $modx->getOption(\'treeSchema\', $scriptProperties, \'\');\r\n$treeSchema = $modx->fromJson($treeSchema);\r\n\r\n$scriptProperties[\'current\'] = $modx->getOption(\'current\', $scriptProperties, \'\');\r\n$scriptProperties[\'currentClassname\'] = $modx->getOption(\'currentClassname\', $scriptProperties, \'\');\r\n$scriptProperties[\'currentKeyField\'] = $modx->getOption(\'currentKeyField\', $scriptProperties, \'id\');\r\n$return = $modx->getOption(\'return\', $scriptProperties, \'parsed\'); //parsed,json,arrayprint\r\n\r\n/*\r\nExamples:\r\n\r\nGet Resource-Tree, 4 levels deep\r\n\r\n[[!migxGetCollectionTree?\r\n&current=`57`\r\n&currentClassname=`modResource`\r\n&treeSchema=`\r\n{\r\n\"classname\": \"modResource\",\r\n\"debug\": \"1\",\r\n\"tpl\": \"mgctResourceTree\",\r\n\"wrapperTpl\": \"@CODE:<ul>[[+output]]</ul>\",\r\n\"selectfields\": \"id,pagetitle\",\r\n\"where\": {\r\n\"parent\": \"0\",\r\n\"published\": \"1\",\r\n\"deleted\": \"0\"\r\n},\r\n\"_branches\": [{\r\n\"alias\": \"children\",\r\n\"classname\": \"modResource\",\r\n\"local\": \"parent\",\r\n\"foreign\": \"id\",\r\n\"tpl\": \"mgctResourceTree\",\r\n\"debug\": \"1\",\r\n\"selectfields\": \"id,pagetitle,parent\",\r\n\"_branches\": [{\r\n\"alias\": \"children\",\r\n\"classname\": \"modResource\",\r\n\"local\": \"parent\",\r\n\"foreign\": \"id\",\r\n\"tpl\": \"mgctResourceTree\",\r\n\"debug\": \"1\",\r\n\"selectfields\": \"id,pagetitle,parent\",\r\n\"where\": {\r\n\"published\": \"1\",\r\n\"deleted\": \"0\"\r\n},\r\n\"_branches\": [{\r\n\"alias\": \"children\",\r\n\"classname\": \"modResource\",\r\n\"local\": \"parent\",\r\n\"foreign\": \"id\",\r\n\"tpl\": \"mgctResourceTree\",\r\n\"debug\": \"1\",\r\n\"selectfields\": \"id,pagetitle,parent\",\r\n\"where\": {\r\n\"published\": \"1\",\r\n\"deleted\": \"0\"\r\n}\r\n}]\r\n}]\r\n}]\r\n}\r\n`]]\r\n\r\nthe chunk mgctResourceTree:\r\n<li class=\"[[+_activelabel]] [[+_currentlabel]]\" ><a href=\"[[~[[+id]]]]\">[[+pagetitle]]([[+id]])</a></li>\r\n[[+innercounts.children:gt=`0`:then=`\r\n<ul>[[+innerrows.children]]</ul>\r\n`:else=``]]\r\n\r\nget all Templates and its Resources:\r\n\r\n[[!migxGetCollectionTree?\r\n&treeSchema=`\r\n{\r\n\"classname\": \"modTemplate\",\r\n\"debug\": \"1\",\r\n\"tpl\": \"@CODE:<h3>[[+templatename]]</h3><ul>[[+innerrows.resource]]</ul>\",\r\n\"selectfields\": \"id,templatename\",\r\n\"_branches\": [{\r\n\"alias\": \"resource\",\r\n\"classname\": \"modResource\",\r\n\"local\": \"template\",\r\n\"foreign\": \"id\",\r\n\"tpl\": \"@CODE:<li>[[+pagetitle]]([[+id]])</li>\",\r\n\"debug\": \"1\",\r\n\"selectfields\": \"id,pagetitle,template\"\r\n}]\r\n}\r\n`]]\r\n*/\r\n\r\nif (!class_exists(\'MigxGetCollectionTree\')) {\r\n    class MigxGetCollectionTree\r\n    {\r\n        function __construct(modX & $modx, array $config = array())\r\n        {\r\n            $this->modx = &$modx;\r\n            $this->config = $config;\r\n        }\r\n\r\n        function getBranch($branch, $foreigns = array(), $level = 1)\r\n        {\r\n\r\n            $rows = array();\r\n\r\n            if (count($foreigns) > 0) {\r\n                $modx = &$this->modx;\r\n\r\n                $local = $modx->getOption(\'local\', $branch, \'\');\r\n                $where = $modx->getOption(\'where\', $branch, array());\r\n                $where = !empty($where) && !is_array($where) ? $modx->fromJSON($where) : $where;\r\n                $where[] = array($local . \':IN\' => $foreigns);\r\n\r\n                $branch[\'where\'] = $modx->toJson($where);\r\n\r\n                $level++;\r\n                /*\r\n                if ($levelFromCurrent > 0){\r\n                $levelFromCurrent++;    \r\n                }\r\n                */\r\n\r\n                $rows = $this->getRows($branch, $level);\r\n            }\r\n\r\n            return $rows;\r\n        }\r\n\r\n        function getRows($scriptProperties, $level)\r\n        {\r\n            $migx = &$this->migx;\r\n            $modx = &$this->modx;\r\n\r\n            $current = $modx->getOption(\'current\', $this->config, \'\');\r\n            $currentKeyField = $modx->getOption(\'currentKeyField\', $this->config, \'id\');\r\n            $currentlabel = $modx->getOption(\'currentlabel\', $this->config, \'current\');\r\n            $classname = $modx->getOption(\'classname\', $scriptProperties, \'\');\r\n			$sortResult = $modx->getOption(\'sortResult\', $scriptProperties, \'\');\r\n            $currentClassname = !empty($this->config[\'currentClassname\']) ? $this->config[\'currentClassname\'] : $classname;\r\n\r\n            $activelabel = $modx->getOption(\'activelabel\', $this->config, \'active\');\r\n            $return = $modx->getOption(\'return\', $this->config, \'parsed\');\r\n\r\n            $xpdo = $migx->getXpdoInstanceAndAddPackage($scriptProperties);\r\n            $c = $migx->prepareQuery($xpdo, $scriptProperties);\r\n            $rows = $migx->getCollection($c);\r\n\r\n            $branches = $modx->getOption(\'_branches\', $scriptProperties, array());\r\n\r\n            $collectedSubrows = array();\r\n            foreach ($branches as $branch) {\r\n                $foreign = $modx->getOption(\'foreign\', $branch, \'\');\r\n                $local = $modx->getOption(\'local\', $branch, \'\');\r\n                $alias = $modx->getOption(\'alias\', $branch, \'\');\r\n                //$activeonly = $modx->getOption(\'activeonly\', $branch, \'\');\r\n                $foreigns = array();\r\n                foreach ($rows as $row) {\r\n                    $foreigns[] = $row[$foreign];\r\n                }\r\n\r\n                $subrows = $this->getBranch($branch, $foreigns, $level);\r\n                foreach ($subrows as $subrow) {\r\n\r\n                    $collectedSubrows[$subrow[$local]][] = $subrow;\r\n                    $subrow[\'_active\'] = $modx->getOption(\'_active\', $subrow, \'0\');\r\n                    /*\r\n                    if (!empty($activeonly) && $subrow[\'_active\'] != \'1\') {\r\n                    $output = \'\';\r\n                    } else {\r\n                    $collectedSubrows[$subrow[$local]][] = $subrow;\r\n                    }\r\n                    */\r\n                    if ($subrow[\'_active\'] == \'1\') {\r\n                        //echo \'active subrow:<pre>\' . print_r($subrow,1) . \'</pre>\';\r\n                        $activesubrow[$subrow[$local]] = true;\r\n                    }\r\n                    if ($subrow[\'_current\'] == \'1\') {\r\n                        //echo \'active subrow:<pre>\' . print_r($subrow,1) . \'</pre>\';\r\n                        $currentsubrow[$subrow[$local]] = true;\r\n                    }\r\n\r\n\r\n                }\r\n                //insert subrows\r\n                $temprows = $rows;\r\n                $rows = array();\r\n                foreach ($temprows as $row) {\r\n                    if (isset($collectedSubrows[$row[$foreign]])) {\r\n                        $row[\'_active\'] = \'0\';\r\n                        $row[\'_currentparent\'] = \'0\';\r\n                        if (isset($activesubrow[$row[$foreign]]) && $activesubrow[$row[$foreign]]) {\r\n                            $row[\'_active\'] = \'1\';\r\n                            //echo \'active row:<pre>\' . print_r($row,1) . \'</pre>\';\r\n                        }\r\n                        if (isset($currentsubrow[$row[$foreign]]) && $currentsubrow[$row[$foreign]]) {\r\n                            $row[\'_currentparent\'] = \'1\';\r\n                            //echo \'active row:<pre>\' . print_r($row,1) . \'</pre>\';\r\n                        }\r\n\r\n                        //render innerrows\r\n                        //$output = $migx->renderOutput($collectedSubrows[$row[$foreign]],$scriptProperties);\r\n                        //$output = $collectedSubrows[$row[$foreign]];\r\n\r\n                        $row[\'innercounts.\' . $alias] = count($collectedSubrows[$row[$foreign]]);\r\n                        $row[\'_scriptProperties\'][$alias] = $branch;\r\n                        /*\r\n                        switch ($return) {\r\n                        case \'parsed\':\r\n                        $output = $migx->renderOutput($collectedSubrows[$row[$foreign]], $branch);\r\n                        //$subbranches = $modx->getOption(\'_branches\', $branch, array());\r\n                        //if there are any placeholders left with the same alias from subbranch, remove them\r\n                        $output = str_replace(\'[[+innerrows.\' . $alias . \']]\', \'\', $output);\r\n                        break;\r\n                        case \'json\':\r\n                        case \'arrayprint\':\r\n                        $output = $collectedSubrows[$row[$foreign]];\r\n                        break;\r\n                        }\r\n                        */\r\n                        $output = $collectedSubrows[$row[$foreign]];\r\n\r\n                        $row[\'innerrows.\' . $alias] = $output;\r\n\r\n                    }\r\n                    $rows[] = $row;\r\n                }\r\n\r\n            }\r\n\r\n            $temprows = $rows;\r\n            $rows = array();\r\n            foreach ($temprows as $row) {\r\n                //add additional placeholders\r\n                $row[\'_level\'] = $level;\r\n                $row[\'_active\'] = $modx->getOption(\'_active\', $row, \'0\');\r\n                if ($currentClassname == $classname && $row[$currentKeyField] == $current) {\r\n                    $row[\'_current\'] = \'1\';\r\n                    $row[\'_currentlabel\'] = $currentlabel;\r\n                    $row[\'_active\'] = \'1\';\r\n                } else {\r\n                    $row[\'_current\'] = \'0\';\r\n                    $row[\'_currentlabel\'] = \'\';\r\n                }\r\n                if ($row[\'_active\'] == \'1\') {\r\n                    $row[\'_activelabel\'] = $activelabel;\r\n                } else {\r\n                    $row[\'_activelabel\'] = \'\';\r\n                }\r\n                $rows[] = $row;\r\n            }\r\n\r\n            if (!empty($sortResult) && is_array($sortResult)){\r\n                $rows = $migx->sortDbResult($rows, $sortResult);\r\n			}\r\n\r\n            return $rows;\r\n        }\r\n\r\n        function renderRow($row, $levelFromCurrent = 0)\r\n        {\r\n            $migx = &$this->migx;\r\n            $modx = &$this->modx;\r\n            $return = $modx->getOption(\'return\', $this->config, \'parsed\');\r\n            $branchProperties = $modx->getOption(\'_scriptProperties\', $row, array());\r\n            $current = $modx->getOption(\'_current\', $row, \'0\');\r\n            $currentparent = $modx->getOption(\'_currentparent\', $row, \'0\');\r\n            $levelFromCurrent = $current == \'1\' ? 1 : $levelFromCurrent;\r\n            $row[\'_levelFromCurrent\'] = $levelFromCurrent;\r\n            foreach ($branchProperties as $alias => $properties) {\r\n                $innerrows = $modx->getOption(\'innerrows.\' . $alias, $row, array());\r\n                $subrows = $this->renderRows($innerrows, $properties, $levelFromCurrent, $currentparent);\r\n                if ($return == \'parsed\') {\r\n                    $subrows = $migx->renderOutput($subrows, $properties);\r\n                }\r\n                $row[\'innerrows.\' . $alias] = $subrows;\r\n            }\r\n\r\n            return $row;\r\n        }\r\n\r\n        function renderRows($rows, $scriptProperties, $levelFromCurrent = 0, $siblingOfCurrent = \'0\')\r\n        {\r\n\r\n            $modx = &$this->modx;\r\n            $temprows = $rows;\r\n            $rows = array();\r\n            if ($levelFromCurrent > 0) {\r\n                $levelFromCurrent++;\r\n            }\r\n            foreach ($temprows as $row) {\r\n                $row[\'_siblingOfCurrent\'] = $siblingOfCurrent;\r\n                $row = $this->renderRow($row, $levelFromCurrent);\r\n                $rows[] = $row;\r\n            }\r\n            return $rows;\r\n        }\r\n    }\r\n}\r\n\r\n$instance = new MigxGetCollectionTree($modx, $scriptProperties);\r\n\r\nif (is_array($treeSchema)) {\r\n    $scriptProperties = $treeSchema;\r\n\r\n    $migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\r\n    if (!($migx instanceof Migx))\r\n        return \'\';\r\n\r\n    $defaultcontext = \'web\';\r\n    $migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : $defaultcontext;\r\n    $instance->migx = &$migx;\r\n\r\n    $level = 1;\r\n    $scriptProperties[\'alias\'] = \'row\';\r\n    $rows = $instance->getRows($scriptProperties, $level);\r\n\r\n    $row = array();\r\n    $row[\'innercounts.row\'] = count($rows);\r\n    $row[\'innerrows.row\'] = $rows;\r\n    $row[\'_scriptProperties\'][\'row\'] = $scriptProperties;\r\n\r\n    $rows = $instance->renderRow($row);\r\n\r\n    $output = \'\';\r\n    switch ($return) {\r\n        case \'parsed\':\r\n            $output = $modx->getOption(\'innerrows.row\', $rows, \'\');\r\n            break;\r\n        case \'json\':\r\n            $output = $modx->toJson($rows);\r\n            break;\r\n        case \'arrayprint\':\r\n            $output = \'<pre>\' . print_r($rows, 1) . \'</pre>\';\r\n            break;\r\n    }\r\n\r\n    return $output;\r\n\r\n}',0,'a:0:{}','',0,''),
(27,0,0,'migxIsNewObject','',0,2,0,'if (isset($_REQUEST[\'object_id\']) && $_REQUEST[\'object_id\']==\'new\'){\r\n    return 1;\r\n}',0,'a:0:{}','',0,''),
(28,0,0,'migx_example_validate','',0,2,0,'$properties = &$modx->getOption(\'scriptProperties\', $scriptProperties, array());\r\n$object = &$modx->getOption(\'object\', $scriptProperties, null);\r\n$postvalues = &$modx->getOption(\'postvalues\', $scriptProperties, array());\r\n$form_field = $modx->getOption(\'form_field\', $scriptProperties, array());\r\n$value = $modx->getOption(\'value\', $scriptProperties, \'\');\r\n$validation_type = $modx->getOption(\'validation_type\', $scriptProperties, \'\');\r\n$result = \'\';\r\nswitch ($validation_type) {\r\n    case \'gt25\':\r\n        if ((int) $value > 25) {\r\n        } else {\r\n            $error_message = $validation_type; // may be custom validation message\r\n            $error[\'caption\'] = $form_field;\r\n            $error[\'validation_type\'] = $error_message;\r\n            $result[\'error\'] = $error;\r\n            $result = $modx->toJson($result);\r\n        }\r\n        break;\r\n}\r\nreturn $result;',0,'a:0:{}','',0,''),
(29,0,0,'migxHookAftercollectmigxitems','',0,2,0,'$configs = $modx->getOption(\'configs\', $_REQUEST, \'\');\r\n\r\n$rows = $modx->getOption(\'rows\', $scriptProperties, array());\r\n$newrows = array();\r\n\r\n\r\nif (is_array($rows)) {\r\n    $max_id = 0;\r\n    $dbfields = array();\r\n    $existing_dbfields = array();\r\n    foreach ($rows as $key => $row) {\r\n        if (isset($row[\'MIGX_id\']) && $row[\'MIGX_id\'] > $max_id) {\r\n            $max_id = $row[\'MIGX_id\'];\r\n        }\r\n        if (isset($row[\'selected_dbfields\']) && isset($row[\'existing_dbfields\'])) {\r\n            $dbfields = is_array($row[\'selected_dbfields\']) ? $row[\'selected_dbfields\'] : array($row[\'selected_dbfields\']);\r\n            \r\n            $existing_dbfields = explode(\'||\', $row[\'existing_dbfields\']);\r\n            //echo \'<pre>\' . print_r($existing_dbfields,1) . \'</pre>\';die();\r\n\r\n        } else {\r\n            $newrows[] = $row;\r\n        }\r\n\r\n    }\r\n\r\n    foreach ($dbfields as $dbfield) {\r\n        if (!empty($dbfield) && !in_array($dbfield, $existing_dbfields)) {\r\n            $max_id++;\r\n            $newrow = array();\r\n            $newrow[\'MIGX_id\'] = $max_id;\r\n\r\n            switch ($configs) {\r\n                case \'migxformtabfields\':\r\n                    $newrow[\'field\'] = $dbfield;\r\n                    $newrow[\'caption\'] = $dbfield;\r\n                    break;\r\n                case \'migxcolumns\':\r\n                    $newrow[\'dataIndex\'] = $dbfield;\r\n                    $newrow[\'header\'] = $dbfield;\r\n                    break;                    \r\n            }\r\n\r\n\r\n            $newrows[] = $newrow;\r\n        }\r\n    }\r\n\r\n\r\n}\r\n\r\n\r\nreturn json_encode($newrows);',0,'a:0:{}','',0,''),
(30,0,0,'migxAutoPublish','',0,2,0,'$classnames = explode(\',\', $modx->getOption(\'classnames\',$scriptProperties,\'\'));\r\n$packageName = $modx->getOption(\'packageName\',$scriptProperties,\'\');\r\n\r\nswitch ($mode) {\r\n    case \'datetime\' :\r\n        $timeNow = strftime(\'%Y-%m-%d %H:%M:%S\');\r\n        break;\r\n    case \'unixtime\' :\r\n        $timeNow = time();\r\n        break;\r\n    default :\r\n        $timeNow = strftime(\'%Y-%m-%d %H:%M:%S\');\r\n        break;\r\n}\r\n\r\n$modx->addPackage($packageName, $modx->getOption(\'core_path\') . \'components/\' . $packageName . \'/model/\');\r\n\r\nforeach ($classnames as $classname) {\r\n    if (!empty($classname)) {\r\n        $tblResource = $modx->getTableName($classname);\r\n        if (!$result = $modx->exec(\"UPDATE {$tblResource} SET published=1,publishedon=pub_date,pub_date=null WHERE pub_date < \'{$timeNow}\' AND pub_date > 0 AND published=0\")) {\r\n            $modx->log(modX::LOG_LEVEL_ERROR, \'Error while refreshing resource publishing data: \' . print_r($modx->errorInfo(), true));\r\n        }\r\n        if (!$result = $modx->exec(\"UPDATE $tblResource SET published=0,unpub_date=null WHERE unpub_date < \'{$timeNow}\' AND unpub_date IS NOT NULL AND unpub_date > 0 AND published=1\")) {\r\n            $modx->log(modX::LOG_LEVEL_ERROR, \'Error while refreshing resource unpublishing data: \' . print_r($modx->errorInfo(), true));\r\n        }\r\n    }\r\n\r\n}\r\n$modx->cacheManager->refresh();',0,'a:0:{}','',0,''),
(31,0,0,'migxGetObject','',0,2,0,'/*\r\ngetXpdoInstanceAndAddPackage - properties\r\n\r\n$prefix\r\n$usecustomprefix\r\n$packageName\r\n\r\n\r\nprepareQuery - properties:\r\n\r\n$limit\r\n$offset\r\n$totalVar\r\n$where\r\n$queries\r\n$sortConfig\r\n$groupby\r\n$joins\r\n$selectfields\r\n$classname\r\n$debug\r\n\r\nrenderOutput - properties:\r\n\r\n$tpl\r\n$wrapperTpl\r\n$toSeparatePlaceholders\r\n$toPlaceholder\r\n$outputSeparator\r\n$placeholdersKeyField\r\n$toJsonPlaceholder\r\n$jsonVarKey\r\n$addfields\r\n\r\nmigxGetObject - properties\r\n\r\n$id\r\n$toPlaceholders - if not empty, output to placeholders with specified prefix or print the array, if \'print_r\' is the property-value\r\n\r\n*/\r\n\r\n$id = $modx->getOption(\'id\',$scriptProperties,\'\');\r\n$scriptProperties[\'limit\'] = 1;\r\n\r\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\r\nif (!($migx instanceof Migx))\r\n    return \'\';\r\n//$modx->migx = &$migx;\r\n\r\n$xpdo = $migx->getXpdoInstanceAndAddPackage($scriptProperties);\r\n\r\n$defaultcontext = \'web\';\r\n$migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : $defaultcontext;\r\n\r\n$c = $migx->prepareQuery($xpdo,$scriptProperties);\r\nif (!empty($id)){\r\n    $c->where(array(\'id\'=>$id));\r\n	$c->prepare();\r\n}	\r\n$rows = $migx->getCollection($c);\r\n\r\n$output = $migx->renderOutput($rows,$scriptProperties);\r\n\r\nreturn $output;',0,'a:0:{}','',0,''),
(32,0,0,'BabelLinks','Displays links to translated resources.',0,3,0,'/**\n * BabelLinks\n *\n * @package babel\n * @subpackage snippet\n *\n * @var modX $modx\n * @var array $scriptProperties\n */\n\nuse mikrobi\\Babel\\Snippets\\BabelLinks;\n\n$corePath = $modx->getOption(\'babel.core_path\', null, $modx->getOption(\'core_path\') . \'components/babel/\');\n/** @var Babel $babel */\n$babel = $modx->getService(\'babel\', Babel::class, $corePath . \'model/babel/\', [\n    \'core_path\' => $corePath\n]);\n\n$snippet = new BabelLinks($modx, $scriptProperties);\nif ($snippet instanceof mikrobi\\Babel\\Snippets\\BabelLinks) {\n    return $snippet->execute();\n}\nreturn \'mikrobi\\Babel\\Snippets\\BabelLinks class not found\';',0,'a:14:{s:10:\"resourceId\";a:7:{s:4:\"name\";s:10:\"resourceId\";s:4:\"desc\";s:27:\"babel.babellinks.resourceId\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:20:\"babel.babellinks.tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:12:\"tplBabellink\";s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}s:10:\"wrapperTpl\";a:7:{s:4:\"name\";s:10:\"wrapperTpl\";s:4:\"desc\";s:27:\"babel.babellinks.wrapperTpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}s:9:\"activeCls\";a:7:{s:4:\"name\";s:9:\"activeCls\";s:4:\"desc\";s:26:\"babel.babellinks.activeCls\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:6:\"active\";s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:32:\"babel.babellinks.showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showCurrent\";a:7:{s:4:\"name\";s:11:\"showCurrent\";s:4:\"desc\";s:28:\"babel.babellinks.showCurrent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}s:15:\"includeUnlinked\";a:7:{s:4:\"name\";s:15:\"includeUnlinked\";s:4:\"desc\";s:32:\"babel.babellinks.includeUnlinked\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}s:16:\"ignoreSiteStatus\";a:7:{s:4:\"name\";s:16:\"ignoreSiteStatus\";s:4:\"desc\";s:33:\"babel.babellinks.ignoreSiteStatus\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}s:15:\"restrictToGroup\";a:7:{s:4:\"name\";s:15:\"restrictToGroup\";s:4:\"desc\";s:32:\"babel.babellinks.restrictToGroup\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}s:20:\"useRequestProperties\";a:7:{s:4:\"name\";s:20:\"useRequestProperties\";s:4:\"desc\";s:37:\"babel.babellinks.useRequestProperties\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}s:7:\"toArray\";a:7:{s:4:\"name\";s:7:\"toArray\";s:4:\"desc\";s:24:\"babel.babellinks.toArray\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:30:\"babel.babellinks.toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:23:\"babel.babellinks.sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:5:\"babel\";s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:24:\"babel.babellinks.sortdir\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"asc\";s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}}','',0,''),
(33,0,0,'BabelTranslation','Returns the id of a translated resource in a given context.',0,3,0,'/**\n * BabelTranslation\n *\n * @package babel\n * @subpackage snippet\n *\n * @var modX $modx\n * @var array $scriptProperties\n */\n\nuse mikrobi\\Babel\\Snippets\\BabelTranslation;\n\n$corePath = $modx->getOption(\'babel.core_path\', null, $modx->getOption(\'core_path\') . \'components/babel/\');\n/** @var Babel $babel */\n$babel = $modx->getService(\'babel\', Babel::class, $corePath . \'model/babel/\', [\n    \'core_path\' => $corePath\n]);\n\n$snippet = new BabelTranslation($modx, $scriptProperties);\nif ($snippet instanceof mikrobi\\Babel\\Snippets\\BabelTranslation) {\n    return $snippet->execute();\n}\nreturn \'mikrobi\\Babel\\Snippets\\BabelTranslation class not found\';',0,'a:5:{s:10:\"resourceId\";a:7:{s:4:\"name\";s:10:\"resourceId\";s:4:\"desc\";s:33:\"babel.babeltranslation.resourceId\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}s:10:\"contextKey\";a:7:{s:4:\"name\";s:10:\"contextKey\";s:4:\"desc\";s:33:\"babel.babeltranslation.contextKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}s:10:\"cultureKey\";a:7:{s:4:\"name\";s:10:\"cultureKey\";s:4:\"desc\";s:33:\"babel.babeltranslation.cultureKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:38:\"babel.babeltranslation.showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:36:\"babel.babeltranslation.toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}}','',0,''),
(34,0,0,'impCatalog','',0,32,0,'/**\n * impCatalog — paginated list of child resources (projects, blog posts). Call uncached:\n *   [[!impCatalog? &parent=`5` &tpl=`card_project` &limit=`9` &type=`projects`]]\n * Sets placeholders: [[!+imp.items]] (cards), [[!+imp.pagination]] (nav), [[!+imp.count]] (\"Показано: 1–9 з 12\").\n * Page number comes from ?page=N; a page past the end gives 404.\n *\n * @var modX $modx\n * @var array $scriptProperties\n */\nuse MODX\\Revolution\\modResource;\n\n$modx->lexicon->load(\'improvision:default\');\n$parent = (int)($scriptProperties[\'parent\'] ?? $modx->resource->get(\'id\'));\n$tpl = $scriptProperties[\'tpl\'] ?? \'card_project\';\n$limit = max(1, (int)($scriptProperties[\'limit\'] ?? 9));\n$type = $scriptProperties[\'type\'] ?? \'projects\';\n$sortby = $scriptProperties[\'sortby\'] ?? ($type === \'posts\' ? \'publishedon\' : \'menuindex\');\n$sortdir = $scriptProperties[\'sortdir\'] ?? ($type === \'posts\' ? \'DESC\' : \'ASC\');\n$includeTVs = $scriptProperties[\'includeTVs\'] ?? ($type === \'posts\'\n    ? \'image,card_image,post_category,featured_text\'\n    : \'brand,city,year,category,card_image,card_image_alt\');\n\n$where = [\'parent\' => $parent, \'published\' => 1, \'deleted\' => 0];\n$total = $modx->getCount(modResource::class, $where);\n$pages = max(1, (int)ceil($total / $limit));\n$page = isset($_GET[\'page\']) ? (int)$_GET[\'page\'] : 1;\nif ($page < 1 || $page > $pages || (isset($_GET[\'page\']) && (string)$page !== (string)$_GET[\'page\'])) {\n    $modx->sendErrorPage();\n}\n\n/** @var \\ModxPro\\PdoTools\\Fetch $pdo */\n$pdo = $modx->services->get(\'pdofetch\');\n$rows = $pdo->getCollection(modResource::class, $where, [\n    \'sortby\' => $sortby,\n    \'sortdir\' => $sortdir,\n    \'limit\' => $limit,\n    \'offset\' => ($page - 1) * $limit,\n    \'includeTVs\' => $includeTVs,\n    \'tvPrefix\' => \'\',\n]);\n$items = [];\nforeach ($rows as $row) {\n    $items[] = $pdo->getChunk($tpl, [\'p\' => $row]);\n}\n\n// pagination (same markup as the static mockup)\n$nav = \'\';\nif ($pages > 1) {\n    $url = $modx->makeUrl($modx->resource->get(\'id\'), \'\', \'\', \'abs\');\n    $link = function ($n) use ($url) {\n        return $n > 1 ? $url . \'?page=\' . $n : $url;\n    };\n    $icon = function ($name) use ($pdo) {\n        return $pdo->getChunk(\'icon_\' . $name);\n    };\n    $label = $modx->lexicon($type === \'posts\' ? \'imp.pagination_posts\' : \'imp.pagination_projects\');\n    $nav .= \'      <nav class=\"pagination\" aria-label=\"\' . htmlspecialchars($label) . \'\">\' . \"\\n\";\n    $nav .= $page > 1\n        ? \'        <a class=\"pagination__item pagination__item--arrow\" href=\"\' . $link($page - 1) . \'\" aria-label=\"\' . $modx->lexicon(\'imp.prev_page\') . \'\">\' . $icon(\'arrow-left\') . \"</a>\\n\"\n        : \'        <span class=\"pagination__item pagination__item--arrow is-disabled\" aria-hidden=\"true\">\' . $icon(\'arrow-left\') . \"</span>\\n\";\n    for ($n = 1; $n <= $pages; $n++) {\n        $nav .= $n === $page\n            ? \'        <a class=\"pagination__item is-active\" href=\"\' . $link($n) . \'\" aria-current=\"page\">\' . $n . \"</a>\\n\"\n            : \'        <a class=\"pagination__item\" href=\"\' . $link($n) . \'\">\' . $n . \"</a>\\n\";\n    }\n    $nav .= $page < $pages\n        ? \'        <a class=\"pagination__item pagination__item--arrow\" href=\"\' . $link($page + 1) . \'\" aria-label=\"\' . $modx->lexicon(\'imp.next_page\') . \'\">\' . $icon(\'arrow-right\') . \"</a>\\n\"\n        : \'        <span class=\"pagination__item pagination__item--arrow is-disabled\" aria-hidden=\"true\">\' . $icon(\'arrow-right\') . \"</span>\\n\";\n    $nav .= \"      </nav>\";\n}\n\n$from = $total ? ($page - 1) * $limit + 1 : 0;\n$to = min($total, $page * $limit);\n$modx->setPlaceholders([\n    \'items\' => implode(\"\\n\", $items),\n    \'pagination\' => $nav,\n    \'count\' => $modx->lexicon(\'imp.shown_range\', [\'from\' => $from, \'to\' => $to, \'total\' => $total]),\n    \'page\' => $page,\n    \'pages\' => $pages,\n], \'imp.\');\nreturn \'\';',0,NULL,'',1,'{core_path}components/improvision/elements/snippets/impCatalog.php'),
(35,0,0,'impDate','',0,32,0,'/**\n * impDate — localized date \"18 червня 2026\" in the current context language.\n * &date — unix timestamp or date string; &lang — optional (defaults to cultureKey).\n *\n * @var modX $modx\n * @var array $scriptProperties\n */\n$date = $scriptProperties[\'date\'] ?? \'\';\n$ts = is_numeric($date) ? (int)$date : strtotime((string)$date);\nif (!$ts) {\n    return \'\';\n}\n$lang = $scriptProperties[\'lang\'] ?? $modx->getOption(\'cultureKey\', null, \'uk\');\n$months = [\n    \'uk\' => [\'січня\', \'лютого\', \'березня\', \'квітня\', \'травня\', \'червня\', \'липня\', \'серпня\', \'вересня\', \'жовтня\', \'листопада\', \'грудня\'],\n    \'ru\' => [\'января\', \'февраля\', \'марта\', \'апреля\', \'мая\', \'июня\', \'июля\', \'августа\', \'сентября\', \'октября\', \'ноября\', \'декабря\'],\n    \'en\' => [\'January\', \'February\', \'March\', \'April\', \'May\', \'June\', \'July\', \'August\', \'September\', \'October\', \'November\', \'December\'],\n];\n$list = $months[$lang] ?? $months[\'uk\'];\n$m = $list[(int)date(\'n\', $ts) - 1];\nreturn $lang === \'en\'\n    ? $m . \' \' . date(\'j\', $ts) . \', \' . date(\'Y\', $ts)\n    : date(\'j\', $ts) . \' \' . $m . \' \' . date(\'Y\', $ts);',0,NULL,'',1,'{core_path}components/improvision/elements/snippets/impDate.php'),
(36,0,0,'impImg','',0,32,0,'/**\n * impImg — returns \'width=\"W\" height=\"H\"\' for an image path relative to the site root.\n * Usage (Fenom): <img src=\"/{$src}\" {$_modx->runSnippet(\'impImg\', [\'src\' => $src])} alt=\"\">\n * Sizes are cached (core/cache/improvision/imgsize).\n *\n * @var modX $modx\n * @var array $scriptProperties\n */\n$src = ltrim((string)($scriptProperties[\'src\'] ?? \'\'), \'/\');\nif ($src === \'\' || preg_match(\'#^(https?:)?//#\', $src)) {\n    return \'\';\n}\n$src = strtok($src, \'?\');\n$cacheOptions = [xPDO::OPT_CACHE_KEY => \'improvision/imgsize\'];\n$key = md5($src);\n$size = $modx->cacheManager->get($key, $cacheOptions);\nif (!is_array($size)) {\n    $file = MODX_BASE_PATH . $src;\n    $size = [0, 0];\n    if (is_file($file)) {\n        if (strtolower(pathinfo($file, PATHINFO_EXTENSION)) === \'svg\') {\n            $svg = @file_get_contents($file, false, null, 0, 2048);\n            if ($svg && preg_match(\'/<svg[^>]*\\swidth=\"([\\d.]+)(?:px)?\"[^>]*\\sheight=\"([\\d.]+)(?:px)?\"/i\', $svg, $m)) {\n                $size = [(int)round($m[1]), (int)round($m[2])];\n            } elseif ($svg && preg_match(\'/viewBox=\"[\\d.\\-]+\\s+[\\d.\\-]+\\s+([\\d.]+)\\s+([\\d.]+)\"/i\', $svg, $m)) {\n                $size = [(int)round($m[1]), (int)round($m[2])];\n            }\n        } elseif ($info = @getimagesize($file)) {\n            $size = [$info[0], $info[1]];\n        }\n    }\n    $modx->cacheManager->set($key, $size, 0, $cacheOptions);\n}\nreturn $size[0] ? \'width=\"\' . $size[0] . \'\" height=\"\' . $size[1] . \'\"\' : \'\';',0,NULL,'',1,'{core_path}components/improvision/elements/snippets/impImg.php'),
(37,0,0,'impJsonLd','',0,32,0,'/**\n * impJsonLd — <script type=\"application/ld+json\"> with page-specific objects (&extra, JSON array)\n * plus a BreadcrumbList built from the resource parents (Home › parents › page).\n * The \"Послуги\" weblink parent points to the home page #services block.\n *\n * @var modX $modx\n * @var array $scriptProperties\n */\n$resource = $modx->resource;\nif (!$resource) {\n    return \'\';\n}\n$modx->lexicon->load(\'improvision:default\');\n$items = [];\n$siteStart = (int)$modx->getOption(\'site_start\');\n$homeUrl = $modx->makeUrl($siteStart, \'\', \'\', \'full\');\n$items[] = [\'name\' => $modx->lexicon(\'imp.home\'), \'item\' => $homeUrl];\n$parents = array_reverse($modx->getParentIds($resource->get(\'id\'), 10, [\'context\' => $resource->get(\'context_key\')]));\n$servicesId = (int)$modx->getOption(\'improvision.services_id\');\nforeach ($parents as $pid) {\n    if (!$pid || $pid == $siteStart) {\n        continue;\n    }\n    if ($p = $modx->getObject(\\MODX\\Revolution\\modResource::class, $pid)) {\n        $items[] = [\n            \'name\' => $p->get(\'menutitle\') ?: $p->get(\'pagetitle\'),\n            \'item\' => $pid == $servicesId ? $homeUrl . \'#services\' : $modx->makeUrl($pid, \'\', \'\', \'full\'),\n        ];\n    }\n}\n$items[] = [\'name\' => $resource->get(\'menutitle\') ?: $resource->get(\'pagetitle\'), \'item\' => $modx->makeUrl($resource->get(\'id\'), \'\', \'\', \'full\')];\n$list = [];\nforeach ($items as $i => $item) {\n    $list[] = [\'@type\' => \'ListItem\', \'position\' => $i + 1, \'name\' => html_entity_decode(str_replace(\"\\u{00a0}\", \' \', $item[\'name\']), ENT_QUOTES, \'UTF-8\'), \'item\' => $item[\'item\']];\n}\n$data = [];\nif (!empty($scriptProperties[\'extra\'])) {\n    $extra = json_decode($scriptProperties[\'extra\'], true);\n    if (is_array($extra)) {\n        $data = array_values($extra);\n    }\n}\n$data[] = [\'@context\' => \'https://schema.org\', \'@type\' => \'BreadcrumbList\', \'itemListElement\' => $list];\n$json = json_encode(count($data) === 1 ? $data[0] : $data, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT);\nreturn \'  <script type=\"application/ld+json\">\' . \"\\n\" . $json . \"\\n  </script>\";',0,NULL,'',1,'{core_path}components/improvision/elements/snippets/impJsonLd.php'),
(38,0,0,'impLangs','',0,32,0,'/**\n * impLangs — JSON list of language versions of the current resource (Babel links).\n * [{\"lang\":\"uk\",\"ctx\":\"web\",\"label\":\"UA\",\"url\":\"https://…/\",\"current\":true}, …]\n * A missing translation falls back to the start page of that language.\n *\n * @var modX $modx\n */\n$languages = [\n    \'web\' => [\'lang\' => \'uk\', \'label\' => \'UA\'],\n    \'en\'  => [\'lang\' => \'en\', \'label\' => \'EN\'],\n    \'ru\'  => [\'lang\' => \'ru\', \'label\' => \'RU\'],\n];\n$resource = $modx->resource;\n$links = [];\nif ($resource) {\n    $tvName = $modx->getOption(\'babel.babelTvName\', null, \'babelLanguageLinks\');\n    $raw = (string)$resource->getTVValue($tvName);\n    foreach (explode(\';\', $raw) as $pair) {\n        $pair = explode(\':\', $pair);\n        if (count($pair) === 2 && (int)$pair[1] > 0) {\n            $links[trim($pair[0])] = (int)$pair[1];\n        }\n    }\n    $links[$resource->get(\'context_key\')] = $resource->get(\'id\');\n}\n$current = $modx->context->get(\'key\');\n$out = [];\nforeach ($languages as $ctx => $info) {\n    $id = $links[$ctx] ?? 0;\n    if ($id) {\n        /** @var modResource $target */\n        $target = $modx->getObject(\\MODX\\Revolution\\modResource::class, [\'id\' => $id, \'published\' => 1, \'deleted\' => 0]);\n        if (!$target) {\n            $id = 0;\n        }\n    }\n    if (!$id) {\n        $c = $modx->getContext($ctx);\n        $id = $c ? (int)$c->getOption(\'site_start\', 0) : 0;\n    }\n    $out[] = $info + [\n        \'ctx\' => $ctx,\n        \'url\' => $id ? $modx->makeUrl($id, $ctx, \'\', \'full\') : \'\',\n        \'current\' => $ctx === $current,\n    ];\n}\nreturn json_encode($out, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);',0,NULL,'',1,'{core_path}components/improvision/elements/snippets/impLangs.php'),
(39,0,0,'impLead','',0,32,0,'/**\n * impLead — handler for the lead forms (contact block, contacts page, modal).\n * The forms post (fetch + FormData) to the \"Заявка\" resource, whose template calls [[!impLead]].\n * Sends an e-mail to the addresses in the system setting improvision.lead_email (comma separated)\n * and keeps a copy in core/export/improvision-leads/YYYY-MM.log.\n * Answers JSON; HTTP 4xx/5xx makes the form show its error message.\n *\n * @var modX $modx\n */\nuse MODX\\Revolution\\Mail\\modMail;\nuse MODX\\Revolution\\Mail\\modPHPMailer;\n\n$respond = function (int $code, array $data) {\n    http_response_code($code);\n    header(\'Content-Type: application/json; charset=utf-8\');\n    header(\'Cache-Control: no-store\');\n    return json_encode($data, JSON_UNESCAPED_UNICODE);\n};\n\nif (($_SERVER[\'REQUEST_METHOD\'] ?? \'\') !== \'POST\') {\n    header(\'Allow: POST\');\n    return $respond(405, [\'success\' => false, \'message\' => \'Method not allowed\']);\n}\n\n$clean = function ($key, $max = 500) {\n    $value = isset($_POST[$key]) ? (string)$_POST[$key] : \'\';\n    $value = trim(strip_tags($value));\n    return mb_substr(preg_replace(\'/[\\x00-\\x08\\x0B\\x0C\\x0E-\\x1F]/u\', \'\', $value), 0, $max);\n};\n\n// bots fill the hidden \"website\" field — pretend success\nif ($clean(\'website\') !== \'\') {\n    return $respond(200, [\'success\' => true]);\n}\n\n$data = [\n    \'name\' => $clean(\'name\', 120),\n    \'phone\' => $clean(\'phone\', 40),\n    \'email\' => $clean(\'email\', 120),\n    \'service\' => $clean(\'service\', 200),\n    \'message\' => $clean(\'message\', 3000),\n    \'page\' => $clean(\'page\', 300),\n    \'lang\' => $clean(\'lang\', 5),\n];\n$errors = [];\nif ($data[\'name\'] === \'\') {\n    $errors[] = \'name\';\n}\nif (strlen(preg_replace(\'/\\D/\', \'\', $data[\'phone\'])) < 10) {\n    $errors[] = \'phone\';\n}\nif ($data[\'email\'] !== \'\' && !filter_var($data[\'email\'], FILTER_VALIDATE_EMAIL)) {\n    $errors[] = \'email\';\n}\nif ($errors) {\n    return $respond(422, [\'success\' => false, \'errors\' => $errors]);\n}\n\n// simple flood protection: one request per 10 seconds per session\n$now = time();\nif (!empty($_SESSION[\'imp_lead_time\']) && $now - (int)$_SESSION[\'imp_lead_time\'] < 10) {\n    return $respond(429, [\'success\' => false, \'message\' => \'Too many requests\']);\n}\n$_SESSION[\'imp_lead_time\'] = $now;\n\n$labels = [\n    \'name\' => \"Ім\'я\", \'phone\' => \'Телефон\', \'email\' => \'Email\', \'service\' => \'Послуга\',\n    \'message\' => \'Повідомлення\', \'page\' => \'Сторінка\', \'lang\' => \'Мова\',\n];\n$rows = \'\';\n$text = \'\';\nforeach ($labels as $key => $label) {\n    if ($data[$key] === \'\') {\n        continue;\n    }\n    $value = htmlspecialchars($data[$key], ENT_QUOTES, \'UTF-8\');\n    $rows .= \'<tr><td style=\"padding:4px 12px 4px 0;color:#8a919c;vertical-align:top\">\' . $label . \'</td><td style=\"padding:4px 0\">\' . nl2br($value) . \'</td></tr>\';\n    $text .= $label . \': \' . $data[$key] . \"\\n\";\n}\n\n// keep a copy of every lead\n$dir = MODX_CORE_PATH . \'export/improvision-leads/\';\nif (is_dir($dir) || @mkdir($dir, 0750, true)) {\n    @file_put_contents($dir . date(\'Y-m\') . \'.log\', \'[\' . date(\'Y-m-d H:i:s\') . \"]\\n\" . $text . \"\\n\", FILE_APPEND | LOCK_EX);\n}\n\n$recipients = array_filter(array_map(\'trim\', explode(\',\', (string)$modx->getOption(\'improvision.lead_email\', null, $modx->getOption(\'emailsender\')))));\n/** @var modMail $mail */\n$mail = $modx->getService(\'mail\', modPHPMailer::class);\n$mail->set(modMail::MAIL_BODY, \'<h2 style=\"font-family:Arial,sans-serif\">Нова заявка з сайту</h2><table style=\"font-family:Arial,sans-serif;font-size:14px\">\' . $rows . \'</table>\');\n$mail->set(modMail::MAIL_BODY_TEXT, $text);\n$mail->set(modMail::MAIL_FROM, $modx->getOption(\'emailsender\'));\n$mail->set(modMail::MAIL_FROM_NAME, $modx->getOption(\'site_name\'));\n$mail->set(modMail::MAIL_SUBJECT, \'Заявка з сайту improvision: \' . $data[\'name\']);\nforeach ($recipients as $to) {\n    $mail->address(\'to\', $to);\n}\nif ($data[\'email\'] !== \'\') {\n    $mail->address(\'reply-to\', $data[\'email\'], $data[\'name\']);\n}\n$mail->setHTML(true);\n$sent = $recipients ? $mail->send() : false;\nif (!$sent) {\n    $modx->log(modX::LOG_LEVEL_ERROR, \'[impLead] Could not send lead e-mail: \' . $mail->mailer->ErrorInfo);\n}\n$mail->reset();\n\nreturn $sent\n    ? $respond(200, [\'success\' => true])\n    : $respond(500, [\'success\' => false, \'message\' => \'Mail error\']);',0,NULL,'',1,'{core_path}components/improvision/elements/snippets/impLead.php'),
(40,0,0,'impProse','',0,32,0,'/**\n * impProse — prepares rich text (content fields) for the site design:\n *  - top-level <h2> get class \"title\" and an id (for the table of contents);\n *  - top-level headings, figures, quotes, callouts, checklists, summary boxes appear on scroll (data-reveal);\n *  - <ol class=\"step-list\"> items appear one by one (data-stagger);\n *  - <img> get width/height (from the file) and loading=\"lazy\".\n * &html — the HTML; &toc=1 — give h2 ids; &mode=toc — return only the table of contents (<li><a href=\"#id\">…</a></li>).\n *\n * @var modX $modx\n * @var array $scriptProperties\n */\n$html = trim((string)($scriptProperties[\'html\'] ?? \'\'));\n$tocOnly = ($scriptProperties[\'mode\'] ?? \'\') === \'toc\';\n$withToc = $tocOnly || !empty($scriptProperties[\'toc\']);\nif ($html === \'\') {\n    return \'\';\n}\n\n$doc = new DOMDocument(\'1.0\', \'UTF-8\');\n$prev = libxml_use_internal_errors(true);\n$doc->loadHTML(\'<?xml encoding=\"UTF-8\"><div id=\"imp-root\">\' . $html . \'</div>\', LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);\nlibxml_clear_errors();\nlibxml_use_internal_errors($prev);\n$root = $doc->getElementById(\'imp-root\');\nif (!$root) {\n    return $html;\n}\n\n$hasClass = function (DOMElement $el, string $class): bool {\n    return in_array($class, preg_split(\'/\\s+/\', $el->getAttribute(\'class\')), true);\n};\n$slug = function (string $text): string {\n    $map = [\'а\'=>\'a\',\'б\'=>\'b\',\'в\'=>\'v\',\'г\'=>\'h\',\'ґ\'=>\'g\',\'д\'=>\'d\',\'е\'=>\'e\',\'є\'=>\'ie\',\'ж\'=>\'zh\',\'з\'=>\'z\',\'и\'=>\'y\',\'і\'=>\'i\',\'ї\'=>\'i\',\'й\'=>\'i\',\'к\'=>\'k\',\'л\'=>\'l\',\'м\'=>\'m\',\'н\'=>\'n\',\'о\'=>\'o\',\'п\'=>\'p\',\'р\'=>\'r\',\'с\'=>\'s\',\'т\'=>\'t\',\'у\'=>\'u\',\'ф\'=>\'f\',\'х\'=>\'kh\',\'ц\'=>\'ts\',\'ч\'=>\'ch\',\'ш\'=>\'sh\',\'щ\'=>\'shch\',\'ь\'=>\'\',\'ю\'=>\'iu\',\'я\'=>\'ia\',\'ы\'=>\'y\',\'э\'=>\'e\',\'ъ\'=>\'\',\'ё\'=>\'e\'];\n    $text = mb_strtolower(html_entity_decode($text, ENT_QUOTES, \'UTF-8\'));\n    $text = strtr($text, $map);\n    $text = preg_replace(\'/[^a-z0-9]+/\', \'-\', $text);\n    return trim(substr($text, 0, 60), \'-\') ?: \'section\';\n};\n\n$toc = [];\n$usedIds = [];\nforeach (iterator_to_array($root->childNodes) as $node) {\n    if (!$node instanceof DOMElement) {\n        continue;\n    }\n    $tag = strtolower($node->tagName);\n    $revealable = in_array($tag, [\'h2\', \'h3\', \'h4\', \'figure\', \'blockquote\', \'aside\', \'table\'], true)\n        || ($tag === \'div\' && ($hasClass($node, \'callout\') || $hasClass($node, \'checklist-box\') || $hasClass($node, \'summary-box\')))\n        || ($tag === \'section\' && $hasClass($node, \'checklist-box\'));\n    if ($tag === \'h2\') {\n        if (!$node->getAttribute(\'class\')) {\n            $node->setAttribute(\'class\', \'title\');\n        }\n        if ($withToc) {\n            $id = $node->getAttribute(\'id\') ?: $slug($node->textContent);\n            $base = $id;\n            for ($n = 2; isset($usedIds[$id]); $n++) {\n                $id = $base . \'-\' . $n;\n            }\n            $usedIds[$id] = true;\n            $node->setAttribute(\'id\', $id);\n            $inner = \'\';\n            foreach ($node->childNodes as $child) {\n                $inner .= $doc->saveHTML($child);\n            }\n            $toc[] = \'            <li><a href=\"#\' . $id . \'\">\' . trim($inner) . \'</a></li>\';\n        }\n    }\n    if ($revealable && !$node->hasAttribute(\'data-reveal\') && !$node->hasAttribute(\'data-stagger\')) {\n        $node->setAttribute(\'data-reveal\', \'\');\n    }\n    if ($tag === \'ol\' && $hasClass($node, \'step-list\') && !$node->hasAttribute(\'data-stagger\')) {\n        $node->setAttribute(\'data-stagger\', \'\');\n    }\n}\n\nforeach ($root->getElementsByTagName(\'img\') as $img) {\n    $src = $img->getAttribute(\'src\');\n    if (!$img->hasAttribute(\'width\') && $src !== \'\') {\n        $attrs = $modx->runSnippet(\'impImg\', [\'src\' => $src]);\n        if (preg_match(\'/width=\"(\\d+)\" height=\"(\\d+)\"/\', $attrs, $m)) {\n            $img->setAttribute(\'width\', $m[1]);\n            $img->setAttribute(\'height\', $m[2]);\n        }\n    }\n    if (!$img->hasAttribute(\'loading\') && !$img->hasAttribute(\'fetchpriority\')) {\n        $img->setAttribute(\'loading\', \'lazy\');\n    }\n    if (!$img->hasAttribute(\'alt\')) {\n        $img->setAttribute(\'alt\', \'\');\n    }\n}\n\n$out = \'\';\nforeach ($root->childNodes as $child) {\n    $out .= $doc->saveHTML($child);\n}\n// boolean attributes: data-reveal=\"\" → data-reveal\n$out = str_replace([\'data-reveal=\"\"\', \'data-stagger=\"\"\'], [\'data-reveal\', \'data-stagger\'], $out);\n\nreturn $tocOnly ? implode(\"\\n\", $toc) : $out;',0,NULL,'',1,'{core_path}components/improvision/elements/snippets/impProse.php'),
(41,0,0,'impTvOptions','',0,32,0,'/**\n * impTvOptions — option list for listbox TVs (used as @EVAL binding):\n *   @EVAL return $modx->runSnippet(\'impTvOptions\', [\'type\' => \'projects\']);\n * Returns \"Title==id||Title==id\" for the projects (or services) of the language\n * of the resource being edited, so editors only see items in the same language.\n *\n * @var modX $modx\n * @var array $scriptProperties\n */\nuse MODX\\Revolution\\modResource;\nuse MODX\\Revolution\\modContextSetting;\n\n$type = $scriptProperties[\'type\'] ?? \'projects\';\n$settingKey = $type === \'services\' ? \'improvision.services_id\' : \'improvision.projects_id\';\n$ctx = \'web\';\nif (!empty($modx->resource) && $modx->resource instanceof modResource) {\n    $ctx = $modx->resource->get(\'context_key\') ?: \'web\';\n} elseif (!empty($_REQUEST[\'id\']) && ($r = $modx->getObject(modResource::class, (int)$_REQUEST[\'id\']))) {\n    $ctx = $r->get(\'context_key\');\n} elseif (!empty($_REQUEST[\'resource_id\']) && ($r = $modx->getObject(modResource::class, (int)$_REQUEST[\'resource_id\']))) {\n    $ctx = $r->get(\'context_key\');\n} elseif (!empty($_REQUEST[\'context_key\'])) {\n    $ctx = preg_replace(\'/[^a-z0-9_-]/i\', \'\', $_REQUEST[\'context_key\']);\n}\n$setting = $modx->getObject(modContextSetting::class, [\'context_key\' => $ctx, \'key\' => $settingKey]);\n$parent = $setting ? (int)$setting->get(\'value\') : (int)$modx->getOption($settingKey);\n$c = $modx->newQuery(modResource::class, [\'parent\' => $parent, \'deleted\' => 0]);\n$c->sortby(\'menuindex\', \'ASC\');\n$options = !empty($scriptProperties[\'empty\']) ? [\'—==\'] : [];\nforeach ($modx->getIterator(modResource::class, $c) as $res) {\n    $title = $res->get(\'pagetitle\');\n    if ($type === \'projects\' && ($brand = $res->getTVValue(\'brand\'))) {\n        $title = $brand . \' — \' . $title;\n    }\n    $options[] = str_replace([\'==\', \'||\'], \' \', $title) . \'==\' . $res->get(\'id\');\n}\nreturn implode(\'||\', $options);',0,NULL,'',1,'{core_path}components/improvision/elements/snippets/impTvOptions.php'),
(42,0,0,'impHeroClass','',0,32,0,'/**\n * impHeroClass — extra class for a long service title, so long words do not break mid-word:\n * \"service-hero__title--xlong\" (a word longer than 15 letters) or \"service-hero__title--long\"\n * (a word longer than 12 letters or the whole title longer than 24 characters).\n * &text — the title (newlines / <br> allowed).\n *\n * @var array $scriptProperties\n */\n$text = (string)($scriptProperties[\'text\'] ?? \'\');\n$text = preg_replace(\'/<[^>]+>/u\', \' \', $text);\n$text = str_replace([\"\\u{00a0}\", \'&nbsp;\'], \' \', $text);\n$text = trim(preg_replace(\'/\\s+/u\', \' \', $text));\n$longest = 0;\nforeach (explode(\' \', $text) as $word) {\n    $longest = max($longest, mb_strlen($word));\n}\nif ($longest > 15) {\n    return \'service-hero__title--xlong\';\n}\nif ($longest > 12 || mb_strlen($text) > 24) {\n    return \'service-hero__title--long\';\n}\nreturn \'\';',0,NULL,'',1,'{core_path}components/improvision/elements/snippets/impHeroClass.php');
/*!40000 ALTER TABLE `modx_site_snippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_templates`
--

DROP TABLE IF EXISTS `modx_site_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_site_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `icon` varchar(255) NOT NULL DEFAULT '',
  `template_type` int(11) NOT NULL DEFAULT 0,
  `content` mediumtext NOT NULL,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL,
  `static` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `static_file` varchar(255) NOT NULL DEFAULT '',
  `preview_file` varchar(191) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `templatename` (`templatename`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `static` (`static`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_templates`
--

LOCK TABLES `modx_site_templates` WRITE;
/*!40000 ALTER TABLE `modx_site_templates` DISABLE KEYS */;
INSERT INTO `modx_site_templates` VALUES
(1,0,0,'BaseTemplate','',0,0,'',0,'<!doctype html>\n<html lang=\"en\">\n<head>\n    <title>[[*pagetitle]] - [[++site_name]]</title>\n    <base href=\"[[!++site_url]]\">\n    <meta charset=\"[[++modx_charset]]\">\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n\n    <style>\n        body {\n            background-color: #eee;\n            font-family: sans-serif;\n            font-size: 20px;\n            line-height: 1.4em;\n            padding: 0;\n            margin: 0;\n        }\n        body.loaded {\n            font-family: \'Open Sans\', sans-serif;\n        }\n        .container {\n            display: block;\n            max-width: 960px;\n            margin: 2em auto 2em;\n            padding: 2em;\n            background: #fff;\n            border: 1px solid #ddd;\n            border-radius: 3px;\n        }\n        .container > section {\n            height: 100%;\n            width: 60%;\n            display: inline-block;\n            float: left;\n            margin-bottom: 2em;\n        }\n        .container > aside {\n            height: 100%;\n            display: inline-block;\n            width: 30%;\n            border-left: 2px dashed #eee;\n            float: right;\n            padding-left: 1.5em;\n        }\n        .logo {\n            background: url(\'[[++manager_url]]templates/default/images/modx-logo-color.svg\') no-repeat center transparent;\n            width: 220px;\n            height: 85px;\n            background-size: contain;\n            display: block;\n            position: relative;\n            text-indent: -9999px;\n            margin: 2em auto;\n        }\n        h1, h2, h3, h4, h5 {\n            color: #494949;\n            font-family: \'Open Sans\', sans-serif;\n            font-weight: 700;\n        }\n        h1 {\n            font-size: 36px;\n            color: #137899;\n        }\n        h2 {\n            font-size: 29px;\n        }\n        h3 {\n            font-size: 24px;\n        }\n        a {\n            color: #0f7096;\n        }\n        ul {\n            padding-left: 2em;\n        }\n        img {\n            max-width: 100%;\n        }\n        .cta-button {\n            display: block;\n            text-align: center;\n            vertical-align: middle;\n            -webkit-transform: translateZ(0);\n            transform: translateZ(0);\n            box-shadow: 0 0 1px rgba(0, 0, 0, 0);\n            -webkit-backface-visibility: hidden;\n            backface-visibility: hidden;\n            -moz-osx-font-smoothing: grayscale;\n            position: relative;\n            overflow: hidden;\n            margin: .2em 0;\n            padding: 1em;\n            cursor: pointer;\n            background: #67a749;\n            text-decoration: none;\n            border-radius: 3px;\n            color: #fff;\n            -webkit-tap-highlight-color: rgba(0,0,0,0);\n        }\n        .cta-button:before {\n            content: \"\";\n            position: absolute;\n            z-index: -1;\n            left: 50%;\n            right: 50%;\n            bottom: 0;\n            background: #137899;\n            height: 5px;\n            -webkit-transition-property: left, right;\n            transition-property: left, right;\n            -webkit-transition-duration: 0.3s;\n            transition-duration: 0.3s;\n            -webkit-transition-timing-function: ease-out;\n            transition-timing-function: ease-out;\n        }\n        .cta-button:hover:before, .cta-button:focus:before, .cta-button:active:before {\n            left: 0;\n            right: 0;\n        }\n        .companies {\n            clear: both;\n            display: block;\n            width: 100%;\n            padding: 1em 0 0;\n            border-top: 2px dashed #eee;\n        }\n        .companies h3 {\n            text-align: center;\n            margin: 0;\n        }\n        .companies ul {\n            margin: 0;\n            padding: 0;\n            list-style: none;\n            text-align: center;\n        }\n        .companies ul li {\n            display: inline-block;\n            padding: 0 1em;\n        }\n        .companies ul li:first-child {\n            padding-left: 0;\n        }\n        .companies ul li:last-child {\n            padding-right: 0;\n        }\n        .companies ul li a {\n            display: block;\n            position: relative;\n            text-indent: -99999px;\n            width: 200px;\n            height: 75px;\n            background-repeat: no-repeat;\n            background-size: 200px;\n            background-position: center;\n        }\n        .companies ul li.modmore a {\n            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAfQAAABxCAMAAAAUAqFnAAADAFBMVEUgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToB8YRCjAAAA/3RSTlMAAQIDBAUGBwgJCgsMDQ4PEBESExQVFhcYGRobHB0eHyAhIiMkJSYnKCkqKywtLi8wMTIzNDU2Nzg5Ojs8PT4/QEFCQ0RFRkdISUpLTE1OT1BRUlNUVVZXWFlaW1xdXl9gYWJjZGVmZ2hpamtsbW5vcHFyc3R1dnd4eXp7fH1+f4CBgoOEhYaHiImKi4yNjo+QkZKTlJWWl5iZmpucnZ6foKGio6SlpqeoqaqrrK2ur7CxsrO0tba3uLm6u7y9vr/AwcLDxMXGx8jJysvMzc7P0NHS09TV1tfY2drb3N3e3+Dh4uPk5ebn6Onq6+zt7u/w8fLz9PX29/j5+vv8/f7rCNk1AAAXa0lEQVR4Ae3deVxU5eLH8e+wMCigqICguSSiiUiauedSmUtYXVtysbr6u+WtrpmWy22xunmte7Ml762riVppmpaauZuaqKSmLbmgoKip4CKOCrIzzPc3nDPnzHNmgQGGQJn3n3OYM/D6zGHOeeac80Cr48Sl+84YzOajXEJSDGapO+aMagaP64nXyJ1FtFiOcgk10OLqkm64bnh02k6rZeWMfoEq4+z6uD54DM+ke6KTP0XB43rwUDHdFp3HmqHm82ifSTdGZ4IvajoP7wS6NTonoabzeJBujn4xFDcAr9FTJptNGaPDjUe33d3R+QJuAN4nKDnpjRtPe6Pbo+/zuhGiH6Dk4I0YfTxtrUG5hOXSRmEbT/SabSlF22fN+NcIlEvAK2/PiD9M0QhP9BpN9yutMgajguq8RsEMT/Qard5ZWv0fKm4lrRZ5otdoTa9QdTEYFfcnWq1GjeaJfpWq3aiEdkaqvsf1whN9AyqhSQ5ViZ7otS/6Tk90T3RPdE90T3RP9BrJE13nY+WJXkui33pItat+1Uf3C2nbqVfvbu0b+8BWUMsO3Xrf0SkyCC7RBYQ1btw40NVuviGtoju2aVHfG2auRfeq08j8CiH+sOPfMLxxeAM9XKavW7euHuWir39TVCsdHPEPbx0bGxnqV+HoPanKbVSl0f06PP7BxpSMfJoVGpK+ejYKisYDXvpyb/o1I81y0hJmDghAqRoMfH3lL2mXDAZD+v41M4aEoXT1Bs5Yl5yRU2jKyzp/cM3bQyPLil633dAp8zf+euqi+RUyTiYu+GsMLCL6jH3/m90nLpgXXEjdvuBvnX1QhtYj3l390/G0tLRje755a2hzlCmk4yNT567+MfX81dxfvGCrQdy7W05czjUacy6lrH3tDr8KRe9O1eWGVRe93pA5R4zUylk9AGa3Tv7OQBvHXguFU70XpFPj4rLBcC72P6eolZ1fSvQ63SatSi2iVuHOJwMROWrOT1doY/+rzeBc2LiduRRlbvxzPTjlGzNmzp4LJiqSbKN3+DidGgcmNayp0bv/5yQdWtb1uV1GOnLqCTjWcRUd2NoPjoV9lEdHHEcPvn/eMTqWtC2HDl2aXh+OBb6UTnvHnvaGI+EPxycVUeOgNnqj/+TRzskna2J0n6FbTKyAj33hwAu5dMj4tg8cuDOVdDW6z53z0lgRh3rAkV6/0bGEaNhqNGrlJcqcRu9+hA6tCK150duygr70gi2veDr1bT3YGZlHl6N7r2VFZT8Ie2Ny6UzGIGgEvXeGAsfRh1yjE/tvruLoO1Be0UWsoBmwNY+l2KiHjbgiuh7d5wwrLH8QbD3FUuTeC1EUWWb0Pjl0Kikcish8qja6K3oiyqtdIV11zWC4aqKquA+0XqZVYVrKvr3Jp/NoNQdakQaq8k7s27xxx6Gzxc6jH2PFZbSC1mAjS3P1Vggi88qM3iSdpdjqC4uBtFpZmeghl6hKC6h49Is/xE8ZNaBrp9vuHDU9IZ8i0+HFLwzp2DKiSbMOw+Iv0WKXF0TdimiRs2T4LfW9Ae+gqKHzrGkfgki3kYpNf46qIz3UIGbk7OQqiM610Ig4x9L9Vrd80b9iqV51dMLLrMpE90uh1ZiKRv+pdyMI2i+iomjP1Nv8YNX8K1oMgMArkRbrYiBoqa7peJDDs/5PPwCRftA590fnIIg+Z1leL1f0gdQyUSv3FkgmUDC6MtHxDa0u3lbB6F/CxlRaPKWDlk6p/gUE99Nivhe0ptHieVh576XsRGvY+LUKom+BoLORZbnStBzRdTsoKnq7Y6dZ1FgMs+YfUZDdHE7EUmXwgxNjKDCMrVOh6MthazllU2Ar7CIlaYGw+p6y77xg6zPKUvRQ9aEsr7v92LuL0S+fNtCBjJQf95ygjaJoWC2mVvrCd5ZdptY/y45+2Ev4WwSPwWwyRQVtgPkGij6F6PZBVhOouvbIIKtmEASnUXTkefdE72J0upc5h7LOwnqKKMm5BXYapVPWH6r/UfY+KhQ9+Y2HY5sGRdy9lFprhsc29gHq9t1IrRehapZNjYWhAG7+jhqn6pYe3VSQs0+JHk/RIki2UPQWUEjRpRYQJbBs4yB6nBo/uCe6z1FKjvnD1jDKRkI1mbL5cOBVyj6GQm9pmNOyYtHfEVYtehcW3kupsRqqp6mxSYcSQQepMdBZ9CMLp4+9v2/ndjffBFnAKQoKYyHpr32SHwwUFN4HjY0s29PQ+Iii79wTHespyWzsdFfj7/a/dR840Drf0tEHFrcWU7IeFYv+ARSJFP3m5eSir+N6KFZTVBAL2RBqzHIWfRRs3EHRXsj8jlJQ3EkT3TAUlY6Od6si+leUFETBVnQhJf+Gov5ZSn6vA0d2UZLXChajKZtQ6eh/oSirKRQfU3StBSyC0inaBAufJIr2OYv+OGy8SNGHsJhL0TNi9PXRcEN0DDvq/ugL1J0QW7cU2EaPNZU64vAeZffCYiZld1Q6esdiCoQVDqdGJydPeA6K9ym60thJ9CdgY7HjNM9QFK9ELzy+eBDgluio/9Smi6bqiz6Ustfh0Gjbg7YVlGQ2rXT0FtcoGg5FH2r0g8XDFJm6QzFMu6CLi9F1eylK2ZEo2ZFC0Q4l+qU3m8Ad0WVdlhVWX/TxlD0Gh/pS9p7N//sT+kpHD7/sZBe3t5PoUyjKioCis4mih12MHpBGF6TAQIusRR3dFP3BnSay+qLPoOzu0r/WWawkPEjJL3B39IllRv+AIuFt1yyLoudcjN40iy64CANVua+6I3rECpLVGf1/lHWFQy2vacfAA45Tst3t0SeUGf1Tin7VQVHvAkXTXIzeroAuuAwDBZ95Vzp6ZDKrOfo8SoyxcCjsEiVbbKKvr4boyylKhKrOSYrecTH67Sa6wIDLFH0EjS0s298gapRE0eZqiB5PSX7b0qPvqgHRV1G0VfPNleh9F6P3oGvRs6kxBKLFZ9MVaRlUFZ9LS1ecfRyiudTYWn1belEMHAq1RP9eiX6Ckm3VEP0birZD5X+covfcGj0D9yw0UrDXB4LAhg0UwfdQdaVVA1VDPQTtiyhInx5TDdE/oawLHGqWqd2yfZMo2VcN0RdS9LMOiqDzFL3hYvTbiumCdAB9TlLQA07cTtXlenBiOgUrmgDVEP3flPUr/VWWweJHSlJ8/vjo/6UoxReKiCsUTXQxetsCCozHjiQ7shJm7Q20mlKZ79N1P9Bqqw+qJfqLlD1a+kUb/4XFOkouhPzx0V+hyBACRQcjRSNcjB5+lYKc1n6O6OUur9NqQWWiB52mqrAzqif6MMqmwqHhtu/u2ZQY2//x0R+nyNgRivuocYeL0fUnSjlHp5SPgrWViR6eSdUhr2qK3pWyhaV/Aj0Ei4mUPfjHR+9GjdHCLynKbu5idGynaANK0TzbXWfD5lK1HdUUPcRASZIPHNlCiTEaFv0pm/nHR2+UQdFSKPbYnoHtYvSPqTER9jo0tLS6Uv0XO7gvOnZqR2ccf+yl+tv+e9rv7TT6oSqKju8putoEstuNFC2Aq9GfoIZpEmx0nJfZVrzY4YaJPoOyt+HAWPszKRM0X3KJvPZT8rNXFUV/mRpzHY+EDnc1urxctKYHVN5tn9lcxMJWN2T0HpSdD4Ed/WHKHoFqEmVfwVbQOUo2oIqity9ycJt83/epcSnE5ehIoI3ihFfiune/Y/Djb3x5MJ9meTdmdJ/92g1H9AplZ+vD7gKf4ntg4z5tV/dHxxZqbR0/YspeasXD9ehPsXQ3bHQ8TYvxsDG8kPY/jhWUnY6ERr3fKHugyqLfyzIVxpYjenC6W6P3oqqoUc2OHpBKi3cCIfCbVETZ5aYQdC2m7FhvCKK2U3Y+uMqi67ayLPNRjuh43q3Rw8epnvKv2dHxEBVHpnSoA4lv23G/OJt34lNaFM7tGQhJo94fGmgxE1UWHR3zWLpzTcoVXb/PndE1anh0LBBHoLct/eKLL7cczqfqO29ohJ2i6uTWJV98sWrPOarOR1RhdIxj6e5DuaLj1qzaGj0gkaVIjoCNfvl0bhiqMjo+YGleQDmj4xEjS1MYeaNGR9gPdOpIJOwMLaAz01C10fEunTK9CNeiu35XjWs33bDREbSQTqyLgAMDz9Ih42RUdXSMvULHzjyACkRHnyN0akMPnX309aiEiJoRXTYqhQ6kjdPBoZu/pgP77kLVR0f0cjqQ/8lNqFB0NPjXVTpSsGYQZNrom1EJzfMqc/uR9s7fd19SdgtsRTu/mULQsz/SxsGpjeHUwDV51DAmjtbDns85imZDEVFE0RQo+lGjP+z0mn+BWqc+iIWdKGr8Bc5ETk+mjdzdr3WA1U2ZVB3QoeLEszE3orwiZsfPNZv3NOyMnj/XLH62fbJwy5MeggO6rlPXJGcV06w4J3Xjm331KFW751cdzTHRrOjqoRUvdoJDXjPi51rNHwZF/Q/FBfOsbaPihQXx8W3hQNjQd79PzSww0ZR/JXnjW4OC4UDox5pX6AHn6vad9u1BQ14xWZRz8eDGmSNaQ6Oxgaq8SFTc87RaiZpB3/TWvv379+vUrC5cUadZ57v69+/VvrEv/nh1w9t07npb6zA93MMnpFWnrl2imzf0gR3/k7SKR4U1PEqrOajRPHZQsOD2+np/X5SLTu/vHxa3j4LJqNE8PqLGmZRjs1AuDfccPZpBjf6o0Twepq2VKJewq7RxuRFqNI9Qg9tnVV6JGs4j3u3R41DDeUTnuTn6Lm/UdB5vuTe6sRdqPA//HW6NPg3XAY+IX90YfQ6uCx5ha90V3TgN1wkP3bOn3BJ9Rz9cPzwaPp2QRdkalEtYLmVpiwfrcH3xaD5o4vvzF8xf8DTKJehD83M+efupnvVRq3h4eHh4eHh4eHh4eHh4eHh4eHh4eLSIiQmBKDomJhAK/07Dnx3317iWUDWJaS+JiQyEIlJ6TBbTEhpB4rIoHWS+HR41r/f+1lA1Vtbbuh7sBcbEtIOocUxMc6iaDnpy3N9GdQmAwr99jLSy9k29YVGvU/uYAKhuiYltCUWL+8dNHHtnMGqLdUbjIbH6S0VG492QNXgt2cQS2ZsfhMVco0X+yS/7Q6L72SjYYjsVtiBJjxIBkw8YWSJvx2OweNtoUXB6eRxsDTQaC5+DVUSq0fgNLPp/e4WSE+80hayjUVaUdeDj7pCEHDFZn4IxBcbCAZDdt42kicya3wG1wyaSK6C620jyHki6JtPqi7qQLKDgvz5S9AMU7IVGHAVnpejRP9Pq22BI3qHg8zrQGqyd69Vrk/WbTp9ZtEobDEknWhXPDkKJu0zkeMiirpD/giRiNX9/o2/z8Kj75xfxdR1qgw2ay22anLFeiNHhInlt0V/j7h360g6Sq3yUOQJWvG42fcnvyuS2ut9YuOLzhbJFf4fGveSpz5Rl//YF0PIUmf/Vs0PufWDSZpIJdZU7km983ezNhakkZ0NrEM2ONoTFmzT71nqm8k9vPHTvvWPiL5H5/ZToaa+bzVybQXJroHKiY3YHlPBOIHf6osQtvxdPqANZy4Vc5ltrohf2gcR7I9XoPrvJfTGQPZFDTlCiD4UkeCaZ20qOnhkKkTb6Moh068mkrpA9eIWcoUR/GpKAV8niTg6iczlkQ0zW6I+SxS94W6JtIo8HW6LvgqTpm0XKNCz6H8k9fjB7ibwchRKhqVe7wepFLqgd0QtPkCcbo8Q/yNyzlugPk2lNxUnAzwZboj8Gi63kM3L0rBalRF8B0d3klTZQ3F/MzKaW6BOFCXtes4t+rpB8QW57njxjkqP7HRJPMw08SE60RP8RFiOLWRSLErHZ8lusS776Ryw1dQPm7d5/4MDP/+sM4A2OqBXRi+KOkWt0AOJM5LhlluhrtFPn7yZH2kYfT84qd/TPyOmwWkc+Zxt9JLnYLvoXfycL+pR0TiD3D7dE76udS/pB8hdvm+j4TJ1WdQJp7IvAA1Q26L6cAuAAf97741Hm/wnw2pseWBuis1XPYvIVeQtagTVy9AYZzL4JVs+Rn9pGf5z8pLzR/VO1cwaNIFfbRo8jV9hFX45N5PFQYCaZH9udcvTp5DuwqnuGhVG20buZmOSLEroNZEq9mWRSPUi+ueAP4JdMf0A3pOC4PzCAo2pF9E54hSy6EwlkagjWy9FvV2fKkXUh9+psos8gp1mih5cS/WsIogqZqodVmwIe87OJPoGcZRd9FZqklZQeSnI8BliiryLvh2AdeZ9tdP1x5raApEUGuTuf+d0gCc77AFL0AJitZxTgc2ZNLYmONeTReWReTyjR77OJ1TSLp+rK0UcoD50i75SjZ/eLaiNp29A++iZlWWMAvcnvIQg6z0vhcvTxkDVIIh92EB0DjeT/0sglUKPvpakjBLPIZ2yjYyvZC7KRLDEJsu4cLEevA7PveDOAxedqS/TwkywxHmr0x8h5EDQ8R0OwHH1sveDg+g1aPZFM7vaVozMvV5b3d/voxlxZ/ifyv+7VEOiPMedmOfrLJesNbvHoz2RyoKPomMYSScFqdO+jzImEYBr5kl30ZcLM4PPEcYmH2U6KntXQ17feKNNPPgBeLa4t0dG3iOQSOI/e6Lwa3XD6zJkz6Xkkz3eAHN3qn/bRVcscRT/K7JZy9Csl603LIZnZEw6je60nmd0ZanSf47x2MwSTyH/YRf+UjIPFAyZhXpBRbAWzH02nTx0/zQvdYTaRtSY6pshbkBp9OPkpBCEXeLG+HF1RtD4aluhF65Z9LVn+kH30tGVfycueBTCQXAeB/wleayFHVxgTusBxdISfIsfCGt3rEAvaQjCDfMEu+ipyAGShx8UJcOPYWYpenHQgjQkRKPFOXu2JjtXGzhCi301ugCCygMl+cvT0pCOHU0jTY4ASPTPM1cGZztYccoUrPBssRz9vXm+yiXwOcBYdd/FzCNGxnewJwXzyz3bRd9HUCbKvyHwyqx0kt3CMsiMX+vv5lijx/eFaFL35gxCjty3kCX/t6PcWyNFH++n9/BeRX1ujZzV39ZAt4iozGsCqWzF/0cnRJ/vp9foPyS3ezqNjeKgm+mfkk4DYl71toze6pE7k9ySZf892MtEXJXzT1srR6wJ/4maYhebPqjXRZUJ0v2QWd4XVB+QMS/SRUrwL8h0Zy3ucrttNDtZOIDIHcvTnYVbvBDnVaXSZEP0Z7UFGi2y5ryb6MHVCtHZZ5EuIzSH/Acl0tpGiBwL4mk8BmMqutTc6ZpFfaC/B7KYZnPk/MqNZ+aPjVc3nRsBxcrBmcOYB8lq0y9Fb5TG7LVRvkStgE13/m3I06LeL3OYFTCCLeqNERPYGAMcYBKBZFmPRXHqg1kaPLmDxSFh4LyO36TTRsZlcqUZv4nL05lnkOChmk/v9NNGxlEzwcjU6viR3BMGify55t030oGVkeiOU+Cd5OUodmEOJpzgNeGycL8zunnx7wO7cqNocHf8ii2bcDDO/XpvIwq7QRm+XTT5uiX6tY6MQWWj9MqJjEslZUTDz7voNyYHQRr8pg5zgcvTIy+SeAXVh1mRKNrkQYvTANs8cUicTvstIjlEH5j6B5GO+5Q1FRCL/hFod3W8pyazdK5esP0LS+GfYRMcr5LlwObop49x52YUVZUXHJySz965asvagieTzsImOsWRWlKvREZdD8vh3S77+wUByR30les4Bs9/zSRaPR4mGx61H6COts8m+x5/jfFEi7MXM/KGoDbaRnSH6Xtn24DP9GhWHB0O2iBwNmf5X8lsfQJdSypkz95FrYWOqgYrUYdYdxSmQ6baRiXUgiiM3QDSY3ARZzz1U5H0UCElnWiX2Rwnfb8jTYbD+GdfaQDL0GE8tmjrhzfW53BCNWuHdxJ1REM1MTLwdFlEvbz5hMGQcWDIyQA2WmDgAFj13JO7qDOg+TdypSvwPNHokJv4Ttpq/uD7VYLiU9PXoYFg8k5j4KCxitu3ccydE3RIT34aoq/CAzwPzf7loMJzeMb0DLKIsv8zWpS/3gKzH7sSdA6FotDZxz0uQ+T/y9WljccHh2b0g+X8Vbbf7yuo/YwAAAABJRU5ErkJggg==);\n        }\n        .companies ul li.extrasio a {\n            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAAA9CAYAAAAXgFT/AAAoo0lEQVR4AexabZAcRRm+fBxmd2dmdy+3M5sFQ8APxCiISFF+KKhBDZDszGwWyZ1A1JLSglJL/YNllbEKSn9QWohawQ/QBLRELH9oFVh+4EcplkZF4okYDZQhF3M7M7t3iblwd8n4PDvTVtfUZWe93WIP6bfqqZ6d6X777X7ffvrtvhsanCgJh3auFM9+yd3WNN1wwbom9Cxnb1Cs56U63YoSJSuAVYl3/K1EiSIsJc8ZWUZxpEQRlhKVWRGQkUzmLEMzdho5fbee03fg1fCyIS0lirCUKBHHvmKxmDdy2g/zmhG2kQOy+scTxKZEiSIsJYPPrvSsfjUyqxA4BcyQtFD+Vdf1teo+S4kirGUlirDyudwmElYeQDlPwsKx8FFmXoqwlCjCUrJcRBBRBkfCe0lYcXY1m89q708SmxIlirCUDD7TEvdYmnYTSOt2HhHV/ZUSRVhKlqusTHmvJARzc2GFQ/VVDw9dvpolwXedWV3Nm0xYQUxYvuX+zh8ZN/7fCItjuR9xIeKEEHHCuViOsSxspN07nzu+WBWDc7p6AGS1UrJhdVwOlgvoxImN9TNCOLRzPTr/xuGJIdRFm34FPvumzjSwb9ZlyWBcchCzfawnrc/F+uMzxy+DdbggIsKyrwlMp01YATKs6bPqI3wv6sjtxG9Zf9LeDvXSZAUXJ/0qxrx36OLhpcaI8AF91nv9/oscn8IXvcfzwGWFTBbPEkENE12QI206g+WzQmB7xSLrEHSdgo0LgegpK+kxQPvfX+/tm5ZTbYoMq+T8NtywY00/9afVo0+4CDk/vfZFguvkY5m802JN6Om3CEJOI1BB+Knx/PwUjns4PdNLJbr+E1cywEhagVV9ZcNyrg1K7i1YZHf4pn0PsoR7cbTZDdyFTOEzvmV/COXVR0z7RWwnt1/qDjVVqpcbo1vPa1lbzjli1c5tdUT9nKlS7SV+pfrCXhZ5Y9Rd1xh1Xso+qbcTWMdbW3sZbNQXzXo6ZFjziQyLJNJ9hpXIkgCUKZnY4tkMbffW1s+cjudO1OkUXMI2+V0LfsfcXeWV7Ju9knObZ7pf8k3n64wTYI9vOV/zLPvzvunuDCz7Rs+qbvJH6KsEKbD/PsUx9SXGWmmOOpchht8NWz6B4/nngK/SPtpJe2l3UHJuBW4KStUr0+N58BmWhP6KyN4kKWaK642c8Q5DM27Wc/qndU2/y8jpe/gXS5T3oLyD/8CKOmOFbOEiNMkkdA73NasSz0fMrRaC7H0IsAc8094Ph56Ys+phWN4ehuvGgXfFGMO7a8NjVi0EkU3D6Y+h7jcaljvWLNgFWXe35EHw2bNql0Lfo9D3d5T7EGh/8QBfgvjN78Df+Nyw7O0iaLvdhVk2y+6b0dfvoecfHEesd4J9EIn+/gQcAr5zuFwvSYviNYFp38f3XASo+y0BzgvwS3wLZ0zOl+Njbh/wUE+q88243IP33/VYWtVLxXhke4NKfX1guXdicf2UC88vV18uvp+OBPyRzUYD40TfHyOJwGcP4fkRlAdoM/8I0GnuZN0kW2SL13kRKT2G9i2OKyy/ExhLxMk4Y4dEzXETHja7P9BuYNtkZUtWJoVesyqZkKkf/e1CLP8G5b8AZri0ZxEbo3g+injmeOhnbszw03Wt9WNFObsc9P9iaZq2EQRxH/CQkTXuxO9SHy/e5fFl9Kxug5x2gZT2Ak0j/neKgpaX0X5H4Ps8cAD4Pojto7qunydnbD3ZKLICcZQiUfG4AmedZPCJYDtmbaMTp4GngCe8NpG4hxGscwiAmLzGRFA+g/e/QJ3rRT/d3rPQBmEXbLmb/Z+EzjmA5cJpQEJl/wiw/cyAqCPtOCC+t/JXFWHzz9kX9SR1y3gG3xnUtAcZxQ7Z5gBETR1h5XrOBxeCDLbj3Jzi3GJRSAsmAS6cyg3tsllybpBt5X1TlIFuvQhzPBVWdrTnG1nDW0W2lhz75Dr37AZICvV+7KHNtOnGxLKdYF/U8fRMZctoctEvRiQeiAr1fw3M09+0k+M9BZ3x+DzgScYJ/YE4eRo49m9rW9xnVPeEVWf9ORDmj4KSvVkmnV7JKsCpABvMwxjvcfpKkCh90DJdEcsHuSHHdh7gfOJ5QcRzHHvCxl/h+7jc14D/efQKEkdBz5MgGvk1+XNFZtSLfjmrAtE40P2gkdWPSgQlSOkEMIlv+1E+ATyVIDNRD8B3zbh1bSZzZoK4/jeR/3LD9Jc7vjiyIKDFTrMP776AY997Pct5y1TJfpW3zjnfL9c2cvdvWu7WeMf+NgOTC5rByCBh8DJjaJbtDYKEur2YZck7HgTezxjoDDzgBBdnEkFUHkdfc7Sd2U1SV1Lul97zGEC7GazsJ9a3CNxZ2nA8Iu9Pifa8gI+zwk2Yh8cZ/MzOImKPEGdmh4CwGS2YWS4W1pfrRc/2RBBtDH/2zdrbxQKRCQnz8goPbWMSPIgjzBv5fv+LN79AzPGTGy5f41vuh+lD9sm6IosgaTErhl3/xPcmyewgsqbknMm/mWUwK+IY6N95IJ63SWbjIPBboLOG8b8+MGsXiDhh5olj49t4HMTYvsjMmaRBwmJWRoLgvLL9UgmBNkqbz5cD+DKOY2HjIRDt92DfJ7mxMKPGMfbVzExpJ04VF/hm9XWwz0bdj6DczU15Fr6mjvk4nqF3F08PwsYBZliXgQimY1J4vLCmcHaPhLUyxlA2m60go/pKPqcfp/42YuJBeTePhMjqrgQuYaYHnF/I5S6MbDLG0fY2ZFY/AdheIi7jjwVNc1NIK52s4IjXAhN0ChcjncQg592UOMenCReKV3Yv4Z0WAxjByKOicPQ+klu3pMU6YkcHmbwB7Y/GJLEAhIshiMr5o1gAfGamKAJZvpNJpvU+FhLazcRjnmPb0/fhzjF4mY0xaBOZDO/dNN678W5rBndh4pkl74qw438Q+sUC2tcatS8mmXPBsM5/gbZRu7YOXcyJnGHxbpHHYBKQh6POVMl9k/ADSxIFfPGDlsimImI7CTwCfBZE9R6UV0zDZ/RN03QuFGNhX0kimET2hfoPklxIMvQHxtLA/N3O9iC7TLexd5hjNu0PcA5mIz3/ae9cYOSqzjsuwKDau6wJsAZME5UqqqJIlYJE0zZ9iL6rNsB6jYWCAq2apmmC0qYQSNskFPJIk1SEUKklbVOFkjZBRFACgRZCCuUBQoRHqNIQqWhxINjeHc/ugr1r76x3+/0833/96XTv3Hs9987OuB7paPYxc+65557zP9/j+/5fi0OJNYN9KV67DFjxTMzWeidjpD/6dknvWtbmztN+fajoGFl/zCG2WxvfC9wv6xmJq2nAJ3BnHa0FYNnGP1eAgJQTAasbsNq4YeM5Bi5PxsRqu853rF0OMBVV58hrJKAVtZVIfPpakcw2DH+kFGhdYxeltTfshW/jhF7wheib/wssqhTgsEXJpS/XdDhlgoFz6zkGNHchoXGyA1qc5Hba/0wEy6KePrMLXeULO4LWUgCT+PsCal2ThYpdJwGVKKWgAmFXclVmv/ppZPRrY+A+mtxHVHOLGvlRe4jDYtFjUynrhVwdsN7B2HZgUD40/2PnNux/zPui7EYGXiYdXYRjoei1kEJ1n3Z43XLgtIPzBBjw/hiHyaoG77BOtFZYJ6Fvt6mN/yi2Pe+vBSA0DVSRcsIaKLxOkKyYWwNp1jJAfgfztJp0/e3VxpjhHQe44nq2eWAd/EO857UALJNY9lYAWDLeAzK/YIAyESSq/QY419N3h9CF2I5f5frHbhwevhDQA/xoriZeFw38hWxWnOaoJWxwVATEcqQq/hc3CA+x04Yk2I6ThoceJS5bQNe5veAgaKH+zI6e/8aixtVoaG7YgvHNZ4A1dhBEArDEnw/Q+CxqSjwx08VlKtVfcu/he7Gf2BYBSwALKWnVharYsRTQbR4EMthVXOXmOk8BmFLd0pgzvpOGIGRJWAAW6jp/593mZzubym1EE0iby0hAyTqQ21+AkgUErAmXqAArxn4vjpl4AAAA+k7e2uMeYoAmzgPvfz+HR8McCXIAML5O/QlUpzBNuG2QhjMgSn1lYr80NzyTKD1j9uD+AUPmoiH7ImMYVAkL4KG/DRvOHhk+8YVgd5qy/rm/+CoWW8UY9Fl/mY3tLOvzTvpWM9Xy4xHYOoIACxgvUctPJNtM+01y+P24MXi4hxtIuAIKZh+addBiEyFOA2aFbAABXJGWsEO4mN+S5JMhZbW4Jq0xOv7+KNVxTUk79rm9bBRsX6nU1vDmf2uhVllYwi0aDwBdVjqawb4TIt3x2hWVzjpIWGyeBrZFNhUeOza9z9PD0/b3FFC5h6IS7rQZ7AE9NirN+n9mr0tpy13EUAFYEx6HxnpAlUNV9gNugTAZrZGC0tXtADT3zdy+euaWU9R3N4ACIHKg8PMeA2m7zhOsGQ46DPEv+3UA7AEErOPdHrbJ+ngkgNWkqXPnRaA6XM9elLpOPfXUE00qvDWCFuSDAbCO6WRo/lMeLpuaRcLvicrU1YuNFUV1FjvidPskHX9f0SDP+H8Dn9/ldGO8Ug0bGaDFac0GwBEwPbr17IN9nXbJkMI2sOVIFczrB1BvmLeLWK8ErErnEja7zCXMkLBeRk3FViMDMZ43VK4Yi8V72THbeK/a6/Ybm6P5SYtP0hxUETclMMBQb+OfYn3M89xGxz+et0a0nmdHt73Rvr9dgEeslb5XwRg1f7J5bt3ta4twH2LrNB+DBFjxc8RPCawwtBNHVWnsFGAE6DFue2GQl3poP7+E4X4Ve5Ybu10nJyaFxUHDk5e6+nlVBFry3Dwugz72FU7uop6WeEIS6sCGl+qXoxouHgAc7PTG4xgA9LPex1JOHy236zFH26LTYK2SnyNgMY+43jFeN+zAwatIWAQnP4Gtep7a2KXGLC+tORiQXGioRPpMlUGewVZ5M0DAMyMmTWuD906mDUAULzHfQx0mkLXKMcZDHKnYrnUf12Ito87GORkUwBIQ4e0zoNoDeKRqGp+peOyS6N5sILldIRD2M/gTwC1ZGEwyC2POvShIDilYVf2gEfFRwTipedAm0X2ojNFSNqjGKW8/E48m4y+iGnLick1JkIwDqckNvauqggK8pgMeXrXU3d4PgEVQrcIa6M/DUHbLKVA2tzIFZCRT1E2XJgj5GOfvVScy69naNf6QeXdHwj1KDuc+Otmvpi3ej2foHtzHYgBsHawbeDJZU+6EuF/XQy0cEMDSGl5PcGcIXXgQCUhqYJ0sExYR/wcu0bnncOS3w9h8wt0WZAtvxz43tNsiuVLidfeLMNfO8BXp/002GFHiAoESUfBTbfBbRPopoBruA3TY3EQsoyr5Jt+fglXoRwZgVMpHiWaPG6cfAGtnWyWcaHkME8/SQfjybrxXeI9X5tkCJZkLAIsYMUIz6pAkNK8elf6aq7n3EfdVBLA8RGMZwCJuD1te1YAV1imBs1sYp6+j50ht0uE8QICFpDOukIP2+/DW+P+aXur7R0z1vH+Fk374xH9d1XZFcB4SjmKBdp62ZVO9no64ILf8JjFPCtIkGTiCURn1gXivVrZaF1sEpHmXnJblaUzBKoQw8D6jcAF5SvsRsIgit80KyD5CvJQ+V8EBc/U+V9Hs2X2D+68TsCbNHsS9CLAwJej/nVXC8YvkGCGd5rVa1nTIMmjHBs4sn3Epc76bOEb9fwAAa536Ig8wxEfdCYhEVbCWVzCuG0Bug5fer9+0sIqfDxudRX7JEDYJFiAi7dSmsWsiYNRNYrfcDnX4FoDFRiMBNaoFZU45NjteMDZ/qhpmgZbc0YBWNlgphGGbpM8ELKsBrGZFgOXgv4B0ZeEHH+j2ecaxEGuk9B0cJ/Ez9UguY+/kUOF6ZQCLKH8AxA+w2TROrup8WwJ68Wri7GCcqM4yvPc9YMn4PTT0FsVc2fsi3roe8sGvkwHeQike9zFggP/0iguZdx4k6RhsGPKmSE1IH2zdoGWpPB9RLhuAUzbNIaoCpFKwQBV4KODpAFqoj51iuPgf0ez87XYANt0wfSZhvYiK7ff/QzZOdyd9wl5x+ti5hIXAwjB7+thb089UbcPCeywbFqp7BKxOc0u4AalP8wprGB27PtpQ62A1wfhOAjjPMK7dPgcsvnusSzfvldGboE7ipGqxXeV4KIl6l5Rn4PXo6Ojo8MqnWHwsbj+J7mXie+HdiIBEvh2noQPWK7ssJaSsBBM/awv7in15wZ/5TdLZfp+bCXL14mbpR8BqenyUB7/eSxpPncZfgKqWdeH9kubD/Xi4ybfyASuwuRrVkXITsS/hXInXqMpG24nGp98BK/7PjN3/KKAgb7CXJe8jcBJdr+RqglVH1o+YdOwvKEVYDCwKuIl6OdkCGWKD8PK5IXyxkdixygIgi5kUDO4rqoaN8mDVksoIy4TGhHTaj4DVdJVQIQdN45tKbZb99JL3kRbptaVGEYwK5cy8AzBMC0UAS+uqYRIgByFrG88w+ZVK8Uk/3y1l83IOF1kfA9YJntx8hkkzjzlILFFxp4dglRr+N5G7qLHgPTzEDWRGWTfOtgiAk8jMohExW9WNfmP0O+kSuII90ZqFednh2kboP0TBvyS6knzAyo7ZgsQtBcV+BSyScq0vZ14YvyICf/Ugky1ZRB73SD5YFBxISsZe5mEZCxw+RQBL14/hBqiFCoaGXcP6/TxhO1nPRuPttj7BIAEWLAvmofuBg8ROWBb0/14DFi8bwz/JjkXuoi+K886C9sRVsR3kEa7VrDcs4RVwcYP5tVEKO1wwIBYHCWlWUfAFAYvWdLsVPGAwU1Zm+6g/cFRxWAtNM1hHEK/bHqkDqewhEyl5YIpl3Db+h2SLI0SDZwExYQSswjFSRoWElCZJi34xjjftIIJFFA9ikXtbDoyvRwpgCSQg5CNYNNivfjwFrLWyY5mEddvBP0Kvgcjsp9d/k7WvBa7Ym1pbOGXhRGIhsTBNTb2hG7bJIAVBQfxF+nSJaamgdNXyRf0qYRexz34HLMjx3KM20zSK4rqCf1N65CLPBKmJfL7m5vPeQGYFoQB271uwo2IUJ4+14bmh3IPbnqYJLgaEUxtWGbsmQcI4l/CgKlCZnzmYCOWB5hsDP2wTHFB8t1NcWgSvwQWsYHDfMPyeQ1HmI98MwaLHr0WpMjyUjMfv5WH+Jt6nlnuUGiSLkv5ggHErKRe9ag0ohA0wGYsbi/++KqZJAhuhbXHVcDEPtBSTBYdWjLwHQAYBsAK9zK5p8+jV5RWT6pT+ncBfOL08v+5yjObQxUBlA20P4GA//8DZPbG1rZAI0vhZhwWSNnZV64M4rBwvYT5ozUKxzZqza3MNrq1wGhpAhnEeeyrEfuQuNo1eG34wvI4RnOI8iCZnQAFLBvcPCSBM2vpaAKp1a3EvNobzFY8FY8TB/3K6WeOUQVQOlLG897BxTTf88zN5jNVS445/ipQJAVaOLWvRVchARayTdKAAawcEfnUAVgpUEA7C5e7Mo88CMEgwgI/WFI1nzdj4u/LuuHckKLzD1p6xdhvSENK/IutxxPC9Ri5g5c+3Ql/sugDpUwAUkhzgJSpsNA4avzM+A7kmwaeAHWOjYAbB1TkA3v+AFSQayxe8luhytxvdVL+HMDfE4pdtHAtuw9qrzXIRQOUbdM652V9o0/nSxsI7Lf49/i3vM6GfjL7xbvnPs3b9z3QTnBnjsogzwzvkp+diR7BKCP+YC0BAG2SwAGt8x3QErBrACgZVG/OnuSYSi6SkQKU9D3DaAQTl8yMknGOrbKt/4x/FuWLP5yL4unCSqGJQfEGhjOSdG4dVok6BXsT7wXtv1/8wPGku/TVFSCjp64CDmEAWhgqAmftAio2HI+rxgALWJ0L+4BfXGLDwFP6ic8QDoAdWAIvN4mycz8K5TYgBhHoUbehlg3aZRsQweXrxJg5XusILimfJbVitEjYseLqV1nGbAIFNMhiAdXEtgMWGj0ACxzybGInJo+tfRf02YPk7Cyx9P/xirClsQlTBKTM/4keDj60KwIp9Z0nMUAxBaePX/Jy93+2mihmekexetAV/xyEAnxuVh+I8DSBgfUwSFhztawxY3MsvwW7qgDWvNIttqIMq4qmJHuRXvAdsIGluYYmwhkVxdVFQI8Yz/X8ELO5b44I1Vtz8nl+5w+btxhkCgGFTyHuFsvBpqIOcPRw6+YBVTWl63rM+gw0UKQqGVWxxXs5tzmmYVDBDifPX6lkgaQ0SYBlI/Vkwut/Cd9bShgVTA5KV+LH8lNx6HhuZhcdJAk1LWiZ9bVq6gMrToLB5YGVANclP0ckm6sO2QTKrKtCwkQYasLqnUfmUPG2YE2wj3429KatwqdZRjN1KW3Y8XX2Ala4bgJJx5nn/kMKoCkUUPTUJ5twONxt43SN7bl8DVgSI4eH3BS6qf4cJdC29hAaa79R47L1d6wDWAQyefkK8pDisnkbqhk0RF3U3hnY8VWx+v6+FRBUsDVqohtbfg9hYtFn6FbDg41fVnCoAK0b2s1EpCLHXWWnJkoh9My/dr536Aau0BJZR3Rm7W9PCcTgY3Q7s0tbYxwaIwG9dYEkQrcy3qei8lnFYdh9XJawR7Tp2sIz6xn5tymlTBBqDqgoSyXwgMJAGLvbSTfFbSKEYmOOG6mcJqyrAivUMKWUWSB7v47pp3UO91hKwBDJVhxvIcB/zMoMnc2rmEP/YDHtJ4xyASHfy936OIqh8FxWM/L21jHSn5L0i3U09bGea4JqFbMyZGiDqf1ftgFVD4mgcL6EaAE2Mbs8Gq7HI1tDRa0iVa96RMqIUeiQDlqSMwFuGipwcbgKFeg4ggkp5fhj28wGrd0nI9Mm8x6rSpP0AWgvt/XRjtP/1O2AhUSFZOUgsUB0nBZFeUswQLBqKrf7xysYhSXhR7trIRd0DwOL6wZt3Gbzq00YQR55XmRw4ncZEUFsfzy9EquQO/O4AhXNcZbM6BNYGl9qeo8y7Ns2RDFhxDJQ/mzvE6nEP/6trM8Zn3rTrYi9zep/MSHe+IwDF1EEhCOib8XrXClwBtHA8zB+ao+9Qo0Dz3+8qIe/wqIvt037+fGJb6sUrFm5tOGBN4zFc+QSRxIr4pSgEVLI9p5chqx5WyTMuYQwLDYtI1ilbzis4/iVAJYvjSn9TgU5ivsz9/iQno7MyZEpkCnUgHod0n3gP3QJWcwAAy/r7OpIDa8UA9qPxM3VJVxxEhJUoHqpTLmEskoG9ke/wTKm/WOdY4/wT00Ucl5MJNGbsd421z/mwZDf6oAzdkOgNDQ2dviZ8WMMjfxQ8lk+bunrqymmDqI9hWXE0ELT1hMAvSkZGBgcg+IN+aLsWJf8vXO5rjHJfipxezGNh8BP7JmKEkBiKcLrH2oaUjYrjOJIlrGU7xDjMVK+S5OQ6QUDjJSYP3njFPxFTtz0HsHjxPFWKH8kwBcK6xos0R3iQ14XcT70AXbePASu1Y+1wT+Fe+N175ikMvO54KRP7lU+il2Ynahc1CoMhBuseqIXp6X3HvJ+iBOylgJbLe3TK1jfh5ZwvUDWHheQq44siCuQkJMnW1cOOoKXvkw8HYV4VVXOsz74GLBKWUXFUSg07Xp002ppPUqM0/1w7pZfJViPH/5pwFg+IvoP+6oyNEn8XjKNNHX6sGWptRhtr3wJWAIvhE78evHM3x8/0JCVnaOhX5a2k7P5K5Zy0PLsq5JIiQ+R5r4pQEFmMhwWwQuUiNqzIZojMqCRtLxZQBcnMlxQ2ZeWjdB3xJrmUmakaNhLKZIBWlMl4jrpVCalO3I+ARTgH1Z1Vt5EKMTF+qQ6w4t2u9bWl9jzvzaOXielYAMW0G7+hkXk1hOvUCViYUyjMAWA1WUfwug0GYOkzJB3/XigCsZs+a1cLAxgStBpShB6wP7G/0lpzY29B557zar7k8tV5gnLdWASV6/pmeJzNUaYcORHIXi49VxWkcZ1Y/BPyQBWwwAvlaun+TMAKgOYesw9GEC17/xiH2VwO2E+xIfsNsKCFobQZY0RyAezrUgk1VtJ67B7mHHTm8gArzv+UsUVQn2De17M97z+pa7xhLKoe/nBbJRxfaJiEOAgqYVT7sBfZdx+lj8DccFyNquGxtMDQsKACrkkRjCQ3zEjO2hHMXnhz04Vvq62Qqm8wagmS2Q/g0HBhx4WVpwpCY8JYAbxmVAWzVTneJwj4i/emdza4AUhzX75qSFvguhju4VAqY/eLFMt4suiv1QbS72FT61Oj++2sD1env1AHAHAfOkQ4PHgOnhg/Awh08hLGsfAM7Dv/pgIUJDXn17vsetzil3vJVcIGrA4a6wCVqhcX1ZIXNF2GKytcq2rwVeXnUbNdPaV8RkrXB6nO11gQkzFwMtnKkSK7Hqmj6tpqBBmqWjNqhgommKT0ZJFFJbDCGyRa5RKqICffe1JwSSv4OmCp346gteSVfrSRUA/KFICdtqRZJAiXsCYnR88/OzyXY/oFsAyUP8mzYm4ohw+wVik9xE1NiX2oaFCR7X7+ytoU9DSAGBJ4kUKqOAZUxs0l8M/y96pBK8bjUd+T67EmKNmGEb7U/Af66bUBrBjiMHKrq4W0HdQHDJ+p5JCKaiaUNgJIClCEUIbjMhclUcWI/CFi9yv8X5uiG/WQfugj6vpcgwfsIDAeN3Oxgp7ZNqdUFWxJFUyAL90wGE6J4mbRRS74PDWzgRpdIgqee4kHxYKDJBWLY0n5fgscRQJnjTD/EQAqjGW6lIMCKQUvGyozzwEJC6N7XsVtjRebIvxZ4rRCRYOzKz7vKkwbsmHCoAod0bwKgBjQlpFCI1DFA7XHgBUlnjdbH/8TQOu7Fubwk6G/dV1KhSeExOvPjEia433D8NXxsx1jmewh/y0bkIdsi5OJ/zJubVHDshDKRqHHxQENsy28u2R3AkiK8F/F05PseQyxrr62Gp1BRdxWE3gTOy1W/Z1EZ2x6LLwioQ6wkwJcU8F7lrdIuU9tVjbW/kPqy/18X9Ko8tjSXMte5RJyvaCmPcqceBbBzO5NW38jzF2pdSFGhgh2Uyb9ElqDNEX8lSiQmHsHsKdfseBgjSeLKkZzSzyfAW1zzrncUd9Jo4lj1vfLgni83z2j206HvtmA3A39Y9vL8KilQJVer8eAdUywKb0daQc1TaBF6EMCbmX7Pl7987OpgTfQd0i8/ufw/+NyNxC8RVAkA1ozDloYOwnuTL05q20mfs9KGMWQyqIDrKY9ux16ZE6pQqqgSNcs1mVBqmAnu1X0Chp/Uzy5CkR2f3g+GPNz2B4WxHixe/MFry8bQ4Y3iWuJ/RVa4YIPv1YJK5V4kXZYE9ZcMh5/mVp/cUyrMTTECjr6f7wGFC7w+DPPDlYPwY2mazbMztnyfFdU6KxxpmNWIRIR8gWiymuXreJ5/HyRcdPicwsVph9nPgSMcIXFcRRZBwgDZHs02GujY3dCXx4/Uzdg5bAmzEf10JgdLouf8Z/XcR1vx6pJGkslspM2bDjb+voGfYZg1TtOPvnkkcJhFAIFUmWaXsVGNi02AGkSSCllFzxGaTL7G7bg6EtsjgRuoh5GNaqAKvg5hR8EBtGl2EJ5eafOGbsl3mMRWwrjohCpVMP0GvG6npPY4rN4PYuqShGE7fuPOWEgjUPiLvLTmG/sNkgUABPgw3wUoEiuhV6GWodkE4j3HomIpHBoksv2S9Umit5CHkmfKkfP3/UZKlcTmjDvgIMdi6R9xkQQKbZQHXistQxP9LsVHE0fNOyO2LmY+5LDVgT+z1KNh5Ac2WHpl4Ou4FqLkjiazXsBO9YAjf02oyrskqoLABaxSxUAVvwOTA4XGqjsUtoOBnlr95gEdgGxWyX6xAv5Jkts/qSpfi+j/oU+b4pgVephaLItAO/POdVYTHJpE3AJmE2brQWvCMZXAG7CjOBIZ2wucgFnNm35NYyn1sfdePJYcOLMZpFjoOQaeWAVY32oAoOKxoOF0sNBqcV72ki3cWCbwE5U1CAeQQugZUG6oXmuSb8Z15PqyNhwZ0ejbJF7I7QEsGGxAuqqp4hXk4BSVEUcIZy+LOQAiHhdo0r4vHupfjhZA4Ef4ADnE3MrGyTrgmo9lM0CZGEZxcWPFAPLA+tiZuPFr5sxIJo0iYSwCA4rG+P39ziPP/Nm/d5AkGp8Bv4cvupgttTOZBjfDnAR8GzXe2DSGHLjfKSAobWDF5Z1HFLRWkSmY9inaAbzR8kvxq31fPAwOfmC1zPnxMw1rDAFBxnrYt4rUnu9gFfMcfSueO0yB0E4HOcBV54hRVBif3mARS3BUDH5+a4AK/kedQtNevsPefEU2Gmg85+WSnON/f+3DIx+YmRk5GTzNKwHyODUWr9+/ZnG/PDTVqrr3TamL1t7URKVYr2s3yu7IgzkwUeRlwBJHq6nOwh0AI1JyoMhHZC/xanlxP4TAB0Lecm/wzt0snBn77Jg0QiQRR4q/OGctKg7c4GqNm2AIv8XrzjAGlXBshIFwCpeb4Fu1rW5rvOp76HQQTwdi6hc8JHZpv8XwJHr0FfkSSfXkuuw+SIQrTgz2qD3yvLmS5cJF4ErPQBal68kWPe08Q9wLR1CbFoH2RZ/J0kcm5fWBV4zaiZi+wLkWBMAFXOKGiT7X3xWvIeiuE8wBy6Jtdvm3+F6y0hcebFZvLB/uddxJ/PIGGiMAZAA5Bk3MWcaN7mmJNTb2HdhYlBxDa7veauNppH5kfUQr1k2yRvTiEvYS7LtRgBkznMAiyjxXwEMThreCBDssNqCZ0Xg6Ra0kIAMXK6wvr8P2KipUARgRGiCvT9kQPYg+Yj28/esTQmkQlDonAHeVwGzSqLpI2ixECg42TB1h8rCiL6qiJLd3gFIyf7zXYjOGsYCGh8mYFX0gSKteZGM/yJNhPeM9hyNAhdNsU+UjhdS5LoCSpEGxrYThsE1ctqzACvME9xrUdWAFlVoijQ02yWpHsM25pvmFTYQxuS0ND/vsybZwgBqn5tkwxkAniPJspYiFKau2lg/QbUbDiPsigFkQ4vVkS6WOWAnJeWQbJDQ45qIcxHAfLN9/kokTHjjORh5N6nnesJhNLa80IOgOl9tfTyCtM94ssatsWtNA1gkONt9P8AzIkg1a37KzOfMGVvPYZ+IOQWnAyqvxl+QVvinoIihgrO9323l5zdXxLZwbAQuk9x+DMoXa/fbdWYFQid1aMEG9ryN82+oikO/lab+rEZXTNqOc07ZAx+72R7aNxGr2cwuXT3SbFdHuRH7BJ4k4lG6KYlEoOWkeWKoDcfiRGxX20lLfkcdoUny6IZyWTFfXD9eS+9pY3xcmw0GoHRT1YXfie/CKA1VCXYivKz/R8UL1CqoVHityBGtK2AxHSf3zGFERDll/WF2QDqx96cAcFRaHDeEycDGSS0BJGaeS3r/ncBc4IvZgWsCdGXmNz0gUfeQhL0yz3WkAgH0Hv/1rIPio5g1sE3a2P/CJMGLp1APLfwlZ6+UflH1mqR65kf3VjKU6AQCMGFZMPXslIqDPI9JQWV0dHTYJKS3ou5RTn7j8Im3w2NlPz9tYPaMgdMT9vO99v4lOOPxOsK7lUpwtIqpYrNJ2tDz2VRskJdts/AgtaH6oegk1+z2/nv5/aKl3um3PBFi/YVUJfGx4QAW1sXMGy5+3bKtk+wxak3kg3kVYEvL+h/OlpcYd1jPhJfkV75eWxLLzCDjip9/TgzWOuxWgCUpPl49en0HqW1d5eNLT6iyCyd+r+vAU1zPBRufvbXSRV7u2oy3m7nWNaO7Xa3TAs8ppFBbqfqy19I4cTqUXQOak27uU9enz8Ndi1WBaIwzjOPrQgqiVTa2HMApG5V/XE1Alb+hHkg2U/q3aDs4+jqyX9pwRdZFeZCov9hEzrh7MvYBradwTBpvFdS89G9HseDo6+jr6OvIf/0vj9NbYMKQ+00AAAAASUVORK5CYII=);\n        }\n        .companies ul li.modstore a {\n            background-image: url(data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABQAAD/4QMxaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzA2NyA3OS4xNTc3NDcsIDIwMTUvMDMvMzAtMjM6NDA6NDIgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE1IChNYWNpbnRvc2gpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkM1OTk4RURBQjNCNTExRTVBNzdGRjlFOTdFNjM1MzEwIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkM1OTk4RURCQjNCNTExRTVBNzdGRjlFOTdFNjM1MzEwIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6RjlCOUZEN0ZCM0IwMTFFNUE3N0ZGOUU5N0U2MzUzMTAiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6RjlCOUZEODBCM0IwMTFFNUE3N0ZGOUU5N0U2MzUzMTAiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7/7gAOQWRvYmUAZMAAAAAB/9sAhAACAgICAgICAgICAwICAgMEAwICAwQFBAQEBAQFBgUFBQUFBQYGBwcIBwcGCQkKCgkJDAwMDAwMDAwMDAwMDAwMAQMDAwUEBQkGBgkNCwkLDQ8ODg4ODw8MDAwMDA8PDAwMDAwMDwwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCABLANwDAREAAhEBAxEB/8QAuwABAAMAAwEBAAAAAAAAAAAAAAcICQQFBgoDAQEBAQEBAAMBAAAAAAAAAAAAAgEDBAUGBwgQAAEDAwQABAIEBgwJDQAAAAIBAwQABQYREgcIITETCUEUUWEiFYEjtRZ2ODJCUmJyonOzlNRWGHGRobEzg3U2F6MkNGS0JTXVJsY3SBkRAAICAQIFAgEJBQkAAAAAAAABEQIDMRIhQRMEBSIUUWGxMkKi0lQGF3GBwSMV8JHhUlPDRBZG/9oADAMBAAIRAxEAPwDfygFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAV35F7Yde+J8qcwjkDkqHYMpZbZck2n5SdKJgZAI416xxYzwNKQEhIhki7VRfJUrVVsl2SJ4tF2tl/tVsvtlnsXWzXmKzOtNzimjjEiNIBHGXmjHVCEwJCRU80WsKK+5v2964ccZbLwXMuUoFoymAYNXC2jFnShjuGKEgPPxo7rLZIhJqhGip8dK1VbJdkixkeQxLjsSorwSI0lsXY77aoQG2aIQkJJ4KiouqLWFFa8v7k9YsGub1nyLmGyhcoznoyY1uGTdfScTwUHCt7MgRUV8FRV8PjVbWS7Ik/jnmTizlyLIl8bZ3aMvCGiLNjwX0WSwhfsSejHtebRfgpAiL8Kxpo1NM4PK/OfFHB8C1XLlPMY+Jxb466zaEdZkyXZBsoKu+mzEaecVAQx3Lt0TVNV8Uok2G0tSE2O/vUWS62y3zDHE3V0EnbRemgT+EbkARH8K1uxmb0WZwzO8M5FsjWR4JlFsy2xvGrY3O1yW5LQuCiKTZqCrsMdU1EtCT4pUtQanJ39xuNvtECXdLtPj2u2W9on59xlugwww0Cak4664oiAiniqquiUNKuTO8vVCDdfuZ7me0nL3bPWjxp8iLrrp/0xmMcfTw8/U0qtrJ3osdj+XYtlePx8rxnIrdf8altE/Hv0CS3IiE2Gu9fVbJR+zoqEir4KioulSVJV5/v31GjPOsOcxRiNklAyatN5dBVT9y43BIST60VUqtjJ3o/IfcC6hmYtpzA0hEqIilZb4I+P0ktvRE/CtNjG9FqYuVY1NxmLmke+wSxKbbm7vGyM3wbhlBdaR4JKvGoiLatqhblVE0qSit1w7y9ULbcvuqRzPaXJW5Q9WLGny42qf8AWo8ZxjT69+lVtZO9FhsOzjDuQrIzkmDZPbcssT5k23dLXJbkso4Gm5sibVdpjqmoloqfFKmDU5I75X7HcK8HzLXbuUc7jYtcL0yUm2wCjTJjzjIkoK4rcNh8hHciohEiIqounktak2HZIjG298+pN1ltwovMkFp51dBOZbrrDZT+E9JhtNj+Eq3azN6LV2i8Wm/2yFerFdIl6s9yaR+3XWC8EiM+0XkbTrSkBiv0otSUQhyf2m4D4Zv7WLck8iRscyB6MEwbUkOfNdFl1SQDc+SjPoG7auiEqL8a1VbJdkiNV9wPqEOmvMDXj9Fkvi/5rfW7GN6LGcbco4Dy9jQZfxxksfKcdOQ5EW4Rwda2SGkEjacafBtwCRDFdCFF0VF8lrGoNTk6jJebuLcRu8mxZBlrMK7Q9qSoYR5UhW1IUJEImGXBRdFRdNda6VwXspSPrfkPzh4nsMzw586rdaqLWj9u1NHQ/wB5ThP+24f0C4f1aq9rk+HzHh/UHwf4j7GT7o/vKcJ/23D+gXD+rU9rk+HzD9QfB/iPsZPuj+8pwn/bcP6BcP6tT2uT4fMP1B8H+I+xk+6SJ+fuH/mj+fn39H/NH0vW++9D9Pb6vo6bdu/d6n2Nu3Xd4aa1z6dt22OJ89/W+y9n73qLoRO/jGu34TO7hETPA+cH3D/1vuV/rCwfkK31dND231LZdNe59s426zcn49mMpp+9cPRCncdQX3PxlyaurxNx4IjrvJGJzibyTXYy4mibW1qbVll1vCMi73errkl5u2Q32c7c73fZj9wu9yfXV2RKkuE686a/EjMlVa6HI3J76c63zjbrvxJxzidxctV55SsscbzcY5kD7Vngw46PsgYqigslx4AVdfEBcH9tXOilna7hGbnX7pXzH2Mx+55ZiP3RYsZgPuQ495v0h6O3MlNChG1GBhh9wkHcKEaiga6oiqQkiW7JHOtGyP8Aby71F5sBHUPGOQcDmNm42DiuRZkZxBcQVJtUR6NKaVNU1TUV0XaaeDg0ZxqzQ33PsttufccdWs4s6/8AdeXQrvd4AqSEQtTYtqeECVP2w7tpfWlRTmdMjlIqBwl0i5X5/wCM7lyVgN2x5Y9vuUm1t49cZL8eZIeitNOl6ZJHNhNyPIg73BTXzVPOqdkiFRtHX9UeYsr62c/2hm5nLtVmm3ccY5Pxh9VAfSJ9YzpPNLqiPQnVVwV8C1Eg1QTNF2ylCrhl0fdd5VyVvJcE4agz3YeLHZhye+w2lURnSXpT8aML/wASFhIxEI66bj3KiqIqMY1zLyPkVn449vXmzlDiKDyvjtwx8RvcY5uN4nIlGE2bHAlFF9VG1YaJxRXYJuJ8N6hVO6TJVG1J6b28c0ziw82XTg90bgxjHJttu9tyuyOtHrbZsSE8YTiZNEVpxtW1ZPXbqhIhaqIaLrhIo+MHgeyfR/OetOHW/N8jzGw5FarpfGrHDjW0ZQSfUeYkSBdMXmhBBQY6oqIarqqedK2ky1IPP9aOn2a9nrdlVzxTKLHjzOJSosWc3dvmd7iywcMSbRhpxNERtddVSttaBWsk398eQL5hlv4t6kWrIXJePcQ4lZGc3eYFWAul4SK36KuBqS+k0ygONipabnF3aqAEmVXM275Hg+PPbv7CckccQuR7UzYbVFvUNu4Y3j10muMXCfFdTe06AiwbLaOgqEHqujqioq6IutHdIKjaPKdQeZcp678/2OHcHZdtsF7uzeMck41IImwEHX/lldeaJFQXYTq70XTdoht6ohlrtlKMq4ZZL3ZP/mfjj9Ch/KMupx6FZNSvWNdHeVsx6/tdgsautiuVkOBcLoeLes+3c0iWx+QxJIUJn0SNPlyNA9TVR8E1LQV3cpgnY4ksx7V3LmSQeRMj4alznZeIX20Sb3aYDhKQw7lDcaRwmUVdAF9oy9RE8yAF+nXLrmVjfIhz3Mv1prz+j1n/AJkq2mhmTU7/AI79s/lXkjA8Pz+1Z/icK25laIl4gw5Sz/XaamNC6IObIxDuFC0XRVTXyWjukFjbNSOv3E196c9csttd7ucTMb3EuE/Il+7WnUjC5IZjRmmtXNpkAqyhmW0dEVfDw1XKrqXSPj/NeQfjOxy9yq7nSraXy8p+SdfgpKT2R08jzi0PX0iuTl9vkc7wTirrIWTJFXtyjov29y66V8vb01cckfyx2dn3nf0eb1O+Rbp+tust398lvsrxzj4slgY/drRhMa4fn5arZi9oxU1Wc5bFm+nMbvTQEoiqsqKfAt+qJ4V4qWtEqdHM/wAD9T8n2Hjn3VcGWnbq3ucdMdcL9bx74us6ThemPg90o/XJeO8Uvl2xe2XCy4pCS550totcvDkebbW2RBcclxLm4i+mElU2CiJoeuu3wRaVyWSbTenP+BXkPA9p3ObDjyY8Fd3c7KvBKXTqm70yv6KyfRS+tMxwkiK8nj+d8e8m3kcKsuH3Hje4WsLG7Z2CjG9GnynIpR5epKjxggIW9U3a6+SeFdqzS1VLcyfV+7fb+T8d3eb2+PDbtrY9mxbW63s6Ot+Pqaidz4z8hMf/ANJv9X/7hrj/AMj+3wPtf/hv3f75j37iH633K38nYPyFb681ND9evqU/vthvOMXSTZMgtr9ou0NGykwJIqDgC82LzRKi/A2zEhXyVFRU8Kok49xtlwtMgYlzhuwJRsMSRjvCoH6MpoH2D2r4ohtmJj9KKi0Bod7kMp88y4GhEZfKx+KLO8y2q/ZQ3pEoTVE+lUbFF/wVFC78jXToxBi2/qhw0zEAQbetUmS5t+LsifJedVfrUzWotqdaaGWnuvwIrHOmCz2gQJU/CGBlqn7b0bjNQCX69C01+qrx6HPJqR32TkOyunvR915VUxhZWyir+4Zlxmw/iilatWZbRGj/ALWf6tVz/Ta6f9kg1F9S8ehkf3jt0Sz9sOZo9uBGGju8aaSB4fj5kGNKeLw+JOuktdK6HO+prL3Y6jZD2PxPCuRcDdZc5LxiyNxZFlluIyF2guD8wjLbx6C2826ZqG9UEt5IRDolc62g6XrJlpxR2U7GdPshfwqXGmR7TbnzW7cW5Sw6McFcPU3IyFtcYU1RVE2i2Eq7lE6t1TOas6m4/WbtVxP2SjXCRi8ZMaz+DHF7JcQnI388LKEgeuy+CIklhCVB3Jooqo7wDcOvO1WjtWyZXX3XE16+4av0Z9B/JlyrcepOTQjn2jv91Oa/9rWb+YlVuQzEZ0d3pL0rtZzQ6+qqY3lpkVX9wzDjtB/FFKuuhF9T6f8AHYUa24/YrdCAWocC3xY0RsPARaaaEARPqRESuB6D5gO6kViz9r+ZUtojHQb+3NRW0RNH5EZiS6fh8VdMlX66710PPfUs77qjpyOV+KpLvg5IwNlxxP3xTpRL/lWppoVk1Kv2XuNzVjnCI8B2C4Wy0YWkKZbinR4elzKLcH3X5TXzJOEKeorxgqiCEgr4Ki+NVtUyTucQaU+2r1cvOFg92Ay6VDVzK7KsHBLTDktS9sKU426/LkOMqYC4XpC2LaFuFPURxBLREi9uReOvMpl7maadpbx9eO2df+SKqpoTk1IvxfnXuRZ8bsNoxLKs8Yxe1wI8XHmIUJ5yMEJltAYBk0jkigIIiD4r4VsIxOxv31Wume5v1wwKfzNHly8wvkG4M5E1d4qRpEiMs2SzHWQxsD/SRUbXxFNyLuXzrk+D4F3x1y43S6mtk009Gnwaf7UVOyPr1yjiWbyHsPx1+92q13AJuOXQDZMSbA0dZRwXDFdweAkijoqoungqV8nXuKWr6mfzr3/5F8r2Hft9pid6VsrUtwfBOaym9Vo5XFr4HCLi/n0sy/PtcJk/nCl2S9etpGRr5tHvXRfT9TTTenlW9XFt2zwOL/Ln5hfe+99u+rv6k+mN07tJ0nkds1hnZBhm+stYjKD7+vbWRuuIMXfFujLqvDKhr6n4g1VdqqPmP2fKp34uHHRR+49VfE/matciWB/zMiy/V9ORPdvpx9D5OPq8NDk5ZivZDMrcVqueD/JwZEr5+5s22LBhfPTNFT5iUrJCrp+K+K+GvjprWUviq5TOnk/G/mbyGPpZO3ire6ypWlN9/wDNfa/Uywf/AA3zL+6x/wAP/uj/ANXfL+p90eq3u/8AF/ndm/ds3el46a+fh515+rXrbuX+B96/oHe/9T9js/nx9GV/q9SJmJ2/LrwMQ/cQ/W+5W/k7B+QrfXKmh+i31NPb10P445/i8H8o3m+z7BJDC8ZYzS0QmgMb01EgsI2pPKQmy4rSI0RohagIaIKjqsboOmxPiZQd6vDtfzA2iILbE63sMNiiCINM2uG22AomiIgiKIifQldK6HO+pa/3KsGlDivW3ktiORwX8Waxm5ykRdrTrTDUyGCr5auC5IVP4C1NGVdaEjdHe8vEmAcOW/i3l2+O4ncMIdmJYLssOVMYnQJDxyxBVitvEDrRumG0hQVBA0JS3ImWq5NpdJcSgvc3n22diuapuYY7HkMYpZbdHsGLLKH03n4sZx14pBt6rs9V59whTz2bd2haol1UIizllmO9WCzONOu3THCLkCs3SxWa7hd2CTRW5rzNtflN6fvHXCH8FTVy2VdQkSb0U7XcF8Fde7zY+RMwK3ZKGT3G5R8bjQZcqVIYdjRAaVtW2lZ1MmyRN7gomn2lRKy1W2bSySM5bzcL52c7GypsOA63c+XMwEIVuFVcKLGmSEbaAjRPFI8fTcWiJoKl4JV6I56s1Y7hd3+ZuvHMzPHOHYrjrOK2602+4QJN3jSZDtyZfFUMhNuQygNg42bKbU11Al3fBIrVNHS12md1m/bXo92C4ebc5oAm8gC3avYuFulOXu3XA2tDS1Tm2fTXRxV2GrggSInrCiajWKrT4Gu1WuJmp0Keu7XbPiRLITom9LuDc4Q10KGtulLIRxE8FFARV8fiiL5oldLaHOmpqP7rf6vmHfp9B/Jlyrnj1OmTQjj2jv8AdTmv/a1m/mJVbkMxFLPccwWfiHaHK7u8woWvP4Nvv1nf8xJPlwhyB18tyPxjVU80RRX4pVUfAm64mk/EnuPcArxHj8nkC/zrFneP2iNDv2Mhb5Ul2bLjNI0TsN1ptWFF5R3ojjg7NdC8tyw6OS1dQY1PS772e7KDLbtxDc+W8zbUbc1q4kWLKkIm0iRPEI0dPtnp+xBSWumiOWrLpe7GIjzHxqIogiOFiginkiJcJXhU49C8mpHeQdU7JfOjnHnYnC4DsfMrIFxd5EjNm66FxtwXaVEGULRKaNuRRAFLYgirW8i8RTXd3GDNvpkk/wBrjnSRjmfXrhC+3LTHs5ZcuWJMPH9li9RB3OtNa6IPzUYSUtfMmgQU1JdcuuZuN8iJvc0/Wlu36O2f+aKtpoZk1NNOvfbzrhifBXEOM5Ly9aLff7DiNpgXe3ujKJyPIjxW2zZLRlU1bVNvgunh4eFQ6uTpWyguZx3ylx7yzZpGQccZZAy6zxJJQ5cyCaqjUgQFxW3BNBIS2mK+KeS1LUFJye+rDRQCgFAKAyL7V+3vyhzjzllPKOI5li1vs+UNW1HIF4cmsyY5woLEIkRI8WQBoXob0XcPnpp4ar0rdJHK1G2am4Rj7mJYXiOKvSRmu4zZYFqdmAKgLpQozbCuIKqqohKGumtc2dUZP9k/bp5T5i5wzTkrF81xWBYMukxZKRbo5ObmR1bisx3B2MRHmz8W1UV3pqnnpXRXhHK1G2aVZpwvh/JPEo8Q55GK8WE7ZDguymV9GQ0/CABalxjVC9NwCDcPmnmJIQqQrEwzo1KgyByn2mOS2Lm+mE8n4zdbMrirFcvbcyBKFtV8BMIzMwCVE8NUJNfPRPKunUOTxssN1u9tCz8Z5bas95ayiHnN1sDwS7Fi9uYcC2NS2lQmpEh1/a4/6ZIhCHpgO5EUtyfZqXeSq441Jk7ydU807PWzjtnCsisljm4VIuZymb2Ultp8LgEZEUHIzL5IoLH8lDx3eaaeOVtBt6yZ4te0/wA9qYI9neANtqv4wwl3QyRPqFbaOv8AjSr6iI6bNA+p3Q7E+ul2XOsgviZ1ySrDke33IY/y8G1tvCoPfJtkRmTjgKoE6SouxVERFCLdNrSXWkEtdnOqWBdnMfgRMgkPY7llgRz82czhti49HF3RXGH2SUUfZJUQtikKoviBjqW7K2g21ZMupXtMcthOVuFydiEi2b9ElvhPZf2a+foCw6Ov1ep+Gr6iOfTZoh1Q6VYZ1mSdkD11LNeRbtH+VlZO6wkdmJGJUI48Jjc4oIaom8yJSLRNNiaisWtJdaQd73Q68ZN2U4rtOE4lfLZYrzaMjjXwH7v6yRnW2YsqMTSmw26YL/zhCRdhfsdPjqirhm3rKPKdH+reYdY8czuBmeQ2e+XLL7hDkMt2VZDjDDUNpwE3OyWmCIjV1fBA0TTzXXwWtJlKwSp2W6x4N2ZxGLYMnddst+sjjj+KZfEbFyTBcdREcAgJRR1l3aPqN7h12iqEJIi1lbQbasmUM32muZm55N23kfC5dsQ1QJkkrjHfUPgqsBEeFF+r1fw106iOfTZfnqd0TxPrjc3M3vd8TOeSXY7kWHdUY+XhWxl5NrqQ2iIzVxwfsk6S67VUREUI90WtJdaQeM7u9LOQey2a4hl2EZRj1oCxWRbROgXw5bKqqSXXxdbcjR5O7VHVRUUU008118NraDL0ktN194Vd4r6+4twtmUmBlJW633KDkRRwP5KU3c5cmQ6yIuoJEGyR6aqqJu010TXSpblyVVQoMwD9rrmPFOR4uScZcqY3brRYry3c8UvNwKYF2hpHfR6MRstRHGHHGtqa/jBE1TyFF0TpvRz6bJf7cdCOV+fOVW+Q8WzLFY7Uix2+33KPeCmw3PmoYEDhtjGiyx2HqhIikip5eOmq5W8Iq1G2Ve//ACg7A/2349/p11/8qreoiemzTHpJ1oyzrNgmV49mV9tN7u+S3tLkK2Un3IzTLcdtkRVyQywakqiSr9jRE08VqLWkulYLp1JYoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAf/Z);\n        }\n        .companies ul li.modxextras a {\n            background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyMjkuNDkgNjEuNTQiPjxkZWZzPjxzdHlsZT4uY2xzLTF7ZmlsbDojMDBiNWRlO30uY2xzLTJ7ZmlsbDojMDBkZWNjO30uY2xzLTN7ZmlsbDojZmY1NTI5O30uY2xzLTR7ZmlsbDojZmY5NjQwO30uY2xzLTV7ZmlsbDojMTAyYzUzO308L3N0eWxlPjwvZGVmcz48ZyBpZD0iTGF5ZXJfMiIgZGF0YS1uYW1lPSJMYXllciAyIj48ZyBpZD0iYnJhbmRfZ3VpZGVzIiBkYXRhLW5hbWU9ImJyYW5kIGd1aWRlcyI+PGcgaWQ9ImxvZ29fb25fbGlnaHQiIGRhdGEtbmFtZT0ibG9nbyBvbiBsaWdodCI+PHBvbHlnb24gY2xhc3M9ImNscy0xIiBwb2ludHM9IjU5LjI5IDUuOTUgMjkuNTggNS45NSAyNS41NiAxMi40IDQ2Ljk0IDI1LjcgNDYuOTQgMjUuNyA0Ni45NCAyNS43MSA1OS4yOSA1Ljk1Ii8+PHBvbHlnb24gY2xhc3M9ImNscy0yIiBwb2ludHM9IjI1LjU2IDEyLjQgNS42MiAwIDUuNjIgMjkuNzEgMTIuNDkgMzMuNzIgNDYuOTQgMjUuNyA0Ni45NCAyNS43IDI1LjU2IDEyLjQiLz48cG9seWdvbiBjbGFzcz0iY2xzLTMiIHBvaW50cz0iNDcuMDYgMjcuODIgNDcuMDYgMjcuODIgNDcuMDcgMjcuODIgNDcuMDYgMjcuODIiLz48cG9seWdvbiBjbGFzcz0iY2xzLTMiIHBvaW50cz0iNTMuNDcgMzEuODMgNDcuMDcgMjcuODIgMzMuNjUgNDkuMTUgNTMuNDcgNjEuNTQgNTMuNDcgMzEuODMiLz48cG9seWdvbiBjbGFzcz0iY2xzLTQiIHBvaW50cz0iNDcuMDcgMjcuODIgNDcuMDcgMjcuODIgNDcuMDYgMjcuODIgMTIuMzUgMzUuOTggMCA1NS40MSAyOS43MSA1NS40MSAzMy42NSA0OS4xNSA0Ny4wNyAyNy44MiA0Ny4wNyAyNy44MiIvPjxwYXRoIGNsYXNzPSJjbHMtNSIgZD0iTTEwNy42Niw0Ny44bDAtMTguODRMOTguMzcsNDQuNDhIOTUuMUw4NS45LDI5LjM3VjQ3LjhINzkuMDhWMTYuNGg2TDk2Ljg1LDM1LjkyLDEwOC40MiwxNi40aDZsLjA5LDMxLjRaIi8+PHBhdGggY2xhc3M9ImNscy01IiBkPSJNMTIxLjgyLDMyLjFjMC05LjMzLDcuMjctMTYuMjQsMTcuMTgtMTYuMjRzMTcuMTgsNi44NywxNy4xOCwxNi4yNFMxNDguODcsNDguMzQsMTM5LDQ4LjM0LDEyMS44Miw0MS40MywxMjEuODIsMzIuMVptMjcsMGMwLTYtNC4yMi0xMC05LjgzLTEwcy05LjgyLDQuMDktOS44MiwxMC4wNSw0LjIxLDEwLDkuODIsMTBTMTQ4LjgzLDM4LjA3LDE0OC44MywzMi4xWiIvPjxwYXRoIGNsYXNzPSJjbHMtNSIgZD0iTTE2My41OSwxNi40aDE0LjI2YzEwLjI3LDAsMTcuMzIsNi4xOSwxNy4zMiwxNS43cy03LDE1LjctMTcuMzIsMTUuN0gxNjMuNTlabTEzLjksMjUuNDRjNi4yNCwwLDEwLjMyLTMuNzMsMTAuMzItOS43NHMtNC4wOC05LjczLTEwLjMyLTkuNzNoLTYuNjRWNDEuODRaIi8+PHBhdGggY2xhc3M9ImNscy01IiBkPSJNMjIxLjEsNDcuOGwtNy41OC0xMC45LTcuNDUsMTAuOWgtOC4zNGwxMS42MS0xNi0xMS0xNS40M2g4LjI1bDcuMjIsMTAuMTgsNy4wOS0xMC4xOGg3Ljg1TDIxNy43OCwzMS41NiwyMjkuNDksNDcuOFoiLz48L2c+PC9nPjwvZz48L3N2Zz4=);\n        }\n        .disclaimer {\n            max-width: 960px;\n            display: block;\n            margin: 0 auto;\n            text-align: center;\n            color: #333;\n            font-size: .6em;\n        }\n        @media (min-width: 768px) and (max-width: 991px)  {\n            .container {\n                padding: 1em;\n                border: 0;\n                border-radius: 0;\n            }\n        }\n        @media (max-width: 767px)  {\n            body {\n                font-size: 16px;\n            }\n            .container {\n                padding: 1em;\n                margin: 0 0 1em;\n                border: 0;\n                border-radius: 0;\n            }\n            .container > section, .container > aside {\n                float: none;\n                width: 100%;\n            }\n            .container aside {\n                border: 0;\n                padding: 0;\n            }\n            .logo {\n                width: 100%;\n                height: 48px;\n            }\n            h1 {\n                font-size: 24px;\n            }\n            h2 {\n                font-size: 19px;\n            }\n            h3 {\n                font-size: 16px;\n            }\n            .companys ul li {\n                display: block;\n            }\n        }\n    </style>\n</head>\n<body>\n<a href=\"https://modx.com\" title=\"MODX\" class=\"logo\" target=\"_blank\">MODX</a>\n<div class=\"container\">\n    <section>\n        <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>\n        [[*content]]\n    </section>\n    <aside>\n        <a href=\"[[++manager_url]]\" title=\"Your MODX manager\" class=\"cta-button\">Go to the&nbsp;manager</a>\n        <h3>Learn more about&nbsp;MODX</h3>\n        <ul>\n            <li><a href=\"https://docs.modx.com/3.x/en/index\" target=\"_blank\">Official&nbsp;Documentation</a></li>\n            <li><a href=\"https://docs.modx.com/3.x/en/getting-started/friendly-urls\" target=\"_blank\">Using Friendly&nbsp;URLs</a></li>\n            <li><a href=\"https://docs.modx.com/current/en/building-sites/extras\" target=\"_blank\">Package&nbsp;Management</a></li>\n            <li><a href=\"https://modx.com/blog/\" target=\"_blank\">Official MODX&nbsp;Blog</a></li>\n            <li><a href=\"http://www.discovermodx.com/\" target=\"_blank\">Discover&nbsp;MODX</a></li>\n            <li><a href=\"https://modx.today\" target=\"_blank\">MODX.today</a></li>\n        </ul>\n        <h3>Get help!</h3>\n        <ul>\n            <li><a href=\"https://community.modx.com\" target=\"_blank\">Official MODX&nbsp;Forums</a></li>\n            <li><a href=\"https://modx.org/\" target=\"_blank\">MODX on&nbsp;Slack</a></li>\n            <li><a href=\"https://twitter.com/modx\" target=\"_blank\">MODX on&nbsp;Twitter</a></li>\n            <li><a href=\"https://www.facebook.com/modxcms\" target=\"_blank\">MODX on&nbsp;Facebook</a></li>\n            <li><a href=\"https://modx.com/professionals/\" target=\"_blank\">Find a MODX&nbsp;Professional</a></li>\n        </ul>\n    </aside>\n    <div class=\"companies\">\n        <h3>Extend MODX with&nbsp;Extras</h3>\n        <ul>\n            <li class=\"modxextras\"><a href=\"https://modx.com/extras/\" title=\"MODX extras\" target=\"_blank\">MODX&nbsp;extras</a></li>\n            <li class=\"modmore\"><a href=\"https://www.modmore.com/extras/\" title=\"modmore.com\" target=\"_blank\">modmore.com</a></li>\n            <li class=\"modstore\"><a href=\"https://modstore.pro/\" title=\"modstore.pro\" target=\"_blank\">modstore.pro</a></li>\n            <li class=\"extrasio\"><a href=\"https://extras.io/extras/\" title=\"Extras.io\" target=\"_blank\">Extras.io</a></li>\n        </ul>\n    </div>\n</div>\n<footer class=\"disclaimer\">\n    <p>&copy; 2005-present the <a href=\"https://modx.com\" target=\"_blank\">MODX</a> Content Management Framework (CMF) project. All rights reserved. MODX is licensed under the GNU&nbsp;GPL.</p>\n</footer>\n\n<script>\n    // Load the Open Sans font\n    try {\n        document.addEventListener(\"DOMContentLoaded\", function() { // prevent a Flash Of Unstyled Text (FOUT)\n            document.querySelector(\'head\').innerHTML += \"<link href=\'https://fonts.googleapis.com/css?family=Open+Sans:400,700\' rel=\'stylesheet\' type=\'text/css\'>\";\n            document.body.classList.add(\'loaded\');\n        });\n    } catch (e) { }\n\n    // Shuffle the vendors to prevent favoritism of one vendor over the other\n    // with thanks to http://james.padolsey.com/javascript/shuffling-the-dom/\n    function shuffle(elems) {\n        var allElems = (function(){\n            var ret = [], l = elems.length;\n            while (l--) {\n                if (elems[l].className !== \'modxextras\') {\n                    ret[ret.length] = elems[l];\n                }\n            }\n            return ret;\n        })();\n\n        var shuffled = (function(){\n            var l = allElems.length, ret = [];\n            while (l--) {\n                var random = Math.floor(Math.random() * allElems.length),\n                        randEl = allElems[random].cloneNode(true);\n                allElems.splice(random, 1);\n                ret[ret.length] = randEl;\n            }\n            return ret;\n        })(), l = elems.length;\n\n        // To make sure the MODX logo stays #1, we lower the count by one here (shuffling 3 instead of 4 items)\n        // and refer to elems[l+1] in the loop below. This matches because allElems was also filtered to not include\n        // the official MODX logo.\n        l--;\n        while (l--) {\n            elems[l+1].parentNode.insertBefore(shuffled[l], elems[l+1].nextSibling);\n            elems[l+1].parentNode.removeChild(elems[l+1]);\n        }\n    }\n    shuffle(document.querySelectorAll(\'.companies li\'));\n</script>\n\n</body>\n</html>\n',0,NULL,0,'',''),
(4,0,0,'Base','Базовий макет (не призначати сторінкам): head, шапка, підвал',0,29,'',0,'{* =====================================================================\n   Base layout (not assigned to resources). Page templates extend it:\n   {extends \'template:Base\'} and override blocks: head, json_ld, main.\n   ===================================================================== *}\n{$_modx->lexicon->load(\'improvision:default\')}\n{set $res = $_modx->resource}\n{set $ctx = $res.context_key}\n{set $lang = $_modx->config.cultureKey}\n{set $site = $_modx->makeUrl($_modx->config.site_start, \'\', \'\', \'full\')}\n{set $g = $_modx->getResource($_modx->config[\'improvision.globals_id\'], [\n  \'includeTVs\' => \'phone,email,address,socials,brands_title,brands,steps,why_title,why_bg,why,stats,contact_title,contact_text,contact_image,contact_image_alt,map_street,map_city\',\n  \'tvPrefix\' => \'\',\n  \'decodeJSON\' => false\n])}\n{set $phone = $g.phone}\n{set $tel = $phone | preg_replace : \'/[^0-9+]/\' : \'\'}\n{set $leadUrl = $_modx->makeUrl($_modx->config[\'improvision.lead_id\'], \'web\', \'\', \'abs\')}\n{set $privacyUrl = $_modx->makeUrl($_modx->config[\'improvision.privacy_id\'], \'\', \'\', \'abs\')}\n{set $langs = $_modx->runSnippet(\'impLangs\') | fromJSON}\n{set $url = $_modx->makeUrl($res.id, \'\', \'\', \'full\')}\n{set $pageName = $res.longtitle ?: $res.pagetitle}\n{set $seoTitle = $res.seo_title ?: (($pageName | length) > 56 ? $pageName : ($pageName ~ \' — improvision\'))}\n{set $ogImage = $res.og_image ?: ($res.image ?: \'assets/img/photos/hero.jpg\')}\n{set $locales = [\'uk\' => \'uk_UA\', \'en\' => \'en_US\', \'ru\' => \'ru_UA\']}\n<!DOCTYPE html>\n<html lang=\"{$lang}\">\n<head>\n  <meta charset=\"UTF-8\">\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n  <title>{$seoTitle}</title>\n{if $res.description}\n  <meta name=\"description\" content=\"{$res.description | esc}\">\n{/if}\n  <link rel=\"canonical\" href=\"{$url}\">\n  <meta name=\"theme-color\" content=\"#052342\">\n\n  <meta property=\"og:type\" content=\"{block \'og_type\'}website{/block}\">\n  <meta property=\"og:locale\" content=\"{$locales[$lang]}\">\n  <meta property=\"og:site_name\" content=\"improvision\">\n  <meta property=\"og:title\" content=\"{($res.og_title ?: $seoTitle) | esc}\">\n{if $res.og_description ?: $res.description}\n  <meta property=\"og:description\" content=\"{($res.og_description ?: $res.description) | esc}\">\n{/if}\n  <meta property=\"og:url\" content=\"{$url}\">\n  <meta property=\"og:image\" content=\"{$_modx->config.site_url | preg_replace : \'#/(en|ru)/$#\' : \'/\'}{$ogImage}\">\n\n{block \'preload\'}{/block}\n  <link rel=\"preload\" href=\"/assets/fonts/manrope-cyrillic-wght-normal.woff2\" as=\"font\" type=\"font/woff2\" crossorigin>\n  <link rel=\"stylesheet\" href=\"/assets/css/main.css\">\n  <link rel=\"icon\" href=\"/assets/icons/favicon.svg\" type=\"image/svg+xml\">\n  <script>document.documentElement.classList.add(\'js\');</script>\n{foreach $langs as $l}\n  <link rel=\"alternate\" hreflang=\"{$l.lang}\" href=\"{$l.url}\">\n{/foreach}\n{foreach $langs as $l}{if $l.lang == \'uk\'}\n  <link rel=\"alternate\" hreflang=\"x-default\" href=\"{$l.url}\">\n{/if}{/foreach}\n{block \'json_ld\'}{/block}\n</head>\n<body>\n\n{block \'header\'}{include \'header\' solid=1}{/block}\n\n<main>\n{block \'main\'}{/block}\n</main>\n\n{include \'footer\'}\n</body>\n</html>\n',0,NULL,1,'{core_path}components/improvision/elements/templates/base.tpl',''),
(5,0,0,'Головна','Головна сторінка',0,29,'',0,'{extends \'template:Base\'}\n\n{block \'header\'}{include \'header\' solid=0}{/block}\n\n{block \'preload\'}\n  <link rel=\"preload\" as=\"image\" href=\"/{$res.image}\" imagesrcset=\"/{$res.image_960} 960w, /{$res.image} 1888w\" imagesizes=\"100vw\" media=\"(min-width: 768px)\" fetchpriority=\"high\">\n  <link rel=\"preload\" as=\"image\" href=\"/{$res.image_mobile}\" media=\"(max-width: 767.98px)\" fetchpriority=\"high\">\n{/block}\n\n{block \'json_ld\'}\n{set $ld = [\n  \'@context\' => \'https://schema.org\',\n  \'@type\' => \'GeneralContractor\',\n  \'name\' => \'improvision\',\n  \'url\' => $url,\n  \'logo\' => ($site ~ \'assets/icons/logo.svg\'),\n  \'image\' => ($site ~ $res.image),\n  \'description\' => $res.ld_description ?: $res.description,\n  \'telephone\' => $tel,\n  \'email\' => $g.email,\n  \'address\' => [\'@type\' => \'PostalAddress\', \'streetAddress\' => $g.map_street, \'addressLocality\' => $g.map_city, \'addressCountry\' => \'UA\'],\n  \'areaServed\' => \'UA\'\n]}\n  <script type=\"application/ld+json\">{$ld | toJSON : 320}</script>\n{/block}\n\n{block \'main\'}\n{set $features = $res.hero_features | fromJSON}\n{set $services = $_modx->getResources(\n  [\'parent\' => $_modx->config[\'improvision.services_id\'], \'published\' => 1, \'deleted\' => 0],\n  [\'sortby\' => \'home_order\', \'sortdir\' => \'ASC\', \'limit\' => 0, \'includeTVs\' => \'card_image,card_text,home_order\', \'tvPrefix\' => \'\']\n)}\n{set $projects = $_modx->getResources(\n  [\'parent\' => $_modx->config[\'improvision.projects_id\'], \'published\' => 1, \'deleted\' => 0],\n  [\'sortby\' => \'menuindex\', \'sortdir\' => \'ASC\', \'limit\' => 6, \'includeTVs\' => \'brand,city,year,category,card_image,card_image_alt\', \'tvPrefix\' => \'\']\n)}\n  <!-- ============================== HERO ============================== -->\n  <section class=\"hero\">\n    <!-- desktop: full-screen background; mobile (<768): photo between the text and the buttons -->\n    <picture class=\"hero__picture\">\n      <source media=\"(max-width: 767.98px)\" srcset=\"/{$res.image_mobile}\" {$_modx->runSnippet(\'impImg\', [\'src\' => $res.image_mobile])}>\n      <img class=\"hero__bg\" src=\"/{$res.image}\" srcset=\"/{$res.image_960} 960w, /{$res.image} 1888w\" sizes=\"100vw\" {$_modx->runSnippet(\'impImg\', [\'src\' => $res.image])} alt=\"{$res.image_alt | esc}\" fetchpriority=\"high\">\n    </picture>\n    <div class=\"container\" data-stagger>\n      <h1 class=\"hero__title\">{($res.h1 ?: $res.pagetitle) | replace : \"\\n\" : \'<br class=\"br-desk\"> \'}</h1>\n      <p class=\"hero__text\">{$res.introtext}</p>\n      <div class=\"hero__actions\">\n        <a class=\"btn btn--primary\" href=\"#contact\">{\'imp.request\' | lexicon}{include \'icon_arrow\'}</a>\n        <a class=\"btn btn--outline-light\" href=\"{$_modx->makeUrl($_modx->config[\'improvision.projects_id\'], \'\', \'\', \'abs\')}\">{\'imp.view_projects\' | lexicon}{include \'icon_arrow\'}</a>\n      </div>\n{if $features}\n      <ul class=\"hero__features\">\n{foreach $features as $f}\n        <li class=\"hero__feature\"><img src=\"/{$f.icon}\" width=\"36\" height=\"36\" alt=\"\"><span>{$f.text | replace : \"\\n\" : \'<br>\'}</span></li>\n{/foreach}\n      </ul>\n{/if}\n    </div>\n  </section>\n\n{include \'brands\'}\n  <!-- ============================== ABOUT ============================== -->\n  <section class=\"about\" aria-labelledby=\"about-title\">\n    <div class=\"container about__grid\">\n      <div class=\"about__content\" data-stagger>\n        <h2 class=\"title\" id=\"about-title\">{$res.about_title | replace : \"\\n\" : \'<br> \'}</h2>\n        <p class=\"about__lead\">{$res.about_lead}</p>\n        <p>{$res.about_text}</p>\n        <a class=\"btn btn--outline\" href=\"#services\">{\'imp.our_services\' | lexicon}{include \'icon_arrow\'}</a>\n      </div>\n      <ul class=\"about__cards\" data-stagger>\n{include \'steps\'}\n      </ul>\n    </div>\n  </section>\n\n  <!-- ============================== SERVICES ============================== -->\n  <section class=\"services\" id=\"services\" aria-labelledby=\"services-title\">\n    <div class=\"container\">\n      <div class=\"section-head\" data-stagger>\n        <h2 class=\"title\" id=\"services-title\">{$res.services_title | replace : \"\\n\" : \'<br class=\"br-desk\"> \'}</h2>\n        <a class=\"btn btn--outline\" href=\"#contact\">{\'imp.get_consult\' | lexicon}{include \'icon_arrow\'}</a>\n      </div>\n      <div class=\"services__slider\" data-slider=\"progress\">\n        <div class=\"slider__track services__track\" data-slider-track data-stagger=\"right\">\n{foreach $services as $s index=$i}\n          <article class=\"service-card\">\n            <a class=\"service-card__link\" href=\"{$_modx->makeUrl($s.id, \'\', \'\', \'abs\')}\">\n              <img class=\"service-card__img\" src=\"/{$s.card_image}\" {$_modx->runSnippet(\'impImg\', [\'src\' => $s.card_image])} alt=\"\" loading=\"lazy\" draggable=\"false\">\n              <span class=\"service-card__num\">{($i + 1) < 10 ? \'0\' : \'\'}{$i + 1}</span>\n              <div class=\"service-card__body\">\n                <h3 class=\"service-card__title\">{$s.menutitle ?: $s.pagetitle}</h3>\n                <p class=\"service-card__text\">{$s.card_text}</p>\n              </div>\n              <span class=\"service-card__arrow\">{include \'icon_arrow\'}</span>\n            </a>\n          </article>\n{/foreach}\n        </div>\n        <div class=\"slider__progress\" aria-hidden=\"true\"><span data-slider-progress></span></div>\n      </div>\n    </div>\n  </section>\n\n{include \'why\'}\n  <!-- ============================== PROJECTS ============================== -->\n  <section class=\"projects\" aria-labelledby=\"projects-title\">\n    <div class=\"container\">\n      <div class=\"section-head\" data-stagger>\n        <h2 class=\"title\" id=\"projects-title\">{$res.projects_title}</h2>\n        <a class=\"btn btn--outline\" href=\"{$_modx->makeUrl($_modx->config[\'improvision.projects_id\'], \'\', \'\', \'abs\')}\">{\'imp.all_projects\' | lexicon}{include \'icon_arrow\'}</a>\n      </div>\n{include \'project_filters\'}\n      <div class=\"projects__grid\" data-filter-grid data-stagger>\n{foreach $projects as $p}\n{include \'card_project\' p=$p}\n{/foreach}\n        <p class=\"projects__empty\" hidden data-filter-empty>{\'imp.empty_projects\' | lexicon}</p>\n      </div>\n    </div>\n  </section>\n\n  <!-- ============================== STATS ============================== -->\n  <section class=\"stats\" aria-labelledby=\"stats-title\">\n    <div class=\"container\">\n      <img class=\"stats__deco\" src=\"/assets/icons/deco-mark.svg\" width=\"427\" height=\"427\" alt=\"\" aria-hidden=\"true\">\n      <div class=\"stats__grid\">\n        <div class=\"stats__intro\" data-stagger>\n          <h2 class=\"title title--light\" id=\"stats-title\">{$res.stats_title | replace : \"\\n\" : \'<br> \'}</h2>\n          <p class=\"stats__text\">{$res.stats_text}</p>\n        </div>\n        <dl class=\"stats__list\" data-stagger>\n{include \'stats_items\'}\n        </dl>\n      </div>\n    </div>\n  </section>\n\n{include \'contact\'}\n{/block}\n',0,NULL,1,'{core_path}components/improvision/elements/templates/home.tpl',''),
(6,0,0,'Про нас','Сторінка «Про нас»',0,29,'',0,'{extends \'template:Base\'}\n\n{block \'preload\'}\n  <link rel=\"preload\" as=\"image\" href=\"/{$res.image}\">\n{/block}\n\n{block \'json_ld\'}\n{set $ld = [\n  \'@context\' => \'https://schema.org\',\n  \'@type\' => \'BreadcrumbList\',\n  \'itemListElement\' => [\n    [\'@type\' => \'ListItem\', \'position\' => 1, \'name\' => (\'imp.home\' | lexicon), \'item\' => $site],\n    [\'@type\' => \'ListItem\', \'position\' => 2, \'name\' => $res.pagetitle, \'item\' => $url]\n  ]\n]}\n  <script type=\"application/ld+json\">{$ld | toJSON : 320}</script>\n{/block}\n\n{block \'main\'}\n{set $history = $res.history | fromJSON}\n{set $team = $res.team | fromJSON}\n\n  <!-- ============================== PAGE HEAD ============================== -->\n  <section class=\"page-head\">\n    <div class=\"container\" data-stagger>\n{include \'breadcrumbs\'}\n      <h1 class=\"page-head__title\">{($res.h1 ?: $res.pagetitle) | replace : \"\\n\" : \'<br class=\"br-desk\"> \'}</h1>\n      <div class=\"page-head__media\">\n        <img src=\"/{$res.image}\" {$_modx->runSnippet(\'impImg\', [\'src\' => $res.image])} alt=\"{$res.image_alt | esc}\" fetchpriority=\"high\">\n      </div>\n    </div>\n  </section>\n\n  <!-- ============================== INTRO ============================== -->\n  <section class=\"about-intro\" aria-labelledby=\"intro-title\">\n    <div class=\"container\">\n      <div class=\"about-intro__grid\">\n        <div class=\"about-intro__content\" data-stagger>\n          <h2 class=\"title\" id=\"intro-title\">{$res.intro_title | replace : \"\\n\" : \'<br class=\"br-desk\"> \'}</h2>\n          <p class=\"about-intro__lead\">{$res.introtext}</p>\n          {$res.content}\n        </div>\n        <div class=\"about-intro__mark\" data-reveal=\"zoom\">\n          <svg viewBox=\"0 0 427 427\" role=\"img\" aria-label=\"{$res.mark_image_alt | esc}\">\n            <defs>\n              <clipPath id=\"mark-clip\">\n                <path clip-rule=\"evenodd\" d=\"M213.5 0C331.41 0 427 95.59 427 213.5C427 331.41 331.41 427 213.5 427C176.36 427 141.42 417.52 111.02 400.79L111.02 333.7C138.62 357.26 174.41 371.49 213.5 371.49C300.76 371.49 371.49 300.76 371.49 213.5C371.49 126.24 300.76 55.51 213.5 55.51L213.5 0M0 213.5C0 114.81 66.99 31.75 157.99 7.34L157.99 65.54C98.09 88.01 55.51 145.76 55.51 213.5L55.51 417.32L0 417.32L0 213.5\"/>\n                <path d=\"M287 213.5C287 254.09 254.09 287 213.5 287C172.91 287 140 254.09 140 213.5C140 172.91 172.91 140 213.5 140C254.09 140 287 172.91 287 213.5\"/>\n              </clipPath>\n            </defs>\n            <image href=\"/{$res.mark_image}\" x=\"-297\" y=\"0\" width=\"759\" height=\"427\" clip-path=\"url(#mark-clip)\" preserveAspectRatio=\"xMidYMid slice\"/>\n          </svg>\n        </div>\n      </div>\n    </div>\n  </section>\n\n  <!-- ============================== STATS BAND ============================== -->\n  <section class=\"stats stats--band\" aria-label=\"{\'imp.stats_aria\' | lexicon}\">\n    <div class=\"container\">\n      <dl class=\"stats__list\" data-stagger>\n{include \'stats_items\'}\n      </dl>\n    </div>\n  </section>\n\n  <!-- ============================== PROCESS ============================== -->\n  <section class=\"process\" aria-labelledby=\"process-title\">\n    <div class=\"container\">\n      <h2 class=\"title\" id=\"process-title\" data-reveal>{$res.process_title}</h2>\n      <ul class=\"process__cards\" data-stagger>\n{include \'steps\'}\n      </ul>\n    </div>\n  </section>\n\n{include \'why\'}\n\n{if $history}\n  <!-- ============================== HISTORY ============================== -->\n  <section class=\"history\" aria-labelledby=\"history-title\">\n    <div class=\"container\">\n      <h2 class=\"title title--center\" id=\"history-title\" data-reveal>{$res.history_title}</h2>\n      <div class=\"history__body\" data-tabs data-reveal=\"fade\">\n{foreach $history as $h index=$i}\n        <div class=\"history__panel\" id=\"history-{$h.year}\" role=\"tabpanel\" aria-labelledby=\"history-tab-{$h.year}\" data-tab-panel=\"{$h.year}\"{if $i > 0} hidden{/if}>\n          <div class=\"history__year\" aria-hidden=\"true\">{$h.year}</div>\n          <div class=\"history__media\">\n{if $h.image1}\n              <img src=\"/{$h.image1}\" {$_modx->runSnippet(\'impImg\', [\'src\' => $h.image1])} alt=\"{$h.alt1 | esc}\" loading=\"lazy\">\n{/if}\n{if $h.image2}\n              <img src=\"/{$h.image2}\" {$_modx->runSnippet(\'impImg\', [\'src\' => $h.image2])} alt=\"{$h.alt2 | esc}\" loading=\"lazy\" class=\"is-right\">\n{/if}\n          </div>\n          <p class=\"history__caption\">{$h.caption}</p>\n        </div>\n{/foreach}\n        <div class=\"history__tabs\" role=\"tablist\" aria-label=\"{\'imp.history_aria\' | lexicon}\">\n{foreach $history as $h index=$i}\n          <button class=\"history__tab{if $i == 0} is-active{/if}\" type=\"button\" role=\"tab\" id=\"history-tab-{$h.year}\" aria-controls=\"history-{$h.year}\" aria-selected=\"{$i == 0 ? \'true\' : \'false\'}\" tabindex=\"{$i == 0 ? \'0\' : \'-1\'}\" data-tab=\"{$h.year}\">{$h.year}</button>\n{/foreach}\n{if $res.history_soon}\n          <span class=\"history__tab history__tab--soon\">{$res.history_soon}</span>\n{/if}\n        </div>\n      </div>\n    </div>\n  </section>\n{/if}\n\n{if $team}\n  <!-- ============================== TEAM ============================== -->\n  <section class=\"team\" aria-labelledby=\"team-title\">\n    <div class=\"container team__grid\">\n      <div class=\"team__intro\" data-stagger>\n        <h2 class=\"title\" id=\"team-title\">{$res.team_title | replace : \"\\n\" : \'<br> \'}</h2>\n        <p class=\"team__text\">{$res.team_text}</p>\n      </div>\n      <dl class=\"team__list\" data-stagger>\n{foreach $team as $t}\n        <div class=\"team__item\">\n          <dt class=\"team__label\">{$t.label | replace : \"\\n\" : \'<br> \'}</dt>\n          <dd class=\"team__value\"><span data-count=\"{$t.value}\">{$t.value}</span></dd>\n        </div>\n{/foreach}\n      </dl>\n    </div>\n  </section>\n{/if}\n\n{include \'brands\'}\n\n{include \'contact\'}\n{/block}\n',0,NULL,1,'{core_path}components/improvision/elements/templates/about.tpl',''),
(7,0,0,'Послуга','Сторінка послуги',0,29,'',0,'{extends \'template:Base\'}\n\n{block \'preload\'}\n  <link rel=\"preload\" as=\"image\" href=\"/{$res.image}\">\n{/block}\n\n{block \'json_ld\'}\n{set $svcLd = [ [\n  \'@context\' => \'https://schema.org\',\n  \'@type\' => \'Service\',\n  \'name\' => ($res.menutitle ?: $res.pagetitle),\n  \'serviceType\' => ($res.service_type ?: $res.pagetitle),\n  \'areaServed\' => \'UA\',\n  \'provider\' => [\'@type\' => \'GeneralContractor\', \'name\' => \'improvision\', \'url\' => $site]\n] ]}\n{$_modx->runSnippet(\'impJsonLd\', [\'extra\' => ($svcLd | toJSON)])}\n{/block}\n\n{block \'main\'}\n{set $checklist = $res.checklist | preg_split : \'/\\r?\\n/\'}\n{set $stages = $res.stages | fromJSON}\n{set $materials = $res.materials | fromJSON}\n{set $relatedIds = $res.related_projects | split : \'||\'}\n\n  <!-- ============================== BREADCRUMBS ============================== -->\n  <div class=\"page-crumbs\">\n    <div class=\"container\">\n{include \'breadcrumbs\'}\n    </div>\n  </div>\n\n  <!-- ============================== SERVICE HERO ============================== -->\n  <section class=\"service-hero\">\n    <div class=\"container service-hero__grid\">\n      <div class=\"service-hero__content\" data-stagger>\n{set $h1 = $res.h1 ?: $res.pagetitle}\n{set $h1Class = $_modx->runSnippet(\'impHeroClass\', [\'text\' => $h1])}\n        <h1 class=\"service-hero__title{if $h1Class} {$h1Class}{/if}\">{$h1 | replace : \"\\n\" : \'<br> \'}</h1>\n        <p class=\"service-hero__text\">{$res.introtext}</p>\n        <div class=\"service-hero__actions\">\n          <a class=\"btn btn--primary\" href=\"#contact\">{\'imp.order_consult\' | lexicon}{include \'icon_arrow\'}</a>\n          <a class=\"btn btn--outline-dark\" href=\"#projects\">{\'imp.examples\' | lexicon}{include \'icon_arrow\'}</a>\n        </div>\n      </div>\n      <div class=\"service-hero__media\" data-reveal=\"right\">\n        <img src=\"/{$res.image}\" {$_modx->runSnippet(\'impImg\', [\'src\' => $res.image])} alt=\"{$res.image_alt | esc}\" fetchpriority=\"high\">\n      </div>\n    </div>\n  </section>\n\n  <!-- ============================== CONTENT ============================== -->\n  <div class=\"service-layout\">\n    <div class=\"container service-layout__grid\">\n\n{include \'service_aside\'}\n\n      <article class=\"prose service-article\">\n        {$_modx->runSnippet(\'impProse\', [\'html\' => $res.content])}\n\n{if $res.checklist}\n        <section class=\"checklist-box\" aria-labelledby=\"included-title\" data-reveal>\n          <h3 class=\"checklist-box__title\" id=\"included-title\">{$res.checklist_title}</h3>\n          <ul class=\"checklist\">\n{foreach $checklist as $item}{if $item}\n            <li>{$item}</li>\n{/if}{/foreach}\n          </ul>\n        </section>\n{/if}\n\n        {$_modx->runSnippet(\'impProse\', [\'html\' => $res.content2])}\n\n{if $res.callout}\n        <div class=\"callout\" data-reveal>\n          <img class=\"callout__icon\" src=\"/assets/icons/ic-contract-pen.svg\" width=\"52\" height=\"40\" alt=\"\">\n          <p>{$res.callout | replace : \"\\n\" : \'<br class=\"br-desk\"> \'}</p>\n        </div>\n{/if}\n\n        {$_modx->runSnippet(\'impProse\', [\'html\' => $res.content3])}\n\n{if $stages}\n        <h3 data-reveal>{$res.stages_title}</h3>\n        <ol class=\"stages\" data-stagger>\n{foreach $stages as $s index=$i}\n          <li class=\"stage\">\n            <img class=\"stage__icon\" src=\"/{$s.icon}\" width=\"50\" height=\"50\" alt=\"\" loading=\"lazy\">\n            <span class=\"stage__num\" aria-hidden=\"true\">{($i + 1) < 10 ? \'0\' : \'\'}{$i + 1}</span>\n            <h4 class=\"stage__title\">{$s.title}</h4>\n            <p class=\"stage__text\">{$s.text | replace : \"\\n\" : \'<br class=\"br-desk\"> \'}</p>\n          </li>\n{/foreach}\n        </ol>\n{/if}\n\n{if $materials}\n{set $active = 0}\n{foreach $materials as $m index=$i}{if $m.active}{set $active = $i}{/if}{/foreach}\n        <h3 data-reveal>{$res.materials_title}</h3>\n{if $res.materials_lead}\n        <p class=\"prose__lead\" data-reveal>{$res.materials_lead}</p>\n{/if}\n        <div class=\"materials\" data-tabs data-reveal>\n          <div class=\"materials__list\" role=\"tablist\" aria-label=\"{($res.materials_aria ?: $res.materials_title) | esc}\">\n{foreach $materials as $m index=$i}\n            <button class=\"materials__item{if $i == $active} is-active{/if}\" type=\"button\" role=\"tab\" id=\"mat-tab-{$i}\" aria-controls=\"mat-{$i}\" aria-selected=\"{$i == $active ? \'true\' : \'false\'}\" tabindex=\"{$i == $active ? \'0\' : \'-1\'}\" data-tab=\"m{$i}\">\n              <span class=\"materials__name\">{$m.name}</span>\n              <span class=\"materials__text\">{$m.text}</span>\n            </button>\n{/foreach}\n          </div>\n          <div class=\"materials__media\">\n{foreach $materials as $m index=$i}\n            <img id=\"mat-{$i}\" role=\"tabpanel\" aria-labelledby=\"mat-tab-{$i}\" data-tab-panel=\"m{$i}\" src=\"/{$m.image}\" {$_modx->runSnippet(\'impImg\', [\'src\' => $m.image])} alt=\"{$m.alt | esc}\" loading=\"lazy\"{if $i != $active} hidden{/if}>\n{/foreach}\n          </div>\n        </div>\n{/if}\n      </article>\n\n    </div>\n  </div>\n\n{if $res.related_projects}\n{set $related = $_modx->getResources(\n  [\'id:IN\' => $relatedIds, \'published\' => 1, \'deleted\' => 0],\n  [\'sortby\' => \'FIELD(modResource.id, \' ~ ($relatedIds | join : \',\') ~ \')\', \'sortdir\' => \'\', \'limit\' => 0, \'includeTVs\' => \'brand,city,year,category,card_image,card_image_alt\', \'tvPrefix\' => \'\']\n)}\n  <!-- ============================== RELATED PROJECTS ============================== -->\n  <section class=\"projects projects--related\" id=\"projects\" aria-labelledby=\"projects-title\">\n    <div class=\"container\">\n      <div class=\"section-head\" data-stagger>\n        <h2 class=\"title\" id=\"projects-title\">{\'imp.related_service_projects\' | lexicon}</h2>\n        <a class=\"btn btn--outline\" href=\"{$_modx->makeUrl($_modx->config[\'improvision.projects_id\'], \'\', \'\', \'abs\')}\">{\'imp.all_projects\' | lexicon}{include \'icon_arrow\'}</a>\n      </div>\n      <div class=\"projects__grid\" data-stagger>\n{foreach $related as $p}\n{include \'card_project\' p=$p}\n{/foreach}\n      </div>\n    </div>\n  </section>\n{/if}\n\n{include \'contact\'}\n{/block}\n',0,NULL,1,'{core_path}components/improvision/elements/templates/service.tpl',''),
(8,0,0,'Проєкти','Список проєктів (дочірні ресурси — проєкти)',0,29,'',0,'{extends \'template:Base\'}\n\n{block \'json_ld\'}\n{$_modx->runSnippet(\'impJsonLd\')}\n{/block}\n\n{block \'main\'}\n  <!-- ============================== PAGE INTRO ============================== -->\n  <section class=\"page-intro\">\n    <div class=\"container\" data-stagger>\n{include \'breadcrumbs\'}\n      <h1 class=\"page-intro__title\">{$res.longtitle ?: $res.pagetitle}</h1>\n      <p class=\"page-intro__text\">{$res.introtext}</p>\n    </div>\n  </section>\n\n  <!-- ============================== CATALOG ============================== -->\n  <section class=\"projects projects--catalog\" aria-label=\"{\'imp.projects_list_aria\' | lexicon}\">\n    <div class=\"container\">\n[[!impCatalog? &parent=`{$res.id}` &tpl=`card_project` &limit=`9` &type=`projects`]]\n      <div class=\"projects__bar\">\n{include \'project_filters\'}\n        <p class=\"projects__count\" aria-live=\"polite\" data-filter-count>[[!+imp.count]]</p>\n      </div>\n      <div class=\"projects__grid\" data-filter-grid data-stagger>\n[[!+imp.items]]\n        <p class=\"projects__empty\" hidden data-filter-empty>{\'imp.empty_projects\' | lexicon}</p>\n      </div>\n[[!+imp.pagination]]\n    </div>\n  </section>\n\n{include \'contact\'}\n{/block}\n',0,NULL,1,'{core_path}components/improvision/elements/templates/projects.tpl',''),
(9,0,0,'Проєкт','Сторінка проєкту',0,29,'',0,'{extends \'template:Base\'}\n\n{block \'preload\'}\n{set $gal0 = $res.gallery | fromJSON}\n  <link rel=\"preload\" as=\"image\" href=\"/{$gal0[0].image ?: $res.card_image}\">\n{/block}\n\n{block \'json_ld\'}\n{$_modx->runSnippet(\'impJsonLd\')}\n{/block}\n\n{block \'main\'}\n{set $gallery = $res.gallery | fromJSON}\n{if !$gallery}\n{set $gallery = [ [\'image\' => $res.card_image, \'alt\' => ($res.card_image_alt ?: ($res.brand ~ \' — \' ~ $res.pagetitle))] ]}\n{/if}\n{set $total = $gallery | length}\n{set $checklist = $res.checklist | preg_split : \'/\\r?\\n/\'}\n{set $tags = $res.directions | fromJSON}\n{set $specs = $res.specs | fromJSON}\n{set $others = $_modx->getResources(\n  [\'parent\' => $res.parent, \'published\' => 1, \'deleted\' => 0, \'id:!=\' => $res.id],\n  [\'sortby\' => \'menuindex\', \'sortdir\' => \'ASC\', \'limit\' => 3, \'includeTVs\' => \'brand,city,year,category,card_image,card_image_alt\', \'tvPrefix\' => \'\']\n)}\n\n  <!-- ============================== BREADCRUMBS ============================== -->\n  <div class=\"page-crumbs\">\n    <div class=\"container\">\n{include \'breadcrumbs\'}\n    </div>\n  </div>\n\n  <!-- ============================== PROJECT HERO + GALLERY ============================== -->\n  <section class=\"project-hero\">\n    <div class=\"container\">\n      <div data-stagger>\n        <h1 class=\"project-hero__title\">{$res.longtitle ?: $res.pagetitle}</h1>\n{if $res.introtext}\n        <p class=\"project-hero__text\">{$res.introtext}</p>\n{/if}\n      </div>\n      <div class=\"gallery\" data-gallery data-reveal=\"fade\">\n        <div class=\"gallery__main\">\n          <img class=\"gallery__image\" src=\"/{$gallery[0].image}\" {$_modx->runSnippet(\'impImg\', [\'src\' => $gallery[0].image])} alt=\"{$gallery[0].alt | esc}\" fetchpriority=\"high\" data-gallery-image>\n{if $total > 1}\n          <button class=\"gallery__nav gallery__nav--prev\" type=\"button\" aria-label=\"{\'imp.photo_prev\' | lexicon}\" data-gallery-prev>{include \'icon_arrow-left\'}</button>\n          <button class=\"gallery__nav gallery__nav--next\" type=\"button\" aria-label=\"{\'imp.photo_next\' | lexicon}\" data-gallery-next>{include \'icon_arrow-right\'}</button>\n{/if}\n          <button class=\"gallery__zoom\" type=\"button\" aria-label=\"{\'imp.photo_zoom\' | lexicon}\" data-gallery-zoom>{include \'icon_zoom\'}</button>\n        </div>\n{if $total > 1}\n        <div class=\"gallery__thumbs\">\n{foreach $gallery as $ph index=$i}\n          <button class=\"gallery__thumb{if $i == 0} is-active{/if}\" type=\"button\" aria-label=\"{\'imp.photo_n\' | lexicon : [\'n\' => ($i + 1), \'total\' => $total]}\"{if $i == 0} aria-current=\"true\"{/if} data-gallery-thumb data-src=\"/{$ph.image}\" data-alt=\"{$ph.alt | esc}\">\n            <img src=\"/{$ph.image}\" {$_modx->runSnippet(\'impImg\', [\'src\' => $ph.image])} alt=\"\" loading=\"lazy\">\n          </button>\n{/foreach}\n        </div>\n{else}\n        <div class=\"gallery__thumbs\" hidden>\n          <button class=\"gallery__thumb is-active\" type=\"button\" aria-current=\"true\" data-gallery-thumb data-src=\"/{$gallery[0].image}\" data-alt=\"{$gallery[0].alt | esc}\" tabindex=\"-1\"></button>\n        </div>\n{/if}\n      </div>\n    </div>\n  </section>\n\n  <!-- ============================== LIGHTBOX ============================== -->\n  <dialog class=\"lightbox\" aria-label=\"{\'imp.lightbox_aria\' | lexicon}\" data-lightbox>\n    <div class=\"lightbox__stage\" data-lightbox-stage>\n      <img class=\"lightbox__img\" src=\"/{$gallery[0].image}\" {$_modx->runSnippet(\'impImg\', [\'src\' => $gallery[0].image])} alt=\"\" data-lightbox-img>\n    </div>\n    <p class=\"lightbox__counter\" aria-live=\"polite\" data-lightbox-counter>1 / {$total}</p>\n    <p class=\"lightbox__hint\">{\'imp.lightbox_hint\' | lexicon}</p>\n    <button class=\"lightbox__btn lightbox__close\" type=\"button\" aria-label=\"{\'imp.close\' | lexicon}\" data-lightbox-close>{include \'icon_close\'}</button>\n    <button class=\"lightbox__btn lightbox__nav lightbox__nav--prev\" type=\"button\" aria-label=\"{\'imp.photo_prev\' | lexicon}\" data-lightbox-prev{if $total < 2} hidden{/if}>{include \'icon_arrow-left\'}</button>\n    <button class=\"lightbox__btn lightbox__nav lightbox__nav--next\" type=\"button\" aria-label=\"{\'imp.photo_next\' | lexicon}\" data-lightbox-next{if $total < 2} hidden{/if}>{include \'icon_arrow-right\'}</button>\n  </dialog>\n\n  <!-- ============================== PROJECT BODY ============================== -->\n{set $hasBody = $res.content || $res.checklist || $tags}\n  <section class=\"project-body\">\n    <div class=\"container project-body__grid\">\n      <div class=\"{if $hasBody}prose {/if}project-body__content\">\n{if $hasBody}\n        {$_modx->runSnippet(\'impProse\', [\'html\' => $res.content])}\n{if $res.checklist}\n        <div class=\"checklist-box checklist-box--compact\" data-reveal>\n          <ul class=\"checklist checklist--single\">\n{foreach $checklist as $item}{if $item}\n            <li>{$item}</li>\n{/if}{/foreach}\n          </ul>\n        </div>\n{/if}\n{if $tags}\n        <h3 class=\"project-body__subtitle\" data-reveal>{\'imp.project_directions\' | lexicon}</h3>\n        <ul class=\"tags\" data-stagger>\n{foreach $tags as $t}\n{if $t.link}\n          <li><a class=\"tag\" href=\"{$_modx->makeUrl($t.link, \'\', \'\', \'abs\')}\">{$t.title}</a></li>\n{else}\n          <li><span class=\"tag\">{$t.title}</span></li>\n{/if}\n{/foreach}\n        </ul>\n{/if}\n{else}\n{include \'project_specs\' specs=$specs side=\'left\'}\n{/if}\n      </div>\n\n      <aside class=\"project-aside\">\n{if $hasBody}\n{include \'project_specs\' specs=$specs side=\'right\'}\n{/if}\n{include \'consult_card\' ctitle=(\'imp.similar_title\' | lexicon) ctext=(\'imp.similar_text\' | lexicon) cwide=1 side=\'right\'}\n      </aside>\n    </div>\n  </section>\n\n{if $others}\n  <!-- ============================== OTHER PROJECTS ============================== -->\n  <section class=\"projects projects--related\" aria-labelledby=\"projects-title\">\n    <div class=\"container\">\n      <div class=\"section-head\" data-stagger>\n        <h2 class=\"title\" id=\"projects-title\">{\'imp.other_projects\' | lexicon}</h2>\n        <a class=\"btn btn--outline\" href=\"{$_modx->makeUrl($res.parent, \'\', \'\', \'abs\')}\">{\'imp.all_projects\' | lexicon}{include \'icon_arrow\'}</a>\n      </div>\n      <div class=\"projects__grid\" data-stagger>\n{foreach $others as $p}\n{include \'card_project\' p=$p}\n{/foreach}\n      </div>\n    </div>\n  </section>\n{/if}\n\n{include \'contact\'}\n{/block}\n',0,NULL,1,'{core_path}components/improvision/elements/templates/project.tpl',''),
(10,0,0,'Блог','Список статей (дочірні ресурси — статті)',0,29,'',0,'{extends \'template:Base\'}\n\n{block \'json_ld\'}\n{$_modx->runSnippet(\'impJsonLd\')}\n{/block}\n\n{block \'main\'}\n{set $featured = $_modx->getResources(\n  [\'parent\' => $res.id, \'published\' => 1, \'deleted\' => 0, \'TVfeatured.value\' => 1],\n  [\'sortby\' => \'publishedon\', \'sortdir\' => \'DESC\', \'limit\' => 0, \'includeTVs\' => \'image,card_image,post_category,featured,featured_text\', \'tvPrefix\' => \'\']\n)}\n  <!-- ============================== PAGE INTRO ============================== -->\n  <section class=\"page-intro\">\n    <div class=\"container\" data-stagger>\n{include \'breadcrumbs\'}\n      <h1 class=\"page-intro__title\">{$res.longtitle ?: $res.pagetitle}</h1>\n      <p class=\"page-intro__text\">{$res.introtext}</p>\n    </div>\n  </section>\n\n{if $featured}\n  <!-- ============================== FEATURED ============================== -->\n  <section class=\"featured\" aria-label=\"{\'imp.featured_aria\' | lexicon}\">\n    <div class=\"container\">\n      <div class=\"featured__slider\" data-slider=\"dots\" data-reveal=\"fade\">\n        <div class=\"slider__track featured__track\" data-slider-track>\n{foreach $featured as $p index=$i}\n{set $href = $_modx->makeUrl($p.id, \'\', \'\', \'abs\')}\n{set $img = $p.card_image ?: $p.image}\n          <article class=\"featured-post\">\n            <a class=\"featured-post__media\" href=\"{$href}\" tabindex=\"-1\" aria-hidden=\"true\">\n              <img src=\"/{$img}\" {$_modx->runSnippet(\'impImg\', [\'src\' => $img])} alt=\"\"{if $i == 0} fetchpriority=\"high\"{else} loading=\"lazy\"{/if} draggable=\"false\">\n              <span class=\"post-card__tag\">{(\'imp.pcat_\' ~ $p.post_category) | lexicon}</span>\n            </a>\n            <div class=\"featured-post__body\">\n              <time class=\"featured-post__date\" datetime=\"{$p.publishedon | date : \'Y-m-d\'}\">{$_modx->runSnippet(\'impDate\', [\'date\' => $p.publishedon])}</time>\n              <h2 class=\"featured-post__title\"><a href=\"{$href}\">{$p.pagetitle}</a></h2>\n              <p class=\"featured-post__text\">{$p.featured_text ?: $p.introtext}</p>\n              <a class=\"btn btn--outline btn--fit\" href=\"{$href}\">{\'imp.read_post\' | lexicon}{include \'icon_arrow\'}<span class=\"visually-hidden\">: {$p.pagetitle}</span></a>\n            </div>\n          </article>\n{/foreach}\n        </div>\n        <div class=\"slider__dots featured__dots\" data-slider-dots></div>\n      </div>\n    </div>\n  </section>\n{/if}\n\n  <!-- ============================== POSTS ============================== -->\n  <section class=\"blog-list\" aria-label=\"{\'imp.posts_list_aria\' | lexicon}\">\n    <div class=\"container\">\n{include \'post_filters\'}\n[[!impCatalog? &parent=`{$res.id}` &tpl=`card_post` &limit=`9` &type=`posts`]]\n      <div class=\"posts-grid\" data-filter-grid data-stagger>\n[[!+imp.items]]\n        <p class=\"projects__empty\" hidden data-filter-empty>{\'imp.empty_posts\' | lexicon}</p>\n      </div>\n[[!+imp.pagination]]\n    </div>\n  </section>\n{/block}\n',0,NULL,1,'{core_path}components/improvision/elements/templates/blog.tpl',''),
(11,0,0,'Стаття','Стаття блогу',0,29,'',0,'{extends \'template:Base\'}\n\n{block \'og_type\'}article{/block}\n\n{block \'preload\'}\n  <link rel=\"preload\" as=\"image\" href=\"/{$res.image}\">\n{/block}\n\n{block \'json_ld\'}\n{set $postLd = [ [\n  \'@context\' => \'https://schema.org\',\n  \'@type\' => \'BlogPosting\',\n  \'headline\' => $res.pagetitle,\n  \'description\' => $res.description,\n  \'image\' => ($site ~ $res.image),\n  \'datePublished\' => ($res.publishedon | date : \'Y-m-d\'),\n  \'author\' => [\'@type\' => \'Organization\', \'name\' => ($res.author ?: (\'imp.author_default\' | lexicon))],\n  \'publisher\' => [\'@type\' => \'Organization\', \'name\' => \'improvision\', \'logo\' => [\'@type\' => \'ImageObject\', \'url\' => ($site ~ \'assets/icons/logo.svg\')] ],\n  \'mainEntityOfPage\' => $url\n] ]}\n{$_modx->runSnippet(\'impJsonLd\', [\'extra\' => ($postLd | toJSON)])}\n{/block}\n\n{block \'main\'}\n{set $blogUrl = $_modx->makeUrl($res.parent, \'\', \'\', \'abs\')}\n{set $tags = $res.tags | split : \'||\'}\n{set $body = $_modx->runSnippet(\'impProse\', [\'html\' => $res.content, \'toc\' => 1])}\n{set $toc = $_modx->runSnippet(\'impProse\', [\'html\' => $res.content, \'mode\' => \'toc\'])}\n{set $related = $_modx->getResources(\n  [\'parent\' => $res.parent, \'published\' => 1, \'deleted\' => 0, \'id:!=\' => $res.id],\n  [\'sortby\' => \'publishedon\', \'sortdir\' => \'DESC\', \'limit\' => 3, \'includeTVs\' => \'image,card_image,post_category,featured_text\', \'tvPrefix\' => \'\']\n)}\n\n  <!-- ============================== ARTICLE HEAD ============================== -->\n  <section class=\"article-head\">\n    <div class=\"container\" data-stagger>\n{include \'breadcrumbs\'}\n      <h1 class=\"article-head__title\">{$res.longtitle ?: $res.pagetitle}</h1>\n      <p class=\"article-head__lead\">{$res.introtext}</p>\n      <ul class=\"article-meta\">\n{if $res.post_category}\n        <li><a class=\"article-meta__tag\" href=\"{$blogUrl}\">{(\'imp.pcat_\' ~ $res.post_category) | lexicon}</a></li>\n{/if}\n        <li class=\"article-meta__item\"><img src=\"/assets/icons/ic-user.svg\" width=\"20\" height=\"23\" alt=\"\">{$res.author ?: (\'imp.author_default\' | lexicon)}</li>\n        <li class=\"article-meta__item article-meta__item--muted\"><img src=\"/assets/icons/ic-calendar.svg\" width=\"22\" height=\"23\" alt=\"\"><time datetime=\"{$res.publishedon | date : \'Y-m-d\'}\">{$_modx->runSnippet(\'impDate\', [\'date\' => $res.publishedon])}</time></li>\n{if $res.read_time}\n        <li class=\"article-meta__item article-meta__item--muted\"><img src=\"/assets/icons/ic-time.svg\" width=\"22\" height=\"22\" alt=\"\"><span><span class=\"visually-hidden\">{\'imp.read_time\' | lexicon} </span>{$res.read_time} {\'imp.min\' | lexicon}</span></li>\n{/if}\n      </ul>\n      <div class=\"article-head__media\">\n        <img src=\"/{$res.image}\" {$_modx->runSnippet(\'impImg\', [\'src\' => $res.image])} alt=\"{$res.image_alt | esc}\" fetchpriority=\"high\">\n      </div>\n    </div>\n  </section>\n\n  <!-- ============================== ARTICLE BODY ============================== -->\n  <div class=\"article-layout\">\n    <div class=\"container container--article article-layout__grid\">\n      <article class=\"prose article-body\">\n        {$body}\n{if $res.tags}\n        <ul class=\"tags tags--article\" data-stagger>\n{foreach $tags as $t}\n          <li><a class=\"tag\" href=\"{$blogUrl}\">{(\'imp.pcat_\' ~ $t) | lexicon}</a></li>\n{/foreach}\n        </ul>\n{/if}\n      </article>\n\n      <aside class=\"article-aside\" aria-label=\"{\'imp.toc_aside_aria\' | lexicon}\">\n{if $toc}\n        <nav class=\"toc\" aria-labelledby=\"toc-title\" data-toc data-reveal=\"right\">\n          <p class=\"toc__title\" id=\"toc-title\">{\'imp.toc\' | lexicon}</p>\n          <ol class=\"toc__list\">\n{$toc}\n          </ol>\n        </nav>\n{/if}\n{include \'consult_card\' side=\'right\'}\n      </aside>\n    </div>\n  </div>\n\n{if $related}\n  <!-- ============================== RELATED POSTS ============================== -->\n  <section class=\"related-posts\" aria-labelledby=\"related-title\">\n    <div class=\"container\">\n      <div class=\"section-head\" data-stagger>\n        <h2 class=\"title\" id=\"related-title\">{\'imp.related_posts\' | lexicon}</h2>\n        <a class=\"btn btn--outline btn--fit\" href=\"{$blogUrl}\">{\'imp.all_posts\' | lexicon}{include \'icon_arrow\'}</a>\n      </div>\n      <div class=\"posts-grid\" data-stagger>\n{foreach $related as $p}\n{include \'card_post\' p=$p}\n{/foreach}\n      </div>\n    </div>\n  </section>\n{/if}\n\n{include \'contact\'}\n{/block}\n',0,NULL,1,'{core_path}components/improvision/elements/templates/article.tpl',''),
(12,0,0,'Контакти','Сторінка контактів',0,29,'',0,'{extends \'template:Base\'}\n\n{block \'json_ld\'}\n{set $orgLd = [ [\n  \'@context\' => \'https://schema.org\',\n  \'@type\' => \'GeneralContractor\',\n  \'name\' => \'improvision\',\n  \'url\' => $site,\n  \'telephone\' => $tel,\n  \'email\' => $g.email,\n  \'address\' => [\'@type\' => \'PostalAddress\', \'streetAddress\' => $res.map_address, \'addressLocality\' => $res.map_city, \'addressCountry\' => \'UA\'],\n  \'openingHours\' => ($res.opening_hours ?: \'Mo-Fr 09:00-18:00\')\n] ]}\n{$_modx->runSnippet(\'impJsonLd\', [\'extra\' => ($orgLd | toJSON)])}\n{/block}\n\n{block \'main\'}\n{set $cards = $res.contact_cards | fromJSON}\n{set $depts = $res.depts | fromJSON}\n{set $mapQuery = $res.map_query | escape : \'url\'}\n  <!-- ============================== PAGE INTRO + CARDS ============================== -->\n  <section class=\"page-intro page-intro--contacts\">\n    <div class=\"container\">\n      <div data-stagger>\n{include \'breadcrumbs\'}\n        <h1 class=\"page-intro__title\">{$res.longtitle ?: $res.pagetitle}</h1>\n        <p class=\"page-intro__text\">{$res.introtext}</p>\n      </div>\n{if $cards}\n      <ul class=\"contact-cards\" data-stagger>\n{foreach $cards as $c}\n        <li class=\"contact-card\">\n          <img class=\"contact-card__icon\" src=\"/{$c.icon}\" {$_modx->runSnippet(\'impImg\', [\'src\' => $c.icon])} alt=\"\">\n          <h2 class=\"contact-card__title\">{$c.title}</h2>\n{if $c.link}\n          <a class=\"contact-card__value\" href=\"{$c.link}\">{$c.value | replace : \"\\n\" : \'<br> \'}</a>\n{elseif $c.address}\n          <address class=\"contact-card__value\">{$c.value | replace : \"\\n\" : \'<br> \'}</address>\n{else}\n          <p class=\"contact-card__value\">{$c.value | replace : \"\\n\" : \'<br> \'}</p>\n{/if}\n{if $c.note}\n          <p class=\"contact-card__note\">{$c.note}</p>\n{/if}\n        </li>\n{/foreach}\n      </ul>\n{/if}\n    </div>\n  </section>\n\n  <!-- ============================== VISIT + DEPARTMENTS + FORM ============================== -->\n  <section class=\"contact-main\" id=\"contact\" aria-label=\"{\'imp.contacts_aria\' | lexicon}\">\n    <div class=\"container contact-main__grid\">\n      <div class=\"contact-main__col\">\n        <div class=\"visit-card\" data-reveal=\"left\">\n          <div class=\"visit-card__head\">\n            <h2 class=\"visit-card__title\">{$res.visit_title}</h2>\n{if $res.visit_badge}\n            <span class=\"visit-card__badge\">{$res.visit_badge}</span>\n{/if}\n          </div>\n          <p class=\"visit-card__text\">{$res.visit_text}</p>\n          <a class=\"btn btn--primary visit-card__btn\" href=\"#lead-form\" data-visit>{\'imp.order_visit\' | lexicon}{include \'icon_arrow\'}</a>\n        </div>\n{if $depts}\n        <div class=\"depts\" data-reveal=\"left\">\n          <div class=\"depts__head\">\n            <h2 class=\"depts__title\">{$res.depts_title}</h2>\n            <img src=\"/assets/icons/ic-mail.svg\" width=\"34\" height=\"32\" alt=\"\">\n          </div>\n          <dl class=\"depts__list\">\n{foreach $depts as $d}\n            <div class=\"depts__row\"><dt>{$d.label}</dt><dd><a href=\"mailto:{$d.email}\">{$d.email}</a></dd></div>\n{/foreach}\n          </dl>\n        </div>\n{/if}\n      </div>\n\n      <div class=\"lead-card\" id=\"lead-form\" data-reveal=\"right\">\n        <h2 class=\"lead-card__title\">{$res.lead_title ?: (\'imp.request\' | lexicon)}</h2>\n        <p class=\"lead-card__text\">{$res.lead_text}</p>\n        {include \'lead_form\' variant=\'boxed\' modal=0}\n      </div>\n    </div>\n  </section>\n\n  <!-- ============================== MAP ============================== -->\n  <section class=\"map\" aria-label=\"{\'imp.map_aria\' | lexicon}\">\n    <div class=\"map__frame\" data-map>\n      <img class=\"map__placeholder\" src=\"/{$res.map_image ?: \'assets/img/photos/map-placeholder.jpg\'}\" width=\"1417\" height=\"629\" alt=\"\" loading=\"lazy\">\n      <iframe class=\"map__iframe\" title=\"{\'imp.map_title\' | lexicon : [\'address\' => ($res.map_address ~ \', \' ~ $res.map_city)] | esc}\" src=\"https://maps.google.com/maps?q={$mapQuery}&amp;z=16&amp;hl={$lang}&amp;output=embed\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\n    </div>\n    <div class=\"map__card\">\n      <p class=\"map__name\">{$res.map_name ?: \'Improvision\'}</p>\n      <p class=\"map__address\">{$res.map_address}</p>\n      <p class=\"map__city\">{$res.map_city}</p>\n      <a class=\"map__route\" href=\"https://www.google.com/maps/dir/?api=1&amp;destination={$mapQuery}\" target=\"_blank\" rel=\"noopener\">{\'imp.route\' | lexicon}{include \'icon_arrow\'}</a>\n    </div>\n  </section>\n{/block}\n',0,NULL,1,'{core_path}components/improvision/elements/templates/contacts.tpl',''),
(13,0,0,'Текстова сторінка','Текстова сторінка: політика, умови, 404 тощо',0,29,'',0,'{extends \'template:Base\'}\n\n{block \'json_ld\'}\n{$_modx->runSnippet(\'impJsonLd\')}\n{/block}\n\n{block \'main\'}\n  <!-- ============================== PAGE INTRO ============================== -->\n  <section class=\"page-intro\">\n    <div class=\"container\" data-stagger>\n{include \'breadcrumbs\'}\n      <h1 class=\"page-intro__title\">{$res.longtitle ?: $res.pagetitle}</h1>\n{if $res.introtext}\n      <p class=\"page-intro__text\">{$res.introtext}</p>\n{/if}\n    </div>\n  </section>\n\n  <div class=\"text-page\">\n    <div class=\"container\">\n      <div class=\"prose\">\n        {$_modx->runSnippet(\'impProse\', [\'html\' => $res.content])}\n      </div>\n    </div>\n  </div>\n{if $res.show_contact}\n{include \'contact\'}\n{/if}\n{/block}\n',0,NULL,1,'{core_path}components/improvision/elements/templates/text.tpl',''),
(14,0,0,'Загальні блоки','Дані для спільних блоків (не сторінка)',0,29,'',0,'{* \"Загальні блоки\" — data holder, not a page. Kept unpublished; if opened directly, show 404. *}\n{$_modx->sendError(\'page_not_found\')}\n',0,NULL,1,'{core_path}components/improvision/elements/templates/globals.tpl',''),
(15,0,0,'Заявка (обробник форм)','Приймає заявки з форм; не змінювати',0,29,'',0,'[[!impLead]]\n',0,NULL,1,'{core_path}components/improvision/elements/templates/lead.tpl','');
/*!40000 ALTER TABLE `modx_site_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_tmplvar_access`
--

DROP TABLE IF EXISTS `modx_site_tmplvar_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_site_tmplvar_access` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) unsigned NOT NULL DEFAULT 0,
  `documentgroup` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `tmplvar_template` (`tmplvarid`,`documentgroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_tmplvar_access`
--

LOCK TABLES `modx_site_tmplvar_access` WRITE;
/*!40000 ALTER TABLE `modx_site_tmplvar_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_site_tmplvar_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_tmplvar_contentvalues`
--

DROP TABLE IF EXISTS `modx_site_tmplvar_contentvalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) unsigned NOT NULL DEFAULT 0,
  `contentid` int(10) unsigned NOT NULL DEFAULT 0,
  `value` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tv_cnt` (`tmplvarid`,`contentid`),
  KEY `tmplvarid` (`tmplvarid`),
  KEY `contentid` (`contentid`)
) ENGINE=InnoDB AUTO_INCREMENT=983 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_tmplvar_contentvalues`
--

LOCK TABLES `modx_site_tmplvar_contentvalues` WRITE;
/*!40000 ALTER TABLE `modx_site_tmplvar_contentvalues` DISABLE KEYS */;
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES
(1,3,1,'Improvision — будівництво і брендинг комерційних просторів, Київ'),
(2,4,1,'Improvision — будуємо та брендуємо комерційні простори під ключ'),
(3,5,1,'Повний цикл від проєкту й фасаду до реклами та здачі об\'єкта. Понад 15 років реалізуємо магазини, ресторани та бізнес-центри.'),
(4,16,1,'Будуємо та брендуємо\nкомерційні простори\nпід ключ'),
(5,8,1,'assets/img/photos/hero.jpg'),
(6,10,1,'assets/img/photos/hero-960.jpg'),
(7,11,1,'assets/img/photos/hero-mobile.jpg'),
(8,9,1,'Портал і світлодіодне оформлення ресторану KFC у ТРЦ — обʼєкт improvision'),
(9,17,1,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-production.svg\",\"text\":\"Власне\\nвиробництво\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-contract.svg\",\"text\":\"Строки\\nв договорі\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-guarantee.svg\",\"text\":\"Гарантія\\nна роботи\"}]'),
(10,7,1,'Будівництво та брендування комерційних просторів під ключ: вентильовані фасади, вхідні групи, зовнішня та інтерʼєрна реклама.'),
(11,18,1,'Один підрядник\nна весь об\'єкт'),
(12,19,1,'Improvision — це команда, що бере комерційний об\'єкт від ідеї до відкриття. Ми проєктуємо, виготовляємо у власному цеху та монтуємо все, що робить простір готовим до роботи: фасади, вхідні групи, рекламу та оздоблення.'),
(13,20,1,'Такий підхід прибирає стики між підрядниками, скорочує строки та закріплює єдину відповідальність за результат'),
(14,21,1,'Напрямки робіт — від\nфасаду до вивіски'),
(15,22,1,'Вибрані роботи'),
(16,23,1,'Досвід, який\nговорить за нас'),
(17,24,1,'15+ років створюємо та реалізуємо комерційні простори — від окремих фасадних рішень до комплексних об’єктів. За нашими проєктами — сотні реалізованих об’єктів, сильна команда та тисячі квадратних метрів втілених рішень.'),
(18,2,1,'web:1;en:2;ru:3'),
(19,3,2,'Improvision — construction and branding of commercial spaces, Kyiv'),
(20,4,2,'Improvision — turnkey construction and branding of commercial spaces'),
(21,5,2,'Full cycle from design and facade to signage and handover. For over 15 years we have been delivering stores, restaurants and business centres.'),
(22,16,2,'Turnkey construction\nand branding of\ncommercial spaces'),
(23,8,2,'assets/img/photos/hero.jpg'),
(24,10,2,'assets/img/photos/hero-960.jpg'),
(25,11,2,'assets/img/photos/hero-mobile.jpg'),
(26,9,2,'KFC restaurant portal with LED design in a shopping mall — an improvision project'),
(27,17,2,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-production.svg\",\"text\":\"In-house\\nproduction\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-contract.svg\",\"text\":\"Deadlines\\nin the contract\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-guarantee.svg\",\"text\":\"Warranty\\non works\"}]'),
(28,7,2,'Turnkey construction and branding of commercial spaces: ventilated facades, entrance groups, outdoor and interior signage.'),
(29,18,2,'One contractor\nfor the whole project'),
(30,19,2,'Improvision is a team that takes a commercial property from idea to opening. We design, manufacture in our own workshop and install everything that makes a space ready for business: facades, entrance groups, signage and finishing.'),
(31,20,2,'This approach removes the gaps between contractors, shortens timelines and establishes single responsibility for the result'),
(32,21,2,'What we do — from\nfacade to sign'),
(33,22,2,'Selected work'),
(34,23,2,'Experience that\nspeaks for itself'),
(35,24,2,'For 15+ years we have been creating and delivering commercial spaces — from individual facade solutions to complex projects. Behind our work are hundreds of completed projects, a strong team and thousands of square metres of realised solutions.'),
(36,2,2,'web:1;en:2;ru:3'),
(37,3,3,'Improvision — строительство и брендинг коммерческих пространств, Киев'),
(38,4,3,'Improvision — строим и брендируем коммерческие пространства под ключ'),
(39,5,3,'Полный цикл от проекта и фасада до рекламы и сдачи объекта. Более 15 лет реализуем магазины, рестораны и бизнес-центры.'),
(40,16,3,'Строим и брендируем\nкоммерческие\nпространства под ключ'),
(41,8,3,'assets/img/photos/hero.jpg'),
(42,10,3,'assets/img/photos/hero-960.jpg'),
(43,11,3,'assets/img/photos/hero-mobile.jpg'),
(44,9,3,'Портал и светодиодное оформление ресторана KFC в ТРЦ — объект improvision'),
(45,17,3,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-production.svg\",\"text\":\"Собственное\\nпроизводство\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-contract.svg\",\"text\":\"Сроки\\nв договоре\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-guarantee.svg\",\"text\":\"Гарантия\\nна работы\"}]'),
(46,7,3,'Строительство и брендирование коммерческих пространств под ключ: вентилируемые фасады, входные группы, наружная и интерьерная реклама.'),
(47,18,3,'Один подрядчик\nна весь объект'),
(48,19,3,'Improvision — это команда, которая ведёт коммерческий объект от идеи до открытия. Мы проектируем, изготавливаем в собственном цехе и монтируем всё, что делает пространство готовым к работе: фасады, входные группы, рекламу и отделку.'),
(49,20,3,'Такой подход убирает стыки между подрядчиками, сокращает сроки и закрепляет единую ответственность за результат'),
(50,21,3,'Направления работ — от\nфасада до вывески'),
(51,22,3,'Избранные работы'),
(52,23,3,'Опыт, который\nговорит за нас'),
(53,24,3,'15+ лет создаём и реализуем коммерческие пространства — от отдельных фасадных решений до комплексных объектов. За нашими проектами — сотни реализованных объектов, сильная команда и тысячи квадратных метров воплощённых решений.'),
(54,2,3,'web:1;en:2;ru:3'),
(55,3,4,'Про компанію improvision — 15+ років комерційних просторів під ключ'),
(56,4,4,'Про компанію improvision'),
(57,5,4,'Будуємо та брендуємо комерційні простори понад 15 років: проєкт, власне виробництво, монтаж і здача під ключ.'),
(58,16,4,'Будуємо та брендуємо комерційні\nпростори понад 15 років'),
(59,8,4,'assets/img/photos/about-hero.jpg'),
(60,9,4,'Бізнес-центр з вентильованим фасадом — обʼєкт improvision'),
(61,25,4,'Один підрядник, який\nвідповідає за весь обʼєкт'),
(62,14,4,'assets/img/photos/about-mark.jpg'),
(63,15,4,'Бутик Intimissimi — проєкт improvision'),
(64,26,4,'Повний цикл — від ідеї до відкриття'),
(65,27,4,'Шлях компанії'),
(66,28,4,'[{\"MIGX_id\":\"1\",\"year\":\"2009\",\"caption\":\"Заснування improvision у Києві\",\"image1\":\"assets/img/photos/history-2009-1.jpg\",\"alt1\":\"Світлова вивіска improvision — рекламне виробництво\",\"image2\":\"assets/img/photos/history-2009-2.jpg\",\"alt2\":\"Урочисте відкриття — перерізання стрічки\"},{\"MIGX_id\":\"2\",\"year\":\"2013\",\"caption\":\"Опис етапу 2013 року — текст уточнюється\",\"image1\":\"assets/img/photos/service-entrance.jpg\",\"alt1\":\"\",\"image2\":\"assets/img/photos/project-intimissimi.jpg\",\"alt2\":\"\"},{\"MIGX_id\":\"3\",\"year\":\"2017\",\"caption\":\"Опис етапу 2017 року — текст уточнюється\",\"image1\":\"assets/img/photos/project-kfc.jpg\",\"alt1\":\"\",\"image2\":\"assets/img/photos/project-lego.jpg\",\"alt2\":\"\"},{\"MIGX_id\":\"4\",\"year\":\"2021\",\"caption\":\"Опис етапу 2021 року — текст уточнюється\",\"image1\":\"assets/img/photos/service-facades.jpg\",\"alt1\":\"\",\"image2\":\"assets/img/photos/project-carnegie.jpg\",\"alt2\":\"\"},{\"MIGX_id\":\"5\",\"year\":\"2026\",\"caption\":\"Опис етапу 2026 року — текст уточнюється\",\"image1\":\"assets/img/photos/project-calzedonia.jpg\",\"alt1\":\"\",\"image2\":\"assets/img/photos/project-globus.jpg\",\"alt2\":\"\"}]'),
(67,29,4,'Далі буде'),
(68,30,4,'40 фахівців\nпід одним дахом'),
(69,31,4,'Проєктувальники, інженери, власне виробництво та монтажні бригади працюють як єдина команда. Це дозволяє контролювати якість і строки на кожному етапі.'),
(70,32,4,'[{\"MIGX_id\":\"1\",\"label\":\"Проєктувальники\\nта інженери\",\"value\":\"12\"},{\"MIGX_id\":\"2\",\"label\":\"Власне\\nвиробництво\",\"value\":\"15\"},{\"MIGX_id\":\"3\",\"label\":\"Монтажні\\nбригади\",\"value\":\"9\"},{\"MIGX_id\":\"4\",\"label\":\"Менеджмент\\nпроєктів\",\"value\":\"4\"}]'),
(71,2,4,'web:4;en:5;ru:6'),
(72,3,5,'About improvision — 15+ years of turnkey commercial spaces'),
(73,4,5,'About improvision'),
(74,5,5,'We have been building and branding commercial spaces for over 15 years: design, in-house production, installation and turnkey handover.'),
(75,16,5,'Building and branding commercial\nspaces for over 15 years'),
(76,8,5,'assets/img/photos/about-hero.jpg'),
(77,9,5,'Business centre with a ventilated facade — an improvision project'),
(78,25,5,'One contractor\nfor the whole project'),
(79,14,5,'assets/img/photos/about-mark.jpg'),
(80,15,5,'Intimissimi boutique — an improvision project'),
(81,26,5,'Full cycle — from idea to opening'),
(82,27,5,'Our story'),
(83,28,5,'[{\"MIGX_id\":\"1\",\"year\":\"2009\",\"caption\":\"improvision founded in Kyiv\",\"image1\":\"assets/img/photos/history-2009-1.jpg\",\"alt1\":\"improvision illuminated sign — advertising production\",\"image2\":\"assets/img/photos/history-2009-2.jpg\",\"alt2\":\"Grand opening — ribbon cutting\"},{\"MIGX_id\":\"2\",\"year\":\"2013\",\"caption\":\"2013 milestone — description to be confirmed\",\"image1\":\"assets/img/photos/service-entrance.jpg\",\"alt1\":\"\",\"image2\":\"assets/img/photos/project-intimissimi.jpg\",\"alt2\":\"\"},{\"MIGX_id\":\"3\",\"year\":\"2017\",\"caption\":\"2017 milestone — description to be confirmed\",\"image1\":\"assets/img/photos/project-kfc.jpg\",\"alt1\":\"\",\"image2\":\"assets/img/photos/project-lego.jpg\",\"alt2\":\"\"},{\"MIGX_id\":\"4\",\"year\":\"2021\",\"caption\":\"2021 milestone — description to be confirmed\",\"image1\":\"assets/img/photos/service-facades.jpg\",\"alt1\":\"\",\"image2\":\"assets/img/photos/project-carnegie.jpg\",\"alt2\":\"\"},{\"MIGX_id\":\"5\",\"year\":\"2026\",\"caption\":\"2026 milestone — description to be confirmed\",\"image1\":\"assets/img/photos/project-calzedonia.jpg\",\"alt1\":\"\",\"image2\":\"assets/img/photos/project-globus.jpg\",\"alt2\":\"\"}]'),
(84,29,5,'To be continued'),
(85,30,5,'40 specialists\nunder one roof'),
(86,31,5,'Designers, engineers, in-house production and installation crews work as one team. This lets us control quality and timelines at every stage.'),
(87,32,5,'[{\"MIGX_id\":\"1\",\"label\":\"Designers\\nand engineers\",\"value\":\"12\"},{\"MIGX_id\":\"2\",\"label\":\"In-house\\nproduction\",\"value\":\"15\"},{\"MIGX_id\":\"3\",\"label\":\"Installation\\ncrews\",\"value\":\"9\"},{\"MIGX_id\":\"4\",\"label\":\"Project\\nmanagement\",\"value\":\"4\"}]'),
(88,2,5,'web:4;en:5;ru:6'),
(89,3,6,'О компании improvision — 15+ лет коммерческих пространств под ключ'),
(90,4,6,'О компании improvision'),
(91,5,6,'Строим и брендируем коммерческие пространства более 15 лет: проект, собственное производство, монтаж и сдача под ключ.'),
(92,16,6,'Строим и брендируем коммерческие\nпространства более 15 лет'),
(93,8,6,'assets/img/photos/about-hero.jpg'),
(94,9,6,'Бизнес-центр с вентилируемым фасадом — объект improvision'),
(95,25,6,'Один подрядчик\nотвечает за весь объект'),
(96,14,6,'assets/img/photos/about-mark.jpg'),
(97,15,6,'Бутик Intimissimi — проект improvision'),
(98,26,6,'Полный цикл — от идеи до открытия'),
(99,27,6,'Путь компании'),
(100,28,6,'[{\"MIGX_id\":\"1\",\"year\":\"2009\",\"caption\":\"Основание improvision в Киеве\",\"image1\":\"assets/img/photos/history-2009-1.jpg\",\"alt1\":\"Световая вывеска improvision — рекламное производство\",\"image2\":\"assets/img/photos/history-2009-2.jpg\",\"alt2\":\"Торжественное открытие — перерезание ленты\"},{\"MIGX_id\":\"2\",\"year\":\"2013\",\"caption\":\"Описание этапа 2013 года — текст уточняется\",\"image1\":\"assets/img/photos/service-entrance.jpg\",\"alt1\":\"\",\"image2\":\"assets/img/photos/project-intimissimi.jpg\",\"alt2\":\"\"},{\"MIGX_id\":\"3\",\"year\":\"2017\",\"caption\":\"Описание этапа 2017 года — текст уточняется\",\"image1\":\"assets/img/photos/project-kfc.jpg\",\"alt1\":\"\",\"image2\":\"assets/img/photos/project-lego.jpg\",\"alt2\":\"\"},{\"MIGX_id\":\"4\",\"year\":\"2021\",\"caption\":\"Описание этапа 2021 года — текст уточняется\",\"image1\":\"assets/img/photos/service-facades.jpg\",\"alt1\":\"\",\"image2\":\"assets/img/photos/project-carnegie.jpg\",\"alt2\":\"\"},{\"MIGX_id\":\"5\",\"year\":\"2026\",\"caption\":\"Описание этапа 2026 года — текст уточняется\",\"image1\":\"assets/img/photos/project-calzedonia.jpg\",\"alt1\":\"\",\"image2\":\"assets/img/photos/project-globus.jpg\",\"alt2\":\"\"}]'),
(101,29,6,'Продолжение следует'),
(102,30,6,'40 специалистов\nпод одной крышей'),
(103,31,6,'Проектировщики, инженеры, собственное производство и монтажные бригады работают как единая команда. Это позволяет контролировать качество и сроки на каждом этапе.'),
(104,32,6,'[{\"MIGX_id\":\"1\",\"label\":\"Проектировщики\\nи инженеры\",\"value\":\"12\"},{\"MIGX_id\":\"2\",\"label\":\"Собственное\\nпроизводство\",\"value\":\"15\"},{\"MIGX_id\":\"3\",\"label\":\"Монтажные\\nбригады\",\"value\":\"9\"},{\"MIGX_id\":\"4\",\"label\":\"Менеджмент\\nпроектов\",\"value\":\"4\"}]'),
(105,2,6,'web:4;en:5;ru:6'),
(106,2,7,'web:7;en:8;ru:9'),
(107,2,8,'web:7;en:8;ru:9'),
(108,2,9,'web:7;en:8;ru:9'),
(109,2,10,'web:10;en:11;ru:12'),
(110,2,11,'web:10;en:11;ru:12'),
(111,2,12,'web:10;en:11;ru:12'),
(112,3,13,'Проєкти improvision — магазини, ресторани, фасади бізнес-центрів'),
(113,4,13,'Проєкти improvision'),
(114,5,13,'Реалізовані обʼєкти для провідних брендів: бутики й ресторани в ТРЦ, вхідні групи, вивіски та вентильовані фасади бізнес-центрів у Києві.'),
(115,2,13,'web:13;en:14;ru:15'),
(116,3,14,'improvision projects — stores, restaurants, business centre facades'),
(117,4,14,'improvision projects'),
(118,5,14,'Completed projects for leading brands: mall boutiques and restaurants, entrance groups, signage and ventilated facades of business centres in Kyiv.'),
(119,2,14,'web:13;en:14;ru:15'),
(120,3,15,'Проекты improvision — магазины, рестораны, фасады бизнес-центров'),
(121,4,15,'Проекты improvision'),
(122,5,15,'Реализованные объекты для ведущих брендов: бутики и рестораны в ТРЦ, входные группы, вывески и вентилируемые фасады бизнес-центров в Киеве.'),
(123,2,15,'web:13;en:14;ru:15'),
(124,3,16,'Блог improvision — статті про будівництво, фасади та рекламу'),
(125,4,16,'Статті та поради — блог improvision'),
(126,5,16,'Досвід, кейси та практичні матеріали про будівництво, вентильовані фасади, вхідні групи та брендування комерційних просторів.'),
(127,2,16,'web:16;en:17;ru:18'),
(128,3,17,'improvision blog — articles on construction, facades and signage'),
(129,4,17,'Articles and tips — improvision blog'),
(130,5,17,'Experience, case studies and practical guides on construction, ventilated facades, entrance groups and branding of commercial spaces.'),
(131,2,17,'web:16;en:17;ru:18'),
(132,3,18,'Блог improvision — статьи о строительстве, фасадах и рекламе'),
(133,4,18,'Статьи и советы — блог improvision'),
(134,5,18,'Опыт, кейсы и практические материалы о строительстве, вентилируемых фасадах, входных группах и брендировании коммерческих пространств.'),
(135,2,18,'web:16;en:17;ru:18'),
(136,2,19,'web:19;en:20;ru:21'),
(137,2,20,'web:19;en:20;ru:21'),
(138,2,21,'web:19;en:20;ru:21'),
(139,3,22,'Контакти improvision — телефон, email, адреса в Києві'),
(140,4,22,'Контакти improvision'),
(141,5,22,'Звʼяжіться з improvision: +38 044 228 88 69, office@improvision.com.ua, вул. Здолбунівська, 7Г, Київ. Безкоштовний виїзд спеціаліста на обʼєкт.'),
(142,61,22,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-phone.svg\",\"title\":\"Телефон\",\"value\":\"+38 044 228 88 69\",\"link\":\"tel:+380442288869\",\"address\":\"\",\"note\":\"Пн–Пт, 9:00–18:00\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-mail.svg\",\"title\":\"Email\",\"value\":\"office@improvision.com.ua\",\"link\":\"mailto:office@improvision.com.ua\",\"address\":\"\",\"note\":\"Загальні питання\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-pin.svg\",\"title\":\"Адреса\",\"value\":\"вул. Здолбунівська, 7Г,\\nофіс 19\",\"link\":\"\",\"address\":\"1\",\"note\":\"Київ, Україна\"},{\"MIGX_id\":\"4\",\"icon\":\"assets/icons/ic-clock.svg\",\"title\":\"Графік\",\"value\":\"Пн–Пт, 9:00–18:00\",\"link\":\"\",\"address\":\"\",\"note\":\"Сб–Нд — вихідні\"}]'),
(143,62,22,'Виїзд спеціаліста на обʼєкт'),
(144,63,22,'Безкоштовно'),
(145,64,22,'Інженер приїде на обʼєкт, виконає обміри та оцінить обсяг робіт — без оплати та без зобовʼязань щодо подальшої співпраці.'),
(146,65,22,'Відділи'),
(147,66,22,'[{\"MIGX_id\":\"1\",\"label\":\"Загальні питання\",\"email\":\"office@improvision.com.ua\"},{\"MIGX_id\":\"2\",\"label\":\"Відділ продажів\",\"email\":\"sales@improvision.com.ua\"},{\"MIGX_id\":\"3\",\"label\":\"Карʼєра\",\"email\":\"hr@improvision.com.ua\"}]'),
(148,67,22,'Залишити заявку'),
(149,68,22,'Заповніть форму — і ми підготуємо орієнтовний розрахунок.'),
(150,69,22,'вул. Здолбунівська, 7Г, Київ'),
(151,70,22,'Improvision'),
(152,71,22,'вул. Здолбунівська, 7Г, офіс 19'),
(153,72,22,'Київ, Україна'),
(154,73,22,'assets/img/photos/map-placeholder.jpg'),
(155,74,22,'Mo-Fr 09:00-18:00'),
(156,2,22,'web:22;en:23;ru:24'),
(157,3,23,'improvision contacts — phone, email, address in Kyiv'),
(158,4,23,'improvision contacts'),
(159,5,23,'Contact improvision: +38 044 228 88 69, office@improvision.com.ua, 7G Zdolbunivska St, Kyiv. Free on-site visit by a specialist.'),
(160,61,23,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-phone.svg\",\"title\":\"Phone\",\"value\":\"+38 044 228 88 69\",\"link\":\"tel:+380442288869\",\"address\":\"\",\"note\":\"Mon–Fri, 9:00–18:00\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-mail.svg\",\"title\":\"Email\",\"value\":\"office@improvision.com.ua\",\"link\":\"mailto:office@improvision.com.ua\",\"address\":\"\",\"note\":\"General enquiries\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-pin.svg\",\"title\":\"Address\",\"value\":\"7G Zdolbunivska St,\\noffice 19\",\"link\":\"\",\"address\":\"1\",\"note\":\"Kyiv, Ukraine\"},{\"MIGX_id\":\"4\",\"icon\":\"assets/icons/ic-clock.svg\",\"title\":\"Opening hours\",\"value\":\"Mon–Fri, 9:00–18:00\",\"link\":\"\",\"address\":\"\",\"note\":\"Sat–Sun — closed\"}]'),
(161,62,23,'Specialist site visit'),
(162,63,23,'Free'),
(163,64,23,'An engineer will visit the site, take measurements and assess the scope of work — free of charge and with no obligation to work with us further.'),
(164,65,23,'Departments'),
(165,66,23,'[{\"MIGX_id\":\"1\",\"label\":\"General enquiries\",\"email\":\"office@improvision.com.ua\"},{\"MIGX_id\":\"2\",\"label\":\"Sales\",\"email\":\"sales@improvision.com.ua\"},{\"MIGX_id\":\"3\",\"label\":\"Careers\",\"email\":\"hr@improvision.com.ua\"}]'),
(166,67,23,'Send a request'),
(167,68,23,'Fill in the form and we’ll prepare a preliminary estimate.'),
(168,69,23,'вул. Здолбунівська, 7Г, Київ'),
(169,70,23,'Improvision'),
(170,71,23,'7G Zdolbunivska St, office 19'),
(171,72,23,'Kyiv, Ukraine'),
(172,73,23,'assets/img/photos/map-placeholder.jpg'),
(173,74,23,'Mo-Fr 09:00-18:00'),
(174,2,23,'web:22;en:23;ru:24'),
(175,3,24,'Контакты improvision — телефон, email, адрес в Киеве'),
(176,4,24,'Контакты improvision'),
(177,5,24,'Свяжитесь с improvision: +38 044 228 88 69, office@improvision.com.ua, ул. Здолбуновская, 7Г, Киев. Бесплатный выезд специалиста на объект.'),
(178,61,24,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-phone.svg\",\"title\":\"Телефон\",\"value\":\"+38 044 228 88 69\",\"link\":\"tel:+380442288869\",\"address\":\"\",\"note\":\"Пн–Пт, 9:00–18:00\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-mail.svg\",\"title\":\"Email\",\"value\":\"office@improvision.com.ua\",\"link\":\"mailto:office@improvision.com.ua\",\"address\":\"\",\"note\":\"Общие вопросы\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-pin.svg\",\"title\":\"Адрес\",\"value\":\"ул. Здолбуновская, 7Г,\\nофис 19\",\"link\":\"\",\"address\":\"1\",\"note\":\"Киев, Украина\"},{\"MIGX_id\":\"4\",\"icon\":\"assets/icons/ic-clock.svg\",\"title\":\"График\",\"value\":\"Пн–Пт, 9:00–18:00\",\"link\":\"\",\"address\":\"\",\"note\":\"Сб–Вс — выходные\"}]'),
(179,62,24,'Выезд специалиста на объект'),
(180,63,24,'Бесплатно'),
(181,64,24,'Инженер приедет на объект, выполнит замеры и оценит объём работ — без оплаты и без обязательств по дальнейшему сотрудничеству.'),
(182,65,24,'Отделы'),
(183,66,24,'[{\"MIGX_id\":\"1\",\"label\":\"Общие вопросы\",\"email\":\"office@improvision.com.ua\"},{\"MIGX_id\":\"2\",\"label\":\"Отдел продаж\",\"email\":\"sales@improvision.com.ua\"},{\"MIGX_id\":\"3\",\"label\":\"Карьера\",\"email\":\"hr@improvision.com.ua\"}]'),
(184,67,24,'Оставить заявку'),
(185,68,24,'Заполните форму — и мы подготовим ориентировочный расчёт.'),
(186,69,24,'вул. Здолбунівська, 7Г, Київ'),
(187,70,24,'Improvision'),
(188,71,24,'ул. Здолбуновская, 7Г, офис 19'),
(189,72,24,'Киев, Украина'),
(190,73,24,'assets/img/photos/map-placeholder.jpg'),
(191,74,24,'Mo-Fr 09:00-18:00'),
(192,2,24,'web:22;en:23;ru:24'),
(193,2,25,'web:25;en:26;ru:27'),
(194,2,26,'web:25;en:26;ru:27'),
(195,2,27,'web:25;en:26;ru:27'),
(196,2,28,'web:28;en:29;ru:30'),
(197,2,29,'web:28;en:29;ru:30'),
(198,2,30,'web:28;en:29;ru:30'),
(199,2,31,'web:31;en:32;ru:33'),
(200,2,32,'web:31;en:32;ru:33'),
(201,2,33,'web:31;en:32;ru:33'),
(202,76,34,'+38 044 228 88 69'),
(203,77,34,'office@improvision.com.ua'),
(204,78,34,'м. Київ, літера В, вулиця Кутузова, 18/7'),
(205,79,34,'вул. Кутузова, 18/7, літера В'),
(206,72,34,'Київ'),
(207,80,34,'[{\"MIGX_id\":\"1\",\"title\":\"Instagram\",\"url\":\"https://www.instagram.com/\"},{\"MIGX_id\":\"2\",\"title\":\"Facebook\",\"url\":\"https://www.facebook.com/\"},{\"MIGX_id\":\"3\",\"title\":\"Linkedin\",\"url\":\"https://www.linkedin.com/\"}]'),
(208,81,34,'Нам довіряють провідні бренди'),
(209,82,34,'[{\"MIGX_id\":\"1\",\"image\":\"assets/img/brands/arbat.svg\",\"alt\":\"Арбат Престиж\"},{\"MIGX_id\":\"2\",\"image\":\"assets/img/brands/baldessarini.svg\",\"alt\":\"Baldessarini Hugo Boss\"},{\"MIGX_id\":\"3\",\"image\":\"assets/img/brands/calzedonia.svg\",\"alt\":\"Calzedonia\"},{\"MIGX_id\":\"4\",\"image\":\"assets/img/brands/globus.svg\",\"alt\":\"Глобус Банк\"},{\"MIGX_id\":\"5\",\"image\":\"assets/img/brands/intimissimi.svg\",\"alt\":\"Intimissimi\"},{\"MIGX_id\":\"6\",\"image\":\"assets/img/brands/kfc.svg\",\"alt\":\"KFC\"}]'),
(210,83,34,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-design.svg\",\"title\":\"Проєктування\",\"text\":\"Заміри, концепція, робоча документація та кошторис\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-gear.svg\",\"title\":\"Виробництво\",\"text\":\"Власний цех: метал, композит, світлотехніка, реклама\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-tools.svg\",\"title\":\"Монтаж\",\"text\":\"Будівельні та монтажні роботи власними бригадами\"},{\"MIGX_id\":\"4\",\"icon\":\"assets/icons/ic-handover.svg\",\"title\":\"Здача «під ключ»\",\"text\":\"Введення в експлуатацію, гарантія та сервіс\"}]'),
(211,84,34,'Причини, за якими\nнас обирають'),
(212,85,34,'assets/img/photos/why-bg.jpg'),
(213,86,34,'[{\"MIGX_id\":\"1\",\"title\":\"Повний цикл «під ключ»\",\"text\":\"Один договір і один підрядник на весь обʼєкт — від проєкту до відкриття.\"},{\"MIGX_id\":\"2\",\"title\":\"Масштаб і складність\",\"text\":\"Беремося за обʼєкти будь-якої складності: від вивіски до фасаду бізнес-центру.\"},{\"MIGX_id\":\"3\",\"title\":\"Провідні бренди\",\"text\":\"Досвід роботи з міжнародними мережами та вимогливими замовниками.\"},{\"MIGX_id\":\"4\",\"title\":\"Власне виробництво\",\"text\":\"Металообробка, композит і світлотехніка у власному цеху — контроль якості та строків.\"},{\"MIGX_id\":\"5\",\"title\":\"Дотримання термінів\",\"text\":\"Плануємо роботи поетапно й фіксуємо строки в договорі.\"},{\"MIGX_id\":\"6\",\"title\":\"Гарантія та сервіс\",\"text\":\"Гарантія на виконані роботи та подальше сервісне обслуговування обʼєктів.\"}]'),
(214,87,34,'[{\"MIGX_id\":\"1\",\"label\":\"Реалізованих\\nпроєктів\",\"value\":\"480\",\"plus\":\"1\",\"unit\":\"\"},{\"MIGX_id\":\"2\",\"label\":\"Років\\nдосвіду\",\"value\":\"15\",\"plus\":\"1\",\"unit\":\"\"},{\"MIGX_id\":\"3\",\"label\":\"Фахівців\\nу команді\",\"value\":\"40\",\"plus\":\"\",\"unit\":\"\"},{\"MIGX_id\":\"4\",\"label\":\"Змонтованих\\nфасадів\",\"value\":\"120\",\"plus\":\"\",\"unit\":\"тис.м²\"}]'),
(215,88,34,'Обговоримо ваш проєкт?'),
(216,89,34,'Залиште заявку — ми зв\'яжемося протягом робочого дня, уточнимо задачу та підготуємо орієнтовний розрахунок.'),
(217,90,34,'assets/img/photos/project-calzedonia.jpg'),
(218,91,34,'Вивіска Calzedonia — проєкт improvision'),
(219,2,34,'web:34;en:35;ru:36'),
(220,76,35,'+38 044 228 88 69'),
(221,77,35,'office@improvision.com.ua'),
(222,78,35,'18/7 Kutuzova St, building V, Kyiv'),
(223,79,35,'18/7 Kutuzova St, building V'),
(224,72,35,'Kyiv'),
(225,80,35,'[{\"MIGX_id\":\"1\",\"title\":\"Instagram\",\"url\":\"https://www.instagram.com/\"},{\"MIGX_id\":\"2\",\"title\":\"Facebook\",\"url\":\"https://www.facebook.com/\"},{\"MIGX_id\":\"3\",\"title\":\"Linkedin\",\"url\":\"https://www.linkedin.com/\"}]'),
(226,81,35,'Trusted by leading brands'),
(227,82,35,'[{\"MIGX_id\":\"1\",\"image\":\"assets/img/brands/arbat.svg\",\"alt\":\"Arbat Prestige\"},{\"MIGX_id\":\"2\",\"image\":\"assets/img/brands/baldessarini.svg\",\"alt\":\"Baldessarini Hugo Boss\"},{\"MIGX_id\":\"3\",\"image\":\"assets/img/brands/calzedonia.svg\",\"alt\":\"Calzedonia\"},{\"MIGX_id\":\"4\",\"image\":\"assets/img/brands/globus.svg\",\"alt\":\"Globus Bank\"},{\"MIGX_id\":\"5\",\"image\":\"assets/img/brands/intimissimi.svg\",\"alt\":\"Intimissimi\"},{\"MIGX_id\":\"6\",\"image\":\"assets/img/brands/kfc.svg\",\"alt\":\"KFC\"}]'),
(228,83,35,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-design.svg\",\"title\":\"Design\",\"text\":\"Measurements, concept, working documentation and estimate\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-gear.svg\",\"title\":\"Production\",\"text\":\"Own workshop: metal, composite, lighting, signage\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-tools.svg\",\"title\":\"Installation\",\"text\":\"Construction and installation by our own crews\"},{\"MIGX_id\":\"4\",\"icon\":\"assets/icons/ic-handover.svg\",\"title\":\"Turnkey handover\",\"text\":\"Commissioning, warranty and service\"}]'),
(229,84,35,'Why clients\nchoose us'),
(230,85,35,'assets/img/photos/why-bg.jpg'),
(231,86,35,'[{\"MIGX_id\":\"1\",\"title\":\"Full turnkey cycle\",\"text\":\"One contract and one contractor for the entire project — from design to opening.\"},{\"MIGX_id\":\"2\",\"title\":\"Scale and complexity\",\"text\":\"We take on projects of any complexity: from a sign to a business centre facade.\"},{\"MIGX_id\":\"3\",\"title\":\"Leading brands\",\"text\":\"Experience with international chains and demanding clients.\"},{\"MIGX_id\":\"4\",\"title\":\"In-house production\",\"text\":\"Metalwork, composite and lighting in our own workshop — control over quality and timelines.\"},{\"MIGX_id\":\"5\",\"title\":\"On-time delivery\",\"text\":\"We plan works in stages and fix the deadlines in the contract.\"},{\"MIGX_id\":\"6\",\"title\":\"Warranty and service\",\"text\":\"Warranty on completed works and ongoing maintenance of properties.\"}]'),
(232,87,35,'[{\"MIGX_id\":\"1\",\"label\":\"Completed\\nprojects\",\"value\":\"480\",\"plus\":\"1\",\"unit\":\"\"},{\"MIGX_id\":\"2\",\"label\":\"Years of\\nexperience\",\"value\":\"15\",\"plus\":\"1\",\"unit\":\"\"},{\"MIGX_id\":\"3\",\"label\":\"Specialists\\non the team\",\"value\":\"40\",\"plus\":\"\",\"unit\":\"\"},{\"MIGX_id\":\"4\",\"label\":\"Facades\\ninstalled\",\"value\":\"120\",\"plus\":\"\",\"unit\":\"k m²\"}]'),
(233,88,35,'Shall we discuss your project?'),
(234,89,35,'Leave a request — we’ll get back to you within one business day, clarify the task and prepare a preliminary estimate.'),
(235,90,35,'assets/img/photos/project-calzedonia.jpg'),
(236,91,35,'Calzedonia sign — an improvision project'),
(237,2,35,'web:34;en:35;ru:36'),
(238,76,36,'+38 044 228 88 69'),
(239,77,36,'office@improvision.com.ua'),
(240,78,36,'г. Киев, литера В, улица Кутузова, 18/7'),
(241,79,36,'ул. Кутузова, 18/7, литера В'),
(242,72,36,'Киев'),
(243,80,36,'[{\"MIGX_id\":\"1\",\"title\":\"Instagram\",\"url\":\"https://www.instagram.com/\"},{\"MIGX_id\":\"2\",\"title\":\"Facebook\",\"url\":\"https://www.facebook.com/\"},{\"MIGX_id\":\"3\",\"title\":\"Linkedin\",\"url\":\"https://www.linkedin.com/\"}]'),
(244,81,36,'Нам доверяют ведущие бренды'),
(245,82,36,'[{\"MIGX_id\":\"1\",\"image\":\"assets/img/brands/arbat.svg\",\"alt\":\"Арбат Престиж\"},{\"MIGX_id\":\"2\",\"image\":\"assets/img/brands/baldessarini.svg\",\"alt\":\"Baldessarini Hugo Boss\"},{\"MIGX_id\":\"3\",\"image\":\"assets/img/brands/calzedonia.svg\",\"alt\":\"Calzedonia\"},{\"MIGX_id\":\"4\",\"image\":\"assets/img/brands/globus.svg\",\"alt\":\"Глобус Банк\"},{\"MIGX_id\":\"5\",\"image\":\"assets/img/brands/intimissimi.svg\",\"alt\":\"Intimissimi\"},{\"MIGX_id\":\"6\",\"image\":\"assets/img/brands/kfc.svg\",\"alt\":\"KFC\"}]'),
(246,83,36,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-design.svg\",\"title\":\"Проектирование\",\"text\":\"Замеры, концепция, рабочая документация и смета\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-gear.svg\",\"title\":\"Производство\",\"text\":\"Собственный цех: металл, композит, светотехника, реклама\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-tools.svg\",\"title\":\"Монтаж\",\"text\":\"Строительные и монтажные работы собственными бригадами\"},{\"MIGX_id\":\"4\",\"icon\":\"assets/icons/ic-handover.svg\",\"title\":\"Сдача «под ключ»\",\"text\":\"Ввод в эксплуатацию, гарантия и сервис\"}]'),
(247,84,36,'Почему нас\nвыбирают'),
(248,85,36,'assets/img/photos/why-bg.jpg'),
(249,86,36,'[{\"MIGX_id\":\"1\",\"title\":\"Полный цикл «под ключ»\",\"text\":\"Один договор и один подрядчик на весь объект — от проекта до открытия.\"},{\"MIGX_id\":\"2\",\"title\":\"Масштаб и сложность\",\"text\":\"Беремся за объекты любой сложности: от вывески до фасада бизнес-центра.\"},{\"MIGX_id\":\"3\",\"title\":\"Ведущие бренды\",\"text\":\"Опыт работы с международными сетями и требовательными заказчиками.\"},{\"MIGX_id\":\"4\",\"title\":\"Собственное производство\",\"text\":\"Металлообработка, композит и светотехника в собственном цехе — контроль качества и сроков.\"},{\"MIGX_id\":\"5\",\"title\":\"Соблюдение сроков\",\"text\":\"Планируем работы поэтапно и фиксируем сроки в договоре.\"},{\"MIGX_id\":\"6\",\"title\":\"Гарантия и сервис\",\"text\":\"Гарантия на выполненные работы и дальнейшее сервисное обслуживание объектов.\"}]'),
(250,87,36,'[{\"MIGX_id\":\"1\",\"label\":\"Реализованных\\nпроектов\",\"value\":\"480\",\"plus\":\"1\",\"unit\":\"\"},{\"MIGX_id\":\"2\",\"label\":\"Лет\\nопыта\",\"value\":\"15\",\"plus\":\"1\",\"unit\":\"\"},{\"MIGX_id\":\"3\",\"label\":\"Специалистов\\nв команде\",\"value\":\"40\",\"plus\":\"\",\"unit\":\"\"},{\"MIGX_id\":\"4\",\"label\":\"Смонтированных\\nфасадов\",\"value\":\"120\",\"plus\":\"\",\"unit\":\"тыс.м²\"}]'),
(251,88,36,'Обсудим ваш проект?'),
(252,89,36,'Оставьте заявку — мы свяжемся в течение рабочего дня, уточним задачу и подготовим ориентировочный расчёт.'),
(253,90,36,'assets/img/photos/project-calzedonia.jpg'),
(254,91,36,'Вывеска Calzedonia — проект improvision'),
(255,2,36,'web:34;en:35;ru:36'),
(256,2,37,'web:37'),
(257,3,38,'Комерційне будівництво під ключ у Києві — improvision'),
(258,4,38,'Комерційне будівництво під ключ у Києві — improvision'),
(259,5,38,'Будівництво та облаштування магазинів, ресторанів, офісів і відділень під ключ: проєкт, будівельні роботи, оздоблення, реклама та здача обʼєкта. Один підрядник і один договір.'),
(260,16,38,'Комерційне будівництво «під ключ»'),
(261,8,38,'assets/img/photos/kfc-artmall-3.jpg'),
(262,9,38,'Ресторан KFC у ТРЦ — обʼєкт під ключ від improvision'),
(263,12,38,'assets/img/photos/service-construction.jpg'),
(264,33,38,'Повний цикл будівельно-монтажних робіт: від нульового циклу до готового до відкриття обʼєкта.'),
(265,34,38,'2'),
(266,35,38,'Комерційне будівництво «під ключ»'),
(267,36,38,'Що входить у послугу'),
(268,37,38,'Обміри, технічне обстеження та планувальне рішення\nДемонтаж, перегородки, стелі та підлоги\nПогодження проєкту з орендодавцем і ТРЦ\nЕлектрика, вентиляція, кондиціювання та слабкі струми\nВхідна група, вивіски та інтерʼєрна навігація\nФінішне оздоблення, прибирання та здача обʼєкта'),
(269,38,38,'<p>Ми працюємо з торговельними мережами, ресторанними брендами та банками, тому знаємо вимоги ТРЦ і бізнес-центрів до проєктної документації, графіка робіт і допуску бригад.</p>'),
(270,39,38,'Фіксуємо строки й кошторис у договорі — ви заздалегідь знаєте дату відкриття та бюджет обʼєкта.'),
(271,40,38,'<p>Інженерні мережі, оздоблення та реклама плануються разом ще на етапі проєкту. Так ми уникаємо переробок: вивіска не впирається у вентиляцію, а освітлення вітрин закладене в електропроєкт з першого дня.</p>\n<figure>\n<img alt=\"Відділення Глобус Банку після реконструкції\" height=\"562\" loading=\"lazy\" src=\"/assets/img/photos/project-globus.jpg\" width=\"1000\">\n<figcaption>Відділення банку: фасад, вхідна група та брендування — в одному договорі.</figcaption>\n</figure>\n<blockquote>\n<p>«Відкриття не переноситься через те, що один підрядник чекає на іншого — бо підрядник один».</p>\n</blockquote>\n<p>Після здачі обʼєкта ми залишаємося на звʼязку: надаємо гарантію на виконані роботи та беремо на сервісне обслуговування вивіски, світлотехніку й конструкції.</p>'),
(272,41,38,'Етапи робіт'),
(273,42,38,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-survey.svg\",\"title\":\"Обстеження\",\"text\":\"Обміри, аудит приміщення та технічні умови.\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-design.svg\",\"title\":\"Проєкт\",\"text\":\"Планування, робоча документація та кошторис.\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-tools.svg\",\"title\":\"Будівництво\",\"text\":\"Загальнобудівельні, інженерні та оздоблювальні роботи.\"},{\"MIGX_id\":\"4\",\"icon\":\"assets/icons/ic-handover.svg\",\"title\":\"Здача\",\"text\":\"Реклама, пусконалагодження та відкриття обʼєкта.\"}]'),
(274,43,38,'Обʼєкти, які будуємо'),
(275,44,38,'Беремося за обʼєкти будь-якого формату — від острівця в ТРЦ до окремої будівлі.'),
(276,46,38,'[{\"MIGX_id\":\"1\",\"name\":\"Магазини та бутики\",\"text\":\"Торгові зали в ТРЦ і на вулиці: від вітрини до примірочних.\",\"image\":\"assets/img/photos/project-intimissimi.jpg\",\"alt\":\"Магазини та бутики\",\"active\":\"1\"},{\"MIGX_id\":\"2\",\"name\":\"Ресторани та кафе\",\"text\":\"Зали, кухні й фудкорти з урахуванням вимог мереж і санітарних норм.\",\"image\":\"assets/img/photos/project-kfc.jpg\",\"alt\":\"Ресторани та кафе\",\"active\":\"\"},{\"MIGX_id\":\"3\",\"name\":\"Банки та офіси\",\"text\":\"Відділення, клієнтські зони та офісні простори під ключ.\",\"image\":\"assets/img/photos/project-globus.jpg\",\"alt\":\"Банки та офіси\",\"active\":\"\"},{\"MIGX_id\":\"4\",\"name\":\"Бізнес-центри\",\"text\":\"Фасади, лобі та загальні зони комерційної нерухомості.\",\"image\":\"assets/img/photos/about-hero.jpg\",\"alt\":\"Бізнес-центри\",\"active\":\"\"}]'),
(277,47,38,'59||74||68'),
(278,2,38,'web:38;en:39;ru:40'),
(279,3,39,'Turnkey commercial construction in Kyiv — improvision'),
(280,4,39,'Turnkey commercial construction in Kyiv — improvision'),
(281,5,39,'Turnkey construction and fit-out of stores, restaurants, offices and branches: design, construction, finishing, signage and handover. One contractor, one contract.'),
(282,16,39,'Turnkey commercial construction'),
(283,8,39,'assets/img/photos/kfc-artmall-3.jpg'),
(284,9,39,'KFC restaurant in a shopping mall — a turnkey project by improvision'),
(285,12,39,'assets/img/photos/service-construction.jpg'),
(286,33,39,'Full cycle of construction and installation: from groundwork to a property ready to open.'),
(287,34,39,'2'),
(288,35,39,'Turnkey commercial construction'),
(289,36,39,'What’s included'),
(290,37,39,'Measurements, technical survey and space planning\nDemolition, partitions, ceilings and floors\nApproval of the design with the landlord and the mall\nElectrical, ventilation, air conditioning and low-voltage systems\nEntrance group, signage and interior wayfinding\nFinal finishing, cleaning and handover'),
(291,38,39,'<p>We work with retail chains, restaurant brands and banks, so we know what shopping malls and business centres require in terms of design documentation, work schedules and crew access.</p>'),
(292,39,39,'We fix the timeline and estimate in the contract, so you know the opening date and the budget in advance.'),
(293,40,39,'<p>Utilities, finishing and signage are planned together at the design stage. This avoids rework: the sign doesn’t clash with ventilation, and storefront lighting is in the electrical design from day one.</p>\n<figure>\n<img alt=\"Globus Bank branch after renovation\" height=\"562\" loading=\"lazy\" src=\"/assets/img/photos/project-globus.jpg\" width=\"1000\">\n<figcaption>A bank branch: facade, entrance group and branding — all under one contract.</figcaption>\n</figure>\n<blockquote>\n<p>“Opening day doesn’t slip because one contractor is waiting for another — there is only one contractor.”</p>\n</blockquote>\n<p>After handover we stay in touch: we provide a warranty on the works and offer service maintenance for signage, lighting and structures.</p>'),
(294,41,39,'Work stages'),
(295,42,39,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-survey.svg\",\"title\":\"Survey\",\"text\":\"Measurements, premises audit and technical conditions.\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-design.svg\",\"title\":\"Design\",\"text\":\"Layout, working documentation and estimate.\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-tools.svg\",\"title\":\"Construction\",\"text\":\"General construction, utilities and finishing works.\"},{\"MIGX_id\":\"4\",\"icon\":\"assets/icons/ic-handover.svg\",\"title\":\"Handover\",\"text\":\"Signage, commissioning and opening of the property.\"}]'),
(296,43,39,'Properties we build'),
(297,44,39,'We take on properties of any format — from a mall kiosk to a stand-alone building.'),
(298,46,39,'[{\"MIGX_id\":\"1\",\"name\":\"Stores and boutiques\",\"text\":\"Retail spaces in malls and on the street: from storefront to fitting rooms.\",\"image\":\"assets/img/photos/project-intimissimi.jpg\",\"alt\":\"Stores and boutiques\",\"active\":\"1\"},{\"MIGX_id\":\"2\",\"name\":\"Restaurants and cafés\",\"text\":\"Dining rooms, kitchens and food courts that meet chain standards and sanitary codes.\",\"image\":\"assets/img/photos/project-kfc.jpg\",\"alt\":\"Restaurants and cafés\",\"active\":\"\"},{\"MIGX_id\":\"3\",\"name\":\"Banks and offices\",\"text\":\"Branches, customer areas and turnkey office spaces.\",\"image\":\"assets/img/photos/project-globus.jpg\",\"alt\":\"Banks and offices\",\"active\":\"\"},{\"MIGX_id\":\"4\",\"name\":\"Business centres\",\"text\":\"Facades, lobbies and common areas of commercial real estate.\",\"image\":\"assets/img/photos/about-hero.jpg\",\"alt\":\"Business centres\",\"active\":\"\"}]'),
(299,47,39,'60||75||69'),
(300,2,39,'web:38;en:39;ru:40'),
(301,3,40,'Коммерческое строительство под ключ в Киеве — improvision'),
(302,4,40,'Коммерческое строительство под ключ в Киеве — improvision'),
(303,5,40,'Строительство и обустройство магазинов, ресторанов, офисов и отделений под ключ: проект, строительные работы, отделка, реклама и сдача объекта. Один подрядчик и один договор.'),
(304,16,40,'Коммерческое строительство «под ключ»'),
(305,8,40,'assets/img/photos/kfc-artmall-3.jpg'),
(306,9,40,'Ресторан KFC в ТРЦ — объект под ключ от improvision'),
(307,12,40,'assets/img/photos/service-construction.jpg'),
(308,33,40,'Полный цикл строительно-монтажных работ: от нулевого цикла до готового к открытию объекта.'),
(309,34,40,'2'),
(310,35,40,'Коммерческое строительство «под ключ»'),
(311,36,40,'Что входит в услугу'),
(312,37,40,'Обмеры, техническое обследование и планировочное решение\nДемонтаж, перегородки, потолки и полы\nСогласование проекта с арендодателем и ТРЦ\nЭлектрика, вентиляция, кондиционирование и слаботочные системы\nВходная группа, вывески и интерьерная навигация\nФинишная отделка, уборка и сдача объекта'),
(313,38,40,'<p>Мы работаем с торговыми сетями, ресторанными брендами и банками, поэтому знаем требования ТРЦ и бизнес-центров к проектной документации, графику работ и допуску бригад.</p>'),
(314,39,40,'Фиксируем сроки и смету в договоре — вы заранее знаете дату открытия и бюджет объекта.'),
(315,40,40,'<p>Инженерные сети, отделка и реклама планируются вместе ещё на этапе проекта. Так мы избегаем переделок: вывеска не упирается в вентиляцию, а освещение витрин заложено в электропроект с первого дня.</p>\n<figure>\n<img alt=\"Отделение Глобус Банка после реконструкции\" height=\"562\" loading=\"lazy\" src=\"/assets/img/photos/project-globus.jpg\" width=\"1000\">\n<figcaption>Отделение банка: фасад, входная группа и брендирование — в одном договоре.</figcaption>\n</figure>\n<blockquote>\n<p>«Открытие не переносится из-за того, что один подрядчик ждёт другого — потому что подрядчик один».</p>\n</blockquote>\n<p>После сдачи объекта мы остаёмся на связи: даём гарантию на выполненные работы и берём на сервисное обслуживание вывески, светотехнику и конструкции.</p>'),
(316,41,40,'Этапы работ'),
(317,42,40,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-survey.svg\",\"title\":\"Обследование\",\"text\":\"Обмеры, аудит помещения и технические условия.\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-design.svg\",\"title\":\"Проект\",\"text\":\"Планировка, рабочая документация и смета.\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-tools.svg\",\"title\":\"Строительство\",\"text\":\"Общестроительные, инженерные и отделочные работы.\"},{\"MIGX_id\":\"4\",\"icon\":\"assets/icons/ic-handover.svg\",\"title\":\"Сдача\",\"text\":\"Реклама, пусконаладка и открытие объекта.\"}]'),
(318,43,40,'Объекты, которые строим'),
(319,44,40,'Беремся за объекты любого формата — от островка в ТРЦ до отдельного здания.'),
(320,46,40,'[{\"MIGX_id\":\"1\",\"name\":\"Магазины и бутики\",\"text\":\"Торговые залы в ТРЦ и на улице: от витрины до примерочных.\",\"image\":\"assets/img/photos/project-intimissimi.jpg\",\"alt\":\"Магазины и бутики\",\"active\":\"1\"},{\"MIGX_id\":\"2\",\"name\":\"Рестораны и кафе\",\"text\":\"Залы, кухни и фудкорты с учётом требований сетей и санитарных норм.\",\"image\":\"assets/img/photos/project-kfc.jpg\",\"alt\":\"Рестораны и кафе\",\"active\":\"\"},{\"MIGX_id\":\"3\",\"name\":\"Банки и офисы\",\"text\":\"Отделения, клиентские зоны и офисные пространства под ключ.\",\"image\":\"assets/img/photos/project-globus.jpg\",\"alt\":\"Банки и офисы\",\"active\":\"\"},{\"MIGX_id\":\"4\",\"name\":\"Бизнес-центры\",\"text\":\"Фасады, лобби и общие зоны коммерческой недвижимости.\",\"image\":\"assets/img/photos/about-hero.jpg\",\"alt\":\"Бизнес-центры\",\"active\":\"\"}]'),
(321,47,40,'61||76||70'),
(322,2,40,'web:38;en:39;ru:40'),
(323,3,41,'Вентильовані фасади під ключ у Києві — improvision'),
(324,4,41,'Вентильовані фасади під ключ — improvision'),
(325,5,41,'Проєктування, виготовлення та монтаж навісних вентильованих фасадів для комерційних і громадських будівель.'),
(326,16,41,'Вентильовані\nфасади'),
(327,8,41,'assets/img/photos/service-entrance.jpg'),
(328,9,41,'Фасад і вхідна група бутика Vittorio Spernanzoni'),
(329,12,41,'assets/img/photos/service-facades.jpg'),
(330,33,41,'Проєктування, виготовлення та монтаж навісних фасадів для комерційних і громадських будівель.'),
(331,34,41,'1'),
(332,35,41,'Проєктування, виготовлення та монтаж вентильованих фасадів'),
(333,36,41,'Що входить у послугу'),
(334,37,41,'Обстеження обʼєкта та обмірні роботи\nВиготовлення елементів у власному цеху\nПроєктування підсистеми та<br class=\"br-desk\"> розкладки панелей\nМонтаж підсистеми, утеплювача<br class=\"br-desk\"> та облицювання\nРозрахунок вузлів кріплення<br class=\"br-desk\"> й теплотехніки\nЗдача обʼєкта та гарантійне<br class=\"br-desk\"> обслуговування'),
(335,38,41,'<p>«Під ключ» — це модель, за якої замовник отримує готовий результат, а не набір окремих послуг. Підрядник відповідає за весь ланцюжок: проєкт, матеріали, виробництво, монтаж і здачу об\'єкта. Замовнику не потрібно координувати кілька бригад і стикувати їхні графіки.</p>'),
(336,39,41,'Один договір і одна точка відповідальності знижують ризики зривів\nстроків і «розмивання» гарантії між підрядниками.'),
(337,40,41,'<p>«Під ключ» — це модель, за якої замовник отримує готовий результат, а не набір окремих послуг. Підрядник відповідає за весь ланцюжок: проєкт, матеріали, виробництво, монтаж і здачу об\'єкта. Замовнику не потрібно координувати кілька бригад і стикувати їхні графіки. Модель, за якої замовник отримує готовий результат, а не набір окремих послуг. Підрядник відповідає за весь ланцюжок: проєкт, матеріали, виробництво, монтаж і здачу об\'єкта. Замовнику не потрібно координувати кілька бригад і стикувати їхні графіки.</p>\n<figure>\n<img alt=\"Бутик Intimissimi в ТРЦ — монтаж реклами та оздоблення\" height=\"900\" loading=\"lazy\" src=\"/assets/img/photos/service-facades-article.jpg\" width=\"1600\">\n<figcaption>Монтаж обладнання та реклами часто виконується паралельно з оздобленням, щоб скоротити строки.</figcaption>\n</figure>\n<blockquote>\n<p>«Замовник має бачити один графік, один кошторис і одну відповідальну команду — решту складнощів беремо на себе».</p>\n</blockquote>\n<p>Коли роботи розподілені між кількома компаніями, замовник ризикує зіткнутися з «сірими зонами» відповідальності. Модель «під ключ» прибирає ці стики: Коли роботи розподілені між кількома компаніями, замовник ризикує зіткнутися з «сірими зонами» відповідальності. Модель «під ключ» прибирає ці стики:</p>'),
(338,41,41,'Етапи робіт'),
(339,42,41,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-survey.svg\",\"title\":\"Обстеження\",\"text\":\"Виїзд на обʼєкт, обміри\\nта оцінка основи.\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-design.svg\",\"title\":\"Проєкт\",\"text\":\"Підсистема, розкладка,\\nвузли та кошторис.\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-gear.svg\",\"title\":\"Виробництво\",\"text\":\"Виготовлення елементів\\nу власному цеху.\"},{\"MIGX_id\":\"4\",\"icon\":\"assets/icons/ic-tools.svg\",\"title\":\"Монтаж\",\"text\":\"Монтажні роботи та\\nздача під ключ.\"}]'),
(340,43,41,'Матеріали, з якими працюємо'),
(341,44,41,'Підбираємо систему облицювання під архітектуру, бюджет і вимоги до довговічності.'),
(342,45,41,'Матеріали облицювання'),
(343,46,41,'[{\"MIGX_id\":\"1\",\"name\":\"Композитні панелі (ACP)\",\"text\":\"Легкі алюмокомпозитні касети з широкою палітрою кольорів і фактур.\",\"image\":\"assets/img/photos/material-panels.jpg\",\"alt\":\"Композитні панелі — зразки облицювання\",\"active\":\"\"},{\"MIGX_id\":\"2\",\"name\":\"Керамограніт\",\"text\":\"Довговічне облицювання з високою стійкістю до зовнішніх впливів.\",\"image\":\"assets/img/photos/material-panels.jpg\",\"alt\":\"Керамограніт — зразки облицювання\",\"active\":\"1\"},{\"MIGX_id\":\"3\",\"name\":\"HPL-панелі\",\"text\":\"Панелі високого тиску для сучасних архітектурних фасадів.\",\"image\":\"assets/img/photos/material-panels.jpg\",\"alt\":\"HPL-панелі — зразки облицювання\",\"active\":\"\"},{\"MIGX_id\":\"4\",\"name\":\"Фіброцемент\",\"text\":\"Матовий природний вигляд і надійність для громадських будівель.\",\"image\":\"assets/img/photos/material-panels.jpg\",\"alt\":\"Фіброцемент — зразки облицювання\",\"active\":\"\"}]'),
(344,47,41,'59||62||65'),
(345,2,41,'web:41;en:42;ru:43'),
(346,3,42,'Turnkey ventilated facades in Kyiv — improvision'),
(347,4,42,'Turnkey ventilated facades — improvision'),
(348,5,42,'Design, manufacturing and installation of ventilated rainscreen facades for commercial and public buildings.'),
(349,16,42,'Ventilated\nfacades'),
(350,8,42,'assets/img/photos/service-entrance.jpg'),
(351,9,42,'Facade and entrance group of the Vittorio Spernanzoni boutique'),
(352,12,42,'assets/img/photos/service-facades.jpg'),
(353,33,42,'Design, manufacturing and installation of rainscreen facades for commercial and public buildings.'),
(354,34,42,'1'),
(355,35,42,'Design, manufacturing and installation of ventilated facades'),
(356,36,42,'What’s included'),
(357,37,42,'Site survey and measurements\nManufacturing of elements in our own workshop\nSubframe design and<br class=\"br-desk\"> panel layout\nInstallation of subframe, insulation<br class=\"br-desk\"> and cladding\nCalculation of fixings<br class=\"br-desk\"> and thermal performance\nHandover and warranty<br class=\"br-desk\"> service'),
(358,38,42,'<p>“Turnkey” is a model in which the client receives a finished result rather than a set of separate services. The contractor is responsible for the whole chain: design, materials, production, installation and handover. The client doesn’t need to coordinate several crews and align their schedules.</p>'),
(359,39,42,'One contract and a single point of responsibility reduce the risk\nof missed deadlines and warranties “blurred” between contractors.'),
(360,40,42,'<p>“Turnkey” is a model in which the client receives a finished result rather than a set of separate services. The contractor is responsible for the whole chain: design, materials, production, installation and handover. The client doesn’t need to coordinate several crews and align their schedules. A model in which the client receives a finished result rather than a set of separate services. The contractor is responsible for the whole chain: design, materials, production, installation and handover. The client doesn’t need to coordinate several crews and align their schedules.</p>\n<figure>\n<img alt=\"Intimissimi boutique in a mall — signage installation and finishing\" height=\"900\" loading=\"lazy\" src=\"/assets/img/photos/service-facades-article.jpg\" width=\"1600\">\n<figcaption>Equipment and signage are often installed in parallel with finishing to shorten timelines.</figcaption>\n</figure>\n<blockquote>\n<p>“The client should see one schedule, one estimate and one responsible team — we take care of the rest.”</p>\n</blockquote>\n<p>When works are split between several companies, the client risks running into “grey zones” of responsibility. The turnkey model removes these gaps: When works are split between several companies, the client risks running into “grey zones” of responsibility. The turnkey model removes these gaps:</p>'),
(361,41,42,'Work stages'),
(362,42,42,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-survey.svg\",\"title\":\"Survey\",\"text\":\"Site visit, measurements\\nand substrate assessment.\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-design.svg\",\"title\":\"Design\",\"text\":\"Subframe, layout,\\ndetails and estimate.\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-gear.svg\",\"title\":\"Production\",\"text\":\"Manufacturing of elements\\nin our own workshop.\"},{\"MIGX_id\":\"4\",\"icon\":\"assets/icons/ic-tools.svg\",\"title\":\"Installation\",\"text\":\"Installation works and\\nturnkey handover.\"}]'),
(363,43,42,'Materials we work with'),
(364,44,42,'We select the cladding system to suit the architecture, budget and durability requirements.'),
(365,45,42,'Cladding materials'),
(366,46,42,'[{\"MIGX_id\":\"1\",\"name\":\"Composite panels (ACP)\",\"text\":\"Lightweight aluminium composite cassettes in a wide range of colours and textures.\",\"image\":\"assets/img/photos/material-panels.jpg\",\"alt\":\"Composite panels — cladding samples\",\"active\":\"\"},{\"MIGX_id\":\"2\",\"name\":\"Porcelain stoneware\",\"text\":\"Durable cladding with high resistance to external impacts.\",\"image\":\"assets/img/photos/material-panels.jpg\",\"alt\":\"Porcelain stoneware — cladding samples\",\"active\":\"1\"},{\"MIGX_id\":\"3\",\"name\":\"HPL panels\",\"text\":\"High-pressure laminate panels for modern architectural facades.\",\"image\":\"assets/img/photos/material-panels.jpg\",\"alt\":\"HPL panels — cladding samples\",\"active\":\"\"},{\"MIGX_id\":\"4\",\"name\":\"Fibre cement\",\"text\":\"A natural matte look and reliability for public buildings.\",\"image\":\"assets/img/photos/material-panels.jpg\",\"alt\":\"Fibre cement — cladding samples\",\"active\":\"\"}]'),
(367,47,42,'60||63||66'),
(368,2,42,'web:41;en:42;ru:43'),
(369,3,43,'Вентилируемые фасады под ключ в Киеве — improvision'),
(370,4,43,'Вентилируемые фасады под ключ — improvision'),
(371,5,43,'Проектирование, изготовление и монтаж навесных вентилируемых фасадов для коммерческих и общественных зданий.'),
(372,16,43,'Вентилируемые\nфасады'),
(373,8,43,'assets/img/photos/service-entrance.jpg'),
(374,9,43,'Фасад и входная группа бутика Vittorio Spernanzoni'),
(375,12,43,'assets/img/photos/service-facades.jpg'),
(376,33,43,'Проектирование, изготовление и монтаж навесных фасадов для коммерческих и общественных зданий.'),
(377,34,43,'1'),
(378,35,43,'Проектирование, изготовление и монтаж вентилируемых фасадов'),
(379,36,43,'Что входит в услугу'),
(380,37,43,'Обследование объекта и обмерные работы\nИзготовление элементов в собственном цехе\nПроектирование подсистемы и<br class=\"br-desk\"> раскладки панелей\nМонтаж подсистемы, утеплителя<br class=\"br-desk\"> и облицовки\nРасчёт узлов крепления<br class=\"br-desk\"> и теплотехники\nСдача объекта и гарантийное<br class=\"br-desk\"> обслуживание'),
(381,38,43,'<p>«Под ключ» — это модель, при которой заказчик получает готовый результат, а не набор отдельных услуг. Подрядчик отвечает за всю цепочку: проект, материалы, производство, монтаж и сдачу объекта. Заказчику не нужно координировать несколько бригад и стыковать их графики.</p>'),
(382,39,43,'Один договор и одна точка ответственности снижают риски срыва\nсроков и «размывания» гарантии между подрядчиками.'),
(383,40,43,'<p>«Под ключ» — это модель, при которой заказчик получает готовый результат, а не набор отдельных услуг. Подрядчик отвечает за всю цепочку: проект, материалы, производство, монтаж и сдачу объекта. Заказчику не нужно координировать несколько бригад и стыковать их графики. Модель, при которой заказчик получает готовый результат, а не набор отдельных услуг. Подрядчик отвечает за всю цепочку: проект, материалы, производство, монтаж и сдачу объекта. Заказчику не нужно координировать несколько бригад и стыковать их графики.</p>\n<figure>\n<img alt=\"Бутик Intimissimi в ТРЦ — монтаж рекламы и отделка\" height=\"900\" loading=\"lazy\" src=\"/assets/img/photos/service-facades-article.jpg\" width=\"1600\">\n<figcaption>Монтаж оборудования и рекламы часто выполняется параллельно с отделкой, чтобы сократить сроки.</figcaption>\n</figure>\n<blockquote>\n<p>«Заказчик должен видеть один график, одну смету и одну ответственную команду — остальные сложности берём на себя».</p>\n</blockquote>\n<p>Когда работы распределены между несколькими компаниями, заказчик рискует столкнуться с «серыми зонами» ответственности. Модель «под ключ» убирает эти стыки: Когда работы распределены между несколькими компаниями, заказчик рискует столкнуться с «серыми зонами» ответственности. Модель «под ключ» убирает эти стыки:</p>'),
(384,41,43,'Этапы работ'),
(385,42,43,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-survey.svg\",\"title\":\"Обследование\",\"text\":\"Выезд на объект, обмеры\\nи оценка основания.\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-design.svg\",\"title\":\"Проект\",\"text\":\"Подсистема, раскладка,\\nузлы и смета.\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-gear.svg\",\"title\":\"Производство\",\"text\":\"Изготовление элементов\\nв собственном цехе.\"},{\"MIGX_id\":\"4\",\"icon\":\"assets/icons/ic-tools.svg\",\"title\":\"Монтаж\",\"text\":\"Монтажные работы и\\nсдача под ключ.\"}]'),
(386,43,43,'Материалы, с которыми работаем'),
(387,44,43,'Подбираем систему облицовки под архитектуру, бюджет и требования к долговечности.'),
(388,45,43,'Материалы облицовки'),
(389,46,43,'[{\"MIGX_id\":\"1\",\"name\":\"Композитные панели (ACP)\",\"text\":\"Лёгкие алюмокомпозитные кассеты с широкой палитрой цветов и фактур.\",\"image\":\"assets/img/photos/material-panels.jpg\",\"alt\":\"Композитные панели — образцы облицовки\",\"active\":\"\"},{\"MIGX_id\":\"2\",\"name\":\"Керамогранит\",\"text\":\"Долговечная облицовка с высокой стойкостью к внешним воздействиям.\",\"image\":\"assets/img/photos/material-panels.jpg\",\"alt\":\"Керамогранит — образцы облицовки\",\"active\":\"1\"},{\"MIGX_id\":\"3\",\"name\":\"HPL-панели\",\"text\":\"Панели высокого давления для современных архитектурных фасадов.\",\"image\":\"assets/img/photos/material-panels.jpg\",\"alt\":\"HPL-панели — образцы облицовки\",\"active\":\"\"},{\"MIGX_id\":\"4\",\"name\":\"Фиброцемент\",\"text\":\"Матовый природный вид и надёжность для общественных зданий.\",\"image\":\"assets/img/photos/material-panels.jpg\",\"alt\":\"Фиброцемент — образцы облицовки\",\"active\":\"\"}]'),
(390,47,43,'61||64||67'),
(391,2,43,'web:41;en:42;ru:43'),
(392,3,44,'Вхідні групи для магазинів і закладів під ключ — improvision'),
(393,4,44,'Вхідні групи для магазинів і закладів під ключ — improvision'),
(394,5,44,'Проєктування, виготовлення та монтаж вхідних груп, порталів, вітрин і козирків для магазинів, ресторанів і бізнес-центрів. Власне виробництво в Києві.'),
(395,16,44,'Вхідні\nгрупи'),
(396,8,44,'assets/img/photos/service-entrance.jpg'),
(397,9,44,'Вхідна група бутика Vittorio Spernanzoni'),
(398,12,44,'assets/img/photos/service-entrance.jpg'),
(399,33,44,'Проєктування й виготовлення вхідних груп, порталів і вітрин для магазинів та закладів.'),
(400,34,44,'3'),
(401,35,44,'Вхідні групи'),
(402,36,44,'Що входить у послугу'),
(403,37,44,'Обміри фасаду та дизайн-проєкт вхідної групи\nМеталокаркас, портали та обрамлення прорізів\nПогодження паспорта фасаду та проєкту з ТРЦ\nВітражі, скляні двері та автоматичні системи\nОблицювання композитом, металом або керамогранітом\nВивіска, підсвічування та монтаж під ключ'),
(404,38,44,'<p>Для мережевих клієнтів розробляємо типові рішення, які легко масштабувати: один раз погоджений проєкт адаптується під різні розміри прорізів і фасадів.</p>'),
(405,39,44,'Каркас, облицювання, скління та вивіска виготовляються й монтуються однією командою — без стиків між підрядниками.'),
(406,40,44,'<p>Конструкції розраховуємо з урахуванням вітрового й снігового навантаження, а вузли кріплення — під конкретну основу. Тому вхідна група залишається геометрично точною та безпечною роками.</p>\n<figure>\n<img alt=\"Вхідна група магазину LEGO у фірмовому стилі\" height=\"562\" loading=\"lazy\" src=\"/assets/img/photos/project-lego.jpg\" width=\"1000\">\n<figcaption>Вхідна група магазину LEGO: обʼємні елементи та фірмові кольори бренду.</figcaption>\n</figure>\n<blockquote>\n<p>«Вхідна група — це обличчя закладу. Вона має бути впізнаваною здалеку й бездоганною зблизька».</p>\n</blockquote>\n<p>Після монтажу надаємо гарантію на конструкції та світлотехніку, а за потреби — сервісне обслуговування: заміну модулів, ремонт автоматики та оновлення графіки.</p>'),
(407,41,44,'Етапи робіт'),
(408,42,44,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-survey.svg\",\"title\":\"Обміри\",\"text\":\"Виїзд на обʼєкт, обміри та фотофіксація фасаду.\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-design.svg\",\"title\":\"Проєкт\",\"text\":\"Дизайн, креслення, погодження та кошторис.\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-gear.svg\",\"title\":\"Виробництво\",\"text\":\"Каркас, облицювання й вивіска у власному цеху.\"},{\"MIGX_id\":\"4\",\"icon\":\"assets/icons/ic-tools.svg\",\"title\":\"Монтаж\",\"text\":\"Встановлення, підключення та здача під ключ.\"}]'),
(409,43,44,'Що виготовляємо'),
(410,44,44,'Кожен елемент вхідної групи можна замовити окремо або комплексно.'),
(411,46,44,'[{\"MIGX_id\":\"1\",\"name\":\"Портали та обрамлення\",\"text\":\"Обʼємні портали з композиту й металу з інтегрованою вивіскою.\",\"image\":\"assets/img/photos/service-entrance.jpg\",\"alt\":\"Портали та обрамлення\",\"active\":\"1\"},{\"MIGX_id\":\"2\",\"name\":\"Вітрини\",\"text\":\"Вітражне скління, підсвічування та оформлення вітрин.\",\"image\":\"assets/img/photos/about-mark.jpg\",\"alt\":\"Вітрини\",\"active\":\"\"},{\"MIGX_id\":\"3\",\"name\":\"Козирки та навіси\",\"text\":\"Захист входу від опадів з вбудованим освітленням.\",\"image\":\"assets/img/photos/project-carnegie.jpg\",\"alt\":\"Козирки та навіси\",\"active\":\"\"},{\"MIGX_id\":\"4\",\"name\":\"Двері та автоматика\",\"text\":\"Скляні та алюмінієві двері, розсувні й автоматичні системи.\",\"image\":\"assets/img/photos/project-calzedonia.jpg\",\"alt\":\"Двері та автоматика\",\"active\":\"\"}]'),
(412,47,44,'62||68||65'),
(413,2,44,'web:44;en:45;ru:46'),
(414,3,45,'Turnkey entrance groups for stores and venues — improvision'),
(415,4,45,'Turnkey entrance groups for stores and venues — improvision'),
(416,5,45,'Design, manufacturing and installation of entrance groups, portals, storefronts and canopies for stores, restaurants and business centres. Own production in Kyiv.'),
(417,16,45,'Entrance\ngroups'),
(418,8,45,'assets/img/photos/service-entrance.jpg'),
(419,9,45,'Vittorio Spernanzoni boutique entrance'),
(420,12,45,'assets/img/photos/service-entrance.jpg'),
(421,33,45,'Design and manufacturing of entrance groups, portals and storefronts for stores and venues.'),
(422,34,45,'3'),
(423,35,45,'Entrance groups'),
(424,36,45,'What’s included'),
(425,37,45,'Facade measurements and entrance design\nMetal frames, portals and opening surrounds\nApproval of the facade passport and design with the mall\nGlazing, glass doors and automatic systems\nCladding in composite, metal or porcelain stoneware\nSignage, lighting and turnkey installation'),
(426,38,45,'<p>For chain clients we develop standard solutions that scale easily: a design approved once is adapted to different openings and facades.</p>'),
(427,39,45,'The frame, cladding, glazing and sign are made and installed by one team — no gaps between contractors.'),
(428,40,45,'<p>Structures are calculated for wind and snow loads, and fixings are designed for the specific substrate. That’s why the entrance stays geometrically accurate and safe for years.</p>\n<figure>\n<img alt=\"LEGO store entrance in the brand style\" height=\"562\" loading=\"lazy\" src=\"/assets/img/photos/project-lego.jpg\" width=\"1000\">\n<figcaption>LEGO store entrance: 3D elements and the brand’s signature colours.</figcaption>\n</figure>\n<blockquote>\n<p>“The entrance is the face of a venue. It should be recognisable from afar and flawless up close.”</p>\n</blockquote>\n<p>After installation we provide a warranty on structures and lighting and, if needed, service maintenance: module replacement, automation repairs and graphics updates.</p>'),
(429,41,45,'Work stages'),
(430,42,45,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-survey.svg\",\"title\":\"Measurements\",\"text\":\"Site visit, measurements and facade photo survey.\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-design.svg\",\"title\":\"Design\",\"text\":\"Design, drawings, approvals and estimate.\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-gear.svg\",\"title\":\"Production\",\"text\":\"Frame, cladding and sign made in our own workshop.\"},{\"MIGX_id\":\"4\",\"icon\":\"assets/icons/ic-tools.svg\",\"title\":\"Installation\",\"text\":\"Mounting, connection and turnkey handover.\"}]'),
(431,43,45,'What we make'),
(432,44,45,'Each element of the entrance can be ordered separately or as a package.'),
(433,46,45,'[{\"MIGX_id\":\"1\",\"name\":\"Portals and surrounds\",\"text\":\"3D portals in composite and metal with an integrated sign.\",\"image\":\"assets/img/photos/service-entrance.jpg\",\"alt\":\"Portals and surrounds\",\"active\":\"1\"},{\"MIGX_id\":\"2\",\"name\":\"Storefronts\",\"text\":\"Glazing, lighting and storefront design.\",\"image\":\"assets/img/photos/about-mark.jpg\",\"alt\":\"Storefronts\",\"active\":\"\"},{\"MIGX_id\":\"3\",\"name\":\"Canopies\",\"text\":\"Weather protection for the entrance with built-in lighting.\",\"image\":\"assets/img/photos/project-carnegie.jpg\",\"alt\":\"Canopies\",\"active\":\"\"},{\"MIGX_id\":\"4\",\"name\":\"Doors and automation\",\"text\":\"Glass and aluminium doors, sliding and automatic systems.\",\"image\":\"assets/img/photos/project-calzedonia.jpg\",\"alt\":\"Doors and automation\",\"active\":\"\"}]'),
(434,47,45,'63||69||66'),
(435,2,45,'web:44;en:45;ru:46'),
(436,3,46,'Входные группы для магазинов и заведений под ключ — improvision'),
(437,4,46,'Входные группы для магазинов и заведений под ключ — improvision'),
(438,5,46,'Проектирование, изготовление и монтаж входных групп, порталов, витрин и козырьков для магазинов, ресторанов и бизнес-центров. Собственное производство в Киеве.'),
(439,16,46,'Входные\nгруппы'),
(440,8,46,'assets/img/photos/service-entrance.jpg'),
(441,9,46,'Входная группа бутика Vittorio Spernanzoni'),
(442,12,46,'assets/img/photos/service-entrance.jpg'),
(443,33,46,'Проектирование и изготовление входных групп, порталов и витрин для магазинов и заведений.'),
(444,34,46,'3'),
(445,35,46,'Входные группы'),
(446,36,46,'Что входит в услугу'),
(447,37,46,'Обмеры фасада и дизайн-проект входной группы\nМеталлокаркас, порталы и обрамление проёмов\nСогласование паспорта фасада и проекта с ТРЦ\nВитражи, стеклянные двери и автоматические системы\nОблицовка композитом, металлом или керамогранитом\nВывеска, подсветка и монтаж под ключ'),
(448,38,46,'<p>Для сетевых клиентов разрабатываем типовые решения, которые легко масштабировать: однажды согласованный проект адаптируется под разные размеры проёмов и фасадов.</p>'),
(449,39,46,'Каркас, облицовка, остекление и вывеска изготавливаются и монтируются одной командой — без стыков между подрядчиками.'),
(450,40,46,'<p>Конструкции рассчитываем с учётом ветровой и снеговой нагрузки, а узлы крепления — под конкретное основание. Поэтому входная группа остаётся геометрически точной и безопасной годами.</p>\n<figure>\n<img alt=\"Входная группа магазина LEGO в фирменном стиле\" height=\"562\" loading=\"lazy\" src=\"/assets/img/photos/project-lego.jpg\" width=\"1000\">\n<figcaption>Входная группа магазина LEGO: объёмные элементы и фирменные цвета бренда.</figcaption>\n</figure>\n<blockquote>\n<p>«Входная группа — это лицо заведения. Она должна быть узнаваемой издалека и безупречной вблизи».</p>\n</blockquote>\n<p>После монтажа даём гарантию на конструкции и светотехнику, а при необходимости — сервисное обслуживание: замену модулей, ремонт автоматики и обновление графики.</p>'),
(451,41,46,'Этапы работ'),
(452,42,46,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-survey.svg\",\"title\":\"Обмеры\",\"text\":\"Выезд на объект, обмеры и фотофиксация фасада.\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-design.svg\",\"title\":\"Проект\",\"text\":\"Дизайн, чертежи, согласования и смета.\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-gear.svg\",\"title\":\"Производство\",\"text\":\"Каркас, облицовка и вывеска в собственном цехе.\"},{\"MIGX_id\":\"4\",\"icon\":\"assets/icons/ic-tools.svg\",\"title\":\"Монтаж\",\"text\":\"Установка, подключение и сдача под ключ.\"}]'),
(453,43,46,'Что изготавливаем'),
(454,44,46,'Каждый элемент входной группы можно заказать отдельно или комплексно.'),
(455,46,46,'[{\"MIGX_id\":\"1\",\"name\":\"Порталы и обрамления\",\"text\":\"Объёмные порталы из композита и металла с интегрированной вывеской.\",\"image\":\"assets/img/photos/service-entrance.jpg\",\"alt\":\"Порталы и обрамления\",\"active\":\"1\"},{\"MIGX_id\":\"2\",\"name\":\"Витрины\",\"text\":\"Витражное остекление, подсветка и оформление витрин.\",\"image\":\"assets/img/photos/about-mark.jpg\",\"alt\":\"Витрины\",\"active\":\"\"},{\"MIGX_id\":\"3\",\"name\":\"Козырьки и навесы\",\"text\":\"Защита входа от осадков со встроенным освещением.\",\"image\":\"assets/img/photos/project-carnegie.jpg\",\"alt\":\"Козырьки и навесы\",\"active\":\"\"},{\"MIGX_id\":\"4\",\"name\":\"Двери и автоматика\",\"text\":\"Стеклянные и алюминиевые двери, раздвижные и автоматические системы.\",\"image\":\"assets/img/photos/project-calzedonia.jpg\",\"alt\":\"Двери и автоматика\",\"active\":\"\"}]'),
(456,47,46,'64||70||67'),
(457,2,46,'web:44;en:45;ru:46'),
(458,3,47,'Зовнішня реклама та вивіски під ключ у Києві — improvision'),
(459,4,47,'Зовнішня реклама та вивіски під ключ у Києві — improvision'),
(460,5,47,'Виготовлення та монтаж вивісок, обʼємних літер, лайтбоксів, світлодіодних екранів і дахових установок. Власне виробництво, погодження та сервіс.'),
(461,16,47,'Зовнішня\nреклама'),
(462,8,47,'assets/img/photos/hero.jpg'),
(463,9,47,'Світлодіодний портал і вивіска KFC'),
(464,12,47,'assets/img/photos/project-kfc.jpg'),
(465,33,47,'Вивіски, обʼємні букви, лайтбокси та дахові установки з власного виробництва.'),
(466,34,47,'4'),
(467,35,47,'Зовнішня реклама'),
(468,36,47,'Що входить у послугу'),
(469,37,47,'Дизайн-макет і візуалізація на фото фасаду\nВиготовлення конструкцій у власному цеху\nРозрахунок конструкції та кріплень\nСвітлодіодне підсвічування та блоки живлення\nПідготовка документів для дозволу\nМонтаж, підключення та сервіс'),
(470,38,47,'<p>Підбираємо тип вивіски під архітектуру будівлі, відстань огляду та бюджет. Для мереж розробляємо стандарти, щоб вивіски на всіх обʼєктах виглядали однаково.</p>'),
(471,39,47,'Використовуємо світлодіоди та блоки живлення з запасом потужності й гарантією виробника — вивіска не тьмяніє та не мерехтить.'),
(472,40,47,'<p>Монтуємо вивіски на фасадах, дахах і в ТРЦ з дотриманням вимог безпеки: працюємо з автовишок і з промисловими альпіністами, а електричне підключення виконують наші електрики.</p>\n<figure>\n<img alt=\"Світлові вивіски KFC на фасаді ТРЦ увечері\" height=\"815\" loading=\"lazy\" src=\"/assets/img/photos/kfc-artmall-1.jpg\" width=\"1448\">\n<figcaption>Комплекс вивісок KFC у ТРЦ ArtMall: обʼємні літери, лайтбокси та медіапортал.</figcaption>\n</figure>\n<blockquote>\n<p>«Хороша вивіска не потребує уваги в обслуговуванні — вона просто світить роками».</p>\n</blockquote>\n<p>Після монтажу беремо вивіски на сервіс: плановий огляд, заміну світлодіодних модулів і блоків живлення, оновлення плівок та чистку конструкцій.</p>'),
(473,41,47,'Етапи робіт'),
(474,42,47,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-survey.svg\",\"title\":\"Замір\",\"text\":\"Обміри фасаду, фото та технічні умови підключення.\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-design.svg\",\"title\":\"Дизайн\",\"text\":\"Макет, візуалізація, креслення та кошторис.\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-gear.svg\",\"title\":\"Виробництво\",\"text\":\"Фрезерування, фарбування та збирання світлотехніки.\"},{\"MIGX_id\":\"4\",\"icon\":\"assets/icons/ic-tools.svg\",\"title\":\"Монтаж\",\"text\":\"Встановлення, підключення та гарантія.\"}]'),
(475,43,47,'Типи вивісок'),
(476,44,47,'Порадимо оптимальне рішення під фасад, відстань огляду та бюджет.'),
(477,46,47,'[{\"MIGX_id\":\"1\",\"name\":\"Обʼємні літери\",\"text\":\"Літери з лицьовим, контражурним або комбінованим підсвічуванням.\",\"image\":\"assets/img/photos/project-calzedonia.jpg\",\"alt\":\"Обʼємні літери\",\"active\":\"1\"},{\"MIGX_id\":\"2\",\"name\":\"Лайтбокси\",\"text\":\"Світлові короби з рівномірним підсвічуванням для логотипів і графіки.\",\"image\":\"assets/img/photos/history-2009-1.jpg\",\"alt\":\"Лайтбокси\",\"active\":\"\"},{\"MIGX_id\":\"3\",\"name\":\"Медіафасади та LED-екрани\",\"text\":\"Динамічний контент і висока яскравість для великих фасадів.\",\"image\":\"assets/img/photos/hero-960.jpg\",\"alt\":\"Медіафасади та LED-екрани\",\"active\":\"\"},{\"MIGX_id\":\"4\",\"name\":\"Дахові установки\",\"text\":\"Великоформатні конструкції з розрахунком на вітрове навантаження.\",\"image\":\"assets/img/photos/kfc-artmall-4.jpg\",\"alt\":\"Дахові установки\",\"active\":\"\"}]'),
(478,47,47,'59||71||65'),
(479,2,47,'web:47;en:48;ru:49'),
(480,3,48,'Outdoor advertising and signage in Kyiv, turnkey — improvision'),
(481,4,48,'Outdoor advertising and signage in Kyiv, turnkey — improvision'),
(482,5,48,'Manufacturing and installation of signs, channel letters, lightboxes, LED screens and rooftop installations. Own production, permits and service.'),
(483,16,48,'Outdoor\nadvertising'),
(484,8,48,'assets/img/photos/hero.jpg'),
(485,9,48,'KFC LED portal and sign'),
(486,12,48,'assets/img/photos/project-kfc.jpg'),
(487,33,48,'Signs, channel letters, lightboxes and rooftop installations from our own production.'),
(488,34,48,'4'),
(489,35,48,'Outdoor advertising'),
(490,36,48,'What’s included'),
(491,37,48,'Layout and visualisation on a photo of the facade\nManufacturing of structures in our own workshop\nStructural and fixing calculations\nLED lighting and power supplies\nPreparation of permit documents\nInstallation, connection and service'),
(492,38,48,'<p>We match the type of sign to the building’s architecture, viewing distance and budget. For chains we develop standards so that signs look the same across all locations.</p>'),
(493,39,48,'We use LEDs and power supplies with spare capacity and a manufacturer’s warranty, so the sign doesn’t fade or flicker.'),
(494,40,48,'<p>We install signs on facades, rooftops and in malls in line with safety requirements: we work from aerial platforms and with industrial climbers, and our own electricians handle the connection.</p>\n<figure>\n<img alt=\"KFC illuminated signs on a mall facade in the evening\" height=\"815\" loading=\"lazy\" src=\"/assets/img/photos/kfc-artmall-1.jpg\" width=\"1448\">\n<figcaption>KFC sign package at ArtMall: channel letters, lightboxes and a media portal.</figcaption>\n</figure>\n<blockquote>\n<p>“A good sign needs no attention — it just keeps shining for years.”</p>\n</blockquote>\n<p>After installation we take signs into service: scheduled inspections, replacement of LED modules and power supplies, film updates and cleaning.</p>'),
(495,41,48,'Work stages'),
(496,42,48,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-survey.svg\",\"title\":\"Survey\",\"text\":\"Facade measurements, photos and power connection requirements.\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-design.svg\",\"title\":\"Design\",\"text\":\"Layout, visualisation, drawings and estimate.\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-gear.svg\",\"title\":\"Production\",\"text\":\"Milling, painting and lighting assembly.\"},{\"MIGX_id\":\"4\",\"icon\":\"assets/icons/ic-tools.svg\",\"title\":\"Installation\",\"text\":\"Mounting, connection and warranty.\"}]'),
(497,43,48,'Types of signs'),
(498,44,48,'We’ll recommend the best option for your facade, viewing distance and budget.'),
(499,46,48,'[{\"MIGX_id\":\"1\",\"name\":\"Channel letters\",\"text\":\"Letters with front, halo or combined illumination.\",\"image\":\"assets/img/photos/project-calzedonia.jpg\",\"alt\":\"Channel letters\",\"active\":\"1\"},{\"MIGX_id\":\"2\",\"name\":\"Lightboxes\",\"text\":\"Light boxes with even illumination for logos and graphics.\",\"image\":\"assets/img/photos/history-2009-1.jpg\",\"alt\":\"Lightboxes\",\"active\":\"\"},{\"MIGX_id\":\"3\",\"name\":\"Media facades and LED screens\",\"text\":\"Dynamic content and high brightness for large facades.\",\"image\":\"assets/img/photos/hero-960.jpg\",\"alt\":\"Media facades and LED screens\",\"active\":\"\"},{\"MIGX_id\":\"4\",\"name\":\"Rooftop installations\",\"text\":\"Large-format structures designed for wind loads.\",\"image\":\"assets/img/photos/kfc-artmall-4.jpg\",\"alt\":\"Rooftop installations\",\"active\":\"\"}]'),
(500,47,48,'60||72||66'),
(501,2,48,'web:47;en:48;ru:49'),
(502,3,49,'Наружная реклама и вывески под ключ в Киеве — improvision'),
(503,4,49,'Наружная реклама и вывески под ключ в Киеве — improvision'),
(504,5,49,'Изготовление и монтаж вывесок, объёмных букв, лайтбоксов, светодиодных экранов и крышных установок. Собственное производство, согласования и сервис.'),
(505,16,49,'Наружная\nреклама'),
(506,8,49,'assets/img/photos/hero.jpg'),
(507,9,49,'Светодиодный портал и вывеска KFC'),
(508,12,49,'assets/img/photos/project-kfc.jpg'),
(509,33,49,'Вывески, объёмные буквы, лайтбоксы и крышные установки собственного производства.'),
(510,34,49,'4'),
(511,35,49,'Наружная реклама'),
(512,36,49,'Что входит в услугу'),
(513,37,49,'Дизайн-макет и визуализация на фото фасада\nИзготовление конструкций в собственном цехе\nРасчёт конструкции и креплений\nСветодиодная подсветка и блоки питания\nПодготовка документов для разрешения\nМонтаж, подключение и сервис'),
(514,38,49,'<p>Подбираем тип вывески под архитектуру здания, расстояние обзора и бюджет. Для сетей разрабатываем стандарты, чтобы вывески на всех объектах выглядели одинаково.</p>'),
(515,39,49,'Используем светодиоды и блоки питания с запасом мощности и гарантией производителя — вывеска не тускнеет и не мерцает.'),
(516,40,49,'<p>Монтируем вывески на фасадах, крышах и в ТРЦ с соблюдением требований безопасности: работаем с автовышек и с промышленными альпинистами, а электрическое подключение выполняют наши электрики.</p>\n<figure>\n<img alt=\"Световые вывески KFC на фасаде ТРЦ вечером\" height=\"815\" loading=\"lazy\" src=\"/assets/img/photos/kfc-artmall-1.jpg\" width=\"1448\">\n<figcaption>Комплекс вывесок KFC в ТРЦ ArtMall: объёмные буквы, лайтбоксы и медиапортал.</figcaption>\n</figure>\n<blockquote>\n<p>«Хорошая вывеска не требует внимания в обслуживании — она просто светит годами».</p>\n</blockquote>\n<p>После монтажа берём вывески на сервис: плановый осмотр, замену светодиодных модулей и блоков питания, обновление плёнок и чистку конструкций.</p>'),
(517,41,49,'Этапы работ'),
(518,42,49,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-survey.svg\",\"title\":\"Замер\",\"text\":\"Обмеры фасада, фото и технические условия подключения.\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-design.svg\",\"title\":\"Дизайн\",\"text\":\"Макет, визуализация, чертежи и смета.\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-gear.svg\",\"title\":\"Производство\",\"text\":\"Фрезеровка, покраска и сборка светотехники.\"},{\"MIGX_id\":\"4\",\"icon\":\"assets/icons/ic-tools.svg\",\"title\":\"Монтаж\",\"text\":\"Установка, подключение и гарантия.\"}]'),
(519,43,49,'Типы вывесок'),
(520,44,49,'Подскажем оптимальное решение под фасад, расстояние обзора и бюджет.'),
(521,46,49,'[{\"MIGX_id\":\"1\",\"name\":\"Объёмные буквы\",\"text\":\"Буквы с лицевой, контражурной или комбинированной подсветкой.\",\"image\":\"assets/img/photos/project-calzedonia.jpg\",\"alt\":\"Объёмные буквы\",\"active\":\"1\"},{\"MIGX_id\":\"2\",\"name\":\"Лайтбоксы\",\"text\":\"Световые короба с равномерной подсветкой для логотипов и графики.\",\"image\":\"assets/img/photos/history-2009-1.jpg\",\"alt\":\"Лайтбоксы\",\"active\":\"\"},{\"MIGX_id\":\"3\",\"name\":\"Медиафасады и LED-экраны\",\"text\":\"Динамический контент и высокая яркость для больших фасадов.\",\"image\":\"assets/img/photos/hero-960.jpg\",\"alt\":\"Медиафасады и LED-экраны\",\"active\":\"\"},{\"MIGX_id\":\"4\",\"name\":\"Крышные установки\",\"text\":\"Крупноформатные конструкции с расчётом на ветровую нагрузку.\",\"image\":\"assets/img/photos/kfc-artmall-4.jpg\",\"alt\":\"Крышные установки\",\"active\":\"\"}]'),
(522,47,49,'61||73||67'),
(523,2,49,'web:47;en:48;ru:49'),
(524,3,50,'Інтерʼєрна реклама та навігація для бізнесу — improvision'),
(525,4,50,'Інтерʼєрна реклама та навігація для бізнесу — improvision'),
(526,5,50,'Брендування торгових залів і офісів, системи навігації, меню-борди та POS-конструкції. Дизайн, виробництво та монтаж під ключ.'),
(527,16,50,'Інтерʼєрна реклама та навігація'),
(528,8,50,'assets/img/photos/service-facades-article.jpg'),
(529,9,50,'Освітлений торговий зал бутика Intimissimi'),
(530,12,50,'assets/img/photos/project-intimissimi.jpg'),
(531,33,50,'Оформлення торгових залів, брендинг простору, системи навігації та POS-конструкції.'),
(532,34,50,'5'),
(533,35,50,'Інтерʼєрна реклама та навігація'),
(534,36,50,'Що входить у послугу'),
(535,37,50,'Аудит простору та сценарії руху відвідувачів\nМеню-борди, лайтбокси та світлові панно\nДизайн системи навігації та піктограм\nPOS-конструкції, стійки та промозони\nБрендування стін, скла та підвісних елементів\nМонтаж уночі без зупинки роботи закладу'),
(536,38,50,'<p>Для мереж створюємо єдині стандарти оформлення: бренд-бук інтерʼєру, типові елементи та специфікації, щоб кожна нова точка виглядала впізнавано й відкривалася швидше.</p>'),
(537,39,50,'Монтуємо вночі або у вихідні — магазин чи ресторан продовжує працювати, а клієнти бачать уже готовий результат.'),
(538,40,50,'<p>Підбираємо матеріали з урахуванням умов експлуатації: стійкі до миття поверхні для ресторанів, антивандальні рішення для зон з великим трафіком, легкі конструкції для підвісного монтажу.</p>\n<figure>\n<img alt=\"Інтерʼєрне оформлення ресторану KFC у ТРЦ\" height=\"900\" loading=\"lazy\" src=\"/assets/img/photos/kfc-artmall-3.jpg\" width=\"1600\">\n<figcaption>Ресторан KFC: фірмові панелі, меню-борди та навігація у фудкорті.</figcaption>\n</figure>\n<blockquote>\n<p>«Найкраща навігація — та, про яку відвідувач не замислюється: він просто знаходить потрібне».</p>\n</blockquote>\n<p>Після запуску оновлюємо промографіку, змінюємо меню-борди та доповнюємо навігацію — швидко й без демонтажу основних конструкцій.</p>'),
(539,41,50,'Етапи робіт'),
(540,42,50,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-survey.svg\",\"title\":\"Аудит\",\"text\":\"Огляд простору, обміри та сценарії руху.\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-design.svg\",\"title\":\"Дизайн\",\"text\":\"Концепція, макети елементів і специфікації.\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-gear.svg\",\"title\":\"Виробництво\",\"text\":\"Друк, фрезерування та збирання конструкцій.\"},{\"MIGX_id\":\"4\",\"icon\":\"assets/icons/ic-tools.svg\",\"title\":\"Монтаж\",\"text\":\"Встановлення в зручний для закладу час.\"}]'),
(541,43,50,'Що оформлюємо'),
(542,44,50,'Від окремих елементів до комплексного брендування всього простору.'),
(543,46,50,'[{\"MIGX_id\":\"1\",\"name\":\"Брендування торгових залів\",\"text\":\"Фірмові стіни, панно та оформлення вітрин зсередини.\",\"image\":\"assets/img/photos/project-intimissimi.jpg\",\"alt\":\"Брендування торгових залів\",\"active\":\"1\"},{\"MIGX_id\":\"2\",\"name\":\"Системи навігації\",\"text\":\"Вказівники, таблички, піктограми та поверхові плани.\",\"image\":\"assets/img/photos/project-globus.jpg\",\"alt\":\"Системи навігації\",\"active\":\"\"},{\"MIGX_id\":\"3\",\"name\":\"Меню-борди\",\"text\":\"Світлові та цифрові меню для ресторанів і кафе.\",\"image\":\"assets/img/photos/project-kfc.jpg\",\"alt\":\"Меню-борди\",\"active\":\"\"},{\"MIGX_id\":\"4\",\"name\":\"POS-конструкції\",\"text\":\"Стійки, промоострівці та рекламні елементи в зоні продажу.\",\"image\":\"assets/img/photos/about-mark.jpg\",\"alt\":\"POS-конструкції\",\"active\":\"\"}]'),
(544,47,50,'68||59||74'),
(545,2,50,'web:50;en:51;ru:52'),
(546,3,51,'Interior signage and wayfinding for business — improvision'),
(547,4,51,'Interior signage and wayfinding for business — improvision'),
(548,5,51,'Branding of retail spaces and offices, wayfinding systems, menu boards and POS displays. Design, production and turnkey installation.'),
(549,16,51,'Interior signage and wayfinding'),
(550,8,51,'assets/img/photos/service-facades-article.jpg'),
(551,9,51,'Illuminated sales floor of an Intimissimi boutique'),
(552,12,51,'assets/img/photos/project-intimissimi.jpg'),
(553,33,51,'Retail interiors, space branding, wayfinding systems and POS displays.'),
(554,34,51,'5'),
(555,35,51,'Interior signage and wayfinding'),
(556,36,51,'What’s included'),
(557,37,51,'Space audit and visitor flow scenarios\nMenu boards, lightboxes and light panels\nDesign of the wayfinding system and pictograms\nPOS displays, stands and promo zones\nBranding of walls, glass and suspended elements\nNight-time installation without closing the venue'),
(558,38,51,'<p>For chains we create unified design standards — an interior brand book, standard elements and specifications — so that every new location is recognisable and opens faster.</p>'),
(559,39,51,'We install at night or at weekends — the store or restaurant keeps trading, and customers see the finished result.'),
(560,40,51,'<p>We choose materials for the operating conditions: washable surfaces for restaurants, vandal-resistant solutions for high-traffic areas and lightweight structures for suspended mounting.</p>\n<figure>\n<img alt=\"Interior branding of a KFC restaurant in a mall\" height=\"900\" loading=\"lazy\" src=\"/assets/img/photos/kfc-artmall-3.jpg\" width=\"1600\">\n<figcaption>KFC restaurant: branded panels, menu boards and food court wayfinding.</figcaption>\n</figure>\n<blockquote>\n<p>“The best wayfinding is the kind visitors don’t think about — they simply find what they need.”</p>\n</blockquote>\n<p>After launch we update promo graphics, change menu boards and extend wayfinding — quickly and without dismantling the main structures.</p>'),
(561,41,51,'Work stages'),
(562,42,51,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-survey.svg\",\"title\":\"Audit\",\"text\":\"Space review, measurements and flow scenarios.\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-design.svg\",\"title\":\"Design\",\"text\":\"Concept, element layouts and specifications.\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-gear.svg\",\"title\":\"Production\",\"text\":\"Printing, milling and assembly of structures.\"},{\"MIGX_id\":\"4\",\"icon\":\"assets/icons/ic-tools.svg\",\"title\":\"Installation\",\"text\":\"Mounting at a time that suits the venue.\"}]'),
(563,43,51,'What we design'),
(564,44,51,'From individual elements to full branding of the entire space.'),
(565,46,51,'[{\"MIGX_id\":\"1\",\"name\":\"Retail space branding\",\"text\":\"Branded walls, panels and storefronts from the inside.\",\"image\":\"assets/img/photos/project-intimissimi.jpg\",\"alt\":\"Retail space branding\",\"active\":\"1\"},{\"MIGX_id\":\"2\",\"name\":\"Wayfinding systems\",\"text\":\"Directional signs, plaques, pictograms and floor plans.\",\"image\":\"assets/img/photos/project-globus.jpg\",\"alt\":\"Wayfinding systems\",\"active\":\"\"},{\"MIGX_id\":\"3\",\"name\":\"Menu boards\",\"text\":\"Illuminated and digital menus for restaurants and cafés.\",\"image\":\"assets/img/photos/project-kfc.jpg\",\"alt\":\"Menu boards\",\"active\":\"\"},{\"MIGX_id\":\"4\",\"name\":\"POS displays\",\"text\":\"Stands, promo islands and advertising elements at the point of sale.\",\"image\":\"assets/img/photos/about-mark.jpg\",\"alt\":\"POS displays\",\"active\":\"\"}]'),
(566,47,51,'69||60||75'),
(567,2,51,'web:50;en:51;ru:52'),
(568,3,52,'Интерьерная реклама и навигация для бизнеса — improvision'),
(569,4,52,'Интерьерная реклама и навигация для бизнеса — improvision'),
(570,5,52,'Брендирование торговых залов и офисов, навигационные системы, меню-борды и POS-конструкции. Дизайн, производство и монтаж под ключ.'),
(571,16,52,'Интерьерная реклама и навигация'),
(572,8,52,'assets/img/photos/service-facades-article.jpg'),
(573,9,52,'Освещённый торговый зал бутика Intimissimi'),
(574,12,52,'assets/img/photos/project-intimissimi.jpg'),
(575,33,52,'Оформление торговых залов, брендинг пространства, навигационные системы и POS-конструкции.'),
(576,34,52,'5'),
(577,35,52,'Интерьерная реклама и навигация'),
(578,36,52,'Что входит в услугу'),
(579,37,52,'Аудит пространства и сценарии движения посетителей\nМеню-борды, лайтбоксы и световые панно\nДизайн навигационной системы и пиктограмм\nPOS-конструкции, стойки и промозоны\nБрендирование стен, стекла и подвесных элементов\nМонтаж ночью без остановки работы заведения'),
(580,38,52,'<p>Для сетей создаём единые стандарты оформления: бренд-бук интерьера, типовые элементы и спецификации, чтобы каждая новая точка выглядела узнаваемо и открывалась быстрее.</p>'),
(581,39,52,'Монтируем ночью или в выходные — магазин или ресторан продолжает работать, а клиенты видят уже готовый результат.'),
(582,40,52,'<p>Подбираем материалы с учётом условий эксплуатации: устойчивые к мытью поверхности для ресторанов, антивандальные решения для зон с большим трафиком, лёгкие конструкции для подвесного монтажа.</p>\n<figure>\n<img alt=\"Интерьерное оформление ресторана KFC в ТРЦ\" height=\"900\" loading=\"lazy\" src=\"/assets/img/photos/kfc-artmall-3.jpg\" width=\"1600\">\n<figcaption>Ресторан KFC: фирменные панели, меню-борды и навигация в фудкорте.</figcaption>\n</figure>\n<blockquote>\n<p>«Лучшая навигация — та, о которой посетитель не задумывается: он просто находит нужное».</p>\n</blockquote>\n<p>После запуска обновляем промографику, меняем меню-борды и дополняем навигацию — быстро и без демонтажа основных конструкций.</p>'),
(583,41,52,'Этапы работ'),
(584,42,52,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-survey.svg\",\"title\":\"Аудит\",\"text\":\"Осмотр пространства, обмеры и сценарии движения.\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-design.svg\",\"title\":\"Дизайн\",\"text\":\"Концепция, макеты элементов и спецификации.\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-gear.svg\",\"title\":\"Производство\",\"text\":\"Печать, фрезеровка и сборка конструкций.\"},{\"MIGX_id\":\"4\",\"icon\":\"assets/icons/ic-tools.svg\",\"title\":\"Монтаж\",\"text\":\"Установка в удобное для заведения время.\"}]'),
(585,43,52,'Что оформляем'),
(586,44,52,'От отдельных элементов до комплексного брендирования всего пространства.'),
(587,46,52,'[{\"MIGX_id\":\"1\",\"name\":\"Брендирование торговых залов\",\"text\":\"Фирменные стены, панно и оформление витрин изнутри.\",\"image\":\"assets/img/photos/project-intimissimi.jpg\",\"alt\":\"Брендирование торговых залов\",\"active\":\"1\"},{\"MIGX_id\":\"2\",\"name\":\"Навигационные системы\",\"text\":\"Указатели, таблички, пиктограммы и поэтажные планы.\",\"image\":\"assets/img/photos/project-globus.jpg\",\"alt\":\"Навигационные системы\",\"active\":\"\"},{\"MIGX_id\":\"3\",\"name\":\"Меню-борды\",\"text\":\"Световые и цифровые меню для ресторанов и кафе.\",\"image\":\"assets/img/photos/project-kfc.jpg\",\"alt\":\"Меню-борды\",\"active\":\"\"},{\"MIGX_id\":\"4\",\"name\":\"POS-конструкции\",\"text\":\"Стойки, промоостровки и рекламные элементы в зоне продаж.\",\"image\":\"assets/img/photos/about-mark.jpg\",\"alt\":\"POS-конструкции\",\"active\":\"\"}]'),
(588,47,52,'70||61||76'),
(589,2,52,'web:50;en:51;ru:52'),
(590,3,53,'Дизайн і проєктування комерційних просторів — improvision'),
(591,4,53,'Дизайн і проєктування комерційних просторів — improvision'),
(592,5,53,'Дизайн-проєкти, 3D-візуалізація, робоча документація та кошториси для магазинів, ресторанів, фасадів і реклами. Проєкти, готові до виробництва та монтажу.'),
(593,16,53,'Дизайн і\nпроєктування'),
(594,8,53,'assets/img/photos/blog-drawings.jpg'),
(595,9,53,'Креслення вивісок і конструкцій KFC'),
(596,12,53,'assets/img/photos/blog-drawings.jpg'),
(597,33,53,'Концепції, візуалізації та робоча документація, готова до виробництва й монтажу.'),
(598,34,53,'6'),
(599,35,53,'Дизайн і проєктування'),
(600,36,53,'Що входить у послугу'),
(601,37,53,'Обміри та фотофіксація обʼєкта\nРобочі креслення та вузли конструкцій\nКонцепція та дизайн-проєкт простору\nСпецифікації матеріалів і обладнання\n3D-візуалізація інтерʼєру та фасаду\nКошторис і супровід погоджень'),
(602,38,53,'<p>Розробляємо проєкти за бренд-буками міжнародних мереж і допомагаємо адаптувати їх до конкретного приміщення, матеріалів та бюджету без втрати фірмового стилю.</p>'),
(603,39,53,'Проєкт від improvision одразу готовий до виробництва: креслення, специфікації та кошторис узгоджені з нашим цехом.'),
(604,40,53,'<p>Супроводжуємо проєкт на всіх погодженнях — з бренд-центром мережі, орендодавцем і технічною службою ТРЦ — і вносимо зміни оперативно, щоб не зсувати графік робіт.</p>\n<figure>\n<img alt=\"Реалізований за проєктом фасад ресторану KFC\" height=\"815\" loading=\"lazy\" src=\"/assets/img/photos/kfc-artmall-2.jpg\" width=\"1448\">\n<figcaption>Від креслень до реалізації: вивіски KFC, виготовлені точно за проєктом.</figcaption>\n</figure>\n<blockquote>\n<p>«Кожна година, витрачена на проєкт, заощаджує день на будівельному майданчику».</p>\n</blockquote>\n<p>Проєкт можна замовити окремо або разом із виробництвом і монтажем. У другому випадку вартість проєктування частково враховується в загальному кошторисі обʼєкта.</p>'),
(605,41,53,'Етапи робіт'),
(606,42,53,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-survey.svg\",\"title\":\"Бриф\",\"text\":\"Задачі, бренд-бук, обміри та обмеження обʼєкта.\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-design.svg\",\"title\":\"Концепція\",\"text\":\"Планування, стиль і 3D-візуалізація.\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-contract.svg\",\"title\":\"Документація\",\"text\":\"Робочі креслення, специфікації та кошторис.\"},{\"MIGX_id\":\"4\",\"icon\":\"assets/icons/ic-handover.svg\",\"title\":\"Супровід\",\"text\":\"Погодження та авторський нагляд.\"}]'),
(607,43,53,'Що ви отримуєте'),
(608,44,53,'Повний пакет документів для виробництва, монтажу та погоджень.'),
(609,46,53,'[{\"MIGX_id\":\"1\",\"name\":\"Дизайн-концепція\",\"text\":\"Стиль, планування та ключові рішення простору.\",\"image\":\"assets/img/photos/service-construction.jpg\",\"alt\":\"Дизайн-концепція\",\"active\":\"1\"},{\"MIGX_id\":\"2\",\"name\":\"3D-візуалізація\",\"text\":\"Фотореалістичні зображення інтерʼєру та фасаду до початку робіт.\",\"image\":\"assets/img/photos/about-hero.jpg\",\"alt\":\"3D-візуалізація\",\"active\":\"\"},{\"MIGX_id\":\"3\",\"name\":\"Робоча документація\",\"text\":\"Креслення, вузли та розрахунки для виробництва й монтажу.\",\"image\":\"assets/img/photos/blog-drawings.jpg\",\"alt\":\"Робоча документація\",\"active\":\"\"},{\"MIGX_id\":\"4\",\"name\":\"Кошторис і специфікації\",\"text\":\"Прозорий розрахунок матеріалів, робіт і строків.\",\"image\":\"assets/img/photos/material-panels.jpg\",\"alt\":\"Кошторис і специфікації\",\"active\":\"\"}]'),
(610,47,53,'59||62||71'),
(611,2,53,'web:53;en:54;ru:55'),
(612,3,54,'Design and engineering of commercial spaces — improvision'),
(613,4,54,'Design and engineering of commercial spaces — improvision'),
(614,5,54,'Design concepts, 3D visualisation, working documentation and estimates for stores, restaurants, facades and signage. Designs ready for production and installation.'),
(615,16,54,'Design and\nengineering'),
(616,8,54,'assets/img/photos/blog-drawings.jpg'),
(617,9,54,'Drawings of KFC signs and structures'),
(618,12,54,'assets/img/photos/blog-drawings.jpg'),
(619,33,54,'Concepts, visualisations and working documentation ready for production and installation.'),
(620,34,54,'6'),
(621,35,54,'Design and engineering'),
(622,36,54,'What’s included'),
(623,37,54,'Site measurements and photo survey\nWorking drawings and structural details\nConcept and interior design\nMaterial and equipment specifications\n3D visualisation of the interior and facade\nEstimate and support with approvals'),
(624,38,54,'<p>We develop designs to the brand books of international chains and help adapt them to a specific space, materials and budget without losing the brand identity.</p>'),
(625,39,54,'An improvision design is production-ready from the start: drawings, specifications and the estimate are aligned with our workshop.'),
(626,40,54,'<p>We support the design through all approvals — with the chain’s brand centre, the landlord and the mall’s technical team — and make changes promptly so the schedule doesn’t slip.</p>\n<figure>\n<img alt=\"KFC restaurant facade built to the design\" height=\"815\" loading=\"lazy\" src=\"/assets/img/photos/kfc-artmall-2.jpg\" width=\"1448\">\n<figcaption>From drawings to reality: KFC signs made exactly to the design.</figcaption>\n</figure>\n<blockquote>\n<p>“Every hour spent on design saves a day on site.”</p>\n</blockquote>\n<p>The design can be ordered separately or together with production and installation. In the latter case, part of the design cost is included in the overall project estimate.</p>'),
(627,41,54,'Work stages'),
(628,42,54,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-survey.svg\",\"title\":\"Brief\",\"text\":\"Goals, brand book, measurements and site constraints.\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-design.svg\",\"title\":\"Concept\",\"text\":\"Layout, style and 3D visualisation.\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-contract.svg\",\"title\":\"Documentation\",\"text\":\"Working drawings, specifications and estimate.\"},{\"MIGX_id\":\"4\",\"icon\":\"assets/icons/ic-handover.svg\",\"title\":\"Supervision\",\"text\":\"Approvals and design supervision.\"}]'),
(629,43,54,'What you get'),
(630,44,54,'A complete set of documents for production, installation and approvals.'),
(631,46,54,'[{\"MIGX_id\":\"1\",\"name\":\"Design concept\",\"text\":\"Style, layout and key solutions for the space.\",\"image\":\"assets/img/photos/service-construction.jpg\",\"alt\":\"Design concept\",\"active\":\"1\"},{\"MIGX_id\":\"2\",\"name\":\"3D visualisation\",\"text\":\"Photorealistic images of the interior and facade before work begins.\",\"image\":\"assets/img/photos/about-hero.jpg\",\"alt\":\"3D visualisation\",\"active\":\"\"},{\"MIGX_id\":\"3\",\"name\":\"Working documentation\",\"text\":\"Drawings, details and calculations for production and installation.\",\"image\":\"assets/img/photos/blog-drawings.jpg\",\"alt\":\"Working documentation\",\"active\":\"\"},{\"MIGX_id\":\"4\",\"name\":\"Estimate and specifications\",\"text\":\"A transparent breakdown of materials, works and timelines.\",\"image\":\"assets/img/photos/material-panels.jpg\",\"alt\":\"Estimate and specifications\",\"active\":\"\"}]'),
(632,47,54,'60||63||72'),
(633,2,54,'web:53;en:54;ru:55'),
(634,3,55,'Дизайн и проектирование коммерческих пространств — improvision'),
(635,4,55,'Дизайн и проектирование коммерческих пространств — improvision'),
(636,5,55,'Дизайн-проекты, 3D-визуализация, рабочая документация и сметы для магазинов, ресторанов, фасадов и рекламы. Проекты, готовые к производству и монтажу.'),
(637,16,55,'Дизайн и\nпроектирование'),
(638,8,55,'assets/img/photos/blog-drawings.jpg'),
(639,9,55,'Чертежи вывесок и конструкций KFC'),
(640,12,55,'assets/img/photos/blog-drawings.jpg'),
(641,33,55,'Концепции, визуализации и рабочая документация, готовая к производству и монтажу.'),
(642,34,55,'6'),
(643,35,55,'Дизайн и проектирование'),
(644,36,55,'Что входит в услугу'),
(645,37,55,'Обмеры и фотофиксация объекта\nРабочие чертежи и узлы конструкций\nКонцепция и дизайн-проект пространства\nСпецификации материалов и оборудования\n3D-визуализация интерьера и фасада\nСмета и сопровождение согласований'),
(646,38,55,'<p>Разрабатываем проекты по бренд-букам международных сетей и помогаем адаптировать их к конкретному помещению, материалам и бюджету без потери фирменного стиля.</p>'),
(647,39,55,'Проект от improvision сразу готов к производству: чертежи, спецификации и смета согласованы с нашим цехом.'),
(648,40,55,'<p>Сопровождаем проект на всех согласованиях — с бренд-центром сети, арендодателем и технической службой ТРЦ — и оперативно вносим изменения, чтобы не сдвигать график работ.</p>\n<figure>\n<img alt=\"Реализованный по проекту фасад ресторана KFC\" height=\"815\" loading=\"lazy\" src=\"/assets/img/photos/kfc-artmall-2.jpg\" width=\"1448\">\n<figcaption>От чертежей до реализации: вывески KFC, изготовленные точно по проекту.</figcaption>\n</figure>\n<blockquote>\n<p>«Каждый час, потраченный на проект, экономит день на стройплощадке».</p>\n</blockquote>\n<p>Проект можно заказать отдельно или вместе с производством и монтажом. Во втором случае стоимость проектирования частично учитывается в общей смете объекта.</p>'),
(649,41,55,'Этапы работ'),
(650,42,55,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-survey.svg\",\"title\":\"Бриф\",\"text\":\"Задачи, бренд-бук, обмеры и ограничения объекта.\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-design.svg\",\"title\":\"Концепция\",\"text\":\"Планировка, стиль и 3D-визуализация.\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-contract.svg\",\"title\":\"Документация\",\"text\":\"Рабочие чертежи, спецификации и смета.\"},{\"MIGX_id\":\"4\",\"icon\":\"assets/icons/ic-handover.svg\",\"title\":\"Сопровождение\",\"text\":\"Согласования и авторский надзор.\"}]'),
(651,43,55,'Что вы получаете'),
(652,44,55,'Полный пакет документов для производства, монтажа и согласований.'),
(653,46,55,'[{\"MIGX_id\":\"1\",\"name\":\"Дизайн-концепция\",\"text\":\"Стиль, планировка и ключевые решения пространства.\",\"image\":\"assets/img/photos/service-construction.jpg\",\"alt\":\"Дизайн-концепция\",\"active\":\"1\"},{\"MIGX_id\":\"2\",\"name\":\"3D-визуализация\",\"text\":\"Фотореалистичные изображения интерьера и фасада до начала работ.\",\"image\":\"assets/img/photos/about-hero.jpg\",\"alt\":\"3D-визуализация\",\"active\":\"\"},{\"MIGX_id\":\"3\",\"name\":\"Рабочая документация\",\"text\":\"Чертежи, узлы и расчёты для производства и монтажа.\",\"image\":\"assets/img/photos/blog-drawings.jpg\",\"alt\":\"Рабочая документация\",\"active\":\"\"},{\"MIGX_id\":\"4\",\"name\":\"Смета и спецификации\",\"text\":\"Прозрачный расчёт материалов, работ и сроков.\",\"image\":\"assets/img/photos/material-panels.jpg\",\"alt\":\"Смета и спецификации\",\"active\":\"\"}]'),
(654,47,55,'61||64||73'),
(655,2,55,'web:53;en:54;ru:55'),
(656,3,56,'Оздоблювальні та реконструкційні роботи для бізнесу — improvision'),
(657,4,56,'Оздоблювальні та реконструкційні роботи для бізнесу — improvision'),
(658,5,56,'Оздоблення та реконструкція комерційних приміщень і фасадів: перепланування, інженерні мережі, стелі, підлоги та фінішні роботи під ключ.'),
(659,16,56,'Оздоблювальні та реконструкційні роботи'),
(660,8,56,'assets/img/photos/blog-facade.jpg'),
(661,9,56,'Бізнес-центр після реконструкції фасаду'),
(662,12,56,'assets/img/photos/blog-facade.jpg'),
(663,33,56,'Оздоблення, перепланування та реконструкція приміщень і фасадів без зупинки бізнесу.'),
(664,34,56,'7'),
(665,35,56,'Оздоблювальні та реконструкційні роботи'),
(666,36,56,'Що входить у послугу'),
(667,37,56,'Обстеження конструкцій та інженерних мереж\nСтелі, підлоги та оздоблення стін\nДемонтаж і перепланування приміщень\nЗаміна електрики, вентиляції та освітлення\nРеконструкція фасадів і вхідних груп\nПрибирання та здача обʼєкта'),
(668,38,56,'<p>Перед стартом складаємо детальний графік із замовником і адміністрацією ТРЦ чи бізнес-центру, щоб шумні роботи та доставка матеріалів не заважали відвідувачам і сусіднім орендарям.</p>'),
(669,39,56,'Плануємо роботи так, щоб заклад закривався якнайменше — або не закривався зовсім.'),
(670,40,56,'<p>Використовуємо матеріали для комерційних приміщень з підвищеною зносостійкістю та пожежною безпекою, а приховані роботи фіксуємо актами й фотозвітами.</p>\n<figure>\n<img alt=\"Вхідна група бізнес-центру Carnegie Center після реконструкції\" height=\"450\" loading=\"lazy\" src=\"/assets/img/photos/project-carnegie.jpg\" width=\"800\">\n<figcaption>Carnegie Center: оновлений вхід і фасадні елементи бізнес-центру.</figcaption>\n</figure>\n<blockquote>\n<p>«Найкраща реконструкція — та, яку клієнти помічають лише за результатом».</p>\n</blockquote>\n<p>Після завершення робіт передаємо виконавчу документацію та надаємо гарантію. Для мереж готові виконувати реконструкцію кількох обʼєктів паралельно за єдиним стандартом.</p>'),
(671,41,56,'Етапи робіт'),
(672,42,56,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-survey.svg\",\"title\":\"Обстеження\",\"text\":\"Огляд обʼєкта, обміри та дефектний акт.\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-design.svg\",\"title\":\"Проєкт\",\"text\":\"Рішення, графік робіт і кошторис.\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-tools.svg\",\"title\":\"Роботи\",\"text\":\"Демонтаж, інженерія та оздоблення поетапно.\"},{\"MIGX_id\":\"4\",\"icon\":\"assets/icons/ic-handover.svg\",\"title\":\"Здача\",\"text\":\"Прибирання, документація та гарантія.\"}]'),
(673,43,56,'Види робіт'),
(674,44,56,'Виконуємо як окремі роботи, так і комплексну реконструкцію обʼєкта.'),
(675,46,56,'[{\"MIGX_id\":\"1\",\"name\":\"Оздоблення приміщень\",\"text\":\"Стіни, підлоги, стелі та декоративні елементи.\",\"image\":\"assets/img/photos/kfc-artmall-3.jpg\",\"alt\":\"Оздоблення приміщень\",\"active\":\"1\"},{\"MIGX_id\":\"2\",\"name\":\"Перепланування\",\"text\":\"Нові зали, зони обслуговування та службові приміщення.\",\"image\":\"assets/img/photos/project-intimissimi.jpg\",\"alt\":\"Перепланування\",\"active\":\"\"},{\"MIGX_id\":\"3\",\"name\":\"Інженерні мережі\",\"text\":\"Електрика, освітлення, вентиляція та кондиціювання.\",\"image\":\"assets/img/photos/project-calzedonia.jpg\",\"alt\":\"Інженерні мережі\",\"active\":\"\"},{\"MIGX_id\":\"4\",\"name\":\"Реконструкція фасадів\",\"text\":\"Оновлення облицювання, вхідних груп і вітрин.\",\"image\":\"assets/img/photos/service-facades.jpg\",\"alt\":\"Реконструкція фасадів\",\"active\":\"\"}]'),
(676,47,56,'65||74||68'),
(677,2,56,'web:56;en:57;ru:58'),
(678,3,57,'Finishing and renovation works for business — improvision'),
(679,4,57,'Finishing and renovation works for business — improvision'),
(680,5,57,'Finishing and renovation of commercial premises and facades: re-planning, utilities, ceilings, floors and turnkey final finishing.'),
(681,16,57,'Finishing and renovation works'),
(682,8,57,'assets/img/photos/blog-facade.jpg'),
(683,9,57,'Business centre after facade renovation'),
(684,12,57,'assets/img/photos/blog-facade.jpg'),
(685,33,57,'Finishing, re-planning and renovation of premises and facades without stopping your business.'),
(686,34,57,'7'),
(687,35,57,'Finishing and renovation works'),
(688,36,57,'What’s included'),
(689,37,57,'Survey of structures and utilities\nCeilings, floors and wall finishes\nDemolition and re-planning of premises\nReplacement of electrics, ventilation and lighting\nRenovation of facades and entrance groups\nCleaning and handover'),
(690,38,57,'<p>Before starting we draw up a detailed schedule with the client and the mall or business centre management, so that noisy works and deliveries don’t disturb visitors or neighbouring tenants.</p>'),
(691,39,57,'We plan the works so the venue closes for as little time as possible — or not at all.'),
(692,40,57,'<p>We use commercial-grade materials with high wear resistance and fire safety, and document concealed works with certificates and photo reports.</p>\n<figure>\n<img alt=\"Carnegie Center business centre entrance after renovation\" height=\"450\" loading=\"lazy\" src=\"/assets/img/photos/project-carnegie.jpg\" width=\"800\">\n<figcaption>Carnegie Center: a renewed entrance and facade elements of the business centre.</figcaption>\n</figure>\n<blockquote>\n<p>“The best renovation is one that customers notice only by its result.”</p>\n</blockquote>\n<p>On completion we hand over as-built documentation and provide a warranty. For chains we can renovate several locations in parallel to a single standard.</p>'),
(693,41,57,'Work stages'),
(694,42,57,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-survey.svg\",\"title\":\"Survey\",\"text\":\"Site inspection, measurements and defect report.\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-design.svg\",\"title\":\"Design\",\"text\":\"Solutions, work schedule and estimate.\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-tools.svg\",\"title\":\"Works\",\"text\":\"Demolition, utilities and finishing in stages.\"},{\"MIGX_id\":\"4\",\"icon\":\"assets/icons/ic-handover.svg\",\"title\":\"Handover\",\"text\":\"Cleaning, documentation and warranty.\"}]'),
(695,43,57,'Types of work'),
(696,44,57,'We carry out individual works as well as full renovation of a property.'),
(697,46,57,'[{\"MIGX_id\":\"1\",\"name\":\"Interior finishing\",\"text\":\"Walls, floors, ceilings and decorative elements.\",\"image\":\"assets/img/photos/kfc-artmall-3.jpg\",\"alt\":\"Interior finishing\",\"active\":\"1\"},{\"MIGX_id\":\"2\",\"name\":\"Re-planning\",\"text\":\"New sales floors, service areas and back-of-house rooms.\",\"image\":\"assets/img/photos/project-intimissimi.jpg\",\"alt\":\"Re-planning\",\"active\":\"\"},{\"MIGX_id\":\"3\",\"name\":\"Utilities\",\"text\":\"Electrics, lighting, ventilation and air conditioning.\",\"image\":\"assets/img/photos/project-calzedonia.jpg\",\"alt\":\"Utilities\",\"active\":\"\"},{\"MIGX_id\":\"4\",\"name\":\"Facade renovation\",\"text\":\"Renewal of cladding, entrances and storefronts.\",\"image\":\"assets/img/photos/service-facades.jpg\",\"alt\":\"Facade renovation\",\"active\":\"\"}]'),
(698,47,57,'66||75||69'),
(699,2,57,'web:56;en:57;ru:58'),
(700,3,58,'Отделочные и реконструкционные работы для бизнеса — improvision'),
(701,4,58,'Отделочные и реконструкционные работы для бизнеса — improvision'),
(702,5,58,'Отделка и реконструкция коммерческих помещений и фасадов: перепланировка, инженерные сети, потолки, полы и финишные работы под ключ.'),
(703,16,58,'Отделочные и реконструкционные работы'),
(704,8,58,'assets/img/photos/blog-facade.jpg'),
(705,9,58,'Бизнес-центр после реконструкции фасада'),
(706,12,58,'assets/img/photos/blog-facade.jpg'),
(707,33,58,'Отделка, перепланировка и реконструкция помещений и фасадов без остановки бизнеса.'),
(708,34,58,'7'),
(709,35,58,'Отделочные и реконструкционные работы'),
(710,36,58,'Что входит в услугу'),
(711,37,58,'Обследование конструкций и инженерных сетей\nПотолки, полы и отделка стен\nДемонтаж и перепланировка помещений\nЗамена электрики, вентиляции и освещения\nРеконструкция фасадов и входных групп\nУборка и сдача объекта'),
(712,38,58,'<p>Перед стартом составляем детальный график с заказчиком и администрацией ТРЦ или бизнес-центра, чтобы шумные работы и доставка материалов не мешали посетителям и соседним арендаторам.</p>'),
(713,39,58,'Планируем работы так, чтобы заведение закрывалось как можно меньше — или не закрывалось вовсе.'),
(714,40,58,'<p>Используем материалы для коммерческих помещений с повышенной износостойкостью и пожарной безопасностью, а скрытые работы фиксируем актами и фотоотчётами.</p>\n<figure>\n<img alt=\"Входная группа бизнес-центра Carnegie Center после реконструкции\" height=\"450\" loading=\"lazy\" src=\"/assets/img/photos/project-carnegie.jpg\" width=\"800\">\n<figcaption>Carnegie Center: обновлённый вход и фасадные элементы бизнес-центра.</figcaption>\n</figure>\n<blockquote>\n<p>«Лучшая реконструкция — та, которую клиенты замечают только по результату».</p>\n</blockquote>\n<p>После завершения работ передаём исполнительную документацию и даём гарантию. Для сетей готовы выполнять реконструкцию нескольких объектов параллельно по единому стандарту.</p>'),
(715,41,58,'Этапы работ'),
(716,42,58,'[{\"MIGX_id\":\"1\",\"icon\":\"assets/icons/ic-survey.svg\",\"title\":\"Обследование\",\"text\":\"Осмотр объекта, обмеры и дефектный акт.\"},{\"MIGX_id\":\"2\",\"icon\":\"assets/icons/ic-design.svg\",\"title\":\"Проект\",\"text\":\"Решения, график работ и смета.\"},{\"MIGX_id\":\"3\",\"icon\":\"assets/icons/ic-tools.svg\",\"title\":\"Работы\",\"text\":\"Демонтаж, инженерия и отделка поэтапно.\"},{\"MIGX_id\":\"4\",\"icon\":\"assets/icons/ic-handover.svg\",\"title\":\"Сдача\",\"text\":\"Уборка, документация и гарантия.\"}]'),
(717,43,58,'Виды работ'),
(718,44,58,'Выполняем как отдельные работы, так и комплексную реконструкцию объекта.'),
(719,46,58,'[{\"MIGX_id\":\"1\",\"name\":\"Отделка помещений\",\"text\":\"Стены, полы, потолки и декоративные элементы.\",\"image\":\"assets/img/photos/kfc-artmall-3.jpg\",\"alt\":\"Отделка помещений\",\"active\":\"1\"},{\"MIGX_id\":\"2\",\"name\":\"Перепланировка\",\"text\":\"Новые залы, зоны обслуживания и служебные помещения.\",\"image\":\"assets/img/photos/project-intimissimi.jpg\",\"alt\":\"Перепланировка\",\"active\":\"\"},{\"MIGX_id\":\"3\",\"name\":\"Инженерные сети\",\"text\":\"Электрика, освещение, вентиляция и кондиционирование.\",\"image\":\"assets/img/photos/project-calzedonia.jpg\",\"alt\":\"Инженерные сети\",\"active\":\"\"},{\"MIGX_id\":\"4\",\"name\":\"Реконструкция фасадов\",\"text\":\"Обновление облицовки, входных групп и витрин.\",\"image\":\"assets/img/photos/service-facades.jpg\",\"alt\":\"Реконструкция фасадов\",\"active\":\"\"}]'),
(720,47,58,'67||76||70'),
(721,2,58,'web:56;en:57;ru:58'),
(722,48,59,'KFC'),
(723,49,59,'Київ'),
(724,50,59,'2023'),
(725,51,59,'restaurants'),
(726,12,59,'assets/img/photos/project-kfc.jpg'),
(727,13,59,'KFC — Ресторан у ТРЦ ArtMall'),
(728,3,59,'Ресторан KFC у ТРЦ ArtMall — проєкт improvision'),
(729,4,59,'Ресторан у ТРЦ ArtMall — improvision'),
(730,5,59,'Комплексне облаштування ресторану KFC у ТРЦ ArtMall: вхідна група, фасадні елементи, світлові вивіски, внутрішня навігація та POS-конструкції під ключ.'),
(731,52,59,'[{\"MIGX_id\":\"1\",\"image\":\"assets/img/photos/kfc-night.jpg\",\"alt\":\"Фасад ресторану KFC у ТРЦ ArtMall вночі\"},{\"MIGX_id\":\"2\",\"image\":\"assets/img/photos/kfc-dusk.jpg\",\"alt\":\"Світлові вивіски KFC Авто на фасаді ТРЦ\"},{\"MIGX_id\":\"3\",\"image\":\"assets/img/photos/kfc-artmall-3.jpg\",\"alt\":\"Ресторан KFC всередині ТРЦ ArtMall\"},{\"MIGX_id\":\"4\",\"image\":\"assets/img/photos/kfc-artmall-4.jpg\",\"alt\":\"Обʼємні світлові літери KFC над входом\"},{\"MIGX_id\":\"5\",\"image\":\"assets/img/photos/kfc-artmall-5.jpg\",\"alt\":\"Лайтбокс KFC і вивіска KFC Авто\"}]'),
(732,37,59,'Проєктування та погодження конструкцій за бренд-буком мережі\nВиготовлення обʼємних світлових букв і фасадної вивіски\nМонтаж вхідної групи, порталу та вітринних елементів\nВнутрішня навігація, меню-борди та POS-конструкції\nПусконалагодження світлотехніки та здача обʼєкта під ключ'),
(733,53,59,'[{\"MIGX_id\":\"1\",\"title\":\"Зовнішня реклама\",\"link\":\"47\"},{\"MIGX_id\":\"2\",\"title\":\"Вхідні групи\",\"link\":\"44\"},{\"MIGX_id\":\"3\",\"title\":\"Інтерʼєрна навігація\",\"link\":\"50\"},{\"MIGX_id\":\"4\",\"title\":\"Світлотехніка\",\"link\":\"\"}]'),
(734,54,59,'[{\"MIGX_id\":\"1\",\"label\":\"Замовник\",\"value\":\"KFC\"},{\"MIGX_id\":\"2\",\"label\":\"Тип обʼєкта\",\"value\":\"Ресторан у ТРЦ\"},{\"MIGX_id\":\"3\",\"label\":\"Локація\",\"value\":\"ArtMall, Київ\"},{\"MIGX_id\":\"4\",\"label\":\"Площа робіт\",\"value\":\"≈ 420 м²\"},{\"MIGX_id\":\"5\",\"label\":\"Строк реалізації\",\"value\":\"6 тижнів\"},{\"MIGX_id\":\"6\",\"label\":\"Рік\",\"value\":\"2023\"}]'),
(735,2,59,'web:59;en:60;ru:61'),
(736,48,60,'KFC'),
(737,49,60,'Kyiv'),
(738,50,60,'2023'),
(739,51,60,'restaurants'),
(740,12,60,'assets/img/photos/project-kfc.jpg'),
(741,13,60,'KFC — restaurant at ArtMall'),
(742,3,60,'KFC restaurant at ArtMall — an improvision project'),
(743,4,60,'Restaurant at ArtMall — improvision'),
(744,5,60,'Complete turnkey fit-out of a KFC restaurant at ArtMall: entrance group, facade elements, illuminated signs, interior wayfinding and POS displays.'),
(745,52,60,'[{\"MIGX_id\":\"1\",\"image\":\"assets/img/photos/kfc-night.jpg\",\"alt\":\"KFC restaurant facade at ArtMall at night\"},{\"MIGX_id\":\"2\",\"image\":\"assets/img/photos/kfc-dusk.jpg\",\"alt\":\"KFC Drive illuminated signs on the mall facade\"},{\"MIGX_id\":\"3\",\"image\":\"assets/img/photos/kfc-artmall-3.jpg\",\"alt\":\"KFC restaurant inside ArtMall\"},{\"MIGX_id\":\"4\",\"image\":\"assets/img/photos/kfc-artmall-4.jpg\",\"alt\":\"KFC illuminated channel letters above the entrance\"},{\"MIGX_id\":\"5\",\"image\":\"assets/img/photos/kfc-artmall-5.jpg\",\"alt\":\"KFC lightbox and KFC Drive sign\"}]'),
(746,37,60,'Design and approval of structures to the chain’s brand book\nManufacturing of illuminated channel letters and the facade sign\nInstallation of the entrance group, portal and storefront elements\nInterior wayfinding, menu boards and POS displays\nCommissioning of lighting and turnkey handover'),
(747,53,60,'[{\"MIGX_id\":\"1\",\"title\":\"Outdoor advertising\",\"link\":\"48\"},{\"MIGX_id\":\"2\",\"title\":\"Entrance groups\",\"link\":\"45\"},{\"MIGX_id\":\"3\",\"title\":\"Interior wayfinding\",\"link\":\"51\"},{\"MIGX_id\":\"4\",\"title\":\"Lighting\",\"link\":\"\"}]'),
(748,54,60,'[{\"MIGX_id\":\"1\",\"label\":\"Client\",\"value\":\"KFC\"},{\"MIGX_id\":\"2\",\"label\":\"Property type\",\"value\":\"Restaurant in a mall\"},{\"MIGX_id\":\"3\",\"label\":\"Location\",\"value\":\"ArtMall, Kyiv\"},{\"MIGX_id\":\"4\",\"label\":\"Work area\",\"value\":\"≈ 420 m²\"},{\"MIGX_id\":\"5\",\"label\":\"Delivery time\",\"value\":\"6 weeks\"},{\"MIGX_id\":\"6\",\"label\":\"Year\",\"value\":\"2023\"}]'),
(749,2,60,'web:59;en:60;ru:61'),
(750,48,61,'KFC'),
(751,49,61,'Киев'),
(752,50,61,'2023'),
(753,51,61,'restaurants'),
(754,12,61,'assets/img/photos/project-kfc.jpg'),
(755,13,61,'KFC — ресторан в ТРЦ ArtMall'),
(756,3,61,'Ресторан KFC в ТРЦ ArtMall — проект improvision'),
(757,4,61,'Ресторан в ТРЦ ArtMall — improvision'),
(758,5,61,'Комплексное обустройство ресторана KFC в ТРЦ ArtMall: входная группа, фасадные элементы, световые вывески, внутренняя навигация и POS-конструкции под ключ.'),
(759,52,61,'[{\"MIGX_id\":\"1\",\"image\":\"assets/img/photos/kfc-night.jpg\",\"alt\":\"Фасад ресторана KFC в ТРЦ ArtMall ночью\"},{\"MIGX_id\":\"2\",\"image\":\"assets/img/photos/kfc-dusk.jpg\",\"alt\":\"Световые вывески KFC Авто на фасаде ТРЦ\"},{\"MIGX_id\":\"3\",\"image\":\"assets/img/photos/kfc-artmall-3.jpg\",\"alt\":\"Ресторан KFC внутри ТРЦ ArtMall\"},{\"MIGX_id\":\"4\",\"image\":\"assets/img/photos/kfc-artmall-4.jpg\",\"alt\":\"Объёмные световые буквы KFC над входом\"},{\"MIGX_id\":\"5\",\"image\":\"assets/img/photos/kfc-artmall-5.jpg\",\"alt\":\"Лайтбокс KFC и вывеска KFC Авто\"}]'),
(760,37,61,'Проектирование и согласование конструкций по бренд-буку сети\nИзготовление объёмных световых букв и фасадной вывески\nМонтаж входной группы, портала и витринных элементов\nВнутренняя навигация, меню-борды и POS-конструкции\nПусконаладка светотехники и сдача объекта под ключ'),
(761,53,61,'[{\"MIGX_id\":\"1\",\"title\":\"Наружная реклама\",\"link\":\"49\"},{\"MIGX_id\":\"2\",\"title\":\"Входные группы\",\"link\":\"46\"},{\"MIGX_id\":\"3\",\"title\":\"Интерьерная навигация\",\"link\":\"52\"},{\"MIGX_id\":\"4\",\"title\":\"Светотехника\",\"link\":\"\"}]'),
(762,54,61,'[{\"MIGX_id\":\"1\",\"label\":\"Заказчик\",\"value\":\"KFC\"},{\"MIGX_id\":\"2\",\"label\":\"Тип объекта\",\"value\":\"Ресторан в ТРЦ\"},{\"MIGX_id\":\"3\",\"label\":\"Локация\",\"value\":\"ArtMall, Киев\"},{\"MIGX_id\":\"4\",\"label\":\"Площадь работ\",\"value\":\"≈ 420 м²\"},{\"MIGX_id\":\"5\",\"label\":\"Срок реализации\",\"value\":\"6 недель\"},{\"MIGX_id\":\"6\",\"label\":\"Год\",\"value\":\"2023\"}]'),
(763,2,61,'web:59;en:60;ru:61'),
(764,48,62,'LEGO'),
(765,49,62,'Київ'),
(766,50,62,'2023'),
(767,51,62,'retail'),
(768,12,62,'assets/img/photos/project-lego.jpg'),
(769,13,62,'LEGO — Флагманський магазин, Lavina Mall'),
(770,54,62,'[{\"MIGX_id\":\"1\",\"label\":\"Замовник\",\"value\":\"LEGO\"},{\"MIGX_id\":\"2\",\"label\":\"Локація\",\"value\":\"Київ\"},{\"MIGX_id\":\"3\",\"label\":\"Рік\",\"value\":\"2023\"}]'),
(771,2,62,'web:62;en:63;ru:64'),
(772,48,63,'LEGO'),
(773,49,63,'Kyiv'),
(774,50,63,'2023'),
(775,51,63,'retail'),
(776,12,63,'assets/img/photos/project-lego.jpg'),
(777,13,63,'LEGO — flagship store, Lavina Mall'),
(778,54,63,'[{\"MIGX_id\":\"1\",\"label\":\"Client\",\"value\":\"LEGO\"},{\"MIGX_id\":\"2\",\"label\":\"Location\",\"value\":\"Kyiv\"},{\"MIGX_id\":\"3\",\"label\":\"Year\",\"value\":\"2023\"}]'),
(779,2,63,'web:62;en:63;ru:64'),
(780,48,64,'LEGO'),
(781,49,64,'Киев'),
(782,50,64,'2023'),
(783,51,64,'retail'),
(784,12,64,'assets/img/photos/project-lego.jpg'),
(785,13,64,'LEGO — флагманский магазин, Lavina Mall'),
(786,54,64,'[{\"MIGX_id\":\"1\",\"label\":\"Заказчик\",\"value\":\"LEGO\"},{\"MIGX_id\":\"2\",\"label\":\"Локация\",\"value\":\"Киев\"},{\"MIGX_id\":\"3\",\"label\":\"Год\",\"value\":\"2023\"}]'),
(787,2,64,'web:62;en:63;ru:64'),
(788,48,65,'Carnegie Center'),
(789,49,65,'Київ'),
(790,50,65,'2023'),
(791,51,65,'facades'),
(792,12,65,'assets/img/photos/project-carnegie.jpg'),
(793,13,65,'Carnegie Center — Вентильований фасад БЦ'),
(794,54,65,'[{\"MIGX_id\":\"1\",\"label\":\"Замовник\",\"value\":\"Carnegie Center\"},{\"MIGX_id\":\"2\",\"label\":\"Локація\",\"value\":\"Київ\"},{\"MIGX_id\":\"3\",\"label\":\"Рік\",\"value\":\"2023\"}]'),
(795,2,65,'web:65;en:66;ru:67'),
(796,48,66,'Carnegie Center'),
(797,49,66,'Kyiv'),
(798,50,66,'2023'),
(799,51,66,'facades'),
(800,12,66,'assets/img/photos/project-carnegie.jpg'),
(801,13,66,'Carnegie Center — business centre ventilated facade'),
(802,54,66,'[{\"MIGX_id\":\"1\",\"label\":\"Client\",\"value\":\"Carnegie Center\"},{\"MIGX_id\":\"2\",\"label\":\"Location\",\"value\":\"Kyiv\"},{\"MIGX_id\":\"3\",\"label\":\"Year\",\"value\":\"2023\"}]'),
(803,2,66,'web:65;en:66;ru:67'),
(804,48,67,'Carnegie Center'),
(805,49,67,'Киев'),
(806,50,67,'2023'),
(807,51,67,'facades'),
(808,12,67,'assets/img/photos/project-carnegie.jpg'),
(809,13,67,'Carnegie Center — вентилируемый фасад БЦ'),
(810,54,67,'[{\"MIGX_id\":\"1\",\"label\":\"Заказчик\",\"value\":\"Carnegie Center\"},{\"MIGX_id\":\"2\",\"label\":\"Локация\",\"value\":\"Киев\"},{\"MIGX_id\":\"3\",\"label\":\"Год\",\"value\":\"2023\"}]'),
(811,2,67,'web:65;en:66;ru:67'),
(812,48,68,'Intimissimi'),
(813,49,68,'Київ'),
(814,50,68,'2021'),
(815,51,68,'retail'),
(816,12,68,'assets/img/photos/project-intimissimi.jpg'),
(817,13,68,'Intimissimi — Бутик у ТРЦ Ocean Plaza'),
(818,54,68,'[{\"MIGX_id\":\"1\",\"label\":\"Замовник\",\"value\":\"Intimissimi\"},{\"MIGX_id\":\"2\",\"label\":\"Локація\",\"value\":\"Київ\"},{\"MIGX_id\":\"3\",\"label\":\"Рік\",\"value\":\"2021\"}]'),
(819,2,68,'web:68;en:69;ru:70'),
(820,48,69,'Intimissimi'),
(821,49,69,'Kyiv'),
(822,50,69,'2021'),
(823,51,69,'retail'),
(824,12,69,'assets/img/photos/project-intimissimi.jpg'),
(825,13,69,'Intimissimi — boutique at Ocean Plaza'),
(826,54,69,'[{\"MIGX_id\":\"1\",\"label\":\"Client\",\"value\":\"Intimissimi\"},{\"MIGX_id\":\"2\",\"label\":\"Location\",\"value\":\"Kyiv\"},{\"MIGX_id\":\"3\",\"label\":\"Year\",\"value\":\"2021\"}]'),
(827,2,69,'web:68;en:69;ru:70'),
(828,48,70,'Intimissimi'),
(829,49,70,'Киев'),
(830,50,70,'2021'),
(831,51,70,'retail'),
(832,12,70,'assets/img/photos/project-intimissimi.jpg'),
(833,13,70,'Intimissimi — бутик в ТРЦ Ocean Plaza'),
(834,54,70,'[{\"MIGX_id\":\"1\",\"label\":\"Заказчик\",\"value\":\"Intimissimi\"},{\"MIGX_id\":\"2\",\"label\":\"Локация\",\"value\":\"Киев\"},{\"MIGX_id\":\"3\",\"label\":\"Год\",\"value\":\"2021\"}]'),
(835,2,70,'web:68;en:69;ru:70'),
(836,48,71,'Calzedonia'),
(837,49,71,'Київ'),
(838,50,71,'2023'),
(839,51,71,'retail'),
(840,12,71,'assets/img/photos/project-calzedonia.jpg'),
(841,13,71,'Calzedonia — Магазин у ТРЦ Domosfera'),
(842,54,71,'[{\"MIGX_id\":\"1\",\"label\":\"Замовник\",\"value\":\"Calzedonia\"},{\"MIGX_id\":\"2\",\"label\":\"Локація\",\"value\":\"Київ\"},{\"MIGX_id\":\"3\",\"label\":\"Рік\",\"value\":\"2023\"}]'),
(843,2,71,'web:71;en:72;ru:73'),
(844,48,72,'Calzedonia'),
(845,49,72,'Kyiv'),
(846,50,72,'2023'),
(847,51,72,'retail'),
(848,12,72,'assets/img/photos/project-calzedonia.jpg'),
(849,13,72,'Calzedonia — store at Domosfera'),
(850,54,72,'[{\"MIGX_id\":\"1\",\"label\":\"Client\",\"value\":\"Calzedonia\"},{\"MIGX_id\":\"2\",\"label\":\"Location\",\"value\":\"Kyiv\"},{\"MIGX_id\":\"3\",\"label\":\"Year\",\"value\":\"2023\"}]'),
(851,2,72,'web:71;en:72;ru:73'),
(852,48,73,'Calzedonia'),
(853,49,73,'Киев'),
(854,50,73,'2023'),
(855,51,73,'retail'),
(856,12,73,'assets/img/photos/project-calzedonia.jpg'),
(857,13,73,'Calzedonia — магазин в ТРЦ Domosfera'),
(858,54,73,'[{\"MIGX_id\":\"1\",\"label\":\"Заказчик\",\"value\":\"Calzedonia\"},{\"MIGX_id\":\"2\",\"label\":\"Локация\",\"value\":\"Киев\"},{\"MIGX_id\":\"3\",\"label\":\"Год\",\"value\":\"2023\"}]'),
(859,2,73,'web:71;en:72;ru:73'),
(860,48,74,'Globus Bank'),
(861,49,74,'Київ'),
(862,50,74,'2024'),
(863,51,74,'business'),
(864,12,74,'assets/img/photos/project-globus.jpg'),
(865,13,74,'Globus Bank — Брендинг відділення'),
(866,54,74,'[{\"MIGX_id\":\"1\",\"label\":\"Замовник\",\"value\":\"Globus Bank\"},{\"MIGX_id\":\"2\",\"label\":\"Локація\",\"value\":\"Київ\"},{\"MIGX_id\":\"3\",\"label\":\"Рік\",\"value\":\"2024\"}]'),
(867,2,74,'web:74;en:75;ru:76'),
(868,48,75,'Globus Bank'),
(869,49,75,'Kyiv'),
(870,50,75,'2024'),
(871,51,75,'business'),
(872,12,75,'assets/img/photos/project-globus.jpg'),
(873,13,75,'Globus Bank — branch branding'),
(874,54,75,'[{\"MIGX_id\":\"1\",\"label\":\"Client\",\"value\":\"Globus Bank\"},{\"MIGX_id\":\"2\",\"label\":\"Location\",\"value\":\"Kyiv\"},{\"MIGX_id\":\"3\",\"label\":\"Year\",\"value\":\"2024\"}]'),
(875,2,75,'web:74;en:75;ru:76'),
(876,48,76,'Globus Bank'),
(877,49,76,'Киев'),
(878,50,76,'2024'),
(879,51,76,'business'),
(880,12,76,'assets/img/photos/project-globus.jpg'),
(881,13,76,'Globus Bank — брендинг отделения'),
(882,54,76,'[{\"MIGX_id\":\"1\",\"label\":\"Заказчик\",\"value\":\"Globus Bank\"},{\"MIGX_id\":\"2\",\"label\":\"Локация\",\"value\":\"Киев\"},{\"MIGX_id\":\"3\",\"label\":\"Год\",\"value\":\"2024\"}]'),
(883,2,76,'web:74;en:75;ru:76'),
(884,55,77,'construction'),
(885,12,77,'assets/img/photos/project-intimissimi.jpg'),
(886,8,77,'assets/img/photos/kfc-artmall-3.jpg'),
(887,59,77,'1'),
(888,58,77,'6'),
(889,57,77,'Команда improvision'),
(890,3,77,'Що входить у будівництво магазину «під ключ» — блог improvision'),
(891,4,77,'Що входить у будівництво магазину «під ключ»'),
(892,5,77,'Розбираємо повний цикл робіт: від проєкту й погодження до оздоблення, реклами та здачі обʼєкта — і чому один підрядник зазвичай вигідніший за кількох.'),
(893,9,77,'Ресторан KFC у ТРЦ — обʼєкт під ключ'),
(894,60,77,'Такий підхід прибирає стики між підрядниками, скорочує строки та закріплює єдину відповідальність за результат'),
(895,56,77,'construction||ads||facades||tips'),
(896,2,77,'web:77;en:78;ru:79'),
(897,55,78,'construction'),
(898,12,78,'assets/img/photos/project-intimissimi.jpg'),
(899,8,78,'assets/img/photos/kfc-artmall-3.jpg'),
(900,59,78,'1'),
(901,58,78,'6'),
(902,57,78,'improvision team'),
(903,3,78,'What turnkey store construction includes — improvision blog'),
(904,4,78,'What turnkey store construction includes'),
(905,5,78,'We break down the full cycle of works: from design and approvals to finishing, signage and handover — and why one contractor is usually better value than several.'),
(906,9,78,'KFC restaurant in a mall — a turnkey project'),
(907,60,78,'This approach removes the gaps between contractors, shortens timelines and establishes single responsibility for the result'),
(908,56,78,'construction||ads||facades||tips'),
(909,2,78,'web:77;en:78;ru:79'),
(910,55,79,'construction'),
(911,12,79,'assets/img/photos/project-intimissimi.jpg'),
(912,8,79,'assets/img/photos/kfc-artmall-3.jpg'),
(913,59,79,'1'),
(914,58,79,'6'),
(915,57,79,'Команда improvision'),
(916,3,79,'Что входит в строительство магазина «под ключ» — блог improvision'),
(917,4,79,'Что входит в строительство магазина «под ключ»'),
(918,5,79,'Разбираем полный цикл работ: от проекта и согласования до отделки, рекламы и сдачи объекта — и почему один подрядчик обычно выгоднее нескольких.'),
(919,9,79,'Ресторан KFC в ТРЦ — объект под ключ'),
(920,60,79,'Такой подход убирает стыки между подрядчиками, сокращает сроки и закрепляет единую ответственность за результат'),
(921,56,79,'construction||ads||facades||tips'),
(922,2,79,'web:77;en:78;ru:79'),
(923,55,80,'facades'),
(924,12,80,'assets/img/photos/project-kfc.jpg'),
(925,8,80,'assets/img/photos/blog-facade.jpg'),
(926,59,80,'1'),
(927,58,80,'4'),
(928,56,80,'facades||tips'),
(929,2,80,'web:80;en:81;ru:82'),
(930,55,81,'facades'),
(931,12,81,'assets/img/photos/project-kfc.jpg'),
(932,8,81,'assets/img/photos/blog-facade.jpg'),
(933,59,81,'1'),
(934,58,81,'4'),
(935,56,81,'facades||tips'),
(936,2,81,'web:80;en:81;ru:82'),
(937,55,82,'facades'),
(938,12,82,'assets/img/photos/project-kfc.jpg'),
(939,8,82,'assets/img/photos/blog-facade.jpg'),
(940,59,82,'1'),
(941,58,82,'4'),
(942,56,82,'facades||tips'),
(943,2,82,'web:80;en:81;ru:82'),
(944,55,83,'construction'),
(945,12,83,'assets/img/photos/project-lego.jpg'),
(946,8,83,'assets/img/photos/project-globus.jpg'),
(947,58,83,'3'),
(948,56,83,'construction||tips'),
(949,2,83,'web:83;en:84;ru:85'),
(950,55,84,'construction'),
(951,12,84,'assets/img/photos/project-lego.jpg'),
(952,8,84,'assets/img/photos/project-globus.jpg'),
(953,58,84,'3'),
(954,56,84,'construction||tips'),
(955,2,84,'web:83;en:84;ru:85'),
(956,55,85,'construction'),
(957,12,85,'assets/img/photos/project-lego.jpg'),
(958,8,85,'assets/img/photos/project-globus.jpg'),
(959,58,85,'3'),
(960,56,85,'construction||tips'),
(961,2,85,'web:83;en:84;ru:85'),
(962,55,86,'ads'),
(963,12,86,'assets/img/photos/project-carnegie.jpg'),
(964,8,86,'assets/img/photos/blog-drawings.jpg'),
(965,59,86,'1'),
(966,58,86,'3'),
(967,56,86,'ads||tips'),
(968,2,86,'web:86;en:87;ru:88'),
(969,55,87,'ads'),
(970,12,87,'assets/img/photos/project-carnegie.jpg'),
(971,8,87,'assets/img/photos/blog-drawings.jpg'),
(972,59,87,'1'),
(973,58,87,'3'),
(974,56,87,'ads||tips'),
(975,2,87,'web:86;en:87;ru:88'),
(976,55,88,'ads'),
(977,12,88,'assets/img/photos/project-carnegie.jpg'),
(978,8,88,'assets/img/photos/blog-drawings.jpg'),
(979,59,88,'1'),
(980,58,88,'3'),
(981,56,88,'ads||tips'),
(982,2,88,'web:86;en:87;ru:88');
/*!40000 ALTER TABLE `modx_site_tmplvar_contentvalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_tmplvar_templates`
--

DROP TABLE IF EXISTS `modx_site_tmplvar_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) unsigned NOT NULL DEFAULT 0,
  `templateid` int(11) unsigned NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tmplvarid`,`templateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_tmplvar_templates`
--

LOCK TABLES `modx_site_tmplvar_templates` WRITE;
/*!40000 ALTER TABLE `modx_site_tmplvar_templates` DISABLE KEYS */;
INSERT INTO `modx_site_tmplvar_templates` VALUES
(2,1,99),
(2,4,99),
(2,5,99),
(2,6,99),
(2,7,99),
(2,8,99),
(2,9,99),
(2,10,99),
(2,11,99),
(2,12,99),
(2,13,99),
(2,14,99),
(2,15,99),
(3,5,1),
(3,6,1),
(3,7,1),
(3,8,1),
(3,9,1),
(3,10,1),
(3,11,1),
(3,12,1),
(3,13,1),
(4,5,2),
(4,6,2),
(4,7,2),
(4,8,2),
(4,9,2),
(4,10,2),
(4,11,2),
(4,12,2),
(4,13,2),
(5,5,3),
(5,6,3),
(5,7,3),
(5,8,3),
(5,9,3),
(5,10,3),
(5,11,3),
(5,12,3),
(5,13,3),
(6,5,4),
(6,6,4),
(6,7,4),
(6,8,4),
(6,9,4),
(6,10,4),
(6,11,4),
(6,12,4),
(6,13,4),
(7,5,5),
(8,5,6),
(8,6,6),
(8,7,6),
(8,11,6),
(9,5,7),
(9,6,7),
(9,7,7),
(9,11,7),
(10,5,8),
(11,5,9),
(12,7,10),
(12,9,10),
(12,11,10),
(13,9,11),
(14,6,12),
(15,6,13),
(16,5,14),
(16,6,14),
(16,7,14),
(17,5,15),
(18,5,16),
(19,5,17),
(20,5,18),
(21,5,19),
(22,5,20),
(23,5,21),
(24,5,22),
(25,6,23),
(26,6,24),
(27,6,25),
(28,6,26),
(29,6,27),
(30,6,28),
(31,6,29),
(32,6,30),
(33,7,31),
(34,7,32),
(35,7,33),
(36,7,34),
(37,7,35),
(37,9,35),
(38,7,36),
(39,7,37),
(40,7,38),
(41,7,39),
(42,7,40),
(43,7,41),
(44,7,42),
(45,7,43),
(46,7,44),
(47,7,45),
(48,9,46),
(49,9,47),
(50,9,48),
(51,9,49),
(52,9,50),
(53,9,51),
(54,9,52),
(55,11,53),
(56,11,54),
(57,11,55),
(58,11,56),
(59,11,57),
(60,11,58),
(61,12,59),
(62,12,60),
(63,12,61),
(64,12,62),
(65,12,63),
(66,12,64),
(67,12,65),
(68,12,66),
(69,12,67),
(70,12,68),
(71,12,69),
(72,12,70),
(72,14,70),
(73,12,71),
(74,12,72),
(75,13,73),
(76,14,74),
(77,14,75),
(78,14,76),
(79,14,77),
(80,14,78),
(81,14,79),
(82,14,80),
(83,14,81),
(84,14,82),
(85,14,83),
(86,14,84),
(87,14,85),
(88,14,86),
(89,14,87),
(90,14,88),
(91,14,89);
/*!40000 ALTER TABLE `modx_site_tmplvar_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_tmplvars`
--

DROP TABLE IF EXISTS `modx_site_tmplvars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_site_tmplvars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `elements` text DEFAULT NULL,
  `rank` int(11) NOT NULL DEFAULT 0,
  `display` varchar(20) NOT NULL DEFAULT '',
  `default_text` mediumtext DEFAULT NULL,
  `properties` text DEFAULT NULL,
  `input_properties` text DEFAULT NULL,
  `output_properties` text DEFAULT NULL,
  `static` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `rank` (`rank`),
  KEY `static` (`static`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_tmplvars`
--

LOCK TABLES `modx_site_tmplvars` WRITE;
/*!40000 ALTER TABLE `modx_site_tmplvars` DISABLE KEYS */;
INSERT INTO `modx_site_tmplvars` VALUES
(2,0,0,'hidden','babelLanguageLinks','Babel Translation Links','Maintained by Babel plugin. Please do not change!',0,0,0,NULL,0,'','',NULL,NULL,NULL,0,''),
(3,1,0,'text','seo_title','SEO title','Заголовок вкладки браузера й пошуку (title). Порожньо — «Заголовок — improvision».',0,9,0,'',0,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(4,1,0,'text','og_title','OG title','Заголовок для соцмереж. Порожньо — як SEO title.',0,9,0,'',1,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(5,1,0,'textarea','og_description','OG description','Опис для соцмереж. Порожньо — як «Опис» ресурсу.',0,9,0,'',2,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(6,1,0,'image','og_image','OG image','Картинка для соцмереж. Порожньо — головне зображення сторінки.',0,9,0,'',3,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(7,1,0,'textarea','ld_description','Опис компанії (schema.org)','',0,9,0,'',4,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(8,1,0,'image','image','Головне зображення','Фото першого екрана / шапки статті.',0,10,0,'',5,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(9,1,0,'text','image_alt','Alt головного зображення','',0,10,0,'',6,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(10,1,0,'image','image_960','Головне зображення 960px','Зменшена копія для планшетів.',0,10,0,'',7,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(11,1,0,'image','image_mobile','Головне зображення для мобільних','Показується на екранах до 768px.',0,10,0,'',8,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(12,1,0,'image','card_image','Фото картки','Фото в картці на списках і в слайдері.',0,13,0,'',9,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(13,1,0,'text','card_image_alt','Alt фото картки','',0,13,0,'',10,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(14,1,0,'image','mark_image','Фото в логотипі-знаку','',0,10,0,'',11,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(15,1,0,'text','mark_image_alt','Alt фото в знаку','',0,10,0,'',12,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(16,1,0,'textarea','h1','Заголовок H1','Порожньо — «Заголовок» ресурсу. Новий рядок = перенос рядка.',0,11,0,'',13,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(17,1,0,'migx','hero_features','Переваги на першому екрані','',0,12,0,'',14,'default','',NULL,'a:8:{s:8:\"formtabs\";s:258:\"[{\"caption\":\"Переваги на першому екрані\",\"fields\":[{\"field\":\"icon\",\"caption\":\"Іконка\",\"inputTVtype\":\"image\"},{\"field\":\"text\",\"caption\":\"Текст (Новий рядок = перенос рядка.)\",\"inputTVtype\":\"textarea\"}]}]\";s:7:\"columns\";s:142:\"[{\"header\":\"Іконка\",\"dataIndex\":\"icon\",\"width\":80,\"renderer\":\"this.renderImage\"},{\"header\":\"Текст\",\"dataIndex\":\"text\",\"width\":300}]\";s:7:\"btntext\";s:12:\"Додати\";s:7:\"configs\";s:0:\"\";s:10:\"previewurl\";s:0:\"\";s:10:\"jsonvarkey\";s:0:\"\";s:19:\"autoResourceFolders\";s:5:\"false\";s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(18,1,0,'textarea','about_title','Блок «Про компанію»: заголовок','Новий рядок = перенос рядка.',0,11,0,'',15,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(19,1,0,'textarea','about_lead','Блок «Про компанію»: лід','',0,11,0,'',16,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(20,1,0,'textarea','about_text','Блок «Про компанію»: текст','',0,11,0,'',17,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(21,1,0,'textarea','services_title','Блок «Послуги»: заголовок','Новий рядок = перенос рядка.',0,11,0,'',18,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(22,1,0,'text','projects_title','Блок «Проєкти»: заголовок','',0,11,0,'',19,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(23,1,0,'textarea','stats_title','Блок «Цифри»: заголовок','Новий рядок = перенос рядка.',0,11,0,'',20,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(24,1,0,'textarea','stats_text','Блок «Цифри»: текст','',0,11,0,'',21,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(25,1,0,'textarea','intro_title','Вступ: заголовок','Лід — поле «Анотація», абзаци — «Вміст». Новий рядок = перенос рядка.',0,11,0,'',22,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(26,1,0,'text','process_title','Блок «Етапи»: заголовок','',0,11,0,'',23,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(27,1,0,'text','history_title','Шлях компанії: заголовок','',0,11,0,'',24,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(28,1,0,'migx','history','Шлях компанії','',0,12,0,'',25,'default','',NULL,'a:8:{s:8:\"formtabs\";s:433:\"[{\"caption\":\"Шлях компанії\",\"fields\":[{\"field\":\"year\",\"caption\":\"Рік\",\"inputTVtype\":\"text\"},{\"field\":\"caption\",\"caption\":\"Підпис\",\"inputTVtype\":\"text\"},{\"field\":\"image1\",\"caption\":\"Фото 1\",\"inputTVtype\":\"image\"},{\"field\":\"alt1\",\"caption\":\"Alt фото 1\",\"inputTVtype\":\"text\"},{\"field\":\"image2\",\"caption\":\"Фото 2\",\"inputTVtype\":\"image\"},{\"field\":\"alt2\",\"caption\":\"Alt фото 2\",\"inputTVtype\":\"text\"}]}]\";s:7:\"columns\";s:197:\"[{\"header\":\"Рік\",\"dataIndex\":\"year\",\"width\":60},{\"header\":\"Підпис\",\"dataIndex\":\"caption\",\"width\":300},{\"header\":\"Фото 1\",\"dataIndex\":\"image1\",\"width\":80,\"renderer\":\"this.renderImage\"}]\";s:7:\"btntext\";s:12:\"Додати\";s:7:\"configs\";s:0:\"\";s:10:\"previewurl\";s:0:\"\";s:10:\"jsonvarkey\";s:0:\"\";s:19:\"autoResourceFolders\";s:5:\"false\";s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(29,1,0,'text','history_soon','Шлях компанії: остання вкладка','Напр. «Далі буде». Порожньо — не показувати.',0,11,0,'',26,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(30,1,0,'textarea','team_title','Команда: заголовок','Новий рядок = перенос рядка.',0,11,0,'',27,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(31,1,0,'textarea','team_text','Команда: текст','',0,11,0,'',28,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(32,1,0,'migx','team','Команда: цифри','',0,12,0,'',29,'default','',NULL,'a:8:{s:8:\"formtabs\";s:238:\"[{\"caption\":\"Команда: цифри\",\"fields\":[{\"field\":\"label\",\"caption\":\"Підпис (Новий рядок = перенос рядка.)\",\"inputTVtype\":\"textarea\"},{\"field\":\"value\",\"caption\":\"Число\",\"inputTVtype\":\"number\"}]}]\";s:7:\"columns\";s:114:\"[{\"header\":\"Підпис\",\"dataIndex\":\"label\",\"width\":250},{\"header\":\"Число\",\"dataIndex\":\"value\",\"width\":80}]\";s:7:\"btntext\";s:12:\"Додати\";s:7:\"configs\";s:0:\"\";s:10:\"previewurl\";s:0:\"\";s:10:\"jsonvarkey\";s:0:\"\";s:19:\"autoResourceFolders\";s:5:\"false\";s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(33,1,0,'textarea','card_text','Текст картки','Короткий опис у слайдері послуг на головній.',0,13,0,'',30,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(34,1,0,'number','home_order','Порядок на головній','Порядок картки в слайдері послуг на головній (1, 2, 3…).',0,13,0,'',31,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(35,1,0,'text','service_type','Тип послуги (schema.org)','',0,9,0,'',32,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(36,1,0,'text','checklist_title','Чек-лист: заголовок','Напр. «Що входить у послугу».',0,11,0,'',33,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(37,1,0,'textarea','checklist','Чек-лист','Один пункт — один рядок.',0,11,0,'',34,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(38,1,0,'richtext','content2','Текст після чек-листа','Абзаци між чек-листом і виноскою.',0,11,0,'',35,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(39,1,0,'textarea','callout','Виноска з іконкою','Новий рядок = перенос рядка.',0,11,0,'',36,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(40,1,0,'richtext','content3','Текст після виноски','Абзаци, фото з підписом (figure), цитата (blockquote).',0,11,0,'',37,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(41,1,0,'text','stages_title','Етапи: заголовок','',0,11,0,'',38,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(42,1,0,'migx','stages','Етапи робіт','',0,12,0,'',39,'default','',NULL,'a:8:{s:8:\"formtabs\";s:292:\"[{\"caption\":\"Етапи робіт\",\"fields\":[{\"field\":\"icon\",\"caption\":\"Іконка\",\"inputTVtype\":\"image\"},{\"field\":\"title\",\"caption\":\"Назва\",\"inputTVtype\":\"text\"},{\"field\":\"text\",\"caption\":\"Текст (Новий рядок = перенос рядка.)\",\"inputTVtype\":\"textarea\"}]}]\";s:7:\"columns\";s:198:\"[{\"header\":\"Іконка\",\"dataIndex\":\"icon\",\"width\":80,\"renderer\":\"this.renderImage\"},{\"header\":\"Назва\",\"dataIndex\":\"title\",\"width\":150},{\"header\":\"Текст\",\"dataIndex\":\"text\",\"width\":250}]\";s:7:\"btntext\";s:12:\"Додати\";s:7:\"configs\";s:0:\"\";s:10:\"previewurl\";s:0:\"\";s:10:\"jsonvarkey\";s:0:\"\";s:19:\"autoResourceFolders\";s:5:\"false\";s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(43,1,0,'text','materials_title','Вкладки: заголовок','Напр. «Матеріали, з якими працюємо».',0,11,0,'',40,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(44,1,0,'textarea','materials_lead','Вкладки: підзаголовок','',0,11,0,'',41,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(45,1,0,'text','materials_aria','Вкладки: підпис для скрінрідерів','Порожньо — як заголовок.',0,11,0,'',42,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(46,1,0,'migx','materials','Вкладки (матеріали / види робіт)','',0,12,0,'',43,'default','',NULL,'a:8:{s:8:\"formtabs\";s:469:\"[{\"caption\":\"Вкладки (матеріали \\/ види робіт)\",\"fields\":[{\"field\":\"name\",\"caption\":\"Назва\",\"inputTVtype\":\"text\"},{\"field\":\"text\",\"caption\":\"Опис\",\"inputTVtype\":\"textarea\"},{\"field\":\"image\",\"caption\":\"Фото\",\"inputTVtype\":\"image\"},{\"field\":\"alt\",\"caption\":\"Alt фото\",\"inputTVtype\":\"text\"},{\"field\":\"active\",\"caption\":\"Відкрита за замовчуванням\",\"inputTVtype\":\"checkbox\",\"inputOptionValues\":\"Так==1\"}]}]\";s:7:\"columns\";s:192:\"[{\"header\":\"Фото\",\"dataIndex\":\"image\",\"width\":80,\"renderer\":\"this.renderImage\"},{\"header\":\"Назва\",\"dataIndex\":\"name\",\"width\":180},{\"header\":\"Опис\",\"dataIndex\":\"text\",\"width\":250}]\";s:7:\"btntext\";s:12:\"Додати\";s:7:\"configs\";s:0:\"\";s:10:\"previewurl\";s:0:\"\";s:10:\"jsonvarkey\";s:0:\"\";s:19:\"autoResourceFolders\";s:5:\"false\";s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(47,1,0,'listbox-multiple','related_projects','Проєкти за цим напрямком','Проєкти тієї ж мовної версії, у вибраному порядку.',0,12,0,'@EVAL return $modx->runSnippet(\'impTvOptions\', [\'type\' => \'projects\']);',44,'delim','',NULL,'a:9:{s:9:\"listWidth\";s:0:\"\";s:9:\"typeAhead\";s:5:\"false\";s:14:\"forceSelection\";s:5:\"false\";s:5:\"title\";s:0:\"\";s:14:\"typeAheadDelay\";s:3:\"250\";s:13:\"listEmptyText\";s:0:\"\";s:10:\"stackItems\";s:5:\"false\";s:22:\"preserveSelectionOrder\";s:4:\"true\";s:10:\"allowBlank\";s:4:\"true\";}','a:1:{s:9:\"delimiter\";s:2:\"||\";}',0,''),
(48,1,0,'text','brand','Бренд / замовник','',0,13,0,'',45,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(49,1,0,'text','city','Місто','',0,13,0,'',46,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(50,1,0,'text','year','Рік','',0,13,0,'',47,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(51,1,0,'listbox','category','Категорія (фільтр)','Назви категорій для кожної мови — у словнику improvision (imp.cat_*).',0,13,0,'Ритейл==retail||Ресторани==restaurants||Фасади==facades||Бізнес-центри==business',48,'default','',NULL,'a:9:{s:9:\"listWidth\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"typeAhead\";s:5:\"false\";s:14:\"typeAheadDelay\";s:3:\"250\";s:14:\"forceSelection\";s:5:\"false\";s:13:\"listEmptyText\";s:0:\"\";s:10:\"stackItems\";s:5:\"false\";s:22:\"preserveSelectionOrder\";s:4:\"true\";s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(52,1,0,'migx','gallery','Галерея','',0,12,0,'',49,'default','',NULL,'a:8:{s:8:\"formtabs\";s:175:\"[{\"caption\":\"Галерея\",\"fields\":[{\"field\":\"image\",\"caption\":\"Фото\",\"inputTVtype\":\"image\"},{\"field\":\"alt\",\"caption\":\"Alt (опис фото)\",\"inputTVtype\":\"text\"}]}]\";s:7:\"columns\";s:131:\"[{\"header\":\"Фото\",\"dataIndex\":\"image\",\"width\":80,\"renderer\":\"this.renderImage\"},{\"header\":\"Alt\",\"dataIndex\":\"alt\",\"width\":350}]\";s:7:\"btntext\";s:12:\"Додати\";s:7:\"configs\";s:0:\"\";s:10:\"previewurl\";s:0:\"\";s:10:\"jsonvarkey\";s:0:\"\";s:19:\"autoResourceFolders\";s:5:\"false\";s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(53,1,0,'migx','directions','Напрямки в проєкті (теги)','',0,12,0,'',50,'default','',NULL,'a:8:{s:8:\"formtabs\";s:334:\"[{\"caption\":\"Напрямки в проєкті (теги)\",\"fields\":[{\"field\":\"title\",\"caption\":\"Назва\",\"inputTVtype\":\"text\"},{\"field\":\"link\",\"caption\":\"Посилання на послугу\",\"inputTVtype\":\"listbox\",\"inputOptionValues\":\"@EVAL return $modx->runSnippet(\'impTvOptions\', [\'type\' => \'services\', \'empty\' => 1]);\"}]}]\";s:7:\"columns\";s:118:\"[{\"header\":\"Назва\",\"dataIndex\":\"title\",\"width\":250},{\"header\":\"ID послуги\",\"dataIndex\":\"link\",\"width\":80}]\";s:7:\"btntext\";s:12:\"Додати\";s:7:\"configs\";s:0:\"\";s:10:\"previewurl\";s:0:\"\";s:10:\"jsonvarkey\";s:0:\"\";s:19:\"autoResourceFolders\";s:5:\"false\";s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(54,1,0,'migx','specs','Характеристики','',0,12,0,'',51,'default','',NULL,'a:8:{s:8:\"formtabs\";s:185:\"[{\"caption\":\"Характеристики\",\"fields\":[{\"field\":\"label\",\"caption\":\"Назва\",\"inputTVtype\":\"text\"},{\"field\":\"value\",\"caption\":\"Значення\",\"inputTVtype\":\"text\"}]}]\";s:7:\"columns\";s:119:\"[{\"header\":\"Назва\",\"dataIndex\":\"label\",\"width\":180},{\"header\":\"Значення\",\"dataIndex\":\"value\",\"width\":220}]\";s:7:\"btntext\";s:12:\"Додати\";s:7:\"configs\";s:0:\"\";s:10:\"previewurl\";s:0:\"\";s:10:\"jsonvarkey\";s:0:\"\";s:19:\"autoResourceFolders\";s:5:\"false\";s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(55,1,0,'listbox','post_category','Рубрика','Назви рубрик для кожної мови — у словнику improvision (imp.pcat_*).',0,13,0,'Будівництво==construction||Реклама==ads||Фасади==facades||Поради==tips',52,'default','',NULL,'a:9:{s:9:\"listWidth\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"typeAhead\";s:5:\"false\";s:14:\"typeAheadDelay\";s:3:\"250\";s:14:\"forceSelection\";s:5:\"false\";s:13:\"listEmptyText\";s:0:\"\";s:10:\"stackItems\";s:5:\"false\";s:22:\"preserveSelectionOrder\";s:4:\"true\";s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(56,1,0,'listbox-multiple','tags','Теги','',0,13,0,'Будівництво==construction||Реклама==ads||Фасади==facades||Поради==tips',53,'delim','',NULL,'a:9:{s:9:\"listWidth\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"typeAhead\";s:5:\"false\";s:14:\"typeAheadDelay\";s:3:\"250\";s:14:\"forceSelection\";s:5:\"false\";s:13:\"listEmptyText\";s:0:\"\";s:10:\"stackItems\";s:5:\"false\";s:22:\"preserveSelectionOrder\";s:4:\"true\";s:10:\"allowBlank\";s:4:\"true\";}','a:1:{s:9:\"delimiter\";s:2:\"||\";}',0,''),
(57,1,0,'text','author','Автор','Порожньо — «Команда improvision».',0,13,0,'',54,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(58,1,0,'number','read_time','Час читання, хв','',0,13,0,'',55,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(59,1,0,'checkbox','featured','У слайдері рекомендованих','',0,13,0,'Так==1',56,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(60,1,0,'textarea','featured_text','Короткий опис (картка, слайдер)','Текст у картці статті та в слайдері. Порожньо — «Анотація».',0,13,0,'',57,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(61,1,0,'migx','contact_cards','Картки контактів','',0,14,0,'',58,'default','',NULL,'a:8:{s:8:\"formtabs\";s:582:\"[{\"caption\":\"Картки контактів\",\"fields\":[{\"field\":\"icon\",\"caption\":\"Іконка\",\"inputTVtype\":\"image\"},{\"field\":\"title\",\"caption\":\"Заголовок\",\"inputTVtype\":\"text\"},{\"field\":\"value\",\"caption\":\"Значення (Новий рядок = перенос рядка.)\",\"inputTVtype\":\"textarea\"},{\"field\":\"link\",\"caption\":\"Посилання (tel:…, mailto:…)\",\"inputTVtype\":\"text\"},{\"field\":\"address\",\"caption\":\"Це адреса\",\"inputTVtype\":\"checkbox\",\"inputOptionValues\":\"Так==1\"},{\"field\":\"note\",\"caption\":\"Примітка\",\"inputTVtype\":\"text\"}]}]\";s:7:\"columns\";s:274:\"[{\"header\":\"Іконка\",\"dataIndex\":\"icon\",\"width\":80,\"renderer\":\"this.renderImage\"},{\"header\":\"Заголовок\",\"dataIndex\":\"title\",\"width\":120},{\"header\":\"Значення\",\"dataIndex\":\"value\",\"width\":200},{\"header\":\"Примітка\",\"dataIndex\":\"note\",\"width\":150}]\";s:7:\"btntext\";s:12:\"Додати\";s:7:\"configs\";s:0:\"\";s:10:\"previewurl\";s:0:\"\";s:10:\"jsonvarkey\";s:0:\"\";s:19:\"autoResourceFolders\";s:5:\"false\";s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(62,1,0,'text','visit_title','Виїзд: заголовок','',0,14,0,'',59,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(63,1,0,'text','visit_badge','Виїзд: позначка','',0,14,0,'',60,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(64,1,0,'textarea','visit_text','Виїзд: текст','',0,14,0,'',61,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(65,1,0,'text','depts_title','Відділи: заголовок','',0,14,0,'',62,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(66,1,0,'migx','depts','Відділи','',0,14,0,'',63,'default','',NULL,'a:8:{s:8:\"formtabs\";s:162:\"[{\"caption\":\"Відділи\",\"fields\":[{\"field\":\"label\",\"caption\":\"Відділ\",\"inputTVtype\":\"text\"},{\"field\":\"email\",\"caption\":\"Email\",\"inputTVtype\":\"text\"}]}]\";s:7:\"columns\";s:110:\"[{\"header\":\"Відділ\",\"dataIndex\":\"label\",\"width\":200},{\"header\":\"Email\",\"dataIndex\":\"email\",\"width\":220}]\";s:7:\"btntext\";s:12:\"Додати\";s:7:\"configs\";s:0:\"\";s:10:\"previewurl\";s:0:\"\";s:10:\"jsonvarkey\";s:0:\"\";s:19:\"autoResourceFolders\";s:5:\"false\";s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(67,1,0,'text','lead_title','Форма: заголовок','',0,14,0,'',64,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(68,1,0,'textarea','lead_text','Форма: текст','',0,14,0,'',65,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(69,1,0,'text','map_query','Мапа: адреса для пошуку Google','',0,14,0,'',66,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(70,1,0,'text','map_name','Мапа: назва','',0,14,0,'',67,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(71,1,0,'text','map_address','Мапа: адреса','',0,14,0,'',68,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(72,1,0,'text','map_city','Місто','',0,14,0,'',69,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(73,1,0,'image','map_image','Мапа: картинка-заглушка','',0,14,0,'',70,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(74,1,0,'text','opening_hours','Графік (schema.org)','Формат: Mo-Fr 09:00-18:00',0,9,0,'',71,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(75,1,0,'checkbox','show_contact','Показати блок із формою','',0,11,0,'Так==1',72,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(76,1,0,'text','phone','Телефон','Як показувати: +38 044 228 88 69',0,14,0,'',73,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(77,1,0,'text','email','Email','',0,14,0,'',74,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(78,1,0,'textarea','address','Адреса в підвалі','',0,14,0,'',75,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(79,1,0,'text','map_street','Вулиця (schema.org на головній)','',0,14,0,'',76,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(80,1,0,'migx','socials','Соцмережі','',0,14,0,'',77,'default','',NULL,'a:8:{s:8:\"formtabs\";s:175:\"[{\"caption\":\"Соцмережі\",\"fields\":[{\"field\":\"title\",\"caption\":\"Назва\",\"inputTVtype\":\"text\"},{\"field\":\"url\",\"caption\":\"Посилання\",\"inputTVtype\":\"text\"}]}]\";s:7:\"columns\";s:119:\"[{\"header\":\"Назва\",\"dataIndex\":\"title\",\"width\":150},{\"header\":\"Посилання\",\"dataIndex\":\"url\",\"width\":300}]\";s:7:\"btntext\";s:12:\"Додати\";s:7:\"configs\";s:0:\"\";s:10:\"previewurl\";s:0:\"\";s:10:\"jsonvarkey\";s:0:\"\";s:19:\"autoResourceFolders\";s:5:\"false\";s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(81,1,0,'text','brands_title','Бренди: заголовок','',0,11,0,'',78,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(82,1,0,'migx','brands','Бренди (логотипи)','',0,12,0,'',79,'default','',NULL,'a:8:{s:8:\"formtabs\";s:198:\"[{\"caption\":\"Бренди (логотипи)\",\"fields\":[{\"field\":\"image\",\"caption\":\"Логотип\",\"inputTVtype\":\"image\"},{\"field\":\"alt\",\"caption\":\"Назва бренду\",\"inputTVtype\":\"text\"}]}]\";s:7:\"columns\";s:144:\"[{\"header\":\"Логотип\",\"dataIndex\":\"image\",\"width\":80,\"renderer\":\"this.renderImage\"},{\"header\":\"Бренд\",\"dataIndex\":\"alt\",\"width\":250}]\";s:7:\"btntext\";s:12:\"Додати\";s:7:\"configs\";s:0:\"\";s:10:\"previewurl\";s:0:\"\";s:10:\"jsonvarkey\";s:0:\"\";s:19:\"autoResourceFolders\";s:5:\"false\";s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(83,1,0,'migx','steps','Етапи «від ідеї до відкриття»','',0,12,0,'',80,'default','',NULL,'a:8:{s:8:\"formtabs\";s:272:\"[{\"caption\":\"Етапи «від ідеї до відкриття»\",\"fields\":[{\"field\":\"icon\",\"caption\":\"Іконка\",\"inputTVtype\":\"image\"},{\"field\":\"title\",\"caption\":\"Назва\",\"inputTVtype\":\"text\"},{\"field\":\"text\",\"caption\":\"Текст\",\"inputTVtype\":\"textarea\"}]}]\";s:7:\"columns\";s:198:\"[{\"header\":\"Іконка\",\"dataIndex\":\"icon\",\"width\":80,\"renderer\":\"this.renderImage\"},{\"header\":\"Назва\",\"dataIndex\":\"title\",\"width\":150},{\"header\":\"Текст\",\"dataIndex\":\"text\",\"width\":250}]\";s:7:\"btntext\";s:12:\"Додати\";s:7:\"configs\";s:0:\"\";s:10:\"previewurl\";s:0:\"\";s:10:\"jsonvarkey\";s:0:\"\";s:19:\"autoResourceFolders\";s:5:\"false\";s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(84,1,0,'textarea','why_title','Чому ми: заголовок','Новий рядок = перенос рядка.',0,11,0,'',81,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(85,1,0,'image','why_bg','Чому ми: фон','',0,10,0,'',82,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(86,1,0,'migx','why','Чому ми: причини','',0,12,0,'',83,'default','',NULL,'a:8:{s:8:\"formtabs\";s:183:\"[{\"caption\":\"Чому ми: причини\",\"fields\":[{\"field\":\"title\",\"caption\":\"Назва\",\"inputTVtype\":\"text\"},{\"field\":\"text\",\"caption\":\"Текст\",\"inputTVtype\":\"textarea\"}]}]\";s:7:\"columns\";s:112:\"[{\"header\":\"Назва\",\"dataIndex\":\"title\",\"width\":180},{\"header\":\"Текст\",\"dataIndex\":\"text\",\"width\":300}]\";s:7:\"btntext\";s:12:\"Додати\";s:7:\"configs\";s:0:\"\";s:10:\"previewurl\";s:0:\"\";s:10:\"jsonvarkey\";s:0:\"\";s:19:\"autoResourceFolders\";s:5:\"false\";s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(87,1,0,'migx','stats','Цифри','',0,12,0,'',84,'default','',NULL,'a:8:{s:8:\"formtabs\";s:412:\"[{\"caption\":\"Цифри\",\"fields\":[{\"field\":\"label\",\"caption\":\"Підпис (Новий рядок = перенос рядка.)\",\"inputTVtype\":\"textarea\"},{\"field\":\"value\",\"caption\":\"Число\",\"inputTVtype\":\"number\"},{\"field\":\"plus\",\"caption\":\"Знак «+»\",\"inputTVtype\":\"checkbox\",\"inputOptionValues\":\"Так==1\"},{\"field\":\"unit\",\"caption\":\"Одиниця (напр. тис.м²)\",\"inputTVtype\":\"text\"}]}]\";s:7:\"columns\";s:172:\"[{\"header\":\"Підпис\",\"dataIndex\":\"label\",\"width\":200},{\"header\":\"Число\",\"dataIndex\":\"value\",\"width\":70},{\"header\":\"Одиниця\",\"dataIndex\":\"unit\",\"width\":90}]\";s:7:\"btntext\";s:12:\"Додати\";s:7:\"configs\";s:0:\"\";s:10:\"previewurl\";s:0:\"\";s:10:\"jsonvarkey\";s:0:\"\";s:19:\"autoResourceFolders\";s:5:\"false\";s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(88,1,0,'text','contact_title','Блок заявки: заголовок','',0,11,0,'',85,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(89,1,0,'textarea','contact_text','Блок заявки: текст','',0,11,0,'',86,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(90,1,0,'image','contact_image','Блок заявки: фото','',0,10,0,'',87,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,''),
(91,1,0,'text','contact_image_alt','Блок заявки: alt фото','',0,10,0,'',88,'default','',NULL,'a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,'');
/*!40000 ALTER TABLE `modx_site_tmplvars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_system_eventnames`
--

DROP TABLE IF EXISTS `modx_system_eventnames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_system_eventnames` (
  `name` varchar(50) NOT NULL,
  `service` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `groupname` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_system_eventnames`
--

LOCK TABLES `modx_system_eventnames` WRITE;
/*!40000 ALTER TABLE `modx_system_eventnames` DISABLE KEYS */;
INSERT INTO `modx_system_eventnames` VALUES
('OnBabelDuplicate',2,'Babel'),
('OnBabelFieldSynced',2,'Babel'),
('OnBabelLink',2,'Babel'),
('OnBabelTVSynced',2,'Babel'),
('OnBabelUnlink',2,'Babel'),
('OnBeforeCacheUpdate',4,'System'),
('OnBeforeChunkFormDelete',1,'Chunks'),
('OnBeforeChunkFormSave',1,'Chunks'),
('OnBeforeDocFormDelete',1,'Resources'),
('OnBeforeDocFormSave',1,'Resources'),
('OnBeforeEmptyTrash',1,'Resources'),
('OnBeforeManagerLogin',2,'Security'),
('OnBeforeManagerLogout',2,'Security'),
('OnBeforeManagerPageInit',2,'System'),
('OnBeforePluginFormDelete',1,'Plugins'),
('OnBeforePluginFormSave',1,'Plugins'),
('OnBeforeRegisterClientScripts',5,'System'),
('OnBeforeSaveWebPageCache',4,'System'),
('OnBeforeSnipFormDelete',1,'Snippets'),
('OnBeforeSnipFormSave',1,'Snippets'),
('OnBeforeTempFormDelete',1,'Templates'),
('OnBeforeTempFormSave',1,'Templates'),
('OnBeforeTVFormDelete',1,'Template Variables'),
('OnBeforeTVFormSave',1,'Template Variables'),
('OnBeforeUserActivate',1,'Users'),
('OnBeforeUserDeactivate',1,'Users'),
('OnBeforeUserDuplicate',1,'Users'),
('OnBeforeUserFormDelete',1,'Users'),
('OnBeforeUserFormSave',1,'Users'),
('OnBeforeUserGroupFormRemove',1,'User Groups'),
('OnBeforeUserGroupFormSave',1,'User Groups'),
('OnBeforeWebLogin',3,'Security'),
('OnBeforeWebLogout',3,'Security'),
('OnCacheUpdate',4,'System'),
('OnCategoryBeforeRemove',1,'Categories'),
('OnCategoryBeforeSave',1,'Categories'),
('OnCategoryRemove',1,'Categories'),
('OnCategorySave',1,'Categories'),
('OnChunkBeforeRemove',1,'Chunks'),
('OnChunkBeforeSave',1,'Chunks'),
('OnChunkFormDelete',1,'Chunks'),
('OnChunkFormPrerender',1,'Chunks'),
('OnChunkFormRender',1,'Chunks'),
('OnChunkFormSave',1,'Chunks'),
('OnChunkRemove',1,'Chunks'),
('OnChunkSave',1,'Chunks'),
('OnContextBeforeRemove',1,'Contexts'),
('OnContextBeforeSave',1,'Contexts'),
('OnContextFormPrerender',2,'Contexts'),
('OnContextFormRender',2,'Contexts'),
('OnContextInit',1,'Contexts'),
('OnContextRemove',1,'Contexts'),
('OnContextSave',1,'Contexts'),
('OnDocFormDelete',1,'Resources'),
('OnDocFormPrerender',1,'Resources'),
('OnDocFormRender',1,'Resources'),
('OnDocFormSave',1,'Resources'),
('OnDocPublished',5,'Resources'),
('OnDocUnPublished',5,'Resources'),
('OnElementNotFound',1,'System'),
('OnEmptyTrash',1,'Resources'),
('OnFileCreateFormPrerender',1,'System'),
('OnFileEditFormPrerender',1,'System'),
('OnFileManagerBeforeUpload',1,'System'),
('OnFileManagerDirCreate',1,'System'),
('OnFileManagerDirRemove',1,'System'),
('OnFileManagerDirRename',1,'System'),
('OnFileManagerFileCreate',1,'System'),
('OnFileManagerFileRemove',1,'System'),
('OnFileManagerFileRename',1,'System'),
('OnFileManagerFileUpdate',1,'System'),
('OnFileManagerMoveObject',1,'System'),
('OnFileManagerUpload',1,'System'),
('OnHandleRequest',5,'System'),
('OnInitCulture',1,'Internationalization'),
('OnLoadWebDocument',5,'System'),
('OnLoadWebPageCache',4,'System'),
('OnManagerAuthentication',2,'Security'),
('OnManagerLogin',2,'Security'),
('OnManagerLoginFormPrerender',2,'Security'),
('OnManagerLoginFormRender',2,'Security'),
('OnManagerLogout',2,'Security'),
('OnManagerPageAfterRender',2,'System'),
('OnManagerPageBeforeRender',2,'System'),
('OnManagerPageInit',2,'System'),
('OnMediaSourceBeforeFormDelete',1,'Media Sources'),
('OnMediaSourceBeforeFormSave',1,'Media Sources'),
('OnMediaSourceDuplicate',1,'Media Sources'),
('OnMediaSourceFormDelete',1,'Media Sources'),
('OnMediaSourceFormSave',1,'Media Sources'),
('OnMediaSourceGetProperties',1,'Media Sources'),
('OnMODXInit',5,'System'),
('OnPackageInstall',2,'Package Manager'),
('OnPackageRemove',2,'Package Manager'),
('OnPackageUninstall',2,'Package Manager'),
('OnPageNotFound',1,'System'),
('OnPageUnauthorized',1,'Security'),
('OnParseDocument',5,'System'),
('OnPluginBeforeRemove',1,'Plugins'),
('OnPluginBeforeSave',1,'Plugins'),
('OnPluginEventBeforeRemove',1,'Plugin Events'),
('OnPluginEventBeforeSave',1,'Plugin Events'),
('OnPluginEventRemove',1,'Plugin Events'),
('OnPluginEventSave',1,'Plugin Events'),
('OnPluginFormDelete',1,'Plugins'),
('OnPluginFormPrerender',1,'Plugins'),
('OnPluginFormRender',1,'Plugins'),
('OnPluginFormSave',1,'Plugins'),
('OnPluginRemove',1,'Plugins'),
('OnPluginSave',1,'Plugins'),
('OnPropertySetBeforeRemove',1,'Property Sets'),
('OnPropertySetBeforeSave',1,'Property Sets'),
('OnPropertySetRemove',1,'Property Sets'),
('OnPropertySetSave',1,'Property Sets'),
('OnResourceAddToResourceGroup',1,'Resources'),
('OnResourceAutoPublish',1,'Resources'),
('OnResourceBeforeSort',1,'Resources'),
('OnResourceCacheUpdate',1,'Resources'),
('OnResourceDelete',1,'Resources'),
('OnResourceDuplicate',1,'Resources'),
('OnResourceGroupBeforeRemove',1,'Security'),
('OnResourceGroupBeforeSave',1,'Security'),
('OnResourceGroupRemove',1,'Security'),
('OnResourceGroupSave',1,'Security'),
('OnResourceRemoveFromResourceGroup',1,'Resources'),
('OnResourceSort',1,'Resources'),
('OnResourceToolbarLoad',1,'Resources'),
('OnResourceTVFormPrerender',1,'Resources'),
('OnResourceTVFormRender',1,'Resources'),
('OnResourceUndelete',1,'Resources'),
('OnRichTextBrowserInit',1,'RichText Editor'),
('OnRichTextEditorInit',1,'RichText Editor'),
('OnRichTextEditorRegister',1,'RichText Editor'),
('OnSiteRefresh',1,'System'),
('OnSiteSettingsRender',1,'Settings'),
('OnSnipFormDelete',1,'Snippets'),
('OnSnipFormPrerender',1,'Snippets'),
('OnSnipFormRender',1,'Snippets'),
('OnSnipFormSave',1,'Snippets'),
('OnSnippetBeforeRemove',1,'Snippets'),
('OnSnippetBeforeSave',1,'Snippets'),
('OnSnippetRemove',1,'Snippets'),
('OnSnippetSave',1,'Snippets'),
('OnTempFormDelete',1,'Templates'),
('OnTempFormPrerender',1,'Templates'),
('OnTempFormRender',1,'Templates'),
('OnTempFormSave',1,'Templates'),
('OnTemplateBeforeRemove',1,'Templates'),
('OnTemplateBeforeSave',1,'Templates'),
('OnTemplateRemove',1,'Templates'),
('OnTemplateSave',1,'Templates'),
('OnTemplateVarBeforeRemove',1,'Template Variables'),
('OnTemplateVarBeforeSave',1,'Template Variables'),
('OnTemplateVarRemove',1,'Template Variables'),
('OnTemplateVarSave',1,'Template Variables'),
('OnTVFormDelete',1,'Template Variables'),
('OnTVFormPrerender',1,'Template Variables'),
('OnTVFormRender',1,'Template Variables'),
('OnTVFormSave',1,'Template Variables'),
('OnTVInputPropertiesList',1,'Template Variables'),
('OnTVInputRenderList',1,'Template Variables'),
('OnTVOutputRenderList',1,'Template Variables'),
('OnTVOutputRenderPropertiesList',1,'Template Variables'),
('OnUserActivate',1,'Users'),
('OnUserAddToGroup',1,'User Groups'),
('OnUserBeforeAddToGroup',1,'User Groups'),
('OnUserBeforeRemove',1,'Users'),
('OnUserBeforeRemoveFromGroup',1,'User Groups'),
('OnUserBeforeSave',1,'Users'),
('OnUserChangePassword',1,'Users'),
('OnUserDeactivate',1,'Users'),
('OnUserDuplicate',1,'Users'),
('OnUserFormDelete',1,'Users'),
('OnUserFormPrerender',1,'Users'),
('OnUserFormRender',1,'Users'),
('OnUserFormSave',1,'Users'),
('OnUserGroupBeforeRemove',1,'User Groups'),
('OnUserGroupBeforeSave',1,'User Groups'),
('OnUserGroupFormSave',1,'User Groups'),
('OnUserGroupRemove',1,'User Groups'),
('OnUserGroupSave',1,'User Groups'),
('OnUserNotFound',1,'Users'),
('OnUserProfileBeforeRemove',1,'User Profiles'),
('OnUserProfileBeforeSave',1,'User Profiles'),
('OnUserProfileRemove',1,'User Profiles'),
('OnUserProfileSave',1,'User Profiles'),
('OnUserRemove',1,'Users'),
('OnUserRemoveFromGroup',1,'User Groups'),
('OnUserSave',1,'Users'),
('OnWebAuthentication',3,'Security'),
('OnWebLogin',3,'Security'),
('OnWebLogout',3,'Security'),
('OnWebPageComplete',5,'System'),
('OnWebPageInit',5,'System'),
('OnWebPagePrerender',5,'System'),
('pdoToolsOnFenomInit',6,'pdoTools');
/*!40000 ALTER TABLE `modx_system_eventnames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_system_settings`
--

DROP TABLE IF EXISTS `modx_system_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_system_settings` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_system_settings`
--

LOCK TABLES `modx_system_settings` WRITE;
/*!40000 ALTER TABLE `modx_system_settings` DISABLE KEYS */;
INSERT INTO `modx_system_settings` VALUES
('access_category_enabled','1','combo-boolean','core','authentication',NULL),
('access_context_enabled','1','combo-boolean','core','authentication',NULL),
('access_resource_group_enabled','1','combo-boolean','core','authentication',NULL),
('allow_forward_across_contexts','','combo-boolean','core','system',NULL),
('allow_manager_login_forgot_password','1','combo-boolean','core','authentication',NULL),
('allow_multiple_emails','1','combo-boolean','core','authentication',NULL),
('allow_tags_in_post','','combo-boolean','core','system',NULL),
('anonymous_sessions','1','combo-boolean','core','session',NULL),
('archive_with','','combo-boolean','core','system',NULL),
('auto_check_pkg_updates','1','combo-boolean','core','system',NULL),
('auto_check_pkg_updates_cache_expire','15','numberfield','core','system',NULL),
('auto_isfolder','1','combo-boolean','core','site',NULL),
('auto_menuindex','1','combo-boolean','core','site',NULL),
('automatic_alias','1','combo-boolean','core','furls',NULL),
('automatic_template_assignment','sibling','textfield','core','site',NULL),
('babel.babelTvName','babelLanguageLinks','textfield','babel','system',NULL),
('babel.contextKeys','web,en,ru','textfield','babel','system','2026-11-12 14:21:29'),
('babel.debug','0','combo-boolean','babel','system',NULL),
('babel.displayChunk','tplBabelContextMenu','textfield','babel','system',NULL),
('babel.displayText','language','textfield','babel','system',NULL),
('babel.restrictToGroup','0','combo-boolean','babel','system','2026-11-12 14:21:29'),
('babel.syncFields','','textfield','babel','system',NULL),
('babel.syncTvs','8,10,11,12,14,6,85,90,73,34,50,51,55,56,59,58,76,77','textfield','babel','system','2026-11-12 14:21:30'),
('base_help_url','//docs.modx.com/help/','textfield','core','manager',NULL),
('blocked_minutes','60','numberfield','core','authentication',NULL),
('cache_alias_map','1','combo-boolean','core','caching',NULL),
('cache_context_settings','1','combo-boolean','core','caching',NULL),
('cache_db','','combo-boolean','core','caching',NULL),
('cache_db_expires','0','numberfield','core','caching',NULL),
('cache_db_session','','combo-boolean','core','caching',NULL),
('cache_db_session_lifetime','','numberfield','core','caching',NULL),
('cache_default','1','combo-boolean','core','caching',NULL),
('cache_expires','0','numberfield','core','caching',NULL),
('cache_format','0','numberfield','core','caching',NULL),
('cache_handler','xPDO\\Cache\\xPDOFileCache','textfield','core','caching',NULL),
('cache_lang_js','1','combo-boolean','core','caching',NULL),
('cache_lexicon_topics','1','combo-boolean','core','caching',NULL),
('cache_noncore_lexicon_topics','1','combo-boolean','core','caching',NULL),
('cache_resource','1','combo-boolean','core','caching',NULL),
('cache_resource_clear_partial','','combo-boolean','core','caching',NULL),
('cache_resource_expires','0','numberfield','core','caching',NULL),
('cache_scripts','1','combo-boolean','core','caching',NULL),
('clear_cache_refresh_trees','','combo-boolean','core','caching',NULL),
('compress_css','0','combo-boolean','core','manager','2026-11-12 14:02:47'),
('compress_js','0','combo-boolean','core','manager','2026-11-12 14:02:47'),
('confirm_navigation','1','combo-boolean','core','manager',NULL),
('container_suffix','/','textfield','core','furls',NULL),
('context_tree_sort','1','combo-boolean','core','manager',NULL),
('context_tree_sortby','rank','textfield','core','manager',NULL),
('context_tree_sortdir','ASC','textfield','core','manager',NULL),
('cultureKey','uk','modx-combo-language','core','language','2026-11-12 14:02:47'),
('date_timezone','','textfield','core','system',NULL),
('debug','','numberfield','core','system',NULL),
('default_content_type','1','modx-combo-content-type','core','site',NULL),
('default_context','web','modx-combo-context','core','site',NULL),
('default_duplicate_publish_option','preserve','textfield','core','manager',NULL),
('default_media_source','1','modx-combo-source','core','manager',NULL),
('default_media_source_type','MODX\\Revolution\\Sources\\modFileMediaSource','modx-combo-source-type','core','manager',NULL),
('default_per_page','20','textfield','core','manager',NULL),
('default_template','13','modx-combo-template','core','site','2026-11-12 14:21:29'),
('default_username','(anonymous)','textfield','core','session',NULL),
('emailsender','office@improvision.com.ua','textfield','core','authentication','2026-11-12 14:02:47'),
('enable_dragdrop','1','combo-boolean','core','manager',NULL),
('enable_gravatar','','combo-boolean','core','manager',NULL),
('enable_template_picker_in_tree','1','combo-boolean','core','manager',NULL),
('error_log_filename','error.log','textfield','core','system',NULL),
('error_log_filepath','','textfield','core','system',NULL),
('error_page','31','numberfield','core','site','2026-11-12 14:26:03'),
('failed_login_attempts','5','numberfield','core','authentication',NULL),
('feed_modx_news','https://feeds.feedburner.com/modx-announce','textfield','core','system',NULL),
('feed_modx_news_enabled','1','combo-boolean','core','system',NULL),
('feed_modx_security','https://forums.modx.com/board.xml?board=294','textfield','core','system',NULL),
('feed_modx_security_enabled','1','combo-boolean','core','system',NULL),
('form_customization_use_all_groups','','combo-boolean','core','manager',NULL),
('forward_merge_excludes','type,published,class_key','textfield','core','system',NULL),
('friendly_alias_lowercase_only','1','combo-boolean','core','furls',NULL),
('friendly_alias_max_length','0','numberfield','core','furls',NULL),
('friendly_alias_realtime','','combo-boolean','core','furls',NULL),
('friendly_alias_restrict_chars','alphanumeric','textfield','core','furls','2026-11-12 14:21:29'),
('friendly_alias_restrict_chars_pattern','/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>\"~:`@\\?\\[\\]\\{\\}\\|\\^\'\\\\]/','textfield','core','furls',NULL),
('friendly_alias_strip_element_tags','1','combo-boolean','core','furls',NULL),
('friendly_alias_translit','none','textfield','core','furls','2026-11-12 14:26:18'),
('friendly_alias_translit_class','translit.modTransliterate','textfield','core','furls',NULL),
('friendly_alias_translit_class_path','{core_path}components/','textfield','core','furls',NULL),
('friendly_alias_trim_chars','/.-_','textfield','core','furls',NULL),
('friendly_alias_word_delimiter','-','textfield','core','furls',NULL),
('friendly_alias_word_delimiters','-_','textfield','core','furls',NULL),
('friendly_urls','1','combo-boolean','core','furls','2026-11-12 14:09:46'),
('friendly_urls_strict','','combo-boolean','core','furls',NULL),
('global_duplicate_uri_check','0','combo-boolean','core','furls','2026-11-12 14:21:29'),
('hidemenu_default','','combo-boolean','core','site',NULL),
('improvision.lead_email','office@improvision.com.ua','textfield','improvision','improvision',NULL),
('improvision.lead_id','37','numberfield','improvision','improvision','2026-11-12 14:28:17'),
('inline_help','1','combo-boolean','core','manager',NULL),
('link_tag_scheme','abs','textfield','core','site','2026-11-12 14:21:29'),
('locale','','textfield','core','language',NULL),
('lock_ttl','360','numberfield','core','system',NULL),
('log_deprecated','1','combo-boolean','core','system',NULL),
('log_level','1','numberfield','core','system',NULL),
('log_snippet_not_found','1','combo-boolean','core','site',NULL),
('log_target','FILE','textfield','core','system',NULL),
('login_background_image','','textfield','core','authentication',NULL),
('login_help_button','','combo-boolean','core','authentication',NULL),
('login_logo','','textfield','core','authentication',NULL),
('mail_charset','UTF-8','modx-combo-charset','core','mail',NULL),
('mail_dkim_domain','','textfield','core','mail',NULL),
('mail_dkim_identity','','textfield','core','mail',NULL),
('mail_dkim_passphrase','','text-password','core','mail',NULL),
('mail_dkim_privatekeyfile','','textfield','core','mail',NULL),
('mail_dkim_privatekeystring','','textfield','core','mail',NULL),
('mail_dkim_selector','','textfield','core','mail',NULL),
('mail_encoding','8bit','textfield','core','mail',NULL),
('mail_smtp_auth','','combo-boolean','core','mail',NULL),
('mail_smtp_autotls','1','combo-boolean','core','mail',NULL),
('mail_smtp_helo','','textfield','core','mail',NULL),
('mail_smtp_hosts','','textfield','core','mail','2026-11-12 14:47:44'),
('mail_smtp_keepalive','','combo-boolean','core','mail',NULL),
('mail_smtp_pass','','text-password','core','mail',NULL),
('mail_smtp_port','587','numberfield','core','mail',NULL),
('mail_smtp_secure','','textfield','core','mail',NULL),
('mail_smtp_single_to','','combo-boolean','core','mail',NULL),
('mail_smtp_timeout','10','numberfield','core','mail',NULL),
('mail_smtp_user','','textfield','core','mail',NULL),
('mail_use_smtp','','combo-boolean','core','mail',NULL),
('main_nav_parent','topnav','textfield','core','manager',NULL),
('manager_date_format','Y-m-d','textfield','core','manager',NULL),
('manager_datetime_empty_value','—','textfield','core','manager',NULL),
('manager_datetime_separator',', ','textfield','core','manager',NULL),
('manager_direction','ltr','textfield','core','language',NULL),
('manager_favicon_url','favicon.ico','textfield','core','manager',NULL),
('manager_language','uk','textfield','core','',NULL),
('manager_login_url_alternate','','textfield','core','authentication',NULL),
('manager_logo','','textfield','core','manager',NULL),
('manager_theme','default','modx-combo-manager-theme','core','manager',NULL),
('manager_time_format','H:i','textfield','core','manager',NULL),
('manager_tooltip_delay','2300','numberfield','core','manager',NULL),
('manager_tooltip_enable','1','combo-boolean','core','manager',NULL),
('manager_use_fullname','','combo-boolean','core','manager',NULL),
('manager_week_start','0','numberfield','core','manager',NULL),
('mgr_source_icon','icon-folder-open-o','textfield','core','manager',NULL),
('mgr_tree_icon_context','tree-context','textfield','core','manager',NULL),
('modx_browser_default_sort','name','textfield','core','manager',NULL),
('modx_browser_default_viewmode','grid','textfield','core','manager',NULL),
('modx_browser_tree_hide_files','1','combo-boolean','core','manager',NULL),
('modx_browser_tree_hide_tooltips','1','combo-boolean','core','manager',NULL),
('modx_charset','UTF-8','modx-combo-charset','core','language',NULL),
('package_installer_at_top','1','combo-boolean','core','manager',NULL),
('parser_recurse_uncacheable','1','combo-boolean','core','system',NULL),
('password_generated_length','10','numberfield','core','authentication',NULL),
('password_min_length','8','numberfield','core','authentication',NULL),
('passwordless_activated','','combo-boolean','core','authentication',NULL),
('passwordless_expiration','3600','textfield','core','authentication',NULL),
('pdotools_elements_path','{core_path}components/improvision/elements/','textfield','pdotools','pdotools_main','2026-11-12 14:21:29'),
('pdotools_fenom_cache','0','combo-boolean','pdotools','pdotools_main','2026-11-12 14:26:32'),
('pdotools_fenom_default','1','combo-boolean','pdotools','pdotools_main',NULL),
('pdotools_fenom_modx','','combo-boolean','pdotools','pdotools_main',NULL),
('pdotools_fenom_options','','textarea','pdotools','pdotools_main','2026-11-12 14:26:54'),
('pdotools_fenom_parser','1','combo-boolean','pdotools','pdotools_main','2026-11-12 14:09:46'),
('pdotools_fenom_php','','combo-boolean','pdotools','pdotools_main',NULL),
('pdotools_fenom_save_on_errors','','combo-boolean','pdotools','pdotools_main',NULL),
('pdotools_filter_path','1','combo-boolean','pdotools','pdotools_main',NULL),
('phpthumb_allow_src_above_docroot','','combo-boolean','core','phpthumb',NULL),
('phpthumb_cache_maxage','30','numberfield','core','phpthumb',NULL),
('phpthumb_cache_maxfiles','10000','numberfield','core','phpthumb',NULL),
('phpthumb_cache_maxsize','100','numberfield','core','phpthumb',NULL),
('phpthumb_cache_source_enabled','','combo-boolean','core','phpthumb',NULL),
('phpthumb_document_root','','textfield','core','phpthumb',NULL),
('phpthumb_error_bgcolor','CCCCFF','textfield','core','phpthumb',NULL),
('phpthumb_error_fontsize','1','numberfield','core','phpthumb',NULL),
('phpthumb_error_textcolor','FF0000','textfield','core','phpthumb',NULL),
('phpthumb_far','C','textfield','core','phpthumb',NULL),
('phpthumb_imagemagick_path','','textfield','core','phpthumb',NULL),
('phpthumb_nohotlink_enabled','1','combo-boolean','core','phpthumb',NULL),
('phpthumb_nohotlink_erase_image','1','combo-boolean','core','phpthumb',NULL),
('phpthumb_nohotlink_text_message','Off-server thumbnailing is not allowed','textfield','core','phpthumb',NULL),
('phpthumb_nohotlink_valid_domains','{http_host}','textfield','core','phpthumb',NULL),
('phpthumb_nooffsitelink_enabled','','combo-boolean','core','phpthumb',NULL),
('phpthumb_nooffsitelink_erase_image','1','combo-boolean','core','phpthumb',NULL),
('phpthumb_nooffsitelink_require_refer','','combo-boolean','core','phpthumb',NULL),
('phpthumb_nooffsitelink_text_message','Off-server linking is not allowed','textfield','core','phpthumb',NULL),
('phpthumb_nooffsitelink_valid_domains','{http_host}','textfield','core','phpthumb',NULL),
('phpthumb_nooffsitelink_watermark_src','','textfield','core','phpthumb',NULL),
('phpthumb_zoomcrop','0','textfield','core','phpthumb',NULL),
('preserve_menuindex','','combo-boolean','core','manager',NULL),
('principal_targets','MODX\\Revolution\\modAccessContext,MODX\\Revolution\\modAccessResourceGroup,MODX\\Revolution\\modAccessCategory,MODX\\Revolution\\Sources\\modAccessMediaSource,MODX\\Revolution\\modAccessNamespace','textfield','core','authentication',NULL),
('proxy_auth_type','BASIC','textfield','core','proxy',NULL),
('proxy_host','','textfield','core','proxy',NULL),
('proxy_password','','text-password','core','proxy',NULL),
('proxy_port','','numberfield','core','proxy',NULL),
('proxy_username','','textfield','core','proxy',NULL),
('publish_default','1','combo-boolean','core','site','2026-11-12 14:21:29'),
('quick_search_in_content','1','combo-boolean','core','manager',NULL),
('quick_search_result_max','10','numberfield','core','manager',NULL),
('request_controller','index.php','textfield','core','gateway',NULL),
('request_method_strict','','combo-boolean','core','gateway',NULL),
('request_param_alias','q','textfield','core','gateway',NULL),
('request_param_id','id','textfield','core','gateway',NULL),
('resource_static_allow_absolute','0','combo-boolean','core','static_resources',NULL),
('resource_static_path','{assets_path}','textfield','core','static_resources',NULL),
('resource_tree_node_name','pagetitle','textfield','core','manager',NULL),
('resource_tree_node_name_fallback','alias','textfield','core','manager',NULL),
('resource_tree_node_tooltip','','textfield','core','manager',NULL),
('richtext_default','1','combo-boolean','core','manager',NULL),
('search_default','1','combo-boolean','core','site',NULL),
('send_poweredby_header','','combo-boolean','core','system',NULL),
('server_offset_time','0','numberfield','core','system',NULL),
('session_cookie_domain','','textfield','core','session',NULL),
('session_cookie_httponly','1','combo-boolean','core','session',NULL),
('session_cookie_lifetime','604800','numberfield','core','session',NULL),
('session_cookie_path','','textfield','core','session',NULL),
('session_cookie_samesite','','textfield','core','session',NULL),
('session_cookie_secure','','combo-boolean','core','session',NULL),
('session_gc_maxlifetime','604800','textfield','core','session',NULL),
('session_handler_class','MODX\\Revolution\\modSessionHandler','textfield','core','session',NULL),
('session_name','','textfield','core','session',NULL),
('set_header','1','combo-boolean','core','system',NULL),
('settings_distro','git','textfield','core','system',NULL),
('settings_version','3.1.2-pl','textfield','core','system',NULL),
('show_tv_categories_header','1','combo-boolean','core','manager',NULL),
('site_name','improvision','textfield','core','site','2026-11-12 14:21:29'),
('site_start','1','numberfield','core','site',NULL),
('site_status','1','combo-boolean','core','site',NULL),
('site_unavailable_message','[[%site_unavailable_message]]','textfield','core','site',NULL),
('site_unavailable_page','0','numberfield','core','site',NULL),
('static_elements_automate_chunks','','combo-boolean','core','static_elements',NULL),
('static_elements_automate_plugins','','combo-boolean','core','static_elements',NULL),
('static_elements_automate_snippets','','combo-boolean','core','static_elements',NULL),
('static_elements_automate_templates','','combo-boolean','core','static_elements',NULL),
('static_elements_automate_tvs','','combo-boolean','core','static_elements',NULL),
('static_elements_basepath','','textfield','core','static_elements',NULL),
('static_elements_default_category','0','modx-combo-category','core','static_elements',NULL),
('static_elements_default_mediasource','0','modx-combo-source','core','static_elements',NULL),
('static_elements_html_extension','.tpl','textfield','core','static_elements',NULL),
('symlink_merge_fields','1','combo-boolean','core','site',NULL),
('syncsite_default','1','combo-boolean','core','caching',NULL),
('topmenu_show_descriptions','1','combo-boolean','core','manager',NULL),
('tree_default_sort','menuindex','textfield','core','manager',NULL),
('tree_root_id','0','numberfield','core','manager',NULL),
('tvs_below_content','','combo-boolean','core','manager',NULL),
('unauthorized_page','1','numberfield','core','site',NULL),
('upload_file_exists','1','combo-boolean','core','file',NULL),
('upload_files','aac,au,avi,bmp,css,css.map,doc,docx,eot,gif,gz,htm,html,ico,jpeg,jpg,js,js.map,less,md,mp3,mp4,mpeg,mpg,odb,odf,odg,odp,ods,odt,pdf,png,ppt,pptx,psd,rar,scss,svg,svgz,tar,tgz,tiff,ttf,txt,wav,webp,wmv,woff,woff2,xls,xlsx,xml,z,zip','textfield','core','file',NULL),
('upload_maxsize','2097152','numberfield','core','file','2026-11-12 14:02:47'),
('upload_translit','1','combo-boolean','core','file',NULL),
('upload_translit_restrict_chars_pattern','/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>\"~:`@\\?\\[\\]\\{\\}\\|\\^\'\\\\]/','textfield','core','file',NULL),
('use_alias_path','1','combo-boolean','core','furls','2026-11-12 14:09:46'),
('use_context_resource_table','1','combo-boolean','core','caching',NULL),
('use_editor','1','combo-boolean','core','editor',NULL),
('use_frozen_parent_uris','','combo-boolean','core','furls',NULL),
('use_multibyte','1','combo-boolean','core','language','2026-11-12 14:02:47'),
('use_weblink_target','','combo-boolean','core','site',NULL),
('user_nav_parent','usernav','textfield','core','manager',NULL),
('welcome_action','welcome','textfield','core','manager',NULL),
('welcome_namespace','core','textfield','core','manager',NULL),
('welcome_screen','','combo-boolean','core','manager','2026-11-12 14:41:18'),
('welcome_screen_url','//misc.modx.com/revolution/welcome.31.html','textfield','core','manager',NULL),
('which_editor','','modx-combo-rte','core','editor',NULL),
('which_element_editor','','modx-combo-rte','core','editor',NULL),
('xhtml_urls','1','combo-boolean','core','site',NULL);
/*!40000 ALTER TABLE `modx_system_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_transport_packages`
--

DROP TABLE IF EXISTS `modx_transport_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_transport_packages` (
  `signature` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `installed` datetime DEFAULT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `workspace` int(10) unsigned NOT NULL DEFAULT 0,
  `provider` int(10) unsigned NOT NULL DEFAULT 0,
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `source` tinytext DEFAULT NULL,
  `manifest` text DEFAULT NULL,
  `attributes` mediumtext DEFAULT NULL,
  `package_name` varchar(191) NOT NULL,
  `metadata` text DEFAULT NULL,
  `version_major` smallint(5) unsigned NOT NULL DEFAULT 0,
  `version_minor` smallint(5) unsigned NOT NULL DEFAULT 0,
  `version_patch` smallint(5) unsigned NOT NULL DEFAULT 0,
  `release` varchar(100) NOT NULL DEFAULT '',
  `release_index` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`signature`),
  KEY `workspace` (`workspace`),
  KEY `provider` (`provider`),
  KEY `disabled` (`disabled`),
  KEY `package_name` (`package_name`),
  KEY `version_major` (`version_major`),
  KEY `version_minor` (`version_minor`),
  KEY `version_patch` (`version_patch`),
  KEY `release` (`release`),
  KEY `release_index` (`release_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_transport_packages`
--

LOCK TABLES `modx_transport_packages` WRITE;
/*!40000 ALTER TABLE `modx_transport_packages` DISABLE KEYS */;
INSERT INTO `modx_transport_packages` VALUES
('babel-3.5.7-pl','2026-11-12 14:03:55','2026-11-12 14:03:56','2026-11-12 14:03:56',0,1,0,0,'babel-3.5.7-pl.transport.zip',NULL,'a:6:{s:7:\"license\";s:15502:\"GNU GENERAL PUBLIC LICENSE\r\n   Version 2, June 1991\r\n--------------------------\r\n\r\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\r\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\r\n\r\nEveryone is permitted to copy and distribute verbatim copies\r\nof this license document, but changing it is not allowed.\r\n\r\nPreamble\r\n--------\r\n\r\n  The licenses for most software are designed to take away your\r\nfreedom to share and change it.  By contrast, the GNU General Public\r\nLicense is intended to guarantee your freedom to share and change free\r\nsoftware--to make sure the software is free for all its users.  This\r\nGeneral Public License applies to most of the Free Software\r\nFoundation\'s software and to any other program whose authors commit to\r\nusing it.  (Some other Free Software Foundation software is covered by\r\nthe GNU Library General Public License instead.)  You can apply it to\r\nyour programs, too.\r\n\r\n  When we speak of free software, we are referring to freedom, not\r\nprice.  Our General Public Licenses are designed to make sure that you\r\nhave the freedom to distribute copies of free software (and charge for\r\nthis service if you wish), that you receive source code or can get it\r\nif you want it, that you can change the software or use pieces of it\r\nin new free programs; and that you know you can do these things.\r\n\r\n  To protect your rights, we need to make restrictions that forbid\r\nanyone to deny you these rights or to ask you to surrender the rights.\r\nThese restrictions translate to certain responsibilities for you if you\r\ndistribute copies of the software, or if you modify it.\r\n\r\n  For example, if you distribute copies of such a program, whether\r\ngratis or for a fee, you must give the recipients all the rights that\r\nyou have.  You must make sure that they, too, receive or can get the\r\nsource code.  And you must show them these terms so they know their\r\nrights.\r\n\r\n  We protect your rights with two steps: (1) copyright the software, and\r\n(2) offer you this license which gives you legal permission to copy,\r\ndistribute and/or modify the software.\r\n\r\n  Also, for each author\'s protection and ours, we want to make certain\r\nthat everyone understands that there is no warranty for this free\r\nsoftware.  If the software is modified by someone else and passed on, we\r\nwant its recipients to know that what they have is not the original, so\r\nthat any problems introduced by others will not reflect on the original\r\nauthors\' reputations.\r\n\r\n  Finally, any free program is threatened constantly by software\r\npatents.  We wish to avoid the danger that redistributors of a free\r\nprogram will individually obtain patent licenses, in effect making the\r\nprogram proprietary.  To prevent this, we have made it clear that any\r\npatent must be licensed for everyone\'s free use or not licensed at all.\r\n\r\n  The precise terms and conditions for copying, distribution and\r\nmodification follow.\r\n\r\n\r\nGNU GENERAL PUBLIC LICENSE\r\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\r\n---------------------------------------------------------------\r\n\r\n  0. This License applies to any program or other work which contains\r\na notice placed by the copyright holder saying it may be distributed\r\nunder the terms of this General Public License.  The \"Program\", below,\r\nrefers to any such program or work, and a \"work based on the Program\"\r\nmeans either the Program or any derivative work under copyright law:\r\nthat is to say, a work containing the Program or a portion of it,\r\neither verbatim or with modifications and/or translated into another\r\nlanguage.  (Hereinafter, translation is included without limitation in\r\nthe term \"modification\".)  Each licensee is addressed as \"you\".\r\n\r\nActivities other than copying, distribution and modification are not\r\ncovered by this License; they are outside its scope.  The act of\r\nrunning the Program is not restricted, and the output from the Program\r\nis covered only if its contents constitute a work based on the\r\nProgram (independent of having been made by running the Program).\r\nWhether that is true depends on what the Program does.\r\n\r\n  1. You may copy and distribute verbatim copies of the Program\'s\r\nsource code as you receive it, in any medium, provided that you\r\nconspicuously and appropriately publish on each copy an appropriate\r\ncopyright notice and disclaimer of warranty; keep intact all the\r\nnotices that refer to this License and to the absence of any warranty;\r\nand give any other recipients of the Program a copy of this License\r\nalong with the Program.\r\n\r\nYou may charge a fee for the physical act of transferring a copy, and\r\nyou may at your option offer warranty protection in exchange for a fee.\r\n\r\n  2. You may modify your copy or copies of the Program or any portion\r\nof it, thus forming a work based on the Program, and copy and\r\ndistribute such modifications or work under the terms of Section 1\r\nabove, provided that you also meet all of these conditions:\r\n\r\n    a) You must cause the modified files to carry prominent notices\r\n    stating that you changed the files and the date of any change.\r\n\r\n    b) You must cause any work that you distribute or publish, that in\r\n    whole or in part contains or is derived from the Program or any\r\n    part thereof, to be licensed as a whole at no charge to all third\r\n    parties under the terms of this License.\r\n\r\n    c) If the modified program normally reads commands interactively\r\n    when run, you must cause it, when started running for such\r\n    interactive use in the most ordinary way, to print or display an\r\n    announcement including an appropriate copyright notice and a\r\n    notice that there is no warranty (or else, saying that you provide\r\n    a warranty) and that users may redistribute the program under\r\n    these conditions, and telling the user how to view a copy of this\r\n    License.  (Exception: if the Program itself is interactive but\r\n    does not normally print such an announcement, your work based on\r\n    the Program is not required to print an announcement.)\r\n\r\nThese requirements apply to the modified work as a whole.  If\r\nidentifiable sections of that work are not derived from the Program,\r\nand can be reasonably considered independent and separate works in\r\nthemselves, then this License, and its terms, do not apply to those\r\nsections when you distribute them as separate works.  But when you\r\ndistribute the same sections as part of a whole which is a work based\r\non the Program, the distribution of the whole must be on the terms of\r\nthis License, whose permissions for other licensees extend to the\r\nentire whole, and thus to each and every part regardless of who wrote it.\r\n\r\nThus, it is not the intent of this section to claim rights or contest\r\nyour rights to work written entirely by you; rather, the intent is to\r\nexercise the right to control the distribution of derivative or\r\ncollective works based on the Program.\r\n\r\nIn addition, mere aggregation of another work not based on the Program\r\nwith the Program (or with a work based on the Program) on a volume of\r\na storage or distribution medium does not bring the other work under\r\nthe scope of this License.\r\n\r\n  3. You may copy and distribute the Program (or a work based on it,\r\nunder Section 2) in object code or executable form under the terms of\r\nSections 1 and 2 above provided that you also do one of the following:\r\n\r\n    a) Accompany it with the complete corresponding machine-readable\r\n    source code, which must be distributed under the terms of Sections\r\n    1 and 2 above on a medium customarily used for software interchange; or,\r\n\r\n    b) Accompany it with a written offer, valid for at least three\r\n    years, to give any third party, for a charge no more than your\r\n    cost of physically performing source distribution, a complete\r\n    machine-readable copy of the corresponding source code, to be\r\n    distributed under the terms of Sections 1 and 2 above on a medium\r\n    customarily used for software interchange; or,\r\n\r\n    c) Accompany it with the information you received as to the offer\r\n    to distribute corresponding source code.  (This alternative is\r\n    allowed only for noncommercial distribution and only if you\r\n    received the program in object code or executable form with such\r\n    an offer, in accord with Subsection b above.)\r\n\r\nThe source code for a work means the preferred form of the work for\r\nmaking modifications to it.  For an executable work, complete source\r\ncode means all the source code for all modules it contains, plus any\r\nassociated interface definition files, plus the scripts used to\r\ncontrol compilation and installation of the executable.  However, as a\r\nspecial exception, the source code distributed need not include\r\nanything that is normally distributed (in either source or binary\r\nform) with the major components (compiler, kernel, and so on) of the\r\noperating system on which the executable runs, unless that component\r\nitself accompanies the executable.\r\n\r\nIf distribution of executable or object code is made by offering\r\naccess to copy from a designated place, then offering equivalent\r\naccess to copy the source code from the same place counts as\r\ndistribution of the source code, even though third parties are not\r\ncompelled to copy the source along with the object code.\r\n\r\n  4. You may not copy, modify, sublicense, or distribute the Program\r\nexcept as expressly provided under this License.  Any attempt\r\notherwise to copy, modify, sublicense or distribute the Program is\r\nvoid, and will automatically terminate your rights under this License.\r\nHowever, parties who have received copies, or rights, from you under\r\nthis License will not have their licenses terminated so long as such\r\nparties remain in full compliance.\r\n\r\n  5. You are not required to accept this License, since you have not\r\nsigned it.  However, nothing else grants you permission to modify or\r\ndistribute the Program or its derivative works.  These actions are\r\nprohibited by law if you do not accept this License.  Therefore, by\r\nmodifying or distributing the Program (or any work based on the\r\nProgram), you indicate your acceptance of this License to do so, and\r\nall its terms and conditions for copying, distributing or modifying\r\nthe Program or works based on it.\r\n\r\n  6. Each time you redistribute the Program (or any work based on the\r\nProgram), the recipient automatically receives a license from the\r\noriginal licensor to copy, distribute or modify the Program subject to\r\nthese terms and conditions.  You may not impose any further\r\nrestrictions on the recipients\' exercise of the rights granted herein.\r\nYou are not responsible for enforcing compliance by third parties to\r\nthis License.\r\n\r\n  7. If, as a consequence of a court judgment or allegation of patent\r\ninfringement or for any other reason (not limited to patent issues),\r\nconditions are imposed on you (whether by court order, agreement or\r\notherwise) that contradict the conditions of this License, they do not\r\nexcuse you from the conditions of this License.  If you cannot\r\ndistribute so as to satisfy simultaneously your obligations under this\r\nLicense and any other pertinent obligations, then as a consequence you\r\nmay not distribute the Program at all.  For example, if a patent\r\nlicense would not permit royalty-free redistribution of the Program by\r\nall those who receive copies directly or indirectly through you, then\r\nthe only way you could satisfy both it and this License would be to\r\nrefrain entirely from distribution of the Program.\r\n\r\nIf any portion of this section is held invalid or unenforceable under\r\nany particular circumstance, the balance of the section is intended to\r\napply and the section as a whole is intended to apply in other\r\ncircumstances.\r\n\r\nIt is not the purpose of this section to induce you to infringe any\r\npatents or other property right claims or to contest validity of any\r\nsuch claims; this section has the sole purpose of protecting the\r\nintegrity of the free software distribution system, which is\r\nimplemented by public license practices.  Many people have made\r\ngenerous contributions to the wide range of software distributed\r\nthrough that system in reliance on consistent application of that\r\nsystem; it is up to the author/donor to decide if he or she is willing\r\nto distribute software through any other system and a licensee cannot\r\nimpose that choice.\r\n\r\nThis section is intended to make thoroughly clear what is believed to\r\nbe a consequence of the rest of this License.\r\n\r\n  8. If the distribution and/or use of the Program is restricted in\r\ncertain countries either by patents or by copyrighted interfaces, the\r\noriginal copyright holder who places the Program under this License\r\nmay add an explicit geographical distribution limitation excluding\r\nthose countries, so that distribution is permitted only in or among\r\ncountries not thus excluded.  In such case, this License incorporates\r\nthe limitation as if written in the body of this License.\r\n\r\n  9. The Free Software Foundation may publish revised and/or new versions\r\nof the General Public License from time to time.  Such new versions will\r\nbe similar in spirit to the present version, but may differ in detail to\r\naddress new problems or concerns.\r\n\r\nEach version is given a distinguishing version number.  If the Program\r\nspecifies a version number of this License which applies to it and \"any\r\nlater version\", you have the option of following the terms and conditions\r\neither of that version or of any later version published by the Free\r\nSoftware Foundation.  If the Program does not specify a version number of\r\nthis License, you may choose any version ever published by the Free Software\r\nFoundation.\r\n\r\n  10. If you wish to incorporate parts of the Program into other free\r\nprograms whose distribution conditions are different, write to the author\r\nto ask for permission.  For software which is copyrighted by the Free\r\nSoftware Foundation, write to the Free Software Foundation; we sometimes\r\nmake exceptions for this.  Our decision will be guided by the two goals\r\nof preserving the free status of all derivatives of our free software and\r\nof promoting the sharing and reuse of software generally.\r\n\r\nNO WARRANTY\r\n-----------\r\n\r\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\r\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\r\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\r\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\r\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\r\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\r\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\r\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\r\nREPAIR OR CORRECTION.\r\n\r\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\r\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\r\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\r\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\r\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\r\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\r\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\r\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\r\nPOSSIBILITY OF SUCH DAMAGES.\r\n\r\n---------------------------\r\nEND OF TERMS AND CONDITIONS\r\n\";s:6:\"readme\";s:1332:\"# Babel\r\n\r\nThe easy way for your multilingual site!\r\n\r\n- Authors: Jakob Class <jakob.class@gmail.com>, Rico Goldsky\r\n  <goldsky@virtudraft.com>, Joshua Luckers <joshualuckers@me.com>, Thomas Jakobi\r\n  <office@treehillstudio.com>\r\n- License: GNU GPLv2\r\n\r\n## Features\r\n\r\nBabel is an Extra for MODx Revolution that helps you to manage your multilingual\r\nwebsites using different contexts. Babel even supports managing several different\r\nmultilingual websites within one MODx instance by using so-called context groups.\r\n\r\nBabel maintains links between translated resources. In the manager you can use\r\nthe Babel Box to easily switch between the different language versions\r\nof your resources. Translations can be created automatically by Babel or defined\r\nmanually.\r\n\r\nAdditionally, Babel can be used to synchronize certain template variables (TVs)\r\nof translated resources which should be the same in every context (language).\r\n\r\n## Installation\r\n\r\nMODX Package Management\r\n\r\n## Usage\r\n\r\nInstall via package manager and fill the system setting `babel.contextKeys` with\r\na comma-separated list of context keys which should be used to link multilingual\r\nresources.\r\n\r\n## Documentation\r\n\r\nFor more information please read the documentation on https://mikrobi.github.io/babel/\r\n\r\n## GitHub Repository\r\n\r\nhttps://github.com/mikrobi/babel\r\n\";s:9:\"changelog\";s:12688:\"# Changelog\r\n\r\nAll notable changes to this project will be documented in this file.\r\n\r\nThe format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),\r\nand this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).\r\n\r\n## [3.5.7] - 2026-03-04\r\n\r\n### Fixed\r\n\r\n- Fix array to string conversion warning\r\n\r\n## [3.5.6] - 2026-02-24\r\n\r\n### Fixed\r\n\r\n- Fix undefined array key 1 warning in the base Snippet class\r\n\r\n## [3.5.5] - 2026-02-19\r\n\r\n### Changed\r\n\r\n- Refresh only the Babel and the resource cache of the affected resources when syncronizing resource fields and template variables\r\n- Refresh only the Babel and the resource cache of the affected resources when updating linked resources\r\n\r\n## [3.5.4] - 2025-12-20\r\n\r\n### Fixed\r\n\r\n- Use the correct babel.syncTvs and babel.syncFields value during an update\r\n\r\n## [3.5.3] - 2025-11-17\r\n\r\n### Added\r\n\r\n- New snippet property `useRequestProperties` for the BabelLinks snippet\r\n- New spanish lexicon \r\n\r\n## [3.5.2] - 2025-08-08\r\n\r\n### Fixed\r\n\r\n- Fix searching for a zero in the search fields, when the query does not contain an integer\r\n- Fix warning in OnContextSave for contexts not included in the Babel configuration [#227]\r\n\r\n## [3.5.1] - 2025-03-03\r\n\r\n### Fixed\r\n\r\n- Fix fatal error, when decodeContextKeySetting did not return an array [#225]\r\n\r\n## [3.5.0] - 2025-03-03\r\n\r\n### Added\r\n\r\n- Create translated resource children by option\r\n- Refresh translated resources with the content of a source resource\r\n- Mass unlink/delete/refresh translated resources of one resource and their children by option\r\n- Hide buttons in the custom manager page for contexts not in the context group of the current resource - thanks to A Demyanenko <https://github.com/rs-a-demyanenko>\r\n- Enable/disable babel.syncFields and babel.syncTVs with context settings - thanks to A Demyanenko <https://github.com/rs-a-demyanenko>\r\n- Sync babel.syncFields and babel.syncTVs context settings in grouped contexts - thanks to A Demyanenko <https://github.com/rs-a-demyanenko>\r\n- The babel button menu will have a scroll bar, with a large count of contexts\r\n- Add a new system setting `babel.displayChunk`, that can define a chunk for `babel.displayText` system setting\r\n\r\n## [3.4.0] - 2024-10-13\r\n\r\n### Added\r\n\r\n- Add system setting \"babel.syncFields\" to sync resource fields on save - thanks to Jens Wittmann <https://github.com/jenswittmann>\r\n- Add `sortby` and `sortdir` properties to the BabelLinks snippet - thanks to Vasily Naumkin <https://github.com/bezumkin>\r\n\r\n## [3.3.4] - 2024-06-23\r\n\r\n### Added\r\n\r\n- Refresh the Babel cache during saving or removing a context\r\n- Use only valid contexts in the context matrix\r\n\r\n### Fixed\r\n\r\n- [#213] Don\'t limit the context matrix to 20 contexts\r\n\r\n## [3.3.3] - 2024-05-17\r\n\r\n### Fixed\r\n\r\n- Fix for TVs are not being synced between languages\r\n\r\n## [3.3.2] - 2024-05-11\r\n\r\n### Fixed\r\n\r\n- Fix for a real integer value in the `resourceId` snippet property\r\n\r\n## [3.3.1] - 2024-04-11\r\n\r\n### Added\r\n\r\n- [#209] Add support toPlaceholder for BabelTranslation snippet - thanks to Arjen <https://github.com/arjen-t>\r\n\r\n### Fixed\r\n\r\n- [#207] Fix for multiple IDs in the `resourceId` property of the BabelTranslation snippet\r\n\r\n## [3.3.0] - 2024-03-27\r\n\r\n### Added\r\n\r\n- Add a menu entry/button to create multiple translations in selectable contexts\r\n- Include a possible scrollbar height in the context grid height\r\n- [#204] New event when TV values have been synchronized - thanks to Arjen <https://github.com/arjen-t>\r\n- Add an option to link a new created translation with all existing translations\r\n\r\n### Fixed\r\n\r\n- [#202] Fix synchronized TVs never triggered - thanks to Arjen <https://github.com/arjen-t>\r\n- Don\'t change the parent of a new linked resource to a folder\r\n\r\n## [3.2.0] - 2024-02-07\r\n\r\n### Changed\r\n\r\n- Code refactoring\r\n- Modernized the user experience\r\n\r\n### Added\r\n\r\n- Show the Babel button only on resources in contexts referenced in `babel.contextKeys` system setting\r\n- Show the context column in the custom manager page only for contexts referenced in `babel.contextKeys` system setting\r\n- System settings tab in custom manager page\r\n- Change the Babel button text by the `babel.displayText` system setting (language, context or combination)\r\n- Show all contexts in the Babel button by disabling the `babel.restrictToGroup` system setting\r\n- New snippet property `restrictToGroup` for the BabelLinks snippet\r\n\r\n### Fixed\r\n\r\n- Set context grid height on base of the content\r\n\r\n## [3.1.1] - 2021-05-26\r\n\r\n### Fixed\r\n\r\n- [#189] Fix various bugs - thanks to Jako <https://github.com/Jako>\r\n\r\n## [3.1.0] - 2021-11-21\r\n\r\n### Added\r\n\r\n- Add MODX 3.x compatability\r\n- Add various new translations\r\n- [#176] Accept a comma-separated list of IDs in resourceId property of the BabelTranslation snippet\r\n- [#168] Invoke OnDocFormSave event when duplicating a resource\r\n\r\n### Fixed\r\n\r\n- Fix minor bugs\r\n\r\n## [3.0.0] - 2016-12-12\r\n\r\n### Added\r\n\r\n- [#143] Link to a translation by entering the ID\r\n- [#134] Add Babel System Events - thanks to Jako <https://github.com/Jako>\r\n- [#147] Initiated language code standard using IANA\'s Language Subtag Registry\r\n- Add options to link to specific resource or all resources\r\n- [#144] Add options to unlink to specific resource or all resources\r\n- Add config to set table\'s height\r\n- Add styling to align table in CMP\r\n- Initialized PSR-2 coding standard https://github.com/php-fig/fig-standards/blob/master/accepted/PSR-2-coding-style-guide.md\r\n\r\n### Changed\r\n\r\n- [#123] Minor cosmetic update\r\n- Resource title\'s width\r\n\r\n### Fixed\r\n\r\n- [#135] Fix not found icons\r\n- [#145] Fix unlinking unsync TVs\r\n- [#139], [#140] Fix Unable to link translations by searching by pagetitle\r\n\r\n## [3.0.0-rc1] - 2016-04-15\r\n\r\n### Added\r\n\r\n- Add Custom Manager Page for resources matrix, supported by Steven Morgan of Waterlogic\r\n\r\n## [3.0.0-beta5] - 2016-03-22\r\n\r\n### Added\r\n\r\n- [#103] Add mouseover action on babel\'s button to show menu\r\n- [#115] Add language property in BabelLinks snippet\r\n\r\n### Changed\r\n\r\n- Ignore the menu if the current context key is not included in `babel.contextKeys` System Settings\r\n- Change empty item on combobox\r\n- Change link & unlink logic, no reset whatsoever\r\n- [#107] Replace contextKey with cultureKey in the button drop down\r\n- [#110] Update dutch lexicon\r\n\r\n### Fixed\r\n\r\n- [#66] Fix moving resource to another context\r\n- [#114] Fix context on linking\r\n\r\n## [3.0.0-beta4] - 2015-03-25\r\n\r\n### Added\r\n\r\n- [#105] Add `babel.ignoreSiteStatus` system setting to ignore site_status (when the site is offline)\r\n\r\n### Fixed\r\n\r\n- [#108] Fix context\'s link then there\'s no translation available when the includeUnlinked property is enabled\r\n- [#106] Fix resource selection when selecting empty text (&nbsp;)\r\n\r\n## [3.0.0-beta3] - 2015-02-14\r\n\r\n### Added\r\n\r\n- [#100] Add optional typeahead combo of pagetitle on searching new link\r\n- [#99] Add polish lexicon\r\n\r\n### Fixed\r\n\r\n- [#101] Fix BabelTranslation\r\n\r\n## [3.0.0-beta2] - 2014-12-02\r\n\r\n### Added\r\n\r\n- Add optional toArray property to BabelLinks snippet\r\n- Add optional toPlaceholder property to BabelLinks snippet\r\n- Add optional wrapperTpl property to BabelLinks snippet\r\n- Add icons\r\n- [#97] Add russian lexicon\r\n- [#73] Add AjaxManager support\r\n\r\n### Changed\r\n\r\n- Remove \"q\" and \"cultureKey\" url parameters in urls generated in the BabelLinks snippet\r\n\r\n## [3.0.0-beta1] - 2014-11-28\r\n\r\n### Added\r\n\r\n- [#51] Append URL parameters of current page if any\r\n- Add includeUnlinked property to BabelLinks snippet, option to skip/include unlinked context\r\n- [#88] Skip unpublished contexts\r\n- [#78], [#62] Add outputSeparator property to BabelLinks snippet\r\n- [#67] Add italian lexicon\r\n- [#60] Add dutch lexicon\r\n\r\n### Changed\r\n\r\n- [#77] Update readme.txt\r\n- [#82] Check for resourceId property before defaulting\r\n- [#75] Replaced deprecated method clearCache() with refresh()\r\n- [#84] Optimize OnResourceDuplicate plugin event\r\n- [#44], [#29] Use cultureKey instead of contextKey in the output of the BabelTranslation snippet\r\n- [#27], [#90], [#92] Refactor language selection, runs using AJAX\r\n- [#83], [#59] Extend OnResourceDuplicate plugin event for nested resources\r\n\r\n### Fixed\r\n\r\n- [#56] Emptying the MODX trash can corrupt values in modx_site_tmplvar_contentvalues\r\n- [#70] fix is_folder to isfolder\r\n- [#58], [#64] Fix the error with updating a resource, at least in the quick update window\r\n\r\n## [2.2.5] - 2011-12-11\r\n\r\n### Added\r\n\r\n- Extended list of languages in translation files\r\n- Add Romanian lexicon\r\n\r\n### Fixed\r\n\r\n- [#31] Make babel buttons fixed in manager and change the look accordingly\r\n\r\n## [2.2.4] - 2011-03-28\r\n\r\n### Added\r\n\r\n- [#22] Add showCurrent property to BabelLinks snippet\r\n\r\n### Fixed\r\n\r\n- [#25] Correctly synchronize unchecked \"checkbox\" TVs\r\n\r\n## [2.2.3-rc1] - 2011-01-26\r\n\r\n### Added\r\n\r\n- [#18] Add id placeholder to the BabelLink chunk used by the BabelLinks snippet\r\n\r\n### Fixed\r\n\r\n- [#21] Fix Manager redirect causes error in Google Chrome browser\r\n\r\n## [2.2.2-rc2] - 2011-01-17\r\n\r\n### Fixed\r\n\r\n- Fix initial synchronization of TV values when setting a link manually didn\'t work\r\n\r\n## [2.2.2-rc1] - 2011-01-14\r\n\r\n### Added\r\n\r\n- [#16] Values of synchronized TVs of the source resource(s) can be copied to the target resource when setting a translation link manually\r\n- Add showUnpublished property to BabelLinks and BabelTranslation snippets\r\n\r\n## [2.2.1-rc1] - 2011-01-09\r\n\r\n### Added\r\n\r\n- [#11] User is redirect to new resource after creating a translation\r\n\r\n### Fixed\r\n\r\n- [#15] Fix Babel TV of duplicated resources is being initiated\r\n- Alias is duplicated when creating a translation, too\r\n\r\n## [2.2.0-pl] - 2010-12-22\r\n\r\n### Added\r\n\r\n- [#10] Add checks to handle invalid Babel settings (defined by the user)\r\n\r\n### Added\r\n\r\n- Improved performance of TV synchronization\r\n\r\n### Fixed\r\n\r\n- Fix bug occuring when creating new resources\r\n- Fix bug in validation when setting a link manually\r\n\r\n## [2.1.1-pl1] - 2010-12-21\r\n\r\n### Fixed\r\n\r\n- [#9] Calling deprecated and non-existing method in Babel class\r\n\r\n## [2.1.1-rc1] - 2010-12-19\r\n\r\n### Added\r\n\r\n- Add resourceId property to BabelLinks snippet\r\n- Add French translation for new keys from version 2.1.0-beta\r\n- Add BabelTranslation snippet to get the id of a translated resource in a given context\r\n\r\n### Changed\r\n\r\n- Protect the Babel TV from being manipulated manually by setting the type to \'hidden\' by default\r\n\r\n### Fixed\r\n\r\n- Fix bug with empty babel settings (contextKeys and syncTvs)\r\n\r\n## [2.1.0-beta] - 2010-12-17\r\n\r\n### Added\r\n\r\n- Add french lexicon. Thanks to Romain <romain@meltingmedia.net>\r\n- New Babel-Box:\r\n	- A chunk is used to generate the language links (mgr/babelBoxItem)\r\n	- Changed CSS\r\n	- Add JavaScript (for the langauge layers, see below)\r\n	- All languages (contexts) of current group are displayed even if there are no links defined\r\n	- If there is no link to a language it\'s background is light gray\r\n	- When mouseovering a language link a layer is displayed where you can\r\n		- create a translation (new resource) if no link is defined\r\n		- manually link the translation to an existing resource if no link is defined\r\n		- remove a link if a link is defined\r\n- Add validation to keep the babel TV clear\r\n- Add several keys to the lexicon\r\n\r\n## [2.0.0-beta] - 2010-12-16\r\n\r\n### Added\r\n\r\n- Add build script\r\n- Add multilanguage support for the extra itself\r\n- Easier but more powerfull configuration:\r\n  No need to specify names/caption of context anymore (caption is derived from the contexts\' cultureKey)\r\n  3 system settings which can be set during package installation\r\n	* babel.contextKeys:\r\n	  Define which context should be used to link translation\r\n	  Defining several groups of context is supported, too (see readme.txt)\r\n	* babel.babelTvName:\r\n	  Name of TV in which links between translated resources are keept\r\n	* babel.syncTvs:\r\n	  IDs of TVs which should be synchronized by Babel\r\n- Plugin listens to OnEmptyTrash event to remove links to non-existing resources stored in the Babel TV\r\n- Plugin listens to OnContextRemove event to remove links to non-existing context stored in the Babel TV and to clean the `babel.contextKeys` setting\r\n\r\n### Changed\r\n\r\n- Total reengineering of the whole extra (code structure and logic, too) => NOT BACKWARD COMPATIBLE\r\n- Moved CSS into asset folder\r\n- Moved codebase to https://github.com/mikrobi/babel/\r\n- This version is NOT BACKWARD COMPATIBLE to older versions\r\n\r\n### Fixed\r\n\r\n- Fix issue with primary key validation errors when linking the Babel TV to templates\r\n\r\n## [1.0.0] - 2010-12-13\r\n\r\n### Added\r\n\r\n- Initial release from Sylvain Aerni <enzyms@gmail.com> see https://github.com/enzyms/babel\r\n\";s:13:\"setup-options\";s:32:\"babel-3.5.7-pl/setup-options.php\";s:8:\"requires\";a:2:{s:3:\"php\";s:5:\">=7.2\";s:4:\"modx\";s:5:\">=2.4\";}s:14:\"package_action\";i:0;}','babel',NULL,3,5,7,'pl',0),
('migx-3.0.5-beta','2026-11-12 14:03:55','2026-11-12 14:03:55','2026-11-12 14:03:55',0,1,0,0,'migx-3.0.5-beta.transport.zip',NULL,'a:4:{s:7:\"license\";s:15504:\"GNU GENERAL PUBLIC LICENSE\r\n   Version 2, June 1991\r\n--------------------------\r\n\r\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\r\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\r\n\r\nEveryone is permitted to copy and distribute verbatim copies\r\nof this license document, but changing it is not allowed.\r\n\r\nPreamble\r\n--------\r\n\r\n  The licenses for most software are designed to take away your\r\nfreedom to share and change it.  By contrast, the GNU General Public\r\nLicense is intended to guarantee your freedom to share and change free\r\nsoftware--to make sure the software is free for all its users.  This\r\nGeneral Public License applies to most of the Free Software\r\nFoundation\'s software and to any other program whose authors commit to\r\nusing it.  (Some other Free Software Foundation software is covered by\r\nthe GNU Library General Public License instead.)  You can apply it to\r\nyour programs, too.\r\n\r\n  When we speak of free software, we are referring to freedom, not\r\nprice.  Our General Public Licenses are designed to make sure that you\r\nhave the freedom to distribute copies of free software (and charge for\r\nthis service if you wish), that you receive source code or can get it\r\nif you want it, that you can change the software or use pieces of it\r\nin new free programs; and that you know you can do these things.\r\n\r\n  To protect your rights, we need to make restrictions that forbid\r\nanyone to deny you these rights or to ask you to surrender the rights.\r\nThese restrictions translate to certain responsibilities for you if you\r\ndistribute copies of the software, or if you modify it.\r\n\r\n  For example, if you distribute copies of such a program, whether\r\ngratis or for a fee, you must give the recipients all the rights that\r\nyou have.  You must make sure that they, too, receive or can get the\r\nsource code.  And you must show them these terms so they know their\r\nrights.\r\n\r\n  We protect your rights with two steps: (1) copyright the software, and\r\n(2) offer you this license which gives you legal permission to copy,\r\ndistribute and/or modify the software.\r\n\r\n  Also, for each author\'s protection and ours, we want to make certain\r\nthat everyone understands that there is no warranty for this free\r\nsoftware.  If the software is modified by someone else and passed on, we\r\nwant its recipients to know that what they have is not the original, so\r\nthat any problems introduced by others will not reflect on the original\r\nauthors\' reputations.\r\n\r\n  Finally, any free program is threatened constantly by software\r\npatents.  We wish to avoid the danger that redistributors of a free\r\nprogram will individually obtain patent licenses, in effect making the\r\nprogram proprietary.  To prevent this, we have made it clear that any\r\npatent must be licensed for everyone\'s free use or not licensed at all.\r\n\r\n  The precise terms and conditions for copying, distribution and\r\nmodification follow.\r\n\r\n\r\nGNU GENERAL PUBLIC LICENSE\r\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\r\n---------------------------------------------------------------\r\n\r\n  0. This License applies to any program or other work which contains\r\na notice placed by the copyright holder saying it may be distributed\r\nunder the terms of this General Public License.  The \"Program\", below,\r\nrefers to any such program or work, and a \"work based on the Program\"\r\nmeans either the Program or any derivative work under copyright law:\r\nthat is to say, a work containing the Program or a portion of it,\r\neither verbatim or with modifications and/or translated into another\r\nlanguage.  (Hereinafter, translation is included without limitation in\r\nthe term \"modification\".)  Each licensee is addressed as \"you\".\r\n\r\nActivities other than copying, distribution and modification are not\r\ncovered by this License; they are outside its scope.  The act of\r\nrunning the Program is not restricted, and the output from the Program\r\nis covered only if its contents constitute a work based on the\r\nProgram (independent of having been made by running the Program).\r\nWhether that is true depends on what the Program does.\r\n\r\n  1. You may copy and distribute verbatim copies of the Program\'s\r\nsource code as you receive it, in any medium, provided that you\r\nconspicuously and appropriately publish on each copy an appropriate\r\ncopyright notice and disclaimer of warranty; keep intact all the\r\nnotices that refer to this License and to the absence of any warranty;\r\nand give any other recipients of the Program a copy of this License\r\nalong with the Program.\r\n\r\nYou may charge a fee for the physical act of transferring a copy, and\r\nyou may at your option offer warranty protection in exchange for a fee.\r\n\r\n  2. You may modify your copy or copies of the Program or any portion\r\nof it, thus forming a work based on the Program, and copy and\r\ndistribute such modifications or work under the terms of Section 1\r\nabove, provided that you also meet all of these conditions:\r\n\r\n    a) You must cause the modified files to carry prominent notices\r\n    stating that you changed the files and the date of any change.\r\n\r\n    b) You must cause any work that you distribute or publish, that in\r\n    whole or in part contains or is derived from the Program or any\r\n    part thereof, to be licensed as a whole at no charge to all third\r\n    parties under the terms of this License.\r\n\r\n    c) If the modified program normally reads commands interactively\r\n    when run, you must cause it, when started running for such\r\n    interactive use in the most ordinary way, to print or display an\r\n    announcement including an appropriate copyright notice and a\r\n    notice that there is no warranty (or else, saying that you provide\r\n    a warranty) and that users may redistribute the program under\r\n    these conditions, and telling the user how to view a copy of this\r\n    License.  (Exception: if the Program itself is interactive but\r\n    does not normally print such an announcement, your work based on\r\n    the Program is not required to print an announcement.)\r\n\r\nThese requirements apply to the modified work as a whole.  If\r\nidentifiable sections of that work are not derived from the Program,\r\nand can be reasonably considered independent and separate works in\r\nthemselves, then this License, and its terms, do not apply to those\r\nsections when you distribute them as separate works.  But when you\r\ndistribute the same sections as part of a whole which is a work based\r\non the Program, the distribution of the whole must be on the terms of\r\nthis License, whose permissions for other licensees extend to the\r\nentire whole, and thus to each and every part regardless of who wrote it.\r\n\r\nThus, it is not the intent of this section to claim rights or contest\r\nyour rights to work written entirely by you; rather, the intent is to\r\nexercise the right to control the distribution of derivative or\r\ncollective works based on the Program.\r\n\r\nIn addition, mere aggregation of another work not based on the Program\r\nwith the Program (or with a work based on the Program) on a volume of\r\na storage or distribution medium does not bring the other work under\r\nthe scope of this License.\r\n\r\n  3. You may copy and distribute the Program (or a work based on it,\r\nunder Section 2) in object code or executable form under the terms of\r\nSections 1 and 2 above provided that you also do one of the following:\r\n\r\n    a) Accompany it with the complete corresponding machine-readable\r\n    source code, which must be distributed under the terms of Sections\r\n    1 and 2 above on a medium customarily used for software interchange; or,\r\n\r\n    b) Accompany it with a written offer, valid for at least three\r\n    years, to give any third party, for a charge no more than your\r\n    cost of physically performing source distribution, a complete\r\n    machine-readable copy of the corresponding source code, to be\r\n    distributed under the terms of Sections 1 and 2 above on a medium\r\n    customarily used for software interchange; or,\r\n\r\n    c) Accompany it with the information you received as to the offer\r\n    to distribute corresponding source code.  (This alternative is\r\n    allowed only for noncommercial distribution and only if you\r\n    received the program in object code or executable form with such\r\n    an offer, in accord with Subsection b above.)\r\n\r\nThe source code for a work means the preferred form of the work for\r\nmaking modifications to it.  For an executable work, complete source\r\ncode means all the source code for all modules it contains, plus any\r\nassociated interface definition files, plus the scripts used to\r\ncontrol compilation and installation of the executable.  However, as a\r\nspecial exception, the source code distributed need not include\r\nanything that is normally distributed (in either source or binary\r\nform) with the major components (compiler, kernel, and so on) of the\r\noperating system on which the executable runs, unless that component\r\nitself accompanies the executable.\r\n\r\nIf distribution of executable or object code is made by offering\r\naccess to copy from a designated place, then offering equivalent\r\naccess to copy the source code from the same place counts as\r\ndistribution of the source code, even though third parties are not\r\ncompelled to copy the source along with the object code.\r\n\r\n  4. You may not copy, modify, sublicense, or distribute the Program\r\nexcept as expressly provided under this License.  Any attempt\r\notherwise to copy, modify, sublicense or distribute the Program is\r\nvoid, and will automatically terminate your rights under this License.\r\nHowever, parties who have received copies, or rights, from you under\r\nthis License will not have their licenses terminated so long as such\r\nparties remain in full compliance.\r\n\r\n  5. You are not required to accept this License, since you have not\r\nsigned it.  However, nothing else grants you permission to modify or\r\ndistribute the Program or its derivative works.  These actions are\r\nprohibited by law if you do not accept this License.  Therefore, by\r\nmodifying or distributing the Program (or any work based on the\r\nProgram), you indicate your acceptance of this License to do so, and\r\nall its terms and conditions for copying, distributing or modifying\r\nthe Program or works based on it.\r\n\r\n  6. Each time you redistribute the Program (or any work based on the\r\nProgram), the recipient automatically receives a license from the\r\noriginal licensor to copy, distribute or modify the Program subject to\r\nthese terms and conditions.  You may not impose any further\r\nrestrictions on the recipients\' exercise of the rights granted herein.\r\nYou are not responsible for enforcing compliance by third parties to\r\nthis License.\r\n\r\n  7. If, as a consequence of a court judgment or allegation of patent\r\ninfringement or for any other reason (not limited to patent issues),\r\nconditions are imposed on you (whether by court order, agreement or\r\notherwise) that contradict the conditions of this License, they do not\r\nexcuse you from the conditions of this License.  If you cannot\r\ndistribute so as to satisfy simultaneously your obligations under this\r\nLicense and any other pertinent obligations, then as a consequence you\r\nmay not distribute the Program at all.  For example, if a patent\r\nlicense would not permit royalty-free redistribution of the Program by\r\nall those who receive copies directly or indirectly through you, then\r\nthe only way you could satisfy both it and this License would be to\r\nrefrain entirely from distribution of the Program.\r\n\r\nIf any portion of this section is held invalid or unenforceable under\r\nany particular circumstance, the balance of the section is intended to\r\napply and the section as a whole is intended to apply in other\r\ncircumstances.\r\n\r\nIt is not the purpose of this section to induce you to infringe any\r\npatents or other property right claims or to contest validity of any\r\nsuch claims; this section has the sole purpose of protecting the\r\nintegrity of the free software distribution system, which is\r\nimplemented by public license practices.  Many people have made\r\ngenerous contributions to the wide range of software distributed\r\nthrough that system in reliance on consistent application of that\r\nsystem; it is up to the author/donor to decide if he or she is willing\r\nto distribute software through any other system and a licensee cannot\r\nimpose that choice.\r\n\r\nThis section is intended to make thoroughly clear what is believed to\r\nbe a consequence of the rest of this License.\r\n\r\n  8. If the distribution and/or use of the Program is restricted in\r\ncertain countries either by patents or by copyrighted interfaces, the\r\noriginal copyright holder who places the Program under this License\r\nmay add an explicit geographical distribution limitation excluding\r\nthose countries, so that distribution is permitted only in or among\r\ncountries not thus excluded.  In such case, this License incorporates\r\nthe limitation as if written in the body of this License.\r\n\r\n  9. The Free Software Foundation may publish revised and/or new versions\r\nof the General Public License from time to time.  Such new versions will\r\nbe similar in spirit to the present version, but may differ in detail to\r\naddress new problems or concerns.\r\n\r\nEach version is given a distinguishing version number.  If the Program\r\nspecifies a version number of this License which applies to it and \"any\r\nlater version\", you have the option of following the terms and conditions\r\neither of that version or of any later version published by the Free\r\nSoftware Foundation.  If the Program does not specify a version number of\r\nthis License, you may choose any version ever published by the Free Software\r\nFoundation.\r\n\r\n  10. If you wish to incorporate parts of the Program into other free\r\nprograms whose distribution conditions are different, write to the author\r\nto ask for permission.  For software which is copyrighted by the Free\r\nSoftware Foundation, write to the Free Software Foundation; we sometimes\r\nmake exceptions for this.  Our decision will be guided by the two goals\r\nof preserving the free status of all derivatives of our free software and\r\nof promoting the sharing and reuse of software generally.\r\n\r\nNO WARRANTY\r\n-----------\r\n\r\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\r\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\r\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\r\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\r\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\r\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\r\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\r\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\r\nREPAIR OR CORRECTION.\r\n\r\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\r\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\r\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\r\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\r\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\r\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\r\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\r\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\r\nPOSSIBILITY OF SUCH DAMAGES.\r\n\r\n---------------------------\r\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:1439:\"--------------------\r\nMIGX\r\n--------------------\r\nVersion: 2.1.0\r\nAuthor: Bruno Perner <b.perner@gmx.de>\r\n--------------------\r\n\r\n* MIGX (multiItemsGridTv for modx) is a custom-tv-input-type for adding multiple items into one TV-value and a snippet for listing this items on your frontend.\r\n* It has a configurable grid and a configurable tabbed editor-window to add and edit items.\r\n* Each item can have multiple fields. For each field you can use another tv-input-type.\r\n\r\nFeel free to suggest ideas/improvements/bugs on GitHub:\r\nhttp://github.com/Bruno17/multiItemsGridTV/issues\r\n\r\nInstallation:\r\n\r\ninstall by package-management.\r\nCreate a new menu:\r\nSystem -> Actions \r\n\r\nActions-tree:\r\nmigx -> right-click -> create Acton here\r\ncontroller: index\r\nnamespace: migx\r\nlanguage-topics: migx:default,file\r\n\r\nmenu-tree:\r\nComponents -> right-click -> place action here\r\nlexicon-key: migx\r\naction: migx - index\r\nparameters: &configs=migxconfigs||packagemanager||setup\r\n\r\nclear cache\r\ngo to components -> migx -> setup-tab -> setup\r\n\r\nIf you are upgrading from MIGX - versions before 2.0\r\ngo to tab upgrade. click upgrade.\r\nThis will add a new autoincrementing field MIGX_id to all your MIGX-TV-items\r\nThe getImageList-snippet needs this field to work correctly.\r\n\r\n\r\nAllways after upgrading MIGX of any Version:\r\ngo to components -> migx -> setup-tab -> setup\r\n\r\nthis will upgrade the migx-configs-table and add new fields, if necessary.\r\n\r\n\r\n\";s:9:\"changelog\";s:12265:\"Changelog for MIGX.\r\n\r\nMIGX 3.0.2\r\n==========\r\nfix some MODX 3 and PHP 8 compatibility and more issues\r\n\r\nMIGX 2.13.0\r\n==============\r\nadd snippet migxGetObject and property toPlaceholders\r\nadd property createChunk to create a chunk with all possible placeholders\r\nFix imageupload on PHP7 due to stray break statement\r\nFix for missing custom prefix in some packagemanager tasks\r\nUpdated image paths to use dynamic assets path\r\nFix the export if a join setting exist\r\nFinnish Translation\r\nadd userid to migxResourceMediapath snippet\r\nremove duplicate sort scriptProperty in export.php\r\n[getlist.php] add getcustomconfigs - hook, groupby, selectfields, specialfields\r\nparse MODX-tags in field-configs\r\npackagemanager fix new folder permission\r\nUse a textarea instead of an input in MIGX TV\r\nReduce indexed varchar fields for utf8mb4 support in mysql\r\nfix duplicate entries in csv-export\r\nAdd CSV Import functionality\r\nImprove CSV Export functionality\r\nadd toJson property to migxLoopCollection\r\nFix transparency in .png in renderimage column renderer\r\nOptimize loadfromxource functionality, especially for MIGX within MIGXdb\r\ndeep nested saving when nested windows are open and saving without closing the window\r\nexport/import single MIGX - items\r\n\r\nMIGX 2.12.0\r\n==============\r\nselect db-fields from defined class and its joins for formtabs and columns\r\nadd categories and a category-filter to MIGX Configs\r\nmultiple grouping-levels for &groupingField\r\nhooksnippet getformnames\r\nadd snippet migxAutoPublish for publishing by Cronjobs\r\nadd beforesave - hook to update-processor\r\nallow string in where-property\r\nadd a default schema-template, used at create package\r\nand some bugfixes\r\n\r\nMIGX 2.11.0\r\n==============\r\ngroupingfield, preparesnippet, _total, _count, improve @CODE\r\nhooksnippet beforecreateform\r\n\r\nMIGX 2.10.0\r\n==============\r\nhooksnippet getcustomconfigs for importcsvmigx\r\nsupport layout-rows/columns in formtabs\r\ncontextmenu \'flat formtabs\'\r\nmultiupload to db, resizeOnUpload - plugin\r\n[packagemanager] Add Extension Package - feature\r\nrespect joinalias in export.php and handlepositionselector.php\r\npossible to use TV-value in migxresourcemediapath - snippet\r\n[getImageList] inherit_children_tvname\r\nMIGXdb add item before/after\r\n\r\nMIGX 2.9.7\r\n==============\r\nadd emtpyTpl\r\nfix some MIGX-grid width - issues\r\nimport csv to MIGX\r\n\r\nMIGX 2.9.6\r\n==============\r\nhooksnippet getcustomconfigs for export-processor\r\nfix missing formtabs after saving\r\n\r\nMIGX 2.9.5\r\n==============\r\ncolumn-actionbuttons also for MIGX\r\nexport/import MIGX-items from/into MIGX-TV\r\nget tinymcewrapper working\r\nmore config-options for combo-filter\r\nFix and simplify Redactor implementation to use MODx.loadRTE()\r\n\r\nMIGX 2.9.4\r\n==============\r\n[migxResourcemediapath] add context_key as path option\r\nbutton for \'alter fields from schema\'\r\nfix MIGX-grid width\r\ncustom grid for MIGX-TV\r\nrespect context-default-media-source - setting\r\n\r\nMIGX 2.9.3\r\n==============\r\nbasic support for new TinyMCE RTE\r\nfix assetsUrl/connectorUrl - settings\r\nMIGX-TV MODX multifile-uploader/autocreate items  \r\nMIGX-TV configurable contextmenues\r\n\r\nMIGX 2.9.2\r\n==============\r\nsome smaller fixes\r\n\r\nMIGX 2.9.1\r\n==============\r\nadd hook-snippet setting\r\nsome handleRelated - update - functions\r\ndestroy updatewindow on close\r\n\r\nMIGX 2.9\r\n==============\r\n[migxLoopCollection] allow use of foreign database\r\nSottwell\'s improvements on migxresourcemediapath\r\nnew snippet: migxGetCollectionTree\r\naccess to foreign database from default processors\r\nimprovements on multiple formtabs\r\nmake inline-editing for MIGX - grid possible\r\noption to add MIGX-items directly without modal\r\nlistbox-cell-editor\r\nmovetotop,movetobottom - buttons for MIGX-grid\r\ncell-editing for MIgXdb - grids\r\noption to add MIGXdb-items directly without modal\r\n[getImageList] &inheritFrom - inherit MIGX-items from parents or other resources\r\nsome migxredactor - fixes \r\n\r\nMIGX 2.8.1\r\n==============\r\nlets disable the \'Add Item\' - button\r\nnew configs gridperpage and sortconfig\r\nwrapperTpl for getImageList and migxLoopCollection\r\n\r\nMIGX 2.8.0\r\n==============\r\nresolve tables on install\r\nrender cross, also when empty string\r\nreusable activaterelations - processors\r\n[migxLoopCollection] tpl_nN\r\n[#154] clean TV-value, if no MIGX-items \r\nadditional db-storage of formtabs and fields\r\nget menue working in MODX 2.3\r\nimprove description_is_code \r\n\r\n\r\nMIGX 2.6.8\r\n==============\r\nsome other small fixes\r\nrestrictive condition by processed MIGX-tags for formfields\r\nFilter-Button for Reset all filters to default-value\r\nextend date-filter\r\nmake cmp main caption translatable \r\nMigx::prepareJoins - optional rightjoin \r\n\r\nMIGX 2.6.7\r\n==============\r\nadd date - filter \r\nadd handlepositionselector - processor \r\nadd snippet exportmigx2db\r\n\r\nMIGX 2.6.6\r\n==============\r\nfixes only\r\n\r\nMIGX 2.6.5\r\n==============\r\nfixes only\r\n\r\nMIGX 2.6.4\r\n==============\r\n[redactor-field] get and use file-properties from a redactor-inputTV\r\nadd renderImageFromHtml - renderer\r\n\r\nMIGX 2.6.3\r\n==============\r\nconfigurable redactor-field with configs-configuration, make redactor work in MIGXdb - CMP\r\n\r\nMIGX 2.6.2\r\n==============\r\nfix issue with imported configs-field, if not an array \r\n\r\nMIGX 2.6.1\r\n==============\r\nMake Formfields translatable\r\n\r\nMIGX 2.6\r\n==============\r\n[getImageList] output inner arrays as json-string\r\nadded polish translation\r\n[getImageList] splits, build summaries\r\n make grid-columns translatable, let user add custom-lexicons from custom php-config-files \r\n\r\n\r\nMIGX 2.5.11\r\n==============\r\nadd simple MIGXdb - validation (only required for now)\r\nsome fixes\r\n\r\n\r\nMIGX 2.5.9\r\n==============\r\nlet us create new indexes, with altered field-def from schema \r\noptimize input-option-values-handling, see:http://forums.modx.com/thread/79757/sortable-editable-list-of-checkboxes?page=4#dis-post-483240\r\n\r\n\r\nMIGX 2.5.8\r\n\r\n==============\r\nAdded \'showScreenshot\' (big image in popup) \r\nAdded template-field for direct template-input for renderChunk\r\nAdded position - selector for new MIGX - items\r\nFix for not removed rte-editors when using formswitcher\r\nsend current store-params to iframe-window\r\n\r\n\r\nMIGX 2.5.6\r\n\r\n==============\r\n\r\nAdd support for the modmore.com Redactor editor \r\nsome work on multiuploader for MIGXdb\r\nmore eNotice - fixes\r\n\r\n\r\nMIGX 2.5.2\r\n\r\n==============\r\nread input-options into MIGX-TV\r\nrespect filter in default - export.php\r\nfix for empty value in TV - configs not loading renderers etc.\r\nfix changed processaction-param after export2csv \r\nstopEvent() by onClick - event\r\n\r\nMIGX 2.5.1\r\n\r\n==============\r\nfix bug with renderChunk - renderer\r\n\r\nMIGX 2.5\r\n\r\n==============\r\nget different rtes working - support for tinymce, ckeditor \r\nsome settings for MIGXfe\r\ncs - lexicons, \r\nsome eNotice - fixes\r\nfix with to big integers on TV-id (set phptype to string)\r\nlimit MIGX-record-count\r\n\r\n\r\nMIGX 2.4.2\r\n\r\n==============\r\ncolumnButtons for the migx - grid \r\nlittle form-layout-mods\r\nadded the option to have the first formtab outside the other tabs above of them.\r\n\r\nadded the option to use the TV-description-field as parsed code-areas in the formtabs, modx-tags are parsed there - \r\nsnippets, chunks, output-filters can be used there. All fields of the record can be used as placeholders.\r\n\r\nmigxupdate for MIGXfe\r\ndefault-values for MIGXdb-filters\r\nupdate co_id in iframe-window\r\nadd a searchbox to MIGX-Configurator\r\nread configs directly from exported configs-files from custom-packages - directory by using configname:packagename - configs\r\n\r\n\r\nMIGX 2.4.1\r\n\r\n==============\r\nsome new snippets:\r\ngetDayliMIGXrecord\r\nmigxgetrelations\r\n\r\nadded beta treecombo-filter-option for example to filter resources in MIGXdb by resourcetree\r\nadd window-title configuration, make window-caption dynamic (its possible to use placeholders now)\r\nhide tabs in form, when only one tab\r\nadded selectposition - renderer\r\n\r\n\r\nMIGX 2.4.0\r\n\r\n==============\r\nnew renderer - switchStatusOptions\r\nnew renderer - renderChunk\r\ngetImageList - added \'contains\' and \'snippet\' - where-filters\r\nadd duplicate-contextmenue to MIGXdb \r\nnew property for getImageList: &reverse\r\ngive TVs in each CMP-tab a unique id\r\nrefresh grid after closing iframe-window\r\nadded tpl_n{n} tplFirst tplLast tpl_n tpl_oneresult properties to getImageList\r\nexport jsonarray-fields as separate fields in csv-export\r\nalias, breadcrumb and ultimateparent for migxREsourceMediaPath\r\nAdded TV - description - field to configuration\r\n\r\n\r\nMIGX 2.3.1\r\n\r\n==============\r\nsome eNotice - error - fixes\r\nadd type - configuration to gridcolumns, now its possible to sort also numeric on the MIGX - grid: see https://github.com/Bruno17/MIGX/issues/41\r\n\r\nMIGX 2.3.0\r\n\r\n==============\r\nadd multifile - uploader, upload to MIGX - mediasource\r\nadd load from mediasource - button to MIGX\r\nadd migxResourcePath - snippet\r\nadd iframe - support - its now possible to create chunks with snippet-calls and show the result in an iframe-window. used by multifile-uploader.\r\n\r\n\r\nMIGX 2.2.3\r\n\r\n==============\r\nconfirmation before overriding schema-files\r\nsome additions for childresources-management by MIGXdb\r\nswitch between multiple forms - configurations\r\nadd renderDate - renderer , thanks to Jako\r\nadditional send all store-baseParams when opening the form-window. This way we can have different forms depending on filters for example.\r\nadd parent-property for dynamic filter-comboboxes\r\nadd getliste-where for default getlist-processor\r\nexport formtabs as clean json in editraw-mode\r\n\r\n\r\nMIGX 2.2.2\r\n\r\n==============\r\nadd migxLoopCollection-snippet\r\nmove prepareJoins into a migx-method\r\nconfirmation before remove db-record, getcombo did not use idfield \r\nallow empty prefix \r\nadd possibility to use tables without \'deleted\' - field and default-getlist-processor\r\nfix Call-time pass-by-reference errors\r\nget tinyMCE to work on richtext-TV-inputs in MIGXdb - CMPs \r\nfix prefix not sended to writeSchema\r\ngrid add cls \'main-wrapper\' to give it a bit padding, thanks to jako\r\n\r\n\r\nMIGX 2.2.0\r\n\r\n==============\r\n\r\nexport/import configuration-objects as json to/from files in custom-package-directories \r\nnew configs: getlist - defaultsort, joins, gridload_mode (by button, auto) \r\ngrid-smarty-template now can be also in custom-package-directories\r\nreworked handling of joined objects in default update-php \r\nadd connected_object_id baseparam to migx-grid\r\nadded snippet migxLoopCollection\r\n\r\n\r\nMIGX 2.1.1\r\n\r\n==============\r\n\r\n  fix for migx-snippet not working with multiple calls on one page\r\n  resource_id as script-property for getlist-processor when used with migx-snippet\r\n\r\nMIGX 2.1.0\r\n\r\n==============\r\n\r\n  add &sort to the getImageList - snippet\r\n  add new snippet \'migx\' to get items from db-tables, can use the same configurations and getList - processors as the MIGXdb - manager\r\n  make it possible to have config-files for grids and processors in another package-folder for easier packaging together custom - packages\r\n  more MIGXdb - configurations\r\n\r\n\r\nMIGX 2.0.1\r\n\r\n==============\r\n\r\n  more E_NOTICE - Error - fixes\r\n  Fix Missing Add - Item - Replacement - String \r\n\r\nMIGX 2.0.0\r\n\r\n==============\r\n\r\n- pl\r\n\r\n  fix for Revo 2.2.2\r\n  fix some E_NOTICE - errors\r\n\r\n- new in beta5\r\n\r\n  Configure multiple CMP - tabs\r\n  packagemanager ported to extjs - tab\r\n  added MIGX-setup/upgrade - tab\r\n  added configurable text and combo - filterboxes\r\n\r\n- new in beta3\r\n\r\n  This is a preview-version of MIGXdb\r\n  MIGXdb can now also be used as configurable CMP\r\n  MIGX - configurator for tabs, columns, MIGXdb-TV and MIGXdb-CMP\r\n  Package-manager, create and edit schemas and package-tables\r\n\r\n- new:\r\n  better compatibility with revo 2.2\r\n  working with mediasources\r\n  introduced MIGXdb\r\n\r\n\r\nMIGX 1.2.0\r\n==============\r\n- new:\r\n  merge scriptProperties to Placeholders \r\n  basic compatibility for modx 2.2 \r\n  autoinc-field: MIGX_id\r\n  autoResourceFolders - functionality, autoCreate directory for each resource\r\n  \r\n  \r\n- fixed:\r\n  url-TV support\r\n  context-based base_path issues\r\n  remove remaining []\r\n  remove Tiny-instances when switching form\r\n  enter on textarea closes window\r\n  fireResourceFormChange for drag,remove,duplicate \r\n\r\nMIGX 1.1.0\r\n==============\r\n- new:\r\n  &docidVarKey\r\n  &processTVs\r\n  \r\n- fixed:\r\n  context-filepath-issue\r\n\r\nMIGX 1.0.0\r\n==============\r\n- Initial release.\";s:14:\"package_action\";i:0;}','migx',NULL,3,0,5,'beta',0),
('pdotools-3.0.3-pl','2026-11-12 14:03:55','2026-11-12 14:03:55','2026-11-12 14:03:55',0,1,0,0,'pdotools-3.0.3-pl.transport.zip',NULL,'a:5:{s:9:\"changelog\";s:31165:\"Changelog for pdoTools.\n\n3.0.3-pl (01.09.2026)\n==============\n- [#302] [pdoPage] Fixed button ajaxMode, hiding the more button when there are no results, and restoring it in force mode.\n- [#305] [pdoMenu] Fixed notices on missing class_key and content for weblinks.\n- [#349] [pdoTools] Cast config offset to integer for PHP 8.\n- [#356] [Fenom] Enabled the array_merge modifier by default.\n- [#358] [pdoTools] Fixed missing semicolon after pdotools_cache_path option assignment.\n- [#377] [pdoPage] Mark AJAX requests as connector mode via MODX_CONNECTOR_INCLUDED.\n- [#392] [pdoPage] Snippet properties are available as placeholders in pagination templates.\n- Added GitHub Actions release workflow for 3.x transport packages.\n\n3.0.2-pl (11.04.2023)\n==============\n- Support for file snippets in the pdoPage class.\n- Security fix for the pdoPage snippet.\n\n3.0.1-pl (01.08.2022)\n==============\n- Fixed incorrect next and prev canonical URLs (#318).\n- Fixed bug in the Fenom parser (#331).\n- Fixed bug when clearing cache (#347).\n- Added aliases \"pdoTools\" and \"pdoFetch\" for the service container.\n\n3.0.0-pl (25.07.2022)\n==============\n- Fixed bug in the App::makeUrl function (#322).\n- Replaced the simple class name with FQN (#326).\n- Fixed incorrect functioning of the pdoNeighbors snippet (#327).\n- Changed $_SERVER[\'DOCUMENT_ROOT\'] to dirname function in the connector.php (#332).\n- Fixed bug with inaccessible property Fetch::config (#334).\n- Fixed bug with prepareTVs and processTVs parameters of the pdoTools snippets (#335).\n- Fixed fatal error in connector.php (#336).\n- Fixed a typo in the connector ($this on $modx) (338).\n- Fixed fatal error caused by loop (#341).\n- Fixed checking TV before adding to the query (#343).\n\n3.0.0-beta (06.12.2021)\n==============\n- Requires MODX 3.\n- Requires PHP 7.2+.\n- Refactored to use PSR-4 autoload.\n- pdoTools snippet logs are stored now in the corresponding placeholder (#316).\n- Added system setting \"pdotools_filter_path\".\n- Removed anchor links in skip/empty templates (#303).\n- Removed \"nestedChunkPrefix\" parameter.\n- Removed the system settings \"pdoTools.class\", \"pdotools_class_path\", \"pdoFetch.class\" and \"pdofetch_class_path\".\n- Removed the \"setOption\" Fenom modifier.\n- Removed the snippet parameters \"tplPath\" and \"elementsPath\".\n\n2.13.2-pl (02.09.2021)\n==============\n- Fixed some snippets.\n\n2.13.1-pl (01.09.2021)\n==============\n- Installed composer packages.\n\n2.13.0-pl (01.09.2021)\n==============\n- Some security fixes.\n- The \"setOption\" modifier is marked as deprecated.\n- The snippet parameters \"tplPath\" and \"elementsPath\" are marked as deprecated.\n- Added the ability for snippets to return an array of raw data (it is necessary when using the Fenom template engine).\n- The settings \"parser_class\" and \"parser_class_path\" will be registered in the core namespace.\n- Update the ajax connector.\n\n2.12.10 pl\n==============\n- [#308] [pdoPage] Fixed the type of snippet property \"field\"\n\n2.12.9 pl\n==============\n- [Fenom] Update to version 2.12.0\n\n2.12.8 pl\n==============\n- [pdoPage] Fix reflected XSS in generated meta links\n\n2.12.7 pl\n==============\n- Make pdoTools canonical url work with Babel #304\n\n2.12.6 pl\n==============\n- [pdoPage] Reverted back #287\n\n2.12.5 pl\n==============\n- [Fenom] Added caching dinamic properties to prevent speed degradation.\n\n2.12.4 pl\n==============\n- [#290] Improved running snippet via @FILE binding.\n- [#296] Fix adding quotes to numeric values.\n- [#297] Make cross context weblink url possible.\n- [#274] [Fenom] User, resource and context properties are now dinamic.\n- [#287] [pdoPage] Remove prev & next meta tags\n- [#294] [#298] Improved pdopage.js and updated minified js files\n\n2.12.3 pl\n==============\n- Fixed E_NOTICE introduced in #285.\n\n2.12.2 pl\n==============\n- Updated chunks for Bootstrap 4.\n\n2.12.1 pl\n==============\n- [pdoMenu] Reverted back #283 and fixed docs for &tplCategoryFolder.\n- [#284] [Fenom] Fixed properties of $_modx->context variable.\n- [#275] [Fenom] Added \"reset\" and \"end\" modifiers.\n\n2.12.0 pl\n==============\n- [Fenom] More security fixes from Sergey Shlokov.\n- [#278] [pdoPage] Fixed caching.\n- [pdoPage] Show internal log on &showLog=`1`.\n- [#283] [pdoMenu] Fixed use of &tplCategoryFolder according to docs.\n- [#281] [pdoTools] Fixed load of models from case sensitive paths.\n- [#277] [pdoCrumbs] Ability to specify &customParents.\n- [#265] [pdoFetch] Fixed return of \"Array\" on SQL errors.\n\n2.11.3 pl\n==============\n- Added French lexicon entries.\n\n2.11.2 pl\n==============\n- Fix detection of element names starting with a number.\n\n2.11.1 pl\n==============\n- Faster processing of static files.\n\n2.11.0 pl\n==============\n- [pdoFetch] Added \"setTotal\" option to enable calculating all rows (\"SQL_CALC_FOUND_ROWS\"), which will also result in the \"totalVar\" placeholder is being set.\n- [pdoFetch] Option \"setTotal\" disabled by default.\n- [pdoPage] Forces \"setTotal\" to provide pagination.\n\n2.10.6 pl\n==============\n- Improved German lexicons.\n\n2.10.5 pl\n==============\n- [pdoTools] Ability to return array from \"prepareSnippet\" for more performance.\n- [FenomX] Fixed method \"getStore\".\n\n2.10.4 pl\n==============\n- [Fenom] Do not output raw tags if there was a compile errors.\n- [#266] [pdoMenu] Fixed the setting of \"here\" and \"self\" classes.\n- [#261] [Fenom] Fixed unexpected behavior of the fenom tag \"ignore\".\n\n2.10.3 pl\n==============\n- Improved compatibility with PHP 7.2\n- [pdoFetch] Ability to use arrays in \"&sortby\".\n\n2.10.2 pl\n==============\n- [Fenom] Improved processing of caching snippets inside uncached.\n\n2.10.1 pl\n==============\n- [#256] [Fenom] Fixed bug with caching of scripts and styles.\n- [pdoPage] \"&setMeta\" now works when \"&cache=`1`\".\n- [Fenom] Improved regular expression to detect Fenom syntax.\n\n2.10.0 pl\n==============\n- [#259] [pdoFetch] Fixed error when passed pure SQL into \"having\" parameter.\n- [#258] [pdoPage] Canonical urls always must be \"full\".\n- [#245] [pdoMenu] Ability to use conditional tpls instead of regular \"tpl\".\n- [#121] [pdoMenu] Improved work of specified chunks with weblinks.\n\n2.9.3 pl\n==============\n- [#255] [Fenom] New system setting \"pdotools_fenom_save_on_errors\" to save code on compilation errors in the cache directory for later debugging.\n\n2.9.2 pl\n==============\n- [pdoParser] Proper traversal trough arrays fields of resources in fast tags.\n\n2.9.1 pl\n==============\n- [Fenom] Updated to version 2.11.8.\n\n2.9.0 pl\n==============\n- [pdoPage] Improved \"&pageLinkScheme\" logic.\n- [#249] A little improvement for resource modifier.\n- [#251] [pdoFetch] More compatibility with PHP 7.1.\n- [#253] [pdoPage] Fixing a missing pagination in Ajax mode.\n- [#254] [Fenom] Options of json modifiers must check version of PHP to proper work.\n\n2.8.6 pl\n==============\n- [pdoArchive] Ability to specify fields with regular dates in the \"&dateField\" parameter.\n- [Fenom] Added all options to json modifiers.\n\n2.8.5 pl\n==============\n- [#248] [pdoPage] Fixed E_WARNING with array values in GET parameters.\n\n2.8.4 pl\n==============\n- Ability to use file elements in core path outside base path.\n- Fixed bug with the caching of elements.\n\n2.8.3 pl\n==============\n- [Fenom] Fixed rare bug with the caching of scripts and styles that was registered via Fenom.\n- [pdoPage] Fixed the \"?page=1\" in the url when ajaxMode is enabled.\n- [pdoPage] Snippet will register \"canonical\" link if \"&setMeta\" is enabled.\n- [pdoPage] Fix processing of request with rawurldecode on some servers.\n- [pdoTools] Added passing of \"scriptProperties\" values into a \"&prepareSnippet\".\n\n2.8.2 pl\n==============\n- [pdoMenu] Fixed the checking of permissions for containers.\n- [pdoPage] Added the ability to run files as &element.\n- [pdoTools] The method runSnippet will return boolean false if snippet was not found.\n- [Fenom] Fixed the possible bugs of caching of scripts and styles.\n\n2.8.1 pl\n==============\n- [#244] Fixed possible duplicate of a container in the jquery.pdopage.js.\n- Added fallback class for the enable modParser.\n\n2.8.0 pl\n==============\n- Ability to use an arrays in the parameters of the snippets.\n- Replaced modX::toJSON and modX::fromJSON to native php functions.\n\n2.7.5 pl\n==============\n- Fenom is now managed via composer.\n- [Fenom] Modifier \"resource\" no longer checks fields of resources in their schema.\n- [Fenom] Modifier \"strrev\" now can work with arrays.\n- [Fenom] Improved modifier \"ismember\".\n\n2.7.4 pl\n==============\n- [#242] Added jquery.pdopage.js plugin and minified versions.\n- [#241] [Fenom] Improved the retrieving of TVs for a current resource.\n- [pdoFetch] Restored the checking of possible SQL injections in the &sortby with xPDO 2.5.1.\n\n2.7.3 pl\n==============\n- Improved compatibility with MODX 2.5.2.\n\n2.7.2 pl\n==============\n- [pdoFetch] Some security improvements.\n\n2.7.1 pl\n==============\n- Some security improvements in the connector.php.\n- Fixed bug with registering scripts in styles via Fenom introduced in version 2.7.0.\n\n2.7.0 pl\n==============\n- [Fenom] Updated to the version 2.11.4.\n- [Fenom] Fixed resource cache for scripts and styles registered by Fenom.\n- [Fenom] Added rand() and number_format() to an allowed PHP functions.\n- [Fenom] New output filter \"number\" (or \"number_format\").\n\n2.6.5 pl\n==============\n- Fixed undeclared variable (PHP 7.1)\n\n2.6.4 pl\n==============\n- Added escaping of a MODX tags that being processed in the &prepareSnippet.\n- [#239] Improved work of the &decodeJSON option.\n\n2.6.3 pl\n==============\n- Fixed possible E_NOTICE on line 305 pdofetch.class.php.\n- Fixed possible E_NOTICE when \"snippet\" and \"chunk\" Fenom modifiers was called.\n\n2.6.2 pl\n==============\n- Fixed possible E_NOTICE on line 1317 pdotools.class.php.\n\n2.6.1 pl\n==============\n- Improved compatibility with PHP 5.3.\n\n2.6.0 pl\n==============\n- [Fenom] The ability to extend Fenom via system event \"pdoToolsOnFenomInit\".\n\n2.5.6 pl\n==============\n- [pdoFetch] Ability to join TVs not only to the query main class.\n\n2.5.5 pl\n==============\n- Fixed parse of INLINE chunks with \"@\" symbols.\n\n2.5.4 pl\n==============\n- [#224] Added microMODX::cleanAlias().\n- [#226] [Fenom] Added \"declension\" modifier.\n\n2.5.3 pl\n==============\n- [#221] Fixed typo in month name.\n- [Fenom] Fixed path to compile dir.\n\n2.5.2 pl\n==============\n- [#220] Cache code of snippet with respect to property set.\n\n2.5.1 pl\n==============\n- Fixed cache of snippets in pdoTools::runSnippet().\n\n2.5.0 pl\n==============\n- Improved support of debugParser.\n- [#209] Improved loading of the models.\n- [Fenom] New modifiers: \"snippet\" and \"chunk\".\n- [Fenom] New elements provider: \"file\".\n- New method pdoTools::runSnippet().\n\n2.4.0 pl\n==============\n- Added snippet pdoArchive.\n- [pdoResources] Faster processing of additional snippet parameters to placeholders.\n- [#123] [pdoMenu] Fixed bug with &displayStart and unpublished root nodes.\n- [#207] [pdoMenu] Fixed &webLinkClass option.\n- [#193] [pdoNeighbors] Added parameter &wrapIfEmpty.\n- [#203] [Fenom] Added more PCRE modifiers.\n\n2.3.5 pl\n==============\n- [pdoFetch] Added escaping of columns names in query.\n\n2.3.4 pl\n==============\n- [#200] [pdoFetch] Fixed &sortbyTV with dot in name.\n\n2.3.3 pl\n==============\n- Added system plugin for \"autoload\" of main classes with respect to their paths in system settings.\n\n2.3.2 pl\n==============\n- [#196] [pdoPage] Added workaround to support ClientConfig tags in ajax mode.\n- [Fenom] Added general MODX output filters as Fenom modifiers.\n- [Fenom] Implemented autoload of modifiers from snippets.\n- [Fenom] Removed system setting \"pdotools_fenom_modifiers\".\n\n2.3.1 pl\n==============\n- [pdoSitemap] Lightning fast work chunks processing with &scheme=`uri`.\n- [Fenom] Improved check of syntax before processing.\n\n2.3.0 pl\n==============\n- Removed shortcuts from system core.\n- PSR-2.\n- [Fenom] Added default modifiers: \"url\" and \"lexicon\".\n- [pdoCrumbs] Changed default chunks to ul -> li.\n- [#190] [pdoSitemap] Changed date format to ISO 8601.\n\n2.2.8 pl\n==============\n- [Fenom] Use modResource::getContent() method to get content of current resource in {$_modx->resource}.\n\n2.2.7 pl\n==============\n- [pdoPage] Ability to get access to a javascript configs from 3rd party scripts.\n\n2.2.6 pl\n==============\n- [#184] [Fenom] Updated to version 2.8.2.\n\n2.2.5 pl\n==============\n- [#182] [pdoTitle] Added passing a parameters into nested pdoCrumbs.\n- [pdoSitemap] Added processing of MODX tags if needed.\n- Added method pdoTools::makeUrl().\n- [#181] New url schema type - \"uri\".\n\n2.2.4 pl\n==============\n- [Fenom] Fixed speed issues when MODX snippets are run as Fenom modifiers.\n- [pdoUsers] Fixed overwrite modUser.id by modUserProfile.id.\n\n2.2.3 pl\n==============\n- [pdoPage] Fixed processing of uncached conditions in chunks when ajax mode is enabled.\n\n2.2.2 pl\n==============\n- [pdoPage] Added new parameter &pageLinkScheme.\n\n2.2.1 pl\n==============\n- [#155] [pdoPage] Added new parameter &ajaxHistory.\n- [pdoPage] Added connector for requests in ajax mode.\n\n2.2.0 pl\n==============\n- [#175] [pdoFetch] Ability to specify sequence of table joins.\n- [#174] [Fenom] Ability to add Fenom modifiers into pdoParser.\n\n2.1.21 pl\n==============\n- [#175] [pdoFetch] Ability to specify sequence of table joins.\n- [#176] [pdoUsers] Fixed &toPlaceholders with &returnIds.\n\n2.1.20 pl\n==============\n- [pdoSitemap] Fixed default &cacheKey.\n\n2.1.19 pl\n==============\n- [Fenom] Disabled $options in cacheManager::set() due to security reasons.\n\n2.1.18 pl\n==============\n- [Fenom] Fixed ability to access to the modX object from {$_modx} variable.\n- [Fenom] Improved method {$_modx->runProcessor()}.\n\n2.1.17 pl\n==============\n- [Fenom] Added {$_modx->getResource($id, $options)}.\n- [Fenom] Added {$_modx->getResources($where, $options)}.\n- [Fenom] Improved support of debugParser.\n\n2.1.16 pl\n==============\n- [Fenom] Added {$_modx->isMember($groups, $matchAll)}.\n- [Fenom] Added {$_modx->getPlaceholders()}.\n\n2.1.15 pl\n==============\n- [pdoPage] Added parameter &strictMode.\n\n2.1.14 pl\n==============\n- [pdoSitemap] Added options for cache snippets results.\n- [pdoSitemap] Cache enabled by default.\n\n2.1.13 pl\n==============\n- [#163] Fixed ignoring of &idx in pdoResources and pdoUsers.\n\n2.1.12 pl\n==============\n- [pdoPage] [#161] Fixed support of arrays in hash when &ajaxMode is enabled.\n\n2.1.11 pl\n==============\n- [#150] [Fenom] Fixed processing of TVs values in a {$_modx->resource}.\n- [#147] [pdoSitemap] Fixed possible duplicates in sitemap.\n- [pdoPage] Support of arrays in hash when &ajaxMode is enabled.\n\n2.1.10 pl\n==============\n- [#157] [Fenom] Fixed pre-processing of Fenom tags in extending templates and chunks.\n- [#145] [pdoPage] Rolled back #81 due to issues with complicate forms.\n\n2.1.9 pl\n==============\n- [#144] [pdoParser] Leave unprocessed FastField tags so other components could parse them.\n- [pdoFetch] Updated syntax for \"SET SQL_BIG_SELECTS = 1\".\n\n2.1.8 pl\n==============\n- [Fenom] Ability to use id of chunks and templates in {include} and {extends}.\n- [Fenom] Added support of debugParser.\n- [Fenom] Added {$_modx->getChildIds()} and {$_modx->getParentIds()}.\n\n2.1.7 pl\n==============\n- Fixed work with integer values from system setting \"link_tag_scheme\".\n\n2.1.6 pl\n==============\n- [Fenom] Updated to version 2.8.0.\n- [Fenom] Improved check of syntax to process content of chunks.\n- [pdoParser] Fixed E_WARNING on line 50 introduced in previous version.\n\n2.1.5 pl\n==============\n- [Fenom] Fixed register of scripts and styles by cached snippets.\n\n2.1.4 pl\n==============\n- [Fenom] Fixed TVs in {$_modx->resource}\n- [Fenom] Added new method {$_modx->getInfo()}\n\n2.1.3 pl\n==============\n- Improved work of system setting \"pdotools_fenom_php\".\n\n2.1.2 pl\n==============\n- [Fenom] Replaced {$_modx->placeholders} to functions.\n\n2.1.1 pl\n==============\n- pdoParser enabled by default.\n- [Fenom] Fixed return content in {$_modx->getChunk}.\n- [Fenom] Added cache for snippets called through {$_modx->runSnippet}.\n- [pdoTools] Added processing of property sets for chunks.\n- [pdoResources] Set additionalPlaceholders in &tplWrapper\n\n2.1.0 pl\n==============\n- [Fenom] Updated Fenom to version 2.7.1.\n- [Fenom] Added safe system variable {$_modx}.\n- [Fenom] Added MODX template provider for chunks and templates.\n\n2.0.5 pl\n==============\n- [#132] Fixed possible E_WARNING on empty chunks.\n- [#122] Ability to use 3rd party pdoPage and pdoMenu classes.\n- [#118] [pdoPage] Fixed parameter &offset.\n- [pdoPage] Fixed default CSS classes in \"empty\" chunks.\n\n2.0.4 pl\n==============\n- Fixed processing of \"pdotools_fenom_cache\" system setting.\n\n2.0.3 pl\n==============\n- [#125] [pdoTitle] Fixed parameter &id.\n\n2.0.2 pl\n==============\n- Improved processing of @FILE binding.\n\n2.0.1 pl\n==============\n- Fixed possible E_WARNING on line 319 and 349 of pdoTools class.\n- Disabled system option \"pdotools_fenom_modx\" by default due to security issues.\n\n2.0.0 pl\n==============\n- New system settings to control the Fenom.\n- Ability to enable caching of Fenom compiled chunks.\n- Improved handling of parameter \"cache_key\".\n- [pdoMenu] Improved work when &cache is enabled.\n\n2.0.0 rc2\n==============\n- Compiled Fenom templates cached to RAM instead of HDD.\n- Removed plugin pdoTools.\n\n2.0.0 rc1\n==============\n- Added Fenom template engine.\n- Fenom enabled by default.\n- pdoParser uses Fenom to process pages.\n\n1.11.2 pl\n==============\n- [#116] [pdoTitle] Disabled &register_js by default.\n\n1.11.1 pl\n==============\n- [pdoSitemap] Fixed default url scheme after last update.\n\n1.11.0 pl1\n==============\n- [pdoTitle] Added new snippet.\n- [pdoPage] Added support of snippet pdoTitle when &ajaxMode is enabled.\n- [pdoPage] Prevent overwriting of scripts and styles of nested &element by default parameters.\n- [pdoPage] Added triggering javascript event \"pdopage_load\".\n\n1.10.2 pl1\n==============\n- [#112] Parameter &scheme was set to system default in all snippets.\n- [#111] [pdoPage] Added ability to set \"prev\" & \"next\" meta tags.\n- [#107] [pdoNeighbors] Added ability to specify &parents for work.\n- [#106] [pdoMenu] Fixed \"hereClass\" and \"selfClass\" enabled &useWeblinkUrl parameter.\n- [#104] [pdoMenu] Snippet now using \"pagetitle\" for link titles if \"titleOfLinks\" is empty.\n\n1.10.1 pl\n==============\n- [#108] [pdoFetch] Fixed E_ERROR when using &sortbyTV.\n- [pdoFetch] Added new parameter &sortbyTVType.\n- [pdoFetch] If &sortdirTV is not set it will be equal to &sortdir.\n\n1.10.0 pl\n==============\n- [pdoMenu] Returned and fixed parameter &showDeleted.\n- [pdoPage] Improved default javascript.\n- [pdoPage] Fixed overwriting &frontend_js and &frontend_css parameters when &ajax is disabled.\n- [pdoFetch] Ability to specify functions in select fields.\n- [pdoTools] Ability to use compound quick placeholders.\n\n1.10.0 beta4\n==============\n- [pdoPage] Ajax pagination out from the box.\n- [pdoFetch] Improved log of getCollection.\n- [pdoTools] Added tplOperator \"contains\".\n\n1.9.7 pl\n==============\n- [#99] [pdoFetch] Fixed returning of primary key in \"ids\" mode.\n- [#97] [pdoTools] Fixed default tplPath for @FILE chunks.\n- [#85] [pdoFetch] Added function getChildIds().\n- [pdoFetch] Disabled \"total\" placeholder for &return=`ids`.\n\n1.9.6 pl2\n==============\n- [pdoFetch] Fixed exclusion of field \"id\" in custom classes.\n- [pdoMenu] Improved parameter &countChildren.\n- [#100] [pdoMenu] Removed parameter &showDeleted because it not working.\n\n1.9.6 rc\n==============\n- Added execution of SQL_BIG_SELECTS = 1 before query.\n- [pdoPage] Added parameter &ajax for supporting of ajax requests.\n\n1.9.5 pl1\n==============\n- Rolled back #72 due to issues in pdoMenu.\n\n1.9.5 pl\n==============\n- Added ability to return JSON or serialized string from pdoFetch::run().\n- [#83] [pdoMenu] Added level placeholder to outer templates.\n- [#82] [pdoFetch] Added support for complex &where parameter.\n- [#81] [pdoPage] Improved handling of arrays in url.\n- [#77] Fixed making of url for modWebLink to another context.\n- [#72] [pdoTools] Fixed order for children of excluded parents in buildTree.\n- [#60] [pdoMenu] Fixed parameter &tplCategoryFolder.\n- [#57] [pdoMenu] Improved placeholder [[+children]].\n- [#57] [pdoMenu] Added parameter &countChildren.\n\n1.9.4 pl1\n==============\n- [#78] [pdoNeighbors] Added parameter &loop=`1` for looping links.\n- [pdoSitemap] Fixed possible E_FATAL php-apc.\n\n1.9.3 pl1\n==============\n- [pdoTools] Ability to specify value for empty quick placeholders.\n- [pdoTools] Ability to use INLINE snippets and filters.\n- [pdoFetch] Improved loading of 3rd party models.\n- [pdoPage] Fixed E_WARNING when &limit=`0`.\n\n1.9.2 pl2\n==============\n- [#56] [pdoParser] Fixed wrong links processing.\n- [#53] Improved loading of classes.\n- [pdoField] Rolled back to original logic of \"top\" and \"topLevel\" parameters due to issues.\n- [pdoField] Added parameter \"ultimate\" to emulate logic of UltimateParent.\n\n1.9.1 pl6\n==============\n- [pdoFetch] Adding alias of main class of query to \"sortby\" if no alias exists.\n- [pdoFetch] Improved selecting of all fields of class with specified alias.\n- [pdoField] Parameter \"topLevel\" works exactly as in UltimateParent.\n- [pdoField] Parameter \"top\" without \"topLevel\" returns parent on \"top\" level.\n\n1.9.1 pl\n==============\n- [#47] [pdoMenu] Fixed processing &tplOuter when output is empty.\n- [#46] [pdoParser] Fixed processing of TVs with dots in name.\n- [#44] [pdoMenu] Improved handling of Wayfinder parameters \"includeDocs\" and \"excludeDocs\".\n- [#37] [pdoField] get the default, only if the field was empty.\n- [#34] Fixed processing of \"modSymLink\" documents.\n- [#32] Improved cache methods.\n- [#26] Replaced FIND_IN_SET() to FIELD().\n- [pdoFetch] Ability to work with objects, that has multiple primary keys.\n- [pdoPage] New parameter &cacheAnonymous.\n- [pdoMenu] New parameter &cacheAnonymous.\n- Added aliases for sort query in order of specified &resources: \"ids\" or \"resources\".\n- Removed unnecessary query in pdoFetch::getCollection().\n- Improved pdoFetch::getCollection().\n- Renamed pdoFetch::getObject() to getArray(). Now it uses getCollection for retrieve results.\n- pdoTools::setCache() now returns cacheKey.\n- pdoFetch::getObject() is now alias of pdoFetch::getArray().\n\n1.9.0 pl2\n==============\n- [pdoMenu] Chunks of parents and categories are now depends on the descendants and ignores parameter isfolder.\n- [pdoNeighbors] Speed improvements.\n- [#27] Ability to specify custom pdoFetch and pdoTools classes through FQN system settings.\n- [pdoParser] Handles TVs in resource tags.\n- [pdoParser] Handles output filters.\n- [pdoFetch] Improved method \"addTVFilters\", that used by \"tvFilters\" parameter in pdoResources.\n- [pdoSitemap] Pass the whole row so we can use more columns.\n\n1.9.0 rc\n==============\n- Improved method pdoTools::getChunk().\n- Improved method pdoTools::parseChunk().\n- Improved method pdoTools::fastProcess().\n- Improved method pdoTools::makePlaceholders().\n- Accelerated snippet pdoNeighbors.\n- Fixed bug in pdoUsers when usersgroups was specified by names.\n- getObject and getCollection() runs in separate instance.\n- Added pdoParser with FastField tags.\n- [pdoPage] Changed default value of parameter \"totalVar\" due to issues.\n- [#24] Fixed prepareTVs and empty tvPrefix.\n- [#23] [pdoResources] Ability to return ids to placeholder.\n- Fixed warning when getObject returns false.\n- Fixed placeholders prefix in recursive makePlaceholders.\n\n1.8.9 pl4\n==============\n- Added german lexicon.\n- [#20] Ability to specify not JSON string in &where=``.\n- [pdoPage] Added parameter \"pageCountVar\" for specifying name of variable with number of pages.\n- [pdoPage] Support Bootstrap3.\n- [pdoField] Ability to specify class for fetching field.\n- Improved joining of tables in pdoFetch.\n- Added preparing and processing TVs in getObject and getCollection methods.\n- Improved load of 3rd party models.\n\n1.8.8 pl2\n==============\n- Rewrited cache of snippets \"pdoMenu\" and \"pdoPage\".\n- New methods pdoTools::getCache() and pdoTools::setCache().\n- [pdoMenu] Fixed parameter \"tplParentRowActive\".\n- [#18] Fixed \"idx\" in pdoTools::defineChunk().\n\n1.8.7 pl\n==============\n- Added boolean parameter \"decodeJSON\" to specify whether or not decode JSON in results rows.\n- Removed default \"sortby\" and \"sortdir\" from class pdoFetch for better work of getCollection() method.\n\n1.8.6 pl2\n==============\n- Fixed possibly E_NOTICE when site has no extension packages installed.\n- [#17] [pdoMenu] Added placeholder [[+wf.menutitle]].\n- [#16] [pdoMenu] Disabled status verification of specified parents.\n- [#13] [pdoMenu] Improved work with root of multiple contexts.\n- [pdoMenu] Fixed bug when specified parent has only the one child.\n- [pdoResources] Added parameter \"&useWeblink\" and placeholder \"[[+link]]\". It is disabled by default.\n\n1.8.5 pl\n==============\n- [#15] [pdoPage] Improved generation of links to pages.\n- [pdoMenu] Improved processing of classes \"modSymlink\" and \"modWeblink\".\n- [pdoBreadcrumbs] Improved processing of classes \"modSymlink\" and \"modWeblink\". Added parameter \"&useWeblink\".\n- [pdoNeighbors] Added parameter \"&useWeblink\" and placeholder \"[[+link]]\".\n- [pdoSitemap] Added parameter \"&useWeblink\" and proper processing of classes \"modSymlink\" and \"modWeblink\".\n\n1.8.4 pl\n==============\n- [pdoCrumbs] Added ability to specify the crumbs root (defaulting to site_start)\n- [pdoCrumbs] Added ability to specify class_key (ie. to generate crumbs only for derivative classes)\n- More accuracy when try to decode json in fetch results.\n\n1.8.3 pl3\n==============\n- Improved preparation of template variables.\n- Improved transfer of additional parameters from snippet to results.\n- [pdoMenu] Added lexicon entries for parameters.\n- [pdoMenu] Allow to specify \"limit\" and \"offset\".\n- [#12] Added parameter \"toPlaceholder\".\n- Increased accuracy of timings log.\n\n1.8.1 pl2\n==============\n- Accelerated method pdoTools::getChunk().\n- Added snippet pdoMenu.\n- Added support for tags [^qt^] and [^q^].\n\n1.8.0 pl\n==============\n- [#10] [pdoPage] Added placeholder \"page\".\n- [#9] [pdoPage] Added placeholder \"pageCount\".\n- [#8] Improved support of big numbers when sorting by TVs.\n- Fixed work of pdoPage when it called multiple times on page.\n- Fixed mistype in pdoFetch::getCollection().\n\n1.8.0 rc5\n==============\n- Added processing of JSON fields. For example, you can use [[+extended.keyname]] in chunks of pdoUsers.\n- pdoTools was removed from system extension packages, but you can still use \"$modx->getService(\'pdoFetch\');\".\n- Fixed getting chunk without any parameters.\n- Added snippet pdoPage.\n\n1.8.0 beta1\n==============\n- Improved handling of \"default_text\" parameter in TVs.\n- Fixed and improved method pdoTools::buildTree().\n- The logic of build the conditions of the query moved into new method pdoFetch::additionalConditions().\n- Improved method pdoFetch::addSelects().\n- Improved method pdoFetch::addSort().\n- Improved some snippets in accordance to new abilities of pdoFetch: pdoResources, pdoNeighbors and pdoSitemap.\n\n1.7.4 pl\n==============\n- [#7] [pdoSitemap] Fixed hidden parameters \"&sortBy\" and \"&sortDir\" that used for compatibility with GoogleSiteMap.\n\n1.7.3 pl1\n==============\n- [pdoCrumbs] Fixed possible E_NOTICE on line 157.\n- [pdoCrumbs] Fixed generation of link to site start in relative mode.\n- [#6] pdoCrumbs and pdoNeighbors are now uses \"menutitle\" by default. If it is empty, will be used \"pagetitle\".\n\n1.7.2 pl1\n==============\n- [pdoField] Added new parameters: \"default=``\" and \"&field=``\".\n- [pdoField] Improved logic of \"&top=``\" and \"&topLevel=``\".\n- Added 2 new methods: pdoFetch::getObject() and pdoFetch::getCollection().\n- Ability to send arrays into common config parameters. JSON is still supported.\n- Improved select of default values in TVs.\n\n1.7.1 pl\n==============\n- [pdoCrumbs] Fixed work with \"modSymLink\" and \"modWebLink\" resources.\n\n1.7.0 pl1\n==============\n- New snippet pdoCrumbs.\n- New snippet pdoField.\n- New snippet pdoSitemap.\n- New snippet pdoNeighbors.\n- Ability to specify snippet for preparation of fetched rows by parameter \"&prepareSnippet=``\".\n- Added method pdoTools::checkPermissions() for checking user privileges to view the results.\n- Added @TEMPLATE binding. You can use name or id of any template. If empty - will use template of each row.\n- [pdoResources] Improved parameter \"&context\".\n- [pdoResources] Script properties are now passed to chunks. You can send any placeholders to it.\n\n1.6.0 pl1\n==============\n- Fixed compatibility issues in PHP < 5.3.\n\n1.6.0 pl\n==============\n- Added parameter \"&loadModels\" for comma-separated list of 3rd party components that needed for query.\n- Added parameters \"&prepareTVs\" and \"&processTVs\".\n- Added parameters \"&tvFilters\", \"&tvFiltersAndDelimiter\" and \"&tvFiltersAndDelimiter\".\n- Added support of parameters \"&sortbyTV\" and \"&sortdirTV\" for compatibility with getResources.\n- Added ability to use @INLINE and @FILE bindings in all template parameters.\n- Removed method pdoTools::getPlaceholders.\n\n1.5.0 pl2\n==============\n- Fixed sort of decimals in TVs.\n\n1.5.0 pl1\n==============\n- Added processing of simple [[~id]] placeholders in fastMode.\n- Added support of default value for TVs.\n- Improved sort by TVs of types \"number\" and \"date\".\n\n1.5.0 rc\n==============\n- [pdoUsers] Added new snippet \"pdoUsers\".\n- [pdoResources] Fixed \"toSeparatePlaceholders\".\n- [pdoResources] Parameter \"parents\" now supports dash prefix for excluding resources from query by parent.\n- [pdoResources] Fixed issue when snippet runs multiple times at one page.\n\n1.4.1 pl1\n==============\n- Improved \"context\" processing.\n- Fixed \"idx\" when multiple snippets called at one page.\n- Fixed default sortby when joined tables exists.\n\n1.4.1 beta3\n==============\n- Added parameters \"tplCondition\", \"tplOperator\" and \"conditionalTpls\".\n- Added parameter \"select\" for specifying needed columns of selected tables. Can be a JSON string with array.\n- Added parameter \"toSeparatePlaceholders\".\n- Improved \"pdoResources\" snippet.\n\n1.4.0 beta1\n==============\n- Ability to specify JSON string in \"sortby\", for example \"&sortby=`{\"pagetitle\":\"asc\",\"createdon\":\"desc\"}`\"\n- Added automatic replacement of tvs in \"where\" and \"having\" parameters.\n- Added automatic replacement of tvs in \"sortby\" parameter.\n- Removed example snippet\n- Added snippet \"pdoResources\", that could replace \"getResources\".\n- Added method pdoTools::defineChunk() for chunk of given idx.\n- Added \"memory usage\" in log.\n\n1.3.0\n==============\n- Improved placeholders processing when fastMode is enabled.\n- Added support of \"having\" conditions.\n\n1.2.1\n==============\n- Fixed not working \"includeTVs\" when \"leftJoin\" is empty.\n\n1.2.0\n==============\n- Native render of quick placeholders, such as \"<!--pdotools_introtext <blockquote>[[+introtext]]</blockquote>-->\".\n- Added joining of TVs in pdoFetch. Use parameter \"includeTVs\" with comma-separated list of template variables.\n- Added method pdoFetch::setConfig() for proper setting options when you run multiple pdoTools snippets at the one page.\n- Method pdoTools::makeArray is now recursive, for processing a multidimensional arrays of values.\n\n1.1.0\n==============\n- Improved getChunk function.\n\n1.0.1\n==============\n- Fixed setting total in \"chunks\" mode.\n- Improved displaying \"where\" condition in log.\n\n1.0.0\n==============\n- Initial release.\n\";s:7:\"license\";s:1112:\" The MIT License (MIT)\n\nCopyright © 2021 MODX RSC (Russian Speaking Community)\n\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:\n\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.\n\nTHE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\n\";s:6:\"readme\";s:646:\"--------------------\npdoTools\n--------------------\nAuthor: Vasiliy Naumkin <bezumkin@yandex.ru>\n--------------------\n\nSmall library for creating fast snippets for MODX Revolution that works through PDO.\n\nRequired by Tickets and miniShop2.\n\nMain features\n- Builds queries with xPDO.\n- Retrieve results with PDO.\n- Improved pdoTools::getChunk() function, that processing placeholders faster, than original modX::getChunk().\n\npdoTools snippets will work so faster, than more fields you will retrieve from database at one query.\n\n--------------------\nFeel free to suggest ideas/improvements/bugs on GitHub:\nhttp://github.com/modx-pro/pdoTools/issues\n\";s:8:\"requires\";a:2:{s:3:\"php\";s:7:\">=7.2.0\";s:4:\"modx\";s:12:\">=3.0.0-beta\";}s:14:\"package_action\";i:0;}','pdotools',NULL,3,0,3,'pl',0);
/*!40000 ALTER TABLE `modx_transport_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_transport_providers`
--

DROP TABLE IF EXISTS `modx_transport_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_transport_providers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `service_url` tinytext DEFAULT NULL,
  `username` varchar(191) NOT NULL DEFAULT '',
  `api_key` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `priority` tinyint(4) NOT NULL DEFAULT 10,
  `properties` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `api_key` (`api_key`),
  KEY `username` (`username`),
  KEY `active` (`active`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_transport_providers`
--

LOCK TABLES `modx_transport_providers` WRITE;
/*!40000 ALTER TABLE `modx_transport_providers` DISABLE KEYS */;
INSERT INTO `modx_transport_providers` VALUES
(1,'modx.com','The official MODX transport provider for 3rd party components.','https://rest.modx.com/extras/','','','2026-11-12 14:02:27',NULL,1,10,'');
/*!40000 ALTER TABLE `modx_transport_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_user_attributes`
--

DROP TABLE IF EXISTS `modx_user_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_user_attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) unsigned NOT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `blockeduntil` int(11) NOT NULL DEFAULT 0,
  `blockedafter` int(11) NOT NULL DEFAULT 0,
  `logincount` int(11) NOT NULL DEFAULT 0,
  `lastlogin` int(11) NOT NULL DEFAULT 0,
  `thislogin` int(11) NOT NULL DEFAULT 0,
  `failedlogincount` int(10) NOT NULL DEFAULT 0,
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT 0,
  `gender` tinyint(1) NOT NULL DEFAULT 0,
  `address` text NOT NULL,
  `country` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `website` varchar(255) NOT NULL DEFAULT '',
  `extended` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `internalKey` (`internalKey`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_user_attributes`
--

LOCK TABLES `modx_user_attributes` WRITE;
/*!40000 ALTER TABLE `modx_user_attributes` DISABLE KEYS */;
INSERT INTO `modx_user_attributes` VALUES
(1,1,'Default Admin User','office@improvision.com.ua','','',0,0,0,4,1794494552,1794494583,0,'',0,0,'','','','','','','','','',NULL);
/*!40000 ALTER TABLE `modx_user_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_user_group_roles`
--

DROP TABLE IF EXISTS `modx_user_group_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_user_group_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `authority` int(10) unsigned NOT NULL DEFAULT 9999,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `authority` (`authority`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_user_group_roles`
--

LOCK TABLES `modx_user_group_roles` WRITE;
/*!40000 ALTER TABLE `modx_user_group_roles` DISABLE KEYS */;
INSERT INTO `modx_user_group_roles` VALUES
(1,'Member',NULL,9999),
(2,'Super User',NULL,0);
/*!40000 ALTER TABLE `modx_user_group_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_user_group_settings`
--

DROP TABLE IF EXISTS `modx_user_group_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_user_group_settings` (
  `group` int(10) unsigned NOT NULL DEFAULT 0,
  `key` varchar(50) NOT NULL,
  `value` text DEFAULT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`group`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_user_group_settings`
--

LOCK TABLES `modx_user_group_settings` WRITE;
/*!40000 ALTER TABLE `modx_user_group_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_user_group_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_user_messages`
--

DROP TABLE IF EXISTS `modx_user_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_user_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int(10) unsigned NOT NULL DEFAULT 0,
  `recipient` int(10) unsigned NOT NULL DEFAULT 0,
  `private` tinyint(4) NOT NULL DEFAULT 0,
  `date_sent` datetime DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_user_messages`
--

LOCK TABLES `modx_user_messages` WRITE;
/*!40000 ALTER TABLE `modx_user_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_user_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_user_settings`
--

DROP TABLE IF EXISTS `modx_user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_user_settings` (
  `user` int(11) unsigned NOT NULL DEFAULT 0,
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text DEFAULT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`user`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_user_settings`
--

LOCK TABLES `modx_user_settings` WRITE;
/*!40000 ALTER TABLE `modx_user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_users`
--

DROP TABLE IF EXISTS `modx_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `cachepwd` varchar(255) NOT NULL DEFAULT '',
  `class_key` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modUser',
  `active` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `remote_key` varchar(191) DEFAULT NULL,
  `remote_data` text DEFAULT NULL,
  `hash_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\Hashing\\modNative',
  `salt` varchar(100) NOT NULL DEFAULT '',
  `primary_group` int(10) unsigned NOT NULL DEFAULT 0,
  `session_stale` text DEFAULT NULL,
  `sudo` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `createdon` int(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `class_key` (`class_key`),
  KEY `remote_key` (`remote_key`),
  KEY `primary_group` (`primary_group`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_users`
--

LOCK TABLES `modx_users` WRITE;
/*!40000 ALTER TABLE `modx_users` DISABLE KEYS */;
INSERT INTO `modx_users` VALUES
(1,'admin','$2y$10$yYufKAkRXQOPR6s5rXFrY.gxRY/hoxrvDfnKxaPg4twi8CY2nmcfW','','MODX\\Revolution\\modUser',1,NULL,NULL,'MODX\\Revolution\\Hashing\\modNative','46eb11dadd6c0bd06422294b6098d3eb',1,NULL,1,1794492167);
/*!40000 ALTER TABLE `modx_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_workspaces`
--

DROP TABLE IF EXISTS `modx_workspaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_workspaces` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL DEFAULT '',
  `path` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `attributes` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`),
  KEY `name` (`name`),
  KEY `active` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_workspaces`
--

LOCK TABLES `modx_workspaces` WRITE;
/*!40000 ALTER TABLE `modx_workspaces` DISABLE KEYS */;
INSERT INTO `modx_workspaces` VALUES
(1,'Default MODX workspace','{core_path}','2026-11-12 14:02:46',1,NULL);
/*!40000 ALTER TABLE `modx_workspaces` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
