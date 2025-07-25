-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 25, 2025 at 11:44 AM
-- Server version: 10.3.39-MariaDB
-- PHP Version: 8.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kubictomsher25_kubic`
--

-- --------------------------------------------------------

--
-- Table structure for table `abilities`
--

CREATE TABLE `abilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `entity_id` bigint(20) UNSIGNED DEFAULT NULL,
  `entity_type` varchar(191) DEFAULT NULL,
  `only_owned` tinyint(1) NOT NULL DEFAULT 0,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `country_name` varchar(255) DEFAULT NULL,
  `state_name` varchar(255) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `set_default` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `type`, `name`, `address`, `country_id`, `state_id`, `city_id`, `country_name`, `state_name`, `city`, `longitude`, `latitude`, `postal_code`, `phone`, `set_default`, `created_at`, `updated_at`) VALUES
(15, 68, 'home', 'Jisha P', 'Flat No 303, Building name', NULL, NULL, NULL, 'UAE', 'Dubai', 'Dubai', '55.32320022583008', '25.234836109953527', '0000', '+971568650838', 0, '2024-01-05 20:27:15', '2025-04-17 14:32:07'),
(26, 68, 'home', 'Jisha P', 'Flat number 606, 184th floor, Burj khalifa', 229, 3798, NULL, 'United Arab Emirates', 'Dubai', 'Burj Park', '55.27437639999999', '25.197197', NULL, '+971568656856', 1, '2024-01-12 00:03:35', '2025-04-17 14:32:07'),
(42, 68, 'work', 'Jisha P', 'Wafi residence,', NULL, NULL, NULL, 'United Arab Emirates', 'Dubai', 'Oud Metha', NULL, NULL, '000000', '+971568650835', 0, '2025-04-17 13:10:52', '2025-04-17 14:32:07'),
(47, 1, 'other', 'Admin name', 'Admin address', NULL, NULL, NULL, 'United Arab Emirates', 'state', 'city', NULL, NULL, '0000', '145236987', 0, '2025-04-18 05:56:23', '2025-04-18 05:56:23'),
(48, 68, 'other', 'New Name', 'Wafi residence Newwwwwww,\r\nDubai Healthcare City', NULL, NULL, NULL, 'United Arab Emirates', 'Dubai', 'Oud Metha', NULL, NULL, '000', '11111', 0, '2025-04-18 06:04:49', '2025-04-18 06:04:49'),
(49, 72, 'other', 'John Doe', '123 Main St', NULL, NULL, NULL, 'Anyland', 'Anystate', 'Anytown', NULL, NULL, '12345', '1234567890', 0, '2025-07-15 14:38:31', '2025-07-15 14:38:31'),
(50, 72, 'other', 'John Doe', '123 Main St', NULL, NULL, NULL, 'Anyland', 'Anystate', 'Anytown', NULL, NULL, '12345', '1234567890', 0, '2025-07-15 14:42:00', '2025-07-15 14:42:00'),
(51, 72, 'other', 'John Doe', '123 Main St', NULL, NULL, NULL, 'Anyland', 'Anystate', 'Anytown', NULL, NULL, '12345', '1234567890', 0, '2025-07-15 14:42:20', '2025-07-15 14:42:20'),
(52, 72, 'other', 'John Doe', '123 Main St', NULL, NULL, NULL, 'Anyland', 'Anystate', 'Anytown', NULL, NULL, '12345', '1234567890', 0, '2025-07-21 05:55:42', '2025-07-21 05:55:42'),
(53, 72, 'other', 'John Doe', '123 Main St', NULL, NULL, NULL, 'Anyland', 'Anystate', 'Anytown', NULL, NULL, '12345', '1234567890', 0, '2025-07-21 06:00:48', '2025-07-21 06:00:48'),
(54, 72, 'other', 'John Doe', '123 Main St', NULL, NULL, NULL, 'Anyland', 'Anystate', 'Anytown', NULL, NULL, '12345', '1234567890', 0, '2025-07-21 06:44:05', '2025-07-21 06:44:05');

-- --------------------------------------------------------

--
-- Table structure for table `admin_menus`
--

CREATE TABLE `admin_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menus`
--

INSERT INTO `admin_menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Header', '2025-07-15 11:05:18', '2025-07-15 11:05:18'),
(2, 'Footer', '2025-07-15 13:09:06', '2025-07-15 13:09:06'),
(3, 'Bottom Footer', '2025-07-16 13:44:40', '2025-07-16 13:44:40');

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu_items`
--

CREATE TABLE `admin_menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(191) NOT NULL,
  `link` varchar(191) NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `class` varchar(191) DEFAULT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `depth` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu_items`
--

INSERT INTO `admin_menu_items` (`id`, `label`, `link`, `parent_id`, `sort`, `class`, `menu_id`, `depth`, `created_at`, `updated_at`) VALUES
(1, 'About Us', '/about', 0, 0, NULL, 1, 0, '2025-07-15 12:38:52', '2025-07-16 08:51:21'),
(2, 'Our Services', '/services', 0, 1, NULL, 1, 0, '2025-07-15 12:52:48', '2025-07-16 08:51:57'),
(3, 'Tutorials', '/tutorials', 0, 3, NULL, 1, 0, '2025-07-16 08:52:12', '2025-07-17 15:52:29'),
(4, 'News', '/news', 0, 4, NULL, 1, 0, '2025-07-16 08:52:23', '2025-07-17 15:52:29'),
(5, 'Contact Us', '/contact', 0, 5, NULL, 1, 0, '2025-07-16 08:52:32', '2025-07-17 15:52:29'),
(6, 'Quick Links', '#', 0, 0, NULL, 2, 0, '2025-07-16 13:31:37', '2025-07-16 13:31:53'),
(7, 'Home', '/', 6, 1, NULL, 2, 1, '2025-07-16 13:31:52', '2025-07-16 13:31:56'),
(8, 'Services', '#', 0, 2, NULL, 2, 0, '2025-07-16 13:41:32', '2025-07-16 13:41:32'),
(9, 'Digital Transformation', '/', 8, 3, NULL, 2, 1, '2025-07-16 13:41:54', '2025-07-16 13:41:57'),
(10, 'Follow Us', '#', 0, 4, NULL, 2, 0, '2025-07-16 13:42:30', '2025-07-16 13:42:30'),
(11, 'Facebook', '/', 10, 5, NULL, 2, 1, '2025-07-16 13:42:43', '2025-07-16 13:42:46'),
(12, 'Privacy Policy', '/', 0, 0, NULL, 3, 0, '2025-07-16 13:45:00', '2025-07-16 13:45:11'),
(13, 'Terms & Conditions', '/', 0, 1, NULL, 3, 0, '2025-07-16 13:45:11', '2025-07-16 13:45:13'),
(14, 'Service 1', '/', 2, 2, NULL, 1, 1, '2025-07-17 15:52:26', '2025-07-17 15:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `app_translations`
--

CREATE TABLE `app_translations` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) DEFAULT NULL,
  `lang_key` varchar(255) DEFAULT NULL,
  `lang_value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Color', 1, '2025-07-19 07:38:39', '2025-07-19 07:38:39'),
(2, 'Size', 1, '2025-07-19 07:38:39', '2025-07-19 07:38:39'),
(3, 'Material', 1, '2025-07-19 07:38:39', '2025-07-19 07:38:39');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `link_type` varchar(191) DEFAULT NULL,
  `link_ref` varchar(191) DEFAULT NULL,
  `link_ref_id` int(11) DEFAULT NULL,
  `link` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner_translations`
--

CREATE TABLE `banner_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_id` bigint(20) UNSIGNED NOT NULL,
  `lang` varchar(5) DEFAULT NULL,
  `image` int(11) DEFAULT NULL,
  `mobile_image` int(11) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `sub_title` varchar(191) DEFAULT NULL,
  `btn_text` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `blog_date` date DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `og_title` varchar(255) DEFAULT NULL,
  `og_description` text DEFAULT NULL,
  `twitter_title` varchar(255) DEFAULT NULL,
  `twitter_description` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `slug`, `name`, `description`, `image`, `status`, `blog_date`, `meta_title`, `meta_description`, `og_title`, `og_description`, `twitter_title`, `twitter_description`, `keywords`, `created_at`, `updated_at`) VALUES
(1, 'nest-thermostat-compatibility-guide-uae', 'Nest Thermostat Compatibility Guide (UAE)', '<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; font-family: &quot;Open Sans&quot;; color: rgb(119, 119, 119); line-height: 1.66em;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-weight: 700; color: rgb(65, 182, 232);\">Nest Gen3 Thermostat (UAE &amp; U.S versions) general requirements</span></p><ul style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; list-style-position: initial; list-style-image: initial; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;;\"><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Nest Thermostats are designed to work with 24V US spec AC systems. They require installation of a conversion kit as well as bypassing of AC control board in order for them to work with 220V UAE AC systems</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Nest Thermostats can be retrofitted to work on single and 3 fan speed modes</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Single fan speed mode requires the presence of 4 wires to thermostat location</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Three fan speed mode requires the presence of 6 wires</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Thermostat locations with 3 wires, requires the installation of an additional wire saver module to add the 4th wire for single fan speed.</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Less than 6 wires at a thermostat location requires the pulling of a new set of 6 wire panel cables for three fan speed activation</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">New ACs with inverter compressor or DC current fan motor require different installation method. The process involves installation of a brand specific interface that interprets Nest signal back to the AC control board plus pulling of CAT6 cable.</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Nest E thermostat can only support one fan speed vs 3 fan speed for the Nest Gen3</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; font-family: &quot;Open Sans&quot;; color: rgb(119, 119, 119); line-height: 1.66em;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-weight: 700; color: rgb(65, 182, 232);\">Non-compatibility: cases where Nest cannot be installed</span></p><ul style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; list-style-position: initial; list-style-image: initial; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;;\"><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Window type AC units</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">VRV type ACs</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Where ACs are connected to a BMS or wired smart home system</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Chilled water systems with modulating actuator motor (1-10v). These require replacement of actuator with on/off model</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">UK and European spec Nest thermostats are designed to work with boilers and water heaters and are not configured to work with AC systems</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; font-family: &quot;Open Sans&quot;; color: rgb(119, 119, 119); line-height: 1.66em;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-weight: 700; color: rgb(65, 182, 232);\">Specific compatibility guidelines</span><br><em style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">Apartments:</em></p><ul style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; list-style-position: initial; list-style-image: initial; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;;\"><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">As a general rule, apartments located within towers are typically served by a central chiller, as such would have 6 wires</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">In some newly build apartments with modulating actuator motors, there would a requirement to replace actuator motors with standard on/off models. This can only be established post inspection. Cost of actuators motors varies between AED 350-500 per unit. In very rare cases, valve assembly would also have to be replaced (cost AED 1500 per unit)</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; font-family: &quot;Open Sans&quot;; color: rgb(119, 119, 119); line-height: 1.66em;\"><em style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">District cooling:</em></p><ul style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; list-style-position: initial; list-style-image: initial; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;;\"><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">AC units within areas with district cooling such as the Palm, Jumeirah Islands, JLT, Motor City and Sports City would have thermostats with 6 wires</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; font-family: &quot;Open Sans&quot;; color: rgb(119, 119, 119); line-height: 1.66em;\"><em style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">Villas: (in non district cooling areas)</em><br>a) LG:</p><ul style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; list-style-position: initial; list-style-image: initial; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;;\"><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Found in majority of Emaar villas across Springs, Meadows and Arabian Ranches as well as Al Furjan</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">All units have 3 wires to thermostat location</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Requires installation of an additional module (add 4th wire) for single fan speed</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Three fan speed requires pulling of 6 wires. Smaller capacity units have single stage fan that requires installation of fan transformer (AED 390)</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Installation of Nest thermostat on new LG ACs with modulating compressor and DC fan motor is not yet supported.</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; font-family: &quot;Open Sans&quot;; color: rgb(119, 119, 119); line-height: 1.66em;\">b) OGeneral:</p><ul style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; list-style-position: initial; list-style-image: initial; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;;\"><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Found in many Emaar villa communities.</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">All units have 3 wires to thermostat</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Requires installation of an additional wire saver module that provides 4th wire for single fan speed.</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Three fan speed installation requires pulling of new 6 wire cables</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">New OGeneral ACs with modulating compressor and DC fan motor. Require installation of a bespoke Nest interface/module approx cost (AED 900) per module</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; font-family: &quot;Open Sans&quot;; color: rgb(119, 119, 119); line-height: 1.66em;\">c) York &amp; Daikin:</p><ul style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; list-style-position: initial; list-style-image: initial; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;;\"><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Both York and Daikin units would have 4 wires through to thermostat location</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">York prevalent in The Villa project. Daikin is installed in all Arabian Ranches 2 communities</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; font-family: &quot;Open Sans&quot;; color: rgb(119, 119, 119); line-height: 1.66em;\">d) Trane:</p><ul style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; list-style-position: initial; list-style-image: initial; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;;\"><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Older units would have 8 wires through to thermostat location</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Newer units with LCD type thermostat would have 2 wires going to thermostat location</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Prevalent in Jumeirah Park and other Nakheel communities</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; font-family: &quot;Open Sans&quot;; color: rgb(119, 119, 119); line-height: 1.66em;\">e) Carrier:</p><ul style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; list-style-position: initial; list-style-image: initial; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;;\"><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Mexican spec : 4 wires</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Egyptian spec: 5 wires (found in Damac Hills), requires wire saver for 3 fan speed.</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Egyptian spec: 4 wires (found in Arabella Mudon), ACs have inverter compressor and DC fan motors. Requires interface module.</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; font-family: &quot;Open Sans&quot;; color: rgb(119, 119, 119); line-height: 1.66em;\">f) Midea:</p><ul style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; list-style-position: initial; list-style-image: initial; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;;\"><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Found in Mira Oasis and Maple Villas in Dubai Hills</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Units on ground floor are standard 5 wire AC current fan motor. Requires wire saver for 3 fan speed operation</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Units found on first floor are inverter compressor/DC current fan motor. These require pulling of CAT6 cable and installation of interface module</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; font-family: &quot;Open Sans&quot;; color: rgb(119, 119, 119); line-height: 1.66em;\">g) Samsung:</p><ul style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; list-style-position: initial; list-style-image: initial; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;;\"><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Comes in two variants 4 wire AC fan motor (Legends Villas) and 2 wire inverter compressor (Sidra, Dubai Hills)</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline;\">Samsung ACs in Sidra require specific interface (AED 950) pulling of 6 new wire cable and installation of conversion box</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; font-family: &quot;Open Sans&quot;; color: rgb(119, 119, 119); line-height: 1.66em;\">h) Rheem : 6 wires found in Mira and 5 wires found in Lantana. ACs in Lantana can only support 2 fan speed as medium and high speeds are looped on AC.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; font-family: &quot;Open Sans&quot;; color: rgb(119, 119, 119); line-height: 1.66em;\">i) American breeze: 6 wires found in some older Emaar villas in Meadows and Lakes as well as Jumeirah Islands</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; font-family: &quot;Open Sans&quot;; color: rgb(119, 119, 119); line-height: 1.66em;\">j) Mitsubishi: All Mitsubishi units require pulling of new wires as well as installation of an interface (provided CN90 connector is present on PCB). Found in older villas of non-free hold communities</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; font-family: &quot;Open Sans&quot;; color: rgb(119, 119, 119); line-height: 1.66em;\">k) Honeywell: Very rarely installed in villas. Would typically have 6 wires</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; font-family: &quot;Open Sans&quot;; color: rgb(119, 119, 119); line-height: 1.66em;\">l) Trane: 8 wires, found in some Jumeirah Park villas. Villas in newer districts would have 2 wire Trane AC in which case new 6 wire cable have to be pulled</p>', '16', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-17 07:48:01', '2025-02-17 07:48:01'),
(2, 'homeiq-becomes-first-nest-pro-installer-in-the-region', 'HomeIQ becomes first Nest PRO installer in the region', '<div class=\"mk-text-block  true\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;;\"><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; line-height: 1.66em;\">HomeIQ today announced that it has received its Nest PRO certification making the first company in the region to achieve the accolade.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; line-height: 1.66em;\">Nest PRO is Nest Labs’ program that enables home automation professionals to install Nest’s roster of smart home products such as Nest Learning Thermostats, Nest Cam Indoor and Outdoor security cameras, and Nest Protect smoke and carbon monoxide (CO)</p><div class=\"clearboth\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; visibility: hidden; clear: both; overflow: hidden; width: 0px; height: 0px;\"></div></div><div id=\"blockquote-67b31ad3c5c77\" class=\"mk-shortcode mk-blockquote line-style \" style=\"margin: 0px 0px 20px; padding: 10px 10px 10px 40px; border-width: 0px 0px 0px 2px; border-top-style: initial; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-image: initial; vertical-align: baseline; font-size: 16px; position: relative; line-height: 24px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;; border-color: rgb(65, 182, 232) !important;\">As a verified Nest Pro installer, our team have the tools and training necessary to install all Nest products into your home of office giving you the peace of mind knowing they’re installed properly and ensure that your expectations are not only met but exceeded.</div><div class=\"mk-text-block  true\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;;\"><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; line-height: 1.66em;\">HomeIQ Managing Director, Omar Saudi said “Over the years we have sold and installed thousands of Nest thermostats, protect alarms and indoor cameras all across the UAE. The certification provides customers with the peace of mind knowing that their Nest product will be installed correctly and is testament to our high level of expertise in these products, which is second to none. We sincerely value the trust that Nest and its local distributor has placed in us”.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; line-height: 1.66em;\">Verified Nest PRO technicians receive special training and support from Nest on all existing and new products. The installations are also guaranteed and are provided at a fixed cost with no hidden extras. Professional technicians are also guaranteed to leave your property clean and tidy as if we were never there.</p></div>', '17', 1, '2018-09-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-17 08:09:05', '2025-02-17 08:09:05'),
(3, 'blog-1-2', 'Blog 1', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultrices rhoncus nisi, at aliquet enim pretium vel. Quisque eu tincidunt felis. Sed et aliquet ex. Morbi turpis nibh, laoreet non tortor id, consequat porta nisi. Mauris ullamcorper posuere dui ut tincidunt. Integer sed nunc fermentum, consequat magna non, laoreet nisi. Suspendisse egestas finibus mollis. Maecenas placerat velit ut velit ornare, eu sagittis libero mattis. In mattis magna nec est facilisis mattis. Nam felis ex, cursus vel volutpat sed, sollicitudin ultrices orci. Nullam euismod augue velit, quis tempus sem tincidunt ut. Proin lobortis cursus purus vel laoreet. Sed quam nisl, ullamcorper nec nunc quis, laoreet congue arcu. Morbi consequat tristique mi id porttitor. In efficitur nec nisi in lobortis. Phasellus at tellus eu tellus hendrerit mattis.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">In vel libero velit. Etiam ut nulla vestibulum, pharetra orci sed, elementum elit. Integer fringilla, arcu et mollis finibus, arcu nunc dictum arcu, ut bibendum diam tortor et odio. Aenean laoreet lobortis suscipit. Nullam ac aliquet nunc. Suspendisse quis nulla tellus. Pellentesque semper nulla sit amet efficitur bibendum. Donec facilisis dolor dolor, sed auctor urna varius vel. Aliquam at maximus erat. Vivamus pulvinar quis lacus sit amet mollis.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Nam eget posuere nibh. Fusce tempor dui eget finibus luctus. Nulla convallis justo id ante vehicula, et tincidunt lacus condimentum. Nullam tristique elit sapien, a iaculis nisi accumsan quis. Donec posuere mollis condimentum. Donec gravida quis ligula sed aliquet. Nullam risus odio, volutpat vel augue nec, tempor iaculis augue. Nullam tincidunt libero vel nulla commodo eleifend. Etiam pulvinar mattis commodo. Suspendisse vel fringilla ipsum. Praesent nec massa lorem.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Praesent id dui quis metus consequat molestie vel nec erat. Sed mauris enim, facilisis a turpis sed, dapibus venenatis turpis. Pellentesque luctus iaculis orci vel varius. Ut consequat nulla ut enim ultrices molestie. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris gravida lectus sagittis lacus ultricies volutpat. Aenean porta varius sapien. Nullam diam mi, luctus nec turpis ut, consequat semper magna. Aliquam volutpat lectus quam, eget lacinia justo rhoncus id. Sed venenatis accumsan enim ut laoreet. Donec dictum in turpis nec sollicitudin. Proin a enim eget est scelerisque scelerisque eget non lorem. Aenean varius molestie sem, vitae vulputate eros rhoncus eget.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Donec eget leo egestas, rhoncus sapien rhoncus, iaculis magna. Nulla ullamcorper mattis tincidunt. Curabitur ac semper lacus. Fusce faucibus accumsan commodo. Nulla tortor augue, malesuada elementum mi in, porttitor pretium ligula. Etiam eu nibh dictum, posuere ipsum vel, aliquet tortor. Aenean fringilla blandit felis in tempus. Praesent interdum ultrices porta. Curabitur porta tortor nec magna eleifend aliquet. Nulla facilisi. Integer vitae elit nec lectus dapibus varius ac ut nibh. Proin non tempus urna, sit amet volutpat dui.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce nec urna nibh. Duis vulputate aliquam fermentum. In in accumsan tortor. Phasellus rutrum fermentum lorem ut luctus. Sed feugiat nulla non nisi tincidunt, ut commodo est bibendum. Nullam vestibulum ut sem sit amet hendrerit. Cras imperdiet pharetra nisl sed tincidunt. Cras sed condimentum dolor. Aliquam erat volutpat. Donec eget cursus eros. Maecenas non quam ac dui lacinia sodales ut ut nisl. Nulla vitae sagittis orci. Mauris erat nisl, vulputate vel tellus a, feugiat euismod erat.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Donec nec tincidunt ligula. Proin id elit id lorem fermentum dapibus eget nec justo. Nulla eu purus nunc. Nulla mauris orci, fringilla vel viverra quis, tincidunt vel sem. Nam finibus tortor massa, in vehicula urna euismod quis. Praesent eleifend interdum quam, porta maximus orci aliquet nec. Donec ipsum purus, porttitor et magna in, porta suscipit nibh. Integer cursus mi justo, eu aliquet nisl finibus non. In luctus massa a mi faucibus malesuada. Suspendisse potenti. Vivamus viverra sit amet quam eget sollicitudin. Fusce vulputate tellus maximus lacus lobortis, id dapibus orci aliquam. Duis enim mi, rhoncus ac dapibus ullamcorper, ultricies congue risus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Praesent id scelerisque augue. Vestibulum non ipsum augue. Quisque ipsum ipsum, condimentum non lacus lobortis, ultrices viverra odio. Fusce auctor dui lorem, sit amet bibendum diam ornare a. Pellentesque quis nunc tempor, interdum erat vulputate, efficitur mauris. Aenean suscipit turpis in tristique viverra. Ut sed scelerisque augue. Maecenas consectetur arcu non urna pretium auctor. Etiam congue posuere congue. Aliquam in facilisis dolor, in pellentesque lacus. In hac habitasse platea dictumst. Quisque aliquet et est a dapibus. Donec ornare ex velit, nec ullamcorper dolor ultrices nec. In semper turpis eget sagittis convallis. In dapibus pellentesque mi, ut vulputate enim.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Praesent ornare sem sed fringilla cursus. Cras eget egestas tellus, eget rutrum augue. Pellentesque laoreet ultrices libero, a condimentum dolor consectetur sit amet. Nulla imperdiet nisl enim, ut mattis libero condimentum sed. Donec ac leo fermentum, rutrum neque ac, sodales lacus. Curabitur porttitor justo et tristique imperdiet. Proin venenatis urna quis purus ullamcorper, vel accumsan quam commodo. Ut sed egestas magna, non pulvinar enim. Phasellus ac augue ultrices, cursus ligula pretium, dignissim sapien. Maecenas sagittis arcu quis eros posuere, eu suscipit elit rhoncus. Suspendisse eleifend quam a metus maximus, in ultricies eros faucibus. Mauris dapibus nisl dui, vel tristique turpis tempus id. Mauris consectetur nibh id tortor elementum, et feugiat ante interdum. Integer tristique odio sed purus malesuada sodales et et nisl.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean posuere vehicula erat, non laoreet dui fringilla quis. Quisque sapien nunc, finibus sit amet fringilla vitae, consequat sagittis velit. Phasellus faucibus ac ex sit amet accumsan. Vestibulum eget erat dui. Etiam eleifend accumsan neque, quis mattis mauris imperdiet vel. Etiam mauris libero, eleifend ac malesuada quis, aliquet sed erat. Vivamus non malesuada tellus.</p>', '31', 1, '2025-03-01', 'Meta Title', 'Meta Description', 'OG Title', 'OG Description', 'Twitter Title', 'Twitter Description', 'Meta Keywords', '2025-03-19 04:04:36', '2025-03-19 04:55:00'),
(4, 'blog-2', 'Blog 2', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultrices rhoncus nisi, at aliquet enim pretium vel. Quisque eu tincidunt felis. Sed et aliquet ex. Morbi turpis nibh, laoreet non tortor id, consequat porta nisi. Mauris ullamcorper posuere dui ut tincidunt. Integer sed nunc fermentum, consequat magna non, laoreet nisi. Suspendisse egestas finibus mollis. Maecenas placerat velit ut velit ornare, eu sagittis libero mattis. In mattis magna nec est facilisis mattis. Nam felis ex, cursus vel volutpat sed, sollicitudin ultrices orci. Nullam euismod augue velit, quis tempus sem tincidunt ut. Proin lobortis cursus purus vel laoreet. Sed quam nisl, ullamcorper nec nunc quis, laoreet congue arcu. Morbi consequat tristique mi id porttitor. In efficitur nec nisi in lobortis. Phasellus at tellus eu tellus hendrerit mattis.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">In vel libero velit. Etiam ut nulla vestibulum, pharetra orci sed, elementum elit. Integer fringilla, arcu et mollis finibus, arcu nunc dictum arcu, ut bibendum diam tortor et odio. Aenean laoreet lobortis suscipit. Nullam ac aliquet nunc. Suspendisse quis nulla tellus. Pellentesque semper nulla sit amet efficitur bibendum. Donec facilisis dolor dolor, sed auctor urna varius vel. Aliquam at maximus erat. Vivamus pulvinar quis lacus sit amet mollis.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Nam eget posuere nibh. Fusce tempor dui eget finibus luctus. Nulla convallis justo id ante vehicula, et tincidunt lacus condimentum. Nullam tristique elit sapien, a iaculis nisi accumsan quis. Donec posuere mollis condimentum. Donec gravida quis ligula sed aliquet. Nullam risus odio, volutpat vel augue nec, tempor iaculis augue. Nullam tincidunt libero vel nulla commodo eleifend. Etiam pulvinar mattis commodo. Suspendisse vel fringilla ipsum. Praesent nec massa lorem.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Praesent id dui quis metus consequat molestie vel nec erat. Sed mauris enim, facilisis a turpis sed, dapibus venenatis turpis. Pellentesque luctus iaculis orci vel varius. Ut consequat nulla ut enim ultrices molestie. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris gravida lectus sagittis lacus ultricies volutpat. Aenean porta varius sapien. Nullam diam mi, luctus nec turpis ut, consequat semper magna. Aliquam volutpat lectus quam, eget lacinia justo rhoncus id. Sed venenatis accumsan enim ut laoreet. Donec dictum in turpis nec sollicitudin. Proin a enim eget est scelerisque scelerisque eget non lorem. Aenean varius molestie sem, vitae vulputate eros rhoncus eget.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Donec eget leo egestas, rhoncus sapien rhoncus, iaculis magna. Nulla ullamcorper mattis tincidunt. Curabitur ac semper lacus. Fusce faucibus accumsan commodo. Nulla tortor augue, malesuada elementum mi in, porttitor pretium ligula. Etiam eu nibh dictum, posuere ipsum vel, aliquet tortor. Aenean fringilla blandit felis in tempus. Praesent interdum ultrices porta. Curabitur porta tortor nec magna eleifend aliquet. Nulla facilisi. Integer vitae elit nec lectus dapibus varius ac ut nibh. Proin non tempus urna, sit amet volutpat dui.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce nec urna nibh. Duis vulputate aliquam fermentum. In in accumsan tortor. Phasellus rutrum fermentum lorem ut luctus. Sed feugiat nulla non nisi tincidunt, ut commodo est bibendum. Nullam vestibulum ut sem sit amet hendrerit. Cras imperdiet pharetra nisl sed tincidunt. Cras sed condimentum dolor. Aliquam erat volutpat. Donec eget cursus eros. Maecenas non quam ac dui lacinia sodales ut ut nisl. Nulla vitae sagittis orci. Mauris erat nisl, vulputate vel tellus a, feugiat euismod erat.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Donec nec tincidunt ligula. Proin id elit id lorem fermentum dapibus eget nec justo. Nulla eu purus nunc. Nulla mauris orci, fringilla vel viverra quis, tincidunt vel sem. Nam finibus tortor massa, in vehicula urna euismod quis. Praesent eleifend interdum quam, porta maximus orci aliquet nec. Donec ipsum purus, porttitor et magna in, porta suscipit nibh. Integer cursus mi justo, eu aliquet nisl finibus non. In luctus massa a mi faucibus malesuada. Suspendisse potenti. Vivamus viverra sit amet quam eget sollicitudin. Fusce vulputate tellus maximus lacus lobortis, id dapibus orci aliquam. Duis enim mi, rhoncus ac dapibus ullamcorper, ultricies congue risus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Praesent id scelerisque augue. Vestibulum non ipsum augue. Quisque ipsum ipsum, condimentum non lacus lobortis, ultrices viverra odio. Fusce auctor dui lorem, sit amet bibendum diam ornare a. Pellentesque quis nunc tempor, interdum erat vulputate, efficitur mauris. Aenean suscipit turpis in tristique viverra. Ut sed scelerisque augue. Maecenas consectetur arcu non urna pretium auctor. Etiam congue posuere congue. Aliquam in facilisis dolor, in pellentesque lacus. In hac habitasse platea dictumst. Quisque aliquet et est a dapibus. Donec ornare ex velit, nec ullamcorper dolor ultrices nec. In semper turpis eget sagittis convallis. In dapibus pellentesque mi, ut vulputate enim.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Praesent ornare sem sed fringilla cursus. Cras eget egestas tellus, eget rutrum augue. Pellentesque laoreet ultrices libero, a condimentum dolor consectetur sit amet. Nulla imperdiet nisl enim, ut mattis libero condimentum sed. Donec ac leo fermentum, rutrum neque ac, sodales lacus. Curabitur porttitor justo et tristique imperdiet. Proin venenatis urna quis purus ullamcorper, vel accumsan quam commodo. Ut sed egestas magna, non pulvinar enim. Phasellus ac augue ultrices, cursus ligula pretium, dignissim sapien. Maecenas sagittis arcu quis eros posuere, eu suscipit elit rhoncus. Suspendisse eleifend quam a metus maximus, in ultricies eros faucibus. Mauris dapibus nisl dui, vel tristique turpis tempus id. Mauris consectetur nibh id tortor elementum, et feugiat ante interdum. Integer tristique odio sed purus malesuada sodales et et nisl.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aenean posuere vehicula erat, non laoreet dui fringilla quis. Quisque sapien nunc, finibus sit amet fringilla vitae, consequat sagittis velit. Phasellus faucibus ac ex sit amet accumsan. Vestibulum eget erat dui. Etiam eleifend accumsan neque, quis mattis mauris imperdiet vel. Etiam mauris libero, eleifend ac malesuada quis, aliquet sed erat. Vivamus non malesuada tellus.</p>', '30', 1, '2025-03-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-19 04:04:53', '2025-03-19 04:04:55'),
(5, 'blog-3', 'blog 3', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce nec urna nibh. Duis vulputate aliquam fermentum. In in accumsan tortor. Phasellus rutrum fermentum lorem ut luctus. Sed feugiat nulla non nisi tincidunt, ut commodo est bibendum. Nullam vestibulum ut sem sit amet hendrerit. Cras imperdiet pharetra nisl sed tincidunt. Cras sed condimentum dolor. Aliquam erat volutpat. Donec eget cursus eros. Maecenas non quam ac dui lacinia sodales ut ut nisl. Nulla vitae sagittis orci. Mauris erat nisl, vulputate vel tellus a, feugiat euismod erat.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Donec nec tincidunt ligula. Proin id elit id lorem fermentum dapibus eget nec justo. Nulla eu purus nunc. Nulla mauris orci, fringilla vel viverra quis, tincidunt vel sem. Nam finibus tortor massa, in vehicula urna euismod quis. Praesent eleifend interdum quam, porta maximus orci aliquet nec. Donec ipsum purus, porttitor et magna in, porta suscipit nibh. Integer cursus mi justo, eu aliquet nisl finibus non. In luctus massa a mi faucibus malesuada. Suspendisse potenti. Vivamus viverra sit amet quam eget sollicitudin. Fusce vulputate tellus maximus lacus lobortis, id dapibus orci aliquam. Duis enim mi, rhoncus ac dapibus ullamcorper, ultricies congue risus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Praesent id scelerisque augue. Vestibulum non ipsum augue. Quisque ipsum ipsum, condimentum non lacus lobortis, ultrices viverra odio. Fusce auctor dui lorem, sit amet bibendum diam ornare a. Pellentesque quis nunc tempor, interdum erat vulputate, efficitur mauris. Aenean suscipit turpis in tristique viverra. Ut sed scelerisque augue. Maecenas consectetur arcu non urna pretium auctor. Etiam congue posuere congue. Aliquam in facilisis dolor, in pellentesque lacus. In hac habitasse platea dictumst. Quisque aliquet et est a dapibus. Donec ornare ex velit, nec ullamcorper dolor ultrices nec. In semper turpis eget sagittis convallis. In dapibus pellentesque mi, ut vulputate enim.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Praesent ornare sem sed fringilla cursus. Cras eget egestas tellus, eget rutrum augue. Pellentesque laoreet ultrices libero, a condimentum dolor consectetur sit amet. Nulla imperdiet nisl enim, ut mattis libero condimentum sed. Donec ac leo fermentum, rutrum neque ac, sodales lacus. Curabitur porttitor justo et tristique imperdiet. Proin venenatis urna quis purus ullamcorper, vel accumsan quam commodo. Ut sed egestas magna, non pulvinar enim. Phasellus ac augue ultrices, cursus ligula pretium, dignissim sapien. Maecenas sagittis arcu quis eros posuere, eu suscipit elit rhoncus. Suspendisse eleifend quam a metus maximus, in ultricies eros faucibus. Mauris dapibus nisl dui, vel tristique turpis tempus id. Mauris consectetur nibh id tortor elementum, et feugiat ante interdum. Integer tristique odio sed purus malesuada sodales et et nisl.</p>', '29', 1, '2025-03-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-19 04:05:21', '2025-03-19 04:05:21'),
(6, 'blog-4', 'Blog 4', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce nec urna nibh. Duis vulputate aliquam fermentum. In in accumsan tortor. Phasellus rutrum fermentum lorem ut luctus. Sed feugiat nulla non nisi tincidunt, ut commodo est bibendum. Nullam vestibulum ut sem sit amet hendrerit. Cras imperdiet pharetra nisl sed tincidunt. Cras sed condimentum dolor. Aliquam erat volutpat. Donec eget cursus eros. Maecenas non quam ac dui lacinia sodales ut ut nisl. Nulla vitae sagittis orci. Mauris erat nisl, vulputate vel tellus a, feugiat euismod erat.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Donec nec tincidunt ligula. Proin id elit id lorem fermentum dapibus eget nec justo. Nulla eu purus nunc. Nulla mauris orci, fringilla vel viverra quis, tincidunt vel sem. Nam finibus tortor massa, in vehicula urna euismod quis. Praesent eleifend interdum quam, porta maximus orci aliquet nec. Donec ipsum purus, porttitor et magna in, porta suscipit nibh. Integer cursus mi justo, eu aliquet nisl finibus non. In luctus massa a mi faucibus malesuada. Suspendisse potenti. Vivamus viverra sit amet quam eget sollicitudin. Fusce vulputate tellus maximus lacus lobortis, id dapibus orci aliquam. Duis enim mi, rhoncus ac dapibus ullamcorper, ultricies congue risus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Praesent id scelerisque augue. Vestibulum non ipsum augue. Quisque ipsum ipsum, condimentum non lacus lobortis, ultrices viverra odio. Fusce auctor dui lorem, sit amet bibendum diam ornare a. Pellentesque quis nunc tempor, interdum erat vulputate, efficitur mauris. Aenean suscipit turpis in tristique viverra. Ut sed scelerisque augue. Maecenas consectetur arcu non urna pretium auctor. Etiam congue posuere congue. Aliquam in facilisis dolor, in pellentesque lacus. In hac habitasse platea dictumst. Quisque aliquet et est a dapibus. Donec ornare ex velit, nec ullamcorper dolor ultrices nec. In semper turpis eget sagittis convallis. In dapibus pellentesque mi, ut vulputate enim.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Praesent ornare sem sed fringilla cursus. Cras eget egestas tellus, eget rutrum augue. Pellentesque laoreet ultrices libero, a condimentum dolor consectetur sit amet. Nulla imperdiet nisl enim, ut mattis libero condimentum sed. Donec ac leo fermentum, rutrum neque ac, sodales lacus. Curabitur porttitor justo et tristique imperdiet. Proin venenatis urna quis purus ullamcorper, vel accumsan quam commodo. Ut sed egestas magna, non pulvinar enim. Phasellus ac augue ultrices, cursus ligula pretium, dignissim sapien. Maecenas sagittis arcu quis eros posuere, eu suscipit elit rhoncus. Suspendisse eleifend quam a metus maximus, in ultricies eros faucibus. Mauris dapibus nisl dui, vel tristique turpis tempus id. Mauris consectetur nibh id tortor elementum, et feugiat ante interdum. Integer tristique odio sed purus malesuada sodales et et nisl.</p>', '27', 1, '2025-03-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-19 04:05:40', '2025-03-19 04:05:40'),
(7, 'blog-5', 'Blog 5', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce nec urna nibh. Duis vulputate aliquam fermentum. In in accumsan tortor. Phasellus rutrum fermentum lorem ut luctus. Sed feugiat nulla non nisi tincidunt, ut commodo est bibendum. Nullam vestibulum ut sem sit amet hendrerit. Cras imperdiet pharetra nisl sed tincidunt. Cras sed condimentum dolor. Aliquam erat volutpat. Donec eget cursus eros. Maecenas non quam ac dui lacinia sodales ut ut nisl. Nulla vitae sagittis orci. Mauris erat nisl, vulputate vel tellus a, feugiat euismod erat.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Donec nec tincidunt ligula. Proin id elit id lorem fermentum dapibus eget nec justo. Nulla eu purus nunc. Nulla mauris orci, fringilla vel viverra quis, tincidunt vel sem. Nam finibus tortor massa, in vehicula urna euismod quis. Praesent eleifend interdum quam, porta maximus orci aliquet nec. Donec ipsum purus, porttitor et magna in, porta suscipit nibh. Integer cursus mi justo, eu aliquet nisl finibus non. In luctus massa a mi faucibus malesuada. Suspendisse potenti. Vivamus viverra sit amet quam eget sollicitudin. Fusce vulputate tellus maximus lacus lobortis, id dapibus orci aliquam. Duis enim mi, rhoncus ac dapibus ullamcorper, ultricies congue risus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Praesent id scelerisque augue. Vestibulum non ipsum augue. Quisque ipsum ipsum, condimentum non lacus lobortis, ultrices viverra odio. Fusce auctor dui lorem, sit amet bibendum diam ornare a. Pellentesque quis nunc tempor, interdum erat vulputate, efficitur mauris. Aenean suscipit turpis in tristique viverra. Ut sed scelerisque augue. Maecenas consectetur arcu non urna pretium auctor. Etiam congue posuere congue. Aliquam in facilisis dolor, in pellentesque lacus. In hac habitasse platea dictumst. Quisque aliquet et est a dapibus. Donec ornare ex velit, nec ullamcorper dolor ultrices nec. In semper turpis eget sagittis convallis. In dapibus pellentesque mi, ut vulputate enim.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Praesent ornare sem sed fringilla cursus. Cras eget egestas tellus, eget rutrum augue. Pellentesque laoreet ultrices libero, a condimentum dolor consectetur sit amet. Nulla imperdiet nisl enim, ut mattis libero condimentum sed. Donec ac leo fermentum, rutrum neque ac, sodales lacus. Curabitur porttitor justo et tristique imperdiet. Proin venenatis urna quis purus ullamcorper, vel accumsan quam commodo. Ut sed egestas magna, non pulvinar enim. Phasellus ac augue ultrices, cursus ligula pretium, dignissim sapien. Maecenas sagittis arcu quis eros posuere, eu suscipit elit rhoncus. Suspendisse eleifend quam a metus maximus, in ultricies eros faucibus. Mauris dapibus nisl dui, vel tristique turpis tempus id. Mauris consectetur nibh id tortor elementum, et feugiat ante interdum. Integer tristique odio sed purus malesuada sodales et et nisl.</p>', '26', 1, '2025-03-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-19 04:06:38', '2025-03-19 04:06:38'),
(8, 'blog-6', 'Blog 6', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce nec urna nibh. Duis vulputate aliquam fermentum. In in accumsan tortor. Phasellus rutrum fermentum lorem ut luctus. Sed feugiat nulla non nisi tincidunt, ut commodo est bibendum. Nullam vestibulum ut sem sit amet hendrerit. Cras imperdiet pharetra nisl sed tincidunt. Cras sed condimentum dolor. Aliquam erat volutpat. Donec eget cursus eros. Maecenas non quam ac dui lacinia sodales ut ut nisl. Nulla vitae sagittis orci. Mauris erat nisl, vulputate vel tellus a, feugiat euismod erat.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Donec nec tincidunt ligula. Proin id elit id lorem fermentum dapibus eget nec justo. Nulla eu purus nunc. Nulla mauris orci, fringilla vel viverra quis, tincidunt vel sem. Nam finibus tortor massa, in vehicula urna euismod quis. Praesent eleifend interdum quam, porta maximus orci aliquet nec. Donec ipsum purus, porttitor et magna in, porta suscipit nibh. Integer cursus mi justo, eu aliquet nisl finibus non. In luctus massa a mi faucibus malesuada. Suspendisse potenti. Vivamus viverra sit amet quam eget sollicitudin. Fusce vulputate tellus maximus lacus lobortis, id dapibus orci aliquam. Duis enim mi, rhoncus ac dapibus ullamcorper, ultricies congue risus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Praesent id scelerisque augue. Vestibulum non ipsum augue. Quisque ipsum ipsum, condimentum non lacus lobortis, ultrices viverra odio. Fusce auctor dui lorem, sit amet bibendum diam ornare a. Pellentesque quis nunc tempor, interdum erat vulputate, efficitur mauris. Aenean suscipit turpis in tristique viverra. Ut sed scelerisque augue. Maecenas consectetur arcu non urna pretium auctor. Etiam congue posuere congue. Aliquam in facilisis dolor, in pellentesque lacus. In hac habitasse platea dictumst. Quisque aliquet et est a dapibus. Donec ornare ex velit, nec ullamcorper dolor ultrices nec. In semper turpis eget sagittis convallis. In dapibus pellentesque mi, ut vulputate enim.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Praesent ornare sem sed fringilla cursus. Cras eget egestas tellus, eget rutrum augue. Pellentesque laoreet ultrices libero, a condimentum dolor consectetur sit amet. Nulla imperdiet nisl enim, ut mattis libero condimentum sed. Donec ac leo fermentum, rutrum neque ac, sodales lacus. Curabitur porttitor justo et tristique imperdiet. Proin venenatis urna quis purus ullamcorper, vel accumsan quam commodo. Ut sed egestas magna, non pulvinar enim. Phasellus ac augue ultrices, cursus ligula pretium, dignissim sapien. Maecenas sagittis arcu quis eros posuere, eu suscipit elit rhoncus. Suspendisse eleifend quam a metus maximus, in ultricies eros faucibus. Mauris dapibus nisl dui, vel tristique turpis tempus id. Mauris consectetur nibh id tortor elementum, et feugiat ante interdum. Integer tristique odio sed purus malesuada sodales et et nisl.</p>', '20', 1, '2025-03-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-19 04:07:02', '2025-03-19 04:07:37');
INSERT INTO `blogs` (`id`, `slug`, `name`, `description`, `image`, `status`, `blog_date`, `meta_title`, `meta_description`, `og_title`, `og_description`, `twitter_title`, `twitter_description`, `keywords`, `created_at`, `updated_at`) VALUES
(9, 'blog-7', 'Blog 7', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce nec urna nibh. Duis vulputate aliquam fermentum. In in accumsan tortor. Phasellus rutrum fermentum lorem ut luctus. Sed feugiat nulla non nisi tincidunt, ut commodo est bibendum. Nullam vestibulum ut sem sit amet hendrerit. Cras imperdiet pharetra nisl sed tincidunt. Cras sed condimentum dolor. Aliquam erat volutpat. Donec eget cursus eros. Maecenas non quam ac dui lacinia sodales ut ut nisl. Nulla vitae sagittis orci. Mauris erat nisl, vulputate vel tellus a, feugiat euismod erat.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Donec nec tincidunt ligula. Proin id elit id lorem fermentum dapibus eget nec justo. Nulla eu purus nunc. Nulla mauris orci, fringilla vel viverra quis, tincidunt vel sem. Nam finibus tortor massa, in vehicula urna euismod quis. Praesent eleifend interdum quam, porta maximus orci aliquet nec. Donec ipsum purus, porttitor et magna in, porta suscipit nibh. Integer cursus mi justo, eu aliquet nisl finibus non. In luctus massa a mi faucibus malesuada. Suspendisse potenti. Vivamus viverra sit amet quam eget sollicitudin. Fusce vulputate tellus maximus lacus lobortis, id dapibus orci aliquam. Duis enim mi, rhoncus ac dapibus ullamcorper, ultricies congue risus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Praesent id scelerisque augue. Vestibulum non ipsum augue. Quisque ipsum ipsum, condimentum non lacus lobortis, ultrices viverra odio. Fusce auctor dui lorem, sit amet bibendum diam ornare a. Pellentesque quis nunc tempor, interdum erat vulputate, efficitur mauris. Aenean suscipit turpis in tristique viverra. Ut sed scelerisque augue. Maecenas consectetur arcu non urna pretium auctor. Etiam congue posuere congue. Aliquam in facilisis dolor, in pellentesque lacus. In hac habitasse platea dictumst. Quisque aliquet et est a dapibus. Donec ornare ex velit, nec ullamcorper dolor ultrices nec. In semper turpis eget sagittis convallis. In dapibus pellentesque mi, ut vulputate enim.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Praesent ornare sem sed fringilla cursus. Cras eget egestas tellus, eget rutrum augue. Pellentesque laoreet ultrices libero, a condimentum dolor consectetur sit amet. Nulla imperdiet nisl enim, ut mattis libero condimentum sed. Donec ac leo fermentum, rutrum neque ac, sodales lacus. Curabitur porttitor justo et tristique imperdiet. Proin venenatis urna quis purus ullamcorper, vel accumsan quam commodo. Ut sed egestas magna, non pulvinar enim. Phasellus ac augue ultrices, cursus ligula pretium, dignissim sapien. Maecenas sagittis arcu quis eros posuere, eu suscipit elit rhoncus. Suspendisse eleifend quam a metus maximus, in ultricies eros faucibus. Mauris dapibus nisl dui, vel tristique turpis tempus id. Mauris consectetur nibh id tortor elementum, et feugiat ante interdum. Integer tristique odio sed purus malesuada sodales et et nisl.</p>', '15', 1, '2025-03-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-19 04:07:32', '2025-03-19 04:07:36'),
(10, 'blog-8', 'Proin venenatis urna quis purus ullamcorper, vel accumsan quam commodo.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce nec urna nibh. Duis vulputate aliquam fermentum. In in accumsan tortor. Phasellus rutrum fermentum lorem ut luctus. Sed feugiat nulla non nisi tincidunt, ut commodo est bibendum. Nullam vestibulum ut sem sit amet hendrerit. Cras imperdiet pharetra nisl sed tincidunt. Cras sed condimentum dolor. Aliquam erat volutpat. Donec eget cursus eros. Maecenas non quam ac dui lacinia sodales ut ut nisl. Nulla vitae sagittis orci. Mauris erat nisl, vulputate vel tellus a, feugiat euismod erat.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Donec nec tincidunt ligula. Proin id elit id lorem fermentum dapibus eget nec justo. Nulla eu purus nunc. Nulla mauris orci, fringilla vel viverra quis, tincidunt vel sem. Nam finibus tortor massa, in vehicula urna euismod quis. Praesent eleifend interdum quam, porta maximus orci aliquet nec. Donec ipsum purus, porttitor et magna in, porta suscipit nibh. Integer cursus mi justo, eu aliquet nisl finibus non. In luctus massa a mi faucibus malesuada. Suspendisse potenti. Vivamus viverra sit amet quam eget sollicitudin. Fusce vulputate tellus maximus lacus lobortis, id dapibus orci aliquam. Duis enim mi, rhoncus ac dapibus ullamcorper, ultricies congue risus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Praesent id scelerisque augue. Vestibulum non ipsum augue. Quisque ipsum ipsum, condimentum non lacus lobortis, ultrices viverra odio. Fusce auctor dui lorem, sit amet bibendum diam ornare a. Pellentesque quis nunc tempor, interdum erat vulputate, efficitur mauris. Aenean suscipit turpis in tristique viverra. Ut sed scelerisque augue. Maecenas consectetur arcu non urna pretium auctor. Etiam congue posuere congue. Aliquam in facilisis dolor, in pellentesque lacus. In hac habitasse platea dictumst. Quisque aliquet et est a dapibus. Donec ornare ex velit, nec ullamcorper dolor ultrices nec. In semper turpis eget sagittis convallis. In dapibus pellentesque mi, ut vulputate enim.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Praesent ornare sem sed fringilla cursus. Cras eget egestas tellus, eget rutrum augue. Pellentesque laoreet ultrices libero, a condimentum dolor consectetur sit amet. Nulla imperdiet nisl enim, ut mattis libero condimentum sed. Donec ac leo fermentum, rutrum neque ac, sodales lacus. Curabitur porttitor justo et tristique imperdiet. Proin venenatis urna quis purus ullamcorper, vel accumsan quam commodo. Ut sed egestas magna, non pulvinar enim. Phasellus ac augue ultrices, cursus ligula pretium, dignissim sapien. Maecenas sagittis arcu quis eros posuere, eu suscipit elit rhoncus. Suspendisse eleifend quam a metus maximus, in ultricies eros faucibus. Mauris dapibus nisl dui, vel tristique turpis tempus id. Mauris consectetur nibh id tortor elementum, et feugiat ante interdum. Integer tristique odio sed purus malesuada sodales et et nisl.</p>', '19', 1, '2025-03-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-19 04:07:54', '2025-03-19 10:38:20'),
(11, 'blog-9', 'Blog 9', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Praesent id scelerisque augue. Vestibulum non ipsum augue. Quisque ipsum ipsum, condimentum non lacus lobortis, ultrices viverra odio. Fusce auctor dui lorem, sit amet bibendum diam ornare a. Pellentesque quis nunc tempor, interdum erat vulputate, efficitur mauris. Aenean suscipit turpis in tristique viverra. Ut sed scelerisque augue. Maecenas consectetur arcu non urna pretium auctor. Etiam congue posuere congue. Aliquam in facilisis dolor, in pellentesque lacus. In hac habitasse platea dictumst. Quisque aliquet et est a dapibus. Donec ornare ex velit, nec ullamcorper dolor ultrices nec. In semper turpis eget sagittis convallis. In dapibus pellentesque mi, ut vulputate enim.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Praesent ornare sem sed fringilla cursus. Cras eget egestas tellus, eget rutrum augue. Pellentesque laoreet ultrices libero, a condimentum dolor consectetur sit amet. Nulla imperdiet nisl enim, ut mattis libero condimentum sed. Donec ac leo fermentum, rutrum neque ac, sodales lacus. Curabitur porttitor justo et tristique imperdiet. Proin venenatis urna quis purus ullamcorper, vel accumsan quam commodo. Ut sed egestas magna, non pulvinar enim. Phasellus ac augue ultrices, cursus ligula pretium, dignissim sapien. Maecenas sagittis arcu quis eros posuere, eu suscipit elit rhoncus. Suspendisse eleifend quam a metus maximus, in ultricies eros faucibus. Mauris dapibus nisl dui, vel tristique turpis tempus id. Mauris consectetur nibh id tortor elementum, et feugiat ante interdum. Integer tristique odio sed purus malesuada sodales et et nisl.</p>', '7', 1, '2025-03-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-19 04:09:53', '2025-03-19 04:09:53'),
(12, 'blog-10', 'Praesent ornare sem sed fringilla cursus. Cras eget egestas tellus, eget rutrum augue.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Praesent id scelerisque augue. Vestibulum non ipsum augue. Quisque ipsum ipsum, condimentum non lacus lobortis, ultrices viverra odio. Fusce auctor dui lorem, sit amet bibendum diam ornare a. Pellentesque quis nunc tempor, interdum erat vulputate, efficitur mauris. Aenean suscipit turpis in tristique viverra. Ut sed scelerisque augue. Maecenas consectetur arcu non urna pretium auctor. Etiam congue posuere congue. Aliquam in facilisis dolor, in pellentesque lacus. In hac habitasse platea dictumst. Quisque aliquet et est a dapibus. Donec ornare ex velit, nec ullamcorper dolor ultrices nec. In semper turpis eget sagittis convallis. In dapibus pellentesque mi, ut vulputate enim.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Praesent ornare sem sed fringilla cursus. Cras eget egestas tellus, eget rutrum augue. Pellentesque laoreet ultrices libero, a condimentum dolor consectetur sit amet. Nulla imperdiet nisl enim, ut mattis libero condimentum sed. Donec ac leo fermentum, rutrum neque ac, sodales lacus. Curabitur porttitor justo et tristique imperdiet. Proin venenatis urna quis purus ullamcorper, vel accumsan quam commodo. Ut sed egestas magna, non pulvinar enim. Phasellus ac augue ultrices, cursus ligula pretium, dignissim sapien. Maecenas sagittis arcu quis eros posuere, eu suscipit elit rhoncus. Suspendisse eleifend quam a metus maximus, in ultricies eros faucibus. Mauris dapibus nisl dui, vel tristique turpis tempus id. Mauris consectetur nibh id tortor elementum, et feugiat ante interdum. Integer tristique odio sed purus malesuada sodales et et nisl.</p>', '35', 1, '2025-03-15', 'Blog 10 Meta Title', 'Blog 10 Meta Description', 'Blog 10 OG Title', 'Blog 10 OG Description', 'Blog 10 Twitter Title', 'Blog 10 Twitter Description', 'Blog 10 Meta Keywords', '2025-03-19 04:13:39', '2025-07-14 13:24:28');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `added_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `is_active`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'Google Nest', 1, NULL, '2025-02-14 07:42:12', '2025-02-14 07:56:36'),
(2, 'Ecobee', 1, NULL, '2025-02-14 07:45:00', '2025-02-14 07:45:00'),
(3, 'Honeywell', 1, NULL, '2025-02-14 07:46:02', '2025-02-14 07:46:02'),
(4, 'Ring', 1, NULL, '2025-02-14 07:52:37', '2025-02-14 07:52:37'),
(6, 'Test Brand', 1, NULL, '2025-03-20 04:08:28', '2025-03-20 04:08:28');

-- --------------------------------------------------------

--
-- Table structure for table `brand_translations`
--

CREATE TABLE `brand_translations` (
  `id` bigint(20) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `lang` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `logo` int(11) DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `og_title` varchar(191) DEFAULT NULL,
  `og_description` text DEFAULT NULL,
  `twitter_title` varchar(191) DEFAULT NULL,
  `twitter_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brand_translations`
--

INSERT INTO `brand_translations` (`id`, `brand_id`, `lang`, `name`, `slug`, `logo`, `meta_title`, `meta_description`, `og_title`, `og_description`, `twitter_title`, `twitter_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Google Nest', 'google-nest', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-14 07:42:12', '2025-02-14 07:56:17'),
(2, 2, 'en', 'Ecobee', 'ecobee', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-14 07:45:00', '2025-02-14 07:45:00'),
(3, 3, 'en', 'Honeywell', 'honeywell', 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-14 07:46:02', '2025-02-14 07:47:51'),
(4, 4, 'en', 'Ring', 'ring', 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-14 07:52:37', '2025-02-14 07:52:37'),
(5, 6, 'en', 'Test Brand', 'test-brand', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-20 04:08:28', '2025-03-20 04:08:28');

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `value` longtext DEFAULT NULL,
  `lang` varchar(30) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `description1` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `type`, `value`, `lang`, `created_at`, `updated_at`, `description1`) VALUES
(2, 'system_default_currency', '29', NULL, '2018-10-16 08:36:58', '2023-05-30 15:22:19', NULL),
(3, 'currency_format', '1', NULL, '2018-10-17 10:01:59', '2018-10-17 10:01:59', NULL),
(4, 'symbol_format', '3', NULL, '2018-10-17 10:01:59', '2023-06-14 17:48:44', NULL),
(5, 'no_of_decimals', '2', NULL, '2018-10-17 10:01:59', '2023-07-08 14:34:41', NULL),
(76, 'frontend_copyright_text', '© 2023 ITS All Rights Reserved | WEBSITE BY TOMSHER', NULL, '2020-11-16 15:26:36', '2020-11-16 15:26:36', NULL),
(78, 'facebook_link', 'https://www.facebook.com/abc', NULL, '2020-11-16 15:26:36', '2025-07-23 04:35:41', NULL),
(79, 'twitter_link', 'https://twitter.com/?lang=en', NULL, '2020-11-16 15:26:36', '2024-02-09 17:51:44', NULL),
(80, 'instagram_link', 'https://www.instagram.com/', NULL, '2020-11-16 15:26:36', '2024-02-09 17:51:44', NULL),
(81, 'youtube_link', 'https://www.youtube.com/', NULL, '2020-11-16 15:26:36', '2024-02-09 17:51:44', NULL),
(82, 'linkedin_link', 'https://www.linkedin.com/', NULL, '2020-11-16 15:26:36', '2024-02-09 17:51:44', NULL),
(132, 'home_large_banner', '[\"15\"]', NULL, '2023-05-29 17:10:44', '2024-01-23 15:08:18', NULL),
(134, 'site_name', NULL, NULL, '2023-06-01 15:39:57', '2023-06-01 15:39:57', NULL),
(138, 'flat_rate_shipping_cost', '100', NULL, '2023-07-06 13:58:44', '2023-07-07 13:10:34', NULL),
(145, 'free_shipping_status', '1', NULL, '2023-07-07 13:31:51', '2025-03-28 04:59:25', NULL),
(146, 'free_shipping_min_amount', '1000', NULL, '2023-07-07 13:31:51', '2025-03-28 04:59:25', NULL),
(147, 'free_shipping_max_amount', '0', NULL, '2023-07-07 13:31:51', '2024-02-03 14:32:30', NULL),
(154, 'helpline_number', '+9718284153', NULL, '2023-07-08 10:52:39', '2024-12-27 07:37:47', NULL),
(180, 'default_shipping_amount', '20', NULL, '2024-02-03 14:15:15', '2025-03-28 04:59:25', NULL),
(181, 'default_return_time', '7', NULL, '2024-02-03 14:32:22', '2025-03-28 05:00:11', NULL),
(182, 'social_title', 'Follow Us', NULL, '2024-02-09 17:51:44', '2024-11-15 18:14:56', NULL),
(183, 'social_sub_title', 'Stay current with updates from our social channels.', NULL, '2024-02-09 17:51:44', '2024-02-09 17:51:44', NULL),
(184, 'payment_method_images', '79', NULL, '2024-02-09 17:51:44', '2024-11-21 15:56:55', NULL),
(185, 'footer_address', 'Xilliams Corner Wine © 2017. 1112 A \r\nMarket St # Ste B22, Charlottesville, CA \r\n45565', 'en', '2024-02-09 17:58:38', '2025-07-16 14:00:59', NULL),
(186, 'footer_phone', '+971 4 547 9552', NULL, '2024-02-09 17:58:38', '2025-04-16 04:54:34', NULL),
(187, 'footer_email', 'info@homeiq.ae', NULL, '2024-02-09 17:58:38', '2025-03-17 04:29:03', NULL),
(188, 'working_hours', 'Mon - Fri: 10:00 - 18:00', 'en', '2024-02-09 17:58:38', '2024-02-09 17:58:38', NULL),
(189, 'footer_working_hours', 'Mon - Fri: 10:00 - 18:00', 'en', '2024-02-09 18:10:35', '2024-02-09 18:10:35', NULL),
(190, 'helpline_title', 'mega sale discount all item up to 15% for christmas event', NULL, '2024-02-09 18:42:41', '2024-11-30 17:12:10', NULL),
(191, 'vat_percentage', '5', NULL, '2024-02-09 21:54:38', '2024-02-09 21:59:23', NULL),
(192, 'discover_categories', '[\"1\",\"4\",\"2\",\"5\"]', 'en', '2024-11-19 14:27:32', '2024-11-25 19:23:17', NULL),
(193, 'home_mid_banner', '[\"1\",\"2\"]', 'en', '2024-11-19 18:32:53', '2024-11-19 14:35:52', NULL),
(194, 'new_arrival_products', '[\"30\",\"32\",\"33\",\"34\"]', 'en', '2024-11-19 15:13:05', '2024-11-25 19:18:36', NULL),
(195, 'home_occasions', '[\"2\",\"1\",\"3\",\"4\",\"5\",\"6\"]', 'en', '2024-11-19 15:27:41', '2024-11-25 19:26:14', NULL),
(196, 'home_center_banner', '[\"4\"]', 'en', '2024-11-19 19:59:12', '2024-11-21 13:50:17', NULL),
(197, 'special_products', '[\"32\",\"34\",\"35\",\"36\"]', 'en', '2024-11-19 16:03:30', '2024-11-25 21:08:16', NULL),
(198, 'home_mid_section_banner', '[\"5\",\"6\",\"7\"]', NULL, '2024-11-19 20:05:19', '2024-11-21 14:09:56', NULL),
(199, 'header_category_logo', '87', NULL, '2024-11-28 23:21:50', '2024-11-28 23:23:18', NULL),
(200, 'header_category_title_1', 'SHOP BY CATEGORY', NULL, '2024-11-28 23:21:50', '2024-11-28 23:23:19', NULL),
(201, 'header_categories', '[\"1\",\"4\",\"2\"]', NULL, '2024-11-28 23:21:50', '2024-11-28 23:23:19', NULL),
(202, 'header_category_title_2', 'SHOP BY BRANDS', NULL, '2024-11-28 23:21:51', '2024-11-28 23:23:19', NULL),
(203, 'header_brands', '[\"3\",\"2\",\"1\",\"4\"]', NULL, '2024-11-28 23:21:51', '2024-11-28 23:23:19', NULL),
(204, 'header_category_title_3', 'SHOP BY OCCASSION', NULL, '2024-11-28 23:21:51', '2024-11-28 23:23:19', NULL),
(218, 'footer_contact_title', 'Head Office', NULL, '2025-03-17 04:29:03', '2025-07-16 14:00:59', NULL),
(219, 'footer_address_title', 'Address', 'en', '2025-03-17 04:29:03', '2025-03-17 04:29:03', NULL),
(220, 'footer_logo', '40', NULL, '2025-03-17 04:33:12', '2025-07-16 14:01:11', NULL),
(221, 'about_us_description', 'Smart Living, Simplified.', 'en', '2025-03-17 04:33:12', '2025-03-17 04:33:12', NULL),
(222, 'footer_moving_text', 'Smart Living, Simplified.', NULL, '2025-03-17 04:41:13', '2025-03-17 04:41:13', NULL),
(223, 'footer_newsletter_title', 'News letter', NULL, '2025-03-17 04:41:13', '2025-07-16 13:59:32', NULL),
(224, 'footer_newsletter_subtitle', 'Enter your email address', NULL, '2025-03-17 04:41:13', '2025-07-16 13:59:32', NULL),
(225, 'footer_newsletter_button', 'Subscribe Now', 'en', '2025-03-17 04:41:13', '2025-03-17 04:41:13', NULL),
(226, 'frontend_copyright_text', '©{year} - All rights reserved to HomeIQ', 'en', '2025-03-17 04:41:34', '2025-04-16 05:32:02', NULL),
(227, 'whatsapp_link', NULL, NULL, '2025-03-17 04:41:34', '2025-03-17 04:41:34', NULL),
(228, 'home_categories', NULL, 'en', '2025-03-17 08:13:08', '2025-07-16 08:38:53', NULL),
(229, 'home_products', '[\"1\",\"2\",\"6\",\"7\",\"8\",\"9\",\"18\",\"19\",\"20\",\"21\"]', 'en', '2025-03-18 02:18:10', '2025-04-16 07:02:32', NULL),
(230, 'home_services', '[\"20\",\"16\",\"17\",\"18\",\"19\"]', 'en', '2025-03-18 02:33:16', '2025-05-03 12:27:40', NULL),
(231, 'decimal_separator', '1', NULL, '2020-12-31 00:45:56', '2020-12-31 00:45:56', NULL),
(232, 'default_service_whatsapp', '971504062668', NULL, '2025-04-02 01:57:54', '2025-04-02 02:00:28', NULL),
(233, 'footer_category_title_1', 'Shop', NULL, '2025-04-02 02:22:27', '2025-04-02 02:22:27', NULL),
(234, 'footer_categories', '[\"1\",\"2\",\"3\",\"4\",\"6\"]', NULL, '2025-04-02 02:22:27', '2025-04-02 02:22:27', NULL),
(235, 'footer_category_title_2', 'Services', NULL, '2025-04-02 02:22:27', '2025-04-02 02:22:27', NULL),
(236, 'footer_services', '[\"12\",\"13\",\"14\",\"15\",\"16\",\"17\"]', NULL, '2025-04-02 02:22:27', '2025-04-02 02:22:27', NULL),
(237, 'footer_category_title_3', 'Resources', NULL, '2025-04-02 02:22:27', '2025-04-02 02:22:27', NULL),
(238, 'footer_category_title_4', 'Company', NULL, '2025-04-02 02:22:27', '2025-04-02 02:22:27', NULL),
(239, 'website_name', 'Kubic', NULL, '2025-07-16 14:18:26', '2025-07-23 06:30:53', NULL),
(240, 'site_logo', '41', NULL, '2025-07-16 14:18:26', '2025-07-16 14:20:06', NULL),
(241, 'site_icon', NULL, NULL, '2025-07-16 14:18:26', '2025-07-16 14:18:26', NULL),
(242, 'base_color', NULL, NULL, '2025-07-16 14:18:26', '2025-07-16 14:18:26', NULL),
(243, 'base_hov_color', NULL, NULL, '2025-07-16 14:18:26', '2025-07-16 14:18:26', NULL),
(246, 'why_choose_us', NULL, NULL, '2025-07-17 14:26:23', '2025-07-21 13:20:21', NULL),
(247, 'why_choose_us_title', 'Hello', NULL, '2025-07-17 14:58:49', '2025-07-24 06:49:39', NULL),
(248, 'why_choose_us_subtitle', NULL, NULL, '2025-07-17 14:58:49', '2025-07-22 05:26:57', NULL),
(249, 'site_logo_white', '45', NULL, '2025-07-18 06:39:57', '2025-07-23 06:33:35', NULL),
(250, 'site_logo_colored', '43', NULL, '2025-07-18 06:39:57', '2025-07-23 06:30:53', NULL),
(251, 'why_choose_us_title1', 'Test', NULL, '2025-07-22 05:26:57', '2025-07-22 05:26:57', NULL),
(252, 'why_choose_us_subtitle1', 'Test sub', NULL, '2025-07-22 05:26:57', '2025-07-22 05:26:57', NULL),
(253, 'why_choose_us_image1', '39', NULL, '2025-07-22 05:26:57', '2025-07-22 05:28:48', NULL),
(254, 'why_choose_us_title2', 'title 2', NULL, '2025-07-22 05:30:28', '2025-07-22 05:30:28', NULL),
(255, 'why_choose_us_subtitle2', 'title 22', NULL, '2025-07-22 05:30:28', '2025-07-22 05:30:28', NULL),
(256, 'why_choose_us_image2', '37', NULL, '2025-07-22 05:30:28', '2025-07-22 05:30:28', NULL),
(257, 'why_choose_us_title3', NULL, NULL, '2025-07-22 05:30:28', '2025-07-22 05:30:28', NULL),
(258, 'why_choose_us_subtitle3', NULL, NULL, '2025-07-22 05:30:28', '2025-07-22 05:30:28', NULL),
(259, 'why_choose_us_image3', NULL, NULL, '2025-07-22 05:30:28', '2025-07-22 05:30:28', NULL),
(260, 'why_choose_us_title4', NULL, NULL, '2025-07-22 05:30:28', '2025-07-22 05:30:28', NULL),
(261, 'why_choose_us_subtitle4', NULL, NULL, '2025-07-22 05:30:28', '2025-07-22 05:30:28', NULL),
(262, 'why_choose_us_image4', NULL, NULL, '2025-07-22 05:30:28', '2025-07-22 05:30:28', NULL),
(263, 'why_choose_us_title5', NULL, NULL, '2025-07-22 05:30:28', '2025-07-22 05:30:28', NULL),
(264, 'why_choose_us_subtitle5', NULL, NULL, '2025-07-22 05:30:28', '2025-07-22 05:30:28', NULL),
(265, 'why_choose_us_image5', NULL, NULL, '2025-07-22 05:30:28', '2025-07-22 05:30:28', NULL),
(266, 'why_choose_us_title6', NULL, NULL, '2025-07-22 05:30:28', '2025-07-22 05:30:28', NULL),
(267, 'why_choose_us_subtitle6', NULL, NULL, '2025-07-22 05:30:28', '2025-07-22 05:30:28', NULL),
(268, 'why_choose_us_image6', NULL, NULL, '2025-07-22 05:30:28', '2025-07-22 05:30:28', NULL),
(269, 'home_projects', '[\"1\",\"2\"]', 'en', '2025-07-22 16:10:31', '2025-07-23 07:07:43', NULL),
(270, 'instagram_link', 'https://www.instagram.com/', 'en', '2025-07-23 04:35:41', '2025-07-23 04:35:41', NULL),
(271, 'youtube_link', 'https://www.youtube.com/', 'en', '2025-07-23 04:35:41', '2025-07-23 04:35:41', NULL),
(272, 'linkedin_link', 'https://www.linkedin.com/', 'en', '2025-07-23 04:35:41', '2025-07-23 04:35:41', NULL),
(273, 'site_home_image', '52', NULL, '2025-07-23 10:34:39', '2025-07-23 10:34:39', NULL),
(274, 'site_about_image', '53', NULL, '2025-07-23 10:34:39', '2025-07-23 10:34:39', NULL),
(275, 'site_services_image', '54', NULL, '2025-07-23 10:34:39', '2025-07-23 10:34:39', NULL),
(276, 'site_projects_image', '49', NULL, '2025-07-23 10:34:39', '2025-07-23 10:34:39', NULL),
(277, 'site_contact_image', '48', NULL, '2025-07-23 10:34:39', '2025-07-23 10:34:39', NULL),
(278, 'site_default_image', '51', NULL, '2025-07-23 10:47:02', '2025-07-23 10:47:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `temp_user_id` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_stock_id` int(11) DEFAULT NULL,
  `variation` text DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `price` double(20,2) DEFAULT 0.00,
  `offer_price` double(20,2) DEFAULT NULL,
  `offer_id` int(11) DEFAULT NULL,
  `offer_tag` varchar(255) DEFAULT NULL,
  `tax` double(20,2) DEFAULT 0.00,
  `shipping_cost` double(20,2) DEFAULT 0.00,
  `shipping_type` varchar(30) NOT NULL DEFAULT '',
  `discount` double(10,2) NOT NULL DEFAULT 0.00,
  `offer_discount` double(10,2) NOT NULL DEFAULT 0.00,
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_applied` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `temp_user_id`, `product_id`, `product_stock_id`, `variation`, `quantity`, `price`, `offer_price`, `offer_id`, `offer_tag`, `tax`, `shipping_cost`, `shipping_type`, `discount`, `offer_discount`, `coupon_code`, `coupon_applied`, `status`, `created_at`, `updated_at`) VALUES
(5, 65, NULL, 1, 1, NULL, 2, 999.00, 999.00, NULL, '', 39.96, 0.00, 'free', 0.00, 0.00, NULL, 0, 0, '2025-04-24 13:40:10', '2025-04-24 14:20:27'),
(7, 65, NULL, 9, 7, NULL, 1, 1119.00, 1007.10, NULL, '10% OFF', 0.00, 0.00, 'free', 0.00, 0.00, NULL, 0, 0, '2025-04-24 13:41:43', '2025-04-24 14:20:27'),
(8, 65, NULL, 18, 44, NULL, 2, 180.00, 180.00, NULL, '', 18.00, 0.00, 'free', 0.00, 0.00, NULL, 0, 0, '2025-04-24 13:42:25', '2025-04-24 14:20:27'),
(10, NULL, '31d61103-9642-41d4-9be3-2d7a4135d6e6', 1, 1, NULL, 1, 999.00, 999.00, NULL, '', 19.98, 0.00, 'free', 0.00, 0.00, NULL, 0, 0, '2025-05-16 13:26:29', '2025-05-16 13:47:02'),
(11, 1, NULL, 19, 45, NULL, 1, 1900.00, 1900.00, NULL, '', 95.00, 0.00, 'free', 0.00, 0.00, NULL, 0, 0, '2025-07-14 11:55:58', '2025-07-14 11:59:43'),
(12, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:19:26', '2025-07-14 14:19:26'),
(13, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:20:16', '2025-07-14 14:20:16'),
(14, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:20:40', '2025-07-14 14:20:40'),
(15, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:20:44', '2025-07-14 14:20:44'),
(16, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:21:21', '2025-07-14 14:21:21'),
(17, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:21:22', '2025-07-14 14:21:22'),
(18, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:24:01', '2025-07-14 14:24:01'),
(19, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:24:05', '2025-07-14 14:24:05'),
(20, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:24:34', '2025-07-14 14:24:34'),
(21, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:24:37', '2025-07-14 14:24:37'),
(22, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:24:56', '2025-07-14 14:24:56'),
(23, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:26:07', '2025-07-14 14:26:07'),
(24, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:26:08', '2025-07-14 14:26:08'),
(26, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:34:59', '2025-07-14 14:34:59'),
(27, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:35:00', '2025-07-14 14:35:00'),
(28, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:35:23', '2025-07-14 14:35:23'),
(29, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:35:25', '2025-07-14 14:35:25'),
(30, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:36:12', '2025-07-14 14:36:12'),
(31, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:36:14', '2025-07-14 14:36:14'),
(32, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:36:28', '2025-07-14 14:36:28'),
(33, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:36:29', '2025-07-14 14:36:29'),
(34, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:37:33', '2025-07-14 14:37:33'),
(35, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:37:34', '2025-07-14 14:37:34'),
(36, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:38:15', '2025-07-14 14:38:15'),
(37, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:38:42', '2025-07-14 14:38:42'),
(38, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:40:30', '2025-07-14 14:40:30'),
(39, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:42:39', '2025-07-14 14:42:39'),
(40, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:43:13', '2025-07-14 14:43:13'),
(41, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:43:22', '2025-07-14 14:43:22'),
(42, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:43:23', '2025-07-14 14:43:23'),
(43, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:46:56', '2025-07-14 14:46:56'),
(44, NULL, 'eyJpdiI6IkFnZFp6WERJdzNCVThTaFlpQ1Z5dWc9PSIsInZhbHVlIjoiNTFaTDJmR0laU2ltY1podkwwRXRFbVh1OERHeHNOUzlCVmtYSCswVjVCeW51S08rSWxGYXZ4c2VwR3I4ZFQ1Z1NCS2VqRTZneDFMUy9KLytSd0dnQ2VwUVVLNkRBTVlTZ1pvb2ZWS28yZHM9IiwibWFjIjoiMGFlYTU1NTY4YmFmN2FhZTgyZTU4YWZkMjY2YmI1MGU', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-14 14:46:59', '2025-07-14 14:46:59'),
(47, NULL, 'guest_6875e9c24d85e0.09039629', 24, 50, NULL, 1, 250.00, 250.00, NULL, '', 12.50, 0.00, '', 0.00, 0.00, NULL, 0, 0, '2025-07-15 05:40:18', '2025-07-15 05:40:18');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `level`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 0, 'Smart Thermostats', 0, 1, '2025-02-14 07:36:00', '2025-02-14 07:36:00'),
(2, 0, 'Security Cameras', 0, 1, '2025-02-14 07:36:37', '2025-02-14 07:36:37'),
(3, 0, 'Smart Smoke Detectors', 0, 1, '2025-02-14 07:37:39', '2025-02-14 07:37:39'),
(4, 0, 'Smart Locks & Doorbells', 0, 1, '2025-02-14 07:38:06', '2025-02-14 07:38:06'),
(6, 0, 'Test Category', 0, 1, '2025-03-20 04:08:28', '2025-03-20 04:08:28');

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` bigint(20) NOT NULL,
  `category_id` int(11) NOT NULL,
  `lang` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `icon` int(11) DEFAULT NULL,
  `meta_title` mediumtext DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `og_title` varchar(191) DEFAULT NULL,
  `og_description` text DEFAULT NULL,
  `twitter_title` varchar(191) DEFAULT NULL,
  `twitter_description` text DEFAULT NULL,
  `meta_keyword` mediumtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `lang`, `name`, `slug`, `icon`, `meta_title`, `meta_description`, `og_title`, `og_description`, `twitter_title`, `twitter_description`, `meta_keyword`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Smart Thermostats', 'smart-thermostats', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-14 07:36:00', '2025-03-17 07:31:07'),
(2, 2, 'en', 'Security Cameras', 'security-cameras', 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-14 07:36:37', '2025-03-17 07:30:54'),
(3, 3, 'en', 'Smart Smoke Detectors', 'smart-smoke-detectors', 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-14 07:37:39', '2025-03-17 07:30:37'),
(4, 4, 'en', 'Smart Locks & Doorbells', 'smart-locks-doorbells', 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-14 07:38:06', '2025-03-17 07:30:05'),
(5, 6, 'en', 'Test Category', 'test-category', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-20 04:08:28', '2025-03-20 04:08:28');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `access_key` text DEFAULT NULL,
  `user_created` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `subject`, `message`, `access_key`, `user_created`, `created_at`, `updated_at`) VALUES
(1, 'Jisha P', 'jisha@yopmail.com', '+971568650838', 'test subject', 'qqqqqqqqqqqqqq wwwwwwwwwwwwwwwwww eeeeeeeeeeeeeeeeeeeee rrrrrrrrrrrrrrrrrrrrrrrrrrrr ttttttttttttttttttttttttttt yyyyyyyyyyyyyyyyyyyyyyyyyyy uuuuuuuuuuuuuuuuuuuuuuuu iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii ooooooooooooooooooooooooooooooooooooo ppppppppppppppppppppppppppppppp aaaaaaaaaaaaaaaaaaaaaaaaaaa sssssssssssssssssssssssss dddddddddddddddddddddddd fffffffffffffffffffffffffffffffff ggggggggggggggg', NULL, 0, '2025-03-19 07:08:16', '2025-03-19 07:08:16'),
(3, 'mohammed', 'test@gmail.com', NULL, NULL, 'mohammedmohammedmohammedmohammed', '3QAYJW7g', 1, '2025-07-17 10:29:01', '2025-07-22 14:47:32'),
(4, 'mohammed', 'test@gmail.com', '971555347877', NULL, 'requiredrequiredrequired', NULL, 0, '2025-07-23 09:48:17', '2025-07-23 09:48:17'),
(5, 'mohammed', 'test@gmail.com', '+44555343434', NULL, 'mohammedmohammedmohammed', NULL, 0, '2025-07-23 09:50:16', '2025-07-23 09:50:16'),
(6, 'mohammed', 'test@gmail.com', '971555347877', NULL, 'mohammedmohammedmohammed', NULL, 0, '2025-07-23 17:43:00', '2025-07-23 17:43:00'),
(7, 'Mohammed', 'johndoe@example.com', '971555347877', NULL, 'MohammedMohammed', NULL, 0, '2025-07-23 17:43:21', '2025-07-23 17:43:21');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `countryCode` char(2) NOT NULL DEFAULT '',
  `countryName` varchar(100) NOT NULL DEFAULT '',
  `currencyCode` char(3) DEFAULT NULL,
  `fipsCode` char(2) DEFAULT NULL,
  `isoNumeric` char(4) DEFAULT NULL,
  `north` varchar(30) DEFAULT NULL,
  `south` varchar(30) DEFAULT NULL,
  `east` varchar(30) DEFAULT NULL,
  `west` varchar(30) DEFAULT NULL,
  `capital` varchar(100) DEFAULT NULL,
  `continentName` varchar(100) DEFAULT NULL,
  `continent` char(2) DEFAULT NULL,
  `languages` varchar(100) DEFAULT NULL,
  `isoAlpha3` char(3) DEFAULT NULL,
  `geonameId` int(11) DEFAULT NULL,
  `telephonePrefix` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `countryCode`, `countryName`, `currencyCode`, `fipsCode`, `isoNumeric`, `north`, `south`, `east`, `west`, `capital`, `continentName`, `continent`, `languages`, `isoAlpha3`, `geonameId`, `telephonePrefix`) VALUES
(1, 'AD', 'Andorra', 'EUR', 'AN', '020', '42.65604389629997', '42.42849259876837', '1.7865427778319827', '1.4071867141112762', 'Andorra la Vella', 'Europe', 'EU', 'ca', 'AND', 3041565, '+376'),
(2, 'AE', 'United Arab Emirates', 'AED', 'AE', '784', '26.08415985107422', '22.633329391479492', '56.38166046142578', '51.58332824707031', 'Abu Dhabi', 'Asia', 'AS', 'ar-AE,fa,en,hi,ur', 'ARE', 290557, '+971'),
(3, 'AF', 'Afghanistan', 'AFN', 'AF', '004', '38.483418', '29.377472', '74.879448', '60.478443', 'Kabul', 'Asia', 'AS', 'fa-AF,ps,uz-AF,tk', 'AFG', 1149361, '+93'),
(4, 'AG', 'Antigua and Barbuda', 'XCD', 'AC', '028', '17.729387', '16.996979', '-61.672421', '-61.906425', 'St. John\'s', 'North America', 'NA', 'en-AG', 'ATG', 3576396, '+1-268'),
(5, 'AI', 'Anguilla', 'XCD', 'AV', '660', '18.283424', '18.166815', '-62.971359', '-63.172901', 'The Valley', 'North America', 'NA', 'en-AI', 'AIA', 3573511, '+1-264'),
(6, 'AL', 'Albania', 'ALL', 'AL', '008', '42.665611', '39.648361', '21.068472', '19.293972', 'Tirana', 'Europe', 'EU', 'sq,el', 'ALB', 783754, '+355'),
(7, 'AM', 'Armenia', 'AMD', 'AM', '051', '41.301834', '38.830528', '46.772435045159995', '43.44978', 'Yerevan', 'Asia', 'AS', 'hy', 'ARM', 174982, '+374'),
(8, 'AO', 'Angola', 'AOA', 'AO', '024', '-4.376826', '-18.042076', '24.082119', '11.679219', 'Luanda', 'Africa', 'AF', 'pt-AO', 'AGO', 3351879, '+244'),
(9, 'AQ', 'Antarctica', '', 'AY', '010', '-60.515533', '-89.9999', '179.9999', '-179.9999', '', 'Antarctica', 'AN', '', 'ATA', 6697173, '+672'),
(10, 'AR', 'Argentina', 'ARS', 'AR', '032', '-21.781277', '-55.061314', '-53.591835', '-73.58297', 'Buenos Aires', 'South America', 'SA', 'es-AR,en,it,de,fr,gn', 'ARG', 3865483, '+54'),
(11, 'AS', 'American Samoa', 'USD', 'AQ', '016', '-11.0497', '-14.382478', '-169.416077', '-171.091888', 'Pago Pago', 'Oceania', 'OC', 'en-AS,sm,to', 'ASM', 5880801, '+1-684'),
(12, 'AT', 'Austria', 'EUR', 'AU', '040', '49.0211627691393', '46.3726520216244', '17.1620685652599', '9.53095237240833', 'Vienna', 'Europe', 'EU', 'de-AT,hr,hu,sl', 'AUT', 2782113, '+43'),
(13, 'AU', 'Australia', 'AUD', 'AS', '036', '-10.062805', '-43.64397', '153.639252', '112.911057', 'Canberra', 'Oceania', 'OC', 'en-AU', 'AUS', 2077456, '+61'),
(14, 'AW', 'Aruba', 'AWG', 'AA', '533', '12.623718127152925', '12.411707706190716', '-69.86575120104982', '-70.0644737196045', 'Oranjestad', 'North America', 'NA', 'nl-AW,es,en', 'ABW', 3577279, '+297'),
(15, 'AX', 'Åland Islands', 'EUR', '', '248', '60.488861', '59.90675', '21.011862', '19.317694', 'Mariehamn', 'Europe', 'EU', 'sv-AX', 'ALA', 661882, '+358'),
(16, 'AZ', 'Azerbaijan', 'AZN', 'AJ', '031', '41.90564', '38.38915252685547', '50.370083', '44.774113', 'Baku', 'Asia', 'AS', 'az,ru,hy', 'AZE', 587116, '+994'),
(17, 'BA', 'Bosnia and Herzegovina', 'BAM', 'BK', '070', '45.239193', '42.546112', '19.622223', '15.718945', 'Sarajevo', 'Europe', 'EU', 'bs,hr-BA,sr-BA', 'BIH', 3277605, '+387'),
(18, 'BB', 'Barbados', 'BBD', 'BB', '052', '13.327257', '13.039844', '-59.420376', '-59.648922', 'Bridgetown', 'North America', 'NA', 'en-BB', 'BRB', 3374084, '+1-246'),
(19, 'BD', 'Bangladesh', 'BDT', 'BG', '050', '26.631945', '20.743334', '92.673668', '88.028336', 'Dhaka', 'Asia', 'AS', 'bn-BD,en', 'BGD', 1210997, '+880'),
(20, 'BE', 'Belgium', 'EUR', 'BE', '056', '51.505444', '49.49361', '6.403861', '2.546944', 'Brussels', 'Europe', 'EU', 'nl-BE,fr-BE,de-BE', 'BEL', 2802361, '+32'),
(21, 'BF', 'Burkina Faso', 'XOF', 'UV', '854', '15.082593', '9.401108', '2.405395', '-5.518916', 'Ouagadougou', 'Africa', 'AF', 'fr-BF', 'BFA', 2361809, '+226'),
(22, 'BG', 'Bulgaria', 'BGN', 'BU', '100', '44.21764', '41.242084', '28.612167', '22.371166', 'Sofia', 'Europe', 'EU', 'bg,tr-BG,rom', 'BGR', 732800, '+359'),
(23, 'BH', 'Bahrain', 'BHD', 'BA', '048', '26.282583', '25.796862', '50.664471', '50.45414', 'Manama', 'Asia', 'AS', 'ar-BH,en,fa,ur', 'BHR', 290291, '+973'),
(24, 'BI', 'Burundi', 'BIF', 'BY', '108', '-2.310123', '-4.465713', '30.847729', '28.993061', 'Bujumbura', 'Africa', 'AF', 'fr-BI,rn', 'BDI', 433561, '+257'),
(25, 'BJ', 'Benin', 'XOF', 'BN', '204', '12.418347', '6.225748', '3.851701', '0.774575', 'Porto-Novo', 'Africa', 'AF', 'fr-BJ', 'BEN', 2395170, '+229'),
(26, 'BL', 'Saint Barthélemy', 'EUR', 'TB', '652', '17.928808791949283', '17.878183227405575', '-62.788983372985854', '-62.8739118253784', 'Gustavia', 'North America', 'NA', 'fr', 'BLM', 3578476, '+590'),
(27, 'BM', 'Bermuda', 'BMD', 'BD', '060', '32.393833', '32.246639', '-64.651993', '-64.89605', 'Hamilton', 'North America', 'NA', 'en-BM,pt', 'BMU', 3573345, '+1-441'),
(28, 'BN', 'Brunei Darussalam', 'BND', 'BX', '096', '5.047167', '4.003083', '115.359444', '114.071442', 'Bandar Seri Begawan', 'Asia', 'AS', 'ms-BN,en-BN', 'BRN', 1820814, '+673'),
(29, 'BO', 'Bolivia', 'BOB', 'BL', '068', '-9.680567', '-22.896133', '-57.45809600000001', '-69.640762', 'Sucre', 'South America', 'SA', 'es-BO,qu,ay', 'BOL', 3923057, '+591'),
(30, 'BQ', 'Bonaire, Sint Eustatius and Saba', 'USD', '', '535', '12.304535', '12.017149', '-68.192307', '-68.416458', '', 'North America', 'NA', 'nl,pap,en', 'BES', 7626844, '+599'),
(31, 'BR', 'Brazil', 'BRL', 'BR', '076', '5.264877', '-33.750706', '-32.392998', '-73.985535', 'Brasília', 'South America', 'SA', 'pt-BR,es,en,fr', 'BRA', 3469034, '+55'),
(32, 'BS', 'Bahamas', 'BSD', 'BF', '044', '26.919243', '22.852743', '-74.423874', '-78.995911', 'Nassau', 'North America', 'NA', 'en-BS', 'BHS', 3572887, '+1-242'),
(33, 'BT', 'Bhutan', 'BTN', 'BT', '064', '28.323778', '26.70764', '92.125191', '88.75972', 'Thimphu', 'Asia', 'AS', 'dz', 'BTN', 1252634, '+975'),
(34, 'BV', 'Bouvet Island', 'NOK', 'BV', '074', '-54.400322', '-54.462383', '3.487976', '3.335499', '', 'Antarctica', 'AN', '', 'BVT', 3371123, '+47'),
(35, 'BW', 'Botswana', 'BWP', 'BC', '072', '-17.780813', '-26.907246', '29.360781', '19.999535', 'Gaborone', 'Africa', 'AF', 'en-BW,tn-BW', 'BWA', 933860, '+267'),
(36, 'BY', 'Belarus', 'BYR', 'BO', '112', '56.165806', '51.256416', '32.770805', '23.176889', 'Minsk', 'Europe', 'EU', 'be,ru', 'BLR', 630336, '+375'),
(37, 'BZ', 'Belize', 'BZD', 'BH', '084', '18.496557', '15.8893', '-87.776985', '-89.224815', 'Belmopan', 'North America', 'NA', 'en-BZ,es', 'BLZ', 3582678, '+501'),
(38, 'CA', 'Canada', 'CAD', 'CA', '124', '83.110626', '41.67598', '-52.636291', '-141', 'Ottawa', 'North America', 'NA', 'en-CA,fr-CA,iu', 'CAN', 6251999, '+1'),
(39, 'CC', 'Cocos [Keeling] Islands', 'AUD', 'CK', '166', '-12.072459094', '-12.208725839', '96.929489344', '96.816941408', 'West Island', 'Asia', 'AS', 'ms-CC,en', 'CCK', 1547376, '+61'),
(40, 'CD', 'Democratic Republic of the Congo', 'COD', 'CD', '180', '5.386098', '-13.455675', '31.305912', '12.204144', 'Kinshasa', 'Africa', 'AF', 'fr-CD,ln,kg', 'COD', 203312, '+243'),
(41, 'CF', 'Central African Republic', 'XAF', 'CT', '140', '11.007569', '2.220514', '27.463421', '14.420097', 'Bangui', 'Africa', 'AF', 'fr-CF,sg,ln,kg', 'CAF', 239880, '+236'),
(42, 'CG', 'Republic of the Congo', 'XAF', 'CF', '178', '3.703082', '-5.027223', '18.649839', '11.205009', 'Brazzaville', 'Africa', 'AF', 'fr-CG,kg,ln-CG', 'COG', 2260494, '+242'),
(43, 'CH', 'Switzerland', 'CHF', 'SZ', '756', '47.805332', '45.825695', '10.491472', '5.957472', 'Berne', 'Europe', 'EU', 'de-CH,fr-CH,it-CH,rm', 'CHE', 2658434, '+41	'),
(44, 'CI', 'Ivory Coast', 'XOF', 'IV', '384', '10.736642', '4.357067', '-2.494897', '-8.599302', 'Yamoussoukro', 'Africa', 'AF', 'fr-CI', 'CIV', 2287781, '+225'),
(45, 'CK', 'Cook Islands', 'NZD', 'CW', '184', '-10.023114', '-21.944164', '-157.312134', '-161.093658', 'Avarua', 'Oceania', 'OC', 'en-CK,mi', 'COK', 1899402, '+682'),
(46, 'CL', 'Chile', 'CLP', 'CI', '152', '-17.507553', '-55.9256225109217', '-66.417557', '-80.785851', 'Santiago', 'South America', 'SA', 'es-CL', 'CHL', 3895114, '+56'),
(47, 'CM', 'Cameroon', 'XAF', 'CM', '120', '13.078056', '1.652548', '16.192116', '8.494763', 'Yaoundé', 'Africa', 'AF', 'en-CM,fr-CM', 'CMR', 2233387, '+237'),
(48, 'CN', 'China', 'CNY', 'CH', '156', '53.56086', '15.775416', '134.773911', '73.557693', 'Beijing', 'Asia', 'AS', 'zh-CN,yue,wuu,dta,ug,za', 'CHN', 1814991, '+86'),
(49, 'CO', 'Colombia', 'COP', 'CO', '170', '13.380502', '-4.225869', '-66.869835', '-81.728111', 'Bogotá', 'South America', 'SA', 'es-CO', 'COL', 3686110, '+57'),
(50, 'CR', 'Costa Rica', 'CRC', 'CS', '188', '11.216819', '8.032975', '-82.555992', '-85.950623', 'San José', 'North America', 'NA', 'es-CR,en', 'CRI', 3624060, '+506'),
(51, 'CU', 'Cuba', 'CUP', 'CU', '192', '23.226042', '19.828083', '-74.131775', '-84.957428', 'Havana', 'North America', 'NA', 'es-CU', 'CUB', 3562981, '+53'),
(52, 'CV', 'Cape Verde', 'CVE', 'CV', '132', '17.197178', '14.808022', '-22.669443', '-25.358747', 'Praia', 'Africa', 'AF', 'pt-CV', 'CPV', 3374766, '+238'),
(53, 'CW', 'Curaçao', 'ANG', 'UC', '531', '12.385672', '12.032745', '-68.733948', '-69.157204', 'Willemstad', 'North America', 'NA', 'nl,pap', 'CUW', 7626836, '+599'),
(54, 'CX', 'Christmas Island', 'AUD', 'KT', '162', '-10.412356007', '-10.5704829995', '105.712596992', '105.533276992', 'The Settlement', 'Asia', 'AS', 'en,zh,ms-CC', 'CXR', 2078138, '+61'),
(55, 'CY', 'Cyprus', 'EUR', 'CY', '196', '35.701527', '34.6332846722908', '34.59791599999994', '32.27308300000004', 'Nicosia', 'Europe', 'EU', 'el-CY,tr-CY,en', 'CYP', 146669, '+357'),
(56, 'CZ', 'Czech Republic', 'CZK', 'EZ', '203', '51.058887', '48.542915', '18.860111', '12.096194', 'Prague', 'Europe', 'EU', 'cs,sk', 'CZE', 3077311, '+420'),
(57, 'DE', 'Germany', 'EUR', 'GM', '276', '55.055637', '47.275776', '15.039889', '5.865639', 'Berlin', 'Europe', 'EU', 'de', 'DEU', 2921044, '+49'),
(58, 'DJ', 'Djibouti', 'DJF', 'DJ', '262', '12.706833', '10.909917', '43.416973', '41.773472', 'Djibouti', 'Africa', 'AF', 'fr-DJ,ar,so-DJ,aa', 'DJI', 223816, '+253'),
(59, 'DK', 'Denmark', 'DKK', 'DA', '208', '57.748417', '54.562389', '15.158834', '8.075611', 'Copenhagen', 'Europe', 'EU', 'da-DK,en,fo,de-DK', 'DNK', 2623032, '+45'),
(60, 'DM', 'Dominica', 'XCD', 'DO', '212', '15.631809', '15.20169', '-61.244152', '-61.484108', 'Roseau', 'North America', 'NA', 'en-DM', 'DMA', 3575830, '+1-767'),
(61, 'DO', 'Dominican Republic', 'DOP', 'DR', '214', '19.929859', '17.543159', '-68.32', '-72.003487', 'Santo Domingo', 'North America', 'NA', 'es-DO', 'DOM', 3508796, '+1-809'),
(62, 'DZ', 'Algeria', 'DZD', 'AG', '012', '37.093723', '18.960028', '11.979548', '-8.673868', 'Algiers', 'Africa', 'AF', 'ar-DZ', 'DZA', 2589581, '+213'),
(63, 'EC', 'Ecuador', 'USD', 'EC', '218', '1.43902', '-4.998823', '-75.184586', '-81.078598', 'Quito', 'South America', 'SA', 'es-EC', 'ECU', 3658394, '+593'),
(64, 'EE', 'Estonia', 'EUR', 'EN', '233', '59.676224', '57.516193', '28.209972', '21.837584', 'Tallinn', 'Europe', 'EU', 'et,ru', 'EST', 453733, '+372'),
(65, 'EG', 'Egypt', 'EGP', 'EG', '818', '31.667334', '21.725389', '36.89833068847656', '24.698111', 'Cairo', 'Africa', 'AF', 'ar-EG,en,fr', 'EGY', 357994, '+20'),
(66, 'EH', 'Western Sahara', 'MAD', 'WI', '732', '27.669674', '20.774158', '-8.670276', '-17.103182', 'El Aaiún', 'Africa', 'AF', 'ar,mey', 'ESH', 2461445, '+212'),
(67, 'ER', 'Eritrea', 'ERN', 'ER', '232', '18.003084', '12.359555', '43.13464', '36.438778', 'Asmara', 'Africa', 'AF', 'aa-ER,ar,tig,kun,ti-ER', 'ERI', 338010, '+291'),
(68, 'ES', 'Spain', 'EUR', 'SP', '724', '43.7913565913767', '36.0001044260548', '4.32778473043961', '-9.30151567231899', 'Madrid', 'Europe', 'EU', 'es-ES,ca,gl,eu,oc', 'ESP', 2510769, '+34'),
(69, 'ET', 'Ethiopia', 'ETB', 'ET', '231', '14.89375', '3.402422', '47.986179', '32.999939', 'Addis Ababa', 'Africa', 'AF', 'am,en-ET,om-ET,ti-ET,so-ET,sid', 'ETH', 337996, '+251'),
(70, 'FI', 'Finland', 'EUR', 'FI', '246', '70.096054', '59.808777', '31.580944', '20.556944', 'Helsinki', 'Europe', 'EU', 'fi-FI,sv-FI,smn', 'FIN', 660013, '+358'),
(71, 'FJ', 'Fiji', 'FJD', 'FJ', '242', '-12.480111', '-20.67597', '-178.424438', '177.129334', 'Suva', 'Oceania', 'OC', 'en-FJ,fj', 'FJI', 2205218, '+679'),
(72, 'FK', 'Falkland Islands', 'FKP', 'FK', '238', '-51.24065', '-52.360512', '-57.712486', '-61.345192', 'Stanley', 'South America', 'SA', 'en-FK', 'FLK', 3474414, '+500'),
(73, 'FM', 'Micronesia', 'USD', 'FM', '583', '10.08904', '1.02629', '163.03717', '137.33648', 'Palikir', 'Oceania', 'OC', 'en-FM,chk,pon,yap,kos,uli,woe,nkr,kpg', 'FSM', 2081918, '+691'),
(74, 'FO', 'Faroe Islands', 'DKK', 'FO', '234', '62.400749', '61.394943', '-6.399583', '-7.458', 'Tórshavn', 'Europe', 'EU', 'fo,da-FO', 'FRO', 2622320, '+298'),
(75, 'FR', 'France', 'EUR', 'FR', '250', '51.092804', '41.371582', '9.561556', '-5.142222', 'Paris', 'Europe', 'EU', 'fr-FR,frp,br,co,ca,eu,oc', 'FRA', 3017382, '+33'),
(76, 'GA', 'Gabon', 'XAF', 'GB', '266', '2.322612', '-3.978806', '14.502347', '8.695471', 'Libreville', 'Africa', 'AF', 'fr-GA', 'GAB', 2400553, '+241'),
(77, 'GB', 'United Kingdom of Great Britain and Northern Ireland', 'GBP', 'UK', '826', '59.360249', '49.906193', '1.759', '-8.623555', 'London', 'Europe', 'EU', 'en-GB,cy-GB,gd', 'GBR', 2635167, '+44'),
(78, 'GD', 'Grenada', 'XCD', 'GJ', '308', '12.318283928171299', '11.986893', '-61.57676970108031', '-61.802344', 'St. George\'s', 'North America', 'NA', 'en-GD', 'GRD', 3580239, '+1-473'),
(79, 'GE', 'Georgia', 'GEL', 'GG', '268', '43.586498', '41.053196', '46.725971', '40.010139', 'Tbilisi', 'Asia', 'AS', 'ka,ru,hy,az', 'GEO', 614540, '+995'),
(80, 'GF', 'French Guiana', 'EUR', 'FG', '254', '5.776496', '2.127094', '-51.613949', '-54.542511', 'Cayenne', 'South America', 'SA', 'fr-GF', 'GUF', 3381670, '+594'),
(81, 'GG', 'Guernsey', 'GBP', 'GK', '831', '49.731727816705416', '49.40764156876899', '-2.1577152112246267', '-2.673194593476069', 'St Peter Port', 'Europe', 'EU', 'en,fr', 'GGY', 3042362, '+44-1481'),
(82, 'GH', 'Ghana', 'GHS', 'GH', '288', '11.173301', '4.736723', '1.191781', '-3.25542', 'Accra', 'Africa', 'AF', 'en-GH,ak,ee,tw', 'GHA', 2300660, '+233'),
(83, 'GI', 'Gibraltar', 'GIP', 'GI', '292', '36.155439135670726', '36.10903070140248', '-5.338285164001491', '-5.36626149743654', 'Gibraltar', 'Europe', 'EU', 'en-GI,es,it,pt', 'GIB', 2411586, '+350'),
(84, 'GL', 'Greenland', 'DKK', 'GL', '304', '83.627357', '59.777401', '-11.312319', '-73.04203', 'Nuuk', 'North America', 'NA', 'kl,da-GL,en', 'GRL', 3425505, '+299'),
(85, 'GM', 'Gambia', 'GMD', 'GA', '270', '13.826571', '13.064252', '-13.797793', '-16.825079', 'Banjul', 'Africa', 'AF', 'en-GM,mnk,wof,wo,ff', 'GMB', 2413451, '+220'),
(86, 'GN', 'Guinea', 'GNF', 'GV', '324', '12.67622', '7.193553', '-7.641071', '-14.926619', 'Conakry', 'Africa', 'AF', 'fr-GN', 'GIN', 2420477, '+224'),
(87, 'GP', 'Guadeloupe', 'EUR', 'GP', '312', '16.516848', '15.867565', '-61', '-61.544765', 'Basse-Terre', 'North America', 'NA', 'fr-GP', 'GLP', 3579143, '+590'),
(88, 'GQ', 'Equatorial Guinea', 'XAF', 'EK', '226', '2.346989', '0.92086', '11.335724', '9.346865', 'Malabo', 'Africa', 'AF', 'es-GQ,fr', 'GNQ', 2309096, '+240'),
(89, 'GR', 'Greece', 'EUR', 'GR', '300', '41.7484999849641', '34.8020663391466', '28.2470831714347', '19.3736035624134', 'Athens', 'Europe', 'EU', 'el-GR,en,fr', 'GRC', 390903, '+30'),
(90, 'GS', 'South Georgia and the South Sandwich Islands', 'GBP', 'SX', '239', '-53.970467', '-59.479259', '-26.229326', '-38.021175', 'Grytviken', 'Antarctica', 'AN', 'en', 'SGS', 3474415, '+500'),
(91, 'GT', 'Guatemala', 'GTQ', 'GT', '320', '17.81522', '13.737302', '-88.223198', '-92.23629', 'Guatemala City', 'North America', 'NA', 'es-GT', 'GTM', 3595528, '+502'),
(92, 'GU', 'Guam', 'USD', 'GQ', '316', '13.654402', '13.23376', '144.956894', '144.61806', 'Hagåtña', 'Oceania', 'OC', 'en-GU,ch-GU', 'GUM', 4043988, '+1-671'),
(93, 'GW', 'Guinea-Bissau', 'XOF', 'PU', '624', '12.680789', '10.924265', '-13.636522', '-16.717535', 'Bissau', 'Africa', 'AF', 'pt-GW,pov', 'GNB', 2372248, '+245'),
(94, 'GY', 'Guyana', 'GYD', 'GY', '328', '8.557567', '1.17508', '-56.480251', '-61.384762', 'Georgetown', 'South America', 'SA', 'en-GY', 'GUY', 3378535, '+592'),
(95, 'HK', 'Hong Kong', 'HKD', 'HK', '344', '22.559778', '22.15325', '114.434753', '113.837753', 'Hong Kong', 'Asia', 'AS', 'zh-HK,yue,zh,en', 'HKG', 1819730, '+852'),
(96, 'HM', 'Heard Island and McDonald Islands', 'AUD', 'HM', '334', '-52.909416', '-53.192001', '73.859146', '72.596535', '', 'Antarctica', 'AN', '', 'HMD', 1547314, '+672'),
(97, 'HN', 'Honduras', 'HNL', 'HO', '340', '16.510256', '12.982411', '-83.155403', '-89.350792', 'Tegucigalpa', 'North America', 'NA', 'es-HN', 'HND', 3608932, '+504'),
(98, 'HR', 'Croatia', 'HRK', 'HR', '191', '46.53875', '42.43589', '19.427389', '13.493222', 'Zagreb', 'Europe', 'EU', 'hr-HR,sr', 'HRV', 3202326, '+385'),
(99, 'HT', 'Haiti', 'HTG', 'HA', '332', '20.08782', '18.021032', '-71.613358', '-74.478584', 'Port-au-Prince', 'North America', 'NA', 'ht,fr-HT', 'HTI', 3723988, '+509'),
(100, 'HU', 'Hungary', 'HUF', 'HU', '348', '48.585667', '45.74361', '22.906', '16.111889', 'Budapest', 'Europe', 'EU', 'hu-HU', 'HUN', 719819, '+36'),
(101, 'ID', 'Indonesia', 'IDR', 'ID', '360', '5.904417', '-10.941861', '141.021805', '95.009331', 'Jakarta', 'Asia', 'AS', 'id,en,nl,jv', 'IDN', 1643084, '+62'),
(102, 'IE', 'Ireland', 'EUR', 'EI', '372', '55.387917', '51.451584', '-6.002389', '-10.478556', 'Dublin', 'Europe', 'EU', 'en-IE,ga-IE', 'IRL', 2963597, '+353'),
(103, 'IL', 'Israel', 'ILS', 'IS', '376', '33.340137', '29.496639', '35.876804', '34.270278754419145', '', 'Asia', 'AS', 'he,ar-IL,en-IL,', 'ISR', 294640, '+972'),
(104, 'IM', 'Isle of Man', 'GBP', 'IM', '833', '54.419724', '54.055916', '-4.3115', '-4.798722', 'Douglas', 'Europe', 'EU', 'en,gv', 'IMN', 3042225, '+44-1624'),
(105, 'IN', 'India', 'INR', 'IN', '356', '35.504223', '6.747139', '97.403305', '68.186691', 'New Delhi', 'Asia', 'AS', 'en-IN,hi,bn,te,mr,ta,ur,gu,kn,ml,or,pa,as,bh,sat,ks,ne,sd,kok,doi,mni,sit,sa,fr,lus,inc', 'IND', 1269750, '+91'),
(106, 'IO', 'British Indian Ocean Territory', 'USD', 'IO', '086', '-5.268333', '-7.438028', '72.493164', '71.259972', '', 'Asia', 'AS', 'en-IO', 'IOT', 1282588, '+246'),
(107, 'IQ', 'Iraq', 'IQD', 'IZ', '368', '37.378029', '29.069445', '48.575916', '38.795887', 'Baghdad', 'Asia', 'AS', 'ar-IQ,ku,hy', 'IRQ', 99237, '+964'),
(108, 'IR', 'Iran', 'IRR', 'IR', '364', '39.777222', '25.064083', '63.317471', '44.047279', 'Tehran', 'Asia', 'AS', 'fa-IR,ku', 'IRN', 130758, '+98'),
(109, 'IS', 'Iceland', 'ISK', 'IC', '352', '66.53463', '63.393253', '-13.495815', '-24.546524', 'Reykjavik', 'Europe', 'EU', 'is,en,de,da,sv,no', 'ISL', 2629691, '+354'),
(110, 'IT', 'Italy', 'EUR', 'IT', '380', '47.095196', '36.652779', '18.513445', '6.614889', 'Rome', 'Europe', 'EU', 'it-IT,de-IT,fr-IT,sc,ca,co,sl', 'ITA', 3175395, '+39'),
(111, 'JE', 'Jersey', 'GBP', 'JE', '832', '49.265057', '49.169834', '-2.022083', '-2.260028', 'Saint Helier', 'Europe', 'EU', 'en,pt', 'JEY', 3042142, '+44-1534'),
(112, 'JM', 'Jamaica', 'JMD', 'JM', '388', '18.526976', '17.703554', '-76.180321', '-78.366638', 'Kingston', 'North America', 'NA', 'en-JM', 'JAM', 3489940, '+1-876'),
(113, 'JO', 'Jordan', 'JOD', 'JO', '400', '33.367668', '29.185888', '39.301167', '34.959999', 'Amman', 'Asia', 'AS', 'ar-JO,en', 'JOR', 248816, '+962'),
(114, 'JP', 'Japan', 'JPY', 'JA', '392', '45.52314', '24.249472', '145.820892', '122.93853', 'Tokyo', 'Asia', 'AS', 'ja', 'JPN', 1861060, '+81'),
(115, 'KE', 'Kenya', 'KES', 'KE', '404', '5.019938', '-4.678047', '41.899078', '33.908859', 'Nairobi', 'Africa', 'AF', 'en-KE,sw-KE', 'KEN', 192950, '+254'),
(116, 'KG', 'Kyrgyzstan', 'KGS', 'KG', '417', '43.238224', '39.172832', '80.283165', '69.276611', 'Bishkek', 'Asia', 'AS', 'ky,uz,ru', 'KGZ', 1527747, '+996'),
(117, 'KH', 'Cambodia', 'KHR', 'CB', '116', '14.686417', '10.409083', '107.627724', '102.339996', 'Phnom Penh', 'Asia', 'AS', 'km,fr,en', 'KHM', 1831722, '+855'),
(118, 'KI', 'Kiribati', 'AUD', 'KR', '296', '4.71957', '-11.446881150186856', '-150.215347', '169.556137', 'Tarawa', 'Oceania', 'OC', 'en-KI,gil', 'KIR', 4030945, '+686'),
(119, 'KM', 'Comoros', 'KMF', 'CN', '174', '-11.362381', '-12.387857', '44.538223', '43.21579', 'Moroni', 'Africa', 'AF', 'ar,fr-KM', 'COM', 921929, '+269'),
(120, 'KN', 'Saint Kitts and Nevis', 'XCD', 'SC', '659', '17.420118', '17.095343', '-62.543266', '-62.86956', 'Basseterre', 'North America', 'NA', 'en-KN', 'KNA', 3575174, '+1-869'),
(121, 'KP', 'North Korea', 'KPW', 'KN', '408', '43.006054', '37.673332', '130.674866', '124.315887', 'Pyongyang', 'Asia', 'AS', 'ko-KP', 'PRK', 1873107, '+850'),
(122, 'KR', 'South Korea', 'KRW', 'KS', '410', '38.612446', '33.190945', '129.584671', '125.887108', 'Seoul', 'Asia', 'AS', 'ko-KR,en', 'KOR', 1835841, '+82'),
(123, 'KW', 'Kuwait', 'KWD', 'KU', '414', '30.095945', '28.524611', '48.431473', '46.555557', 'Kuwait City', 'Asia', 'AS', 'ar-KW,en', 'KWT', 285570, '+965'),
(124, 'KY', 'Cayman Islands', 'KYD', 'CJ', '136', '19.7617', '19.263029', '-79.727272', '-81.432777', 'George Town', 'North America', 'NA', 'en-KY', 'CYM', 3580718, '+1-345'),
(125, 'KZ', 'Kazakhstan', 'KZT', 'KZ', '398', '55.451195', '40.936333', '87.312668', '46.491859', 'Astana', 'Asia', 'AS', 'kk,ru', 'KAZ', 1522867, '+7'),
(126, 'LA', 'Laos', 'LAK', 'LA', '418', '22.500389', '13.910027', '107.697029', '100.093056', 'Vientiane', 'Asia', 'AS', 'lo,fr,en', 'LAO', 1655842, '+856'),
(127, 'LB', 'Lebanon', 'LBP', 'LE', '422', '34.691418', '33.05386', '36.639194', '35.114277', 'Beirut', 'Asia', 'AS', 'ar-LB,fr-LB,en,hy', 'LBN', 272103, '+961'),
(128, 'LC', 'Saint Lucia', 'XCD', 'ST', '662', '14.103245', '13.704778', '-60.874203', '-61.07415', 'Castries', 'North America', 'NA', 'en-LC', 'LCA', 3576468, '+1-758'),
(129, 'LI', 'Liechtenstein', 'CHF', 'LS', '438', '47.2706251386959', '47.0484284123471', '9.63564281136796', '9.47167359782014', 'Vaduz', 'Europe', 'EU', 'de-LI', 'LIE', 3042058, '+423'),
(130, 'LK', 'Sri Lanka', 'LKR', 'CE', '144', '9.831361', '5.916833', '81.881279', '79.652916', 'Colombo', 'Asia', 'AS', 'si,ta,en', 'LKA', 1227603, '+94'),
(131, 'LR', 'Liberia', 'LRD', 'LI', '430', '8.551791', '4.353057', '-7.365113', '-11.492083', 'Monrovia', 'Africa', 'AF', 'en-LR', 'LBR', 2275384, '+231'),
(132, 'LS', 'Lesotho', 'LSL', 'LT', '426', '-28.572058', '-30.668964', '29.465761', '27.029068', 'Maseru', 'Africa', 'AF', 'en-LS,st,zu,xh', 'LSO', 932692, '+266'),
(133, 'LT', 'Lithuania', 'EUR', 'LH', '440', '56.446918', '53.901306', '26.871944', '20.941528', 'Vilnius', 'Europe', 'EU', 'lt,ru,pl', 'LTU', 597427, '+370'),
(134, 'LU', 'Luxembourg', 'EUR', 'LU', '442', '50.184944', '49.446583', '6.528472', '5.734556', 'Luxembourg', 'Europe', 'EU', 'lb,de-LU,fr-LU', 'LUX', 2960313, '+352'),
(135, 'LV', 'Latvia', 'EUR', 'LG', '428', '58.082306', '55.668861', '28.241167', '20.974277', 'Riga', 'Europe', 'EU', 'lv,ru,lt', 'LVA', 458258, '+371'),
(136, 'LY', 'Libya', 'LYD', 'LY', '434', '33.168999', '19.508045', '25.150612', '9.38702', 'Tripoli', 'Africa', 'AF', 'ar-LY,it,en', 'LBY', 2215636, '+218'),
(137, 'MA', 'Morocco', 'MAD', 'MO', '504', '35.9224966985384', '27.662115', '-0.991750000000025', '-13.168586', 'Rabat', 'Africa', 'AF', 'ar-MA,fr', 'MAR', 2542007, '+212'),
(138, 'MC', 'Monaco', 'EUR', 'MN', '492', '43.75196717037228', '43.72472839869377', '7.439939260482788', '7.408962249755859', 'Monaco', 'Europe', 'EU', 'fr-MC,en,it', 'MCO', 2993457, '+377'),
(139, 'MD', 'Moldova', 'MDL', 'MD', '498', '48.490166', '45.468887', '30.135445', '26.618944', 'Chişinău', 'Europe', 'EU', 'ro,ru,gag,tr', 'MDA', 617790, '+373'),
(140, 'ME', 'Montenegro', 'EUR', 'MJ', '499', '43.570137', '41.850166', '20.358833', '18.461306', 'Podgorica', 'Europe', 'EU', 'sr,hu,bs,sq,hr,rom', 'MNE', 3194884, '+382'),
(141, 'MF', 'Saint Martin', 'EUR', 'RN', '663', '18.130354', '18.052231', '-63.012993', '-63.152767', 'Marigot', 'North America', 'NA', 'fr', 'MAF', 3578421, '+590'),
(142, 'MG', 'Madagascar', 'MGA', 'MA', '450', '-11.945433', '-25.608952', '50.48378', '43.224876', 'Antananarivo', 'Africa', 'AF', 'fr-MG,mg', 'MDG', 1062947, '+261'),
(143, 'MH', 'Marshall Islands', 'USD', 'RM', '584', '14.62', '5.587639', '171.931808', '165.524918', 'Majuro', 'Oceania', 'OC', 'mh,en-MH', 'MHL', 2080185, '+692'),
(144, 'MK', 'North Macedonia', 'MKD', 'MK', '807', '42.361805', '40.860195', '23.038139', '20.464695', 'Skopje', 'Europe', 'EU', 'mk,sq,tr,rmm,sr', 'MKD', 718075, '+389'),
(145, 'ML', 'Mali', 'XOF', 'ML', '466', '25.000002', '10.159513', '4.244968', '-12.242614', 'Bamako', 'Africa', 'AF', 'fr-ML,bm', 'MLI', 2453866, '+223'),
(146, 'MM', 'Myanmar [Burma]', 'MMK', 'BM', '104', '28.543249', '9.784583', '101.176781', '92.189278', 'Nay Pyi Taw', 'Asia', 'AS', 'my', 'MMR', 1327865, '+95'),
(147, 'MN', 'Mongolia', 'MNT', 'MG', '496', '52.154251', '41.567638', '119.924309', '87.749664', 'Ulan Bator', 'Asia', 'AS', 'mn,ru', 'MNG', 2029969, '+976'),
(148, 'MO', 'Macao', 'MOP', 'MC', '446', '22.222334', '22.180389', '113.565834', '113.528946', 'Macao', 'Asia', 'AS', 'zh,zh-MO,pt', 'MAC', 1821275, '+853'),
(149, 'MP', 'Northern Mariana Islands', 'USD', 'CQ', '580', '20.55344', '14.11023', '146.06528', '144.88626', 'Saipan', 'Oceania', 'OC', 'fil,tl,zh,ch-MP,en-MP', 'MNP', 4041468, '+1-670'),
(150, 'MQ', 'Martinique', 'EUR', 'MB', '474', '14.878819', '14.392262', '-60.81551', '-61.230118', 'Fort-de-France', 'North America', 'NA', 'fr-MQ', 'MTQ', 3570311, '+596'),
(151, 'MR', 'Mauritania', 'MRO', 'MR', '478', '27.298073', '14.715547', '-4.827674', '-17.066521', 'Nouakchott', 'Africa', 'AF', 'ar-MR,fuc,snk,fr,mey,wo', 'MRT', 2378080, '+222'),
(152, 'MS', 'Montserrat', 'XCD', 'MH', '500', '16.824060205313184', '16.674768935441556', '-62.144100129608205', '-62.24138237036129', 'Plymouth', 'North America', 'NA', 'en-MS', 'MSR', 3578097, '+1-664'),
(153, 'MT', 'Malta', 'EUR', 'MT', '470', '36.0821530995456', '35.8061835000002', '14.5764915000002', '14.1834251000001', 'Valletta', 'Europe', 'EU', 'mt,en-MT', 'MLT', 2562770, '+356'),
(154, 'MU', 'Mauritius', 'MUR', 'MP', '480', '-10.319255', '-20.525717', '63.500179', '56.512718', 'Port Louis', 'Africa', 'AF', 'en-MU,bho,fr', 'MUS', 934292, '+230'),
(155, 'MV', 'Maldives', 'MVR', 'MV', '462', '7.091587495414767', '-0.692694', '73.637276', '72.693222', 'Malé', 'Asia', 'AS', 'dv,en', 'MDV', 1282028, '+960'),
(156, 'MW', 'Malawi', 'MWK', 'MI', '454', '-9.367541', '-17.125', '35.916821', '32.67395', 'Lilongwe', 'Africa', 'AF', 'ny,yao,tum,swk', 'MWI', 927384, '+265'),
(157, 'MX', 'Mexico', 'MXN', 'MX', '484', '32.716759', '14.532866', '-86.703392', '-118.453949', 'Mexico City', 'North America', 'NA', 'es-MX', 'MEX', 3996063, '+52'),
(158, 'MY', 'Malaysia', 'MYR', 'MY', '458', '7.363417', '0.855222', '119.267502', '99.643448', 'Kuala Lumpur', 'Asia', 'AS', 'ms-MY,en,zh,ta,te,ml,pa,th', 'MYS', 1733045, '+60'),
(159, 'MZ', 'Mozambique', 'MZN', 'MZ', '508', '-10.471883', '-26.868685', '40.842995', '30.217319', 'Maputo', 'Africa', 'AF', 'pt-MZ,vmw', 'MOZ', 1036973, '+258'),
(160, 'NA', 'Namibia', 'NAD', 'WA', '516', '-16.959894', '-28.97143', '25.256701', '11.71563', 'Windhoek', 'Africa', 'AF', 'en-NA,af,de,hz,naq', 'NAM', 3355338, '+264'),
(161, 'NC', 'New Caledonia', 'XPF', 'NC', '540', '-19.549778', '-22.698', '168.129135', '163.564667', 'Noumea', 'Oceania', 'OC', 'fr-NC', 'NCL', 2139685, '+687'),
(162, 'NE', 'Niger', 'XOF', 'NG', '562', '23.525026', '11.696975', '15.995643', '0.16625', 'Niamey', 'Africa', 'AF', 'fr-NE,ha,kr,dje', 'NER', 2440476, '+227'),
(163, 'NF', 'Norfolk Island', 'AUD', 'NF', '574', '-28.995170686948427', '-29.063076742954735', '167.99773740209957', '167.91543230151365', 'Kingston', 'Oceania', 'OC', 'en-NF', 'NFK', 2155115, '+672'),
(164, 'NG', 'Nigeria', 'NGN', 'NI', '566', '13.892007', '4.277144', '14.680073', '2.668432', 'Abuja', 'Africa', 'AF', 'en-NG,ha,yo,ig,ff', 'NGA', 2328926, '+234'),
(165, 'NI', 'Nicaragua', 'NIO', 'NU', '558', '15.025909', '10.707543', '-82.738289', '-87.690308', 'Managua', 'North America', 'NA', 'es-NI,en', 'NIC', 3617476, '+505'),
(166, 'NL', 'Netherlands', 'EUR', 'NL', '528', '53.512196', '50.753918', '7.227944', '3.362556', 'Amsterdam', 'Europe', 'EU', 'nl-NL,fy-NL', 'NLD', 2750405, '+31'),
(167, 'NO', 'Norway', 'NOK', 'NO', '578', '71.18811', '57.977917', '31.078052520751953', '4.650167', 'Oslo', 'Europe', 'EU', 'no,nb,nn,se,fi', 'NOR', 3144096, '+47'),
(168, 'NP', 'Nepal', 'NPR', 'NP', '524', '30.43339', '26.356722', '88.199333', '80.056274', 'Kathmandu', 'Asia', 'AS', 'ne,en', 'NPL', 1282988, '+977'),
(169, 'NR', 'Nauru', 'AUD', 'NR', '520', '-0.504306', '-0.552333', '166.945282', '166.899033', 'Yaren District', 'Oceania', 'OC', 'na,en-NR', 'NRU', 2110425, '+674'),
(170, 'NU', 'Niue', 'NZD', 'NE', '570', '-18.951069', '-19.152193', '-169.775177', '-169.951004', 'Alofi', 'Oceania', 'OC', 'niu,en-NU', 'NIU', 4036232, '+683'),
(171, 'NZ', 'New Zealand', 'NZD', 'NZ', '554', '-34.389668', '-47.286026', '-180', '166.7155', 'Wellington', 'Oceania', 'OC', 'en-NZ,mi', 'NZL', 2186224, '+64'),
(172, 'OM', 'Oman', 'OMR', 'MU', '512', '26.387972', '16.64575', '59.836582', '51.882', 'Muscat', 'Asia', 'AS', 'ar-OM,en,bal,ur', 'OMN', 286963, '+968'),
(173, 'PA', 'Panama', 'PAB', 'PM', '591', '9.637514', '7.197906', '-77.17411', '-83.051445', 'Panama City', 'North America', 'NA', 'es-PA,en', 'PAN', 3703430, '+507'),
(174, 'PE', 'Peru', 'PEN', 'PE', '604', '-0.012977', '-18.349728', '-68.677986', '-81.326744', 'Lima', 'South America', 'SA', 'es-PE,qu,ay', 'PER', 3932488, '+51'),
(175, 'PF', 'French Polynesia', 'XPF', 'FP', '258', '-7.903573', '-27.653572', '-134.929825', '-152.877167', 'Papeete', 'Oceania', 'OC', 'fr-PF,ty', 'PYF', 4030656, '+689'),
(176, 'PG', 'Papua New Guinea', 'PGK', 'PP', '598', '-1.318639', '-11.657861', '155.96344', '140.842865', 'Port Moresby', 'Oceania', 'OC', 'en-PG,ho,meu,tpi', 'PNG', 2088628, '+675'),
(177, 'PH', 'Philippines', 'PHP', 'RP', '608', '21.120611', '4.643306', '126.601524', '116.931557', 'Manila', 'Asia', 'AS', 'tl,en-PH,fil', 'PHL', 1694008, '+63'),
(178, 'PK', 'Pakistan', 'PKR', 'PK', '586', '37.097', '23.786722', '77.840919', '60.878613', 'Islamabad', 'Asia', 'AS', 'ur-PK,en-PK,pa,sd,ps,brh', 'PAK', 1168579, '+92'),
(179, 'PL', 'Poland', 'PLN', 'PL', '616', '54.839138', '49.006363', '24.150749', '14.123', 'Warsaw', 'Europe', 'EU', 'pl', 'POL', 798544, '+48'),
(180, 'PM', 'Saint Pierre and Miquelon', 'EUR', 'SB', '666', '47.146286', '46.786041', '-56.252991', '-56.420658', 'Saint-Pierre', 'North America', 'NA', 'fr-PM', 'SPM', 3424932, '+508'),
(181, 'PN', 'Pitcairn Islands', 'NZD', 'PC', '612', '-24.315865', '-24.672565', '-124.77285', '-128.346436', 'Adamstown', 'Oceania', 'OC', 'en-PN', 'PCN', 4030699, '+64'),
(182, 'PR', 'Puerto Rico', 'USD', 'RQ', '630', '18.520166', '17.926405', '-65.242737', '-67.942726', 'San Juan', 'North America', 'NA', 'en-PR,es-PR', 'PRI', 4566966, '+1-787'),
(183, 'PS', 'Palestine', 'ILS', 'WE', '275', '32.54638671875', '31.216541290283203', '35.5732955932617', '34.21665954589844', '', 'Asia', 'AS', 'ar-PS', 'PSE', 6254930, '+970'),
(184, 'PT', 'Portugal', 'EUR', 'PO', '620', '42.154311127408', '36.96125', '-6.18915930748288', '-9.50052660716588', 'Lisbon', 'Europe', 'EU', 'pt-PT,mwl', 'PRT', 2264397, '+351'),
(185, 'PW', 'Palau', 'USD', 'PS', '585', '8.46966', '2.8036', '134.72307', '131.11788', 'Melekeok - Palau State Capital', 'Oceania', 'OC', 'pau,sov,en-PW,tox,ja,fil,zh', 'PLW', 1559582, '+680'),
(186, 'PY', 'Paraguay', 'PYG', 'PA', '600', '-19.294041', '-27.608738', '-54.259354', '-62.647076', 'Asunción', 'South America', 'SA', 'es-PY,gn', 'PRY', 3437598, '+595'),
(187, 'QA', 'Qatar', 'QAR', 'QA', '634', '26.154722', '24.482944', '51.636639', '50.757221', 'Doha', 'Asia', 'AS', 'ar-QA,es', 'QAT', 289688, '+974'),
(188, 'RE', 'Réunion', 'EUR', 'RE', '638', '-20.868391324576944', '-21.383747301469107', '55.838193901930026', '55.21219224792685', 'Saint-Denis', 'Africa', 'AF', 'fr-RE', 'REU', 935317, '+262'),
(189, 'RO', 'Romania', 'RON', 'RO', '642', '48.266945', '43.627304', '29.691055', '20.269972', 'Bucharest', 'Europe', 'EU', 'ro,hu,rom', 'ROU', 798549, '+40'),
(190, 'RS', 'Serbia', 'RSD', 'RI', '688', '46.18138885498047', '42.232215881347656', '23.00499725341797', '18.817020416259766', 'Belgrade', 'Europe', 'EU', 'sr,hu,bs,rom', 'SRB', 6290252, '+381'),
(191, 'RU', 'Russia', 'RUB', 'RS', '643', '81.857361', '41.188862', '-169.05', '19.25', 'Moscow', 'Europe', 'EU', 'ru,tt,xal,cau,ady,kv,ce,tyv,cv,udm,tut,mns,bua,myv,mdf,chm,ba,inh,tut,kbd,krc,ava,sah,nog', 'RUS', 2017370, '+7'),
(192, 'RW', 'Rwanda', 'RWF', 'RW', '646', '-1.053481', '-2.840679', '30.895958', '28.856794', 'Kigali', 'Africa', 'AF', 'rw,en-RW,fr-RW,sw', 'RWA', 49518, '+250'),
(193, 'SA', 'Saudi Arabia', 'SAR', 'SA', '682', '32.158333', '15.61425', '55.666584', '34.495693', 'Riyadh', 'Asia', 'AS', 'ar-SA', 'SAU', 102358, '+966'),
(194, 'SB', 'Solomon Islands', 'SBD', 'BP', '090', '-6.589611', '-11.850555', '166.980865', '155.508606', 'Honiara', 'Oceania', 'OC', 'en-SB,tpi', 'SLB', 2103350, '+677'),
(195, 'SC', 'Seychelles', 'SCR', 'SE', '690', '-4.283717', '-9.753867', '56.29770287937299', '46.204769', 'Victoria', 'Africa', 'AF', 'en-SC,fr-SC', 'SYC', 241170, '+248'),
(196, 'SD', 'Sudan', 'SDG', 'SU', '729', '22.232219696044922', '8.684720993041992', '38.60749816894531', '21.827774047851562', 'Khartoum', 'Africa', 'AF', 'ar-SD,en,fia', 'SDN', 366755, '+249'),
(197, 'SE', 'Sweden', 'SEK', 'SW', '752', '69.0625', '55.337112', '24.1562924839185', '11.118694', 'Stockholm', 'Europe', 'EU', 'sv-SE,se,sma,fi-SE', 'SWE', 2661886, '+46'),
(198, 'SG', 'Singapore', 'SGD', 'SN', '702', '1.471278', '1.258556', '104.007469', '103.638275', 'Singapore', 'Asia', 'AS', 'cmn,en-SG,ms-SG,ta-SG,zh-SG', 'SGP', 1880251, '+65'),
(199, 'SH', 'Saint Helena', 'SHP', 'SH', '654', '-7.887815', '-16.019543', '-5.638753', '-14.42123', 'Jamestown', 'Africa', 'AF', 'en-SH', 'SHN', 3370751, '+290'),
(200, 'SI', 'Slovenia', 'EUR', 'SI', '705', '46.8766275518195', '45.421812998164', '16.6106311807', '13.3753342064709', 'Ljubljana', 'Europe', 'EU', 'sl,sh', 'SVN', 3190538, '+386'),
(201, 'SJ', 'Svalbard and Jan Mayen', 'NOK', 'SV', '744', '80.762085', '79.220306', '33.287334', '17.699389', 'Longyearbyen', 'Europe', 'EU', 'no,ru', 'SJM', 607072, '+47'),
(202, 'SK', 'Slovakia', 'EUR', 'LO', '703', '49.603168', '47.728111', '22.570444', '16.84775', 'Bratislava', 'Europe', 'EU', 'sk,hu', 'SVK', 3057568, '+421'),
(203, 'SL', 'Sierra Leone', 'SLL', 'SL', '694', '10', '6.929611', '-10.284238', '-13.307631', 'Freetown', 'Africa', 'AF', 'en-SL,men,tem', 'SLE', 2403846, '+232'),
(204, 'SM', 'San Marino', 'EUR', 'SM', '674', '43.99223730851663', '43.8937092171425', '12.51653186779788', '12.403538978820734', 'San Marino', 'Europe', 'EU', 'it-SM', 'SMR', 3168068, '+378'),
(205, 'SN', 'Senegal', 'XOF', 'SG', '686', '16.691633', '12.307275', '-11.355887', '-17.535236', 'Dakar', 'Africa', 'AF', 'fr-SN,wo,fuc,mnk', 'SEN', 2245662, '+221'),
(206, 'SO', 'Somalia', 'SOS', 'SO', '706', '11.979166', '-1.674868', '51.412636', '40.986595', 'Mogadishu', 'Africa', 'AF', 'so-SO,ar-SO,it,en-SO', 'SOM', 51537, '+252'),
(207, 'SR', 'Suriname', 'SRD', 'NS', '740', '6.004546', '1.831145', '-53.977493', '-58.086563', 'Paramaribo', 'South America', 'SA', 'nl-SR,en,srn,hns,jv', 'SUR', 3382998, '+597'),
(208, 'SS', 'South Sudan', 'SSP', 'OD', '728', '12.219148635864258', '3.493394374847412', '35.9405517578125', '24.140274047851562', 'Juba', 'Africa', 'AF', 'en', 'SSD', 7909807, '+211'),
(209, 'ST', 'São Tomé and Príncipe', 'STD', 'TP', '678', '1.701323', '0.024766', '7.466374', '6.47017', 'São Tomé', 'Africa', 'AF', 'pt-ST', 'STP', 2410758, '+239'),
(210, 'SV', 'El Salvador', 'USD', 'ES', '222', '14.445067', '13.148679', '-87.692162', '-90.128662', 'San Salvador', 'North America', 'NA', 'es-SV', 'SLV', 3585968, '+503'),
(211, 'SX', 'Sint Maarten', 'ANG', 'NN', '534', '18.070248', '18.011692', '-63.012993', '-63.144039', 'Philipsburg', 'North America', 'NA', 'nl,en', 'SXM', 7609695, '+1-721'),
(212, 'SY', 'Syria', 'SYP', 'SY', '760', '37.319138', '32.310665', '42.385029', '35.727222', 'Damascus', 'Asia', 'AS', 'ar-SY,ku,hy,arc,fr,en', 'SYR', 163843, '+963'),
(213, 'SZ', 'Eswatini', 'SZL', 'WZ', '748', '-25.719648', '-27.317101', '32.13726', '30.794107', 'Mbabane', 'Africa', 'AF', 'en-SZ,ss-SZ', 'SWZ', 934841, '+268'),
(214, 'TC', 'Turks and Caicos Islands', 'USD', 'TK', '796', '21.961878', '21.422626', '-71.123642', '-72.483871', 'Cockburn Town', 'North America', 'NA', 'en-TC', 'TCA', 3576916, '+1-649'),
(215, 'TD', 'Chad', 'XAF', 'CD', '148', '23.450369', '7.441068', '24.002661', '13.473475', 'N\'Djamena', 'Africa', 'AF', 'fr-TD,ar-TD,sre', 'TCD', 2434508, '+235'),
(216, 'TF', 'French Southern Territories', 'EUR', 'FS', '260', '-37.790722', '-49.735184', '77.598808', '50.170258', 'Port-aux-Français', 'Antarctica', 'AN', 'fr', 'ATF', 1546748, '+262'),
(217, 'TG', 'Togo', 'XOF', 'TO', '768', '11.138977', '6.104417', '1.806693', '-0.147324', 'Lomé', 'Africa', 'AF', 'fr-TG,ee,hna,kbp,dag,ha', 'TGO', 2363686, '+228'),
(218, 'TH', 'Thailand', 'THB', 'TH', '764', '20.463194', '5.61', '105.639389', '97.345642', 'Bangkok', 'Asia', 'AS', 'th,en', 'THA', 1605651, '+66'),
(219, 'TJ', 'Tajikistan', 'TJS', 'TI', '762', '41.042252', '36.674137', '75.137222', '67.387138', 'Dushanbe', 'Asia', 'AS', 'tg,ru', 'TJK', 1220409, '+992'),
(220, 'TK', 'Tokelau', 'NZD', 'TL', '772', '-8.553613662719727', '-9.381111145019531', '-171.21142578125', '-172.50033569335938', 'Nukunonu', 'Oceania', 'OC', 'tkl,en-TK', 'TKL', 4031074, '+690'),
(221, 'TL', 'East Timor', 'USD', 'TT', '626', '-8.135833740234375', '-9.463626861572266', '127.30859375', '124.04609680175781', 'Dili', 'Oceania', 'OC', 'tet,pt-TL,id,en', 'TLS', 1966436, '+670'),
(222, 'TM', 'Turkmenistan', 'TMT', 'TX', '795', '42.795555', '35.141083', '66.684303', '52.441444', 'Ashgabat', 'Asia', 'AS', 'tk,ru,uz', 'TKM', 1218197, '+993'),
(223, 'TN', 'Tunisia', 'TND', 'TS', '788', '37.543915', '30.240417', '11.598278', '7.524833', 'Tunis', 'Africa', 'AF', 'ar-TN,fr', 'TUN', 2464461, '+216'),
(224, 'TO', 'Tonga', 'TOP', 'TN', '776', '-15.562988', '-21.455057', '-173.907578', '-175.682266', 'Nuku\'alofa', 'Oceania', 'OC', 'to,en-TO', 'TON', 4032283, '+676'),
(225, 'TR', 'Turkey', 'TRY', 'TU', '792', '42.107613', '35.815418', '44.834999', '25.668501', 'Ankara', 'Asia', 'AS', 'tr-TR,ku,diq,az,av', 'TUR', 298795, '+90'),
(226, 'TT', 'Trinidad and Tobago', 'TTD', 'TD', '780', '11.338342', '10.036105', '-60.517933', '-61.923771', 'Port of Spain', 'North America', 'NA', 'en-TT,hns,fr,es,zh', 'TTO', 3573591, '+1-868'),
(227, 'TV', 'Tuvalu', 'AUD', 'TV', '798', '-5.641972', '-10.801169', '179.863281', '176.064865', 'Funafuti', 'Oceania', 'OC', 'tvl,en,sm,gil', 'TUV', 2110297, '+688'),
(228, 'TW', 'Taiwan', 'TWD', 'TW', '158', '25.3002899036181', '21.896606934717', '122.006739823315', '119.534691', 'Taipei', 'Asia', 'AS', 'zh-TW,zh,nan,hak', 'TWN', 1668284, '+886'),
(229, 'TZ', 'Tanzania', 'TZS', 'TZ', '834', '-0.990736', '-11.745696', '40.443222', '29.327168', 'Dodoma', 'Africa', 'AF', 'sw-TZ,en,ar', 'TZA', 149590, '+255'),
(230, 'UA', 'Ukraine', 'UAH', 'UP', '804', '52.369362', '44.390415', '40.20739', '22.128889', 'Kyiv', 'Europe', 'EU', 'uk,ru-UA,rom,pl,hu', 'UKR', 690791, '+380'),
(231, 'UG', 'Uganda', 'UGX', 'UG', '800', '4.214427', '-1.48405', '35.036049', '29.573252', 'Kampala', 'Africa', 'AF', 'en-UG,lg,sw,ar', 'UGA', 226074, '+256'),
(232, 'UM', 'U.S. Minor Outlying Islands', 'USD', '', '581', '28.219814', '-0.389006', '166.654526', '-177.392029', '', 'Oceania', 'OC', 'en-UM', 'UMI', 5854968, '+1'),
(233, 'US', 'United States', 'USD', 'US', '840', '49.388611', '24.544245', '-66.954811', '-124.733253', 'Washington', 'North America', 'NA', 'en-US,es-US,haw,fr', 'USA', 6252001, '+1'),
(234, 'UY', 'Uruguay', 'UYU', 'UY', '858', '-30.082224', '-34.980816', '-53.073933', '-58.442722', 'Montevideo', 'South America', 'SA', 'es-UY', 'URY', 3439705, '+598'),
(235, 'UZ', 'Uzbekistan', 'UZS', 'UZ', '860', '45.575001', '37.184444', '73.132278', '55.996639', 'Tashkent', 'Asia', 'AS', 'uz,ru,tg', 'UZB', 1512440, '+998'),
(236, 'VA', 'Vatican City', 'EUR', 'VT', '336', '41.90743830885576', '41.90027960306854', '12.45837546629481', '12.44570678169205', 'Vatican', 'Europe', 'EU', 'la,it,fr', 'VAT', 3164670, '+379'),
(237, 'VC', 'Saint Vincent and the Grenadines', 'XCD', 'VC', '670', '13.377834', '12.583984810969037', '-61.11388', '-61.46090317727658', 'Kingstown', 'North America', 'NA', 'en-VC,fr', 'VCT', 3577815, '+1-784'),
(238, 'VE', 'Venezuela', 'VEF', 'VE', '862', '12.201903', '0.626311', '-59.80378', '-73.354073', 'Caracas', 'South America', 'SA', 'es-VE', 'VEN', 3625428, '+58'),
(239, 'VG', 'British Virgin Islands', 'USD', 'VI', '092', '18.757221', '18.383710898211305', '-64.268768', '-64.71312752730364', 'Road Town', 'North America', 'NA', 'en-VG', 'VGB', 3577718, '+1-284'),
(240, 'VI', 'U.S. Virgin Islands', 'USD', 'VQ', '850', '18.415382', '17.673931', '-64.565193', '-65.101333', 'Charlotte Amalie', 'North America', 'NA', 'en-VI', 'VIR', 4796775, '+1-340'),
(241, 'VN', 'Vietnam', 'VND', 'VM', '704', '23.388834', '8.559611', '109.464638', '102.148224', 'Hanoi', 'Asia', 'AS', 'vi,en,fr,zh,km', 'VNM', 1562822, '+84'),
(242, 'VU', 'Vanuatu', 'VUV', 'NH', '548', '-13.073444', '-20.248945', '169.904785', '166.524979', 'Port Vila', 'Oceania', 'OC', 'bi,en-VU,fr-VU', 'VUT', 2134431, '+678'),
(243, 'WF', 'Wallis and Futuna', 'XPF', 'WF', '876', '-13.216758181061444', '-14.314559989820843', '-176.16174317718253', '-178.1848112896414', 'Mata-Utu', 'Oceania', 'OC', 'wls,fud,fr-WF', 'WLF', 4034749, '+681'),
(244, 'WS', 'Samoa', 'WST', 'WS', '882', '-13.432207', '-14.040939', '-171.415741', '-172.798599', 'Apia', 'Oceania', 'OC', 'sm,en-WS', 'WSM', 4034894, '+685'),
(245, 'XK', 'Kosovo', 'EUR', 'KV', '0', '43.2682495807952', '41.856369601859925', '21.80335088694943', '19.977481504492914', 'Pristina', 'Europe', 'EU', 'sq,sr', 'XKX', 831053, '+383'),
(246, 'YE', 'Yemen', 'YER', 'YM', '887', '18.9999989031009', '12.1110910264462', '54.5305388163283', '42.5325394314234', 'Sanaa', 'Asia', 'AS', 'ar-YE', 'YEM', 69543, '+967'),
(247, 'YT', 'Mayotte', 'EUR', 'MF', '175', '-12.648891', '-13.000132', '45.29295', '45.03796', 'Mamoutzou', 'Africa', 'AF', 'fr-YT', 'MYT', 1024031, '+262'),
(248, 'ZA', 'South Africa', 'ZAR', 'SF', '710', '-22.126612', '-34.839828', '32.895973', '16.458021', 'Pretoria', 'Africa', 'AF', 'zu,xh,af,nso,en-ZA,tn,st,ts,ss,ve,nr', 'ZAF', 953987, '+27'),
(249, 'ZM', 'Zambia', 'ZMW', 'ZA', '894', '-8.22436', '-18.079473', '33.705704', '21.999371', 'Lusaka', 'Africa', 'AF', 'en-ZM,bem,loz,lun,lue,ny,toi', 'ZMB', 895949, '+260'),
(250, 'ZW', 'Zimbabwe', 'ZWL', 'ZI', '716', '-15.608835', '-22.417738', '33.056305', '25.237028', 'Harare', 'Africa', 'AF', 'en-ZW,sn,nr,nd', 'ZWE', 878675, '+263');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faq_category_id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(191) NOT NULL,
  `answer` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `faq_category_id`, `question`, `answer`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(12, 2, 'What are the main stages of business plan consulting?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 1, '2025-07-17 10:34:00', '2025-07-17 10:34:00'),
(13, 2, 'What are the advantages of using business plan consulting services?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, 2, '2025-07-17 10:34:00', '2025-07-17 10:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `slug`, `is_active`, `sort_order`, `created_at`, `updated_at`) VALUES
(2, 'Services', 'services', 1, 1, '2025-02-17 04:37:08', '2025-07-17 10:33:36');

-- --------------------------------------------------------

--
-- Table structure for table `firebase_notifications`
--

CREATE TABLE `firebase_notifications` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `item_type` varchar(255) NOT NULL,
  `item_type_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `image` int(11) DEFAULT NULL,
  `mobile_image` int(11) DEFAULT NULL,
  `video_file` varchar(191) DEFAULT NULL,
  `video_url` varchar(191) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `sub_title` varchar(191) DEFAULT NULL,
  `btn_text` varchar(191) DEFAULT NULL,
  `link_type` varchar(191) DEFAULT NULL,
  `link_ref` varchar(191) DEFAULT NULL,
  `link_ref_id` int(11) DEFAULT NULL,
  `link` varchar(191) DEFAULT NULL,
  `sort_order` int(11) DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `name`, `image`, `mobile_image`, `video_file`, `video_url`, `title`, `sub_title`, `btn_text`, `link_type`, `link_ref`, `link_ref_id`, `link`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(7, 'KUBIK', 55, NULL, NULL, NULL, 'The Art of Building', 'Excellence in London', NULL, NULL, NULL, NULL, NULL, 1, 1, '2025-07-16 06:30:06', '2025-07-25 10:05:42');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(37, 'default', '{\"uuid\":\"ba8bc5f4-3a9d-423a-a7f0-339cd057ede9\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":3:{s:5:\\\"array\\\";a:4:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:47:\\\"A new order has been placed - 20250417-17592528\\\";s:4:\\\"from\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:7:\\\"user_id\\\";N;s:16:\\\"shipping_address\\\";s:127:\\\"{\\\"name\\\":null,\\\"email\\\":null,\\\"address\\\":null,\\\"zipcode\\\":null,\\\"city\\\":null,\\\"state\\\":null,\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":null}\\\";s:15:\\\"billing_address\\\";s:127:\\\"{\\\"name\\\":null,\\\"email\\\":null,\\\"address\\\":null,\\\"zipcode\\\":null,\\\"city\\\":null,\\\"state\\\":null,\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":null}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:13:\\\"free_shipping\\\";s:13:\\\"shipping_cost\\\";d:0;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:1219;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:1319;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250417-17592528\\\";s:4:\\\"date\\\";i:1744898365;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 17:59:25\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-17 17:59:25\\\";s:2:\\\"id\\\";i:19;s:11:\\\"coupon_code\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:7:\\\"user_id\\\";N;s:16:\\\"shipping_address\\\";s:127:\\\"{\\\"name\\\":null,\\\"email\\\":null,\\\"address\\\":null,\\\"zipcode\\\":null,\\\"city\\\":null,\\\"state\\\":null,\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":null}\\\";s:15:\\\"billing_address\\\";s:127:\\\"{\\\"name\\\":null,\\\"email\\\":null,\\\"address\\\":null,\\\"zipcode\\\":null,\\\"city\\\":null,\\\"state\\\":null,\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":null}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:13:\\\"free_shipping\\\";s:13:\\\"shipping_cost\\\";d:0;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:1219;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:1319;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250417-17592528\\\";s:4:\\\"date\\\";i:1744898365;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 17:59:25\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-17 17:59:25\\\";s:2:\\\"id\\\";i:19;s:11:\\\"coupon_code\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:4:{s:11:\\\"grand_total\\\";d:1219;s:9:\\\"sub_total\\\";d:1319;s:14:\\\"offer_discount\\\";d:100;s:11:\\\"coupon_code\\\";N;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:27:{i:0;s:4:\\\"code\\\";i:1;s:7:\\\"user_id\\\";i:2;s:18:\\\"estimated_delivery\\\";i:3;s:16:\\\"shipping_address\\\";i:4;s:15:\\\"billing_address\\\";i:5;s:11:\\\"order_notes\\\";i:6;s:15:\\\"delivery_status\\\";i:7;s:12:\\\"payment_type\\\";i:8;s:14:\\\"payment_status\\\";i:9;s:15:\\\"payment_details\\\";i:10;s:19:\\\"payment_tracking_id\\\";i:11;s:13:\\\"shipping_type\\\";i:12;s:13:\\\"shipping_cost\\\";i:13;s:3:\\\"tax\\\";i:14;s:11:\\\"grand_total\\\";i:15;s:9:\\\"sub_total\\\";i:16;s:15:\\\"coupon_discount\\\";i:17;s:11:\\\"coupon_code\\\";i:18;s:14:\\\"offer_discount\\\";i:19;s:13:\\\"tracking_code\\\";i:20;s:23:\\\"delivery_completed_date\\\";i:21;s:4:\\\"date\\\";i:22;s:14:\\\"cancel_request\\\";i:23;s:19:\\\"cancel_request_date\\\";i:24;s:15:\\\"cancel_approval\\\";i:25;s:20:\\\"cancel_approval_date\\\";i:26;s:13:\\\"cancel_reason\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1744898365, 1744898365),
(36, 'default', '{\"uuid\":\"9d277382-be06-4cb8-bde9-cfb7605abacb\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":3:{s:5:\\\"array\\\";a:4:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:47:\\\"A new order has been placed - 20250417-17581794\\\";s:4:\\\"from\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:227:\\\"{\\\"name\\\":\\\"Shipping name\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Shipping address\\\",\\\"zipcode\\\":\\\"Shipping zip\\\",\\\"city\\\":\\\"Shipping city\\\",\\\"state\\\":\\\"Shipping state\\\",\\\"country\\\":\\\"Shipping  United Arab Emirates\\\",\\\"phone\\\":\\\"1111111111111\\\"}\\\";s:15:\\\"billing_address\\\";s:218:\\\"{\\\"name\\\":\\\"Billing name\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Billing address\\\",\\\"zipcode\\\":\\\"Billing zip\\\",\\\"city\\\":\\\"Billing city\\\",\\\"state\\\":\\\"Billing state\\\",\\\"country\\\":\\\"Billing United Arab Emirates\\\",\\\"phone\\\":\\\"22222222222\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:840;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:820;s:14:\\\"offer_discount\\\";d:0;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250417-17581794\\\";s:4:\\\"date\\\";i:1744898297;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 17:58:17\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-17 17:58:17\\\";s:2:\\\"id\\\";i:18;s:11:\\\"coupon_code\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:227:\\\"{\\\"name\\\":\\\"Shipping name\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Shipping address\\\",\\\"zipcode\\\":\\\"Shipping zip\\\",\\\"city\\\":\\\"Shipping city\\\",\\\"state\\\":\\\"Shipping state\\\",\\\"country\\\":\\\"Shipping  United Arab Emirates\\\",\\\"phone\\\":\\\"1111111111111\\\"}\\\";s:15:\\\"billing_address\\\";s:218:\\\"{\\\"name\\\":\\\"Billing name\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Billing address\\\",\\\"zipcode\\\":\\\"Billing zip\\\",\\\"city\\\":\\\"Billing city\\\",\\\"state\\\":\\\"Billing state\\\",\\\"country\\\":\\\"Billing United Arab Emirates\\\",\\\"phone\\\":\\\"22222222222\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:840;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:820;s:14:\\\"offer_discount\\\";d:0;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250417-17581794\\\";s:4:\\\"date\\\";i:1744898297;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 17:58:17\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-17 17:58:17\\\";s:2:\\\"id\\\";i:18;s:11:\\\"coupon_code\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:5:{s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:11:\\\"grand_total\\\";d:840;s:9:\\\"sub_total\\\";d:820;s:11:\\\"coupon_code\\\";N;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:4:\\\"user\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:4:\\\"name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";s:14:\\\"\\u0000*\\u0000accessToken\\\";N;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:27:{i:0;s:4:\\\"code\\\";i:1;s:7:\\\"user_id\\\";i:2;s:18:\\\"estimated_delivery\\\";i:3;s:16:\\\"shipping_address\\\";i:4;s:15:\\\"billing_address\\\";i:5;s:11:\\\"order_notes\\\";i:6;s:15:\\\"delivery_status\\\";i:7;s:12:\\\"payment_type\\\";i:8;s:14:\\\"payment_status\\\";i:9;s:15:\\\"payment_details\\\";i:10;s:19:\\\"payment_tracking_id\\\";i:11;s:13:\\\"shipping_type\\\";i:12;s:13:\\\"shipping_cost\\\";i:13;s:3:\\\"tax\\\";i:14;s:11:\\\"grand_total\\\";i:15;s:9:\\\"sub_total\\\";i:16;s:15:\\\"coupon_discount\\\";i:17;s:11:\\\"coupon_code\\\";i:18;s:14:\\\"offer_discount\\\";i:19;s:13:\\\"tracking_code\\\";i:20;s:23:\\\"delivery_completed_date\\\";i:21;s:4:\\\"date\\\";i:22;s:14:\\\"cancel_request\\\";i:23;s:19:\\\"cancel_request_date\\\";i:24;s:15:\\\"cancel_approval\\\";i:25;s:20:\\\"cancel_approval_date\\\";i:26;s:13:\\\"cancel_reason\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1744898297, 1744898297),
(33, 'default', '{\"uuid\":\"c5f1d40e-5e6a-4ec3-ad48-ca795bb1a848\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":3:{s:5:\\\"array\\\";a:4:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:44:\\\"Thank you for your order - 20250417-17322822\\\";s:4:\\\"from\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:179:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat No 303, Building name\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"Dubai\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"UAE\\\",\\\"phone\\\":\\\"+971568650838\\\"}\\\";s:15:\\\"billing_address\\\";s:179:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat No 303, Building name\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"Dubai\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"UAE\\\",\\\"phone\\\":\\\"+971568650838\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:13:\\\"free_shipping\\\";s:13:\\\"shipping_cost\\\";d:0;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:3789.57;s:3:\\\"tax\\\";d:33.57;s:9:\\\"sub_total\\\";d:3856;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250417-17322822\\\";s:4:\\\"date\\\";i:1744896748;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 17:32:28\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-17 17:32:28\\\";s:2:\\\"id\\\";i:17;s:11:\\\"coupon_code\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:179:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat No 303, Building name\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"Dubai\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"UAE\\\",\\\"phone\\\":\\\"+971568650838\\\"}\\\";s:15:\\\"billing_address\\\";s:179:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat No 303, Building name\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"Dubai\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"UAE\\\",\\\"phone\\\":\\\"+971568650838\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:13:\\\"free_shipping\\\";s:13:\\\"shipping_cost\\\";d:0;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:3789.57;s:3:\\\"tax\\\";d:33.57;s:9:\\\"sub_total\\\";d:3856;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250417-17322822\\\";s:4:\\\"date\\\";i:1744896748;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 17:32:28\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-17 17:32:28\\\";s:2:\\\"id\\\";i:17;s:11:\\\"coupon_code\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:5:{s:11:\\\"grand_total\\\";d:3789.57;s:3:\\\"tax\\\";d:33.57;s:9:\\\"sub_total\\\";d:3856;s:14:\\\"offer_discount\\\";d:100;s:11:\\\"coupon_code\\\";N;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:4:\\\"user\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:4:\\\"name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";s:14:\\\"\\u0000*\\u0000accessToken\\\";N;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:27:{i:0;s:4:\\\"code\\\";i:1;s:7:\\\"user_id\\\";i:2;s:18:\\\"estimated_delivery\\\";i:3;s:16:\\\"shipping_address\\\";i:4;s:15:\\\"billing_address\\\";i:5;s:11:\\\"order_notes\\\";i:6;s:15:\\\"delivery_status\\\";i:7;s:12:\\\"payment_type\\\";i:8;s:14:\\\"payment_status\\\";i:9;s:15:\\\"payment_details\\\";i:10;s:19:\\\"payment_tracking_id\\\";i:11;s:13:\\\"shipping_type\\\";i:12;s:13:\\\"shipping_cost\\\";i:13;s:3:\\\"tax\\\";i:14;s:11:\\\"grand_total\\\";i:15;s:9:\\\"sub_total\\\";i:16;s:15:\\\"coupon_discount\\\";i:17;s:11:\\\"coupon_code\\\";i:18;s:14:\\\"offer_discount\\\";i:19;s:13:\\\"tracking_code\\\";i:20;s:23:\\\"delivery_completed_date\\\";i:21;s:4:\\\"date\\\";i:22;s:14:\\\"cancel_request\\\";i:23;s:19:\\\"cancel_request_date\\\";i:24;s:15:\\\"cancel_approval\\\";i:25;s:20:\\\"cancel_approval_date\\\";i:26;s:13:\\\"cancel_reason\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1744896748, 1744896748),
(34, 'default', '{\"uuid\":\"d1ba1506-f555-4190-a40a-3a6ebc7aee4f\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":3:{s:5:\\\"array\\\";a:4:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:47:\\\"A new order has been placed - 20250417-17322822\\\";s:4:\\\"from\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:179:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat No 303, Building name\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"Dubai\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"UAE\\\",\\\"phone\\\":\\\"+971568650838\\\"}\\\";s:15:\\\"billing_address\\\";s:179:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat No 303, Building name\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"Dubai\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"UAE\\\",\\\"phone\\\":\\\"+971568650838\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:13:\\\"free_shipping\\\";s:13:\\\"shipping_cost\\\";d:0;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:3789.57;s:3:\\\"tax\\\";d:33.57;s:9:\\\"sub_total\\\";d:3856;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250417-17322822\\\";s:4:\\\"date\\\";i:1744896748;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 17:32:28\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-17 17:32:28\\\";s:2:\\\"id\\\";i:17;s:11:\\\"coupon_code\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:179:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat No 303, Building name\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"Dubai\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"UAE\\\",\\\"phone\\\":\\\"+971568650838\\\"}\\\";s:15:\\\"billing_address\\\";s:179:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat No 303, Building name\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"Dubai\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"UAE\\\",\\\"phone\\\":\\\"+971568650838\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:13:\\\"free_shipping\\\";s:13:\\\"shipping_cost\\\";d:0;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:3789.57;s:3:\\\"tax\\\";d:33.57;s:9:\\\"sub_total\\\";d:3856;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250417-17322822\\\";s:4:\\\"date\\\";i:1744896748;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 17:32:28\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-17 17:32:28\\\";s:2:\\\"id\\\";i:17;s:11:\\\"coupon_code\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:5:{s:11:\\\"grand_total\\\";d:3789.57;s:3:\\\"tax\\\";d:33.57;s:9:\\\"sub_total\\\";d:3856;s:14:\\\"offer_discount\\\";d:100;s:11:\\\"coupon_code\\\";N;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:4:\\\"user\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:4:\\\"name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";s:14:\\\"\\u0000*\\u0000accessToken\\\";N;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:27:{i:0;s:4:\\\"code\\\";i:1;s:7:\\\"user_id\\\";i:2;s:18:\\\"estimated_delivery\\\";i:3;s:16:\\\"shipping_address\\\";i:4;s:15:\\\"billing_address\\\";i:5;s:11:\\\"order_notes\\\";i:6;s:15:\\\"delivery_status\\\";i:7;s:12:\\\"payment_type\\\";i:8;s:14:\\\"payment_status\\\";i:9;s:15:\\\"payment_details\\\";i:10;s:19:\\\"payment_tracking_id\\\";i:11;s:13:\\\"shipping_type\\\";i:12;s:13:\\\"shipping_cost\\\";i:13;s:3:\\\"tax\\\";i:14;s:11:\\\"grand_total\\\";i:15;s:9:\\\"sub_total\\\";i:16;s:15:\\\"coupon_discount\\\";i:17;s:11:\\\"coupon_code\\\";i:18;s:14:\\\"offer_discount\\\";i:19;s:13:\\\"tracking_code\\\";i:20;s:23:\\\"delivery_completed_date\\\";i:21;s:4:\\\"date\\\";i:22;s:14:\\\"cancel_request\\\";i:23;s:19:\\\"cancel_request_date\\\";i:24;s:15:\\\"cancel_approval\\\";i:25;s:20:\\\"cancel_approval_date\\\";i:26;s:13:\\\"cancel_reason\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1744896748, 1744896748),
(35, 'default', '{\"uuid\":\"16904695-3275-48d7-bbdb-93d466fa1a28\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":3:{s:5:\\\"array\\\";a:4:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:44:\\\"Thank you for your order - 20250417-17581794\\\";s:4:\\\"from\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:227:\\\"{\\\"name\\\":\\\"Shipping name\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Shipping address\\\",\\\"zipcode\\\":\\\"Shipping zip\\\",\\\"city\\\":\\\"Shipping city\\\",\\\"state\\\":\\\"Shipping state\\\",\\\"country\\\":\\\"Shipping  United Arab Emirates\\\",\\\"phone\\\":\\\"1111111111111\\\"}\\\";s:15:\\\"billing_address\\\";s:218:\\\"{\\\"name\\\":\\\"Billing name\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Billing address\\\",\\\"zipcode\\\":\\\"Billing zip\\\",\\\"city\\\":\\\"Billing city\\\",\\\"state\\\":\\\"Billing state\\\",\\\"country\\\":\\\"Billing United Arab Emirates\\\",\\\"phone\\\":\\\"22222222222\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:840;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:820;s:14:\\\"offer_discount\\\";d:0;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250417-17581794\\\";s:4:\\\"date\\\";i:1744898297;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 17:58:17\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-17 17:58:17\\\";s:2:\\\"id\\\";i:18;s:11:\\\"coupon_code\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:227:\\\"{\\\"name\\\":\\\"Shipping name\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Shipping address\\\",\\\"zipcode\\\":\\\"Shipping zip\\\",\\\"city\\\":\\\"Shipping city\\\",\\\"state\\\":\\\"Shipping state\\\",\\\"country\\\":\\\"Shipping  United Arab Emirates\\\",\\\"phone\\\":\\\"1111111111111\\\"}\\\";s:15:\\\"billing_address\\\";s:218:\\\"{\\\"name\\\":\\\"Billing name\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Billing address\\\",\\\"zipcode\\\":\\\"Billing zip\\\",\\\"city\\\":\\\"Billing city\\\",\\\"state\\\":\\\"Billing state\\\",\\\"country\\\":\\\"Billing United Arab Emirates\\\",\\\"phone\\\":\\\"22222222222\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:840;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:820;s:14:\\\"offer_discount\\\";d:0;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250417-17581794\\\";s:4:\\\"date\\\";i:1744898297;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 17:58:17\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-17 17:58:17\\\";s:2:\\\"id\\\";i:18;s:11:\\\"coupon_code\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:5:{s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:11:\\\"grand_total\\\";d:840;s:9:\\\"sub_total\\\";d:820;s:11:\\\"coupon_code\\\";N;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:4:\\\"user\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:4:\\\"name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";s:14:\\\"\\u0000*\\u0000accessToken\\\";N;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:27:{i:0;s:4:\\\"code\\\";i:1;s:7:\\\"user_id\\\";i:2;s:18:\\\"estimated_delivery\\\";i:3;s:16:\\\"shipping_address\\\";i:4;s:15:\\\"billing_address\\\";i:5;s:11:\\\"order_notes\\\";i:6;s:15:\\\"delivery_status\\\";i:7;s:12:\\\"payment_type\\\";i:8;s:14:\\\"payment_status\\\";i:9;s:15:\\\"payment_details\\\";i:10;s:19:\\\"payment_tracking_id\\\";i:11;s:13:\\\"shipping_type\\\";i:12;s:13:\\\"shipping_cost\\\";i:13;s:3:\\\"tax\\\";i:14;s:11:\\\"grand_total\\\";i:15;s:9:\\\"sub_total\\\";i:16;s:15:\\\"coupon_discount\\\";i:17;s:11:\\\"coupon_code\\\";i:18;s:14:\\\"offer_discount\\\";i:19;s:13:\\\"tracking_code\\\";i:20;s:23:\\\"delivery_completed_date\\\";i:21;s:4:\\\"date\\\";i:22;s:14:\\\"cancel_request\\\";i:23;s:19:\\\"cancel_request_date\\\";i:24;s:15:\\\"cancel_approval\\\";i:25;s:20:\\\"cancel_approval_date\\\";i:26;s:13:\\\"cancel_reason\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1744898297, 1744898297);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(38, 'default', '{\"uuid\":\"1e52f970-687b-4e60-853a-ecd325b113af\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":3:{s:5:\\\"array\\\";a:4:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:44:\\\"Thank you for your order - 20250417-18071882\\\";s:4:\\\"from\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:179:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat No 303, Building name\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"Dubai\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"UAE\\\",\\\"phone\\\":\\\"+971568650838\\\"}\\\";s:15:\\\"billing_address\\\";s:179:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat No 303, Building name\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"Dubai\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"UAE\\\",\\\"phone\\\":\\\"+971568650838\\\"}\\\";s:11:\\\"order_notes\\\";s:19:\\\"sfvsdgfdfgsdfghfhgf\\\";s:13:\\\"shipping_type\\\";s:13:\\\"free_shipping\\\";s:13:\\\"shipping_cost\\\";d:0;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:1130.19;s:3:\\\"tax\\\";d:11.19;s:9:\\\"sub_total\\\";d:1119;s:14:\\\"offer_discount\\\";d:0;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250417-18071882\\\";s:4:\\\"date\\\";i:1744898838;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 18:07:18\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-17 18:07:18\\\";s:2:\\\"id\\\";i:20;s:11:\\\"coupon_code\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:179:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat No 303, Building name\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"Dubai\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"UAE\\\",\\\"phone\\\":\\\"+971568650838\\\"}\\\";s:15:\\\"billing_address\\\";s:179:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat No 303, Building name\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"Dubai\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"UAE\\\",\\\"phone\\\":\\\"+971568650838\\\"}\\\";s:11:\\\"order_notes\\\";s:19:\\\"sfvsdgfdfgsdfghfhgf\\\";s:13:\\\"shipping_type\\\";s:13:\\\"free_shipping\\\";s:13:\\\"shipping_cost\\\";d:0;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:1130.19;s:3:\\\"tax\\\";d:11.19;s:9:\\\"sub_total\\\";d:1119;s:14:\\\"offer_discount\\\";d:0;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250417-18071882\\\";s:4:\\\"date\\\";i:1744898838;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 18:07:18\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-17 18:07:18\\\";s:2:\\\"id\\\";i:20;s:11:\\\"coupon_code\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:4:{s:11:\\\"grand_total\\\";d:1130.19;s:3:\\\"tax\\\";d:11.19;s:9:\\\"sub_total\\\";d:1119;s:11:\\\"coupon_code\\\";N;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:4:\\\"user\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:4:\\\"name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";s:14:\\\"\\u0000*\\u0000accessToken\\\";N;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:27:{i:0;s:4:\\\"code\\\";i:1;s:7:\\\"user_id\\\";i:2;s:18:\\\"estimated_delivery\\\";i:3;s:16:\\\"shipping_address\\\";i:4;s:15:\\\"billing_address\\\";i:5;s:11:\\\"order_notes\\\";i:6;s:15:\\\"delivery_status\\\";i:7;s:12:\\\"payment_type\\\";i:8;s:14:\\\"payment_status\\\";i:9;s:15:\\\"payment_details\\\";i:10;s:19:\\\"payment_tracking_id\\\";i:11;s:13:\\\"shipping_type\\\";i:12;s:13:\\\"shipping_cost\\\";i:13;s:3:\\\"tax\\\";i:14;s:11:\\\"grand_total\\\";i:15;s:9:\\\"sub_total\\\";i:16;s:15:\\\"coupon_discount\\\";i:17;s:11:\\\"coupon_code\\\";i:18;s:14:\\\"offer_discount\\\";i:19;s:13:\\\"tracking_code\\\";i:20;s:23:\\\"delivery_completed_date\\\";i:21;s:4:\\\"date\\\";i:22;s:14:\\\"cancel_request\\\";i:23;s:19:\\\"cancel_request_date\\\";i:24;s:15:\\\"cancel_approval\\\";i:25;s:20:\\\"cancel_approval_date\\\";i:26;s:13:\\\"cancel_reason\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1744898838, 1744898838),
(39, 'default', '{\"uuid\":\"9459b9aa-b059-449b-9d2c-899f8138c0f8\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":3:{s:5:\\\"array\\\";a:4:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:47:\\\"A new order has been placed - 20250417-18071882\\\";s:4:\\\"from\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:179:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat No 303, Building name\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"Dubai\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"UAE\\\",\\\"phone\\\":\\\"+971568650838\\\"}\\\";s:15:\\\"billing_address\\\";s:179:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat No 303, Building name\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"Dubai\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"UAE\\\",\\\"phone\\\":\\\"+971568650838\\\"}\\\";s:11:\\\"order_notes\\\";s:19:\\\"sfvsdgfdfgsdfghfhgf\\\";s:13:\\\"shipping_type\\\";s:13:\\\"free_shipping\\\";s:13:\\\"shipping_cost\\\";d:0;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:1130.19;s:3:\\\"tax\\\";d:11.19;s:9:\\\"sub_total\\\";d:1119;s:14:\\\"offer_discount\\\";d:0;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250417-18071882\\\";s:4:\\\"date\\\";i:1744898838;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 18:07:18\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-17 18:07:18\\\";s:2:\\\"id\\\";i:20;s:11:\\\"coupon_code\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:179:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat No 303, Building name\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"Dubai\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"UAE\\\",\\\"phone\\\":\\\"+971568650838\\\"}\\\";s:15:\\\"billing_address\\\";s:179:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat No 303, Building name\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"Dubai\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"UAE\\\",\\\"phone\\\":\\\"+971568650838\\\"}\\\";s:11:\\\"order_notes\\\";s:19:\\\"sfvsdgfdfgsdfghfhgf\\\";s:13:\\\"shipping_type\\\";s:13:\\\"free_shipping\\\";s:13:\\\"shipping_cost\\\";d:0;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:1130.19;s:3:\\\"tax\\\";d:11.19;s:9:\\\"sub_total\\\";d:1119;s:14:\\\"offer_discount\\\";d:0;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250417-18071882\\\";s:4:\\\"date\\\";i:1744898838;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 18:07:18\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-17 18:07:18\\\";s:2:\\\"id\\\";i:20;s:11:\\\"coupon_code\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:4:{s:11:\\\"grand_total\\\";d:1130.19;s:3:\\\"tax\\\";d:11.19;s:9:\\\"sub_total\\\";d:1119;s:11:\\\"coupon_code\\\";N;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:4:\\\"user\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:4:\\\"name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";s:14:\\\"\\u0000*\\u0000accessToken\\\";N;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:27:{i:0;s:4:\\\"code\\\";i:1;s:7:\\\"user_id\\\";i:2;s:18:\\\"estimated_delivery\\\";i:3;s:16:\\\"shipping_address\\\";i:4;s:15:\\\"billing_address\\\";i:5;s:11:\\\"order_notes\\\";i:6;s:15:\\\"delivery_status\\\";i:7;s:12:\\\"payment_type\\\";i:8;s:14:\\\"payment_status\\\";i:9;s:15:\\\"payment_details\\\";i:10;s:19:\\\"payment_tracking_id\\\";i:11;s:13:\\\"shipping_type\\\";i:12;s:13:\\\"shipping_cost\\\";i:13;s:3:\\\"tax\\\";i:14;s:11:\\\"grand_total\\\";i:15;s:9:\\\"sub_total\\\";i:16;s:15:\\\"coupon_discount\\\";i:17;s:11:\\\"coupon_code\\\";i:18;s:14:\\\"offer_discount\\\";i:19;s:13:\\\"tracking_code\\\";i:20;s:23:\\\"delivery_completed_date\\\";i:21;s:4:\\\"date\\\";i:22;s:14:\\\"cancel_request\\\";i:23;s:19:\\\"cancel_request_date\\\";i:24;s:15:\\\"cancel_approval\\\";i:25;s:20:\\\"cancel_approval_date\\\";i:26;s:13:\\\"cancel_reason\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1744898838, 1744898838),
(40, 'default', '{\"uuid\":\"1ad0d0a5-378a-494e-b932-b2c722c8fa74\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":3:{s:5:\\\"array\\\";a:4:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:44:\\\"Thank you for your order - 20250417-18192491\\\";s:4:\\\"from\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:179:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat No 303, Building name\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"Dubai\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"UAE\\\",\\\"phone\\\":\\\"+971568650838\\\"}\\\";s:15:\\\"billing_address\\\";s:179:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat No 303, Building name\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"Dubai\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"UAE\\\",\\\"phone\\\":\\\"+971568650838\\\"}\\\";s:11:\\\"order_notes\\\";s:13:\\\"zsfdsfsdgfdsg\\\";s:13:\\\"shipping_type\\\";s:13:\\\"free_shipping\\\";s:13:\\\"shipping_cost\\\";d:0;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:1219;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:1319;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250417-18192491\\\";s:4:\\\"date\\\";i:1744899564;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 18:19:24\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-17 18:19:24\\\";s:2:\\\"id\\\";i:21;s:11:\\\"coupon_code\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:179:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat No 303, Building name\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"Dubai\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"UAE\\\",\\\"phone\\\":\\\"+971568650838\\\"}\\\";s:15:\\\"billing_address\\\";s:179:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat No 303, Building name\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"Dubai\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"UAE\\\",\\\"phone\\\":\\\"+971568650838\\\"}\\\";s:11:\\\"order_notes\\\";s:13:\\\"zsfdsfsdgfdsg\\\";s:13:\\\"shipping_type\\\";s:13:\\\"free_shipping\\\";s:13:\\\"shipping_cost\\\";d:0;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:1219;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:1319;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250417-18192491\\\";s:4:\\\"date\\\";i:1744899564;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 18:19:24\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-17 18:19:24\\\";s:2:\\\"id\\\";i:21;s:11:\\\"coupon_code\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:4:{s:11:\\\"grand_total\\\";d:1219;s:9:\\\"sub_total\\\";d:1319;s:14:\\\"offer_discount\\\";d:100;s:11:\\\"coupon_code\\\";N;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:4:\\\"user\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:4:\\\"name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";s:14:\\\"\\u0000*\\u0000accessToken\\\";N;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:27:{i:0;s:4:\\\"code\\\";i:1;s:7:\\\"user_id\\\";i:2;s:18:\\\"estimated_delivery\\\";i:3;s:16:\\\"shipping_address\\\";i:4;s:15:\\\"billing_address\\\";i:5;s:11:\\\"order_notes\\\";i:6;s:15:\\\"delivery_status\\\";i:7;s:12:\\\"payment_type\\\";i:8;s:14:\\\"payment_status\\\";i:9;s:15:\\\"payment_details\\\";i:10;s:19:\\\"payment_tracking_id\\\";i:11;s:13:\\\"shipping_type\\\";i:12;s:13:\\\"shipping_cost\\\";i:13;s:3:\\\"tax\\\";i:14;s:11:\\\"grand_total\\\";i:15;s:9:\\\"sub_total\\\";i:16;s:15:\\\"coupon_discount\\\";i:17;s:11:\\\"coupon_code\\\";i:18;s:14:\\\"offer_discount\\\";i:19;s:13:\\\"tracking_code\\\";i:20;s:23:\\\"delivery_completed_date\\\";i:21;s:4:\\\"date\\\";i:22;s:14:\\\"cancel_request\\\";i:23;s:19:\\\"cancel_request_date\\\";i:24;s:15:\\\"cancel_approval\\\";i:25;s:20:\\\"cancel_approval_date\\\";i:26;s:13:\\\"cancel_reason\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1744899564, 1744899564),
(41, 'default', '{\"uuid\":\"d2d02580-0c77-4913-b124-1e374cba2c96\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":3:{s:5:\\\"array\\\";a:4:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:47:\\\"A new order has been placed - 20250417-18192491\\\";s:4:\\\"from\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:179:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat No 303, Building name\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"Dubai\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"UAE\\\",\\\"phone\\\":\\\"+971568650838\\\"}\\\";s:15:\\\"billing_address\\\";s:179:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat No 303, Building name\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"Dubai\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"UAE\\\",\\\"phone\\\":\\\"+971568650838\\\"}\\\";s:11:\\\"order_notes\\\";s:13:\\\"zsfdsfsdgfdsg\\\";s:13:\\\"shipping_type\\\";s:13:\\\"free_shipping\\\";s:13:\\\"shipping_cost\\\";d:0;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:1219;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:1319;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250417-18192491\\\";s:4:\\\"date\\\";i:1744899564;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 18:19:24\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-17 18:19:24\\\";s:2:\\\"id\\\";i:21;s:11:\\\"coupon_code\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:179:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat No 303, Building name\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"Dubai\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"UAE\\\",\\\"phone\\\":\\\"+971568650838\\\"}\\\";s:15:\\\"billing_address\\\";s:179:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat No 303, Building name\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"Dubai\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"UAE\\\",\\\"phone\\\":\\\"+971568650838\\\"}\\\";s:11:\\\"order_notes\\\";s:13:\\\"zsfdsfsdgfdsg\\\";s:13:\\\"shipping_type\\\";s:13:\\\"free_shipping\\\";s:13:\\\"shipping_cost\\\";d:0;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:1219;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:1319;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250417-18192491\\\";s:4:\\\"date\\\";i:1744899564;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 18:19:24\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-17 18:19:24\\\";s:2:\\\"id\\\";i:21;s:11:\\\"coupon_code\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:4:{s:11:\\\"grand_total\\\";d:1219;s:9:\\\"sub_total\\\";d:1319;s:14:\\\"offer_discount\\\";d:100;s:11:\\\"coupon_code\\\";N;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:4:\\\"user\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:4:\\\"name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";s:14:\\\"\\u0000*\\u0000accessToken\\\";N;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:27:{i:0;s:4:\\\"code\\\";i:1;s:7:\\\"user_id\\\";i:2;s:18:\\\"estimated_delivery\\\";i:3;s:16:\\\"shipping_address\\\";i:4;s:15:\\\"billing_address\\\";i:5;s:11:\\\"order_notes\\\";i:6;s:15:\\\"delivery_status\\\";i:7;s:12:\\\"payment_type\\\";i:8;s:14:\\\"payment_status\\\";i:9;s:15:\\\"payment_details\\\";i:10;s:19:\\\"payment_tracking_id\\\";i:11;s:13:\\\"shipping_type\\\";i:12;s:13:\\\"shipping_cost\\\";i:13;s:3:\\\"tax\\\";i:14;s:11:\\\"grand_total\\\";i:15;s:9:\\\"sub_total\\\";i:16;s:15:\\\"coupon_discount\\\";i:17;s:11:\\\"coupon_code\\\";i:18;s:14:\\\"offer_discount\\\";i:19;s:13:\\\"tracking_code\\\";i:20;s:23:\\\"delivery_completed_date\\\";i:21;s:4:\\\"date\\\";i:22;s:14:\\\"cancel_request\\\";i:23;s:19:\\\"cancel_request_date\\\";i:24;s:15:\\\"cancel_approval\\\";i:25;s:20:\\\"cancel_approval_date\\\";i:26;s:13:\\\"cancel_reason\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1744899564, 1744899564),
(42, 'default', '{\"uuid\":\"e2518ffd-2765-4e2e-8c63-1315ea1289a7\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":3:{s:5:\\\"array\\\";a:4:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:44:\\\"Thank you for your order - 20250417-18202757\\\";s:4:\\\"from\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:184:\\\"{\\\"name\\\":\\\"dfdsgfg\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"dfhgfhgfh\\\",\\\"zipcode\\\":\\\"sdgdsfg\\\",\\\"city\\\":\\\"sdgfsdg\\\",\\\"state\\\":\\\"sdgdfsgf\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"1122334455\\\"}\\\";s:15:\\\"billing_address\\\";s:184:\\\"{\\\"name\\\":\\\"dfdsgfg\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"dfhgfhgfh\\\",\\\"zipcode\\\":\\\"sdgdsfg\\\",\\\"city\\\":\\\"sdgfsdg\\\",\\\"state\\\":\\\"sdgdfsgf\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"1122334455\\\"}\\\";s:11:\\\"order_notes\\\";s:6:\\\"sdfdsf\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:669;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:749;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250417-18202757\\\";s:4:\\\"date\\\";i:1744899627;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 18:20:27\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-17 18:20:27\\\";s:2:\\\"id\\\";i:22;s:11:\\\"coupon_code\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:184:\\\"{\\\"name\\\":\\\"dfdsgfg\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"dfhgfhgfh\\\",\\\"zipcode\\\":\\\"sdgdsfg\\\",\\\"city\\\":\\\"sdgfsdg\\\",\\\"state\\\":\\\"sdgdfsgf\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"1122334455\\\"}\\\";s:15:\\\"billing_address\\\";s:184:\\\"{\\\"name\\\":\\\"dfdsgfg\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"dfhgfhgfh\\\",\\\"zipcode\\\":\\\"sdgdsfg\\\",\\\"city\\\":\\\"sdgfsdg\\\",\\\"state\\\":\\\"sdgdfsgf\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"1122334455\\\"}\\\";s:11:\\\"order_notes\\\";s:6:\\\"sdfdsf\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:669;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:749;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250417-18202757\\\";s:4:\\\"date\\\";i:1744899627;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 18:20:27\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-17 18:20:27\\\";s:2:\\\"id\\\";i:22;s:11:\\\"coupon_code\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:6:{s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:11:\\\"grand_total\\\";d:669;s:9:\\\"sub_total\\\";d:749;s:14:\\\"offer_discount\\\";d:100;s:11:\\\"coupon_code\\\";N;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:4:\\\"user\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:4:\\\"name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";s:14:\\\"\\u0000*\\u0000accessToken\\\";N;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:27:{i:0;s:4:\\\"code\\\";i:1;s:7:\\\"user_id\\\";i:2;s:18:\\\"estimated_delivery\\\";i:3;s:16:\\\"shipping_address\\\";i:4;s:15:\\\"billing_address\\\";i:5;s:11:\\\"order_notes\\\";i:6;s:15:\\\"delivery_status\\\";i:7;s:12:\\\"payment_type\\\";i:8;s:14:\\\"payment_status\\\";i:9;s:15:\\\"payment_details\\\";i:10;s:19:\\\"payment_tracking_id\\\";i:11;s:13:\\\"shipping_type\\\";i:12;s:13:\\\"shipping_cost\\\";i:13;s:3:\\\"tax\\\";i:14;s:11:\\\"grand_total\\\";i:15;s:9:\\\"sub_total\\\";i:16;s:15:\\\"coupon_discount\\\";i:17;s:11:\\\"coupon_code\\\";i:18;s:14:\\\"offer_discount\\\";i:19;s:13:\\\"tracking_code\\\";i:20;s:23:\\\"delivery_completed_date\\\";i:21;s:4:\\\"date\\\";i:22;s:14:\\\"cancel_request\\\";i:23;s:19:\\\"cancel_request_date\\\";i:24;s:15:\\\"cancel_approval\\\";i:25;s:20:\\\"cancel_approval_date\\\";i:26;s:13:\\\"cancel_reason\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1744899627, 1744899627);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(43, 'default', '{\"uuid\":\"d61f9689-8eff-46b7-bbe5-2fc90b68ffc8\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":3:{s:5:\\\"array\\\";a:4:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:47:\\\"A new order has been placed - 20250417-18202757\\\";s:4:\\\"from\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:184:\\\"{\\\"name\\\":\\\"dfdsgfg\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"dfhgfhgfh\\\",\\\"zipcode\\\":\\\"sdgdsfg\\\",\\\"city\\\":\\\"sdgfsdg\\\",\\\"state\\\":\\\"sdgdfsgf\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"1122334455\\\"}\\\";s:15:\\\"billing_address\\\";s:184:\\\"{\\\"name\\\":\\\"dfdsgfg\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"dfhgfhgfh\\\",\\\"zipcode\\\":\\\"sdgdsfg\\\",\\\"city\\\":\\\"sdgfsdg\\\",\\\"state\\\":\\\"sdgdfsgf\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"1122334455\\\"}\\\";s:11:\\\"order_notes\\\";s:6:\\\"sdfdsf\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:669;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:749;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250417-18202757\\\";s:4:\\\"date\\\";i:1744899627;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 18:20:27\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-17 18:20:27\\\";s:2:\\\"id\\\";i:22;s:11:\\\"coupon_code\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:184:\\\"{\\\"name\\\":\\\"dfdsgfg\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"dfhgfhgfh\\\",\\\"zipcode\\\":\\\"sdgdsfg\\\",\\\"city\\\":\\\"sdgfsdg\\\",\\\"state\\\":\\\"sdgdfsgf\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"1122334455\\\"}\\\";s:15:\\\"billing_address\\\";s:184:\\\"{\\\"name\\\":\\\"dfdsgfg\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"dfhgfhgfh\\\",\\\"zipcode\\\":\\\"sdgdsfg\\\",\\\"city\\\":\\\"sdgfsdg\\\",\\\"state\\\":\\\"sdgdfsgf\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"1122334455\\\"}\\\";s:11:\\\"order_notes\\\";s:6:\\\"sdfdsf\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:669;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:749;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250417-18202757\\\";s:4:\\\"date\\\";i:1744899627;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 18:20:27\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-17 18:20:27\\\";s:2:\\\"id\\\";i:22;s:11:\\\"coupon_code\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:6:{s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:11:\\\"grand_total\\\";d:669;s:9:\\\"sub_total\\\";d:749;s:14:\\\"offer_discount\\\";d:100;s:11:\\\"coupon_code\\\";N;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:4:\\\"user\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:4:\\\"name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";s:14:\\\"\\u0000*\\u0000accessToken\\\";N;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:27:{i:0;s:4:\\\"code\\\";i:1;s:7:\\\"user_id\\\";i:2;s:18:\\\"estimated_delivery\\\";i:3;s:16:\\\"shipping_address\\\";i:4;s:15:\\\"billing_address\\\";i:5;s:11:\\\"order_notes\\\";i:6;s:15:\\\"delivery_status\\\";i:7;s:12:\\\"payment_type\\\";i:8;s:14:\\\"payment_status\\\";i:9;s:15:\\\"payment_details\\\";i:10;s:19:\\\"payment_tracking_id\\\";i:11;s:13:\\\"shipping_type\\\";i:12;s:13:\\\"shipping_cost\\\";i:13;s:3:\\\"tax\\\";i:14;s:11:\\\"grand_total\\\";i:15;s:9:\\\"sub_total\\\";i:16;s:15:\\\"coupon_discount\\\";i:17;s:11:\\\"coupon_code\\\";i:18;s:14:\\\"offer_discount\\\";i:19;s:13:\\\"tracking_code\\\";i:20;s:23:\\\"delivery_completed_date\\\";i:21;s:4:\\\"date\\\";i:22;s:14:\\\"cancel_request\\\";i:23;s:19:\\\"cancel_request_date\\\";i:24;s:15:\\\"cancel_approval\\\";i:25;s:20:\\\"cancel_approval_date\\\";i:26;s:13:\\\"cancel_reason\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1744899627, 1744899627),
(44, 'default', '{\"uuid\":\"9b975d58-e4c9-4a1c-a791-b21b5037c269\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":3:{s:5:\\\"array\\\";a:4:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:44:\\\"Thank you for your order - 20250418-09562347\\\";s:4:\\\"from\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:7:\\\"user_id\\\";i:1;s:16:\\\"shipping_address\\\";s:174:\\\"{\\\"name\\\":\\\"Admin name\\\",\\\"email\\\":\\\"admin@homeiq.com\\\",\\\"address\\\":\\\"Admin address\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"city\\\",\\\"state\\\":\\\"state\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"145236987\\\"}\\\";s:15:\\\"billing_address\\\";s:174:\\\"{\\\"name\\\":\\\"Admin name\\\",\\\"email\\\":\\\"admin@homeiq.com\\\",\\\"address\\\":\\\"Admin address\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"city\\\",\\\"state\\\":\\\"state\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"145236987\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:419;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:499;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-09562347\\\";s:4:\\\"date\\\";i:1744955783;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 09:56:23\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 09:56:23\\\";s:2:\\\"id\\\";i:23;s:11:\\\"coupon_code\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:7:\\\"user_id\\\";i:1;s:16:\\\"shipping_address\\\";s:174:\\\"{\\\"name\\\":\\\"Admin name\\\",\\\"email\\\":\\\"admin@homeiq.com\\\",\\\"address\\\":\\\"Admin address\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"city\\\",\\\"state\\\":\\\"state\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"145236987\\\"}\\\";s:15:\\\"billing_address\\\";s:174:\\\"{\\\"name\\\":\\\"Admin name\\\",\\\"email\\\":\\\"admin@homeiq.com\\\",\\\"address\\\":\\\"Admin address\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"city\\\",\\\"state\\\":\\\"state\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"145236987\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:419;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:499;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-09562347\\\";s:4:\\\"date\\\";i:1744955783;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 09:56:23\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 09:56:23\\\";s:2:\\\"id\\\";i:23;s:11:\\\"coupon_code\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:6:{s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:11:\\\"grand_total\\\";d:419;s:9:\\\"sub_total\\\";d:499;s:14:\\\"offer_discount\\\";d:100;s:11:\\\"coupon_code\\\";N;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:4:\\\"user\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:2:\\\"id\\\";i:1;s:9:\\\"user_type\\\";s:5:\\\"admin\\\";s:4:\\\"name\\\";s:5:\\\"admin\\\";s:5:\\\"email\\\";s:16:\\\"admin@homeiq.com\\\";s:5:\\\"phone\\\";N;s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$SfuI4RHZOWAyQ4Zri1wrEujk3Pf6Bi1RcRhVX\\/p8nrd\\/8\\/9RN5GKu\\\";s:14:\\\"remember_token\\\";N;s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";s:19:\\\"2023-02-24 19:02:20\\\";s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2023-02-24 19:50:20\\\";s:10:\\\"updated_at\\\";s:19:\\\"2023-02-24 19:50:20\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:2:\\\"id\\\";i:1;s:9:\\\"user_type\\\";s:5:\\\"admin\\\";s:4:\\\"name\\\";s:5:\\\"admin\\\";s:5:\\\"email\\\";s:16:\\\"admin@homeiq.com\\\";s:5:\\\"phone\\\";N;s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$SfuI4RHZOWAyQ4Zri1wrEujk3Pf6Bi1RcRhVX\\/p8nrd\\/8\\/9RN5GKu\\\";s:14:\\\"remember_token\\\";N;s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";s:19:\\\"2023-02-24 19:02:20\\\";s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2023-02-24 19:50:20\\\";s:10:\\\"updated_at\\\";s:19:\\\"2023-02-24 19:50:20\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:4:\\\"name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";s:14:\\\"\\u0000*\\u0000accessToken\\\";N;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:27:{i:0;s:4:\\\"code\\\";i:1;s:7:\\\"user_id\\\";i:2;s:18:\\\"estimated_delivery\\\";i:3;s:16:\\\"shipping_address\\\";i:4;s:15:\\\"billing_address\\\";i:5;s:11:\\\"order_notes\\\";i:6;s:15:\\\"delivery_status\\\";i:7;s:12:\\\"payment_type\\\";i:8;s:14:\\\"payment_status\\\";i:9;s:15:\\\"payment_details\\\";i:10;s:19:\\\"payment_tracking_id\\\";i:11;s:13:\\\"shipping_type\\\";i:12;s:13:\\\"shipping_cost\\\";i:13;s:3:\\\"tax\\\";i:14;s:11:\\\"grand_total\\\";i:15;s:9:\\\"sub_total\\\";i:16;s:15:\\\"coupon_discount\\\";i:17;s:11:\\\"coupon_code\\\";i:18;s:14:\\\"offer_discount\\\";i:19;s:13:\\\"tracking_code\\\";i:20;s:23:\\\"delivery_completed_date\\\";i:21;s:4:\\\"date\\\";i:22;s:14:\\\"cancel_request\\\";i:23;s:19:\\\"cancel_request_date\\\";i:24;s:15:\\\"cancel_approval\\\";i:25;s:20:\\\"cancel_approval_date\\\";i:26;s:13:\\\"cancel_reason\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:16:\\\"admin@homeiq.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1744955785, 1744955785),
(45, 'default', '{\"uuid\":\"ab2f9897-6666-4fab-99ee-5172ab1201ea\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":3:{s:5:\\\"array\\\";a:4:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:47:\\\"A new order has been placed - 20250418-09562347\\\";s:4:\\\"from\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:7:\\\"user_id\\\";i:1;s:16:\\\"shipping_address\\\";s:174:\\\"{\\\"name\\\":\\\"Admin name\\\",\\\"email\\\":\\\"admin@homeiq.com\\\",\\\"address\\\":\\\"Admin address\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"city\\\",\\\"state\\\":\\\"state\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"145236987\\\"}\\\";s:15:\\\"billing_address\\\";s:174:\\\"{\\\"name\\\":\\\"Admin name\\\",\\\"email\\\":\\\"admin@homeiq.com\\\",\\\"address\\\":\\\"Admin address\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"city\\\",\\\"state\\\":\\\"state\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"145236987\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:419;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:499;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-09562347\\\";s:4:\\\"date\\\";i:1744955783;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 09:56:23\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 09:56:23\\\";s:2:\\\"id\\\";i:23;s:11:\\\"coupon_code\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:7:\\\"user_id\\\";i:1;s:16:\\\"shipping_address\\\";s:174:\\\"{\\\"name\\\":\\\"Admin name\\\",\\\"email\\\":\\\"admin@homeiq.com\\\",\\\"address\\\":\\\"Admin address\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"city\\\",\\\"state\\\":\\\"state\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"145236987\\\"}\\\";s:15:\\\"billing_address\\\";s:174:\\\"{\\\"name\\\":\\\"Admin name\\\",\\\"email\\\":\\\"admin@homeiq.com\\\",\\\"address\\\":\\\"Admin address\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"city\\\",\\\"state\\\":\\\"state\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"145236987\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:419;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:499;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-09562347\\\";s:4:\\\"date\\\";i:1744955783;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 09:56:23\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 09:56:23\\\";s:2:\\\"id\\\";i:23;s:11:\\\"coupon_code\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:6:{s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:11:\\\"grand_total\\\";d:419;s:9:\\\"sub_total\\\";d:499;s:14:\\\"offer_discount\\\";d:100;s:11:\\\"coupon_code\\\";N;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:4:\\\"user\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:2:\\\"id\\\";i:1;s:9:\\\"user_type\\\";s:5:\\\"admin\\\";s:4:\\\"name\\\";s:5:\\\"admin\\\";s:5:\\\"email\\\";s:16:\\\"admin@homeiq.com\\\";s:5:\\\"phone\\\";N;s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$SfuI4RHZOWAyQ4Zri1wrEujk3Pf6Bi1RcRhVX\\/p8nrd\\/8\\/9RN5GKu\\\";s:14:\\\"remember_token\\\";N;s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";s:19:\\\"2023-02-24 19:02:20\\\";s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2023-02-24 19:50:20\\\";s:10:\\\"updated_at\\\";s:19:\\\"2023-02-24 19:50:20\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:2:\\\"id\\\";i:1;s:9:\\\"user_type\\\";s:5:\\\"admin\\\";s:4:\\\"name\\\";s:5:\\\"admin\\\";s:5:\\\"email\\\";s:16:\\\"admin@homeiq.com\\\";s:5:\\\"phone\\\";N;s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$SfuI4RHZOWAyQ4Zri1wrEujk3Pf6Bi1RcRhVX\\/p8nrd\\/8\\/9RN5GKu\\\";s:14:\\\"remember_token\\\";N;s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";s:19:\\\"2023-02-24 19:02:20\\\";s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2023-02-24 19:50:20\\\";s:10:\\\"updated_at\\\";s:19:\\\"2023-02-24 19:50:20\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:4:\\\"name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";s:14:\\\"\\u0000*\\u0000accessToken\\\";N;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:27:{i:0;s:4:\\\"code\\\";i:1;s:7:\\\"user_id\\\";i:2;s:18:\\\"estimated_delivery\\\";i:3;s:16:\\\"shipping_address\\\";i:4;s:15:\\\"billing_address\\\";i:5;s:11:\\\"order_notes\\\";i:6;s:15:\\\"delivery_status\\\";i:7;s:12:\\\"payment_type\\\";i:8;s:14:\\\"payment_status\\\";i:9;s:15:\\\"payment_details\\\";i:10;s:19:\\\"payment_tracking_id\\\";i:11;s:13:\\\"shipping_type\\\";i:12;s:13:\\\"shipping_cost\\\";i:13;s:3:\\\"tax\\\";i:14;s:11:\\\"grand_total\\\";i:15;s:9:\\\"sub_total\\\";i:16;s:15:\\\"coupon_discount\\\";i:17;s:11:\\\"coupon_code\\\";i:18;s:14:\\\"offer_discount\\\";i:19;s:13:\\\"tracking_code\\\";i:20;s:23:\\\"delivery_completed_date\\\";i:21;s:4:\\\"date\\\";i:22;s:14:\\\"cancel_request\\\";i:23;s:19:\\\"cancel_request_date\\\";i:24;s:15:\\\"cancel_approval\\\";i:25;s:20:\\\"cancel_approval_date\\\";i:26;s:13:\\\"cancel_reason\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1744955785, 1744955785),
(46, 'default', '{\"uuid\":\"46e5c44c-b339-451e-a9bc-454ddcf6d3cb\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":3:{s:5:\\\"array\\\";a:4:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:44:\\\"Thank you for your order - 20250418-09565119\\\";s:4:\\\"from\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:7:\\\"user_id\\\";i:1;s:16:\\\"shipping_address\\\";s:174:\\\"{\\\"name\\\":\\\"Admin name\\\",\\\"email\\\":\\\"admin@homeiq.com\\\",\\\"address\\\":\\\"Admin address\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"city\\\",\\\"state\\\":\\\"state\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"145236987\\\"}\\\";s:15:\\\"billing_address\\\";s:174:\\\"{\\\"name\\\":\\\"Admin name\\\",\\\"email\\\":\\\"admin@homeiq.com\\\",\\\"address\\\":\\\"Admin address\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"city\\\",\\\"state\\\":\\\"state\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"145236987\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:840;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:820;s:14:\\\"offer_discount\\\";d:0;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-09565119\\\";s:4:\\\"date\\\";i:1744955811;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 09:56:51\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 09:56:51\\\";s:2:\\\"id\\\";i:24;s:11:\\\"coupon_code\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:7:\\\"user_id\\\";i:1;s:16:\\\"shipping_address\\\";s:174:\\\"{\\\"name\\\":\\\"Admin name\\\",\\\"email\\\":\\\"admin@homeiq.com\\\",\\\"address\\\":\\\"Admin address\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"city\\\",\\\"state\\\":\\\"state\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"145236987\\\"}\\\";s:15:\\\"billing_address\\\";s:174:\\\"{\\\"name\\\":\\\"Admin name\\\",\\\"email\\\":\\\"admin@homeiq.com\\\",\\\"address\\\":\\\"Admin address\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"city\\\",\\\"state\\\":\\\"state\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"145236987\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:840;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:820;s:14:\\\"offer_discount\\\";d:0;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-09565119\\\";s:4:\\\"date\\\";i:1744955811;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 09:56:51\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 09:56:51\\\";s:2:\\\"id\\\";i:24;s:11:\\\"coupon_code\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:5:{s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:11:\\\"grand_total\\\";d:840;s:9:\\\"sub_total\\\";d:820;s:11:\\\"coupon_code\\\";N;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:4:\\\"user\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:2:\\\"id\\\";i:1;s:9:\\\"user_type\\\";s:5:\\\"admin\\\";s:4:\\\"name\\\";s:5:\\\"admin\\\";s:5:\\\"email\\\";s:16:\\\"admin@homeiq.com\\\";s:5:\\\"phone\\\";N;s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$SfuI4RHZOWAyQ4Zri1wrEujk3Pf6Bi1RcRhVX\\/p8nrd\\/8\\/9RN5GKu\\\";s:14:\\\"remember_token\\\";N;s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";s:19:\\\"2023-02-24 19:02:20\\\";s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2023-02-24 19:50:20\\\";s:10:\\\"updated_at\\\";s:19:\\\"2023-02-24 19:50:20\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:2:\\\"id\\\";i:1;s:9:\\\"user_type\\\";s:5:\\\"admin\\\";s:4:\\\"name\\\";s:5:\\\"admin\\\";s:5:\\\"email\\\";s:16:\\\"admin@homeiq.com\\\";s:5:\\\"phone\\\";N;s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$SfuI4RHZOWAyQ4Zri1wrEujk3Pf6Bi1RcRhVX\\/p8nrd\\/8\\/9RN5GKu\\\";s:14:\\\"remember_token\\\";N;s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";s:19:\\\"2023-02-24 19:02:20\\\";s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2023-02-24 19:50:20\\\";s:10:\\\"updated_at\\\";s:19:\\\"2023-02-24 19:50:20\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:4:\\\"name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";s:14:\\\"\\u0000*\\u0000accessToken\\\";N;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:27:{i:0;s:4:\\\"code\\\";i:1;s:7:\\\"user_id\\\";i:2;s:18:\\\"estimated_delivery\\\";i:3;s:16:\\\"shipping_address\\\";i:4;s:15:\\\"billing_address\\\";i:5;s:11:\\\"order_notes\\\";i:6;s:15:\\\"delivery_status\\\";i:7;s:12:\\\"payment_type\\\";i:8;s:14:\\\"payment_status\\\";i:9;s:15:\\\"payment_details\\\";i:10;s:19:\\\"payment_tracking_id\\\";i:11;s:13:\\\"shipping_type\\\";i:12;s:13:\\\"shipping_cost\\\";i:13;s:3:\\\"tax\\\";i:14;s:11:\\\"grand_total\\\";i:15;s:9:\\\"sub_total\\\";i:16;s:15:\\\"coupon_discount\\\";i:17;s:11:\\\"coupon_code\\\";i:18;s:14:\\\"offer_discount\\\";i:19;s:13:\\\"tracking_code\\\";i:20;s:23:\\\"delivery_completed_date\\\";i:21;s:4:\\\"date\\\";i:22;s:14:\\\"cancel_request\\\";i:23;s:19:\\\"cancel_request_date\\\";i:24;s:15:\\\"cancel_approval\\\";i:25;s:20:\\\"cancel_approval_date\\\";i:26;s:13:\\\"cancel_reason\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:16:\\\"admin@homeiq.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1744955811, 1744955811),
(47, 'default', '{\"uuid\":\"0f9fd574-17a3-460a-859b-e24c0a2a5a9d\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":3:{s:5:\\\"array\\\";a:4:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:47:\\\"A new order has been placed - 20250418-09565119\\\";s:4:\\\"from\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:7:\\\"user_id\\\";i:1;s:16:\\\"shipping_address\\\";s:174:\\\"{\\\"name\\\":\\\"Admin name\\\",\\\"email\\\":\\\"admin@homeiq.com\\\",\\\"address\\\":\\\"Admin address\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"city\\\",\\\"state\\\":\\\"state\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"145236987\\\"}\\\";s:15:\\\"billing_address\\\";s:174:\\\"{\\\"name\\\":\\\"Admin name\\\",\\\"email\\\":\\\"admin@homeiq.com\\\",\\\"address\\\":\\\"Admin address\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"city\\\",\\\"state\\\":\\\"state\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"145236987\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:840;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:820;s:14:\\\"offer_discount\\\";d:0;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-09565119\\\";s:4:\\\"date\\\";i:1744955811;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 09:56:51\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 09:56:51\\\";s:2:\\\"id\\\";i:24;s:11:\\\"coupon_code\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:7:\\\"user_id\\\";i:1;s:16:\\\"shipping_address\\\";s:174:\\\"{\\\"name\\\":\\\"Admin name\\\",\\\"email\\\":\\\"admin@homeiq.com\\\",\\\"address\\\":\\\"Admin address\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"city\\\",\\\"state\\\":\\\"state\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"145236987\\\"}\\\";s:15:\\\"billing_address\\\";s:174:\\\"{\\\"name\\\":\\\"Admin name\\\",\\\"email\\\":\\\"admin@homeiq.com\\\",\\\"address\\\":\\\"Admin address\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"city\\\",\\\"state\\\":\\\"state\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"145236987\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:840;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:820;s:14:\\\"offer_discount\\\";d:0;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-09565119\\\";s:4:\\\"date\\\";i:1744955811;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 09:56:51\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 09:56:51\\\";s:2:\\\"id\\\";i:24;s:11:\\\"coupon_code\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:5:{s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:11:\\\"grand_total\\\";d:840;s:9:\\\"sub_total\\\";d:820;s:11:\\\"coupon_code\\\";N;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:4:\\\"user\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:2:\\\"id\\\";i:1;s:9:\\\"user_type\\\";s:5:\\\"admin\\\";s:4:\\\"name\\\";s:5:\\\"admin\\\";s:5:\\\"email\\\";s:16:\\\"admin@homeiq.com\\\";s:5:\\\"phone\\\";N;s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$SfuI4RHZOWAyQ4Zri1wrEujk3Pf6Bi1RcRhVX\\/p8nrd\\/8\\/9RN5GKu\\\";s:14:\\\"remember_token\\\";N;s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";s:19:\\\"2023-02-24 19:02:20\\\";s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2023-02-24 19:50:20\\\";s:10:\\\"updated_at\\\";s:19:\\\"2023-02-24 19:50:20\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:2:\\\"id\\\";i:1;s:9:\\\"user_type\\\";s:5:\\\"admin\\\";s:4:\\\"name\\\";s:5:\\\"admin\\\";s:5:\\\"email\\\";s:16:\\\"admin@homeiq.com\\\";s:5:\\\"phone\\\";N;s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$SfuI4RHZOWAyQ4Zri1wrEujk3Pf6Bi1RcRhVX\\/p8nrd\\/8\\/9RN5GKu\\\";s:14:\\\"remember_token\\\";N;s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";s:19:\\\"2023-02-24 19:02:20\\\";s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2023-02-24 19:50:20\\\";s:10:\\\"updated_at\\\";s:19:\\\"2023-02-24 19:50:20\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:4:\\\"name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";s:14:\\\"\\u0000*\\u0000accessToken\\\";N;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:27:{i:0;s:4:\\\"code\\\";i:1;s:7:\\\"user_id\\\";i:2;s:18:\\\"estimated_delivery\\\";i:3;s:16:\\\"shipping_address\\\";i:4;s:15:\\\"billing_address\\\";i:5;s:11:\\\"order_notes\\\";i:6;s:15:\\\"delivery_status\\\";i:7;s:12:\\\"payment_type\\\";i:8;s:14:\\\"payment_status\\\";i:9;s:15:\\\"payment_details\\\";i:10;s:19:\\\"payment_tracking_id\\\";i:11;s:13:\\\"shipping_type\\\";i:12;s:13:\\\"shipping_cost\\\";i:13;s:3:\\\"tax\\\";i:14;s:11:\\\"grand_total\\\";i:15;s:9:\\\"sub_total\\\";i:16;s:15:\\\"coupon_discount\\\";i:17;s:11:\\\"coupon_code\\\";i:18;s:14:\\\"offer_discount\\\";i:19;s:13:\\\"tracking_code\\\";i:20;s:23:\\\"delivery_completed_date\\\";i:21;s:4:\\\"date\\\";i:22;s:14:\\\"cancel_request\\\";i:23;s:19:\\\"cancel_request_date\\\";i:24;s:15:\\\"cancel_approval\\\";i:25;s:20:\\\"cancel_approval_date\\\";i:26;s:13:\\\"cancel_reason\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1744955811, 1744955811);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(48, 'default', '{\"uuid\":\"b5e592c1-9d47-449a-8dc7-a9fb94811741\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":3:{s:5:\\\"array\\\";a:4:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:44:\\\"Thank you for your order - 20250418-09591297\\\";s:4:\\\"from\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:214:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat number 606, 184th floor, Burj khalifa\\\",\\\"zipcode\\\":null,\\\"city\\\":\\\"Burj Park\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"+971568656856\\\"}\\\";s:15:\\\"billing_address\\\";s:214:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat number 606, 184th floor, Burj khalifa\\\",\\\"zipcode\\\":null,\\\"city\\\":\\\"Burj Park\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"+971568656856\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:13:\\\"free_shipping\\\";s:13:\\\"shipping_cost\\\";d:0;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:1779.19;s:3:\\\"tax\\\";d:11.19;s:9:\\\"sub_total\\\";d:1868;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-09591297\\\";s:4:\\\"date\\\";i:1744955952;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 09:59:12\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 09:59:12\\\";s:2:\\\"id\\\";i:25;s:11:\\\"coupon_code\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:214:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat number 606, 184th floor, Burj khalifa\\\",\\\"zipcode\\\":null,\\\"city\\\":\\\"Burj Park\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"+971568656856\\\"}\\\";s:15:\\\"billing_address\\\";s:214:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat number 606, 184th floor, Burj khalifa\\\",\\\"zipcode\\\":null,\\\"city\\\":\\\"Burj Park\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"+971568656856\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:13:\\\"free_shipping\\\";s:13:\\\"shipping_cost\\\";d:0;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:1779.19;s:3:\\\"tax\\\";d:11.19;s:9:\\\"sub_total\\\";d:1868;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-09591297\\\";s:4:\\\"date\\\";i:1744955952;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 09:59:12\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 09:59:12\\\";s:2:\\\"id\\\";i:25;s:11:\\\"coupon_code\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:5:{s:11:\\\"grand_total\\\";d:1779.19;s:3:\\\"tax\\\";d:11.19;s:9:\\\"sub_total\\\";d:1868;s:14:\\\"offer_discount\\\";d:100;s:11:\\\"coupon_code\\\";N;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:4:\\\"user\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:4:\\\"name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";s:14:\\\"\\u0000*\\u0000accessToken\\\";N;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:27:{i:0;s:4:\\\"code\\\";i:1;s:7:\\\"user_id\\\";i:2;s:18:\\\"estimated_delivery\\\";i:3;s:16:\\\"shipping_address\\\";i:4;s:15:\\\"billing_address\\\";i:5;s:11:\\\"order_notes\\\";i:6;s:15:\\\"delivery_status\\\";i:7;s:12:\\\"payment_type\\\";i:8;s:14:\\\"payment_status\\\";i:9;s:15:\\\"payment_details\\\";i:10;s:19:\\\"payment_tracking_id\\\";i:11;s:13:\\\"shipping_type\\\";i:12;s:13:\\\"shipping_cost\\\";i:13;s:3:\\\"tax\\\";i:14;s:11:\\\"grand_total\\\";i:15;s:9:\\\"sub_total\\\";i:16;s:15:\\\"coupon_discount\\\";i:17;s:11:\\\"coupon_code\\\";i:18;s:14:\\\"offer_discount\\\";i:19;s:13:\\\"tracking_code\\\";i:20;s:23:\\\"delivery_completed_date\\\";i:21;s:4:\\\"date\\\";i:22;s:14:\\\"cancel_request\\\";i:23;s:19:\\\"cancel_request_date\\\";i:24;s:15:\\\"cancel_approval\\\";i:25;s:20:\\\"cancel_approval_date\\\";i:26;s:13:\\\"cancel_reason\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1744955952, 1744955952),
(49, 'default', '{\"uuid\":\"cd9d3e4b-d339-47c5-a76a-0927806abe64\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":3:{s:5:\\\"array\\\";a:4:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:47:\\\"A new order has been placed - 20250418-09591297\\\";s:4:\\\"from\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:214:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat number 606, 184th floor, Burj khalifa\\\",\\\"zipcode\\\":null,\\\"city\\\":\\\"Burj Park\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"+971568656856\\\"}\\\";s:15:\\\"billing_address\\\";s:214:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat number 606, 184th floor, Burj khalifa\\\",\\\"zipcode\\\":null,\\\"city\\\":\\\"Burj Park\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"+971568656856\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:13:\\\"free_shipping\\\";s:13:\\\"shipping_cost\\\";d:0;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:1779.19;s:3:\\\"tax\\\";d:11.19;s:9:\\\"sub_total\\\";d:1868;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-09591297\\\";s:4:\\\"date\\\";i:1744955952;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 09:59:12\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 09:59:12\\\";s:2:\\\"id\\\";i:25;s:11:\\\"coupon_code\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:214:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat number 606, 184th floor, Burj khalifa\\\",\\\"zipcode\\\":null,\\\"city\\\":\\\"Burj Park\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"+971568656856\\\"}\\\";s:15:\\\"billing_address\\\";s:214:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat number 606, 184th floor, Burj khalifa\\\",\\\"zipcode\\\":null,\\\"city\\\":\\\"Burj Park\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"+971568656856\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:13:\\\"free_shipping\\\";s:13:\\\"shipping_cost\\\";d:0;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:1779.19;s:3:\\\"tax\\\";d:11.19;s:9:\\\"sub_total\\\";d:1868;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-09591297\\\";s:4:\\\"date\\\";i:1744955952;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 09:59:12\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 09:59:12\\\";s:2:\\\"id\\\";i:25;s:11:\\\"coupon_code\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:5:{s:11:\\\"grand_total\\\";d:1779.19;s:3:\\\"tax\\\";d:11.19;s:9:\\\"sub_total\\\";d:1868;s:14:\\\"offer_discount\\\";d:100;s:11:\\\"coupon_code\\\";N;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:4:\\\"user\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:4:\\\"name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";s:14:\\\"\\u0000*\\u0000accessToken\\\";N;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:27:{i:0;s:4:\\\"code\\\";i:1;s:7:\\\"user_id\\\";i:2;s:18:\\\"estimated_delivery\\\";i:3;s:16:\\\"shipping_address\\\";i:4;s:15:\\\"billing_address\\\";i:5;s:11:\\\"order_notes\\\";i:6;s:15:\\\"delivery_status\\\";i:7;s:12:\\\"payment_type\\\";i:8;s:14:\\\"payment_status\\\";i:9;s:15:\\\"payment_details\\\";i:10;s:19:\\\"payment_tracking_id\\\";i:11;s:13:\\\"shipping_type\\\";i:12;s:13:\\\"shipping_cost\\\";i:13;s:3:\\\"tax\\\";i:14;s:11:\\\"grand_total\\\";i:15;s:9:\\\"sub_total\\\";i:16;s:15:\\\"coupon_discount\\\";i:17;s:11:\\\"coupon_code\\\";i:18;s:14:\\\"offer_discount\\\";i:19;s:13:\\\"tracking_code\\\";i:20;s:23:\\\"delivery_completed_date\\\";i:21;s:4:\\\"date\\\";i:22;s:14:\\\"cancel_request\\\";i:23;s:19:\\\"cancel_request_date\\\";i:24;s:15:\\\"cancel_approval\\\";i:25;s:20:\\\"cancel_approval_date\\\";i:26;s:13:\\\"cancel_reason\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1744955952, 1744955952),
(50, 'default', '{\"uuid\":\"0585d2c9-1c11-4a88-9301-4c54455e72c0\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":3:{s:5:\\\"array\\\";a:4:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:44:\\\"Thank you for your order - 20250418-10044998\\\";s:4:\\\"from\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:216:\\\"{\\\"name\\\":\\\"New Name\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Wafi residence Newwwwwww,\\\\r\\\\nDubai Healthcare City\\\",\\\"zipcode\\\":\\\"000\\\",\\\"city\\\":\\\"Oud Metha\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"11111\\\"}\\\";s:15:\\\"billing_address\\\";s:216:\\\"{\\\"name\\\":\\\"New Name\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Wafi residence Newwwwwww,\\\\r\\\\nDubai Healthcare City\\\",\\\"zipcode\\\":\\\"000\\\",\\\"city\\\":\\\"Oud Metha\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"11111\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:419;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:499;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-10044998\\\";s:4:\\\"date\\\";i:1744956289;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 10:04:49\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 10:04:49\\\";s:2:\\\"id\\\";i:26;s:11:\\\"coupon_code\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:216:\\\"{\\\"name\\\":\\\"New Name\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Wafi residence Newwwwwww,\\\\r\\\\nDubai Healthcare City\\\",\\\"zipcode\\\":\\\"000\\\",\\\"city\\\":\\\"Oud Metha\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"11111\\\"}\\\";s:15:\\\"billing_address\\\";s:216:\\\"{\\\"name\\\":\\\"New Name\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Wafi residence Newwwwwww,\\\\r\\\\nDubai Healthcare City\\\",\\\"zipcode\\\":\\\"000\\\",\\\"city\\\":\\\"Oud Metha\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"11111\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:419;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:499;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-10044998\\\";s:4:\\\"date\\\";i:1744956289;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 10:04:49\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 10:04:49\\\";s:2:\\\"id\\\";i:26;s:11:\\\"coupon_code\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:6:{s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:11:\\\"grand_total\\\";d:419;s:9:\\\"sub_total\\\";d:499;s:14:\\\"offer_discount\\\";d:100;s:11:\\\"coupon_code\\\";N;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:4:\\\"user\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:4:\\\"name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";s:14:\\\"\\u0000*\\u0000accessToken\\\";N;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:27:{i:0;s:4:\\\"code\\\";i:1;s:7:\\\"user_id\\\";i:2;s:18:\\\"estimated_delivery\\\";i:3;s:16:\\\"shipping_address\\\";i:4;s:15:\\\"billing_address\\\";i:5;s:11:\\\"order_notes\\\";i:6;s:15:\\\"delivery_status\\\";i:7;s:12:\\\"payment_type\\\";i:8;s:14:\\\"payment_status\\\";i:9;s:15:\\\"payment_details\\\";i:10;s:19:\\\"payment_tracking_id\\\";i:11;s:13:\\\"shipping_type\\\";i:12;s:13:\\\"shipping_cost\\\";i:13;s:3:\\\"tax\\\";i:14;s:11:\\\"grand_total\\\";i:15;s:9:\\\"sub_total\\\";i:16;s:15:\\\"coupon_discount\\\";i:17;s:11:\\\"coupon_code\\\";i:18;s:14:\\\"offer_discount\\\";i:19;s:13:\\\"tracking_code\\\";i:20;s:23:\\\"delivery_completed_date\\\";i:21;s:4:\\\"date\\\";i:22;s:14:\\\"cancel_request\\\";i:23;s:19:\\\"cancel_request_date\\\";i:24;s:15:\\\"cancel_approval\\\";i:25;s:20:\\\"cancel_approval_date\\\";i:26;s:13:\\\"cancel_reason\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1744956289, 1744956289),
(51, 'default', '{\"uuid\":\"cf69cf0d-0a9a-4d30-b9a1-f2f08978fff1\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":3:{s:5:\\\"array\\\";a:4:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:47:\\\"A new order has been placed - 20250418-10044998\\\";s:4:\\\"from\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:216:\\\"{\\\"name\\\":\\\"New Name\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Wafi residence Newwwwwww,\\\\r\\\\nDubai Healthcare City\\\",\\\"zipcode\\\":\\\"000\\\",\\\"city\\\":\\\"Oud Metha\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"11111\\\"}\\\";s:15:\\\"billing_address\\\";s:216:\\\"{\\\"name\\\":\\\"New Name\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Wafi residence Newwwwwww,\\\\r\\\\nDubai Healthcare City\\\",\\\"zipcode\\\":\\\"000\\\",\\\"city\\\":\\\"Oud Metha\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"11111\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:419;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:499;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-10044998\\\";s:4:\\\"date\\\";i:1744956289;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 10:04:49\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 10:04:49\\\";s:2:\\\"id\\\";i:26;s:11:\\\"coupon_code\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:216:\\\"{\\\"name\\\":\\\"New Name\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Wafi residence Newwwwwww,\\\\r\\\\nDubai Healthcare City\\\",\\\"zipcode\\\":\\\"000\\\",\\\"city\\\":\\\"Oud Metha\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"11111\\\"}\\\";s:15:\\\"billing_address\\\";s:216:\\\"{\\\"name\\\":\\\"New Name\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Wafi residence Newwwwwww,\\\\r\\\\nDubai Healthcare City\\\",\\\"zipcode\\\":\\\"000\\\",\\\"city\\\":\\\"Oud Metha\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"11111\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:419;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:499;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-10044998\\\";s:4:\\\"date\\\";i:1744956289;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 10:04:49\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 10:04:49\\\";s:2:\\\"id\\\";i:26;s:11:\\\"coupon_code\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:6:{s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:11:\\\"grand_total\\\";d:419;s:9:\\\"sub_total\\\";d:499;s:14:\\\"offer_discount\\\";d:100;s:11:\\\"coupon_code\\\";N;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:4:\\\"user\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:4:\\\"name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";s:14:\\\"\\u0000*\\u0000accessToken\\\";N;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:27:{i:0;s:4:\\\"code\\\";i:1;s:7:\\\"user_id\\\";i:2;s:18:\\\"estimated_delivery\\\";i:3;s:16:\\\"shipping_address\\\";i:4;s:15:\\\"billing_address\\\";i:5;s:11:\\\"order_notes\\\";i:6;s:15:\\\"delivery_status\\\";i:7;s:12:\\\"payment_type\\\";i:8;s:14:\\\"payment_status\\\";i:9;s:15:\\\"payment_details\\\";i:10;s:19:\\\"payment_tracking_id\\\";i:11;s:13:\\\"shipping_type\\\";i:12;s:13:\\\"shipping_cost\\\";i:13;s:3:\\\"tax\\\";i:14;s:11:\\\"grand_total\\\";i:15;s:9:\\\"sub_total\\\";i:16;s:15:\\\"coupon_discount\\\";i:17;s:11:\\\"coupon_code\\\";i:18;s:14:\\\"offer_discount\\\";i:19;s:13:\\\"tracking_code\\\";i:20;s:23:\\\"delivery_completed_date\\\";i:21;s:4:\\\"date\\\";i:22;s:14:\\\"cancel_request\\\";i:23;s:19:\\\"cancel_request_date\\\";i:24;s:15:\\\"cancel_approval\\\";i:25;s:20:\\\"cancel_approval_date\\\";i:26;s:13:\\\"cancel_reason\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1744956289, 1744956289),
(52, 'default', '{\"uuid\":\"26512903-14c3-4bf4-b3f0-3d027bc97774\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":3:{s:5:\\\"array\\\";a:4:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:44:\\\"Thank you for your order - 20250418-10051210\\\";s:4:\\\"from\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:179:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat No 303, Building name\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"Dubai\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"UAE\\\",\\\"phone\\\":\\\"+971568650838\\\"}\\\";s:15:\\\"billing_address\\\";s:171:\\\"{\\\"name\\\":\\\"Nythika Renjith\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":null,\\\"zipcode\\\":null,\\\"city\\\":null,\\\"state\\\":null,\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"971568650838\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:270;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:250;s:14:\\\"offer_discount\\\";d:0;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-10051210\\\";s:4:\\\"date\\\";i:1744956312;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 10:05:12\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 10:05:12\\\";s:2:\\\"id\\\";i:27;s:11:\\\"coupon_code\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:179:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat No 303, Building name\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"Dubai\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"UAE\\\",\\\"phone\\\":\\\"+971568650838\\\"}\\\";s:15:\\\"billing_address\\\";s:171:\\\"{\\\"name\\\":\\\"Nythika Renjith\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":null,\\\"zipcode\\\":null,\\\"city\\\":null,\\\"state\\\":null,\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"971568650838\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:270;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:250;s:14:\\\"offer_discount\\\";d:0;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-10051210\\\";s:4:\\\"date\\\";i:1744956312;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 10:05:12\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 10:05:12\\\";s:2:\\\"id\\\";i:27;s:11:\\\"coupon_code\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:5:{s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:11:\\\"grand_total\\\";d:270;s:9:\\\"sub_total\\\";d:250;s:11:\\\"coupon_code\\\";N;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:4:\\\"user\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:4:\\\"name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";s:14:\\\"\\u0000*\\u0000accessToken\\\";N;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:27:{i:0;s:4:\\\"code\\\";i:1;s:7:\\\"user_id\\\";i:2;s:18:\\\"estimated_delivery\\\";i:3;s:16:\\\"shipping_address\\\";i:4;s:15:\\\"billing_address\\\";i:5;s:11:\\\"order_notes\\\";i:6;s:15:\\\"delivery_status\\\";i:7;s:12:\\\"payment_type\\\";i:8;s:14:\\\"payment_status\\\";i:9;s:15:\\\"payment_details\\\";i:10;s:19:\\\"payment_tracking_id\\\";i:11;s:13:\\\"shipping_type\\\";i:12;s:13:\\\"shipping_cost\\\";i:13;s:3:\\\"tax\\\";i:14;s:11:\\\"grand_total\\\";i:15;s:9:\\\"sub_total\\\";i:16;s:15:\\\"coupon_discount\\\";i:17;s:11:\\\"coupon_code\\\";i:18;s:14:\\\"offer_discount\\\";i:19;s:13:\\\"tracking_code\\\";i:20;s:23:\\\"delivery_completed_date\\\";i:21;s:4:\\\"date\\\";i:22;s:14:\\\"cancel_request\\\";i:23;s:19:\\\"cancel_request_date\\\";i:24;s:15:\\\"cancel_approval\\\";i:25;s:20:\\\"cancel_approval_date\\\";i:26;s:13:\\\"cancel_reason\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1744956312, 1744956312);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(53, 'default', '{\"uuid\":\"8ea8a024-c492-4e93-a3d5-4d6f27205131\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":3:{s:5:\\\"array\\\";a:4:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:47:\\\"A new order has been placed - 20250418-10051210\\\";s:4:\\\"from\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:179:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat No 303, Building name\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"Dubai\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"UAE\\\",\\\"phone\\\":\\\"+971568650838\\\"}\\\";s:15:\\\"billing_address\\\";s:171:\\\"{\\\"name\\\":\\\"Nythika Renjith\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":null,\\\"zipcode\\\":null,\\\"city\\\":null,\\\"state\\\":null,\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"971568650838\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:270;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:250;s:14:\\\"offer_discount\\\";d:0;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-10051210\\\";s:4:\\\"date\\\";i:1744956312;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 10:05:12\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 10:05:12\\\";s:2:\\\"id\\\";i:27;s:11:\\\"coupon_code\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:179:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat No 303, Building name\\\",\\\"zipcode\\\":\\\"0000\\\",\\\"city\\\":\\\"Dubai\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"UAE\\\",\\\"phone\\\":\\\"+971568650838\\\"}\\\";s:15:\\\"billing_address\\\";s:171:\\\"{\\\"name\\\":\\\"Nythika Renjith\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":null,\\\"zipcode\\\":null,\\\"city\\\":null,\\\"state\\\":null,\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"971568650838\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:270;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:250;s:14:\\\"offer_discount\\\";d:0;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-10051210\\\";s:4:\\\"date\\\";i:1744956312;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 10:05:12\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 10:05:12\\\";s:2:\\\"id\\\";i:27;s:11:\\\"coupon_code\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:5:{s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:11:\\\"grand_total\\\";d:270;s:9:\\\"sub_total\\\";d:250;s:11:\\\"coupon_code\\\";N;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:4:\\\"user\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:4:\\\"name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";s:14:\\\"\\u0000*\\u0000accessToken\\\";N;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:27:{i:0;s:4:\\\"code\\\";i:1;s:7:\\\"user_id\\\";i:2;s:18:\\\"estimated_delivery\\\";i:3;s:16:\\\"shipping_address\\\";i:4;s:15:\\\"billing_address\\\";i:5;s:11:\\\"order_notes\\\";i:6;s:15:\\\"delivery_status\\\";i:7;s:12:\\\"payment_type\\\";i:8;s:14:\\\"payment_status\\\";i:9;s:15:\\\"payment_details\\\";i:10;s:19:\\\"payment_tracking_id\\\";i:11;s:13:\\\"shipping_type\\\";i:12;s:13:\\\"shipping_cost\\\";i:13;s:3:\\\"tax\\\";i:14;s:11:\\\"grand_total\\\";i:15;s:9:\\\"sub_total\\\";i:16;s:15:\\\"coupon_discount\\\";i:17;s:11:\\\"coupon_code\\\";i:18;s:14:\\\"offer_discount\\\";i:19;s:13:\\\"tracking_code\\\";i:20;s:23:\\\"delivery_completed_date\\\";i:21;s:4:\\\"date\\\";i:22;s:14:\\\"cancel_request\\\";i:23;s:19:\\\"cancel_request_date\\\";i:24;s:15:\\\"cancel_approval\\\";i:25;s:20:\\\"cancel_approval_date\\\";i:26;s:13:\\\"cancel_reason\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1744956312, 1744956312),
(54, 'default', '{\"uuid\":\"8482ed1f-28cb-4658-9215-cfdbbce43b56\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":3:{s:5:\\\"array\\\";a:4:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:44:\\\"Thank you for your order - 20250418-10054134\\\";s:4:\\\"from\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:214:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat number 606, 184th floor, Burj khalifa\\\",\\\"zipcode\\\":null,\\\"city\\\":\\\"Burj Park\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"+971568656856\\\"}\\\";s:15:\\\"billing_address\\\";s:171:\\\"{\\\"name\\\":\\\"Nythika Renjith\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":null,\\\"zipcode\\\":null,\\\"city\\\":null,\\\"state\\\":null,\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"971568650838\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:270;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:250;s:14:\\\"offer_discount\\\";d:0;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-10054134\\\";s:4:\\\"date\\\";i:1744956341;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 10:05:41\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 10:05:41\\\";s:2:\\\"id\\\";i:28;s:11:\\\"coupon_code\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:214:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat number 606, 184th floor, Burj khalifa\\\",\\\"zipcode\\\":null,\\\"city\\\":\\\"Burj Park\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"+971568656856\\\"}\\\";s:15:\\\"billing_address\\\";s:171:\\\"{\\\"name\\\":\\\"Nythika Renjith\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":null,\\\"zipcode\\\":null,\\\"city\\\":null,\\\"state\\\":null,\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"971568650838\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:270;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:250;s:14:\\\"offer_discount\\\";d:0;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-10054134\\\";s:4:\\\"date\\\";i:1744956341;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 10:05:41\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 10:05:41\\\";s:2:\\\"id\\\";i:28;s:11:\\\"coupon_code\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:5:{s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:11:\\\"grand_total\\\";d:270;s:9:\\\"sub_total\\\";d:250;s:11:\\\"coupon_code\\\";N;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:4:\\\"user\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:4:\\\"name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";s:14:\\\"\\u0000*\\u0000accessToken\\\";N;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:27:{i:0;s:4:\\\"code\\\";i:1;s:7:\\\"user_id\\\";i:2;s:18:\\\"estimated_delivery\\\";i:3;s:16:\\\"shipping_address\\\";i:4;s:15:\\\"billing_address\\\";i:5;s:11:\\\"order_notes\\\";i:6;s:15:\\\"delivery_status\\\";i:7;s:12:\\\"payment_type\\\";i:8;s:14:\\\"payment_status\\\";i:9;s:15:\\\"payment_details\\\";i:10;s:19:\\\"payment_tracking_id\\\";i:11;s:13:\\\"shipping_type\\\";i:12;s:13:\\\"shipping_cost\\\";i:13;s:3:\\\"tax\\\";i:14;s:11:\\\"grand_total\\\";i:15;s:9:\\\"sub_total\\\";i:16;s:15:\\\"coupon_discount\\\";i:17;s:11:\\\"coupon_code\\\";i:18;s:14:\\\"offer_discount\\\";i:19;s:13:\\\"tracking_code\\\";i:20;s:23:\\\"delivery_completed_date\\\";i:21;s:4:\\\"date\\\";i:22;s:14:\\\"cancel_request\\\";i:23;s:19:\\\"cancel_request_date\\\";i:24;s:15:\\\"cancel_approval\\\";i:25;s:20:\\\"cancel_approval_date\\\";i:26;s:13:\\\"cancel_reason\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1744956341, 1744956341),
(55, 'default', '{\"uuid\":\"84030697-8047-4265-a127-4c43d8550143\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":3:{s:5:\\\"array\\\";a:4:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:47:\\\"A new order has been placed - 20250418-10054134\\\";s:4:\\\"from\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:214:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat number 606, 184th floor, Burj khalifa\\\",\\\"zipcode\\\":null,\\\"city\\\":\\\"Burj Park\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"+971568656856\\\"}\\\";s:15:\\\"billing_address\\\";s:171:\\\"{\\\"name\\\":\\\"Nythika Renjith\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":null,\\\"zipcode\\\":null,\\\"city\\\":null,\\\"state\\\":null,\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"971568650838\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:270;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:250;s:14:\\\"offer_discount\\\";d:0;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-10054134\\\";s:4:\\\"date\\\";i:1744956341;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 10:05:41\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 10:05:41\\\";s:2:\\\"id\\\";i:28;s:11:\\\"coupon_code\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:214:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat number 606, 184th floor, Burj khalifa\\\",\\\"zipcode\\\":null,\\\"city\\\":\\\"Burj Park\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"+971568656856\\\"}\\\";s:15:\\\"billing_address\\\";s:171:\\\"{\\\"name\\\":\\\"Nythika Renjith\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":null,\\\"zipcode\\\":null,\\\"city\\\":null,\\\"state\\\":null,\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"971568650838\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:270;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:250;s:14:\\\"offer_discount\\\";d:0;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-10054134\\\";s:4:\\\"date\\\";i:1744956341;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 10:05:41\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 10:05:41\\\";s:2:\\\"id\\\";i:28;s:11:\\\"coupon_code\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:5:{s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:11:\\\"grand_total\\\";d:270;s:9:\\\"sub_total\\\";d:250;s:11:\\\"coupon_code\\\";N;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:4:\\\"user\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:4:\\\"name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";s:14:\\\"\\u0000*\\u0000accessToken\\\";N;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:27:{i:0;s:4:\\\"code\\\";i:1;s:7:\\\"user_id\\\";i:2;s:18:\\\"estimated_delivery\\\";i:3;s:16:\\\"shipping_address\\\";i:4;s:15:\\\"billing_address\\\";i:5;s:11:\\\"order_notes\\\";i:6;s:15:\\\"delivery_status\\\";i:7;s:12:\\\"payment_type\\\";i:8;s:14:\\\"payment_status\\\";i:9;s:15:\\\"payment_details\\\";i:10;s:19:\\\"payment_tracking_id\\\";i:11;s:13:\\\"shipping_type\\\";i:12;s:13:\\\"shipping_cost\\\";i:13;s:3:\\\"tax\\\";i:14;s:11:\\\"grand_total\\\";i:15;s:9:\\\"sub_total\\\";i:16;s:15:\\\"coupon_discount\\\";i:17;s:11:\\\"coupon_code\\\";i:18;s:14:\\\"offer_discount\\\";i:19;s:13:\\\"tracking_code\\\";i:20;s:23:\\\"delivery_completed_date\\\";i:21;s:4:\\\"date\\\";i:22;s:14:\\\"cancel_request\\\";i:23;s:19:\\\"cancel_request_date\\\";i:24;s:15:\\\"cancel_approval\\\";i:25;s:20:\\\"cancel_approval_date\\\";i:26;s:13:\\\"cancel_reason\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1744956341, 1744956341),
(56, 'default', '{\"uuid\":\"07907af3-d390-4adf-b4c1-6d1b755d6acb\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":3:{s:5:\\\"array\\\";a:4:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:44:\\\"Thank you for your order - 20250418-10095156\\\";s:4:\\\"from\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:214:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat number 606, 184th floor, Burj khalifa\\\",\\\"zipcode\\\":null,\\\"city\\\":\\\"Burj Park\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"+971568656856\\\"}\\\";s:15:\\\"billing_address\\\";s:221:\\\"{\\\"name\\\":\\\"Nythika Renjith\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat number 606, 184th floor, Burj khalifa\\\",\\\"zipcode\\\":null,\\\"city\\\":\\\"Burj Park\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"971568650838\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:419;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:499;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-10095156\\\";s:4:\\\"date\\\";i:1744956591;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 10:09:51\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 10:09:51\\\";s:2:\\\"id\\\";i:29;s:11:\\\"coupon_code\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:214:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat number 606, 184th floor, Burj khalifa\\\",\\\"zipcode\\\":null,\\\"city\\\":\\\"Burj Park\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"+971568656856\\\"}\\\";s:15:\\\"billing_address\\\";s:221:\\\"{\\\"name\\\":\\\"Nythika Renjith\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat number 606, 184th floor, Burj khalifa\\\",\\\"zipcode\\\":null,\\\"city\\\":\\\"Burj Park\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"971568650838\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:419;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:499;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-10095156\\\";s:4:\\\"date\\\";i:1744956591;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 10:09:51\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 10:09:51\\\";s:2:\\\"id\\\";i:29;s:11:\\\"coupon_code\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:6:{s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:11:\\\"grand_total\\\";d:419;s:9:\\\"sub_total\\\";d:499;s:14:\\\"offer_discount\\\";d:100;s:11:\\\"coupon_code\\\";N;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:4:\\\"user\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:4:\\\"name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";s:14:\\\"\\u0000*\\u0000accessToken\\\";N;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:27:{i:0;s:4:\\\"code\\\";i:1;s:7:\\\"user_id\\\";i:2;s:18:\\\"estimated_delivery\\\";i:3;s:16:\\\"shipping_address\\\";i:4;s:15:\\\"billing_address\\\";i:5;s:11:\\\"order_notes\\\";i:6;s:15:\\\"delivery_status\\\";i:7;s:12:\\\"payment_type\\\";i:8;s:14:\\\"payment_status\\\";i:9;s:15:\\\"payment_details\\\";i:10;s:19:\\\"payment_tracking_id\\\";i:11;s:13:\\\"shipping_type\\\";i:12;s:13:\\\"shipping_cost\\\";i:13;s:3:\\\"tax\\\";i:14;s:11:\\\"grand_total\\\";i:15;s:9:\\\"sub_total\\\";i:16;s:15:\\\"coupon_discount\\\";i:17;s:11:\\\"coupon_code\\\";i:18;s:14:\\\"offer_discount\\\";i:19;s:13:\\\"tracking_code\\\";i:20;s:23:\\\"delivery_completed_date\\\";i:21;s:4:\\\"date\\\";i:22;s:14:\\\"cancel_request\\\";i:23;s:19:\\\"cancel_request_date\\\";i:24;s:15:\\\"cancel_approval\\\";i:25;s:20:\\\"cancel_approval_date\\\";i:26;s:13:\\\"cancel_reason\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1744956591, 1744956591),
(57, 'default', '{\"uuid\":\"33f29b9d-db39-4612-8fd5-e73f6f448c8a\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":3:{s:5:\\\"array\\\";a:4:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:47:\\\"A new order has been placed - 20250418-10095156\\\";s:4:\\\"from\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:214:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat number 606, 184th floor, Burj khalifa\\\",\\\"zipcode\\\":null,\\\"city\\\":\\\"Burj Park\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"+971568656856\\\"}\\\";s:15:\\\"billing_address\\\";s:221:\\\"{\\\"name\\\":\\\"Nythika Renjith\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat number 606, 184th floor, Burj khalifa\\\",\\\"zipcode\\\":null,\\\"city\\\":\\\"Burj Park\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"971568650838\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:419;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:499;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-10095156\\\";s:4:\\\"date\\\";i:1744956591;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 10:09:51\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 10:09:51\\\";s:2:\\\"id\\\";i:29;s:11:\\\"coupon_code\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:214:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat number 606, 184th floor, Burj khalifa\\\",\\\"zipcode\\\":null,\\\"city\\\":\\\"Burj Park\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"+971568656856\\\"}\\\";s:15:\\\"billing_address\\\";s:221:\\\"{\\\"name\\\":\\\"Nythika Renjith\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat number 606, 184th floor, Burj khalifa\\\",\\\"zipcode\\\":null,\\\"city\\\":\\\"Burj Park\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"971568650838\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:419;s:3:\\\"tax\\\";d:0;s:9:\\\"sub_total\\\";d:499;s:14:\\\"offer_discount\\\";d:100;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-10095156\\\";s:4:\\\"date\\\";i:1744956591;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 10:09:51\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 10:09:51\\\";s:2:\\\"id\\\";i:29;s:11:\\\"coupon_code\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:6:{s:13:\\\"shipping_type\\\";s:9:\\\"flat_rate\\\";s:13:\\\"shipping_cost\\\";d:20;s:11:\\\"grand_total\\\";d:419;s:9:\\\"sub_total\\\";d:499;s:14:\\\"offer_discount\\\";d:100;s:11:\\\"coupon_code\\\";N;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:4:\\\"user\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:4:\\\"name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";s:14:\\\"\\u0000*\\u0000accessToken\\\";N;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:27:{i:0;s:4:\\\"code\\\";i:1;s:7:\\\"user_id\\\";i:2;s:18:\\\"estimated_delivery\\\";i:3;s:16:\\\"shipping_address\\\";i:4;s:15:\\\"billing_address\\\";i:5;s:11:\\\"order_notes\\\";i:6;s:15:\\\"delivery_status\\\";i:7;s:12:\\\"payment_type\\\";i:8;s:14:\\\"payment_status\\\";i:9;s:15:\\\"payment_details\\\";i:10;s:19:\\\"payment_tracking_id\\\";i:11;s:13:\\\"shipping_type\\\";i:12;s:13:\\\"shipping_cost\\\";i:13;s:3:\\\"tax\\\";i:14;s:11:\\\"grand_total\\\";i:15;s:9:\\\"sub_total\\\";i:16;s:15:\\\"coupon_discount\\\";i:17;s:11:\\\"coupon_code\\\";i:18;s:14:\\\"offer_discount\\\";i:19;s:13:\\\"tracking_code\\\";i:20;s:23:\\\"delivery_completed_date\\\";i:21;s:4:\\\"date\\\";i:22;s:14:\\\"cancel_request\\\";i:23;s:19:\\\"cancel_request_date\\\";i:24;s:15:\\\"cancel_approval\\\";i:25;s:20:\\\"cancel_approval_date\\\";i:26;s:13:\\\"cancel_reason\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1744956591, 1744956591);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(58, 'default', '{\"uuid\":\"254dca3c-bebf-40ab-ab1c-f27fefc7ec37\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":3:{s:5:\\\"array\\\";a:4:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:44:\\\"Thank you for your order - 20250418-11220948\\\";s:4:\\\"from\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:214:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat number 606, 184th floor, Burj khalifa\\\",\\\"zipcode\\\":null,\\\"city\\\":\\\"Burj Park\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"+971568656856\\\"}\\\";s:15:\\\"billing_address\\\";s:214:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat number 606, 184th floor, Burj khalifa\\\",\\\"zipcode\\\":null,\\\"city\\\":\\\"Burj Park\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"+971568656856\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:13:\\\"free_shipping\\\";s:13:\\\"shipping_cost\\\";d:0;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:13043.88;s:3:\\\"tax\\\";d:449.88;s:9:\\\"sub_total\\\";d:12594;s:14:\\\"offer_discount\\\";d:0;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-11220948\\\";s:4:\\\"date\\\";i:1744960929;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 11:22:09\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 11:22:09\\\";s:2:\\\"id\\\";i:30;s:11:\\\"coupon_code\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:214:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat number 606, 184th floor, Burj khalifa\\\",\\\"zipcode\\\":null,\\\"city\\\":\\\"Burj Park\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"+971568656856\\\"}\\\";s:15:\\\"billing_address\\\";s:214:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat number 606, 184th floor, Burj khalifa\\\",\\\"zipcode\\\":null,\\\"city\\\":\\\"Burj Park\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"+971568656856\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:13:\\\"free_shipping\\\";s:13:\\\"shipping_cost\\\";d:0;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:13043.88;s:3:\\\"tax\\\";d:449.88;s:9:\\\"sub_total\\\";d:12594;s:14:\\\"offer_discount\\\";d:0;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-11220948\\\";s:4:\\\"date\\\";i:1744960929;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 11:22:09\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 11:22:09\\\";s:2:\\\"id\\\";i:30;s:11:\\\"coupon_code\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:4:{s:11:\\\"grand_total\\\";d:13043.88;s:3:\\\"tax\\\";d:449.88;s:9:\\\"sub_total\\\";d:12594;s:11:\\\"coupon_code\\\";N;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:4:\\\"user\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:4:\\\"name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";s:14:\\\"\\u0000*\\u0000accessToken\\\";N;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:27:{i:0;s:4:\\\"code\\\";i:1;s:7:\\\"user_id\\\";i:2;s:18:\\\"estimated_delivery\\\";i:3;s:16:\\\"shipping_address\\\";i:4;s:15:\\\"billing_address\\\";i:5;s:11:\\\"order_notes\\\";i:6;s:15:\\\"delivery_status\\\";i:7;s:12:\\\"payment_type\\\";i:8;s:14:\\\"payment_status\\\";i:9;s:15:\\\"payment_details\\\";i:10;s:19:\\\"payment_tracking_id\\\";i:11;s:13:\\\"shipping_type\\\";i:12;s:13:\\\"shipping_cost\\\";i:13;s:3:\\\"tax\\\";i:14;s:11:\\\"grand_total\\\";i:15;s:9:\\\"sub_total\\\";i:16;s:15:\\\"coupon_discount\\\";i:17;s:11:\\\"coupon_code\\\";i:18;s:14:\\\"offer_discount\\\";i:19;s:13:\\\"tracking_code\\\";i:20;s:23:\\\"delivery_completed_date\\\";i:21;s:4:\\\"date\\\";i:22;s:14:\\\"cancel_request\\\";i:23;s:19:\\\"cancel_request_date\\\";i:24;s:15:\\\"cancel_approval\\\";i:25;s:20:\\\"cancel_approval_date\\\";i:26;s:13:\\\"cancel_reason\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1744960929, 1744960929),
(59, 'default', '{\"uuid\":\"1b14a6de-e80b-47fe-b662-fbfecd84ae9a\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":3:{s:5:\\\"array\\\";a:4:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:47:\\\"A new order has been placed - 20250418-11220948\\\";s:4:\\\"from\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"order\\\";O:16:\\\"App\\\\Models\\\\Order\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:6:\\\"orders\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:214:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat number 606, 184th floor, Burj khalifa\\\",\\\"zipcode\\\":null,\\\"city\\\":\\\"Burj Park\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"+971568656856\\\"}\\\";s:15:\\\"billing_address\\\";s:214:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat number 606, 184th floor, Burj khalifa\\\",\\\"zipcode\\\":null,\\\"city\\\":\\\"Burj Park\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"+971568656856\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:13:\\\"free_shipping\\\";s:13:\\\"shipping_cost\\\";d:0;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:13043.88;s:3:\\\"tax\\\";d:449.88;s:9:\\\"sub_total\\\";d:12594;s:14:\\\"offer_discount\\\";d:0;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-11220948\\\";s:4:\\\"date\\\";i:1744960929;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 11:22:09\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 11:22:09\\\";s:2:\\\"id\\\";i:30;s:11:\\\"coupon_code\\\";N;}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:7:\\\"user_id\\\";i:68;s:16:\\\"shipping_address\\\";s:214:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat number 606, 184th floor, Burj khalifa\\\",\\\"zipcode\\\":null,\\\"city\\\":\\\"Burj Park\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"+971568656856\\\"}\\\";s:15:\\\"billing_address\\\";s:214:\\\"{\\\"name\\\":\\\"Jisha P\\\",\\\"email\\\":\\\"jisha.tomsher@gmail.com\\\",\\\"address\\\":\\\"Flat number 606, 184th floor, Burj khalifa\\\",\\\"zipcode\\\":null,\\\"city\\\":\\\"Burj Park\\\",\\\"state\\\":\\\"Dubai\\\",\\\"country\\\":\\\"United Arab Emirates\\\",\\\"phone\\\":\\\"+971568656856\\\"}\\\";s:11:\\\"order_notes\\\";s:0:\\\"\\\";s:13:\\\"shipping_type\\\";s:13:\\\"free_shipping\\\";s:13:\\\"shipping_cost\\\";d:0;s:15:\\\"delivery_status\\\";s:7:\\\"pending\\\";s:12:\\\"payment_type\\\";s:3:\\\"cod\\\";s:14:\\\"payment_status\\\";s:7:\\\"un_paid\\\";s:11:\\\"grand_total\\\";d:13043.88;s:3:\\\"tax\\\";d:449.88;s:9:\\\"sub_total\\\";d:12594;s:14:\\\"offer_discount\\\";d:0;s:15:\\\"coupon_discount\\\";d:0;s:4:\\\"code\\\";s:17:\\\"20250418-11220948\\\";s:4:\\\"date\\\";i:1744960929;s:10:\\\"updated_at\\\";s:19:\\\"2025-04-18 11:22:09\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-04-18 11:22:09\\\";s:2:\\\"id\\\";i:30;s:11:\\\"coupon_code\\\";N;}s:10:\\\"\\u0000*\\u0000changes\\\";a:4:{s:11:\\\"grand_total\\\";d:13043.88;s:3:\\\"tax\\\";d:449.88;s:9:\\\"sub_total\\\";d:12594;s:11:\\\"coupon_code\\\";N;}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:1:{s:4:\\\"user\\\";O:15:\\\"App\\\\Models\\\\User\\\":32:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:5:\\\"users\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:20:{s:2:\\\"id\\\";i:68;s:9:\\\"user_type\\\";s:8:\\\"customer\\\";s:4:\\\"name\\\";s:15:\\\"Nythika Renjith\\\";s:5:\\\"email\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";s:5:\\\"phone\\\";s:12:\\\"971568650838\\\";s:6:\\\"banned\\\";i:0;s:8:\\\"password\\\";s:60:\\\"$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy\\\";s:14:\\\"remember_token\\\";s:60:\\\"NDCGvEimz6Qm42Xbo0f7RxtBgpdzbGTXHSijuAYkcQnkK4m6KkYPwcKpeTqK\\\";s:3:\\\"otp\\\";N;s:10:\\\"otp_expiry\\\";N;s:17:\\\"is_phone_verified\\\";i:0;s:17:\\\"email_verified_at\\\";N;s:17:\\\"verification_code\\\";N;s:6:\\\"status\\\";i:0;s:12:\\\"device_token\\\";N;s:6:\\\"avatar\\\";N;s:10:\\\"created_by\\\";N;s:10:\\\"updated_by\\\";N;s:10:\\\"created_at\\\";s:19:\\\"2025-03-22 05:36:38\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-04-17 16:59:32\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:2:{s:17:\\\"email_verified_at\\\";s:8:\\\"datetime\\\";s:8:\\\"password\\\";s:6:\\\"hashed\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:2:{i:0;s:8:\\\"password\\\";i:1;s:14:\\\"remember_token\\\";}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:4:{i:0;s:4:\\\"name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:8:\\\"password\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}s:20:\\\"\\u0000*\\u0000rememberTokenName\\\";s:14:\\\"remember_token\\\";s:14:\\\"\\u0000*\\u0000accessToken\\\";N;}}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:27:{i:0;s:4:\\\"code\\\";i:1;s:7:\\\"user_id\\\";i:2;s:18:\\\"estimated_delivery\\\";i:3;s:16:\\\"shipping_address\\\";i:4;s:15:\\\"billing_address\\\";i:5;s:11:\\\"order_notes\\\";i:6;s:15:\\\"delivery_status\\\";i:7;s:12:\\\"payment_type\\\";i:8;s:14:\\\"payment_status\\\";i:9;s:15:\\\"payment_details\\\";i:10;s:19:\\\"payment_tracking_id\\\";i:11;s:13:\\\"shipping_type\\\";i:12;s:13:\\\"shipping_cost\\\";i:13;s:3:\\\"tax\\\";i:14;s:11:\\\"grand_total\\\";i:15;s:9:\\\"sub_total\\\";i:16;s:15:\\\"coupon_discount\\\";i:17;s:11:\\\"coupon_code\\\";i:18;s:14:\\\"offer_discount\\\";i:19;s:13:\\\"tracking_code\\\";i:20;s:23:\\\"delivery_completed_date\\\";i:21;s:4:\\\"date\\\";i:22;s:14:\\\"cancel_request\\\";i:23;s:19:\\\"cancel_request_date\\\";i:24;s:15:\\\"cancel_approval\\\";i:25;s:20:\\\"cancel_approval_date\\\";i:26;s:13:\\\"cancel_reason\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"jisha.tomsher@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1744960929, 1744960929),
(60, 'default', '{\"uuid\":\"59323ce2-610e-4f5e-b376-2d0bdababc09\",\"displayName\":\"App\\\\Mail\\\\ContactEnquiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ContactEnquiry\\\":3:{s:7:\\\"contact\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Contacts\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:12:\\\"ho@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1752748145, 1752748145),
(61, 'default', '{\"uuid\":\"84b367e7-eb51-47ed-960f-9601052563f8\",\"displayName\":\"App\\\\Mail\\\\ContactEnquiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ContactEnquiry\\\":3:{s:7:\\\"contact\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Contacts\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:12:\\\"ho@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1753264099, 1753264099),
(62, 'default', '{\"uuid\":\"a87e15c3-f69e-4f12-93a2-3f880dff0e70\",\"displayName\":\"App\\\\Mail\\\\ContactEnquiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ContactEnquiry\\\":3:{s:7:\\\"contact\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Contacts\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:12:\\\"ho@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1753264216, 1753264216),
(63, 'default', '{\"uuid\":\"f0aa8924-5cfc-40de-ae01-64ea13c4f065\",\"displayName\":\"App\\\\Mail\\\\ContactEnquiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ContactEnquiry\\\":3:{s:7:\\\"contact\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Contacts\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:12:\\\"ho@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1753292580, 1753292580),
(64, 'default', '{\"uuid\":\"f9508889-b466-44e3-889d-9a2249dd3c8f\",\"displayName\":\"App\\\\Mail\\\\ContactEnquiry\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:23:\\\"App\\\\Mail\\\\ContactEnquiry\\\":3:{s:7:\\\"contact\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Contacts\\\";s:2:\\\"id\\\";i:7;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:12:\\\"ho@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1753292601, 1753292601);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `app_lang_code` varchar(255) DEFAULT 'en',
  `rtl` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `app_lang_code`, `rtl`, `status`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'en', 0, 1, '2019-01-20 20:13:20', '2019-01-20 20:13:20');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(191) NOT NULL,
  `link` varchar(191) DEFAULT NULL,
  `class` varchar(191) DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `menu` varchar(191) NOT NULL DEFAULT 'header',
  `depth` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `label`, `link`, `class`, `parent_id`, `sort`, `menu`, `depth`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'Test', NULL, NULL, 0, 'header', 0, '2025-07-15 10:34:38', '2025-07-15 10:34:38'),
(2, 'Test', 'Test', NULL, NULL, 0, 'header', 0, '2025-07-15 10:34:57', '2025-07-15 10:34:57'),
(4, 'New', NULL, NULL, 1, 0, 'header', 1, '2025-07-15 10:35:47', '2025-07-15 10:35:47'),
(5, 'New', NULL, NULL, 2, 0, 'header', 1, '2025-07-15 10:35:54', '2025-07-15 10:35:54'),
(6, 'Test 1', NULL, NULL, 1, 0, 'header', 1, '2025-07-15 10:41:41', '2025-07-15 10:41:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2021_06_07_000000_create_payku_transactions_table', 1),
(6, '2023_02_28_135108_add_seo_details_to_categories_table', 3),
(7, '2023_03_01_080538_create_product_seos_table', 4),
(8, '2023_03_30_111242_modify_searches_table', 5),
(10, '2023_03_31_063525_add_status_to_carts_table', 6),
(11, '2023_04_03_161531_add_fields_to_categories_table', 7),
(13, '2023_04_04_163348_add_seo_columns_to_brands_tabel', 8),
(14, '2023_04_29_163626_add_sku_to_products', 9),
(15, '2023_05_01_115940_add_one_time_to_coupons_table', 10),
(16, '2023_05_01_135457_drop_categories_table', 11),
(19, '2023_05_01_140058_create_shops_table', 12),
(20, '2023_05_01_145207_create_shop_user_pivot_table', 13),
(21, '2023_05_02_010248_add_details_to_shops_table', 14),
(22, '2023_05_16_174900_add_name_ar_to_shops_table', 15),
(23, '2023_05_16_181622_add_created_at_to_shop_users_table', 16),
(24, '2023_05_17_150736_create_shop_users_table', 17),
(25, '2023_05_18_152741_alter_table_shops_change_delivery_pickup_latitude', 18),
(28, '2023_05_22_145513_create_order_transfers_table', 19),
(30, '2023_05_22_170938_add_original_price_to_order_details_table', 20),
(31, '2014_10_12_100000_create_password_reset_tokens_table', 21),
(32, '2014_10_12_200000_add_two_factor_columns_to_users_table', 21),
(33, '2019_08_19_000000_create_failed_jobs_table', 21),
(34, '2022_05_25_122618_add_details_to_users_table', 21),
(35, '2024_02_24_125355_create_permission_tables', 22),
(36, '2025_02_17_065329_create_faq_categories_table', 23),
(37, '2025_02_17_065400_create_faqs_table', 23),
(38, '2025_07_14_164049_add_expires_at_to_personal_access_tokens_table', 24),
(39, '2025_07_14_173035_add_page_id_to_collection_products_table', 25),
(40, '2025_07_15_141022_create_menu_items_table', 26),
(41, '2025_07_15_141817_add_sort_to_menu_items_table', 27),
(42, '2025_07_15_142118_create_menu_items_table', 28),
(43, '2017_08_11_073824_create_menus_wp_table', 29),
(44, '2017_08_11_074006_create_menu_items_wp_table', 29),
(45, '2025_07_16_101025_add_video_to_home_sliders_table', 30),
(46, '2025_07_17_112400_create_tutorials_table', 31);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0509d8dc-3d1c-4890-9ceb-825d79ea6148', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":31,\"user_name\":\"Mohammed\",\"message\":\"New order placed by Mohammed\"}', '2025-07-16 07:05:50', '2025-07-15 14:38:32', '2025-07-16 07:05:50'),
('12a17ae8-0415-467f-aca7-ea08fc9ef571', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":21,\"user_name\":\"Nythika Renjith\",\"message\":\"New order placed by Nythika Renjith\"}', '2025-07-16 07:05:50', '2025-04-17 14:19:24', '2025-07-16 07:05:50'),
('1583821a-cdfb-412e-a2d6-7675ab9036ea', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":23,\"user_name\":\"admin\",\"message\":\"New order placed by admin\"}', '2025-07-16 07:05:50', '2025-04-18 05:56:25', '2025-07-16 07:05:50'),
('2089e3ce-bd62-4759-9b5b-836cc6bd1bae', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":35,\"user_name\":\"Mohammed\",\"message\":\"New order placed by Mohammed\"}', NULL, '2025-07-21 06:44:05', '2025-07-21 06:44:05'),
('2833e49b-387a-4f76-8d0a-59ad1f11e1f4', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":18,\"user_name\":\"Nythika Renjith\",\"message\":\"New order placed by Nythika Renjith\"}', '2025-07-16 07:05:50', '2025-04-17 13:58:17', '2025-07-16 07:05:50'),
('694be902-9a24-43f8-9b1c-5c32286d9335', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":12,\"user_name\":\"Nythika Renjith\",\"message\":\"New order placed by Nythika Renjith\"}', '2025-07-16 07:05:50', '2025-04-17 06:12:01', '2025-07-16 07:05:50'),
('6dd03d40-aedf-4a61-bee5-8a6d8189bbf3', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":34,\"user_name\":\"Mohammed\",\"message\":\"New order placed by Mohammed\"}', NULL, '2025-07-21 06:00:48', '2025-07-21 06:00:48'),
('6f4a38a4-bc92-406a-93c1-a7d2c4351bf6', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":13,\"user_name\":\"Nythika Renjith\",\"message\":\"New order placed by Nythika Renjith\"}', '2025-07-16 07:05:50', '2025-04-17 10:15:53', '2025-07-16 07:05:50'),
('74596d61-830a-4baa-a193-19d2506173a8', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":10,\"user_name\":\"Nythika\",\"message\":\"New order placed by Nythika\"}', '2025-04-16 03:28:17', '2025-03-29 05:59:18', '2025-04-16 03:28:17'),
('8d8fdef0-7c5e-494a-ac32-416255606d50', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":33,\"user_name\":\"Mohammed\",\"message\":\"New order placed by Mohammed\"}', NULL, '2025-07-21 05:55:43', '2025-07-21 05:55:43'),
('94bbe0ad-57ee-4fb0-8781-868c15bb5322', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":16,\"user_name\":\"Nythika Renjith\",\"message\":\"New order placed by Nythika Renjith\"}', '2025-07-16 07:05:50', '2025-04-17 12:36:04', '2025-07-16 07:05:50'),
('a21ecc27-c295-4381-aa1a-9f94f9e36116', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":27,\"user_name\":\"Nythika Renjith\",\"message\":\"New order placed by Nythika Renjith\"}', '2025-07-16 07:05:50', '2025-04-18 06:05:12', '2025-07-16 07:05:50'),
('a7536bfd-1e62-4ccd-843f-fd4834c74d1b', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":17,\"user_name\":\"Nythika Renjith\",\"message\":\"New order placed by Nythika Renjith\"}', '2025-07-16 07:05:50', '2025-04-17 13:32:28', '2025-07-16 07:05:50'),
('a9fb13f9-6415-41d4-8cdb-aca901c0df93', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":25,\"user_name\":\"Nythika Renjith\",\"message\":\"New order placed by Nythika Renjith\"}', '2025-07-16 07:05:50', '2025-04-18 05:59:12', '2025-07-16 07:05:50'),
('b319531d-943d-41be-b55d-7a57a5db90ce', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":11,\"user_name\":\"Jisha P\",\"message\":\"New order placed by Jisha P\"}', '2025-04-16 03:28:17', '2025-03-29 08:17:40', '2025-04-16 03:28:17'),
('bbd2d8d2-893c-400f-9f7f-2f33f1b1f031', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":24,\"user_name\":\"admin\",\"message\":\"New order placed by admin\"}', '2025-07-16 07:05:50', '2025-04-18 05:56:51', '2025-07-16 07:05:50'),
('bce08e31-cc44-4294-9e1e-0cc74ecffdb4', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":22,\"user_name\":\"Nythika Renjith\",\"message\":\"New order placed by Nythika Renjith\"}', '2025-07-16 07:05:50', '2025-04-17 14:20:27', '2025-07-16 07:05:50'),
('bcff63ee-1b6d-4c34-a20a-3d5435c291ea', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":15,\"user_name\":\"Nythika Renjith\",\"message\":\"New order placed by Nythika Renjith\"}', '2025-07-16 07:05:50', '2025-04-17 12:31:24', '2025-07-16 07:05:50'),
('be55ec95-073e-42bc-afaa-eec9aefe8255', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":28,\"user_name\":\"Nythika Renjith\",\"message\":\"New order placed by Nythika Renjith\"}', '2025-07-16 07:05:50', '2025-04-18 06:05:41', '2025-07-16 07:05:50'),
('c31fafe5-e944-4d26-88b9-58eaf0cf932a', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":30,\"user_name\":\"Nythika Renjith\",\"message\":\"New order placed by Nythika Renjith\"}', '2025-07-16 07:05:50', '2025-04-18 07:22:09', '2025-07-16 07:05:50'),
('dee9c453-2c40-455d-8d39-06ebf3a09516', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":29,\"user_name\":\"Nythika Renjith\",\"message\":\"New order placed by Nythika Renjith\"}', '2025-07-16 07:05:50', '2025-04-18 06:09:51', '2025-07-16 07:05:50'),
('df9ec94f-e499-4835-b1db-41e644a78b97', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":14,\"user_name\":\"Nythika Renjith\",\"message\":\"New order placed by Nythika Renjith\"}', '2025-07-16 07:05:50', '2025-04-17 10:26:45', '2025-07-16 07:05:50'),
('e76849d4-6455-491e-82bb-3c804549996c', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":20,\"user_name\":\"Nythika Renjith\",\"message\":\"New order placed by Nythika Renjith\"}', '2025-07-16 07:05:50', '2025-04-17 14:07:18', '2025-07-16 07:05:50'),
('e84b9648-77ed-4452-931c-e07559eb58eb', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":32,\"user_name\":\"Mohammed\",\"message\":\"New order placed by Mohammed\"}', '2025-07-16 07:05:50', '2025-07-15 14:42:20', '2025-07-16 07:05:50'),
('eaea24d3-aad5-4966-a388-a0a06b75774a', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":26,\"user_name\":\"Nythika Renjith\",\"message\":\"New order placed by Nythika Renjith\"}', '2025-07-16 07:05:50', '2025-04-18 06:04:49', '2025-07-16 07:05:50'),
('feb6a4dd-95db-4b86-ba62-92cfc7e81692', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":19,\"user_name\":\"\",\"message\":\"New order placed by \"}', '2025-07-16 07:05:50', '2025-04-17 13:59:25', '2025-07-16 07:05:50');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `image5` varchar(255) DEFAULT NULL,
  `image6` varchar(255) DEFAULT NULL,
  `image7` varchar(255) DEFAULT NULL,
  `image8` varchar(255) DEFAULT NULL,
  `image9` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `type`, `slug`, `image`, `image1`, `image2`, `image3`, `image4`, `image5`, `image6`, `image7`, `image8`, `image9`, `video`, `status`, `created_at`, `updated_at`) VALUES
(1, 'home', 'Home Page', '33', '31', '27', '28', '29', '30', '26', '32', '34', '46', NULL, 1, '2024-02-17 17:02:11', '2025-07-23 08:26:56'),
(2, 'privacy_policy', 'Privacy Policy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-02-17 17:02:11', '2024-02-17 17:02:11'),
(3, 'terms', 'Terms and Conditions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-02-17 17:02:11', '2024-02-17 17:02:11'),
(6, 'blogs', 'Blog Listing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-02-17 17:02:11', '2024-02-17 17:02:11'),
(7, 'contact_us', 'Contact Us', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-02-17 17:02:11', '2024-12-24 08:40:16'),
(9, 'about_us', 'About Us', '/storage/pages/image_1.jpg', '52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-02-17 17:02:11', '2025-07-23 14:14:18'),
(20, 'product_list', 'Product Listing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2025-03-15 08:51:24', '2025-03-15 08:51:24'),
(21, 'service_list', 'Service Listing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2025-03-15 08:51:24', '2025-03-15 08:51:24'),
(23, 'tutorials', 'Tutorials', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2025-07-17 09:24:51', '2025-07-17 09:24:51'),
(24, 'project_list', 'Project Listing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2025-07-23 16:35:40', '2025-07-23 16:35:40'),
(25, 'service_details', 'Service Details', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2025-07-24 06:20:55', '2025-07-24 06:20:55');

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` bigint(20) NOT NULL,
  `page_id` bigint(20) NOT NULL,
  `lang` varchar(100) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `sub_title` varchar(500) DEFAULT NULL,
  `title1` varchar(500) DEFAULT NULL,
  `description1` text DEFAULT NULL,
  `title2` varchar(500) DEFAULT NULL,
  `title3` varchar(500) DEFAULT NULL,
  `heading1` text DEFAULT NULL,
  `content1` longtext DEFAULT NULL,
  `heading2` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `image1` varchar(191) DEFAULT NULL,
  `image2` varchar(191) DEFAULT NULL,
  `image4` varchar(191) DEFAULT NULL,
  `content2` longtext DEFAULT NULL,
  `heading3` text DEFAULT NULL,
  `content3` longtext DEFAULT NULL,
  `content4` text DEFAULT NULL,
  `content5` text DEFAULT NULL,
  `content6` longtext DEFAULT NULL,
  `heading4` text DEFAULT NULL,
  `heading5` text DEFAULT NULL,
  `heading6` text DEFAULT NULL,
  `heading7` text DEFAULT NULL,
  `heading8` text DEFAULT NULL,
  `heading9` text DEFAULT NULL,
  `heading10` text DEFAULT NULL,
  `meta_title` mediumtext DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `keywords` longtext DEFAULT NULL,
  `og_title` mediumtext DEFAULT NULL,
  `og_description` longtext DEFAULT NULL,
  `twitter_title` mediumtext DEFAULT NULL,
  `twitter_description` longtext DEFAULT NULL,
  `meta_image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `lang`, `title`, `content`, `sub_title`, `title1`, `description1`, `title2`, `title3`, `heading1`, `content1`, `heading2`, `image`, `image1`, `image2`, `image4`, `content2`, `heading3`, `content3`, `content4`, `content5`, `content6`, `heading4`, `heading5`, `heading6`, `heading7`, `heading8`, `heading9`, `heading10`, `meta_title`, `meta_description`, `keywords`, `og_title`, `og_description`, `twitter_title`, `twitter_description`, `meta_image`, `created_at`, `updated_at`) VALUES
(20, 6, 'en', 'Latest Blog Posts', NULL, 'Stay informed with expert insights, smart home tips, and the latest trends in home automation, security, and energy efficiency.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2', '3', '4', '5', '6', '7', NULL, '2025-03-15 06:22:11', '2025-03-15 06:35:21'),
(21, 20, 'en', 'Explore Our [Products]', NULL, 'Discover the latest smart home solutions designed to enhance your living experience.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'q', 'w', 'e', 'r', 't', 'y', 'u', NULL, '2025-03-15 06:36:27', '2025-03-19 08:22:47'),
(22, 7, 'en', 'Get in Touchh', '123 Main Street, City, Country', 'Have questions? We\'d love to hear from you. Fill out the form below.', NULL, NULL, NULL, NULL, NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15780.927832174124!2d55.32464643048525!3d25.241212406861536!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e5f5d3d31281a7b%3A0x5e8640a94b0fbec8!2sDubai%20Creek%20Golf%20%26%20Yacht%20Club!5e1!3m2!1sen!2sae!4v1745504686202!5m2!1sen!2sae', 'Or reach out to us directly:', NULL, NULL, NULL, NULL, NULL, '+971 4 547 9552', NULL, NULL, NULL, NULL, 'support@ittech.com', 'join@domain.com', NULL, NULL, NULL, NULL, NULL, '11', '22', '33', '44', '55', '66', '77', NULL, '2025-03-15 07:39:52', '2025-07-17 10:25:16'),
(23, 2, 'en', 'Privacy Policy', '<p><br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asd', 'sddf', 'refr', 'bvbn', 'ghy', 'ewwe', 'vbnv', NULL, '2025-03-15 07:57:39', '2025-07-18 08:43:00'),
(24, 3, 'en', 'Terms & Conditions', '<p><br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-15 07:58:14', '2025-07-18 08:43:06'),
(25, 15, 'en', 'Return Policy', '<p><strong>RETURNS<br></strong></p><p>We do not accept returns or exchanges unless the item you purchased is defective in accordance to Warranty Terms and Period dedicated by manufacturer.</p><p>If a defect arises and a valid claim is received within the Warranty Period, the company will replace the product with a new or refurbished product that is functionally equivalent to the original following receipt of the returned product as well as copy of original invoice pertaining to the part. A replacement product or part assumes the remaining warranty of the original product.</p><p>To obtain warranty service, you must first email us on support@homeiq.ae with details of the defective product and the nature of the problem. A copy of the purchase receipt&nbsp;may also be required for at time of contact.</p><p>Should our technical support team not be able to resolve the issue and a product is determined to be defective, you will be sent specific instructions on how to return the device back to us.</p><p>Please note that we do not accept non pre-authorised returns delivered to our office. Any item sent will be regretfully returned back to you at your cost</p><p>Exclusions: This warranty does not apply to: a) damage caused by failure to follow instructions relating to the product’s use or the installation of components; b) damage caused by accident, abuse, misuse, transport, neglect, fire, floods, earthquake or other external causes; c) damage caused by service performed by anyone who is not an authorised representative of the company d) accessories used in conjunction with a covered product; e) a product or part that has been modified to alter functionality or capability; f) items intended to be periodically replaced by the purchaser during the normal life of the product, including, without limitation, batteries, bulbs or cables; g) a product that is used commercially or for a commercial purpose, in each case as determined by the company h) wear and tear consistent with normal use.</p><p>This warranty does not cover products or devices that were not purchased through the homeiq.ae website</p><p><br></p><p><strong>REFUNDS</strong></p><p>In our effort to maintain the price competitiveness of the service and products we offer to our customers, all sales are made on an “as is”, no refund basis, provided and accepted at your own risk. Unless otherwise stated by the company in writing on this site, all sales made by the company are final and no refunds will be permitted.</p><p>It is your responsibility to familiarise yourself with this refund policy. By placing an order for any of our products, you indicate that you have read this refund policy and that you agree with and fully accept the terms of this refund policy.</p><p class=\"p1\"><span class=\"s1\">Any approved&nbsp;</span><span class=\"s2\">Refund&nbsp;will be done only through the Original Mode of Payment.</span></p><p class=\"p1\"><span class=\"s2\"><br></span></p><p><strong>DELIVERY POLICY</strong></p><p>We offer FREE delivery via standard courier on all UAE orders with a minimum value of AED 250. Any shipments outside of UAE are not available at this time. All orders are subject to product availability. An estimated delivery time will be provided to you once your order is placed. Delivery times are estimates and commence from the date of shipping, rather than the date of order. Delivery times are to be used as a guide only and are subject to the acceptance and approval of your order.</p><p>Date of delivery may vary due to carrier shipping practices, delivery location, method of delivery, and the items ordered. Unless there are exceptional circumstances, we make every effort to fulfil your order within [15] business days of the date of your order.</p><p>Back order items will ship in accordance to indicated timelines at time of purchase. A Single order maybe split into multiple shipments, depending on the availability of the item and / or weight limits for parcels by the courier/postal company. The cardholder should be aware of the possibility that multiple shipments may result in multiple postings to the cardholder’s monthly statement.</p><p>Orders that include professional installation service will be delivered in whole by installation team at designated time of installation.</p><p>Carrier tracking numbers can be found in your shipping confirmation email.<br>In the unlikely event that your order arrives damaged, please e-mail us within 48 hours of receiving your order.</p><p>Kindly note that we do not deal or provide any services or products to any of OFAC (Office of Foreign Assets Control) sanctions countries in accordance with the law of UAE.</p><p><br></p><p><strong>INSTALLATION POLICY </strong></p><p>Professional installation service offered through the website is provided through a Third Party directly and as such we assume no responsibility for all aspects of the Third Party Services except as specified hereunder.&nbsp;HomeIQ Electromechanical Services LLC&nbsp;makes no representations and provides no warranties regarding the quality, legality, suitability, reliability, timeliness, or accuracy of any Third Party Services or information provided through our Service. All users should exercise caution and common sense to protect personal safety and property when interacting with other users.</p><p>In the unlikely event of a dispute arising among one or more users of the services (including, without limitation, between a customer and a service provider, or between multiple service providers and/or customers), you hereby release&nbsp;HomeIQ Electromechanical Services LLC&nbsp;(and its affiliates, agents and employees) from, and shall indemnify the company against, all claims, demands and damages (actual and consequential) of every kind and nature, known and unknown, suspected and unsuspected, disclosed and undisclosed, arising out of or in any way connected with such disputes. The Company reserves the right in its sole discretion to attempt to resolve any such dispute.</p><p>The Company may offer installation service in certain markets at a “Flat Rate” price. The “Job Definition” for such offers will typically involve special conditions and exclusions in addition to the definition of the Job itself. If Service Provider determines the actual scope of a Job exceeds the Job Definition of an applicable “Flat Rate” offering, the Service Provider will get approval from&nbsp;The Company and the Customer before moving forward with the Job. If The Customer wants additional services, whether they be related to the original Job but excluded from the Job Definition, or whether they be otherwise, Service Provider will invoice the Customer directly for the additional labour, materials or permits.</p><p>The Company&nbsp;may in its sole discretion facilitate customer payments to Service Providers. Customer payments collected in such manner shall be considered the same as payments made directly from Customer to Service Provider. Payment is due from Customer at time of purchase of service.</p><p>The Company may offer to confirm an appointment with a Service Provider within a specific amount of time and/or schedule a Job for a particular date and time. In such cases, Company will make reasonable efforts to contact an appropriate Service Provider within that time frame and obtain confirmation of a suitable appointment. However, Company cannot guarantee, and ability to confirm appointments depends upon, Service Provider availability and in some cases the service location. Company also reserves the right to cancel a scheduled Job based on Service Provider availability.</p><p>If you are not satisfied with the quality of the project, we will work closely with you and the Service Provider to resolve the issue.</p><p>Each Customer acknowledges and agrees that&nbsp;HomeIQ Electromechanical Services LLC&nbsp;assumes no liability or responsibility for any (i) errors, mistakes or inaccuracies of Content, and/or (ii) personal injury or property damage, of any nature whatsoever, arising from its use of its Services and/or the provision of any Third Party Services by Service Providers. Customer acknowledges and agrees that Third Party Services and associated costs may vary during the course of a Third Party Services project.</p><p>Cancellation of Scheduled Visits: All attempts will be made to schedule suitable installation time at least one week post professional installation service purchase. Confirmation of appointments will be communicated to Customer via email. Any reschedule of confirmed appointment is required at least 48 hours prior to agreed schedule. Customer will be provided one opportunity to reschedule an appointment within a 4 week period.</p><p>The company reserves the right to cancel an installation without recourse to a refund where a) customers cancels a scheduled visit less than&nbsp;24 hours notice; b) are not available at the time of the scheduled visit or c) cancel a scheduled visit more than the permitted one time.</p><p>Errors in installation: errors or omissions in installation of said system, including but not limited to failure of equipment, shall be called to the attention of Company by customer in writing within five(5) days of completion of the installation. Upon the expiration of the five(5) day period, the installation and the equipment shall be deemed accepted by Customer.</p><p>Delay in installation: Company assumes no liability for delay in installation of the equipment, or for interruption of service due to power failures, interruption of or unavailability of internet service, or equipmentand Company will not be required to supply service to Customer while interruption service due to any such cause shall continue</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-15 07:58:46', '2025-03-21 04:49:37'),
(26, 21, 'en', 'Delivering [Excellence], One Solution at a Time', NULL, 'Explore the range of tailored services we offer to help your business grow, innovate, and stay ahead in today’s competitive landscape.', NULL, NULL, NULL, NULL, 'What We Offer', NULL, 'Our services are as dynamic as your ambitions - innovative, flexible, and focused on what                     matters most to you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a', 'b', 'c', 'd', 'e', 'f', 'g', NULL, '2025-03-15 08:10:56', '2025-07-17 09:14:25'),
(27, 9, 'en', NULL, NULL, NULL, 'Tessst', NULL, 'TessstTessstTessst', 'TessstTessstTessstTessst', 'TessstTessstTessstTessstTessstTessst', '<p>teeessstteeessstteeessstteeessst</p>', 'Tesssst', NULL, NULL, NULL, NULL, NULL, 'TessstTessstTessst', NULL, NULL, NULL, 'Ensuring smooth implementation and providing ongoing maintenance and optimization.', NULL, NULL, '[{\"heading\":\"TesssstTe\",\"title\":\"TesssstTessss\",\"description\":\"TesssstTess\"},{\"heading\":\"newwww\",\"title\":\"newwww\",\"description\":\"newwww\"}]', '[{\"icon\":\"49\"},{\"icon\":\"52\"},{\"icon\":\"54\"}]', 'teeessstteeessstTesssstTessst', '[{\"heading\":\"Test\",\"title\":\"Test\",\"description\":\"Test\"},{\"heading\":\"tesssst\",\"title\":\"tessssttessssttesssst\",\"icons\":[\"53\",\"54\",\"\",\"51\"],\"titles\":[\"\",\"tessssttessssttesssst\",\"\",\"\"],\"descriptions\":[\"\",\"tessssttessssttessssttessssttesssst\",\"\",\"\"]}]', NULL, '1111111111111', '22222222222', '33333333333', '444444444444', '455555555555555555', '6666666666666', '7777777777777', NULL, '2025-03-15 08:21:25', '2025-07-23 15:47:18'),
(28, 1, 'en', 'Transforming Ideas Into Scalable IT Solutions', 'Join a team that\'s building tomorrow’s technology, [today.]', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique.', 'Learn More', '<h2 class=\"about-home-heading font-sans font-light text-3xl md:text-[50px] !leading-[55px] space-y-4\" style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); font-size: 50px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); line-height: 55px !important;\"><div class=\"overflow-hidden\" style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235);\"><p class=\"about-home-line\" style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; translate: none; rotate: none; scale: none; transform: translate(0px, 0px); opacity: 1;\">Since 2005,&nbsp;<span class=\"text-[#F8B26A]\" style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-text-opacity: 1; color: rgb(248, 178, 106);\">Kubik</span>&nbsp;Construction has delivered timeless design and flawless execution.</p></div><div class=\"overflow-hidden\" style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); --tw-space-y-reverse: 0; margin-top: 16px; margin-bottom: 0px;\"><p class=\"about-home-line\" style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; translate: none; rotate: none; scale: none; transform: translate(0px, 0px); opacity: 1;\">We transform London’s most iconic properties into elegant contemporary homes while respecting their historic charm.</p></div></h2>', 'Empowering you with practical [learning.]', 'Secure & Reliable', 'Our Services', '[{\"name\":\"TestTestTestTestTestTest\",\"title\":\"TestTest\",\"content\":\"TestTestTest\"},{\"name\":\"TestTestTestTestTestTestTestTest\",\"title\":\"TestTestTestTestTestTestTestTestTest\",\"content\":\"TestTestTestTestTestTestTestTestTestTestTestTest\"}]', 'Timeless Craftsmanship [Enduring Impact]', NULL, '31', NULL, NULL, 'Explore a growing library of tutorials created to guide you through essential skills and tools. Whether you\'re a beginner or leveling up, there\'s something here for you.', 'Expert services that power [your progress.]', 'Trust in our top-notch security systems to keep your home safe, offering peace of mind with reliable protection.', 'Our experienced team ensures flawless installation, setting up your systems to work perfectly from day one.', 'Keep up with the latest company news, industry developments, and insightful perspectives to stay one step ahead.', NULL, 'We provide a wide range of services designed to support your goals and simplify your journey. Whether you\'re scaling up, improving internal efficiency, or enhancing your digital presence, our services are built to deliver real results.', 'Helping', 'We are a', 'Let’s Build [Something] Exceptional', 'Explore services tailored to meet your business needs with efficiency and expertise;', '[{\"title\":\"Test1\",\"designation\":\"Test1\",\"image\":\"38\"},{\"title\":\"Test1Test1\",\"designation\":\"Test1Test1\",\"image\":\"\"},{\"title\":\"Test1Test1Test1\",\"designation\":\"Test1Test1Test1\",\"image\":\"37\"}]', '{\"title\":\" Enquire with us design your dream home today\",\"subtitle\":\"heading10heading10\",\"button_text\":\"heading10heading10\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-17 08:13:08', '2025-07-23 09:05:04'),
(29, 22, 'en', 'Brand Listing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bbbb1111', 'bbbb2222', 'bbbb333', 'bbbb444', 'bbbb5555', 'bbbbb6666', 'bbbbb77777', NULL, '2025-03-21 05:54:21', '2025-03-21 05:54:21'),
(30, 8, 'en', 'Frequently Asked Questions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fffff', 'rrrrr', 'eeeee', 'qqqqqq', 'uuuuu', 'eeeee', 'nnnnn', NULL, '2025-03-29 07:02:36', '2025-03-29 07:02:36'),
(31, 23, 'en', 'Delivering [Excellence], One Solution at a Time', NULL, 'Test', NULL, NULL, NULL, NULL, 'Test', NULL, 'Test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-17 09:27:49', '2025-07-17 09:33:13'),
(32, 24, 'en', 'Testtt', '<p>TestttTestttTesttt</p>', NULL, 'TestttTesttt', NULL, 'Testtt', NULL, NULL, NULL, 'TestttTesttt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-23 16:50:31', '2025-07-23 16:50:31'),
(33, 25, 'en', 'Our Services', NULL, NULL, 'Know about our', NULL, 'More Services', NULL, NULL, NULL, 'FAQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-24 06:48:48', '2025-07-24 06:49:10');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name`, `image`, `link`, `sort_order`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Sitemark', '38', '/', 0, 1, NULL, NULL, '2025-07-16 11:15:31', '2025-07-16 11:15:31'),
(2, 'Vertigo', '39', '/', 0, 1, NULL, NULL, '2025-07-16 11:15:55', '2025-07-16 11:15:55');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `guard_name` varchar(191) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `title`, `guard_name`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 'manage_roles', 'Manage Roles', 'web', 1, NULL, NULL),
(4, 'manage_products', 'Manage Products', 'web', 1, NULL, NULL),
(5, 'manage_categories', 'Manage Categories', 'web', 1, NULL, NULL),
(6, 'manage_brands', 'Manage Brands', 'web', 1, NULL, NULL),
(9, 'product_reviews', 'Manage Product Reviews', 'web', 1, NULL, NULL),
(10, 'manage_orders', 'Manage Orders', 'web', 1, NULL, NULL),
(11, 'manage_customers', 'Manage Customers', 'web', 1, NULL, NULL),
(12, 'upload_files', 'Manage Uploaded Files', 'web', 1, NULL, NULL),
(13, 'view_reports', 'View Reports', 'web', 1, NULL, NULL),
(14, 'manage_marketing', 'Manage Marketing', 'web', 1, NULL, NULL),
(15, 'website_setup', 'Manage Website Setup', 'web', 1, NULL, NULL),
(17, 'manage_staffs', 'Manage Staffs', 'web', 1, NULL, NULL),
(18, 'settings', 'Manage General Settings', 'web', 1, NULL, NULL),
(22, 'manage_services', 'Manage Services', 'web', 1, NULL, NULL),
(23, 'manage_faq', 'Manage FAQ ', 'web', 1, NULL, NULL),
(24, 'manage_blogs', 'Manage Blogs', 'web', 1, NULL, NULL),
(25, 'newsletter_subscribers', 'Newsletter Subscribers', 'web', 1, NULL, NULL),
(26, 'manage_tutorials', 'Manage Tutorials', 'web', 1, NULL, NULL),
(27, 'manage_attributes', 'Manage Attributes', 'web', 1, NULL, NULL),
(28, 'manage_projects', 'Manage Projects', 'web', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `expires_at`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 75, 'api-token', '1a255caf1e325b317280736bf4b520f6f3bd81a1717ea5f55b38f22abdb1b420', '[\"*\"]', NULL, NULL, '2025-07-14 12:41:21', '2025-07-14 12:41:21'),
(2, 'App\\Models\\User', 72, 'api-token', '1640a7ba6ea1003589ea67c775ddd156e302cffb51ad538dc83ce811dc9b3306', '[\"*\"]', NULL, '2025-07-14 12:50:14', '2025-07-14 12:41:34', '2025-07-14 12:50:14'),
(3, 'App\\Models\\User', 72, 'api-token', '83f506b94a2c9fff4ba579db7dba03703af883e246a75e0fdd547f45661d55c0', '[\"*\"]', NULL, NULL, '2025-07-14 14:21:04', '2025-07-14 14:21:04'),
(4, 'App\\Models\\User', 72, 'api-token', '918a71e871c3295c15dd51a8d242195eaa0e8e34a7eb4c6094945479d3c1a749', '[\"*\"]', NULL, '2025-07-14 14:30:06', '2025-07-14 14:27:19', '2025-07-14 14:30:06'),
(5, 'App\\Models\\User', 72, 'api-token', '699d1884342547d43f02d5c580cefdde88a8c708a10d9100de3ae644689e24ef', '[\"*\"]', NULL, NULL, '2025-07-15 05:25:54', '2025-07-15 05:25:54'),
(6, 'App\\Models\\User', 72, 'api-token', 'abd2d99547d85189bb3e9797ce1996f88ac4eb4a62830c4e4a0f96cbae04b0cb', '[\"*\"]', NULL, NULL, '2025-07-15 13:57:07', '2025-07-15 13:57:07'),
(7, 'App\\Models\\User', 72, 'api-token', '57289e4c16189e585863504c028941d0578fcd349d93510a313472d79ff3ccbb', '[\"*\"]', NULL, NULL, '2025-07-21 05:27:38', '2025-07-21 05:27:38');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `photos` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `completion_status` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `highlights` text DEFAULT NULL,
  `tags` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `subtitle`, `sort_order`, `slug`, `image`, `photos`, `status`, `completion_status`, `parent_id`, `created_at`, `updated_at`, `highlights`, `tags`) VALUES
(1, 'Test Project', NULL, 0, 'test-project', NULL, NULL, 1, NULL, NULL, '2025-07-22 09:13:12', '2025-07-22 16:08:45', NULL, NULL),
(2, 'Test projectTTTTT', 'projectprojectproject', 0, 'test-project-2', '49', '/storage/projects/test-project-2/test-project-2_gallery_1.jpg,/storage/projects/test-project-2/test-project-2_gallery_2.jpg,/storage/projects/test-project-2/test-project-2_gallery_3.jpg', 1, '0', NULL, '2025-07-22 11:21:33', '2025-07-23 17:17:56', '[{\"title\":\"TestTest project\",\"subtitle\":\"Test project\"},{\"title\":\"Test projectTest project\",\"subtitle\":\"Test projectTest project\"},{\"title\":null,\"subtitle\":null}]', 'test,new');

-- --------------------------------------------------------

--
-- Table structure for table `project_translations`
--

CREATE TABLE `project_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `lang` varchar(10) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `og_title` varchar(255) DEFAULT NULL,
  `og_description` text DEFAULT NULL,
  `twitter_title` varchar(255) DEFAULT NULL,
  `twitter_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_translations`
--

INSERT INTO `project_translations` (`id`, `project_id`, `name`, `description`, `lang`, `meta_title`, `meta_description`, `meta_keywords`, `og_title`, `og_description`, `twitter_title`, `twitter_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Test Project', '<p>Test Project</p>', 'en', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-22 09:13:12', '2025-07-22 09:13:12'),
(2, 2, 'Test projectTTTTT', '<p>Test project</p>', 'en', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-22 11:21:33', '2025-07-23 16:55:12');

-- --------------------------------------------------------

--
-- Table structure for table `request_accesses`
--

CREATE TABLE `request_accesses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `access_key` varchar(100) DEFAULT NULL,
  `user_created` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_accesses`
--

INSERT INTO `request_accesses` (`id`, `name`, `email`, `phone`, `subject`, `message`, `access_key`, `user_created`, `created_at`, `updated_at`) VALUES
(1, 'Mohammed', 'myname@gmail.com', '971555343434', NULL, 'MohammedMohammed', 'FIQpMdjo', 1, '2025-07-23 18:02:21', '2025-07-23 18:05:38'),
(2, 'Mohammed 1', 'mum@gmail.com', '97155565656', NULL, 'Mohammed 1', '$2y$12$HkQbIdb8NH2qftc.oauZZeK40BLe8AR1ezcB.uBk0Xc/Nj1oputJm', 1, '2025-07-23 18:08:13', '2025-07-23 18:08:19'),
(3, 'Mohammed', 'johndoe@example.com', '971555347877', NULL, 'MohammedMohammed', 'ueIgHmIJ', 1, '2025-07-23 18:10:46', '2025-07-23 18:10:52');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `comment` mediumtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `viewed` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', 1, NULL, NULL),
(2, 'Admin', 'web', 1, NULL, NULL),
(9, 'Manager', 'web', 1, '2024-02-26 14:31:25', '2024-02-26 14:31:25'),
(10, 'Content Writer', 'web', 1, '2024-02-26 14:32:15', '2024-02-26 14:32:15'),
(14, 'Testing Role', 'web', 1, '2024-10-14 10:09:33', '2024-10-16 13:25:06');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(3, 1),
(3, 9),
(3, 14),
(4, 1),
(5, 1),
(6, 1),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(10, 14),
(11, 1),
(11, 2),
(11, 9),
(11, 14),
(12, 1),
(12, 2),
(12, 9),
(12, 10),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(17, 1),
(17, 2),
(17, 10),
(18, 1),
(18, 2),
(18, 14),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1);

-- --------------------------------------------------------

--
-- Table structure for table `role_translations`
--

CREATE TABLE `role_translations` (
  `id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lang` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_translations`
--

INSERT INTO `role_translations` (`id`, `role_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(1, 3, 'Shop Manger', 'en', '2023-05-01 18:16:07', '2023-05-01 18:16:07');

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `temp_user_id` varchar(191) DEFAULT NULL,
  `query` varchar(1000) NOT NULL,
  `ip_address` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `price` double(20,2) NOT NULL DEFAULT 0.00,
  `image` varchar(255) DEFAULT NULL,
  `custom_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `title1` varchar(255) DEFAULT NULL,
  `content1` text DEFAULT NULL,
  `title2` varchar(255) DEFAULT NULL,
  `content2` text DEFAULT NULL,
  `title3` varchar(255) DEFAULT NULL,
  `content3` text DEFAULT NULL,
  `title4` varchar(255) DEFAULT NULL,
  `content4` text DEFAULT NULL,
  `title5` varchar(255) DEFAULT NULL,
  `content5` text DEFAULT NULL,
  `title6` varchar(255) DEFAULT NULL,
  `content6` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `parent_id`, `name`, `slug`, `price`, `image`, `custom_fields`, `icon`, `sort_order`, `status`, `created_at`, `updated_at`, `title1`, `content1`, `title2`, `content2`, `title3`, `content3`, `title4`, `content4`, `title5`, `content5`, `title6`, `content6`) VALUES
(19, NULL, 'test service', 'test-service', 526.00, '31', NULL, NULL, 2, 1, '2025-05-03 12:21:28', '2025-05-03 12:29:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, NULL, 'New Service', 'new-service', 0.00, '42', 'null', '55', 1, 1, '2025-05-03 12:25:53', '2025-07-23 15:11:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 19, 'Test', 'testtest', 0.00, '52', 'null', NULL, 0, 1, '2025-07-17 12:54:34', '2025-07-23 16:18:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 20, 'Learn More', 'learlearn-moren-more', 0.00, NULL, 'null', NULL, 0, 1, '2025-07-22 05:50:00', '2025-07-23 15:56:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 19, 'mohammed', 'mohammed', 0.00, NULL, '[{\"image\": \"38\", \"tab_heading\": \"Test1\", \"tab_description\": \"<p>Test1Test1Test1</p>\"}]', NULL, 0, 1, '2025-07-22 10:21:23', '2025-07-23 15:56:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_translations`
--

CREATE TABLE `service_translations` (
  `id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `short_title` text DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `features` text DEFAULT NULL,
  `lang` varchar(5) NOT NULL DEFAULT 'en',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `og_title` varchar(255) DEFAULT NULL,
  `og_description` text DEFAULT NULL,
  `twitter_title` varchar(255) DEFAULT NULL,
  `twitter_description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `feature_title_1` varchar(255) DEFAULT NULL,
  `feature_content_1` text DEFAULT NULL,
  `feature_title_2` varchar(255) DEFAULT NULL,
  `feature_content_2` text DEFAULT NULL,
  `feature_title_3` varchar(255) DEFAULT NULL,
  `feature_content_3` text DEFAULT NULL,
  `feature_title_4` varchar(255) DEFAULT NULL,
  `feature_content_4` text DEFAULT NULL,
  `feature_title_5` varchar(255) DEFAULT NULL,
  `feature_content_5` text DEFAULT NULL,
  `feature_title_6` varchar(255) DEFAULT NULL,
  `feature_content_6` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_translations`
--

INSERT INTO `service_translations` (`id`, `service_id`, `name`, `short_title`, `short_description`, `description`, `features`, `lang`, `meta_title`, `meta_description`, `meta_keywords`, `og_title`, `og_description`, `twitter_title`, `twitter_description`, `created_at`, `updated_at`, `feature_title_1`, `feature_content_1`, `feature_title_2`, `feature_content_2`, `feature_title_3`, `feature_content_3`, `feature_title_4`, `feature_content_4`, `feature_title_5`, `feature_content_5`, `feature_title_6`, `feature_content_6`) VALUES
(19, 19, 'test service', NULL, NULL, '<p>ADasdasd</p>', NULL, 'en', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-03 12:21:28', '2025-05-03 12:21:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 20, 'New Service', NULL, 'Test', '<p>Test</p>', NULL, 'en', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-03 12:25:53', '2025-07-17 11:09:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 21, 'Test', 'Test Test', NULL, '<p>tesssttesssttessst tessst tessst&nbsp;</p>', NULL, 'en', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-17 12:54:34', '2025-07-23 16:18:51', 'Learn More', 'Learn More', 'Learn More1', 'Learn More12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 22, 'Learn More', NULL, NULL, NULL, NULL, 'en', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-22 05:50:00', '2025-07-22 05:50:00', 'Learn More', 'Learn MoreLearn More', 'Learn MoreLearn MoreLearn More', 'Learn MoreLearn MoreLearn MoreLearn More', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 23, 'mohammed', NULL, NULL, NULL, NULL, 'en', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-22 10:21:23', '2025-07-22 10:21:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `name_ar` varchar(191) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  `address_ar` varchar(191) NOT NULL,
  `delivery_pickup_latitude` decimal(8,6) DEFAULT NULL,
  `delivery_pickup_longitude` decimal(9,6) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_user`
--

CREATE TABLE `shop_user` (
  `shop_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_users`
--

CREATE TABLE `shop_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(7, 'mohammed@gmail.com', '2025-07-18 08:34:09', '2025-07-18 08:34:09'),
(8, 'mohammed123@gmail.com', '2025-07-18 08:40:03', '2025-07-18 08:40:03'),
(9, 'mohammed1234@gmail.com', '2025-07-18 08:40:27', '2025-07-18 08:40:27'),
(10, 'mohammed1111@gmail.com', '2025-07-23 11:20:31', '2025-07-23 11:20:31');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `title`, `comment`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Sarah L.', 'A Game-Changer for My Home!', 'I never realized how much convenience smart home technology could bring until I installed their solutions...', 1, 1, '2025-02-22 08:53:07', '2025-03-17 07:03:20'),
(2, 'James R.', 'Professional Installation & Support!', 'The installation team was prompt and extremely professional. They made sure my smart security system was set up perfectly...', 1, 3, '2025-02-22 09:00:35', '2025-03-17 07:02:51'),
(3, 'Sarah John', 'Professional service!', 'The team was punctual, thorough, and very professional. Will definitely use them again!', 1, 4, '2025-02-24 01:36:59', '2025-03-17 07:03:21');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `gateway` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `additional_content` text DEFAULT NULL,
  `mpesa_request` varchar(255) DEFAULT NULL,
  `mpesa_receipt` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tutorials`
--

CREATE TABLE `tutorials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `tutorial_date` date DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `og_title` varchar(191) DEFAULT NULL,
  `og_description` text DEFAULT NULL,
  `twitter_title` varchar(191) DEFAULT NULL,
  `twitter_description` text DEFAULT NULL,
  `keywords` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tutorials`
--

INSERT INTO `tutorials` (`id`, `slug`, `name`, `description`, `image`, `status`, `tutorial_date`, `meta_title`, `meta_description`, `og_title`, `og_description`, `twitter_title`, `twitter_description`, `keywords`, `created_at`, `updated_at`) VALUES
(1, 'customized-business-services-services-services-services-services-services', 'Customized Business Services Services Services Services Services Services Services', '<p>abcbcdcjndcnj abcbcdcjndcnj abcbcdcjndcnj abcbcdcjndcnjj abcbcdcjndcnj abcbcdcjndcnjj abcbcdcjndcnj abcbcdcjndcnjj abcbcdcjndcnj abcbcdcjndcnjj abcbcdcjndcnj abcbcdcjndcnjj abcbcdcjndcnj abcbcdcjndcnjj abcbcdcjndcnj abcbcdcjndcnjj abcbcdcjndcnj abcbcdcjndcnjj abcbcdcjndcnj abcbcdcjndcnjj abcbcdcjndcnj abcbcdcjndcnj</p>', '42', 1, '2025-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-17 07:35:28', '2025-07-25 12:53:05'),
(2, 'customized-business-services-1', 'Customized Business Services 1', '<p>Description content for entry 1 ...</p>', '', 1, '2025-07-09', '', '', '', '', '', '', '', NULL, NULL),
(3, 'customized-business-services-2', 'Customized Business Services 2', '<p>Description content for entry 2 ...</p>', '', 1, '2025-07-10', '', '', '', '', '', '', '', NULL, NULL),
(4, 'customized-business-services-3', 'Customized Business Services 3', '<p>Description content for entry 3 ...</p>', '', 1, '2025-07-11', '', '', '', '', '', '', '', NULL, NULL),
(5, 'customized-business-services-4', 'Customized Business Services 4', '<p>Description content for entry 4 ...</p>', '', 1, '2025-07-12', '', '', '', '', '', '', '', NULL, NULL),
(6, 'customized-business-services-5', 'Customized Business Services 5', '<p>Description content for entry 5 ...</p>', '', 1, '2025-07-13', '', '', '', '', '', '', '', NULL, NULL),
(7, 'customized-business-services-6', 'Customized Business Services 6', '<p>Description content for entry 6 ...</p>', '', 1, '2025-07-14', '', '', '', '', '', '', '', NULL, NULL),
(8, 'customized-business-services-7', 'Customized Business Services 7', '<p>Description content for entry 7 ...</p>', '', 1, '2025-07-15', '', '', '', '', '', '', '', NULL, NULL),
(9, 'customized-business-services-8', 'Customized Business Services 8', '<p>Description content for entry 8 ...</p>', '', 1, '2025-07-16', '', '', '', '', '', '', '', NULL, NULL),
(10, 'customized-business-services-9', 'Customized Business Services 9', '<p>Description content for entry 9 ...</p>', '', 1, '2025-07-17', '', '', '', '', '', '', '', NULL, NULL),
(11, 'customized-business-services-10', 'Customized Business Services 10', '<p>Description content for entry 10 ...</p>', '', 1, '2025-07-18', '', '', '', '', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(11) NOT NULL,
  `file_original_name` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `extension` varchar(10) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `external_link` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `file_original_name`, `file_name`, `user_id`, `file_size`, `extension`, `type`, `external_link`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '55', 'uploads/all/zRIBFwc0QSj64tMLMz6n2Y1gamagZOipJD7fmPMR.png', 1, 1649, 'png', 'image', NULL, '2025-02-14 07:34:53', '2025-02-14 07:34:53', NULL),
(2, 'ac-2', 'uploads/all/GEYsG4ALqPKBQGjsklioSH7Gl5UZ9oZUNqOesPtg.png', 1, 1398, 'png', 'image', NULL, '2025-02-14 07:34:53', '2025-02-14 07:34:53', NULL),
(3, 'camera', 'uploads/all/ftDqUwZAkRUYMrVCrARAnVJUAyFxPwXGiBnY5RcL.png', 1, 3306, 'png', 'image', NULL, '2025-02-14 07:34:53', '2025-02-14 07:34:53', NULL),
(4, 'irrigation', 'uploads/all/oqPaBel1wjri7wKBY1Vq4eGj2AAypBTCL6EmXKXK.png', 1, 4899, 'png', 'image', NULL, '2025-02-14 07:34:54', '2025-02-14 07:34:54', NULL),
(5, 'lock2', 'uploads/all/D6TxCdGfjRGtjX0T7wE5EWK4rVqtbbkdmTn5iPnS.png', 1, 2461, 'png', 'image', NULL, '2025-02-14 07:34:54', '2025-02-14 07:34:54', NULL),
(6, 'thermostat', 'uploads/all/fgO1ESgWUzStsgyt6h25sR1ikE1Y2kH6YKADGVIw.png', 1, 3899, 'png', 'image', NULL, '2025-02-14 07:34:54', '2025-02-14 07:34:54', NULL),
(7, 'unnamed', 'uploads/all/wCcBzMblxz77qGxnNGB631RG95nBKdR1QDfftu4N.webp', 1, 56292, 'webp', 'image', NULL, '2025-02-14 07:42:03', '2025-02-14 07:42:03', NULL),
(8, 'ecobee', 'uploads/all/qO6Wy8OB8SVpO0JCTj03YryXSyk5RDzT2m6x33jH.jpg', 1, 84005, 'jpg', 'image', NULL, '2025-02-14 07:44:51', '2025-02-14 07:44:51', NULL),
(9, 'Honeywell_logo.svg', 'uploads/all/9zvYZtKh1Hw2RGW8JaVNtZVtGv8ypOJYCnihWx27.png', 1, 53030, 'png', 'image', NULL, '2025-02-14 07:45:54', '2025-02-14 07:48:09', '2025-02-14 07:48:09'),
(10, 'Honeywell-logo-300x300', 'uploads/all/gl11dGYbsE2TSjWQdQBrrtcp9ncx6fg2rHrncn6F.png', 1, 67646, 'png', 'image', NULL, '2025-02-14 07:46:41', '2025-02-14 07:48:05', '2025-02-14 07:48:05'),
(11, 'Honeywell_logo.svg', 'uploads/all/z4QJ92Dpo1knbVgIucYXtnOEn4OPAOvpvlC5Hux2.png', 1, 21742, 'png', 'image', NULL, '2025-02-14 07:47:44', '2025-02-14 07:47:44', NULL),
(12, 'nest_logo-e1462350391584', 'uploads/all/SogjqEJHY2h3hhx6DWtmaYGoEfEhlFuPnP8GSlhw.png', 1, 8152, 'png', 'image', NULL, '2025-02-14 07:52:09', '2025-02-14 07:52:09', NULL),
(13, '76-large_brand', 'uploads/all/U7vFTQkzrkM8SvgZOE9p7xHi9X0tIznIJbAcALRj.webp', 1, 2940, 'webp', 'image', NULL, '2025-02-14 07:52:09', '2025-02-14 07:52:09', NULL),
(14, 'nest-installation-multi_NEST-PRO', 'uploads/all/tp6tpipBli7KVsGhuZrwsTsHtdDZgmTcQQTGCVth.jpg', 1, 85585, 'jpg', 'image', NULL, '2025-02-15 09:15:37', '2025-02-15 09:15:37', NULL),
(15, 'Ecobee-installation-3-speed-rev', 'uploads/all/1uRtmIb1SQH7GEuovBtblcZgSnH3xf3wmutZNYVP.jpg', 1, 104352, 'jpg', 'image', NULL, '2025-02-17 01:28:29', '2025-02-17 01:28:29', NULL),
(16, 'image_33_enCA_Home_Shot_Foyer_cooling24C_2000x_300dpi-nm77plys2y69sk1uyq410a1g5rodsfuviakfs5uh14', 'uploads/all/E83RHXOWBVxglapSw7gofzjBa0zt7UvuWzci4srn.jpg', 1, 233360, 'jpg', 'image', NULL, '2025-02-17 07:40:35', '2025-02-17 07:40:35', NULL),
(17, 'profile_facing_left_door_open__1_-1-ntvqilhfkzrxmvakff4vu3qt1kuat7rtvw0grmnago', 'uploads/all/oeWCXubrXJP0sl5fY321HCpMkVhYriqvuEiLZcQi.jpg', 1, 192188, 'jpg', 'image', NULL, '2025-02-17 08:08:10', '2025-02-17 08:08:10', NULL),
(18, 'energy-saving', 'uploads/all/nn7jW8LFYtyiTtS7PhxWuLYwgutgD8BCG9STRrod.png', 1, 1405, 'png', 'image', NULL, '2025-03-17 01:46:12', '2025-03-17 01:46:12', NULL),
(19, 'logo (1)', 'uploads/all/roZv6o5Lp8qDNzC6QOh146RacMWIqEJJH60giOh2.svg', 1, 42526, 'svg', 'image', NULL, '2025-03-17 04:30:59', '2025-03-17 04:30:59', NULL),
(20, 'home-automation-solutions', 'uploads/all/saYsXykCDrvPqKYQHYIIqBbLoDtrEI9C9yp16U1m.png', 1, 28953, 'png', 'image', NULL, '2025-03-17 07:29:54', '2025-03-17 07:29:54', NULL),
(21, 'smart-smoke-detectors', 'uploads/all/6wRAHjxV7EnbylH9ppaEakW8UTdip5Kyh6CZ4l5V.png', 1, 24914, 'png', 'image', NULL, '2025-03-17 07:29:54', '2025-03-17 07:29:54', NULL),
(22, 'smart-locks-doorbells', 'uploads/all/9xfaNFn8PEbttKBIfYfUkmKaJVOJGgsMZKNNOIPU.png', 1, 22867, 'png', 'image', NULL, '2025-03-17 07:29:55', '2025-03-17 07:29:55', NULL),
(23, 'smart-thermostats', 'uploads/all/72Ho9VbMW763nyA79iSHQOHR1w9aRpr0zphLRkbt.png', 1, 17755, 'png', 'image', NULL, '2025-03-17 07:29:55', '2025-03-17 07:29:55', NULL),
(24, 'indoor-outdoor-cameras', 'uploads/all/zafFQvDO5voUEU1WsLXVASZ7DpNBiMtz9iJdYfQl.png', 1, 17519, 'png', 'image', NULL, '2025-03-17 07:29:55', '2025-03-17 07:29:55', NULL),
(25, 'ac-service-maintenance', 'uploads/all/F2NukWmbBYjp2S7yuPjihPn4nio9ZCHqUVUFnmxB.png', 1, 15013, 'png', 'image', NULL, '2025-03-17 07:29:55', '2025-03-17 07:29:55', NULL),
(26, 'image 6', 'uploads/all/Bh5o5IVoOuRdyZLbsfoaKeq0oCBKOfhUwlkFzqyb.png', 1, 91941, 'png', 'image', NULL, '2025-03-18 02:54:30', '2025-03-18 02:54:30', NULL),
(27, 'image2', 'uploads/all/zoIMREVjqoP3kXly1JijMfAO4e5SSwejR14CTLpN.png', 1, 39621, 'png', 'image', NULL, '2025-03-18 02:54:30', '2025-03-18 02:54:30', NULL),
(28, 'image3', 'uploads/all/a4v9aKSD2Mlyn6ZTdwBz4nJX6HB5xgm1NVB81gFO.png', 1, 41554, 'png', 'image', NULL, '2025-03-18 02:54:30', '2025-03-18 02:54:30', NULL),
(29, 'image4', 'uploads/all/dHEcMLkcFVlLFfTfGM5EsO1qdqsWM4p5jHtaObCF.png', 1, 57629, 'png', 'image', NULL, '2025-03-18 02:54:31', '2025-03-18 02:54:31', NULL),
(30, 'image5', 'uploads/all/lkEG4lm2Ec7eozZoZLafvs4iQZlcAMuSmNVEUf2S.png', 1, 74771, 'png', 'image', NULL, '2025-03-18 02:54:31', '2025-03-18 02:54:31', NULL),
(31, 'image1', 'uploads/all/YKvnR7xRcMignH71khmHhbrIa2NgNPYK52OojvhY.png', 1, 87358, 'png', 'image', NULL, '2025-03-18 02:54:31', '2025-03-18 02:54:31', NULL),
(32, 'bolt', 'uploads/all/kAVtUvSKp3Foen3US4GUcXZ425C9kViCuqgFDnYi.png', 1, 1242, 'png', 'image', NULL, '2025-03-18 03:15:21', '2025-03-18 03:15:21', NULL),
(33, 'lightbulb', 'uploads/all/zSsvQ3jAobt6O5bkKX0GR2LHFIRISyBmgfStlhf9.png', 1, 1405, 'png', 'image', NULL, '2025-03-18 03:15:22', '2025-03-18 03:15:22', NULL),
(34, 'shield', 'uploads/all/c6gyhdRFFSeXqh8JW0hR0f2uSPEUt1LBcY8DaONA.png', 1, 1195, 'png', 'image', NULL, '2025-03-18 03:15:22', '2025-03-18 03:15:22', NULL),
(35, 'wifi', 'uploads/all/Fcq4xMak1APIpsd9chIYMJQX33FeAdITq3OiioUl.png', 1, 1074, 'png', 'image', NULL, '2025-03-18 03:15:22', '2025-03-18 03:15:22', NULL),
(36, 'download', 'uploads/all/BKwPRGMIcUPynqmTXyQKwRYCnPKWUuwzEVQFyFRJ.jpg', 1, 18667, 'jpeg', 'image', NULL, '2025-07-14 13:25:57', '2025-07-14 13:25:57', NULL),
(37, '1', 'uploads/all/pDWDXWGQ8VkjBp11HIhkPRjtTDHT5MkZlSNHp45l.svg', 1, 6752, 'svg', 'image', NULL, '2025-07-16 11:01:18', '2025-07-16 11:01:18', NULL),
(38, '1', 'uploads/all/pAHDDb7XlNFZg4AdGd0PEn1gsBlUnecUFZjGUd4D.svg', 1, 8532, 'svg', 'image', NULL, '2025-07-16 11:15:17', '2025-07-16 11:15:17', NULL),
(39, '2', 'uploads/all/IHV8l6i4L2xKQ8dgnyTnlSTygrkE2hTHnCopJpki.svg', 1, 6108, 'svg', 'image', NULL, '2025-07-16 11:15:46', '2025-07-16 11:15:46', NULL),
(40, 'footer-logo', 'uploads/all/nc3lbqKrVFfiypCdluH5GRxibHbk3faTr1EBIRV0.svg', 1, 3404, 'svg', 'image', NULL, '2025-07-16 14:00:07', '2025-07-16 14:00:07', NULL),
(41, 'logo-white', 'uploads/all/aYyKKFhVPUsiQxUU3ApE32m7rzVodm0HX5XtXTMx.svg', 1, 3199, 'svg', 'image', NULL, '2025-07-16 14:19:59', '2025-07-16 14:19:59', NULL),
(42, 'tutorial1', 'uploads/all/uArz2zov8g0vCskctHC4I2r3WUCT1dWA8CYUniPS.png', 1, 355146, 'png', 'image', NULL, '2025-07-17 07:37:08', '2025-07-17 07:37:08', NULL),
(43, 'logo', 'uploads/all/zkPXfgQaMEU3t2eToKaTqVhV0QKdwQ7k43EEjvKQ.png', 1, 475847, 'png', 'image', NULL, '2025-07-23 06:30:27', '2025-07-23 06:30:27', NULL),
(44, 'logo-black', 'uploads/all/okKSGrEBhfmaaHVRJUk6dqu2oI3pn4MUFRWmfjHP.svg', 1, 4579, 'svg', 'image', NULL, '2025-07-23 06:30:37', '2025-07-23 06:30:37', NULL),
(45, 'logo-white', 'uploads/all/4c2nBzgqG1542wQelhIRDkzHC8MMSIXVPlu4FlTF.svg', 1, 10477, 'svg', 'image', NULL, '2025-07-23 06:33:30', '2025-07-23 06:33:30', NULL),
(46, 'cta-room', 'uploads/all/HfGwTRTY5ePHFPIArjbKQ4pyzoMZZAhPoA6c0bR3.png', 1, 308647, 'png', 'image', NULL, '2025-07-23 08:26:51', '2025-07-23 08:26:51', NULL),
(47, 'menu-home', 'uploads/all/o4IXHtDxThk1zBPj8GQeM3qdo3udFcxMeiMRwvts.webp', 1, 201470, 'webp', 'image', NULL, '2025-07-23 10:33:57', '2025-07-23 10:33:57', NULL),
(48, 'menu-contact', 'uploads/all/3RO8XJG9rsSCpPQn9doRV4AeW563pMzl5ISC1zFk.jpg', 1, 29022, 'jpg', 'image', NULL, '2025-07-23 10:34:01', '2025-07-23 10:34:01', NULL),
(49, 'menu-projects', 'uploads/all/xeumyr2IdLWtJEaQE2xeVPi9bePuU0pTiroVTdDM.jpg', 1, 309857, 'jpg', 'image', NULL, '2025-07-23 10:34:01', '2025-07-23 10:34:01', NULL),
(50, 'menu-contact', 'uploads/all/rbl01tl5OKqCnlI8UFDJWQlfhfoh1DY8gEx6cWuw.webp', 1, 16740, 'webp', 'image', NULL, '2025-07-23 10:34:01', '2025-07-23 10:34:01', NULL),
(51, 'menu-default', 'uploads/all/Osenp52NRfS9aQdqjP88I72g47fIf9Ckg16jQz7t.jpg', 1, 70442, 'jpg', 'image', NULL, '2025-07-23 10:34:01', '2025-07-23 10:34:01', NULL),
(52, 'menu-home', 'uploads/all/MLGQf76X8l8EzsrUS0ObbVthAKkcLMf7tVgxC4lM.jpg', 1, 274586, 'jpg', 'image', NULL, '2025-07-23 10:34:02', '2025-07-23 10:34:02', NULL),
(53, 'menu-about', 'uploads/all/tgANULUj4xJsPOI1EhYTdjnnJgr65duh4Vv4UqnY.jpg', 1, 422527, 'jpg', 'image', NULL, '2025-07-23 10:34:03', '2025-07-23 10:34:03', NULL),
(54, 'menu-services', 'uploads/all/wQFbjvWdt84jLFBEfHbk7S8ELVx9GyNlKDjOgWRM.jpg', 1, 1742664, 'jpg', 'image', NULL, '2025-07-23 10:34:07', '2025-07-23 10:34:07', NULL),
(55, 'bg-cta-2', 'uploads/all/KBswrdB5apoT38MEj9MRcJcIAyvUjmtZQsqRJTmG.jpg', 1, 204233, 'jpg', 'image', NULL, '2025-07-23 13:47:11', '2025-07-23 13:47:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'customer',
  `name` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `banned` tinyint(4) NOT NULL DEFAULT 0,
  `password` varchar(191) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `otp` varchar(50) DEFAULT NULL,
  `otp_expiry` timestamp NULL DEFAULT NULL,
  `is_phone_verified` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `verification_code` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `device_token` varchar(255) DEFAULT NULL,
  `avatar` varchar(256) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_type`, `name`, `email`, `phone`, `banned`, `password`, `remember_token`, `otp`, `otp_expiry`, `is_phone_verified`, `email_verified_at`, `verification_code`, `status`, `device_token`, `avatar`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@homeiq.com', NULL, 0, '$2y$12$SfuI4RHZOWAyQ4Zri1wrEujk3Pf6Bi1RcRhVX/p8nrd/8/9RN5GKu', NULL, NULL, NULL, 0, '2023-02-24 15:02:20', NULL, 0, NULL, NULL, NULL, NULL, '2023-02-24 15:50:20', '2023-02-24 15:50:20'),
(65, 'customer', 'Jisha P', 'jisha.tomsher@yopmail.com', '1122334455', 0, '$2y$12$0mayq1V4OFAmAj2YjESOk.Ub3/uwMi0ZVAa8YiOvY9GWaXFdtwY8K', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-03-21 07:32:43', '2025-03-21 07:32:43'),
(66, 'customer', 'Jisha P', 'jisha@yopmail.com', '971568650838', 0, '$2y$12$BoTV2D174prHdX7eTpcWAeu6xsNnzldPSGHbd7BeramA7DGQWa7yy', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-03-21 08:11:57', '2025-04-16 09:34:06'),
(68, 'customer', 'Nythika Renjith', 'jisha.tomsher@gmail.com', '971568650838', 0, '$2y$12$TJLFV0ymMSd4PLNrKM1WHe1UtBcCYbj9KVARdiuas2KlwgsPv6GIy', 'nPgjQvoyH3ecRjDTamp9biZ4gtFHY2VYiafXtZ4zQHOZQe4L0wVlKDuCS5GT', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-03-22 01:36:38', '2025-04-17 12:59:32'),
(69, 'customer', 'xxxxxxxxxxxxxx', 'xxx@yopmail.com', '2332323243243', 0, '$2y$12$OWPxWZogPqpThD0AOoE3yeH5AqgE9av9aF1OtAAIk5CdgJLTDh3v6', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-04-16 09:23:03', '2025-04-16 09:23:03'),
(70, 'customer', 'Jisha P', 'jishap@yopmail.com', '112233445556', 0, '$2y$12$wrt1anB.l19vMAecJLaZA.PfYCsWL7jZ41xkErdeh/UxqTOA09Wye', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-04-16 09:24:55', '2025-04-16 09:24:55'),
(71, 'customer', 'asdsd', 'sfdsfd@yopmail.com', '112233445523', 0, '$2y$12$4oCrfenybiOq9gXgj8f/i.vr1Q4m56niSQsI0MEX3DAIkJQLmcEji', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-04-16 10:04:03', '2025-04-16 10:16:33'),
(72, 'customer', 'Mohammed', 'mohammed@gmail.com', '971555347867', 0, '$2y$12$p8ffInu/2CbWqDh0ux9Sz.39ADmySkZziEznQRaUEPnZk9yOR6BSa', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-07-14 12:26:43', '2025-07-15 13:39:09'),
(73, 'customer', 'Mohammed', 'mohammed1@gmail.com', '971555347866', 0, '$2y$12$.r34LO8TBHbZnzPRAOMMJetwAw6rBZ/nzwOuiCA0s5xvBmoAZ/NHG', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-07-14 12:37:46', '2025-07-14 12:37:46'),
(74, 'customer', 'Mohammed', 'mohammed12@gmail.com', '971555347862', 0, '$2y$12$xnfvG/b6w0dtWPp29o9x3.Nf7Oc.icjdL7C9I5mJkOGE63o1VsOkS', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-07-14 12:39:12', '2025-07-14 12:39:12'),
(75, 'customer', 'Mohammed', 'mohammed123@gmail.com', '971555347863', 0, '$2y$12$nxtPM8PqrTkeK7tS1E7UPu/Jbb3BMVu2IG5fIVn44ZfvPmW1Tbv1G', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-07-14 12:41:21', '2025-07-14 12:41:21'),
(77, 'customer', 'test', 'mohammed1234@gmail.com', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'customer', 'mohammed', 'test@gmail.com', NULL, 0, '$2y$12$MWHaF0tA2MAtQuHB0z7eDO15X0qmanwQA3ftyXMMmFsxWZ97gjIDe', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-07-22 14:47:32', '2025-07-22 14:47:32'),
(84, 'customer', 'Mohammed', 'myname@gmail.com', '971555343434', 0, '$2y$12$mcUkY0zxFfEZ93Yl2BcgOO2Rh6eJ9EZlQOWBPngXCVuVa5WUVXvsa', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-07-23 18:05:38', '2025-07-23 18:05:38'),
(85, 'customer', 'Mohammed 1', 'mum@gmail.com', '97155565656', 0, '$2y$12$UOcWF38jcOxs/J0c/NUBtuNdQZUcI0zkwWMXjrsi0Mp8biBLjq9CC', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-07-23 18:08:19', '2025-07-23 18:08:19'),
(86, 'customer', 'Mohammed', 'johndoe@example.com', '971555347877', 0, '$2y$12$USufnzkk2DvL6EImWx5iSeBybq27EDvGk097qo8LtYVETnqCQo4oi', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2025-07-23 18:10:52', '2025-07-23 18:10:52');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_stock_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `product_stock_id`, `created_at`, `updated_at`) VALUES
(29, 68, 7, 5, '2025-03-24 08:01:06', '2025-03-24 08:01:06'),
(32, 68, 22, 48, '2025-03-24 08:03:03', '2025-03-24 08:03:03'),
(33, 71, 6, 4, '2025-04-16 10:26:16', '2025-04-16 10:26:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abilities`
--
ALTER TABLE `abilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `abilities_scope_index` (`scope`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_menus`
--
ALTER TABLE `admin_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_menu_items`
--
ALTER TABLE `admin_menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `app_translations`
--
ALTER TABLE `app_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_translations`
--
ALTER TABLE `banner_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banner_id` (`banner_id`),
  ADD KEY `image` (`image`),
  ADD KEY `mobile_image` (`mobile_image`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand_translations`
--
ALTER TABLE `brand_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_stock_id` (`product_stock_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`faq_category_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faq_categories_name_unique` (`name`);

--
-- Indexes for table `firebase_notifications`
--
ALTER TABLE `firebase_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `project_translations`
--
ALTER TABLE `project_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_lang_unique` (`project_id`,`lang`);

--
-- Indexes for table `request_accesses`
--
ALTER TABLE `request_accesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `role_translations`
--
ALTER TABLE `role_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_translations`
--
ALTER TABLE `service_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_user`
--
ALTER TABLE `shop_user`
  ADD PRIMARY KEY (`shop_id`,`user_id`),
  ADD KEY `shop_user_shop_id_index` (`shop_id`),
  ADD KEY `shop_user_user_id_index` (`user_id`);

--
-- Indexes for table `shop_users`
--
ALTER TABLE `shop_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_users_shop_id_foreign` (`shop_id`),
  ADD KEY `shop_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutorials`
--
ALTER TABLE `tutorials`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tutorials_slug_unique` (`slug`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_stock_id` (`product_stock_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abilities`
--
ALTER TABLE `abilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `admin_menus`
--
ALTER TABLE `admin_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_menu_items`
--
ALTER TABLE `admin_menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `app_translations`
--
ALTER TABLE `app_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner_translations`
--
ALTER TABLE `banner_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brand_translations`
--
ALTER TABLE `brand_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `firebase_notifications`
--
ALTER TABLE `firebase_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `project_translations`
--
ALTER TABLE `project_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `request_accesses`
--
ALTER TABLE `request_accesses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `role_translations`
--
ALTER TABLE `role_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `service_translations`
--
ALTER TABLE `service_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_users`
--
ALTER TABLE `shop_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tutorials`
--
ALTER TABLE `tutorials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_menu_items`
--
ALTER TABLE `admin_menu_items`
  ADD CONSTRAINT `admin_menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `admin_menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `banner_translations`
--
ALTER TABLE `banner_translations`
  ADD CONSTRAINT `banner_translations_ibfk_1` FOREIGN KEY (`banner_id`) REFERENCES `banners` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `banner_translations_ibfk_2` FOREIGN KEY (`image`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `banner_translations_ibfk_3` FOREIGN KEY (`mobile_image`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `brand_translations`
--
ALTER TABLE `brand_translations`
  ADD CONSTRAINT `brand_translations_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`product_stock_id`) REFERENCES `product_stocks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_ibfk_1` FOREIGN KEY (`faq_category_id`) REFERENCES `faq_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `projects` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `project_translations`
--
ALTER TABLE `project_translations`
  ADD CONSTRAINT `project_translations_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_translations`
--
ALTER TABLE `service_translations`
  ADD CONSTRAINT `service_translations_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_ibfk_2` FOREIGN KEY (`product_stock_id`) REFERENCES `product_stocks` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
