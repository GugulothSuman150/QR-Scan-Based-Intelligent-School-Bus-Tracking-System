-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 30, 2023 at 07:05 PM
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
-- Database: `qrcodescanproject`
--
CREATE DATABASE IF NOT EXISTS `qrcodescanproject` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `qrcodescanproject`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add child models', 7, 'add_childmodels'),
(26, 'Can change child models', 7, 'change_childmodels'),
(27, 'Can delete child models', 7, 'delete_childmodels'),
(28, 'Can view child models', 7, 'view_childmodels'),
(29, 'Can add delay model', 8, 'add_delaymodel'),
(30, 'Can change delay model', 8, 'change_delaymodel'),
(31, 'Can delete delay model', 8, 'delete_delaymodel'),
(32, 'Can view delay model', 8, 'view_delaymodel'),
(33, 'Can add qr models', 9, 'add_qrmodels'),
(34, 'Can change qr models', 9, 'change_qrmodels'),
(35, 'Can delete qr models', 9, 'delete_qrmodels'),
(36, 'Can view qr models', 9, 'view_qrmodels'),
(37, 'Can add user feedback model', 10, 'add_userfeedbackmodel'),
(38, 'Can change user feedback model', 10, 'change_userfeedbackmodel'),
(39, 'Can delete user feedback model', 10, 'delete_userfeedbackmodel'),
(40, 'Can view user feedback model', 10, 'view_userfeedbackmodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bus_delay_details`
--

DROP TABLE IF EXISTS `bus_delay_details`;
CREATE TABLE IF NOT EXISTS `bus_delay_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `delay_status` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_delay_details`
--

INSERT INTO `bus_delay_details` (`id`, `delay_status`) VALUES
(1, 'today the bus will be delayed for 15 mins coz of traffic');

-- --------------------------------------------------------

--
-- Table structure for table `childrens_data`
--

DROP TABLE IF EXISTS `childrens_data`;
CREATE TABLE IF NOT EXISTS `childrens_data` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `children_rollnum` varchar(50) DEFAULT NULL,
  `children_name` varchar(50) NOT NULL,
  `children_mothername` varchar(50) NOT NULL,
  `children_fathername` varchar(50) NOT NULL,
  `children_contact` varchar(50) DEFAULT NULL,
  `children_email` varchar(254) NOT NULL,
  `children_password` varchar(50) DEFAULT NULL,
  `children_address` longtext NOT NULL,
  `children_class` varchar(50) NOT NULL,
  `children_image` varchar(100) DEFAULT NULL,
  `children_qrcode` varchar(100) DEFAULT NULL,
  `children_status1` varchar(50) NOT NULL,
  `children_status2` varchar(50) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `childrens_data`
--

INSERT INTO `childrens_data` (`c_id`, `children_rollnum`, `children_name`, `children_mothername`, `children_fathername`, `children_contact`, `children_email`, `children_password`, `children_address`, `children_class`, `children_image`, `children_qrcode`, `children_status1`, `children_status2`) VALUES
(1, '100', 'John Marshal', 'Hella', 'Mark Selby', '9876543210', 'john@gmail.com', '424983', 'hyderabad', '3-A', 'media/face3.jpg', 'media/image8153.png', 'pending', 'pending'),
(4, '101', 'Steve', 'Shaila', 'Sam', '8789687895', 'sam@gmail.com', '841265', 'hyderabad', '2-B', 'media/face8_R3rf6j3.jpg', 'media/image4.png', 'Dropped', 'School'),
(5, '104', 'Harry', 'Eli', 'Mark', '785878587', 'eli@gmail.com', '631845', 'hyderabad', '2-A', 'media/face21.jpg', 'media/student_5.png', 'Dropped', 'School');

-- --------------------------------------------------------

--
-- Table structure for table `conductorapp_qrmodels`
--

DROP TABLE IF EXISTS `conductorapp_qrmodels`;
CREATE TABLE IF NOT EXISTS `conductorapp_qrmodels` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `qrcode` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conductorapp_qrmodels`
--

INSERT INTO `conductorapp_qrmodels` (`id`, `qrcode`) VALUES
(5, 'media/image4_Y1RubvM.png'),
(6, 'media/image4_e0XrZHg.png'),
(7, 'media/image4_xcS7TDh.png'),
(8, 'media/image4_ctHrBKj.png'),
(9, 'media/student_5_h1mtVWV.png'),
(10, 'media/student_5_Y57EanP.png'),
(11, 'media/student_5_4Yzw05h.png'),
(12, 'media/student_5_gEAfbAH.png');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'adminapp', 'childmodels'),
(8, 'adminapp', 'delaymodel'),
(9, 'conductorapp', 'qrmodels'),
(10, 'userapp', 'userfeedbackmodel');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-10-30 14:10:08.231868'),
(2, 'auth', '0001_initial', '2023-10-30 14:10:08.668055'),
(3, 'admin', '0001_initial', '2023-10-30 14:10:08.814191'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-10-30 14:10:08.814191'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-10-30 14:10:08.839463'),
(6, 'adminapp', '0001_initial', '2023-10-30 14:10:08.867307'),
(7, 'adminapp', '0002_alter_childmodels_children_image', '2023-10-30 14:10:08.874695'),
(8, 'adminapp', '0003_alter_childmodels_children_image', '2023-10-30 14:10:08.884041'),
(9, 'adminapp', '0004_childmodels_url_alter_childmodels_children_qrcode', '2023-10-30 14:10:08.935839'),
(10, 'adminapp', '0005_qrcode_remove_childmodels_url', '2023-10-30 14:10:08.999843'),
(11, 'adminapp', '0006_delete_qrcode_alter_childmodels_children_qrcode', '2023-10-30 14:10:09.040326'),
(12, 'adminapp', '0007_childmodels_children_status', '2023-10-30 14:10:09.072767'),
(13, 'adminapp', '0008_alter_childmodels_children_status', '2023-10-30 14:10:09.083901'),
(14, 'adminapp', '0009_alter_childmodels_children_status', '2023-10-30 14:10:09.122889'),
(15, 'adminapp', '0010_rename_children_status_childmodels_children_status1_and_more', '2023-10-30 14:10:09.182984'),
(16, 'adminapp', '0011_delaymodel', '2023-10-30 14:10:09.208407'),
(17, 'contenttypes', '0002_remove_content_type_name', '2023-10-30 14:10:09.281452'),
(18, 'auth', '0002_alter_permission_name_max_length', '2023-10-30 14:10:09.330769'),
(19, 'auth', '0003_alter_user_email_max_length', '2023-10-30 14:10:09.366443'),
(20, 'auth', '0004_alter_user_username_opts', '2023-10-30 14:10:09.385640'),
(21, 'auth', '0005_alter_user_last_login_null', '2023-10-30 14:10:09.430516'),
(22, 'auth', '0006_require_contenttypes_0002', '2023-10-30 14:10:09.433406'),
(23, 'auth', '0007_alter_validators_add_error_messages', '2023-10-30 14:10:09.449036'),
(24, 'auth', '0008_alter_user_username_max_length', '2023-10-30 14:10:09.491779'),
(25, 'auth', '0009_alter_user_last_name_max_length', '2023-10-30 14:10:09.536527'),
(26, 'auth', '0010_alter_group_name_max_length', '2023-10-30 14:10:09.579555'),
(27, 'auth', '0011_update_proxy_permissions', '2023-10-30 14:10:09.583766'),
(28, 'auth', '0012_alter_user_first_name_max_length', '2023-10-30 14:10:09.636457'),
(29, 'conductorapp', '0001_initial', '2023-10-30 14:10:09.650129'),
(30, 'sessions', '0001_initial', '2023-10-30 14:10:09.699493'),
(31, 'userapp', '0001_initial', '2023-10-30 14:10:09.785741');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('wgvr96y69yrj4m6cd9ad8ab3rg9vmk1k', 'eyJjX2lkIjo0fQ:1qxTmA:URM2zlcHqzWebDZUo4WcZSsJwim73CZ6y7py4OPf7D8', '2023-11-13 15:01:58.268270'),
('7jbonf4hsvswc0zb3t8l65thkr9bugqr', 'eyJjX2lkIjo1fQ:1qxXZ8:Xwvl00aTblx73gHKLVAyGeMplyMrl6AMVoAD2Kr1p3U', '2023-11-13 19:04:46.736346');

-- --------------------------------------------------------

--
-- Table structure for table `user_feedback`
--

DROP TABLE IF EXISTS `user_feedback`;
CREATE TABLE IF NOT EXISTS `user_feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `rating` varchar(200) DEFAULT NULL,
  `text` varchar(200) DEFAULT NULL,
  `sentiment` varchar(700) DEFAULT NULL,
  `userfeedback_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `user_feedback_userfeedback_id_53d69569` (`userfeedback_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_feedback`
--

INSERT INTO `user_feedback` (`feedback_id`, `rating`, `text`, `sentiment`, `userfeedback_id`) VALUES
(1, '5', 'very nice website for tracking children\'s', 'Very Positive', 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
