/*
 Navicat Premium Data Transfer

 Source Server         : XAMPP
 Source Server Type    : MySQL
 Source Server Version : 100413
 Source Host           : localhost:3306
 Source Schema         : simulasi_softsav

 Target Server Type    : MySQL
 Target Server Version : 100413
 File Encoding         : 65001

 Date: 12/08/2020 08:38:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account_type
-- ----------------------------
DROP TABLE IF EXISTS `account_type`;
CREATE TABLE `account_type`  (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `users` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `quiz` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `results` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `questions` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `account_name` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `setting` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `study_material` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `appointment` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`account_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account_type
-- ----------------------------
INSERT INTO `account_type` VALUES (1, 'Add,Edit,View,List,List_all,Myaccount,Remove', 'Attempt,Add,Edit,View,List,List_all,Remove', 'View,List,List_all,Remove', 'Add,Edit,View,list,List_all,Remove', 'Administrator', 'All', 'Add,Edit,View,List,List_all,Remove', 'List,List_all');
INSERT INTO `account_type` VALUES (2, 'Myaccount', 'Attempt,View,List', '', '', 'User', NULL, '', '');

-- ----------------------------
-- Table structure for appointment_request
-- ----------------------------
DROP TABLE IF EXISTS `appointment_request`;
CREATE TABLE `appointment_request`  (
  `appointment_id` int(11) NOT NULL AUTO_INCREMENT,
  `request_by` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `appointment_timing` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `appointment_time_zone` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Asia/Kolkata',
  `appointment_status` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Pending',
  PRIMARY KEY (`appointment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of appointment_request
-- ----------------------------
INSERT INTO `appointment_request` VALUES (2, 9, 1, '2017-08-30 14:53:57', 'Asia/Kolkata', 'Accepted');
INSERT INTO `appointment_request` VALUES (3, 1, 1, '2017-12-27 15:43:25', 'Asia/Kolkata', 'Accepted');
INSERT INTO `appointment_request` VALUES (4, 1, 1, '2019-03-18 13:18:40', 'Asia/Kolkata', 'Accepted');
INSERT INTO `appointment_request` VALUES (5, 5, 1, '2019-03-18 19:50:32', 'Asia/Kolkata', 'Accepted');

-- ----------------------------
-- Table structure for ci_sessions
-- ----------------------------
DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `timestamp` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for class_coment
-- ----------------------------
DROP TABLE IF EXISTS `class_coment`;
CREATE TABLE `class_coment`  (
  `content_id` int(11) NOT NULL AUTO_INCREMENT,
  `generated_time` int(11) NOT NULL,
  `content` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `content_by` int(11) NOT NULL,
  `published` int(11) NOT NULL DEFAULT 0,
  `class_id` int(11) NOT NULL,
  PRIMARY KEY (`content_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for class_gid
-- ----------------------------
DROP TABLE IF EXISTS `class_gid`;
CREATE TABLE `class_gid`  (
  `clgid` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `gid` int(11) NOT NULL,
  PRIMARY KEY (`clgid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for live_class
-- ----------------------------
DROP TABLE IF EXISTS `live_class`;
CREATE TABLE `live_class`  (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `initiated_by` int(11) NOT NULL,
  `initiated_time` int(11) NOT NULL,
  `closed_time` int(11) NOT NULL,
  `content` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for savsoft_add
-- ----------------------------
DROP TABLE IF EXISTS `savsoft_add`;
CREATE TABLE `savsoft_add`  (
  `add_id` int(11) NOT NULL AUTO_INCREMENT,
  `advertisement_code` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `banner` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `banner_link` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `position` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `add_status` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`add_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of savsoft_add
-- ----------------------------
INSERT INTO `savsoft_add` VALUES (1, '', '1501084226.jpg', 'https://savsoftquiz.com', 'Top', 'Inactive');
INSERT INTO `savsoft_add` VALUES (2, '	', '1501084206.jpg', 'https://savsoftquiz.com', 'Bottom', 'Active');
INSERT INTO `savsoft_add` VALUES (3, '', '1501084197.jpg', 'https://savsoftquiz.com', 'Center_Result', 'Active');
INSERT INTO `savsoft_add` VALUES (4, '', '1501084258.jpg', 'https://savsoftquiz.com', 'During_Quiz', 'Active');

-- ----------------------------
-- Table structure for savsoft_answers
-- ----------------------------
DROP TABLE IF EXISTS `savsoft_answers`;
CREATE TABLE `savsoft_answers`  (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `qid` int(11) NOT NULL,
  `q_option` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` int(11) NOT NULL,
  `score_u` float NOT NULL DEFAULT 0,
  `rid` int(11) NOT NULL,
  `qn` int(11) NOT NULL,
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34382 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of savsoft_answers
-- ----------------------------
INSERT INTO `savsoft_answers` VALUES (8, 79, '300', 1, 1, 1, 0);
INSERT INTO `savsoft_answers` VALUES (9, 80, '304', 1, 1, 1, 0);
INSERT INTO `savsoft_answers` VALUES (10, 81, '317', 1, 0.5, 1, 0);
INSERT INTO `savsoft_answers` VALUES (11, 81, '319', 1, 0.5, 1, 0);
INSERT INTO `savsoft_answers` VALUES (15, 81, '317', 1, 0.5, 3, 0);
INSERT INTO `savsoft_answers` VALUES (16, 79, '302', 1, 0, 3, 0);
INSERT INTO `savsoft_answers` VALUES (24, 79, '300', 1, 1, 4, 0);
INSERT INTO `savsoft_answers` VALUES (25, 80, '304', 1, 1, 4, 0);
INSERT INTO `savsoft_answers` VALUES (26, 81, '317', 1, 0.5, 4, 0);
INSERT INTO `savsoft_answers` VALUES (27, 81, '319', 1, 0.5, 4, 0);
INSERT INTO `savsoft_answers` VALUES (34, 79, '300', 1, 1, 5, 0);
INSERT INTO `savsoft_answers` VALUES (35, 80, '305', 1, 0, 5, 0);
INSERT INTO `savsoft_answers` VALUES (36, 81, '317', 1, 0.5, 5, 0);
INSERT INTO `savsoft_answers` VALUES (43, 79, '300', 1, 1, 6, 0);
INSERT INTO `savsoft_answers` VALUES (44, 80, '305', 1, 0, 6, 0);
INSERT INTO `savsoft_answers` VALUES (45, 81, '317', 1, 0.5, 6, 0);
INSERT INTO `savsoft_answers` VALUES (52, 79, '301', 1, 0, 7, 0);
INSERT INTO `savsoft_answers` VALUES (53, 80, '305', 1, 0, 7, 0);
INSERT INTO `savsoft_answers` VALUES (54, 81, '318', 1, 0, 7, 0);
INSERT INTO `savsoft_answers` VALUES (56, 18, '345', 7, 1, 1, 0);
INSERT INTO `savsoft_answers` VALUES (57, 19, '341', 7, 0, 1, 0);
INSERT INTO `savsoft_answers` VALUES (58, 20, '335', 7, 1, 1, 0);
INSERT INTO `savsoft_answers` VALUES (59, 21, '330', 7, 1, 1, 0);
INSERT INTO `savsoft_answers` VALUES (60, 22, '325', 7, 1, 1, 0);
INSERT INTO `savsoft_answers` VALUES (61, 23, '320', 7, 1, 1, 0);
INSERT INTO `savsoft_answers` VALUES (62, 24, '315', 7, 1, 1, 0);
INSERT INTO `savsoft_answers` VALUES (63, 25, '310', 7, 1, 1, 0);
INSERT INTO `savsoft_answers` VALUES (64, 26, '285', 7, 1, 1, 0);
INSERT INTO `savsoft_answers` VALUES (65, 27, '290', 7, 1, 1, 0);
INSERT INTO `savsoft_answers` VALUES (66, 81, '318', 1, 0, 8, 0);
INSERT INTO `savsoft_answers` VALUES (106, 79, '300', 1, 1, 9, 0);
INSERT INTO `savsoft_answers` VALUES (107, 81, '317', 1, 0.5, 9, 0);
INSERT INTO `savsoft_answers` VALUES (114, 79, '301', 5, 0, 10, 0);
INSERT INTO `savsoft_answers` VALUES (115, 80, '306', 5, 0, 10, 0);
INSERT INTO `savsoft_answers` VALUES (116, 81, '318', 5, 0, 10, 0);
INSERT INTO `savsoft_answers` VALUES (118, 79, '303', 1, 0, 11, 0);
INSERT INTO `savsoft_answers` VALUES (120, 79, '303', 1, 0, 12, 0);
INSERT INTO `savsoft_answers` VALUES (123, 18, '345', 10, 1, 2, 0);
INSERT INTO `savsoft_answers` VALUES (124, 19, '340', 10, 1, 2, 0);
INSERT INTO `savsoft_answers` VALUES (125, 20, '337', 10, 0, 2, 0);
INSERT INTO `savsoft_answers` VALUES (126, 21, '330', 10, 1, 2, 0);
INSERT INTO `savsoft_answers` VALUES (127, 22, '325', 10, 1, 2, 0);
INSERT INTO `savsoft_answers` VALUES (128, 23, '320', 10, 1, 2, 0);
INSERT INTO `savsoft_answers` VALUES (129, 24, '315', 10, 1, 2, 0);
INSERT INTO `savsoft_answers` VALUES (130, 25, '310', 10, 1, 2, 0);
INSERT INTO `savsoft_answers` VALUES (131, 26, '285', 10, 1, 2, 0);
INSERT INTO `savsoft_answers` VALUES (132, 27, '290', 10, 1, 2, 0);
INSERT INTO `savsoft_answers` VALUES (134, 18, '345', 10, 1, 3, 0);
INSERT INTO `savsoft_answers` VALUES (137, 81, '318', 1, 0, 14, 0);
INSERT INTO `savsoft_answers` VALUES (138, 79, '302', 1, 0, 14, 0);
INSERT INTO `savsoft_answers` VALUES (139, 81, '316', 1, 0, 15, 0);
INSERT INTO `savsoft_answers` VALUES (143, 79, '300', 1, 1, 15, 1);
INSERT INTO `savsoft_answers` VALUES (144, 81, '317', 1, 0.5, 16, 0);
INSERT INTO `savsoft_answers` VALUES (145, 81, '319', 1, 0.5, 16, 0);
INSERT INTO `savsoft_answers` VALUES (146, 79, '301', 13, 0, 17, 0);
INSERT INTO `savsoft_answers` VALUES (147, 80, '305', 13, 0, 17, 1);
INSERT INTO `savsoft_answers` VALUES (148, 79, '301', 1, 0, 18, 0);
INSERT INTO `savsoft_answers` VALUES (150, 80, '306', 1, 0, 18, 1);
INSERT INTO `savsoft_answers` VALUES (192, 18, '345', 10, 1, 4, 0);
INSERT INTO `savsoft_answers` VALUES (193, 19, '350', 10, 1, 4, 0);
INSERT INTO `savsoft_answers` VALUES (194, 20, '335', 10, 1, 4, 0);
INSERT INTO `savsoft_answers` VALUES (195, 21, '330', 10, 1, 4, 0);
INSERT INTO `savsoft_answers` VALUES (196, 22, '360', 10, 1, 4, 0);
INSERT INTO `savsoft_answers` VALUES (197, 23, '365', 10, 1, 4, 0);
INSERT INTO `savsoft_answers` VALUES (198, 24, '315', 10, 1, 4, 0);
INSERT INTO `savsoft_answers` VALUES (199, 25, '310', 10, 1, 4, 0);
INSERT INTO `savsoft_answers` VALUES (200, 26, '285', 10, 1, 4, 0);
INSERT INTO `savsoft_answers` VALUES (201, 27, '290', 10, 1, 4, 0);
INSERT INTO `savsoft_answers` VALUES (257, 18, '345', 10, 1, 5, 0);
INSERT INTO `savsoft_answers` VALUES (258, 19, '351', 10, 0, 5, 0);
INSERT INTO `savsoft_answers` VALUES (259, 20, '336', 10, 0, 5, 0);
INSERT INTO `savsoft_answers` VALUES (260, 21, '332', 10, 0, 5, 0);
INSERT INTO `savsoft_answers` VALUES (261, 22, '360', 10, 1, 5, 0);
INSERT INTO `savsoft_answers` VALUES (262, 23, '365', 10, 1, 5, 0);
INSERT INTO `savsoft_answers` VALUES (263, 24, '315', 10, 1, 5, 0);
INSERT INTO `savsoft_answers` VALUES (264, 25, '310', 10, 1, 5, 0);
INSERT INTO `savsoft_answers` VALUES (265, 26, '285', 10, 1, 5, 0);
INSERT INTO `savsoft_answers` VALUES (266, 27, '290', 10, 1, 5, 0);
INSERT INTO `savsoft_answers` VALUES (453, 28, '376', 19, 1, 9, 0);
INSERT INTO `savsoft_answers` VALUES (454, 18, '347', 19, 0, 9, 0);
INSERT INTO `savsoft_answers` VALUES (455, 19, '351', 19, 0, 9, 0);
INSERT INTO `savsoft_answers` VALUES (458, 28, '376', 20, 1, 10, 0);
INSERT INTO `savsoft_answers` VALUES (459, 19, '353', 20, 0, 10, 0);
INSERT INTO `savsoft_answers` VALUES (2170, 18, '492', 22, 1, 16, 0);
INSERT INTO `savsoft_answers` VALUES (2171, 19, '385', 22, 1, 16, 0);
INSERT INTO `savsoft_answers` VALUES (2172, 20, '498', 22, 1, 16, 0);
INSERT INTO `savsoft_answers` VALUES (2173, 21, '504', 22, 1, 16, 0);
INSERT INTO `savsoft_answers` VALUES (2174, 22, '360', 22, 1, 16, 0);
INSERT INTO `savsoft_answers` VALUES (2175, 23, '507', 22, 1, 16, 0);
INSERT INTO `savsoft_answers` VALUES (2176, 24, '514', 22, 0, 16, 0);
INSERT INTO `savsoft_answers` VALUES (2177, 25, '310', 22, 1, 16, 0);
INSERT INTO `savsoft_answers` VALUES (2178, 26, '518', 22, 1, 16, 0);
INSERT INTO `savsoft_answers` VALUES (2179, 27, '524', 22, 1, 16, 0);
INSERT INTO `savsoft_answers` VALUES (2180, 30, '394', 22, 1, 16, 0);
INSERT INTO `savsoft_answers` VALUES (2181, 31, '397', 22, 1, 16, 0);
INSERT INTO `savsoft_answers` VALUES (2182, 32, '400', 22, 1, 16, 0);
INSERT INTO `savsoft_answers` VALUES (2183, 33, '527', 22, 1, 16, 0);
INSERT INTO `savsoft_answers` VALUES (2184, 34, '413', 22, 1, 16, 0);
INSERT INTO `savsoft_answers` VALUES (2185, 36, '421', 22, 1, 16, 0);
INSERT INTO `savsoft_answers` VALUES (2186, 37, '428', 22, 1, 16, 0);
INSERT INTO `savsoft_answers` VALUES (2187, 38, '433', 22, 1, 16, 0);
INSERT INTO `savsoft_answers` VALUES (2188, 39, '453', 22, 1, 16, 0);
INSERT INTO `savsoft_answers` VALUES (2189, 40, '442', 22, 1, 16, 0);
INSERT INTO `savsoft_answers` VALUES (2190, 41, '459', 22, 1, 16, 0);
INSERT INTO `savsoft_answers` VALUES (2191, 42, '460', 22, 1, 16, 0);
INSERT INTO `savsoft_answers` VALUES (2192, 43, '469', 22, 1, 16, 0);
INSERT INTO `savsoft_answers` VALUES (2193, 44, '470', 22, 1, 16, 0);
INSERT INTO `savsoft_answers` VALUES (2194, 45, '479', 22, 1, 16, 0);
INSERT INTO `savsoft_answers` VALUES (2195, 46, '484', 22, 1, 16, 0);
INSERT INTO `savsoft_answers` VALUES (2196, 47, '488', 22, 1, 16, 0);
INSERT INTO `savsoft_answers` VALUES (2566, 18, '492', 21, 1, 17, 0);
INSERT INTO `savsoft_answers` VALUES (2567, 19, '386', 21, 0, 17, 0);
INSERT INTO `savsoft_answers` VALUES (2568, 20, '499', 21, 0, 17, 0);
INSERT INTO `savsoft_answers` VALUES (2569, 21, '501', 21, 0, 17, 0);
INSERT INTO `savsoft_answers` VALUES (2570, 22, '363', 21, 0, 17, 0);
INSERT INTO `savsoft_answers` VALUES (2571, 23, '507', 21, 1, 17, 0);
INSERT INTO `savsoft_answers` VALUES (2572, 24, '511', 21, 0, 17, 0);
INSERT INTO `savsoft_answers` VALUES (2573, 25, '311', 21, 0, 17, 0);
INSERT INTO `savsoft_answers` VALUES (2574, 26, '519', 21, 0, 17, 0);
INSERT INTO `savsoft_answers` VALUES (2575, 27, '523', 21, 0, 17, 0);
INSERT INTO `savsoft_answers` VALUES (2576, 30, '394', 21, 1, 17, 0);
INSERT INTO `savsoft_answers` VALUES (2577, 31, '397', 21, 1, 17, 0);
INSERT INTO `savsoft_answers` VALUES (2578, 32, '400', 21, 1, 17, 0);
INSERT INTO `savsoft_answers` VALUES (2579, 33, '527', 21, 1, 17, 0);
INSERT INTO `savsoft_answers` VALUES (2580, 34, '412', 21, 0, 17, 0);
INSERT INTO `savsoft_answers` VALUES (2581, 36, '421', 21, 1, 17, 0);
INSERT INTO `savsoft_answers` VALUES (2582, 37, '427', 21, 0, 17, 0);
INSERT INTO `savsoft_answers` VALUES (2583, 38, '431', 21, 0, 17, 0);
INSERT INTO `savsoft_answers` VALUES (2584, 39, '453', 21, 1, 17, 0);
INSERT INTO `savsoft_answers` VALUES (2585, 40, '444', 21, 0, 17, 0);
INSERT INTO `savsoft_answers` VALUES (2586, 41, '457', 21, 0, 17, 0);
INSERT INTO `savsoft_answers` VALUES (2587, 42, '463', 21, 0, 17, 0);
INSERT INTO `savsoft_answers` VALUES (2588, 43, '468', 21, 0, 17, 0);
INSERT INTO `savsoft_answers` VALUES (2589, 47, '485', 21, 0, 17, 0);
INSERT INTO `savsoft_answers` VALUES (4975, 18, '492', 26, 1, 20, 0);
INSERT INTO `savsoft_answers` VALUES (4976, 19, '385', 26, 1, 20, 0);
INSERT INTO `savsoft_answers` VALUES (4977, 20, '497', 26, 0, 20, 0);
INSERT INTO `savsoft_answers` VALUES (4978, 21, '503', 26, 0, 20, 0);
INSERT INTO `savsoft_answers` VALUES (4979, 22, '363', 26, 0, 20, 0);
INSERT INTO `savsoft_answers` VALUES (4980, 23, '507', 26, 1, 20, 0);
INSERT INTO `savsoft_answers` VALUES (4981, 24, '512', 26, 1, 20, 0);
INSERT INTO `savsoft_answers` VALUES (4982, 25, '310', 26, 1, 20, 0);
INSERT INTO `savsoft_answers` VALUES (4983, 26, '515', 26, 0, 20, 0);
INSERT INTO `savsoft_answers` VALUES (4984, 27, '522', 26, 0, 20, 0);
INSERT INTO `savsoft_answers` VALUES (4985, 30, '394', 26, 1, 20, 0);
INSERT INTO `savsoft_answers` VALUES (4986, 31, '397', 26, 1, 20, 0);
INSERT INTO `savsoft_answers` VALUES (4987, 32, '400', 26, 1, 20, 0);
INSERT INTO `savsoft_answers` VALUES (4988, 33, '528', 26, 0, 20, 0);
INSERT INTO `savsoft_answers` VALUES (4989, 34, '410', 26, 0, 20, 0);
INSERT INTO `savsoft_answers` VALUES (4990, 36, '421', 26, 1, 20, 0);
INSERT INTO `savsoft_answers` VALUES (4991, 37, '427', 26, 0, 20, 0);
INSERT INTO `savsoft_answers` VALUES (4992, 38, '433', 26, 1, 20, 0);
INSERT INTO `savsoft_answers` VALUES (4993, 39, '454', 26, 0, 20, 0);
INSERT INTO `savsoft_answers` VALUES (4994, 40, '442', 26, 1, 20, 0);
INSERT INTO `savsoft_answers` VALUES (4995, 41, '459', 26, 1, 20, 0);
INSERT INTO `savsoft_answers` VALUES (4996, 42, '460', 26, 1, 20, 0);
INSERT INTO `savsoft_answers` VALUES (4997, 43, '469', 26, 1, 20, 0);
INSERT INTO `savsoft_answers` VALUES (4998, 44, '470', 26, 1, 20, 0);
INSERT INTO `savsoft_answers` VALUES (4999, 45, '476', 26, 0, 20, 0);
INSERT INTO `savsoft_answers` VALUES (5000, 46, '480', 26, 0, 20, 0);
INSERT INTO `savsoft_answers` VALUES (5001, 47, '487', 26, 0, 20, 0);
INSERT INTO `savsoft_answers` VALUES (7104, 18, '491', 29, 0, 22, 0);
INSERT INTO `savsoft_answers` VALUES (7105, 19, '385', 29, 1, 22, 0);
INSERT INTO `savsoft_answers` VALUES (7106, 20, '496', 29, 0, 22, 0);
INSERT INTO `savsoft_answers` VALUES (7107, 21, '501', 29, 0, 22, 0);
INSERT INTO `savsoft_answers` VALUES (7108, 22, '363', 29, 0, 22, 0);
INSERT INTO `savsoft_answers` VALUES (7109, 23, '507', 29, 1, 22, 0);
INSERT INTO `savsoft_answers` VALUES (7110, 24, '512', 29, 1, 22, 0);
INSERT INTO `savsoft_answers` VALUES (7111, 25, '310', 29, 1, 22, 0);
INSERT INTO `savsoft_answers` VALUES (7112, 26, '518', 29, 1, 22, 0);
INSERT INTO `savsoft_answers` VALUES (7113, 27, '523', 29, 0, 22, 0);
INSERT INTO `savsoft_answers` VALUES (7114, 30, '394', 29, 1, 22, 0);
INSERT INTO `savsoft_answers` VALUES (7115, 31, '397', 29, 1, 22, 0);
INSERT INTO `savsoft_answers` VALUES (7116, 32, '404', 29, 0, 22, 0);
INSERT INTO `savsoft_answers` VALUES (7117, 33, '528', 29, 0, 22, 0);
INSERT INTO `savsoft_answers` VALUES (7118, 34, '412', 29, 0, 22, 0);
INSERT INTO `savsoft_answers` VALUES (7119, 36, '423', 29, 0, 22, 0);
INSERT INTO `savsoft_answers` VALUES (7120, 37, '427', 29, 0, 22, 0);
INSERT INTO `savsoft_answers` VALUES (7121, 38, '431', 29, 0, 22, 0);
INSERT INTO `savsoft_answers` VALUES (7122, 39, '453', 29, 1, 22, 0);
INSERT INTO `savsoft_answers` VALUES (7123, 40, '442', 29, 1, 22, 0);
INSERT INTO `savsoft_answers` VALUES (7124, 41, '459', 29, 1, 22, 0);
INSERT INTO `savsoft_answers` VALUES (7125, 42, '460', 29, 1, 22, 0);
INSERT INTO `savsoft_answers` VALUES (7126, 43, '469', 29, 1, 22, 0);
INSERT INTO `savsoft_answers` VALUES (7127, 44, '470', 29, 1, 22, 0);
INSERT INTO `savsoft_answers` VALUES (7128, 45, '479', 29, 1, 22, 0);
INSERT INTO `savsoft_answers` VALUES (7129, 46, '481', 29, 0, 22, 0);
INSERT INTO `savsoft_answers` VALUES (7130, 47, '488', 29, 1, 22, 0);
INSERT INTO `savsoft_answers` VALUES (7862, 18, '492', 28, 1, 24, 0);
INSERT INTO `savsoft_answers` VALUES (7863, 19, '388', 28, 0, 24, 0);
INSERT INTO `savsoft_answers` VALUES (7864, 20, '498', 28, 1, 24, 0);
INSERT INTO `savsoft_answers` VALUES (7865, 21, '503', 28, 0, 24, 0);
INSERT INTO `savsoft_answers` VALUES (7866, 22, '364', 28, 0, 24, 0);
INSERT INTO `savsoft_answers` VALUES (7867, 23, '507', 28, 1, 24, 0);
INSERT INTO `savsoft_answers` VALUES (7868, 24, '513', 28, 0, 24, 0);
INSERT INTO `savsoft_answers` VALUES (7869, 25, '310', 28, 1, 24, 0);
INSERT INTO `savsoft_answers` VALUES (7870, 26, '515', 28, 0, 24, 0);
INSERT INTO `savsoft_answers` VALUES (7871, 27, '524', 28, 1, 24, 0);
INSERT INTO `savsoft_answers` VALUES (7872, 30, '390', 28, 0, 24, 0);
INSERT INTO `savsoft_answers` VALUES (7873, 31, '397', 28, 1, 24, 0);
INSERT INTO `savsoft_answers` VALUES (7874, 32, '400', 28, 1, 24, 0);
INSERT INTO `savsoft_answers` VALUES (7875, 33, '527', 28, 1, 24, 0);
INSERT INTO `savsoft_answers` VALUES (7876, 34, '412', 28, 0, 24, 0);
INSERT INTO `savsoft_answers` VALUES (7877, 36, '423', 28, 0, 24, 0);
INSERT INTO `savsoft_answers` VALUES (7878, 37, '427', 28, 0, 24, 0);
INSERT INTO `savsoft_answers` VALUES (7879, 38, '431', 28, 0, 24, 0);
INSERT INTO `savsoft_answers` VALUES (7880, 39, '453', 28, 1, 24, 0);
INSERT INTO `savsoft_answers` VALUES (7881, 40, '442', 28, 1, 24, 0);
INSERT INTO `savsoft_answers` VALUES (7882, 41, '459', 28, 1, 24, 0);
INSERT INTO `savsoft_answers` VALUES (7883, 42, '462', 28, 0, 24, 0);
INSERT INTO `savsoft_answers` VALUES (7884, 43, '468', 28, 0, 24, 0);
INSERT INTO `savsoft_answers` VALUES (7885, 44, '470', 28, 1, 24, 0);
INSERT INTO `savsoft_answers` VALUES (7886, 45, '479', 28, 1, 24, 0);
INSERT INTO `savsoft_answers` VALUES (7887, 46, '484', 28, 1, 24, 0);
INSERT INTO `savsoft_answers` VALUES (7888, 47, '486', 28, 0, 24, 0);
INSERT INTO `savsoft_answers` VALUES (8339, 18, '491', 35, 0, 25, 0);
INSERT INTO `savsoft_answers` VALUES (8340, 19, '385', 35, 1, 25, 0);
INSERT INTO `savsoft_answers` VALUES (8341, 20, '498', 35, 1, 25, 0);
INSERT INTO `savsoft_answers` VALUES (8342, 21, '501', 35, 0, 25, 0);
INSERT INTO `savsoft_answers` VALUES (8343, 22, '363', 35, 0, 25, 0);
INSERT INTO `savsoft_answers` VALUES (8344, 23, '505', 35, 0, 25, 0);
INSERT INTO `savsoft_answers` VALUES (8345, 24, '512', 35, 1, 25, 0);
INSERT INTO `savsoft_answers` VALUES (8346, 25, '313', 35, 0, 25, 0);
INSERT INTO `savsoft_answers` VALUES (8347, 26, '516', 35, 0, 25, 0);
INSERT INTO `savsoft_answers` VALUES (8348, 27, '524', 35, 1, 25, 0);
INSERT INTO `savsoft_answers` VALUES (8349, 30, '394', 35, 1, 25, 0);
INSERT INTO `savsoft_answers` VALUES (8350, 31, '395', 35, 0, 25, 0);
INSERT INTO `savsoft_answers` VALUES (8351, 32, '401', 35, 0, 25, 0);
INSERT INTO `savsoft_answers` VALUES (8352, 33, '529', 35, 0, 25, 0);
INSERT INTO `savsoft_answers` VALUES (8353, 34, '413', 35, 1, 25, 0);
INSERT INTO `savsoft_answers` VALUES (8354, 36, '422', 35, 0, 25, 0);
INSERT INTO `savsoft_answers` VALUES (8355, 37, '427', 35, 0, 25, 0);
INSERT INTO `savsoft_answers` VALUES (8356, 38, '432', 35, 0, 25, 0);
INSERT INTO `savsoft_answers` VALUES (8357, 39, '452', 35, 0, 25, 0);
INSERT INTO `savsoft_answers` VALUES (8358, 40, '442', 35, 1, 25, 0);
INSERT INTO `savsoft_answers` VALUES (8359, 41, '457', 35, 0, 25, 0);
INSERT INTO `savsoft_answers` VALUES (8360, 42, '462', 35, 0, 25, 0);
INSERT INTO `savsoft_answers` VALUES (8361, 43, '467', 35, 0, 25, 0);
INSERT INTO `savsoft_answers` VALUES (8362, 44, '472', 35, 0, 25, 0);
INSERT INTO `savsoft_answers` VALUES (8363, 45, '476', 35, 0, 25, 0);
INSERT INTO `savsoft_answers` VALUES (8364, 46, '481', 35, 0, 25, 0);
INSERT INTO `savsoft_answers` VALUES (8365, 47, '487', 35, 0, 25, 0);
INSERT INTO `savsoft_answers` VALUES (8744, 18, '490', 37, 0, 26, 0);
INSERT INTO `savsoft_answers` VALUES (8745, 19, '387', 37, 0, 26, 0);
INSERT INTO `savsoft_answers` VALUES (8746, 20, '498', 37, 1, 26, 0);
INSERT INTO `savsoft_answers` VALUES (8747, 21, '501', 37, 0, 26, 0);
INSERT INTO `savsoft_answers` VALUES (8748, 22, '363', 37, 0, 26, 0);
INSERT INTO `savsoft_answers` VALUES (8749, 23, '507', 37, 1, 26, 0);
INSERT INTO `savsoft_answers` VALUES (8750, 24, '512', 37, 1, 26, 0);
INSERT INTO `savsoft_answers` VALUES (8751, 25, '310', 37, 1, 26, 0);
INSERT INTO `savsoft_answers` VALUES (8752, 26, '515', 37, 0, 26, 0);
INSERT INTO `savsoft_answers` VALUES (8753, 27, '524', 37, 1, 26, 0);
INSERT INTO `savsoft_answers` VALUES (8754, 30, '391', 37, 0, 26, 0);
INSERT INTO `savsoft_answers` VALUES (8755, 31, '399', 37, 0, 26, 0);
INSERT INTO `savsoft_answers` VALUES (8756, 32, '404', 37, 0, 26, 0);
INSERT INTO `savsoft_answers` VALUES (8757, 33, '527', 37, 1, 26, 0);
INSERT INTO `savsoft_answers` VALUES (8758, 34, '412', 37, 0, 26, 0);
INSERT INTO `savsoft_answers` VALUES (8759, 36, '421', 37, 1, 26, 0);
INSERT INTO `savsoft_answers` VALUES (8760, 37, '429', 37, 0, 26, 0);
INSERT INTO `savsoft_answers` VALUES (8761, 38, '430', 37, 0, 26, 0);
INSERT INTO `savsoft_answers` VALUES (8762, 39, '453', 37, 1, 26, 0);
INSERT INTO `savsoft_answers` VALUES (8763, 40, '441', 37, 0, 26, 0);
INSERT INTO `savsoft_answers` VALUES (8764, 41, '457', 37, 0, 26, 0);
INSERT INTO `savsoft_answers` VALUES (8765, 42, '460', 37, 1, 26, 0);
INSERT INTO `savsoft_answers` VALUES (8766, 43, '469', 37, 1, 26, 0);
INSERT INTO `savsoft_answers` VALUES (8767, 44, '471', 37, 0, 26, 0);
INSERT INTO `savsoft_answers` VALUES (8768, 45, '476', 37, 0, 26, 0);
INSERT INTO `savsoft_answers` VALUES (8769, 46, '483', 37, 0, 26, 0);
INSERT INTO `savsoft_answers` VALUES (8770, 47, '487', 37, 0, 26, 0);
INSERT INTO `savsoft_answers` VALUES (9373, 18, '492', 38, 1, 27, 0);
INSERT INTO `savsoft_answers` VALUES (9374, 19, '388', 38, 0, 27, 0);
INSERT INTO `savsoft_answers` VALUES (9375, 20, '498', 38, 1, 27, 0);
INSERT INTO `savsoft_answers` VALUES (9376, 21, '503', 38, 0, 27, 0);
INSERT INTO `savsoft_answers` VALUES (9377, 22, '363', 38, 0, 27, 0);
INSERT INTO `savsoft_answers` VALUES (9378, 23, '509', 38, 0, 27, 0);
INSERT INTO `savsoft_answers` VALUES (9379, 24, '513', 38, 0, 27, 0);
INSERT INTO `savsoft_answers` VALUES (9380, 25, '310', 38, 1, 27, 0);
INSERT INTO `savsoft_answers` VALUES (9381, 26, '517', 38, 0, 27, 0);
INSERT INTO `savsoft_answers` VALUES (9382, 27, '521', 38, 0, 27, 0);
INSERT INTO `savsoft_answers` VALUES (9383, 30, '394', 38, 1, 27, 0);
INSERT INTO `savsoft_answers` VALUES (9384, 31, '397', 38, 1, 27, 0);
INSERT INTO `savsoft_answers` VALUES (9385, 32, '400', 38, 1, 27, 0);
INSERT INTO `savsoft_answers` VALUES (9386, 33, '528', 38, 0, 27, 0);
INSERT INTO `savsoft_answers` VALUES (9387, 34, '413', 38, 1, 27, 0);
INSERT INTO `savsoft_answers` VALUES (9388, 36, '421', 38, 1, 27, 0);
INSERT INTO `savsoft_answers` VALUES (9389, 37, '427', 38, 0, 27, 0);
INSERT INTO `savsoft_answers` VALUES (9390, 38, '434', 38, 0, 27, 0);
INSERT INTO `savsoft_answers` VALUES (9391, 39, '453', 38, 1, 27, 0);
INSERT INTO `savsoft_answers` VALUES (9392, 40, '442', 38, 1, 27, 0);
INSERT INTO `savsoft_answers` VALUES (9393, 41, '459', 38, 1, 27, 0);
INSERT INTO `savsoft_answers` VALUES (9394, 42, '462', 38, 0, 27, 0);
INSERT INTO `savsoft_answers` VALUES (9395, 43, '469', 38, 1, 27, 0);
INSERT INTO `savsoft_answers` VALUES (9396, 44, '473', 38, 0, 27, 0);
INSERT INTO `savsoft_answers` VALUES (9397, 45, '479', 38, 1, 27, 0);
INSERT INTO `savsoft_answers` VALUES (9398, 46, '483', 38, 0, 27, 0);
INSERT INTO `savsoft_answers` VALUES (9399, 47, '488', 38, 1, 27, 0);
INSERT INTO `savsoft_answers` VALUES (10629, 18, '492', 43, 1, 28, 0);
INSERT INTO `savsoft_answers` VALUES (10630, 19, '386', 43, 0, 28, 0);
INSERT INTO `savsoft_answers` VALUES (10631, 20, '499', 43, 0, 28, 0);
INSERT INTO `savsoft_answers` VALUES (10632, 21, '501', 43, 0, 28, 0);
INSERT INTO `savsoft_answers` VALUES (10633, 22, '363', 43, 0, 28, 0);
INSERT INTO `savsoft_answers` VALUES (10634, 23, '507', 43, 1, 28, 0);
INSERT INTO `savsoft_answers` VALUES (10635, 24, '512', 43, 1, 28, 0);
INSERT INTO `savsoft_answers` VALUES (10636, 25, '310', 43, 1, 28, 0);
INSERT INTO `savsoft_answers` VALUES (10637, 26, '516', 43, 0, 28, 0);
INSERT INTO `savsoft_answers` VALUES (10638, 27, '523', 43, 0, 28, 0);
INSERT INTO `savsoft_answers` VALUES (10639, 30, '394', 43, 1, 28, 0);
INSERT INTO `savsoft_answers` VALUES (10640, 31, '397', 43, 1, 28, 0);
INSERT INTO `savsoft_answers` VALUES (10641, 32, '402', 43, 0, 28, 0);
INSERT INTO `savsoft_answers` VALUES (10642, 33, '525', 43, 0, 28, 0);
INSERT INTO `savsoft_answers` VALUES (10643, 34, '413', 43, 1, 28, 0);
INSERT INTO `savsoft_answers` VALUES (10644, 36, '422', 43, 0, 28, 0);
INSERT INTO `savsoft_answers` VALUES (10645, 37, '426', 43, 0, 28, 0);
INSERT INTO `savsoft_answers` VALUES (10646, 38, '430', 43, 0, 28, 0);
INSERT INTO `savsoft_answers` VALUES (10647, 39, '453', 43, 1, 28, 0);
INSERT INTO `savsoft_answers` VALUES (10648, 40, '441', 43, 0, 28, 0);
INSERT INTO `savsoft_answers` VALUES (10649, 41, '456', 43, 0, 28, 0);
INSERT INTO `savsoft_answers` VALUES (10650, 42, '462', 43, 0, 28, 0);
INSERT INTO `savsoft_answers` VALUES (10651, 43, '466', 43, 0, 28, 0);
INSERT INTO `savsoft_answers` VALUES (10652, 44, '473', 43, 0, 28, 0);
INSERT INTO `savsoft_answers` VALUES (10653, 45, '476', 43, 0, 28, 0);
INSERT INTO `savsoft_answers` VALUES (10654, 46, '481', 43, 0, 28, 0);
INSERT INTO `savsoft_answers` VALUES (10655, 47, '485', 43, 0, 28, 0);
INSERT INTO `savsoft_answers` VALUES (12396, 18, '492', 50, 1, 29, 0);
INSERT INTO `savsoft_answers` VALUES (12397, 19, '389', 50, 0, 29, 0);
INSERT INTO `savsoft_answers` VALUES (12398, 20, '497', 50, 0, 29, 0);
INSERT INTO `savsoft_answers` VALUES (12399, 21, '501', 50, 0, 29, 0);
INSERT INTO `savsoft_answers` VALUES (12400, 22, '363', 50, 0, 29, 0);
INSERT INTO `savsoft_answers` VALUES (12401, 23, '507', 50, 1, 29, 0);
INSERT INTO `savsoft_answers` VALUES (12402, 24, '512', 50, 1, 29, 0);
INSERT INTO `savsoft_answers` VALUES (12403, 25, '310', 50, 1, 29, 0);
INSERT INTO `savsoft_answers` VALUES (12404, 26, '515', 50, 0, 29, 0);
INSERT INTO `savsoft_answers` VALUES (12405, 27, '523', 50, 0, 29, 0);
INSERT INTO `savsoft_answers` VALUES (12406, 30, '394', 50, 1, 29, 0);
INSERT INTO `savsoft_answers` VALUES (12407, 31, '397', 50, 1, 29, 0);
INSERT INTO `savsoft_answers` VALUES (12408, 32, '400', 50, 1, 29, 0);
INSERT INTO `savsoft_answers` VALUES (12409, 33, '527', 50, 1, 29, 0);
INSERT INTO `savsoft_answers` VALUES (12410, 34, '412', 50, 0, 29, 0);
INSERT INTO `savsoft_answers` VALUES (12411, 36, '423', 50, 0, 29, 0);
INSERT INTO `savsoft_answers` VALUES (12412, 37, '427', 50, 0, 29, 0);
INSERT INTO `savsoft_answers` VALUES (12413, 38, '431', 50, 0, 29, 0);
INSERT INTO `savsoft_answers` VALUES (12414, 39, '453', 50, 1, 29, 0);
INSERT INTO `savsoft_answers` VALUES (12415, 40, '442', 50, 1, 29, 0);
INSERT INTO `savsoft_answers` VALUES (12416, 44, '470', 50, 1, 29, 0);
INSERT INTO `savsoft_answers` VALUES (12417, 45, '479', 50, 1, 29, 0);
INSERT INTO `savsoft_answers` VALUES (12418, 46, '480', 50, 0, 29, 0);
INSERT INTO `savsoft_answers` VALUES (12833, 18, '492', 52, 1, 30, 0);
INSERT INTO `savsoft_answers` VALUES (12834, 19, '388', 52, 0, 30, 0);
INSERT INTO `savsoft_answers` VALUES (12835, 20, '497', 52, 0, 30, 0);
INSERT INTO `savsoft_answers` VALUES (12836, 21, '503', 52, 0, 30, 0);
INSERT INTO `savsoft_answers` VALUES (12837, 22, '360', 52, 1, 30, 0);
INSERT INTO `savsoft_answers` VALUES (12838, 23, '507', 52, 1, 30, 0);
INSERT INTO `savsoft_answers` VALUES (12839, 24, '512', 52, 1, 30, 0);
INSERT INTO `savsoft_answers` VALUES (12840, 25, '311', 52, 0, 30, 0);
INSERT INTO `savsoft_answers` VALUES (12841, 26, '516', 52, 0, 30, 0);
INSERT INTO `savsoft_answers` VALUES (12842, 27, '523', 52, 0, 30, 0);
INSERT INTO `savsoft_answers` VALUES (12843, 30, '390', 52, 0, 30, 0);
INSERT INTO `savsoft_answers` VALUES (12844, 31, '395', 52, 0, 30, 0);
INSERT INTO `savsoft_answers` VALUES (12845, 32, '403', 52, 0, 30, 0);
INSERT INTO `savsoft_answers` VALUES (12846, 33, '526', 52, 0, 30, 0);
INSERT INTO `savsoft_answers` VALUES (12847, 34, '410', 52, 0, 30, 0);
INSERT INTO `savsoft_answers` VALUES (12848, 36, '421', 52, 1, 30, 0);
INSERT INTO `savsoft_answers` VALUES (12849, 37, '427', 52, 0, 30, 0);
INSERT INTO `savsoft_answers` VALUES (12850, 38, '433', 52, 1, 30, 0);
INSERT INTO `savsoft_answers` VALUES (12851, 39, '454', 52, 0, 30, 0);
INSERT INTO `savsoft_answers` VALUES (12852, 40, '442', 52, 1, 30, 0);
INSERT INTO `savsoft_answers` VALUES (12853, 41, '456', 52, 0, 30, 0);
INSERT INTO `savsoft_answers` VALUES (12854, 42, '462', 52, 0, 30, 0);
INSERT INTO `savsoft_answers` VALUES (12855, 43, '468', 52, 0, 30, 0);
INSERT INTO `savsoft_answers` VALUES (12856, 44, '470', 52, 1, 30, 0);
INSERT INTO `savsoft_answers` VALUES (12857, 45, '479', 52, 1, 30, 0);
INSERT INTO `savsoft_answers` VALUES (12858, 46, '481', 52, 0, 30, 0);
INSERT INTO `savsoft_answers` VALUES (12859, 47, '486', 52, 0, 30, 0);
INSERT INTO `savsoft_answers` VALUES (13322, 18, '492', 53, 1, 31, 0);
INSERT INTO `savsoft_answers` VALUES (13323, 19, '385', 53, 1, 31, 0);
INSERT INTO `savsoft_answers` VALUES (13324, 20, '495', 53, 0, 31, 0);
INSERT INTO `savsoft_answers` VALUES (13325, 21, '503', 53, 0, 31, 0);
INSERT INTO `savsoft_answers` VALUES (13326, 22, '360', 53, 1, 31, 0);
INSERT INTO `savsoft_answers` VALUES (13327, 23, '507', 53, 1, 31, 0);
INSERT INTO `savsoft_answers` VALUES (13328, 24, '512', 53, 1, 31, 0);
INSERT INTO `savsoft_answers` VALUES (13329, 25, '310', 53, 1, 31, 0);
INSERT INTO `savsoft_answers` VALUES (13330, 26, '519', 53, 0, 31, 0);
INSERT INTO `savsoft_answers` VALUES (13331, 27, '522', 53, 0, 31, 0);
INSERT INTO `savsoft_answers` VALUES (13332, 30, '391', 53, 0, 31, 0);
INSERT INTO `savsoft_answers` VALUES (13333, 31, '397', 53, 1, 31, 0);
INSERT INTO `savsoft_answers` VALUES (13334, 32, '404', 53, 0, 31, 0);
INSERT INTO `savsoft_answers` VALUES (13335, 33, '527', 53, 1, 31, 0);
INSERT INTO `savsoft_answers` VALUES (13336, 34, '412', 53, 0, 31, 0);
INSERT INTO `savsoft_answers` VALUES (13337, 36, '421', 53, 1, 31, 0);
INSERT INTO `savsoft_answers` VALUES (13338, 37, '427', 53, 0, 31, 0);
INSERT INTO `savsoft_answers` VALUES (13339, 38, '431', 53, 0, 31, 0);
INSERT INTO `savsoft_answers` VALUES (13340, 39, '453', 53, 1, 31, 0);
INSERT INTO `savsoft_answers` VALUES (13341, 40, '444', 53, 0, 31, 0);
INSERT INTO `savsoft_answers` VALUES (13342, 41, '457', 53, 0, 31, 0);
INSERT INTO `savsoft_answers` VALUES (13343, 42, '460', 53, 1, 31, 0);
INSERT INTO `savsoft_answers` VALUES (13344, 43, '468', 53, 0, 31, 0);
INSERT INTO `savsoft_answers` VALUES (13345, 44, '470', 53, 1, 31, 0);
INSERT INTO `savsoft_answers` VALUES (13346, 45, '479', 53, 1, 31, 0);
INSERT INTO `savsoft_answers` VALUES (13347, 46, '480', 53, 0, 31, 0);
INSERT INTO `savsoft_answers` VALUES (13348, 47, '488', 53, 1, 31, 0);
INSERT INTO `savsoft_answers` VALUES (13865, 18, '492', 56, 1, 32, 0);
INSERT INTO `savsoft_answers` VALUES (13866, 19, '385', 56, 1, 32, 0);
INSERT INTO `savsoft_answers` VALUES (13867, 20, '498', 56, 1, 32, 0);
INSERT INTO `savsoft_answers` VALUES (13868, 21, '501', 56, 0, 32, 0);
INSERT INTO `savsoft_answers` VALUES (13869, 22, '363', 56, 0, 32, 0);
INSERT INTO `savsoft_answers` VALUES (13870, 23, '507', 56, 1, 32, 0);
INSERT INTO `savsoft_answers` VALUES (13871, 24, '513', 56, 0, 32, 0);
INSERT INTO `savsoft_answers` VALUES (13872, 25, '311', 56, 0, 32, 0);
INSERT INTO `savsoft_answers` VALUES (13873, 26, '519', 56, 0, 32, 0);
INSERT INTO `savsoft_answers` VALUES (13874, 27, '523', 56, 0, 32, 0);
INSERT INTO `savsoft_answers` VALUES (13875, 30, '391', 56, 0, 32, 0);
INSERT INTO `savsoft_answers` VALUES (13876, 31, '397', 56, 1, 32, 0);
INSERT INTO `savsoft_answers` VALUES (13877, 32, '403', 56, 0, 32, 0);
INSERT INTO `savsoft_answers` VALUES (13878, 33, '526', 56, 0, 32, 0);
INSERT INTO `savsoft_answers` VALUES (13879, 34, '412', 56, 0, 32, 0);
INSERT INTO `savsoft_answers` VALUES (13880, 36, '422', 56, 0, 32, 0);
INSERT INTO `savsoft_answers` VALUES (13881, 37, '426', 56, 0, 32, 0);
INSERT INTO `savsoft_answers` VALUES (13882, 38, '430', 56, 0, 32, 0);
INSERT INTO `savsoft_answers` VALUES (13883, 39, '450', 56, 0, 32, 0);
INSERT INTO `savsoft_answers` VALUES (13884, 40, '440', 56, 0, 32, 0);
INSERT INTO `savsoft_answers` VALUES (13885, 41, '456', 56, 0, 32, 0);
INSERT INTO `savsoft_answers` VALUES (13886, 42, '462', 56, 0, 32, 0);
INSERT INTO `savsoft_answers` VALUES (13887, 43, '467', 56, 0, 32, 0);
INSERT INTO `savsoft_answers` VALUES (13888, 44, '472', 56, 0, 32, 0);
INSERT INTO `savsoft_answers` VALUES (13889, 45, '476', 56, 0, 32, 0);
INSERT INTO `savsoft_answers` VALUES (13890, 46, '481', 56, 0, 32, 0);
INSERT INTO `savsoft_answers` VALUES (13891, 47, '486', 56, 0, 32, 0);
INSERT INTO `savsoft_answers` VALUES (14881, 18, '490', 58, 0, 33, 0);
INSERT INTO `savsoft_answers` VALUES (14882, 19, '387', 58, 0, 33, 0);
INSERT INTO `savsoft_answers` VALUES (14883, 20, '497', 58, 0, 33, 0);
INSERT INTO `savsoft_answers` VALUES (14884, 21, '501', 58, 0, 33, 0);
INSERT INTO `savsoft_answers` VALUES (14885, 22, '363', 58, 0, 33, 0);
INSERT INTO `savsoft_answers` VALUES (14886, 23, '507', 58, 1, 33, 0);
INSERT INTO `savsoft_answers` VALUES (14887, 24, '510', 58, 0, 33, 0);
INSERT INTO `savsoft_answers` VALUES (14888, 25, '310', 58, 1, 33, 0);
INSERT INTO `savsoft_answers` VALUES (14889, 26, '519', 58, 0, 33, 0);
INSERT INTO `savsoft_answers` VALUES (14890, 27, '520', 58, 0, 33, 0);
INSERT INTO `savsoft_answers` VALUES (14891, 30, '394', 58, 1, 33, 0);
INSERT INTO `savsoft_answers` VALUES (14892, 31, '397', 58, 1, 33, 0);
INSERT INTO `savsoft_answers` VALUES (14893, 32, '400', 58, 1, 33, 0);
INSERT INTO `savsoft_answers` VALUES (14894, 33, '528', 58, 0, 33, 0);
INSERT INTO `savsoft_answers` VALUES (14895, 34, '412', 58, 0, 33, 0);
INSERT INTO `savsoft_answers` VALUES (14896, 36, '420', 58, 0, 33, 0);
INSERT INTO `savsoft_answers` VALUES (14897, 37, '428', 58, 1, 33, 0);
INSERT INTO `savsoft_answers` VALUES (14898, 38, '433', 58, 1, 33, 0);
INSERT INTO `savsoft_answers` VALUES (14899, 39, '454', 58, 0, 33, 0);
INSERT INTO `savsoft_answers` VALUES (14900, 40, '440', 58, 0, 33, 0);
INSERT INTO `savsoft_answers` VALUES (14901, 41, '457', 58, 0, 33, 0);
INSERT INTO `savsoft_answers` VALUES (14902, 42, '460', 58, 1, 33, 0);
INSERT INTO `savsoft_answers` VALUES (14903, 43, '468', 58, 0, 33, 0);
INSERT INTO `savsoft_answers` VALUES (14904, 44, '470', 58, 1, 33, 0);
INSERT INTO `savsoft_answers` VALUES (14905, 45, '475', 58, 0, 33, 0);
INSERT INTO `savsoft_answers` VALUES (14906, 46, '484', 58, 1, 33, 0);
INSERT INTO `savsoft_answers` VALUES (14907, 47, '488', 58, 1, 33, 0);
INSERT INTO `savsoft_answers` VALUES (15718, 18, '492', 59, 1, 34, 0);
INSERT INTO `savsoft_answers` VALUES (15719, 19, '388', 59, 0, 34, 0);
INSERT INTO `savsoft_answers` VALUES (15720, 20, '496', 59, 0, 34, 0);
INSERT INTO `savsoft_answers` VALUES (15721, 21, '501', 59, 0, 34, 0);
INSERT INTO `savsoft_answers` VALUES (15722, 22, '363', 59, 0, 34, 0);
INSERT INTO `savsoft_answers` VALUES (15723, 23, '507', 59, 1, 34, 0);
INSERT INTO `savsoft_answers` VALUES (15724, 24, '512', 59, 1, 34, 0);
INSERT INTO `savsoft_answers` VALUES (15725, 25, '310', 59, 1, 34, 0);
INSERT INTO `savsoft_answers` VALUES (15726, 26, '516', 59, 0, 34, 0);
INSERT INTO `savsoft_answers` VALUES (15727, 27, '522', 59, 0, 34, 0);
INSERT INTO `savsoft_answers` VALUES (15728, 30, '394', 59, 1, 34, 0);
INSERT INTO `savsoft_answers` VALUES (15729, 31, '397', 59, 1, 34, 0);
INSERT INTO `savsoft_answers` VALUES (15730, 32, '400', 59, 1, 34, 0);
INSERT INTO `savsoft_answers` VALUES (15731, 33, '528', 59, 0, 34, 0);
INSERT INTO `savsoft_answers` VALUES (15732, 34, '412', 59, 0, 34, 0);
INSERT INTO `savsoft_answers` VALUES (15733, 36, '423', 59, 0, 34, 0);
INSERT INTO `savsoft_answers` VALUES (15734, 37, '427', 59, 0, 34, 0);
INSERT INTO `savsoft_answers` VALUES (15735, 38, '431', 59, 0, 34, 0);
INSERT INTO `savsoft_answers` VALUES (15736, 39, '453', 59, 1, 34, 0);
INSERT INTO `savsoft_answers` VALUES (15737, 40, '442', 59, 1, 34, 0);
INSERT INTO `savsoft_answers` VALUES (15738, 41, '459', 59, 1, 34, 0);
INSERT INTO `savsoft_answers` VALUES (15739, 42, '460', 59, 1, 34, 0);
INSERT INTO `savsoft_answers` VALUES (15740, 43, '468', 59, 0, 34, 0);
INSERT INTO `savsoft_answers` VALUES (15741, 44, '470', 59, 1, 34, 0);
INSERT INTO `savsoft_answers` VALUES (15742, 45, '479', 59, 1, 34, 0);
INSERT INTO `savsoft_answers` VALUES (15743, 46, '484', 59, 1, 34, 0);
INSERT INTO `savsoft_answers` VALUES (15744, 47, '488', 59, 1, 34, 0);
INSERT INTO `savsoft_answers` VALUES (16123, 18, '491', 61, 0, 35, 0);
INSERT INTO `savsoft_answers` VALUES (16124, 19, '387', 61, 0, 35, 0);
INSERT INTO `savsoft_answers` VALUES (16125, 20, '498', 61, 1, 35, 0);
INSERT INTO `savsoft_answers` VALUES (16126, 21, '502', 61, 0, 35, 0);
INSERT INTO `savsoft_answers` VALUES (16127, 22, '360', 61, 1, 35, 0);
INSERT INTO `savsoft_answers` VALUES (16128, 23, '507', 61, 1, 35, 0);
INSERT INTO `savsoft_answers` VALUES (16129, 24, '513', 61, 0, 35, 0);
INSERT INTO `savsoft_answers` VALUES (16130, 25, '310', 61, 1, 35, 0);
INSERT INTO `savsoft_answers` VALUES (16131, 26, '516', 61, 0, 35, 0);
INSERT INTO `savsoft_answers` VALUES (16132, 27, '524', 61, 1, 35, 0);
INSERT INTO `savsoft_answers` VALUES (16133, 30, '394', 61, 1, 35, 0);
INSERT INTO `savsoft_answers` VALUES (16134, 31, '397', 61, 1, 35, 0);
INSERT INTO `savsoft_answers` VALUES (16135, 32, '400', 61, 1, 35, 0);
INSERT INTO `savsoft_answers` VALUES (16136, 33, '528', 61, 0, 35, 0);
INSERT INTO `savsoft_answers` VALUES (16137, 34, '412', 61, 0, 35, 0);
INSERT INTO `savsoft_answers` VALUES (16138, 36, '421', 61, 1, 35, 0);
INSERT INTO `savsoft_answers` VALUES (16139, 37, '427', 61, 0, 35, 0);
INSERT INTO `savsoft_answers` VALUES (16140, 38, '432', 61, 0, 35, 0);
INSERT INTO `savsoft_answers` VALUES (16141, 39, '454', 61, 0, 35, 0);
INSERT INTO `savsoft_answers` VALUES (16142, 40, '442', 61, 1, 35, 0);
INSERT INTO `savsoft_answers` VALUES (16143, 41, '457', 61, 0, 35, 0);
INSERT INTO `savsoft_answers` VALUES (16144, 42, '460', 61, 1, 35, 0);
INSERT INTO `savsoft_answers` VALUES (16145, 43, '468', 61, 0, 35, 0);
INSERT INTO `savsoft_answers` VALUES (16146, 44, '470', 61, 1, 35, 0);
INSERT INTO `savsoft_answers` VALUES (16147, 45, '477', 61, 0, 35, 0);
INSERT INTO `savsoft_answers` VALUES (16148, 46, '480', 61, 0, 35, 0);
INSERT INTO `savsoft_answers` VALUES (16149, 47, '487', 61, 0, 35, 0);
INSERT INTO `savsoft_answers` VALUES (17276, 18, '490', 60, 0, 36, 0);
INSERT INTO `savsoft_answers` VALUES (17277, 19, '386', 60, 0, 36, 0);
INSERT INTO `savsoft_answers` VALUES (17278, 20, '499', 60, 0, 36, 0);
INSERT INTO `savsoft_answers` VALUES (17279, 21, '503', 60, 0, 36, 0);
INSERT INTO `savsoft_answers` VALUES (17280, 22, '360', 60, 1, 36, 0);
INSERT INTO `savsoft_answers` VALUES (17281, 23, '507', 60, 1, 36, 0);
INSERT INTO `savsoft_answers` VALUES (17282, 24, '513', 60, 0, 36, 0);
INSERT INTO `savsoft_answers` VALUES (17283, 25, '310', 60, 1, 36, 0);
INSERT INTO `savsoft_answers` VALUES (17284, 26, '517', 60, 0, 36, 0);
INSERT INTO `savsoft_answers` VALUES (17285, 27, '520', 60, 0, 36, 0);
INSERT INTO `savsoft_answers` VALUES (17286, 30, '394', 60, 1, 36, 0);
INSERT INTO `savsoft_answers` VALUES (17287, 31, '395', 60, 0, 36, 0);
INSERT INTO `savsoft_answers` VALUES (17288, 32, '403', 60, 0, 36, 0);
INSERT INTO `savsoft_answers` VALUES (17289, 33, '528', 60, 0, 36, 0);
INSERT INTO `savsoft_answers` VALUES (17290, 34, '412', 60, 0, 36, 0);
INSERT INTO `savsoft_answers` VALUES (17291, 36, '421', 60, 1, 36, 0);
INSERT INTO `savsoft_answers` VALUES (17292, 37, '427', 60, 0, 36, 0);
INSERT INTO `savsoft_answers` VALUES (17293, 38, '431', 60, 0, 36, 0);
INSERT INTO `savsoft_answers` VALUES (17294, 39, '453', 60, 1, 36, 0);
INSERT INTO `savsoft_answers` VALUES (17295, 40, '442', 60, 1, 36, 0);
INSERT INTO `savsoft_answers` VALUES (17296, 41, '459', 60, 1, 36, 0);
INSERT INTO `savsoft_answers` VALUES (17297, 42, '460', 60, 1, 36, 0);
INSERT INTO `savsoft_answers` VALUES (17298, 43, '469', 60, 1, 36, 0);
INSERT INTO `savsoft_answers` VALUES (17299, 44, '470', 60, 1, 36, 0);
INSERT INTO `savsoft_answers` VALUES (17300, 45, '479', 60, 1, 36, 0);
INSERT INTO `savsoft_answers` VALUES (17301, 46, '481', 60, 0, 36, 0);
INSERT INTO `savsoft_answers` VALUES (17302, 47, '488', 60, 1, 36, 0);
INSERT INTO `savsoft_answers` VALUES (17730, 18, '490', 62, 0, 37, 0);
INSERT INTO `savsoft_answers` VALUES (17731, 19, '386', 62, 0, 37, 0);
INSERT INTO `savsoft_answers` VALUES (17732, 20, '496', 62, 0, 37, 0);
INSERT INTO `savsoft_answers` VALUES (17733, 21, '501', 62, 0, 37, 0);
INSERT INTO `savsoft_answers` VALUES (17734, 22, '363', 62, 0, 37, 0);
INSERT INTO `savsoft_answers` VALUES (17735, 23, '507', 62, 1, 37, 0);
INSERT INTO `savsoft_answers` VALUES (17736, 24, '512', 62, 1, 37, 0);
INSERT INTO `savsoft_answers` VALUES (17737, 25, '313', 62, 0, 37, 0);
INSERT INTO `savsoft_answers` VALUES (17738, 26, '516', 62, 0, 37, 0);
INSERT INTO `savsoft_answers` VALUES (17739, 27, '523', 62, 0, 37, 0);
INSERT INTO `savsoft_answers` VALUES (17740, 30, '391', 62, 0, 37, 0);
INSERT INTO `savsoft_answers` VALUES (17741, 31, '395', 62, 0, 37, 0);
INSERT INTO `savsoft_answers` VALUES (17742, 32, '401', 62, 0, 37, 0);
INSERT INTO `savsoft_answers` VALUES (17743, 33, '527', 62, 1, 37, 0);
INSERT INTO `savsoft_answers` VALUES (17744, 34, '412', 62, 0, 37, 0);
INSERT INTO `savsoft_answers` VALUES (17745, 36, '423', 62, 0, 37, 0);
INSERT INTO `savsoft_answers` VALUES (17746, 37, '428', 62, 1, 37, 0);
INSERT INTO `savsoft_answers` VALUES (17747, 38, '432', 62, 0, 37, 0);
INSERT INTO `savsoft_answers` VALUES (17748, 39, '453', 62, 1, 37, 0);
INSERT INTO `savsoft_answers` VALUES (17749, 40, '442', 62, 1, 37, 0);
INSERT INTO `savsoft_answers` VALUES (17750, 41, '459', 62, 1, 37, 0);
INSERT INTO `savsoft_answers` VALUES (17751, 42, '460', 62, 1, 37, 0);
INSERT INTO `savsoft_answers` VALUES (17752, 43, '469', 62, 1, 37, 0);
INSERT INTO `savsoft_answers` VALUES (17753, 44, '470', 62, 1, 37, 0);
INSERT INTO `savsoft_answers` VALUES (17754, 46, '480', 62, 0, 37, 0);
INSERT INTO `savsoft_answers` VALUES (17755, 47, '488', 62, 1, 37, 0);
INSERT INTO `savsoft_answers` VALUES (18500, 18, '491', 65, 0, 38, 0);
INSERT INTO `savsoft_answers` VALUES (18501, 19, '388', 65, 0, 38, 0);
INSERT INTO `savsoft_answers` VALUES (18502, 20, '497', 65, 0, 38, 0);
INSERT INTO `savsoft_answers` VALUES (18503, 21, '501', 65, 0, 38, 0);
INSERT INTO `savsoft_answers` VALUES (18504, 22, '363', 65, 0, 38, 0);
INSERT INTO `savsoft_answers` VALUES (18505, 23, '507', 65, 1, 38, 0);
INSERT INTO `savsoft_answers` VALUES (18506, 24, '512', 65, 1, 38, 0);
INSERT INTO `savsoft_answers` VALUES (18507, 25, '311', 65, 0, 38, 0);
INSERT INTO `savsoft_answers` VALUES (18508, 26, '515', 65, 0, 38, 0);
INSERT INTO `savsoft_answers` VALUES (18509, 27, '522', 65, 0, 38, 0);
INSERT INTO `savsoft_answers` VALUES (18510, 30, '394', 65, 1, 38, 0);
INSERT INTO `savsoft_answers` VALUES (18511, 31, '397', 65, 1, 38, 0);
INSERT INTO `savsoft_answers` VALUES (18512, 32, '400', 65, 1, 38, 0);
INSERT INTO `savsoft_answers` VALUES (18513, 33, '527', 65, 1, 38, 0);
INSERT INTO `savsoft_answers` VALUES (18514, 34, '412', 65, 0, 38, 0);
INSERT INTO `savsoft_answers` VALUES (18515, 36, '423', 65, 0, 38, 0);
INSERT INTO `savsoft_answers` VALUES (18516, 37, '427', 65, 0, 38, 0);
INSERT INTO `savsoft_answers` VALUES (18517, 38, '433', 65, 1, 38, 0);
INSERT INTO `savsoft_answers` VALUES (18518, 39, '452', 65, 0, 38, 0);
INSERT INTO `savsoft_answers` VALUES (18519, 40, '441', 65, 0, 38, 0);
INSERT INTO `savsoft_answers` VALUES (18520, 41, '459', 65, 1, 38, 0);
INSERT INTO `savsoft_answers` VALUES (18521, 42, '460', 65, 1, 38, 0);
INSERT INTO `savsoft_answers` VALUES (18522, 43, '468', 65, 0, 38, 0);
INSERT INTO `savsoft_answers` VALUES (18523, 44, '470', 65, 1, 38, 0);
INSERT INTO `savsoft_answers` VALUES (18524, 45, '479', 65, 1, 38, 0);
INSERT INTO `savsoft_answers` VALUES (18525, 46, '484', 65, 1, 38, 0);
INSERT INTO `savsoft_answers` VALUES (18526, 47, '488', 65, 1, 38, 0);
INSERT INTO `savsoft_answers` VALUES (19953, 18, '492', 66, 1, 39, 0);
INSERT INTO `savsoft_answers` VALUES (19954, 19, '389', 66, 0, 39, 0);
INSERT INTO `savsoft_answers` VALUES (19955, 20, '499', 66, 0, 39, 0);
INSERT INTO `savsoft_answers` VALUES (19956, 21, '501', 66, 0, 39, 0);
INSERT INTO `savsoft_answers` VALUES (19957, 22, '360', 66, 1, 39, 0);
INSERT INTO `savsoft_answers` VALUES (19958, 23, '507', 66, 1, 39, 0);
INSERT INTO `savsoft_answers` VALUES (19959, 24, '511', 66, 0, 39, 0);
INSERT INTO `savsoft_answers` VALUES (19960, 25, '310', 66, 1, 39, 0);
INSERT INTO `savsoft_answers` VALUES (19961, 26, '515', 66, 0, 39, 0);
INSERT INTO `savsoft_answers` VALUES (19962, 27, '521', 66, 0, 39, 0);
INSERT INTO `savsoft_answers` VALUES (19963, 30, '394', 66, 1, 39, 0);
INSERT INTO `savsoft_answers` VALUES (19964, 31, '395', 66, 0, 39, 0);
INSERT INTO `savsoft_answers` VALUES (19965, 32, '400', 66, 1, 39, 0);
INSERT INTO `savsoft_answers` VALUES (19966, 33, '528', 66, 0, 39, 0);
INSERT INTO `savsoft_answers` VALUES (19967, 34, '412', 66, 0, 39, 0);
INSERT INTO `savsoft_answers` VALUES (19968, 36, '423', 66, 0, 39, 0);
INSERT INTO `savsoft_answers` VALUES (19969, 37, '427', 66, 0, 39, 0);
INSERT INTO `savsoft_answers` VALUES (19970, 38, '431', 66, 0, 39, 0);
INSERT INTO `savsoft_answers` VALUES (19971, 39, '453', 66, 1, 39, 0);
INSERT INTO `savsoft_answers` VALUES (19972, 40, '442', 66, 1, 39, 0);
INSERT INTO `savsoft_answers` VALUES (19973, 41, '457', 66, 0, 39, 0);
INSERT INTO `savsoft_answers` VALUES (19974, 42, '461', 66, 0, 39, 0);
INSERT INTO `savsoft_answers` VALUES (19975, 43, '468', 66, 0, 39, 0);
INSERT INTO `savsoft_answers` VALUES (19976, 44, '470', 66, 1, 39, 0);
INSERT INTO `savsoft_answers` VALUES (19977, 45, '479', 66, 1, 39, 0);
INSERT INTO `savsoft_answers` VALUES (19978, 46, '480', 66, 0, 39, 0);
INSERT INTO `savsoft_answers` VALUES (19979, 47, '488', 66, 1, 39, 0);
INSERT INTO `savsoft_answers` VALUES (20450, 18, '492', 67, 1, 40, 0);
INSERT INTO `savsoft_answers` VALUES (20451, 19, '385', 67, 1, 40, 0);
INSERT INTO `savsoft_answers` VALUES (20452, 20, '496', 67, 0, 40, 0);
INSERT INTO `savsoft_answers` VALUES (20453, 21, '501', 67, 0, 40, 0);
INSERT INTO `savsoft_answers` VALUES (20454, 22, '360', 67, 1, 40, 0);
INSERT INTO `savsoft_answers` VALUES (20455, 23, '507', 67, 1, 40, 0);
INSERT INTO `savsoft_answers` VALUES (20456, 24, '511', 67, 0, 40, 0);
INSERT INTO `savsoft_answers` VALUES (20457, 26, '515', 67, 0, 40, 0);
INSERT INTO `savsoft_answers` VALUES (20458, 27, '524', 67, 1, 40, 0);
INSERT INTO `savsoft_answers` VALUES (20459, 32, '401', 67, 0, 40, 0);
INSERT INTO `savsoft_answers` VALUES (20460, 34, '411', 67, 0, 40, 0);
INSERT INTO `savsoft_answers` VALUES (20461, 36, '422', 67, 0, 40, 0);
INSERT INTO `savsoft_answers` VALUES (20462, 37, '425', 67, 0, 40, 0);
INSERT INTO `savsoft_answers` VALUES (20463, 38, '433', 67, 1, 40, 0);
INSERT INTO `savsoft_answers` VALUES (20464, 39, '453', 67, 1, 40, 0);
INSERT INTO `savsoft_answers` VALUES (20465, 40, '441', 67, 0, 40, 0);
INSERT INTO `savsoft_answers` VALUES (20466, 41, '456', 67, 0, 40, 0);
INSERT INTO `savsoft_answers` VALUES (20467, 42, '460', 67, 1, 40, 0);
INSERT INTO `savsoft_answers` VALUES (20468, 44, '470', 67, 1, 40, 0);
INSERT INTO `savsoft_answers` VALUES (20469, 45, '476', 67, 0, 40, 0);
INSERT INTO `savsoft_answers` VALUES (20470, 46, '481', 67, 0, 40, 0);
INSERT INTO `savsoft_answers` VALUES (20471, 47, '486', 67, 0, 40, 0);
INSERT INTO `savsoft_answers` VALUES (21336, 18, '492', 68, 1, 41, 0);
INSERT INTO `savsoft_answers` VALUES (21337, 19, '389', 68, 0, 41, 0);
INSERT INTO `savsoft_answers` VALUES (21338, 20, '499', 68, 0, 41, 0);
INSERT INTO `savsoft_answers` VALUES (21339, 21, '501', 68, 0, 41, 0);
INSERT INTO `savsoft_answers` VALUES (21340, 22, '360', 68, 1, 41, 0);
INSERT INTO `savsoft_answers` VALUES (21341, 23, '507', 68, 1, 41, 0);
INSERT INTO `savsoft_answers` VALUES (21342, 24, '512', 68, 1, 41, 0);
INSERT INTO `savsoft_answers` VALUES (21343, 25, '312', 68, 0, 41, 0);
INSERT INTO `savsoft_answers` VALUES (21344, 26, '515', 68, 0, 41, 0);
INSERT INTO `savsoft_answers` VALUES (21345, 27, '522', 68, 0, 41, 0);
INSERT INTO `savsoft_answers` VALUES (21346, 30, '390', 68, 0, 41, 0);
INSERT INTO `savsoft_answers` VALUES (21347, 31, '395', 68, 0, 41, 0);
INSERT INTO `savsoft_answers` VALUES (21348, 32, '403', 68, 0, 41, 0);
INSERT INTO `savsoft_answers` VALUES (21349, 33, '527', 68, 1, 41, 0);
INSERT INTO `savsoft_answers` VALUES (21350, 34, '412', 68, 0, 41, 0);
INSERT INTO `savsoft_answers` VALUES (21351, 36, '423', 68, 0, 41, 0);
INSERT INTO `savsoft_answers` VALUES (21352, 37, '427', 68, 0, 41, 0);
INSERT INTO `savsoft_answers` VALUES (21353, 38, '431', 68, 0, 41, 0);
INSERT INTO `savsoft_answers` VALUES (21354, 39, '454', 68, 0, 41, 0);
INSERT INTO `savsoft_answers` VALUES (21355, 40, '442', 68, 1, 41, 0);
INSERT INTO `savsoft_answers` VALUES (21356, 41, '455', 68, 0, 41, 0);
INSERT INTO `savsoft_answers` VALUES (21357, 42, '462', 68, 0, 41, 0);
INSERT INTO `savsoft_answers` VALUES (21358, 43, '466', 68, 0, 41, 0);
INSERT INTO `savsoft_answers` VALUES (21359, 44, '470', 68, 1, 41, 0);
INSERT INTO `savsoft_answers` VALUES (21360, 45, '479', 68, 1, 41, 0);
INSERT INTO `savsoft_answers` VALUES (21361, 46, '481', 68, 0, 41, 0);
INSERT INTO `savsoft_answers` VALUES (21362, 47, '487', 68, 0, 41, 0);
INSERT INTO `savsoft_answers` VALUES (22994, 18, '492', 69, 1, 42, 0);
INSERT INTO `savsoft_answers` VALUES (22995, 19, '385', 69, 1, 42, 0);
INSERT INTO `savsoft_answers` VALUES (22996, 20, '498', 69, 1, 42, 0);
INSERT INTO `savsoft_answers` VALUES (22997, 21, '504', 69, 1, 42, 0);
INSERT INTO `savsoft_answers` VALUES (22998, 22, '360', 69, 1, 42, 0);
INSERT INTO `savsoft_answers` VALUES (22999, 23, '507', 69, 1, 42, 0);
INSERT INTO `savsoft_answers` VALUES (23000, 24, '512', 69, 1, 42, 0);
INSERT INTO `savsoft_answers` VALUES (23001, 25, '310', 69, 1, 42, 0);
INSERT INTO `savsoft_answers` VALUES (23002, 26, '518', 69, 1, 42, 0);
INSERT INTO `savsoft_answers` VALUES (23003, 27, '524', 69, 1, 42, 0);
INSERT INTO `savsoft_answers` VALUES (23004, 30, '394', 69, 1, 42, 0);
INSERT INTO `savsoft_answers` VALUES (23005, 31, '397', 69, 1, 42, 0);
INSERT INTO `savsoft_answers` VALUES (23006, 32, '400', 69, 1, 42, 0);
INSERT INTO `savsoft_answers` VALUES (23007, 33, '527', 69, 1, 42, 0);
INSERT INTO `savsoft_answers` VALUES (23008, 34, '412', 69, 0, 42, 0);
INSERT INTO `savsoft_answers` VALUES (23009, 36, '421', 69, 1, 42, 0);
INSERT INTO `savsoft_answers` VALUES (23010, 37, '428', 69, 1, 42, 0);
INSERT INTO `savsoft_answers` VALUES (23011, 38, '433', 69, 1, 42, 0);
INSERT INTO `savsoft_answers` VALUES (23012, 39, '453', 69, 1, 42, 0);
INSERT INTO `savsoft_answers` VALUES (23013, 40, '442', 69, 1, 42, 0);
INSERT INTO `savsoft_answers` VALUES (23014, 41, '459', 69, 1, 42, 0);
INSERT INTO `savsoft_answers` VALUES (23015, 42, '460', 69, 1, 42, 0);
INSERT INTO `savsoft_answers` VALUES (23016, 43, '466', 69, 0, 42, 0);
INSERT INTO `savsoft_answers` VALUES (23017, 44, '470', 69, 1, 42, 0);
INSERT INTO `savsoft_answers` VALUES (23018, 45, '479', 69, 1, 42, 0);
INSERT INTO `savsoft_answers` VALUES (23019, 46, '482', 69, 0, 42, 0);
INSERT INTO `savsoft_answers` VALUES (23020, 47, '488', 69, 1, 42, 0);
INSERT INTO `savsoft_answers` VALUES (23813, 18, '492', 70, 1, 43, 0);
INSERT INTO `savsoft_answers` VALUES (23814, 19, '388', 70, 0, 43, 0);
INSERT INTO `savsoft_answers` VALUES (23815, 20, '497', 70, 0, 43, 0);
INSERT INTO `savsoft_answers` VALUES (23816, 21, '501', 70, 0, 43, 0);
INSERT INTO `savsoft_answers` VALUES (23817, 22, '363', 70, 0, 43, 0);
INSERT INTO `savsoft_answers` VALUES (23818, 23, '507', 70, 1, 43, 0);
INSERT INTO `savsoft_answers` VALUES (23819, 24, '513', 70, 0, 43, 0);
INSERT INTO `savsoft_answers` VALUES (23820, 25, '310', 70, 1, 43, 0);
INSERT INTO `savsoft_answers` VALUES (23821, 26, '517', 70, 0, 43, 0);
INSERT INTO `savsoft_answers` VALUES (23822, 27, '524', 70, 1, 43, 0);
INSERT INTO `savsoft_answers` VALUES (23823, 30, '390', 70, 0, 43, 0);
INSERT INTO `savsoft_answers` VALUES (23824, 31, '397', 70, 1, 43, 0);
INSERT INTO `savsoft_answers` VALUES (23825, 32, '401', 70, 0, 43, 0);
INSERT INTO `savsoft_answers` VALUES (23826, 33, '526', 70, 0, 43, 0);
INSERT INTO `savsoft_answers` VALUES (23827, 34, '410', 70, 0, 43, 0);
INSERT INTO `savsoft_answers` VALUES (23828, 36, '423', 70, 0, 43, 0);
INSERT INTO `savsoft_answers` VALUES (23829, 37, '426', 70, 0, 43, 0);
INSERT INTO `savsoft_answers` VALUES (23830, 38, '432', 70, 0, 43, 0);
INSERT INTO `savsoft_answers` VALUES (23831, 39, '453', 70, 1, 43, 0);
INSERT INTO `savsoft_answers` VALUES (23832, 40, '441', 70, 0, 43, 0);
INSERT INTO `savsoft_answers` VALUES (23833, 41, '455', 70, 0, 43, 0);
INSERT INTO `savsoft_answers` VALUES (23834, 42, '462', 70, 0, 43, 0);
INSERT INTO `savsoft_answers` VALUES (23835, 43, '468', 70, 0, 43, 0);
INSERT INTO `savsoft_answers` VALUES (23836, 44, '470', 70, 1, 43, 0);
INSERT INTO `savsoft_answers` VALUES (23837, 45, '479', 70, 1, 43, 0);
INSERT INTO `savsoft_answers` VALUES (23838, 46, '480', 70, 0, 43, 0);
INSERT INTO `savsoft_answers` VALUES (23839, 47, '487', 70, 0, 43, 0);
INSERT INTO `savsoft_answers` VALUES (23889, 18, '490', 79, 0, 48, 0);
INSERT INTO `savsoft_answers` VALUES (23890, 19, '387', 79, 0, 48, 0);
INSERT INTO `savsoft_answers` VALUES (23891, 20, '497', 79, 0, 48, 0);
INSERT INTO `savsoft_answers` VALUES (23892, 21, '501', 79, 0, 48, 0);
INSERT INTO `savsoft_answers` VALUES (23893, 22, '360', 79, 1, 48, 0);
INSERT INTO `savsoft_answers` VALUES (23894, 23, '505', 79, 0, 48, 0);
INSERT INTO `savsoft_answers` VALUES (23895, 24, '512', 79, 1, 48, 0);
INSERT INTO `savsoft_answers` VALUES (23896, 25, '310', 79, 1, 48, 0);
INSERT INTO `savsoft_answers` VALUES (24953, 18, '492', 85, 1, 49, 0);
INSERT INTO `savsoft_answers` VALUES (24954, 19, '389', 85, 0, 49, 0);
INSERT INTO `savsoft_answers` VALUES (24955, 20, '498', 85, 1, 49, 0);
INSERT INTO `savsoft_answers` VALUES (24956, 21, '501', 85, 0, 49, 0);
INSERT INTO `savsoft_answers` VALUES (24957, 22, '363', 85, 0, 49, 0);
INSERT INTO `savsoft_answers` VALUES (24958, 23, '507', 85, 1, 49, 0);
INSERT INTO `savsoft_answers` VALUES (24959, 24, '512', 85, 1, 49, 0);
INSERT INTO `savsoft_answers` VALUES (24960, 25, '310', 85, 1, 49, 0);
INSERT INTO `savsoft_answers` VALUES (24961, 26, '518', 85, 1, 49, 0);
INSERT INTO `savsoft_answers` VALUES (24962, 27, '521', 85, 0, 49, 0);
INSERT INTO `savsoft_answers` VALUES (24963, 30, '394', 85, 1, 49, 0);
INSERT INTO `savsoft_answers` VALUES (24964, 31, '395', 85, 0, 49, 0);
INSERT INTO `savsoft_answers` VALUES (24965, 32, '402', 85, 0, 49, 0);
INSERT INTO `savsoft_answers` VALUES (24966, 33, '527', 85, 1, 49, 0);
INSERT INTO `savsoft_answers` VALUES (24967, 34, '412', 85, 0, 49, 0);
INSERT INTO `savsoft_answers` VALUES (24968, 36, '421', 85, 1, 49, 0);
INSERT INTO `savsoft_answers` VALUES (24969, 37, '427', 85, 0, 49, 0);
INSERT INTO `savsoft_answers` VALUES (24970, 38, '434', 85, 0, 49, 0);
INSERT INTO `savsoft_answers` VALUES (24971, 39, '454', 85, 0, 49, 0);
INSERT INTO `savsoft_answers` VALUES (24972, 40, '441', 85, 0, 49, 0);
INSERT INTO `savsoft_answers` VALUES (24973, 41, '459', 85, 1, 49, 0);
INSERT INTO `savsoft_answers` VALUES (24974, 42, '460', 85, 1, 49, 0);
INSERT INTO `savsoft_answers` VALUES (24975, 43, '469', 85, 1, 49, 0);
INSERT INTO `savsoft_answers` VALUES (24976, 44, '470', 85, 1, 49, 0);
INSERT INTO `savsoft_answers` VALUES (24977, 45, '479', 85, 1, 49, 0);
INSERT INTO `savsoft_answers` VALUES (24978, 46, '481', 85, 0, 49, 0);
INSERT INTO `savsoft_answers` VALUES (24979, 47, '488', 85, 1, 49, 0);
INSERT INTO `savsoft_answers` VALUES (24991, 18, '490', 86, 0, 50, 0);
INSERT INTO `savsoft_answers` VALUES (24992, 19, '385', 86, 1, 50, 0);
INSERT INTO `savsoft_answers` VALUES (24993, 20, '497', 86, 0, 50, 0);
INSERT INTO `savsoft_answers` VALUES (24994, 21, '501', 86, 0, 50, 0);
INSERT INTO `savsoft_answers` VALUES (24995, 22, '360', 86, 1, 50, 0);
INSERT INTO `savsoft_answers` VALUES (24996, 23, '507', 86, 1, 50, 0);
INSERT INTO `savsoft_answers` VALUES (26531, 18, '490', 90, 0, 51, 0);
INSERT INTO `savsoft_answers` VALUES (26532, 19, '388', 90, 0, 51, 0);
INSERT INTO `savsoft_answers` VALUES (26533, 20, '497', 90, 0, 51, 0);
INSERT INTO `savsoft_answers` VALUES (26534, 21, '501', 90, 0, 51, 0);
INSERT INTO `savsoft_answers` VALUES (26535, 22, '363', 90, 0, 51, 0);
INSERT INTO `savsoft_answers` VALUES (26536, 23, '507', 90, 1, 51, 0);
INSERT INTO `savsoft_answers` VALUES (26537, 24, '511', 90, 0, 51, 0);
INSERT INTO `savsoft_answers` VALUES (26538, 25, '310', 90, 1, 51, 0);
INSERT INTO `savsoft_answers` VALUES (26539, 26, '516', 90, 0, 51, 0);
INSERT INTO `savsoft_answers` VALUES (26540, 27, '523', 90, 0, 51, 0);
INSERT INTO `savsoft_answers` VALUES (26541, 30, '394', 90, 1, 51, 0);
INSERT INTO `savsoft_answers` VALUES (26542, 31, '395', 90, 0, 51, 0);
INSERT INTO `savsoft_answers` VALUES (26543, 32, '401', 90, 0, 51, 0);
INSERT INTO `savsoft_answers` VALUES (26544, 33, '526', 90, 0, 51, 0);
INSERT INTO `savsoft_answers` VALUES (26545, 34, '413', 90, 1, 51, 0);
INSERT INTO `savsoft_answers` VALUES (26546, 36, '421', 90, 1, 51, 0);
INSERT INTO `savsoft_answers` VALUES (26547, 37, '425', 90, 0, 51, 0);
INSERT INTO `savsoft_answers` VALUES (26548, 38, '431', 90, 0, 51, 0);
INSERT INTO `savsoft_answers` VALUES (26549, 39, '450', 90, 0, 51, 0);
INSERT INTO `savsoft_answers` VALUES (26550, 40, '442', 90, 1, 51, 0);
INSERT INTO `savsoft_answers` VALUES (26551, 41, '455', 90, 0, 51, 0);
INSERT INTO `savsoft_answers` VALUES (26552, 42, '463', 90, 0, 51, 0);
INSERT INTO `savsoft_answers` VALUES (26553, 43, '469', 90, 1, 51, 0);
INSERT INTO `savsoft_answers` VALUES (26554, 44, '471', 90, 0, 51, 0);
INSERT INTO `savsoft_answers` VALUES (26555, 45, '475', 90, 0, 51, 0);
INSERT INTO `savsoft_answers` VALUES (26556, 46, '483', 90, 0, 51, 0);
INSERT INTO `savsoft_answers` VALUES (26557, 47, '488', 90, 1, 51, 0);
INSERT INTO `savsoft_answers` VALUES (27591, 18, '492', 91, 1, 52, 0);
INSERT INTO `savsoft_answers` VALUES (27592, 19, '385', 91, 1, 52, 0);
INSERT INTO `savsoft_answers` VALUES (27593, 20, '498', 91, 1, 52, 0);
INSERT INTO `savsoft_answers` VALUES (27594, 21, '501', 91, 0, 52, 0);
INSERT INTO `savsoft_answers` VALUES (27595, 22, '360', 91, 1, 52, 0);
INSERT INTO `savsoft_answers` VALUES (27596, 23, '507', 91, 1, 52, 0);
INSERT INTO `savsoft_answers` VALUES (27597, 24, '512', 91, 1, 52, 0);
INSERT INTO `savsoft_answers` VALUES (27598, 25, '310', 91, 1, 52, 0);
INSERT INTO `savsoft_answers` VALUES (27599, 26, '515', 91, 0, 52, 0);
INSERT INTO `savsoft_answers` VALUES (27600, 27, '520', 91, 0, 52, 0);
INSERT INTO `savsoft_answers` VALUES (27601, 30, '394', 91, 1, 52, 0);
INSERT INTO `savsoft_answers` VALUES (27602, 31, '397', 91, 1, 52, 0);
INSERT INTO `savsoft_answers` VALUES (27603, 32, '400', 91, 1, 52, 0);
INSERT INTO `savsoft_answers` VALUES (27604, 33, '529', 91, 0, 52, 0);
INSERT INTO `savsoft_answers` VALUES (27605, 34, '412', 91, 0, 52, 0);
INSERT INTO `savsoft_answers` VALUES (27606, 36, '421', 91, 1, 52, 0);
INSERT INTO `savsoft_answers` VALUES (27607, 37, '427', 91, 0, 52, 0);
INSERT INTO `savsoft_answers` VALUES (27608, 38, '431', 91, 0, 52, 0);
INSERT INTO `savsoft_answers` VALUES (27609, 39, '453', 91, 1, 52, 0);
INSERT INTO `savsoft_answers` VALUES (27610, 40, '442', 91, 1, 52, 0);
INSERT INTO `savsoft_answers` VALUES (27611, 41, '459', 91, 1, 52, 0);
INSERT INTO `savsoft_answers` VALUES (27612, 42, '460', 91, 1, 52, 0);
INSERT INTO `savsoft_answers` VALUES (27613, 43, '469', 91, 1, 52, 0);
INSERT INTO `savsoft_answers` VALUES (27614, 44, '470', 91, 1, 52, 0);
INSERT INTO `savsoft_answers` VALUES (27615, 45, '479', 91, 1, 52, 0);
INSERT INTO `savsoft_answers` VALUES (27616, 46, '484', 91, 1, 52, 0);
INSERT INTO `savsoft_answers` VALUES (27617, 47, '488', 91, 1, 52, 0);
INSERT INTO `savsoft_answers` VALUES (28044, 18, '490', 94, 0, 53, 0);
INSERT INTO `savsoft_answers` VALUES (28045, 19, '386', 94, 0, 53, 0);
INSERT INTO `savsoft_answers` VALUES (28046, 20, '497', 94, 0, 53, 0);
INSERT INTO `savsoft_answers` VALUES (28047, 21, '504', 94, 1, 53, 0);
INSERT INTO `savsoft_answers` VALUES (28048, 22, '360', 94, 1, 53, 0);
INSERT INTO `savsoft_answers` VALUES (28049, 23, '507', 94, 1, 53, 0);
INSERT INTO `savsoft_answers` VALUES (28050, 24, '511', 94, 0, 53, 0);
INSERT INTO `savsoft_answers` VALUES (28051, 25, '310', 94, 1, 53, 0);
INSERT INTO `savsoft_answers` VALUES (28052, 26, '519', 94, 0, 53, 0);
INSERT INTO `savsoft_answers` VALUES (28053, 27, '523', 94, 0, 53, 0);
INSERT INTO `savsoft_answers` VALUES (28054, 30, '394', 94, 1, 53, 0);
INSERT INTO `savsoft_answers` VALUES (28055, 31, '398', 94, 0, 53, 0);
INSERT INTO `savsoft_answers` VALUES (28056, 32, '404', 94, 0, 53, 0);
INSERT INTO `savsoft_answers` VALUES (28057, 33, '527', 94, 1, 53, 0);
INSERT INTO `savsoft_answers` VALUES (28058, 34, '410', 94, 0, 53, 0);
INSERT INTO `savsoft_answers` VALUES (28059, 36, '420', 94, 0, 53, 0);
INSERT INTO `savsoft_answers` VALUES (28060, 37, '427', 94, 0, 53, 0);
INSERT INTO `savsoft_answers` VALUES (28061, 38, '433', 94, 1, 53, 0);
INSERT INTO `savsoft_answers` VALUES (28062, 39, '452', 94, 0, 53, 0);
INSERT INTO `savsoft_answers` VALUES (28063, 40, '441', 94, 0, 53, 0);
INSERT INTO `savsoft_answers` VALUES (28064, 41, '457', 94, 0, 53, 0);
INSERT INTO `savsoft_answers` VALUES (28065, 42, '460', 94, 1, 53, 0);
INSERT INTO `savsoft_answers` VALUES (28066, 43, '468', 94, 0, 53, 0);
INSERT INTO `savsoft_answers` VALUES (28067, 44, '470', 94, 1, 53, 0);
INSERT INTO `savsoft_answers` VALUES (28068, 45, '476', 94, 0, 53, 0);
INSERT INTO `savsoft_answers` VALUES (28069, 46, '481', 94, 0, 53, 0);
INSERT INTO `savsoft_answers` VALUES (28070, 47, '488', 94, 1, 53, 0);
INSERT INTO `savsoft_answers` VALUES (29555, 18, '492', 95, 1, 54, 0);
INSERT INTO `savsoft_answers` VALUES (29556, 19, '389', 95, 0, 54, 0);
INSERT INTO `savsoft_answers` VALUES (29557, 20, '497', 95, 0, 54, 0);
INSERT INTO `savsoft_answers` VALUES (29558, 21, '503', 95, 0, 54, 0);
INSERT INTO `savsoft_answers` VALUES (29559, 22, '360', 95, 1, 54, 0);
INSERT INTO `savsoft_answers` VALUES (29560, 23, '507', 95, 1, 54, 0);
INSERT INTO `savsoft_answers` VALUES (29561, 24, '512', 95, 1, 54, 0);
INSERT INTO `savsoft_answers` VALUES (29562, 25, '310', 95, 1, 54, 0);
INSERT INTO `savsoft_answers` VALUES (29563, 26, '516', 95, 0, 54, 0);
INSERT INTO `savsoft_answers` VALUES (29564, 27, '521', 95, 0, 54, 0);
INSERT INTO `savsoft_answers` VALUES (29565, 30, '391', 95, 0, 54, 0);
INSERT INTO `savsoft_answers` VALUES (29566, 31, '397', 95, 1, 54, 0);
INSERT INTO `savsoft_answers` VALUES (29567, 32, '402', 95, 0, 54, 0);
INSERT INTO `savsoft_answers` VALUES (29568, 33, '528', 95, 0, 54, 0);
INSERT INTO `savsoft_answers` VALUES (29569, 34, '412', 95, 0, 54, 0);
INSERT INTO `savsoft_answers` VALUES (29570, 36, '423', 95, 0, 54, 0);
INSERT INTO `savsoft_answers` VALUES (29571, 37, '427', 95, 0, 54, 0);
INSERT INTO `savsoft_answers` VALUES (29572, 38, '430', 95, 0, 54, 0);
INSERT INTO `savsoft_answers` VALUES (29573, 39, '453', 95, 1, 54, 0);
INSERT INTO `savsoft_answers` VALUES (29574, 40, '442', 95, 1, 54, 0);
INSERT INTO `savsoft_answers` VALUES (29575, 41, '457', 95, 0, 54, 0);
INSERT INTO `savsoft_answers` VALUES (29576, 42, '461', 95, 0, 54, 0);
INSERT INTO `savsoft_answers` VALUES (29577, 43, '468', 95, 0, 54, 0);
INSERT INTO `savsoft_answers` VALUES (29578, 44, '470', 95, 1, 54, 0);
INSERT INTO `savsoft_answers` VALUES (29579, 45, '476', 95, 0, 54, 0);
INSERT INTO `savsoft_answers` VALUES (29580, 46, '482', 95, 0, 54, 0);
INSERT INTO `savsoft_answers` VALUES (29581, 47, '488', 95, 1, 54, 0);
INSERT INTO `savsoft_answers` VALUES (29608, 18, '492', 99, 1, 55, 0);
INSERT INTO `savsoft_answers` VALUES (29609, 19, '385', 99, 1, 55, 0);
INSERT INTO `savsoft_answers` VALUES (29610, 20, '497', 99, 0, 55, 0);
INSERT INTO `savsoft_answers` VALUES (29611, 21, '503', 99, 0, 55, 0);
INSERT INTO `savsoft_answers` VALUES (30087, 18, '492', 100, 1, 56, 0);
INSERT INTO `savsoft_answers` VALUES (30088, 19, '389', 100, 0, 56, 0);
INSERT INTO `savsoft_answers` VALUES (30089, 20, '497', 100, 0, 56, 0);
INSERT INTO `savsoft_answers` VALUES (30090, 21, '501', 100, 0, 56, 0);
INSERT INTO `savsoft_answers` VALUES (30091, 22, '360', 100, 1, 56, 0);
INSERT INTO `savsoft_answers` VALUES (30092, 23, '507', 100, 1, 56, 0);
INSERT INTO `savsoft_answers` VALUES (30093, 24, '510', 100, 0, 56, 0);
INSERT INTO `savsoft_answers` VALUES (30094, 25, '310', 100, 1, 56, 0);
INSERT INTO `savsoft_answers` VALUES (30095, 26, '516', 100, 0, 56, 0);
INSERT INTO `savsoft_answers` VALUES (30096, 27, '521', 100, 0, 56, 0);
INSERT INTO `savsoft_answers` VALUES (30097, 30, '392', 100, 0, 56, 0);
INSERT INTO `savsoft_answers` VALUES (30098, 31, '397', 100, 1, 56, 0);
INSERT INTO `savsoft_answers` VALUES (30099, 32, '401', 100, 0, 56, 0);
INSERT INTO `savsoft_answers` VALUES (30100, 33, '525', 100, 0, 56, 0);
INSERT INTO `savsoft_answers` VALUES (30101, 34, '411', 100, 0, 56, 0);
INSERT INTO `savsoft_answers` VALUES (30102, 36, '423', 100, 0, 56, 0);
INSERT INTO `savsoft_answers` VALUES (30103, 37, '427', 100, 0, 56, 0);
INSERT INTO `savsoft_answers` VALUES (30104, 38, '434', 100, 0, 56, 0);
INSERT INTO `savsoft_answers` VALUES (30105, 39, '452', 100, 0, 56, 0);
INSERT INTO `savsoft_answers` VALUES (30106, 40, '442', 100, 1, 56, 0);
INSERT INTO `savsoft_answers` VALUES (30107, 41, '459', 100, 1, 56, 0);
INSERT INTO `savsoft_answers` VALUES (30108, 42, '463', 100, 0, 56, 0);
INSERT INTO `savsoft_answers` VALUES (30109, 43, '468', 100, 0, 56, 0);
INSERT INTO `savsoft_answers` VALUES (30110, 44, '470', 100, 1, 56, 0);
INSERT INTO `savsoft_answers` VALUES (30111, 45, '476', 100, 0, 56, 0);
INSERT INTO `savsoft_answers` VALUES (30112, 46, '480', 100, 0, 56, 0);
INSERT INTO `savsoft_answers` VALUES (30113, 47, '486', 100, 0, 56, 0);
INSERT INTO `savsoft_answers` VALUES (30800, 18, '492', 103, 1, 57, 0);
INSERT INTO `savsoft_answers` VALUES (30801, 19, '388', 103, 0, 57, 0);
INSERT INTO `savsoft_answers` VALUES (30802, 20, '497', 103, 0, 57, 0);
INSERT INTO `savsoft_answers` VALUES (30803, 21, '503', 103, 0, 57, 0);
INSERT INTO `savsoft_answers` VALUES (30804, 22, '363', 103, 0, 57, 0);
INSERT INTO `savsoft_answers` VALUES (30805, 23, '507', 103, 1, 57, 0);
INSERT INTO `savsoft_answers` VALUES (30806, 24, '512', 103, 1, 57, 0);
INSERT INTO `savsoft_answers` VALUES (30807, 25, '310', 103, 1, 57, 0);
INSERT INTO `savsoft_answers` VALUES (30808, 26, '515', 103, 0, 57, 0);
INSERT INTO `savsoft_answers` VALUES (30809, 27, '521', 103, 0, 57, 0);
INSERT INTO `savsoft_answers` VALUES (30810, 30, '394', 103, 1, 57, 0);
INSERT INTO `savsoft_answers` VALUES (30811, 31, '395', 103, 0, 57, 0);
INSERT INTO `savsoft_answers` VALUES (30812, 32, '402', 103, 0, 57, 0);
INSERT INTO `savsoft_answers` VALUES (30813, 33, '528', 103, 0, 57, 0);
INSERT INTO `savsoft_answers` VALUES (30814, 34, '410', 103, 0, 57, 0);
INSERT INTO `savsoft_answers` VALUES (30815, 36, '421', 103, 1, 57, 0);
INSERT INTO `savsoft_answers` VALUES (30816, 37, '426', 103, 0, 57, 0);
INSERT INTO `savsoft_answers` VALUES (30817, 38, '431', 103, 0, 57, 0);
INSERT INTO `savsoft_answers` VALUES (30818, 39, '453', 103, 1, 57, 0);
INSERT INTO `savsoft_answers` VALUES (30819, 40, '442', 103, 1, 57, 0);
INSERT INTO `savsoft_answers` VALUES (30820, 41, '459', 103, 1, 57, 0);
INSERT INTO `savsoft_answers` VALUES (30821, 42, '461', 103, 0, 57, 0);
INSERT INTO `savsoft_answers` VALUES (30822, 43, '465', 103, 0, 57, 0);
INSERT INTO `savsoft_answers` VALUES (30823, 44, '473', 103, 0, 57, 0);
INSERT INTO `savsoft_answers` VALUES (30824, 45, '476', 103, 0, 57, 0);
INSERT INTO `savsoft_answers` VALUES (30825, 46, '480', 103, 0, 57, 0);
INSERT INTO `savsoft_answers` VALUES (30826, 47, '488', 103, 1, 57, 0);
INSERT INTO `savsoft_answers` VALUES (31232, 18, '490', 108, 0, 59, 0);
INSERT INTO `savsoft_answers` VALUES (31233, 19, '386', 108, 0, 59, 0);
INSERT INTO `savsoft_answers` VALUES (31234, 20, '499', 108, 0, 59, 0);
INSERT INTO `savsoft_answers` VALUES (31235, 21, '503', 108, 0, 59, 0);
INSERT INTO `savsoft_answers` VALUES (31236, 22, '363', 108, 0, 59, 0);
INSERT INTO `savsoft_answers` VALUES (31237, 23, '509', 108, 0, 59, 0);
INSERT INTO `savsoft_answers` VALUES (31238, 24, '512', 108, 1, 59, 0);
INSERT INTO `savsoft_answers` VALUES (31239, 25, '310', 108, 1, 59, 0);
INSERT INTO `savsoft_answers` VALUES (31240, 26, '517', 108, 0, 59, 0);
INSERT INTO `savsoft_answers` VALUES (31241, 27, '523', 108, 0, 59, 0);
INSERT INTO `savsoft_answers` VALUES (31242, 30, '390', 108, 0, 59, 0);
INSERT INTO `savsoft_answers` VALUES (31243, 31, '397', 108, 1, 59, 0);
INSERT INTO `savsoft_answers` VALUES (31244, 32, '404', 108, 0, 59, 0);
INSERT INTO `savsoft_answers` VALUES (31245, 33, '529', 108, 0, 59, 0);
INSERT INTO `savsoft_answers` VALUES (31246, 34, '412', 108, 0, 59, 0);
INSERT INTO `savsoft_answers` VALUES (31247, 36, '423', 108, 0, 59, 0);
INSERT INTO `savsoft_answers` VALUES (31248, 37, '426', 108, 0, 59, 0);
INSERT INTO `savsoft_answers` VALUES (31249, 38, '431', 108, 0, 59, 0);
INSERT INTO `savsoft_answers` VALUES (31250, 39, '454', 108, 0, 59, 0);
INSERT INTO `savsoft_answers` VALUES (31251, 40, '442', 108, 1, 59, 0);
INSERT INTO `savsoft_answers` VALUES (31252, 41, '455', 108, 0, 59, 0);
INSERT INTO `savsoft_answers` VALUES (31253, 42, '462', 108, 0, 59, 0);
INSERT INTO `savsoft_answers` VALUES (31254, 43, '467', 108, 0, 59, 0);
INSERT INTO `savsoft_answers` VALUES (31255, 44, '474', 108, 0, 59, 0);
INSERT INTO `savsoft_answers` VALUES (31256, 45, '476', 108, 0, 59, 0);
INSERT INTO `savsoft_answers` VALUES (31257, 46, '483', 108, 0, 59, 0);
INSERT INTO `savsoft_answers` VALUES (31258, 47, '485', 108, 0, 59, 0);
INSERT INTO `savsoft_answers` VALUES (32468, 18, '492', 105, 1, 61, 0);
INSERT INTO `savsoft_answers` VALUES (32469, 19, '388', 105, 0, 61, 0);
INSERT INTO `savsoft_answers` VALUES (32470, 20, '497', 105, 0, 61, 0);
INSERT INTO `savsoft_answers` VALUES (32471, 21, '503', 105, 0, 61, 0);
INSERT INTO `savsoft_answers` VALUES (32472, 22, '363', 105, 0, 61, 0);
INSERT INTO `savsoft_answers` VALUES (32473, 23, '507', 105, 1, 61, 0);
INSERT INTO `savsoft_answers` VALUES (32474, 24, '512', 105, 1, 61, 0);
INSERT INTO `savsoft_answers` VALUES (32475, 25, '310', 105, 1, 61, 0);
INSERT INTO `savsoft_answers` VALUES (32476, 26, '515', 105, 0, 61, 0);
INSERT INTO `savsoft_answers` VALUES (32477, 27, '523', 105, 0, 61, 0);
INSERT INTO `savsoft_answers` VALUES (32478, 30, '394', 105, 1, 61, 0);
INSERT INTO `savsoft_answers` VALUES (32479, 31, '397', 105, 1, 61, 0);
INSERT INTO `savsoft_answers` VALUES (32480, 32, '403', 105, 0, 61, 0);
INSERT INTO `savsoft_answers` VALUES (32481, 33, '528', 105, 0, 61, 0);
INSERT INTO `savsoft_answers` VALUES (32482, 34, '412', 105, 0, 61, 0);
INSERT INTO `savsoft_answers` VALUES (32483, 36, '421', 105, 1, 61, 0);
INSERT INTO `savsoft_answers` VALUES (32484, 37, '427', 105, 0, 61, 0);
INSERT INTO `savsoft_answers` VALUES (32485, 38, '431', 105, 0, 61, 0);
INSERT INTO `savsoft_answers` VALUES (32486, 39, '453', 105, 1, 61, 0);
INSERT INTO `savsoft_answers` VALUES (32487, 40, '442', 105, 1, 61, 0);
INSERT INTO `savsoft_answers` VALUES (32488, 41, '459', 105, 1, 61, 0);
INSERT INTO `savsoft_answers` VALUES (32489, 42, '460', 105, 1, 61, 0);
INSERT INTO `savsoft_answers` VALUES (32490, 43, '468', 105, 0, 61, 0);
INSERT INTO `savsoft_answers` VALUES (32491, 44, '474', 105, 0, 61, 0);
INSERT INTO `savsoft_answers` VALUES (32492, 45, '476', 105, 0, 61, 0);
INSERT INTO `savsoft_answers` VALUES (32493, 46, '480', 105, 0, 61, 0);
INSERT INTO `savsoft_answers` VALUES (32494, 47, '488', 105, 1, 61, 0);
INSERT INTO `savsoft_answers` VALUES (32767, 18, '490', 112, 0, 62, 0);
INSERT INTO `savsoft_answers` VALUES (32768, 19, '385', 112, 1, 62, 0);
INSERT INTO `savsoft_answers` VALUES (32769, 20, '499', 112, 0, 62, 0);
INSERT INTO `savsoft_answers` VALUES (32770, 21, '501', 112, 0, 62, 0);
INSERT INTO `savsoft_answers` VALUES (32771, 22, '361', 112, 0, 62, 0);
INSERT INTO `savsoft_answers` VALUES (32772, 23, '507', 112, 1, 62, 0);
INSERT INTO `savsoft_answers` VALUES (32773, 24, '511', 112, 0, 62, 0);
INSERT INTO `savsoft_answers` VALUES (32774, 25, '314', 112, 0, 62, 0);
INSERT INTO `savsoft_answers` VALUES (32775, 26, '515', 112, 0, 62, 0);
INSERT INTO `savsoft_answers` VALUES (32776, 27, '522', 112, 0, 62, 0);
INSERT INTO `savsoft_answers` VALUES (32779, 18, '492', 113, 1, 63, 0);
INSERT INTO `savsoft_answers` VALUES (33208, 18, '492', 115, 1, 64, 0);
INSERT INTO `savsoft_answers` VALUES (33209, 19, '386', 115, 0, 64, 0);
INSERT INTO `savsoft_answers` VALUES (33210, 20, '497', 115, 0, 64, 0);
INSERT INTO `savsoft_answers` VALUES (33211, 21, '501', 115, 0, 64, 0);
INSERT INTO `savsoft_answers` VALUES (33212, 22, '361', 115, 0, 64, 0);
INSERT INTO `savsoft_answers` VALUES (33213, 23, '506', 115, 0, 64, 0);
INSERT INTO `savsoft_answers` VALUES (33214, 24, '513', 115, 0, 64, 0);
INSERT INTO `savsoft_answers` VALUES (33215, 25, '311', 115, 0, 64, 0);
INSERT INTO `savsoft_answers` VALUES (33216, 26, '516', 115, 0, 64, 0);
INSERT INTO `savsoft_answers` VALUES (33217, 27, '521', 115, 0, 64, 0);
INSERT INTO `savsoft_answers` VALUES (33218, 30, '391', 115, 0, 64, 0);
INSERT INTO `savsoft_answers` VALUES (33219, 31, '395', 115, 0, 64, 0);
INSERT INTO `savsoft_answers` VALUES (33220, 32, '401', 115, 0, 64, 0);
INSERT INTO `savsoft_answers` VALUES (33221, 33, '526', 115, 0, 64, 0);
INSERT INTO `savsoft_answers` VALUES (33222, 34, '410', 115, 0, 64, 0);
INSERT INTO `savsoft_answers` VALUES (33223, 36, '421', 115, 1, 64, 0);
INSERT INTO `savsoft_answers` VALUES (33224, 37, '425', 115, 0, 64, 0);
INSERT INTO `savsoft_answers` VALUES (33225, 38, '430', 115, 0, 64, 0);
INSERT INTO `savsoft_answers` VALUES (33226, 39, '453', 115, 1, 64, 0);
INSERT INTO `savsoft_answers` VALUES (33227, 40, '441', 115, 0, 64, 0);
INSERT INTO `savsoft_answers` VALUES (33228, 41, '456', 115, 0, 64, 0);
INSERT INTO `savsoft_answers` VALUES (33229, 42, '460', 115, 1, 64, 0);
INSERT INTO `savsoft_answers` VALUES (33230, 43, '466', 115, 0, 64, 0);
INSERT INTO `savsoft_answers` VALUES (33231, 44, '471', 115, 0, 64, 0);
INSERT INTO `savsoft_answers` VALUES (33232, 45, '476', 115, 0, 64, 0);
INSERT INTO `savsoft_answers` VALUES (33233, 47, '486', 115, 0, 64, 0);
INSERT INTO `savsoft_answers` VALUES (33979, 18, '490', 116, 0, 65, 0);
INSERT INTO `savsoft_answers` VALUES (33980, 19, '386', 116, 0, 65, 0);
INSERT INTO `savsoft_answers` VALUES (33981, 20, '497', 116, 0, 65, 0);
INSERT INTO `savsoft_answers` VALUES (33982, 21, '501', 116, 0, 65, 0);
INSERT INTO `savsoft_answers` VALUES (33983, 22, '360', 116, 1, 65, 0);
INSERT INTO `savsoft_answers` VALUES (33984, 23, '507', 116, 1, 65, 0);
INSERT INTO `savsoft_answers` VALUES (33985, 24, '513', 116, 0, 65, 0);
INSERT INTO `savsoft_answers` VALUES (33986, 25, '314', 116, 0, 65, 0);
INSERT INTO `savsoft_answers` VALUES (33987, 26, '517', 116, 0, 65, 0);
INSERT INTO `savsoft_answers` VALUES (33988, 27, '523', 116, 0, 65, 0);
INSERT INTO `savsoft_answers` VALUES (33989, 30, '394', 116, 1, 65, 0);
INSERT INTO `savsoft_answers` VALUES (33990, 31, '397', 116, 1, 65, 0);
INSERT INTO `savsoft_answers` VALUES (33991, 32, '402', 116, 0, 65, 0);
INSERT INTO `savsoft_answers` VALUES (33992, 33, '526', 116, 0, 65, 0);
INSERT INTO `savsoft_answers` VALUES (33993, 34, '412', 116, 0, 65, 0);
INSERT INTO `savsoft_answers` VALUES (33994, 36, '421', 116, 1, 65, 0);
INSERT INTO `savsoft_answers` VALUES (33995, 37, '427', 116, 0, 65, 0);
INSERT INTO `savsoft_answers` VALUES (33996, 38, '430', 116, 0, 65, 0);
INSERT INTO `savsoft_answers` VALUES (33997, 39, '450', 116, 0, 65, 0);
INSERT INTO `savsoft_answers` VALUES (33998, 40, '442', 116, 1, 65, 0);
INSERT INTO `savsoft_answers` VALUES (33999, 41, '458', 116, 0, 65, 0);
INSERT INTO `savsoft_answers` VALUES (34012, 80, '307', 481, 0, 285, 1);
INSERT INTO `savsoft_answers` VALUES (34018, 80, '691', 481, 1, 287, 1);
INSERT INTO `savsoft_answers` VALUES (34020, 81, '696', 481, 0, 287, 2);
INSERT INTO `savsoft_answers` VALUES (34026, 80, '306', 481, 0, 289, 1);
INSERT INTO `savsoft_answers` VALUES (34028, 81, '698', 481, 0, 289, 2);
INSERT INTO `savsoft_answers` VALUES (34302, 48, '533', 496, 1, 286, 0);
INSERT INTO `savsoft_answers` VALUES (34303, 49, '537', 496, 0, 286, 1);
INSERT INTO `savsoft_answers` VALUES (34304, 50, '544', 496, 0, 286, 2);
INSERT INTO `savsoft_answers` VALUES (34305, 51, '546', 496, 0, 286, 3);
INSERT INTO `savsoft_answers` VALUES (34306, 52, '550', 496, 1, 286, 4);
INSERT INTO `savsoft_answers` VALUES (34307, 54, '562', 496, 0, 286, 6);
INSERT INTO `savsoft_answers` VALUES (34308, 48, '533', 498, 1, 288, 0);
INSERT INTO `savsoft_answers` VALUES (34309, 49, '535', 498, 0, 288, 1);
INSERT INTO `savsoft_answers` VALUES (34310, 50, '543', 498, 1, 288, 2);
INSERT INTO `savsoft_answers` VALUES (34311, 51, '546', 498, 0, 288, 3);
INSERT INTO `savsoft_answers` VALUES (34312, 52, '550', 498, 1, 288, 4);
INSERT INTO `savsoft_answers` VALUES (34313, 53, '555', 498, 1, 288, 5);
INSERT INTO `savsoft_answers` VALUES (34314, 54, '561', 498, 0, 288, 6);
INSERT INTO `savsoft_answers` VALUES (34315, 55, '566', 498, 0, 288, 7);
INSERT INTO `savsoft_answers` VALUES (34316, 48, '531', 508, 0, 290, 0);
INSERT INTO `savsoft_answers` VALUES (34317, 49, '536', 508, 1, 290, 1);
INSERT INTO `savsoft_answers` VALUES (34318, 50, '543', 508, 1, 290, 2);
INSERT INTO `savsoft_answers` VALUES (34319, 51, '549', 508, 0, 290, 3);
INSERT INTO `savsoft_answers` VALUES (34325, 121, '849', 511, 1, 292, 0);
INSERT INTO `savsoft_answers` VALUES (34326, 122, '855', 511, 1, 292, 1);
INSERT INTO `savsoft_answers` VALUES (34328, 123, '861', 511, 1, 292, 2);
INSERT INTO `savsoft_answers` VALUES (34331, 121, '885', 512, 0, 294, 0);
INSERT INTO `savsoft_answers` VALUES (34332, 122, '880', 512, 1, 294, 1);
INSERT INTO `savsoft_answers` VALUES (34334, 124, '889', 512, 1, 294, 3);
INSERT INTO `savsoft_answers` VALUES (34335, 48, '531', 514, 0, 295, 0);
INSERT INTO `savsoft_answers` VALUES (34336, 49, '537', 514, 0, 295, 1);
INSERT INTO `savsoft_answers` VALUES (34337, 50, '543', 514, 1, 295, 2);
INSERT INTO `savsoft_answers` VALUES (34338, 51, '549', 514, 0, 295, 3);
INSERT INTO `savsoft_answers` VALUES (34339, 52, '554', 514, 0, 295, 4);
INSERT INTO `savsoft_answers` VALUES (34340, 53, '559', 514, 0, 295, 5);
INSERT INTO `savsoft_answers` VALUES (34341, 54, '564', 514, 0, 295, 6);
INSERT INTO `savsoft_answers` VALUES (34342, 55, '566', 514, 0, 295, 7);
INSERT INTO `savsoft_answers` VALUES (34343, 56, '573', 514, 0, 295, 8);
INSERT INTO `savsoft_answers` VALUES (34344, 57, '579', 514, 0, 295, 9);
INSERT INTO `savsoft_answers` VALUES (34345, 58, '763', 514, 0, 295, 10);
INSERT INTO `savsoft_answers` VALUES (34346, 59, '766', 514, 0, 295, 11);
INSERT INTO `savsoft_answers` VALUES (34347, 60, '757', 514, 0, 295, 12);
INSERT INTO `savsoft_answers` VALUES (34348, 61, '842', 514, 0, 295, 13);
INSERT INTO `savsoft_answers` VALUES (34349, 62, '746', 514, 0, 295, 14);
INSERT INTO `savsoft_answers` VALUES (34350, 63, '771', 514, 0, 295, 15);
INSERT INTO `savsoft_answers` VALUES (34351, 64, '783', 514, 0, 295, 16);
INSERT INTO `savsoft_answers` VALUES (34352, 65, '617', 514, 1, 295, 17);
INSERT INTO `savsoft_answers` VALUES (34353, 66, '622', 514, 0, 295, 18);
INSERT INTO `savsoft_answers` VALUES (34354, 67, '626', 514, 1, 295, 19);
INSERT INTO `savsoft_answers` VALUES (34355, 68, '631', 514, 0, 295, 20);
INSERT INTO `savsoft_answers` VALUES (34356, 69, '639', 514, 0, 295, 21);
INSERT INTO `savsoft_answers` VALUES (34357, 70, '644', 514, 0, 295, 22);
INSERT INTO `savsoft_answers` VALUES (34358, 71, '649', 514, 0, 295, 23);
INSERT INTO `savsoft_answers` VALUES (34359, 72, '654', 514, 0, 295, 24);
INSERT INTO `savsoft_answers` VALUES (34360, 73, '659', 514, 0, 295, 25);
INSERT INTO `savsoft_answers` VALUES (34361, 74, '664', 514, 0, 295, 26);
INSERT INTO `savsoft_answers` VALUES (34362, 75, '669', 514, 0, 295, 27);
INSERT INTO `savsoft_answers` VALUES (34363, 76, '674', 514, 0, 295, 28);
INSERT INTO `savsoft_answers` VALUES (34364, 77, '679', 514, 0, 295, 29);
INSERT INTO `savsoft_answers` VALUES (34365, 78, '684', 514, 0, 295, 30);
INSERT INTO `savsoft_answers` VALUES (34366, 79, '689', 514, 1, 295, 31);
INSERT INTO `savsoft_answers` VALUES (34367, 80, '694', 514, 0, 295, 32);
INSERT INTO `savsoft_answers` VALUES (34368, 81, '699', 514, 0, 295, 33);
INSERT INTO `savsoft_answers` VALUES (34369, 82, '704', 514, 0, 295, 34);
INSERT INTO `savsoft_answers` VALUES (34370, 83, '823', 514, 0, 295, 35);
INSERT INTO `savsoft_answers` VALUES (34371, 84, '833', 514, 1, 295, 36);
INSERT INTO `savsoft_answers` VALUES (34372, 85, '828', 514, 0, 295, 37);
INSERT INTO `savsoft_answers` VALUES (34373, 86, '818', 514, 0, 295, 38);
INSERT INTO `savsoft_answers` VALUES (34376, 87, '813', 514, 0, 295, 39);
INSERT INTO `savsoft_answers` VALUES (34377, 48, '534', 515, 0, 296, 0);
INSERT INTO `savsoft_answers` VALUES (34378, 49, '538', 515, 0, 296, 1);
INSERT INTO `savsoft_answers` VALUES (34379, 50, '543', 515, 1, 296, 2);
INSERT INTO `savsoft_answers` VALUES (34380, 48, '534', 516, 0, 297, 0);
INSERT INTO `savsoft_answers` VALUES (34381, 49, '539', 516, 0, 297, 1);

-- ----------------------------
-- Table structure for savsoft_category
-- ----------------------------
DROP TABLE IF EXISTS `savsoft_category`;
CREATE TABLE `savsoft_category`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of savsoft_category
-- ----------------------------
INSERT INTO `savsoft_category` VALUES (3, 'USM');
INSERT INTO `savsoft_category` VALUES (4, 'SBMPTN - IPA');
INSERT INTO `savsoft_category` VALUES (5, 'SBMPTN - IPS');
INSERT INTO `savsoft_category` VALUES (6, 'USM v2');
INSERT INTO `savsoft_category` VALUES (7, 'USM S2');

-- ----------------------------
-- Table structure for savsoft_group
-- ----------------------------
DROP TABLE IF EXISTS `savsoft_group`;
CREATE TABLE `savsoft_group`  (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` float NOT NULL,
  `valid_for_days` int(11) NOT NULL DEFAULT 0,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`gid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of savsoft_group
-- ----------------------------
INSERT INTO `savsoft_group` VALUES (1, 'USM S1 IBI KKG', 0, 0, '');
INSERT INTO `savsoft_group` VALUES (2, 'USM S2 IBI KKG', 0, 0, '');

-- ----------------------------
-- Table structure for savsoft_level
-- ----------------------------
DROP TABLE IF EXISTS `savsoft_level`;
CREATE TABLE `savsoft_level`  (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `level_name` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`lid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of savsoft_level
-- ----------------------------
INSERT INTO `savsoft_level` VALUES (3, 'USM');
INSERT INTO `savsoft_level` VALUES (4, 'SBMPTN');
INSERT INTO `savsoft_level` VALUES (5, 'USM v2');
INSERT INTO `savsoft_level` VALUES (6, 'USM S2');

-- ----------------------------
-- Table structure for savsoft_notification
-- ----------------------------
DROP TABLE IF EXISTS `savsoft_notification`;
CREATE TABLE `savsoft_notification`  (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `notification_date` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `click_action` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `notification_to` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `response` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `uid` int(11) NOT NULL,
  `viewed` int(11) NOT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of savsoft_notification
-- ----------------------------
INSERT INTO `savsoft_notification` VALUES (1, '2019-03-18 13:20:37', 'Developer', 'test', 'http://localhost/savsoftquiz_v5/', '/topics/SavsoftQuiz', '<HTML>\n<HEAD>\n<TITLE>Invalid (legacy) Server-key delivered or Sender is not authorized to perform request.</TITLE>\n</HEAD>\n<BODY BGCOLOR=\"#FFFFFF\" TEXT=\"#000000\">\n<H1>Invalid (legacy) Server-key delivered or Sender is not authorized to perform request.</H1>\n<H2>Error 401</H2>\n</BODY>\n</HTML>\n', 0, 0);
INSERT INTO `savsoft_notification` VALUES (2, '2019-03-18 19:41:51', 'Developer', 'Helllo', 'http://localhost/savsoftquiz_v5/', '/topics/SavsoftQuiz', '<HTML>\n<HEAD>\n<TITLE>Invalid (legacy) Server-key delivered or Sender is not authorized to perform request.</TITLE>\n</HEAD>\n<BODY BGCOLOR=\"#FFFFFF\" TEXT=\"#000000\">\n<H1>Invalid (legacy) Server-key delivered or Sender is not authorized to perform request.</H1>\n<H2>Error 401</H2>\n</BODY>\n</HTML>\n', 0, 0);

-- ----------------------------
-- Table structure for savsoft_options
-- ----------------------------
DROP TABLE IF EXISTS `savsoft_options`;
CREATE TABLE `savsoft_options`  (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `qid` int(11) NOT NULL,
  `q_option` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `q_option_match` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `q_option1` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score` float NOT NULL DEFAULT 0,
  `q_option_match1` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`oid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 898 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of savsoft_options
-- ----------------------------
INSERT INTO `savsoft_options` VALUES (90, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Perawatan sepeda motor ini penting dilakukan karena sesuaifungsinya</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (91, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">kendaraan bermotor harus layakpakai</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (92, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">sepeda motor perlu perawatan yang serius agar tetap nyaman untukdipakai</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (93, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">komponen kendaraan bermotor harus layakpakai</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (94, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">kendaraan bermotor harusnyaman</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (95, 0, '<p>argumentasi</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (96, 0, '<p>narasi</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (97, 0, '<p>deskripsi</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (98, 0, '<p>eksposisi</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (99, 0, '<p>persuasi</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (100, 0, '<p><span style=\"font-family: \'Times New Roman\', serif; font-size: 16px; text-align: justify;\">bahaya mengancam jiwa</span><span style=\"font-family: \'Times New Roman\', serif; font-size: 16px; text-align: justify; letter-spacing: -0.5pt;\">&nbsp;</span><span style=\"font-family: \'Times New Roman\', serif; font-size: 16px; text-align: justify;\">manusia</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (101, 0, '<p class=\"MsoListParagraph\" style=\"margin-left: .5in; text-align: justify; mso-list: l0 level2 lfo1; tab-stops: 47.2pt;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">kelalaian manusia mematuhi rambu lalulintas</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (102, 0, '<p class=\"MsoListParagraph\" style=\"margin-left: .5in; text-align: justify; mso-list: l0 level2 lfo1; tab-stops: 47.2pt;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">kecelakaan lalu lintas akibat kelalaianmanusia</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (103, 0, '<p class=\"MsoListParagraph\" style=\"margin-left: .5in; text-align: justify; mso-list: l0 level2 lfo1; tab-stops: 47.2pt;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">kelalaian memakai rambu lalu lintas menyebabkan kecelakaan yang mengancamjiwa</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (104, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">kecelakaan terjadi karena tidak mematuhi rambu lalulintas</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (105, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Minyak bumi bukan satu-satunya sumberenergi</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (106, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Perlunya sumber energi alternatif dalamkehidupan</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (107, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Pemakai sumber minyak bumi sangatbesar</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (108, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Persedian minyak bumi semakinberkurang</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (109, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Dunia akan mengalami krisisenergi</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (110, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">bahasan</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (111, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">kisahan</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (112, 0, '<p>perian</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (113, 0, '<p>paparan</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (114, 0, '<p>ajakan</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (115, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Sumber minyak bumi yang sangatbesar</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (116, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Dunia akan mengalami krisis minyakbumi</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (117, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Pemakaian sumber minyak bumi yang besar untuk berbakaikeperluan</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (118, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Minyak bumi sumber energiutama</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (119, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Pemakaian sumber minyak yangberlebihan</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (120, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">pembukaan pendaftaran bagi para peserta turnamen sepakbola Sulaiman CupXIII</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (121, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Turnamen sepakbola Sulaiman Cup digelar dalam rangka HUT ke-60 TNIAU</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (122, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Pangkalan <span style=\"letter-spacing: -.1pt;\">TNI </span>AU Sulaiman akan menggelar turnamen Sepakbola SulaimanCup</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (123, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Penyelenggaraan turnamen Sepakbola Sulaiman Cup untuk ke-13kalinya</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (124, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Turnamen terbuka sepakbola Sulaiman Cup XIII memperebutkan banyakpiala</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (125, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Hukuman yang dijatuhkan kepada Persebaya perlu ditinjaulagi</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (126, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Keputusan Komisi Disiplin sudah tepat tentang hukumanitu</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (127, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Langkah Divisi II memang harus dijalani olehPersebaya</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (128, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Bagaimana hukuman yang pantas untukPersebaya?</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (129, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Komisi Disiplin PSSI berperan dalam menjatuhkanhukuman</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (130, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">pengemudi yang baik selalu mematuhi peraturan lalulintas</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (131, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Pengemudiyangtidakmematuhiperaturanlalulintasbukanpengemudiyangbaik</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (132, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Pengemudi yang baik pasti mematuhi peraturan lalulintas</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (133, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Para pengemudi itu merupakan pengemudi yangbaik</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (134, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Setiap yang melanggar peraturan lalu lintas bukan merupakan pengemudi yangbaik</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (135, 0, '<p><!--[if !supportLists]-->Berikut ini adalah identitas saya,</p>\n<p>&nbsp;</p>\n<p>nama&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Ibu Sasmihtha, S.S.</p>\n<p>&nbsp;</p>\n<p>tempat/tanggal lahir &nbsp;&nbsp; : Bogor/30 Oktober 1985</p>\n<p>&nbsp;</p>\n<p>agama &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Islam</p>\n<p>alamat&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : JalanTerataiNo.245,Bandung</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (136, 0, '<p><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">Yang bertanda tangan di bawahini, </span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">nama &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : IbuSasmihtha</span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">lahir &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Bogor, 30 Oktober 1985 </span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">agama&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Islam</span></p>\n<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">alamat&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Jln. Teratai No. 245 Bandung</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (137, 0, '<p><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">Adapun identitas saya, </span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">nama &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;: Sasmihtha,S.S.</span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">tempat, tanggal lahir&nbsp;&nbsp; : Bogor 30 Oktober 1985 </span></p>\n<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">alamat&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;: Jalan. Teratai No. 245 Bandung</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (138, 0, '<p><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">Dengan surat ini saya sampaikan bahwa saya</span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">nama&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Sasmihtha,S.S.</span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">tempat, tanggal lahir &nbsp; : Bogor 30 Oktober 1985 </span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">agama&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Islam</span></p>\n<p>&nbsp;</p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">alamat &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Jln. Teratai 245 Bandung</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (139, 0, '<p><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">Bersama surat ini, saya</span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">nama&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;: Ibu Sasmihtha,S.S.</span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">tanggal lahir&nbsp;&nbsp;&nbsp; : Bogor, 30Oktober1985 </span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">agama&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :Islam</span></p>\n<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">alamat&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;: Jalan. Teratai 245 Bandung</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (140, 0, '<p>speech</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (141, 0, '<p>vocal cords</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (142, 0, '<p>sound waves</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (143, 0, '<p>air stream</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (144, 0, '<p>speech production</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (145, 0, '<p>breath</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (146, 0, '<p>send</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (147, 0, '<p>breathe</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (148, 0, '<p>move</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (149, 0, '<p>talk</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (150, 0, '<p>energy</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (151, 0, '<p>sound waves</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (152, 0, '<p>the steady stream of air</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (153, 0, '<p>the vocal tract</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (154, 0, '<p>the vocal cords</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (155, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">The air stream is inaudible if we don&rsquo;t breathe normally</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (156, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">When we talk, the vocal cords open and close slowly</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (157, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">The vocal tract must charge shape to make speech sounds</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (158, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">The air stream must vibrate rapidly to make the stream in audible</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (159, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">The vocal tract cause the air stream to vibrate normally</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (160, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">the benefits of advertisements</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (161, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">advertisements in general</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (162, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">the advantages and disadvantages of printed newspapers</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (163, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">the disadvantages of having advertisements</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (164, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">the competition of advertisements in newspaper</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (165, 0, '<p><span style=\"font-family: \'Times New Roman\', serif; font-size: 16px;\">the information given by advertisements</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (166, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">the benefits of advertisements</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (167, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">the people who need advertisement</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (168, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">the bad of having advertisement on newspaper</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (169, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">the ways to use advertisement</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (170, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">it makes the product</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (171, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">it gives us information about the company</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (172, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">it promotes business, especially the product sale</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (173, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">it finds the new product for the company</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (174, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">it gives inspiration for making the other product</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (175, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">it needs a lot money to print ads</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (176, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">it is an easy way to help shopping</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (177, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">it takes up a lot of space in the paper</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (178, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">some people don&rsquo;t like finding junk mail in their letter boxes</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (179, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">It influences people to buy things they don&rsquo;t need</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (180, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">the borders of Nepal</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (181, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">the animals in Nepal</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (182, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">the facilities in Nepal</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (183, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">the people in Nepal</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (184, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">the scenery in Nepal</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (185, 0, '<p>a modern</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (186, 0, '<p>an agriculture</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (187, 0, '<p>an isolated</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (188, 0, '<p>a developing</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (189, 0, '<p>a primitive</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (190, 0, '<p>(-4,0)</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (191, 0, '<p>(4,0)</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (192, 0, '<p>(2,2)</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (193, 0, '<p>(0,4)</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (194, 0, '<p>(0,-4)</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (195, 0, '<p>(2,0)</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (196, 0, '<p>(-2,0)</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (197, 0, '<p>(0,4)</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (198, 0, '<p>(0,-4)</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (199, 0, '<p>(3,2)</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (200, 0, '<p>Rp 175.000</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (201, 0, '<p>Rp 200.000</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (202, 0, '<p>Rp 225.000</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (203, 0, '<p>Rp 250.000</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (204, 0, '<p>semuanya salah</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (205, 0, '<p>x=1 dan y=3</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (206, 0, '<p>x=1 dan y=-3</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (207, 0, '<p>x=-1 dan y=-3</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (208, 0, '<p>x=3 dan y=1</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (209, 0, '<p>x=-2 dan y=1</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (210, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">3x<sup>2 </sup>+ 6x</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (211, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">3x<sup>2 </sup>&ndash; 6x</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (212, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">6x + 6</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (213, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">-6x &ndash; 6</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (214, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">6x &ndash; 6</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (215, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">4(x<sup>2</sup> &ndash; 25)<sup>3</sup></span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (216, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">4(2x &ndash; 25)<sup>3</sup></span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (217, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">2x(x<sup>2 </sup>&ndash; 25)<sup>3</sup></span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (218, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">8x(x &ndash; 25)<sup>3</sup></span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (219, 0, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">8x(x<sup>2 </sup>&ndash; 25)<sup>3</sup></span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (220, 0, '<p><img src=\"../../../images/uploads/2.PNG\" alt=\"\" width=\"72\" height=\"56\" /></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (221, 0, '<p><img src=\"../../../images/uploads/3.PNG\" alt=\"\" width=\"105\" height=\"54\" /></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (222, 0, '<p><img src=\"../../../images/uploads/4.PNG\" alt=\"\" width=\"99\" height=\"52\" /></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (223, 0, '<p><img src=\"../../../images/uploads/5.PNG\" alt=\"\" width=\"98\" height=\"51\" /></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (224, 0, '<p><img src=\"../../../images/uploads/6.PNG\" alt=\"\" width=\"73\" height=\"53\" /></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (225, 0, '<p><img src=\"../../../images/uploads/3.PNG\" alt=\"\" width=\"105\" height=\"54\" /></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (226, 0, '<p><img src=\"../../../images/uploads/4.PNG\" alt=\"\" width=\"99\" height=\"52\" /></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (227, 0, '<p><img src=\"../../../images/uploads/5.PNG\" alt=\"\" width=\"98\" height=\"51\" /></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (228, 0, '<p><img src=\"../../../images/uploads/6.PNG\" alt=\"\" width=\"73\" height=\"53\" /></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (229, 0, '<p><img src=\"../../../images/uploads/7.PNG\" alt=\"\" width=\"103\" height=\"53\" /></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (230, 0, '<p><img src=\"../../../images/uploads/9.PNG\" alt=\"\" /></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (231, 0, '<p><img src=\"../../../images/uploads/10.PNG\" alt=\"\" /></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (232, 0, '<p><img src=\"../../../images/uploads/11.PNG\" alt=\"\" /></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (233, 0, '<p><img src=\"../../../images/uploads/12.PNG\" alt=\"\" /></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (234, 0, '<p><img src=\"../../../images/uploads/13.PNG\" alt=\"\" /></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (235, 0, '<p>2,7 km</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (236, 0, '<p>270 km</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (237, 0, '<p>27 km</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (238, 0, '<p>2.700 km</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (239, 0, '<p>0,27 km</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (240, 17, '<p>frf</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (241, 17, '<p>frfr</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (242, 17, '<p>frfr</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (243, 17, '<p>frfr</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (244, 17, '<p>frfr</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (310, 25, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Hukuman yang dijatuhkan kepada Persebaya perlu ditinjau lagi</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (311, 25, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Keputusan Komisi Disiplin sudah tepat tentang hukuman itu</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (312, 25, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Langkah Divisi II memang harus dijalani oleh Persebaya</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (313, 25, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Bagaimana hukuman yang pantas untuk Persebaya?</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (314, 25, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Komisi Disiplin PSSI berperan dalam menjatuhkan hukuman</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (360, 22, '<p>bahasan</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (361, 22, '<p>kisahan</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (362, 22, '<p>perian</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (363, 22, '<p>paparan</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (364, 22, '<p>ajakan</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (385, 19, '<p>argumentasi</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (386, 19, '<p>narasi</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (387, 19, '<p>deskripsi</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (388, 19, '<p>eksposisi</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (389, 19, '<p>persuasi</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (390, 30, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">speech</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (391, 30, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">vocal cords</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (392, 30, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">sounds waves&nbsp;</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (393, 30, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">are stream</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (394, 30, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-font-width: 99%; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">speech production</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (395, 31, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">breath</span><!--EndFragment-->&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (396, 31, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">send</span><!--EndFragment-->&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (397, 31, '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt 0.5in; text-align: justify; text-indent: -17.85pt;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\" data-mce-mark=\"1\">breathe&nbsp;</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (398, 31, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-font-width: 97%; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">move</span><!--EndFragment--></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (399, 31, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">talk</span><!--EndFragment-->&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (400, 32, '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt 0.5in; text-align: justify; text-indent: -17.85pt;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\" data-mce-mark=\"1\"><span style=\"font-stretch: normal; font-size: 7pt; font-family: \'Times New Roman\';\" data-mce-mark=\"1\">&nbsp;</span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\" data-mce-mark=\"1\">Energy </span></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (401, 32, '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt 0.5in; text-align: justify; text-indent: -17.85pt;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">Sound waves </span></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (402, 32, '<p><!--EndFragment--></p>\n<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: normal; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\" data-mce-mark=\"1\">The steady stream of air </span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (403, 32, '<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 99%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 99%; font-family: \'Times New Roman\',\'serif\';\">The vocal tract&nbsp;</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (404, 32, '<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 99%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 99%; font-family: \'Times New Roman\',\'serif\';\">The vocal cords&nbsp;</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (410, 34, '<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 99%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 99%; font-family: \'Times New Roman\',\'serif\';\">the benefits of advertisements&nbsp;</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (411, 34, '<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 99%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 99%; font-family: \'Times New Roman\',\'serif\';\">advertisements in general&nbsp;</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (412, 34, '<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 97%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 97%; font-family: \'Times New Roman\',\'serif\';\">the advantages and disadvantages of printed newspapers&nbsp;</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (413, 34, '<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 99%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 99%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\"><span style=\"font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;</span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 99%; font-family: \'Times New Roman\',\'serif\';\">the disadvantages of having advertisements&nbsp;</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (414, 34, '<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 99%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">the competition of advertisements in newspaper</span><!--EndFragment-->&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (415, 35, '<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 99%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 99%; font-family: \'Times New Roman\',\'serif\';\">the benefits of advertisements&nbsp;</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (416, 35, '<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 99%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 99%; font-family: \'Times New Roman\',\'serif\';\">advertisements in general&nbsp;</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (417, 35, '<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 97%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 97%; font-family: \'Times New Roman\',\'serif\';\">the advantages and disadvantages of printed newspapers&nbsp;</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (418, 35, '<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 99%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 99%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\"><span style=\"font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;</span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 99%; font-family: \'Times New Roman\',\'serif\';\">the disadvantages of having advertisements&nbsp;</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (419, 35, '<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 99%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">the competition of advertisements in newspaper</span><!--EndFragment-->&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (420, 36, '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt 0.5in; text-align: justify; text-indent: -17.85pt;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\"><span style=\"font-stretch: normal; font-size: 7pt; font-family: \'Times New Roman\';\">&nbsp;</span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">the information given by advertisements&nbsp;</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (421, 36, '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt 0.5in; text-align: justify; text-indent: -17.85pt;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">the benefits of advertisements&nbsp;</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (422, 36, '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt 0.5in; text-align: justify; text-indent: -17.85pt;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\"><span style=\"font-stretch: normal; font-size: 7pt; font-family: \'Times New Roman\';\">&nbsp;</span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">the people who need advertisement&nbsp;</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (423, 36, '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt 0.5in; text-align: justify; text-indent: -17.85pt;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\"><span style=\"font-stretch: normal; font-size: 7pt; font-family: \'Times New Roman\';\">&nbsp;</span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">the bad of having advertisement on newspaper&nbsp;</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (424, 36, '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt 0.5in; text-align: justify; text-indent: -17.85pt;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">the ways to use advertisement&nbsp;</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (425, 37, '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt 0.5in; text-align: justify; text-indent: -17.85pt;\"><!--[if !supportLists]-->it makes the product</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (426, 37, '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt 0.5in; text-align: justify; text-indent: -17.85pt;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">it gives us information about the company </span></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (427, 37, '<p><!--EndFragment--></p>\n<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: normal; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">it promotes business, especially the product sale </span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (428, 37, '<p><!--EndFragment--></p>\n<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: normal; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">it finds the new product for the company </span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (429, 37, '<p><!--EndFragment--></p>\n<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: normal; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">It gives inspiration for making the other product </span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (430, 38, '<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 99%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]-->it needs a lot money to print ads</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (431, 38, '<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 99%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]-->It is an easy way to help shopping</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (432, 38, '<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 99%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]-->It takes up a lot of space in the paper</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (433, 38, '<p><!--EndFragment--></p>\n<p>&nbsp;</p>\n<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 97%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 97%; font-family: \'Times New Roman\',\'serif\';\">some people don&rsquo;t like finding junk mail in their letter boxes. </span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (434, 38, '<p><!--EndFragment--> <!--EndFragment--></p>\n<p>&nbsp;</p>\n<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: normal; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">It influences people to buy things they don&rsquo;t need </span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (440, 40, '<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 99%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 99%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\"><span style=\"font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;</span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 99%; font-family: \'Times New Roman\',\'serif\';\">a modern </span></p>\n<p>&nbsp;&nbsp;<!--EndFragment--></p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (441, 40, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">an agriculture&nbsp;</span></p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (442, 40, '<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 99%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 99%; font-family: \'Times New Roman\',\'serif\';\">an isolated </span></p>\n<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 99%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\">&nbsp;&nbsp;<!--EndFragment--></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (443, 40, '<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 99%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]-->a developing</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (444, 40, '<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 99%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\">a primitive</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (450, 39, '<p><!--EndFragment--> <!--EndFragment--></p>\n<p>&nbsp;</p>\n<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 99%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 99%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\"><span style=\"mso-list: Ignore;\"><span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;</span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 99%; font-family: \'Times New Roman\',\'serif\';\">the borders of Nepal </span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (451, 39, '<p><!--EndFragment--> <!--EndFragment--></p>\n<p>&nbsp;</p>\n<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 99%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 99%; font-family: \'Times New Roman\',\'serif\';\">the animals in Nepal </span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (452, 39, '<p><!--EndFragment--> <!--EndFragment--></p>\n<p>&nbsp;</p>\n<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 99%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 99%; font-family: \'Times New Roman\',\'serif\';\">the facilities in Nepal </span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (453, 39, '<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 99%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 99%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\"><span style=\"font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;</span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 99%; font-family: \'Times New Roman\',\'serif\';\">the people in Nepal </span></p>\n<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 99%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\">&nbsp;&nbsp;<!--EndFragment--> <!--[endif]--></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (454, 39, '<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 99%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\">the scenery in Nepal</p>\n<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 99%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\">&nbsp;&nbsp;<!--EndFragment--></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (455, 41, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">(-4;0)</span></p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (456, 41, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">(4;0)</span><!--EndFragment-->&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (457, 41, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">(2;2)</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (458, 41, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">(0;4)</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (459, 41, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">(0;-4)</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (460, 42, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">(2;0)</span><!--EndFragment--></p>\n<p>&nbsp;</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (461, 42, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">(-2;0)</span><!--EndFragment-->&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (462, 42, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">(0;4)</span><!--EndFragment-->&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (463, 42, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">(0;-4)</span><!--EndFragment-->&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (464, 42, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">(3;2)</span><!--EndFragment--></p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (465, 43, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Rp. 175.000</span><!--EndFragment-->&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (466, 43, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Rp. 200.000</span><!--EndFragment--></p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (467, 43, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Rp. 225.000</span><!--EndFragment-->&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (468, 43, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Rp. 250.000</span><!--EndFragment-->&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (469, 43, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">semuanya salah</span><!--EndFragment-->&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (470, 44, '<p class=\"MsoListParagraph\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 10.0pt; margin-left: .25in; mso-add-space: auto; line-height: 115%; mso-pagination: widow-orphan; mso-list: l0 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">x = 1 dan y = 3</span><!--EndFragment-->&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (471, 44, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">x = 1 dan y = -3</span><!--EndFragment-->&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (472, 44, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">x = -1 dan y = -3</span><!--EndFragment-->&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (473, 44, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">x = 3 dan y = 1</span><!--EndFragment--></p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (474, 44, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">x = -2 dan y = 1</span><!--EndFragment--></p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (475, 45, '<p class=\"MsoListParagraph\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 10.0pt; margin-left: .5in; mso-add-space: auto; line-height: 115%; mso-pagination: widow-orphan; mso-list: l0 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">3x<sup>2 </sup>+ 6x</span></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (476, 45, '<p class=\"MsoListParagraph\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 10.0pt; margin-left: .5in; mso-add-space: auto; line-height: 115%; mso-pagination: widow-orphan; mso-list: l0 level1 lfo1;\">3x<sup>2 </sup>&ndash; 6x</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (477, 45, '<p class=\"MsoListParagraph\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 10.0pt; margin-left: .5in; mso-add-space: auto; line-height: 115%; mso-pagination: widow-orphan; mso-list: l0 level1 lfo1;\"><!--[if !supportLists]-->&nbsp; 6x + 6</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (478, 45, '<p class=\"MsoListParagraph\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 10.0pt; margin-left: .5in; mso-add-space: auto; line-height: 115%; mso-pagination: widow-orphan; mso-list: l0 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\"><span style=\"font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;</span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">-6x &ndash; 6</span></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (479, 45, '<p class=\"MsoListParagraph\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 10.0pt; margin-left: .5in; mso-add-space: auto; line-height: 115%; mso-pagination: widow-orphan; mso-list: l0 level1 lfo1;\">6x &ndash; 6</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (480, 46, '<p class=\"MsoListParagraph\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 10.0pt; margin-left: .5in; mso-add-space: auto; line-height: 115%; mso-pagination: widow-orphan; mso-list: l0 level1 lfo1;\"><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">4(x<sup>2</sup> &ndash; 25)<sup>3</sup></span></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (481, 46, '<p class=\"MsoListParagraph\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 10.0pt; margin-left: .5in; mso-add-space: auto; line-height: 115%; mso-pagination: widow-orphan; mso-list: l0 level1 lfo1;\"><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\"><span style=\"font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;</span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">4(2x &ndash; 25)<sup>3</sup></span></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (482, 46, '<p class=\"MsoListParagraph\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 10.0pt; margin-left: .5in; mso-add-space: auto; line-height: 115%; mso-pagination: widow-orphan; mso-list: l0 level1 lfo1;\"><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">2x(x<sup>2 </sup>&ndash; 25)<sup>3</sup></span></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (483, 46, '<p class=\"MsoListParagraph\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 10.0pt; margin-left: .5in; mso-add-space: auto; line-height: 115%; mso-pagination: widow-orphan; mso-list: l0 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">8x(x &ndash; 25)<sup>3</sup></span></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (484, 46, '<p class=\"MsoListParagraph\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 10.0pt; margin-left: .5in; mso-add-space: auto; line-height: 115%; mso-pagination: widow-orphan; mso-list: l0 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">8x(x<sup>2 </sup>&ndash; 25)<sup>3</sup></span></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (485, 47, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">2,7 km</span><!--EndFragment-->&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (486, 47, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">270 km</span><!--EndFragment-->&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (487, 47, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">27 km</span><!--EndFragment--></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (488, 47, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">2.700 km</span><!--EndFragment--></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (489, 47, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">0,27 km</span><!--EndFragment--></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (490, 18, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Perawatan sepeda motor ini penting dilakukan karena sesuai fungsinya</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (491, 18, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">kendaraan bermotor harus layak pakai</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (492, 18, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">sepeda motor perlu perawatan yang serius agar tetap nyaman untuk dipakai</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (493, 18, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">komponen kendaraan bermotor harus layak pakai</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (494, 18, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">kendaraan bermotor harus nyaman</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (495, 20, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">bahaya mengancam jiwa manusia</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (496, 20, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">kelalaian manusia mematuhi rambu lalu lintas</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (497, 20, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">kecelakaan lalu lintas akibat kelalaian manusia</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (498, 20, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">kelalaian memakai rambu lalu lintas menyebabkan kecelakaan yang mengancam jiwa</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (499, 20, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">kecelakaan terjadi karena tidak mematuhi rambu lalu lintas</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (500, 21, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Minyak bumi bukan satu-satunya sumber energi</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (501, 21, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Perlunya sumber energi alternatif dalam kehidupan</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (502, 21, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Pemakai sumber minyak bumi sangat besar</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (503, 21, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Persedian minyak bumi semakin berkurang</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (504, 21, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Dunia akan mengalami krisis energi</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (505, 23, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Sumber minyak bumi yang sangat besar</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (506, 23, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Dunia akan mengalami krisis minyak bumi</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (507, 23, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Pemakaian sumber minyak bumi yang besar untuk berbagai keperluan</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (508, 23, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Minyak bumi sumber energi utama</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (509, 23, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Pemakaian sumber minyak yang berlebihan</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (510, 24, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">pembukaan pendaftaran bagi para peserta turnamen sepakbola Sulaiman Cup XIII</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (511, 24, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Turnamen sepakbola Sulaiman Cup digelar dalam rangka HUT ke-60 TNI AU</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (512, 24, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Pangkalan <span style=\"letter-spacing: -.1pt;\">TNI </span>AU Sulaiman akan menggelar turnamen Sepakbola Sulaiman Cup</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (513, 24, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Penyelenggaraan turnamen Sepakbola Sulaiman Cup untuk ke-13 kalinya</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (514, 24, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Turnamen terbuka sepakbola Sulaiman Cup XIII memperebutkan banyak piala</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (515, 26, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">pengemudi yang baik selalu mematuhi peraturan lalulintas</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (516, 26, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Pengemudiyangtidakmematuhiperaturanlalulintasbukanpengemudiyangbaik</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (517, 26, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Pengemudi yang baik pasti mematuhi peraturan lalulintas</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (518, 26, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Para pengemudi itu merupakan pengemudi yangbaik</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (519, 26, '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Setiap yang melanggar peraturan lalu lintas bukan merupakan pengemudi yangbaik</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (520, 27, '<p><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">Berikut ini adalah identitas saya, </span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">nama&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Ibu Sasmihtha,S.S.</span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">tempat/tanggal lahir &nbsp;&nbsp; : Bogor/30 Oktober 1985 </span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">agama &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Islam</span></p>\n<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">alamat&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : JalanTerataiNo.245,Bandung</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (521, 27, '<p><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">Yang bertanda tangan di bawahini, </span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">nama &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : IbuSasmihtha</span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">lahir &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Bogor, 30 Oktober 1985 </span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">agama&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Islam</span></p>\n<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">alamat&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Jln. Teratai No. 245 Bandung</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (522, 27, '<p><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">Adapun identitas saya, </span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">nama &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;: Sasmihtha,S.S.</span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">tempat, tanggal lahir&nbsp;&nbsp; : Bogor 30 Oktober 1985 </span></p>\n<p>&nbsp;</p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">alamat&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;: Jalan. Teratai No. 245 Bandung</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (523, 27, '<p><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">Dengan surat ini saya sampaikan bahwa saya</span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">nama&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Sasmihtha,S.S.</span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">tempat, tanggal lahir &nbsp; : Bogor 30 Oktober 1985 </span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">agama&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Islam</span></p>\n<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">alamat &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Jln. Teratai 245 Bandung</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (524, 27, '<p><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">Bersama surat ini, saya</span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">nama&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;: Ibu Sasmihtha,S.S.</span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">tanggal lahir&nbsp;&nbsp;&nbsp; : Bogor, 30Oktober1985 </span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">agama&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :Islam</span></p>\n<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">alamat&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;: Jalan. Teratai 245 Bandung</span></p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (525, 33, '<p><!--EndFragment--></p>\n<p>&nbsp;</p>\n<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: normal; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">The air stream is inaudible if we don&rsquo;t breathe normally </span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (526, 33, '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt 0.5in; text-align: justify; text-indent: -17.85pt;\"><!--[if !supportLists]-->When we talk, the vocal cords open and close slowly</p>\n<p>&nbsp;</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (527, 33, '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt 0.5in; text-align: justify; text-indent: -17.85pt;\"><!--[if !supportLists]-->The vocal tract must charge shape to make speech sounds</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (528, 33, '<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -17.85pt; line-height: 97%; mso-pagination: none; mso-list: l0 level2 lfo1; tab-stops: list .5in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 97%; font-family: \'Times New Roman\',\'serif\';\">The air stream must vibrate rapidly to make the stream in audible&nbsp;</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (529, 33, '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt 0.5in; text-align: justify; text-indent: -17.85pt;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">The vocal tract cause the air stream to vibrate normally&nbsp;</span></p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (530, 48, ' ilmu  - ongkos', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (531, 48, ' bodoh - gratis', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (532, 48, ' dungu - harga', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (533, 48, ' cerdas &ndash; mahal', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (534, 48, ' sekolah &ndash; pasar', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (535, 49, ' aturan &ndash; ketat', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (536, 49, ' penjagaan &ndash; kontrol', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (537, 49, ' keamanan &ndash; teratur', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (538, 49, ' damai &ndash; pemeriksaan', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (539, 49, ' sejahtera &ndash; pengendalian', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (540, 50, ' bilik &ndash; angkasa', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (541, 50, ' gambar &ndash; pesawat', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (542, 50, ' kandidat &ndash; burung', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (543, 50, ' memilih &ndash; mendarat', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (544, 50, ' kartu &ndash; layang-layang', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (545, 51, ' Semua jurang adalah tebing', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (546, 51, ' Semua jurang berwarna hitam', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (547, 51, ' Semua yang hitam adalah tebing', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (548, 51, ' Sebagian jurang berwarna hitam', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (549, 51, ' Semua yang hitam adalah jurang', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (550, 52, ' Semua yang naik kereta memiliki KTP', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (551, 52, ' Sebagian yang naik kereta memiliki KTP', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (552, 52, ' Sebagian yang memiliki tiket memiliki KTP', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (553, 52, ' Semua yang memiliki KTP tentu naik kereta', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (554, 52, ' Semua yang tidak memiliki KTP tidak naik kereta', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (555, 53, ' Jika air tidak tercemar, maka harga sabun meningkat.', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (556, 53, ' Jika air tidak tercemar, maka harga selain sabun meningkat.', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (557, 53, ' Jika air tercemar, maka harga sabun meningkat.', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (558, 53, ' Jika air tercemar, maka harga sabun tidak meningkat', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (559, 53, ' Jika air tidak tercemar, maka bukan harga sabun yang meningkat', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (560, 54, ' 35', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (561, 54, ' 30', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (562, 54, ' 27.5', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (563, 54, ' 25', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (564, 54, ' 20', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (565, 55, ' 0.15 menit', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (566, 55, ' 0.3 menit', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (567, 55, ' 0.45 menit', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (568, 55, ' 0.6 menit', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (569, 55, ' 0.75 menit', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (570, 56, ' 38 dan 8', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (571, 56, ' 44 dan 14', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (572, 56, ' 45 dan 16', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (573, 56, ' 49 dan 18', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (574, 56, ' 50 dan 10', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (575, 57, ' 0', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (576, 57, ' 22', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (577, 57, ' 30', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (578, 57, ' 38', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (579, 57, ' 42', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (615, 65, ' 10', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (616, 65, ' 20', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (617, 65, ' 22', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (618, 65, ' 25', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (619, 65, ' 30', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (620, 66, ' -1', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (621, 66, ' 0', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (622, 66, ' 3/4', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (623, 66, ' 9/8', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (624, 66, ' 2', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (625, 67, ' 3.900.000', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (626, 67, ' 3.800.000', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (627, 67, ' 3.700.000', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (628, 67, ' 3.600.000', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (629, 67, ' 3.500.000', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (630, 68, ' Pengenalan Kebiasaan Membaca sejak Dini', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (631, 68, ' Balita dan Kebiasaan Mendengarkan Cerita', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (632, 68, ' Pembiasaan Anak dalam Mendengarkan Cerita', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (633, 68, ' Peningkatan Kinerja Otak melalui Membaca', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (634, 68, ' Peran Orangtua dalam Membacakan Cerita', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (635, 69, ' 1 dan 7', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (636, 69, ' 2 dan 8', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (637, 69, ' 3 dan 9', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (638, 69, ' 4 dan 10', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (639, 69, ' 5 dan 12', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (640, 70, ' Paragraf ke-2 memaparkan simpulan penelitian yang dibahas pada paragraf ke-1.', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (641, 70, ' Paragraf ke-2 memerinci temuan penelitian yang dipaparkan pada paragraf ke-1', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (642, 70, ' Paragraf ke-2 memaparkan perbedaan perilaku yang dibahas pada paragraf ke-1', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (643, 70, ' Paragraf ke-1 memaparkan penelitian terhadap balita yang diuraikan pada paragraf ke-2', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (644, 70, ' Paragraf ke-1 memaparkan hasil penelitian yang diuraikan pada paragraf ke-2', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (645, 71, ' Anak-anak yang belajar membaca pada usia 3-5 tahun akan mempercepat perkembangan otaknya', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (646, 71, ' Semakin awal kebiasaan membaca buku diperkenalkan, semakin aktif otak anak bekerja', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (647, 71, ' Anak-anak yang mulai belajar membaca sejak balita akan menjadi anak-anak yang otak kirinya lebih aktif.', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (648, 71, ' Kebiasaan mendengarkan cerita dan membaca sejak usia balita berdampak positif untuk perkembangan otak', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (649, 71, ' Otak kiri bertanggung jawab terhadap proses pemahaman arti kata dan konsep', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (650, 72, ' Tujuan membiasakan anak membaca cerita sejak usia dini.', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (651, 72, ' Strategi penerapan hasil penelitian untuk pendidikan anak.', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (652, 72, ' Faktor-faktor yang dapat mendorong anak gemar membaca', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (653, 72, ' Manfaat kebiasaan membaca dan mendengarkan cerita pada anak.', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (654, 72, ' Kebiasaan membaca dan mendengarkan cerita pada anak.', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (655, 73, ' Negara maju menyebarkan budaya ke negara berkembang.', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (656, 73, ' Globalisasi menyebabkan imperialisme budaya.', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (657, 73, ' Budaya K-pop menggejala di seluruh dunia.', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (658, 73, ' Indonesia rentan terpengaruh budaya asing.', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (659, 73, ' Indonesia tidak mempunyai identitas yang jelas.', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (660, 74, ' 2', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (661, 74, ' 6', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (662, 74, ' 8', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (663, 74, ' 12', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (664, 74, ' 13', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (665, 75, ' Korea menjadikan K-pop sebagai senjata imperialisme budaya', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (666, 75, ' Budaya negara maju menimbulkan efek negatif negara berkembang', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (667, 75, ' Budaya negara maju menyebar melalui arus globalisasi', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (668, 75, ' Media massa menjadi alat imperialisme budaya negara maju.', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (669, 75, ' Globalisasi budaya menyebar melalui teknologi informasi.', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (670, 76, ' K-Pop', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (671, 76, ' Boy band dan girl band', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (672, 76, ' Gaya hidup K-pop', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (673, 76, ' Industri musik K-Pop', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (674, 76, ' Genre musik K-Pop', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (675, 77, ' Penggunaan kata karena pada kalimat (6)', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (676, 77, ' Penggunaan kata menjadikan pada kalimat (8)', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (677, 77, ' Panggunaan kata karena pada kalimat (10)', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (678, 77, ' Penggunaan kata disebabkan oleh pada kalimat (11)', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (679, 77, ' Penggunaan kata bahkan pada kalimat (12)', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (680, 78, ' Explain advances in green technology.', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (681, 78, ' Describe a green experiment in a ship.', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (682, 78, ' Show the multi-functions of Physalia.', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (683, 78, ' Give details of an experimental ship.', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (684, 78, ' Expose Physalia&rsquo;s eco-friendliness.', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (685, 79, ' Complete information about the function of Physalia.', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (686, 79, ' Additional descriptions of the excellence of Physalia.', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (687, 79, ' Detailed explanations on the superiority of Physalia.', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (688, 79, ' Supplementary ideas of the greenness of Physalia.', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (689, 79, ' Further descriptions of Physalia as a laboratory.', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (690, 80, ' Laboratory', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (691, 80, ' Project', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (692, 80, ' Agora', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (693, 80, ' Scale', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (694, 80, ' Idea', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (695, 81, ' A football court', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (696, 81, ' A tall building', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (697, 81, ' A wide ocean', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (698, 81, ' A Mountain', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (699, 81, ' A nightclub', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (700, 82, ' Innovative', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (701, 82, ' Up to date', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (702, 82, ' Advanced', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (703, 82, ' Ecological', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (704, 82, ' Scientific', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (745, 62, '<p>Berada di atas sumbu X</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (746, 62, '<p>Berada di bawah sumbu X</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (747, 62, '<p>Menyinggung sumbu X</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (748, 62, '<p>Memotong sumbu X di 2 titik berbeda</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (749, 62, '<p>Memotong sumbu X di (x1,0) dan (x2,0) dengan x1 &gt; 0 dan x2 &gt; 0</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (755, 60, '<p>a &gt; 0, b &gt; 0 dan c &gt; 0</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (756, 60, '<p>a &lt; 0, b &lt; 0 dan c &gt; 0</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (757, 60, '<p>a &lt; 0, b &gt; 0 dan c &lt; 0</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (758, 60, '<p>a &gt; 0, b &gt; 0 dan c &lt; 0</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (759, 60, '<p>a &lt; 0, b &gt; 0 dan c &gt; 0</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (760, 58, '<p>8</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (761, 58, '<p>12</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (762, 58, '<p>16</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (763, 58, '<p>18</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (764, 58, '<p>24</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (765, 59, '<p>768</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (766, 59, '<p>72</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (767, 59, '<p>36</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (768, 59, '<p>12</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (769, 59, '<p>3</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (770, 63, '<p>125</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (771, 63, '<p>50</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (772, 63, '<p>25</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (773, 63, '<p>7</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (774, 63, '<p>5</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (780, 64, '<p>p &gt; 2 atau p , -2</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (781, 64, '<p>&ndash; 2 &lt; p &lt; ⅖ dengan p &ne; 0</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (782, 64, '<p>p , -2 atau ⅖&nbsp;&nbsp;&lt; p &lt; 2</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (783, 64, '<p>⅖&nbsp;&nbsp;&lt; p &lt; 2 dengan p &ne; 0</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (784, 64, '<p>&ndash; 2 &lt; p &lt; -⅖&nbsp; &nbsp;dengan p &gt; 2</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (810, 87, '<p>Putting the main ideas with examples</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (811, 87, '<p>Presenting causes followed by effects</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (812, 87, '<p>Interpreting different ways of classifying</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (813, 87, '<p>Preseting the strengths of the main idea</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (814, 87, '<p>Exposing supporting details chronologically</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (815, 86, '<p>flora and fauna</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (816, 86, '<p>human sounds</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (817, 86, '<p>liquids and gasses</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (818, 86, '<p>human behaviors</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (819, 86, '<p>words and phrases</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (820, 83, '<p>Many kinds of liquid should be grouped as one.</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (821, 83, '<p>Different kinds of gas can be colorless and odorless.</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (822, 83, '<p>Materials in chemistry should be classified differently</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (823, 83, '<p>Chemistry materials have more complicated classification.</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (824, 83, '<p>Taxonomy can be made and applied further to other areas</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (825, 85, '<p>chemical materials can also be put into classsfication</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (826, 85, '<p>classification of chemical materials is without exception</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (827, 85, '<p>chemists may also classify materials using certain criteria</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (828, 85, '<p>when appearance is the basis, chemists are not involved</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (829, 85, '<p>in material classification, chemicals should not be included</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (830, 84, '<p>Chemicals may be solid, liquid, and gaseous</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (831, 84, '<p>Appearance is not a useful basis in chemistry</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (832, 84, '<p>The use of colors is better than that of appearance</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (833, 84, '<p>Both colors and appearance should be considered</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (834, 84, '<p>Colors should be included for identifying appearance</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (840, 61, '<p>x &lt; -2 atau x &gt;3</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (841, 61, '<p>x &lt; -3 atau x &gt;2</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (842, 61, '<p>-3 &lt; x &lt; -2</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (843, 61, '<p>-3 &lt; x &lt; 2</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (844, 61, '<p>-2 &lt; x &lt; 3</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (874, 123, '<p>Pernyataan jawaban 1 dan 2 benar</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (875, 123, '<p>Pernyataan jawaban 1 dan 3 benar</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (876, 123, '<p>Pernyataan jawaban 2 dan 3 benar</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (877, 123, '<p>Pernyataan jawaban 1, 2 dan 3 benar</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (878, 123, '<p>Pernyataan jawaban 1, 2 dan 3 salah</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (879, 122, '<p>Pernyataan jawaban 1 dan 2 benar</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (880, 122, '<p>Pernyataan jawaban 1 dan 3 benar</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (881, 122, '<p>Pernyataan jawaban 2 dan 3 benar</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (882, 122, '<p>Pernyataan jawaban 1, 2 dan 3 benar</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (883, 122, '<p>Pernyataan jawaban 1, 2 dan 3 salah</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (884, 121, '<p>Pernyataan jawaban 1 dan 2 benar</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (885, 121, '<p>Pernyataan jawaban 1 dan 3 benar</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (886, 121, '<p>Pernyataan jawaban 2 dan 3 benar</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (887, 121, '<p>Pernyataan jawaban 1, 2 dan 3 benar</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (888, 121, '<p>Pernyataan jawaban 1, 2 dan 3 salah</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (889, 124, '<p>Pernyataan jawaban 1 dan 2 benar</p>', NULL, '', 1, '');
INSERT INTO `savsoft_options` VALUES (890, 124, '<p>Pernyataan jawaban 1 dan 3 benar</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (891, 124, '<p>Pernyataan jawaban 2 dan 3 benar</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (892, 124, '<p>Pernyataan jawaban 1, 2, 3 benar</p>', NULL, '', 0, '');
INSERT INTO `savsoft_options` VALUES (893, 124, '<p>Pernyataan jawaban 1, 2, 3 salah</p>', NULL, '', 0, '');

-- ----------------------------
-- Table structure for savsoft_payment
-- ----------------------------
DROP TABLE IF EXISTS `savsoft_payment`;
CREATE TABLE `savsoft_payment`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `gid` int(11) NOT NULL,
  `quid` int(11) NOT NULL DEFAULT 0,
  `amount` float NOT NULL,
  `paid_date` int(11) NOT NULL,
  `payment_gateway` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Paypal',
  `payment_status` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Pending',
  `transaction_id` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `other_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of savsoft_payment
-- ----------------------------
INSERT INTO `savsoft_payment` VALUES (1, 10, 3, 0, 100, 0, 'Paypal', 'Paid', '1233423DCFDFD', NULL);

-- ----------------------------
-- Table structure for savsoft_qbank
-- ----------------------------
DROP TABLE IF EXISTS `savsoft_qbank`;
CREATE TABLE `savsoft_qbank`  (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `question_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Multiple Choice Single Answer',
  `question` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `question1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `description1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `no_time_served` int(11) NOT NULL DEFAULT 0,
  `no_time_corrected` int(11) NOT NULL DEFAULT 0,
  `no_time_incorrected` int(11) NOT NULL DEFAULT 0,
  `no_time_unattempted` int(11) NOT NULL DEFAULT 0,
  `inserted_by` int(11) NOT NULL,
  `inserted_by_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paragraph` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `paragraph1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`qid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 126 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of savsoft_qbank
-- ----------------------------
INSERT INTO `savsoft_qbank` VALUES (18, 'Multiple Choice Single Answer', '<p><!--[if !supportLists]--><em><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">Mengendarai sepeda motor untuk aktivitas sehari-hari memerlukan kenyamanan, apalagi menjelang datangnya musim hujan seperti saat ini. Karena itu, memeriksa kendaraan secara rutin di bengkel mutlak dilakukan agar terhindar dari kecelakaan di jalanraya.</span></em></p>\n<p><em><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">Perawatan sepeda motor ini penting dilakukan karena sesuai fungsinya, pengendara pasti mengharapkan sepeda motornya dapat dikendarai dalam berbagai situasi. Apakah itu menembus kemacetan, berkelit di tengah padatnya kendaraan, serta tetap tangguh di jalanan basah.</span></em></p>\n<p><em><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">Tak jauh berbeda dengan manusia, sepeda motor juga perlu dijaga dan dirawat supaya selalu siap digunakan dan nyaman mengantarkan sang pemilik ke mana saja.</span></em></p>\n<p>&nbsp;</p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">Ide pokok paragraf di atas adalah</span></p>', '', NULL, NULL, 3, 3, 145, 74, 63, 8, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (19, 'Multiple Choice Single Answer', '<p><!--[if !supportLists]--><em><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\" data-mce-mark=\"1\">Mengendarai sepeda motor untuk aktivitas sehari-hari memerlukan kenyamanan, apalagi menjelang datangnya musim hujan seperti saat ini. Karena itu, memeriksa kendaraan secara rutin di bengkel mutlak dilakukan agar terhindar dari kecelakaan di jalanraya.</span></em></p>\n<p><em><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">Perawatan sepeda motor ini penting dilakukan karena sesuai fungsinya, pengendara pasti mengharapkan sepeda motornya dapat dikendarai dalam berbagai situasi. Apakah itu menembus kemacetan, berkelit di tengah padatnya kendaraan, serta tetap tangguh di jalanan basah.</span></em></p>\n<p>&nbsp;</p>\n<p><em><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">Tak jauh berbeda dengan manusia, sepeda motor juga perlu dijaga dan dirawat supaya selalu siap digunakan dan nyaman mengantarkan sang pemilik ke mana saja.</span></em></p>\n<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Dilihat dari isinya, bacaan di atas merupakan</span></p>', '', NULL, NULL, 3, 3, 145, 37, 97, 11, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (20, 'Multiple Choice Single Answer', '<p><!--[if !supportLists]--><em><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">Kecelakaan lalu lintas pada umumnya disebabkan oleh kelalaian manusia. Pada dasarnya kita tidak mematuhirambu-rambulalulintas,danmenggunakankendaraansemaunyasaja.Keselamatanjiwa tidak dipedulikan, terutama kawula muda. Dunia ingin mereka miliki. Akhirnya bahaya mengancam jiwa mereka akibat perbuatannya.</span></em></p>\n<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Simpulan yang dapat ditarik dari bacaan di atas adalah</span></p>', '', NULL, NULL, 3, 3, 145, 28, 104, 13, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (21, 'Multiple Choice Single Answer', '<p><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">Pemakaian sumber minyak bumi yang sangat besar untuk berbagai keperluan telah menguras sumber-sumber minyak bumi dunia semakin lama semakin berkurang. Memang sampai sekarang minyak bumi masih merupakan sumber energi utama sebagai keperluan kehidupan manusia, terutama untuk berbagai macam industri dan transportasi. Bila tidak ditemukan sumber energi lain sebagai sumber energi alternatif, dalam waktu tidak lama lagi dunia akan mengalami krisis energi.</span></p>\n<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Simpulan yang dapat ditarik dari paragraf itu adalah</span></p>', '', NULL, NULL, 3, 3, 145, 13, 117, 15, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (22, 'Multiple Choice Single Answer', '<p>&nbsp;Pemakaian sumber minyak bumi yang sangat besar untuk berbagai keperluan telah menguras sumber-sumber minyak bumi dunia semakin lama semakin berkurang. Memang sampai sekarang minyak bumi masih merupakan sumber energi utama sebagai keperluan kehidupan manusia, terutama untuk berbagai macam industri dan transportasi. Bila tidak ditemukan sumber energi lain sebagai sumber energi alternatif, dalam waktu tidak lama lagi dunia akan mengalami krisis energi.</p>\n<p>&nbsp;</p>\n<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Menurut isinya paragraf di atas berupa</span></p>', '', NULL, NULL, 3, 3, 145, 67, 63, 15, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (23, 'Multiple Choice Single Answer', '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\"><span style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px;\">&nbsp;</span><span style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px;\">Pemakaian sumber minyak bumi yang sangat besar untuk berbagai keperluan telah menguras sumber-sumber minyak bumi dunia semakin lama semakin berkurang. Memang sampai sekarang minyak bumi masih merupakan sumber energi utama sebagai keperluan kehidupan manusia, terutama untuk berbagai macam industri dan transportasi. Bila tidak ditemukan sumber energi lain sebagai sumber energi alternatif, dalam waktu tidak lama lagi dunia akan mengalami krisis energi.</span></span></p>\n<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Yang telah menguras sumber minyak bumi dunia pada teks bacaan di atas adalah</span></p>', '', NULL, NULL, 3, 3, 145, 96, 33, 16, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (24, 'Multiple Choice Single Answer', '<p><!--[if !supportLists]--><em><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">Untuk ke-13 kalinya Pangkalan TNI AU Sulaiman akan menggelar turnamen Sepakbola Sulaiman Cup. Kejuaraan ini digelar dalam rangka HUT ke-60 TNI Angkatan Udara. Turnamen sepakbola ini akan dimulai tanggal 22 April 2006 di Stadion Angkasa Lanud Sulaiman Margahayu Bandung. Turnamen terbuka sepakbola Sulaiman Cup XIII ini memperebutkan piala bergilir, piala tetap, dan uang pembinaan bagi tim yang berhasil menjadi juara. Untuk menyesuaikan dengan jadwal turnamen panitia membatasi jumlah peserta yang akan mengikuti turnamen ini sebanyak 32 klub. Pendaftaran dibuka di kantor Binjas Lanud Sulaiman, Jalan Terusan Kopo Margahayu mulai Rabu(15/3).</span></em></p>\n<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Gagasan utama paragraf di atas adalah</span></p>', '', NULL, NULL, 3, 3, 145, 66, 62, 17, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (25, 'Multiple Choice Single Answer', '<p><!--[if !supportLists]--><em>Keputusan Persebaya Surabaya untuk mundur dan tidak memainkan pertandingan terakhir Delapan Besar Liga Djarum Super Indonesia, menuai banyak kecaman. Atas tindakannya itu, Komisi Disiplin PSSI menjatuhkan hukuman. Selain denda uang, Persebaya dijatuhi skorsing dua tahun tidak boleh mengikuti kompetisi serta harus meniti kembali langkah dari Divisi II. Keputusan ini, apakah tidak gegabah dan sudah pantas?</em></p>\n<p>&nbsp;</p>\n<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Kalimat berupa pendapat yang sesuai dengan isi tajuk rencana di atas adalah...</span></p>', '', NULL, NULL, 3, 3, 145, 80, 47, 18, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (26, 'Multiple Choice Single Answer', '<p><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">PU: &hellip;.</span></p>\n<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif;\">PK: Sopir itu bukan pengemudi &nbsp;yang selalu mematuhi peraturan lalu lintas.</span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">K&nbsp; : &nbsp;&nbsp;Sopir itu bukan pengemudi yang baik.</span></p>\n<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Pernyataan yang tepat untuk melengkapi silogisme tersebut adalah</span></p>', '', NULL, NULL, 3, 3, 145, 17, 109, 19, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (27, 'Multiple Choice Single Answer', '<p><!--[if !supportLists]--><em><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif;\">Ibu Sasmihtha, S.S. lahirdi Bogor 30 Oktober 1985, beragama Islam, alamat Jalan Teratai 245 Bandung.</span></em></p>\n<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Penulisan identitas pelamar sesuai EYD yang tepat adalah &hellip;</span></p>', '', NULL, NULL, 3, 3, 145, 26, 100, 19, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (30, 'Multiple Choice Single Answer', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: 99%; mso-pagination: none; mso-layout-grid-align: none; text-autospace: none;\"><strong><span style=\"font-size: 12.0pt; line-height: 99%; font-family: \'Times New Roman\',\'serif\';\">Choose the correct answer. This text is for questions no. 1 &ndash; no. 4.</span></strong></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: 12.9pt; mso-line-height-rule: exactly; mso-pagination: none; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; text-indent: .5in; line-height: 109%; mso-pagination: none; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><span style=\"font-size: 12.0pt; line-height: 109%; font-family: \'Times New Roman\',\'serif\';\">Speech production is made possible by the specialized movements of our vocal organs that generate speech sounds waves.</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; text-indent: .5in; line-height: 112%; mso-pagination: none; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><span style=\"font-size: 12.0pt; line-height: 112%; font-family: \'Times New Roman\',\'serif\';\">Like all sounds production speech productions requires a source of energy. The source of energy for speech production is the steady stream of air that comes from the lungs as we exhale. When we breathe normally, the air stream is inaudible. To become audible, the air stream must vibrate rapidly. The vocal cords cause the air stream to vibrate.</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; text-indent: .5in; line-height: 96%; mso-pagination: none; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><span style=\"font-size: 12.0pt; line-height: 96%; font-family: \'Times New Roman\',\'serif\';\">As we talk, the vocal cords open and close rapidly, chopping up the steady air stream into a series of puffs. These puffs are heard as a buzz. But this buzz is still not speech.</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: 1.15pt; mso-line-height-rule: exactly; mso-pagination: none; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; text-indent: .5in; line-height: 110%; mso-pagination: none; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><span style=\"font-size: 12.0pt; line-height: 110%; font-family: \'Times New Roman\',\'serif\';\">To produce speech sounds, the vocal tract must change shape. During speech we continually alter the shape of the vocal tract by moving the tongue and lips, etc. These movements change the acoustic properties of the vocal tract, which is turn produce the different sounds of speech.</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: 10.45pt; mso-line-height-rule: exactly; mso-pagination: none; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">The topic of the passage is about&hellip;&hellip;&hellip;..</span></p>', '', NULL, NULL, 3, 3, 134, 72, 46, 16, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (31, 'Multiple Choice Single Answer', '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt 0.25in; text-align: justify; text-indent: -17.85pt;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">&hellip;&hellip;&hellip;.that comes from the lungs as we&nbsp;</span></p>', '', NULL, NULL, 3, 3, 134, 61, 57, 16, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (32, 'Multiple Choice Single Answer', '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt 0.25in; text-align: justify; text-indent: -17.85pt;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">What does speech production need ?&nbsp;</span></p>', '', NULL, NULL, 3, 3, 134, 40, 79, 15, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (33, 'Multiple Choice Single Answer', '<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: 20.0pt; text-align: justify; text-indent: -19.85pt; line-height: 97%; mso-pagination: none; mso-list: l0 level1 lfo1; tab-stops: list 18.3pt; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 97%; font-family: \'Times New Roman\',\'serif\';\">Which of the following statements is TRUE according the text ?&nbsp;</span></p>', '', NULL, NULL, 3, 3, 134, 35, 82, 17, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (34, 'Multiple Choice Single Answer', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: 99%; mso-pagination: none; mso-layout-grid-align: none; text-autospace: none;\"><strong><span style=\"font-size: 12.0pt; line-height: 99%; font-family: \'Times New Roman\',\'serif\';\">This text is for questions no. 5 &ndash; no.8.</span></strong></p>\n<p class=\"MsoNormal\" style=\"margin: 0in -7.9pt 0.0001pt 0in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"margin: 0in 1.35pt 0.0001pt 0in; text-align: justify; text-indent: 0.5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">There are many reasons for both sides of the questions , &ldquo;should we have printed advertisement?&rdquo;</span></p>\n<p class=\"MsoNormal\" style=\"margin: 0in -7.9pt 0.0001pt 0in; text-align: justify; text-indent: 0.5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">Many people have strong views and feel that ads are nothing more than useless junk mail, while other people feel they are an important source of information.</span></p>\n<p class=\"MsoNormal\" style=\"margin: 0in -7.9pt 0.0001pt 0in; text-align: justify; text-indent: 0.5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">Here some reasons why we should have advertisements in newspapers and magazines. One reason is ads give us information about what is new in the market. This is an easy way of shopping. Another reason is that advertisements promote business. When shop owners compete against each other the buyer saves money, mayor people come to their shops and they sell more goods.</span></p>\n<p class=\"MsoNormal\" style=\"margin: 0in -7.9pt 0.0001pt 0in; text-align: justify; text-indent: 0.5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">On the other hand, some people argue ads should not be put in newspapers and magazines for these various reasons. Firstly, ads cost the shopkeepers a lot of money to print into paper. Also come people don&rsquo;t like finding junk mail in their latter boxes. People may also find the ads not very interesting . And also influence people to buy items they don&rsquo;t need and can&rsquo;t really afford. Ads use up a lot space and a lot of efforts has to be made to make the ads eye-catching. Ads also take up a lot of room in the papers and I don&rsquo;t think I find some of them interesting.</span></p>\n<p class=\"MsoNormal\" style=\"margin: 0in -7.9pt 0.0001pt 0in; text-align: justify; text-indent: 0.5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">In summary, although ads provide people with information, they cost a lot of money to print. Therefore I think, we should not have printed advertisement.</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: 10.5pt; mso-line-height-rule: exactly; mso-pagination: none; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">&nbsp;</span></p>\n<p>&nbsp;</p>\n<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .25in; text-align: justify; text-indent: -17.85pt; line-height: 99%; mso-pagination: none; mso-list: l0 level1 lfo1; tab-stops: list .25in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 99%; font-family: \'Times New Roman\',\'serif\';\">The text discusses&hellip;&hellip;&hellip;.&nbsp;</span></p>', '', NULL, NULL, 3, 3, 134, 14, 103, 17, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (35, 'Multiple Choice Single Answer', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: 99%; mso-pagination: none; mso-layout-grid-align: none; text-autospace: none;\"><strong><span style=\"font-size: 12.0pt; line-height: 99%; font-family: \'Times New Roman\',\'serif\';\">This text is for questions no. 5 &ndash; no.8.</span></strong></p>\n<p class=\"MsoNormal\" style=\"margin: 0in -7.9pt 0.0001pt 0in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"margin: 0in 1.35pt 0.0001pt 0in; text-align: justify; text-indent: 0.5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">There are many reasons for both sides of the questions , &ldquo;should we have printed advertisement?&rdquo;</span></p>\n<p class=\"MsoNormal\" style=\"margin: 0in -7.9pt 0.0001pt 0in; text-align: justify; text-indent: 0.5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">Many people have strong views and feel that ads are nothing more than useless junk mail, while other people feel they are an important source of information.</span></p>\n<p class=\"MsoNormal\" style=\"margin: 0in -7.9pt 0.0001pt 0in; text-align: justify; text-indent: 0.5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">Here some reasons why we should have advertisements in newspapers and magazines. One reason is ads give us information about what is new in the market. This is an easy way of shopping. Another reason is that advertisements promote business. When shop owners compete against each other the buyer saves money, mayor people come to their shops and they sell more goods.</span></p>\n<p class=\"MsoNormal\" style=\"margin: 0in -7.9pt 0.0001pt 0in; text-align: justify; text-indent: 0.5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">On the other hand, some people argue ads should not be put in newspapers and magazines for these various reasons. Firstly, ads cost the shopkeepers a lot of money to print into paper. Also come people don&rsquo;t like finding junk mail in their latter boxes. People may also find the ads not very interesting . And also influence people to buy items they don&rsquo;t need and can&rsquo;t really afford. Ads use up a lot space and a lot of efforts has to be made to make the ads eye-catching. Ads also take up a lot of room in the papers and I don&rsquo;t think I find some of them interesting.</span></p>\n<p class=\"MsoNormal\" style=\"margin: 0in -7.9pt 0.0001pt 0in; text-align: justify; text-indent: 0.5in;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">In summary, although ads provide people with information, they cost a lot of money to print. Therefore I think, we should not have printed advertisement.</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: 10.5pt; mso-line-height-rule: exactly; mso-pagination: none; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">&nbsp;</span></p>\n<p>&nbsp;</p>\n<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .25in; text-align: justify; text-indent: -17.85pt; line-height: 99%; mso-pagination: none; mso-list: l0 level1 lfo1; tab-stops: list .25in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 99%; font-family: \'Times New Roman\',\'serif\';\">The text discusses&hellip;&hellip;&hellip;.&nbsp;</span></p>', '', NULL, NULL, 3, 3, 2, 0, 1, 1, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (36, 'Multiple Choice Single Answer', '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">The third paragraph is mainly about&hellip;&hellip;&hellip;..</span></p>', '', NULL, NULL, 3, 3, 134, 56, 59, 19, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (37, 'Multiple Choice Single Answer', '<p class=\"MsoNormal\" style=\"margin: 0in 0in 0.0001pt 0.25in; text-align: justify; text-indent: -17.85pt;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\"><span style=\"font-stretch: normal; font-size: 7pt; font-family: \'Times New Roman\';\">W&nbsp;</span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\">hat is the functions of advertisements for a product company ?&nbsp;</span></p>', '', NULL, NULL, 3, 3, 134, 8, 107, 19, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (38, 'Multiple Choice Single Answer', '<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .25in; text-align: justify; text-indent: -17.85pt; line-height: 96%; mso-pagination: none; mso-list: l0 level1 lfo1; tab-stops: list .25in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 96%; font-family: \'Times New Roman\',\'serif\';\">According to the text, the following is NOT the reason why we should not have printed advertisement?&nbsp;</span></p>', '', NULL, NULL, 3, 3, 134, 24, 91, 19, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (39, 'Multiple Choice Single Answer', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: 99%; mso-pagination: none; mso-layout-grid-align: none; text-autospace: none;\"><strong><span style=\"font-size: 12.0pt; line-height: 99%; font-family: \'Times New Roman\',\'serif\';\" data-mce-mark=\"1\">This text is for questions no. 9 &ndash; no.10.</span></strong></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: 12.9pt; mso-line-height-rule: exactly; mso-pagination: none; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\" data-mce-mark=\"1\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; text-indent: .5in; line-height: 112%; mso-pagination: none; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><span style=\"font-size: 12.0pt; line-height: 112%; font-family: \'Times New Roman\',\'serif\';\" data-mce-mark=\"1\">Most people in Nepal are farmers. They live in stone or timber houses with thatched or slab roofing. They grow rice, which is their main crop, maize, barley, potatoes, and vegetables. Sheep are their main source of meet. Cows are kept to produce milk. Donkeys, mules, and dzose are used to carry goods. Nepal is an isolated country so hardly any modernizing has occurred. They have few facilities and mainly live on their intensive subsistence agriculture.</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: 10.2pt; mso-line-height-rule: exactly; mso-pagination: none; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\';\" data-mce-mark=\"1\">&nbsp;</span></p>\n<p>&nbsp;</p>\n<p class=\"MsoNormal\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .25in; text-align: justify; text-indent: -17.85pt; line-height: 99%; mso-pagination: none; mso-list: l0 level1 lfo1; tab-stops: list .25in; mso-layout-grid-align: none; punctuation-wrap: simple; text-autospace: none;\"><span style=\"font-size: 12.0pt; line-height: 99%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\"><span style=\"font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;</span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 99%; font-family: \'Times New Roman\',\'serif\';\">The text mainly talks about&hellip;&hellip;&hellip;&hellip;.&nbsp;</span></p>', '', NULL, NULL, 3, 3, 134, 68, 47, 19, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (40, 'Multiple Choice Single Answer', '<p><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">It is difficult to find modernization in Nepal because Nepal is&hellip;&hellip;&hellip;&hellip;.country</span><!--EndFragment-->&nbsp;</p>\n<p>&nbsp;</p>', '', NULL, NULL, 3, 3, 134, 70, 45, 19, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (41, 'Multiple Choice Single Answer', '<p class=\"MsoListParagraph\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 10.0pt; margin-left: .25in; mso-add-space: auto; line-height: 115%; mso-pagination: widow-orphan; mso-list: l0 level1 lfo1;\"><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Fungsi linear y = f(x) = 2x &ndash; 4 memotong sumbu y di titik</span></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', '', NULL, NULL, 3, 3, 134, 43, 68, 23, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (42, 'Multiple Choice Single Answer', '<p class=\"MsoListParagraph\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 10.0pt; margin-left: .25in; mso-add-space: auto; line-height: 115%; mso-pagination: widow-orphan; mso-list: l0 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Fungsi linear y = f(x) = -2x + 4 memotong sumbu x di titik</span></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', '', NULL, NULL, 3, 3, 134, 50, 64, 20, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (43, 'Multiple Choice Single Answer', '<p class=\"MsoListParagraph\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 10.0pt; margin-left: .25in; mso-add-space: auto; line-height: 115%; mso-pagination: widow-orphan; mso-list: l0 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Sebuah perusahaan menjual produk dengan harga Rp. 65 per unit.&nbsp; Biaya variabel per unit produk untuk bahan baku Rp. 20 dan Rp. 27,5 untuk tenaga kerja.&nbsp; Total biaya tetap per tahun Rp. 100.000.&nbsp; Berapa keuntungan jika penjualan per tahun adalah 20.000 unit?</span></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', '', NULL, NULL, 3, 3, 134, 37, 71, 26, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (44, 'Multiple Choice Single Answer', '<p class=\"MsoListParagraph\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 10.0pt; margin-left: .25in; mso-add-space: auto; line-height: 115%; mso-pagination: widow-orphan; mso-list: l0 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Sistem persamaan linear yang terdiri dari 2x &ndash; 3y = -7 dan x + y = 4 memiliki solusi</span></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', '', NULL, NULL, 3, 3, 134, 58, 57, 19, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (45, 'Multiple Choice Single Answer', '<p class=\"MsoListParagraph\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 10.0pt; margin-left: .25in; mso-add-space: auto; line-height: 115%; mso-pagination: widow-orphan; mso-list: l0 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\" data-mce-mark=\"1\">Turunan kedua dari f(x) = x<sup>3</sup> &ndash; 3x<sup>2</sup> + 5 adalah</span></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', '', NULL, NULL, 3, 3, 134, 48, 66, 20, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (46, 'Multiple Choice Single Answer', '<p class=\"MsoListParagraph\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 10.0pt; margin-left: .25in; mso-add-space: auto; line-height: 115%; mso-pagination: widow-orphan; mso-list: l0 level1 lfo1;\"><!--[if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Turunan pertama dari f(x) = (x<sup>2</sup> &ndash; 25)<sup>4</sup> adalah</span></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', '', NULL, NULL, 3, 3, 134, 27, 84, 23, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (47, 'Multiple Choice Single Answer', '<p class=\"MsoListParagraph\" style=\"margin-top: 0in; margin-right: 0in; margin-bottom: 10.0pt; margin-left: .25in; mso-add-space: auto; line-height: 115%; mso-pagination: widow-orphan; mso-list: l0 level1 lfo1;\"><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Sebuah peta berskala 1 : 4.500.000.&nbsp; Jarak kota A dan B pada peta adalah 60 cm.&nbsp; Jarak sebenarnya antara kota A dan B adalah</span><span style=\"font-size: 12pt; line-height: 115%; font-family: \'Times New Roman\', serif;\"><br /></span></p>', '', NULL, NULL, 3, 3, 134, 54, 58, 22, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (48, 'Multiple Choice Single Answer', ' Pengetahuan :.......... =  biaya : ...........', ' Pilihlah pasangan kata yang paling tepat untuk mengisi titik-titik (......) pada setiap nomor soal, sehingga hubungan antara dua kata di bagian kiri tanda = sepadan dengan hubungan antara dua kata di bagian kanan tanda = ', NULL, NULL, 6, 5, 119, 17, 96, 6, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (49, 'Multiple Choice Single Answer', ' ..........: tenteram = pengawasan : ............', ' Pilihlah pasangan kata yang paling tepat untuk mengisi titik-titik (......) pada setiap nomor soal, sehingga hubungan antara dua kata di bagian kiri tanda = sepadan dengan hubungan antara dua kata di bagian kanan tanda =', NULL, NULL, 6, 5, 118, 14, 98, 6, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (50, 'Multiple Choice Single Answer', ' ..........: mencoblos = terbang: ...........', ' Pilihlah pasangan kata yang paling tepat untuk mengisi titik-titik (......) pada setiap nomor soal, sehingga hubungan antara dua kata di bagian kiri tanda = sepadan dengan hubungan antara dua kata di bagian kanan tanda =', NULL, NULL, 6, 5, 118, 53, 57, 8, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (51, 'Multiple Choice Single Answer', ' Semua tebing adalah hitam.Sebagian jurang adalah tebing.', '  Pilihlah kesimpulan yang paling tepat dari semua pernyataan atau premis yang tersedia pada setiap soal !', NULL, NULL, 6, 5, 118, 71, 37, 10, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (52, 'Multiple Choice Single Answer', ' Jika naik kereta, harus memiliki tiket.Jika hendak memiliki tiket, harus memiliki KTP', '  Pilihlah kesimpulan yang paling tepat dari semua pernyataan atau premis yang tersedia pada setiap soal !', NULL, NULL, 6, 5, 118, 83, 24, 11, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (53, 'Multiple Choice Single Answer', ' Jika air tidak tercemar, maka penduduk mandi.Jika penduduk mandi, maka harga sabun meningkat.', '  Pilihlah kesimpulan yang paling tepat dari semua pernyataan atau premis yang tersedia pada setiap soal !', NULL, NULL, 6, 5, 118, 56, 47, 15, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (54, 'Multiple Choice Single Answer', ' Ali menjual barang seharga Rp. 60.000,00 dengan harga beli Rp. 48.000,00. Berapa persen laba yang diperoleh Ali ?', '  ', NULL, NULL, 6, 5, 118, 38, 66, 14, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (55, 'Multiple Choice Single Answer', ' Jika suatu pekerjaan memfotokopi dikerjakan dengan mesin I, II, III saja, maka pekerjaan tersebut akan selesai dalam waktu berturut-turut 16 menit, 32 menit, atau 32 menit. Jika ketiga mesin digunakan bersama-sama selama 6 menit, maka pekerjaan Memfotokopi tersebut selesai ............', '  ', NULL, NULL, 6, 5, 118, 28, 73, 17, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (56, 'Multiple Choice Single Answer', ' ........, 25, 54, 20, 58, 15, 62, ..........., 66', '  Pilihlah bilangan yang tepat untuk melengkapi pola deretan bilangan pada setiap soal !', NULL, NULL, 6, 5, 118, 68, 33, 17, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (57, 'Multiple Choice Single Answer', ' 22, 18, 26, 22, 30, 26, 34, ..............', '  Pilihlah bilangan yang tepat untuk melengkapi pola deretan bilangan pada setiap soal !', NULL, NULL, 6, 5, 118, 74, 27, 17, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (58, 'Multiple Choice Single Answer', '<p><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Jika 9<sup>n</sup> = 4 maka 4. 3<sup>n+1</sup>&nbsp;- 27 = .....</span></p>', '', NULL, NULL, 6, 5, 118, 38, 58, 22, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (59, 'Multiple Choice Single Answer', '<p><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Jika <sup>b</sup>log a = -2 dan <sup>3</sup>log b = (<sup>3</sup>log 2)(1 + <sup>2</sup>log 4a), maka 4a + b =.....</span></p>', '', NULL, NULL, 6, 5, 118, 26, 68, 24, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (60, 'Multiple Choice Single Answer', '<p>Jika grafik fungsi kuadrat f(x)=ax<sup>2</sup>+bx+c mempunyai titik puncak (8,4) dan memotong sumbu X negatif, maka....</p>', '', NULL, NULL, 6, 5, 118, 15, 79, 24, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (61, 'Multiple Choice Single Answer', '<p>Jika -2 &lt; a &lt; -1 maka semua nilai yang memenuhi pertidaksamaan adalah....</p>', '', NULL, NULL, 6, 5, 118, 29, 63, 26, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (62, 'Multiple Choice Single Answer', '<p>Jika a &gt;2, maka grafik fungsi f(x) = ax<sup>2</sup> + 2ax + 2</p>', '', NULL, NULL, 6, 5, 118, 29, 65, 24, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (63, 'Multiple Choice Single Answer', '<p><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Diketahui p,q,r merupakan bilangan real dengan q&gt;0. Jika p,q,r, ⅕</span><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">q<sup>2</sup> membentuk barisan geometri, maka p<sup>6</sup>q<sup>-3</sup> =.....</span></p>', '', NULL, NULL, 6, 5, 118, 31, 62, 25, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (64, 'Multiple Choice Single Answer', '<p>Semua nilai p yang memenuhi pertidaksamaan&nbsp;<img class=\"img-responsive\" src=\"../../../upload/Capture3.PNG\" alt=\"\" /> adalah....</p>', '', NULL, NULL, 6, 5, 118, 24, 69, 25, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (65, 'Multiple Choice Single Answer', ' Seorang penjahit membuat 2 model pakaian. Dia mempunyai persediaan kain batik 40 meter2 dan kain polos 15 meter2. Model A memerlukan 1 meter2 kain batik dan 1,5 kain polos, sedangkan model B memerlukan 2 meter2 kain batik dan 0,5 meter2 kain polos. Maksimum banyak pakaian yang mungkin dapat dibuat adalah.....', '  ', NULL, NULL, 6, 5, 118, 42, 52, 24, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (66, 'Multiple Choice Single Answer', ' Nilai maksimum a sehingga sistem persamaan x + y = 4a dan 2x2 + y2 = 12a mempunyai penyelesaian adalah.....', '  ', NULL, NULL, 6, 5, 118, 11, 83, 24, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (67, 'Multiple Choice Single Answer', ' Endang bekerja di toko obat pada pagi hari dan di rumah makan pada malam hari. Setiap bulan ia memperoleh gaji dari toko obat sebesar Rp. 1.000.000,- dan bonus 10% dari penjualan, sedangkan dari rumah makan ia memperoleh gaji sebesar Rp 600.000,- dan bonus 25% dari penjualan. Jika pada bulan lalu pendapatan Endang dari rumah makan 2 kali pendapatannya dari toko obat, maka pendapatan Endang dari toko obat pada bulan tersebut adalah....', '  ', NULL, NULL, 6, 5, 118, 27, 66, 25, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (68, 'Multiple Choice Single Answer', ' (1) Sebuah studi menunjukkan bahwa anak yang dibiasakan mendengar cerita sejak dini dan dikenalkan dengan kebiasaan membaca memiliki perkembangan jaringan otak yang lebih awal. (2) Sebaliknya, anak yang tidak dikenalkan dengan kebiasaan membaca memiliki perkembangan yang kurang pada jaringan tersebut. (3) Anak-anak balita dengan orangtua yang rutin membacakan buku untuk mereka mengalami perbedaan perilaku dan prestasi akademik dengan anak-anak dengan orangtua yang cenderung pasif dalam membacakan buku. (4) Menurut sebuah studi baru yang diterbitkan dalam jurnal Pediatrics menemukan perbedaan yang juga terjadi pada aktivitas otak anak.(5) Peneliti mengamati perubahan aktivitas otak anak-anak usia 3 sampai dengan 5 tahun yang mendengarkan orangtua mereka membacakan buku melalui scanner otak yang disebut functional magnetic resonance imaging (FMRI). (6) Orangtua menjawab pertanyaan tentang berapa banyak mereka membacakan cerita untuk anak-anak serta seberapa sering melakukan komunitas. (7) Para peneliti melihat bahwa ketika anak-anak sedang mendengarkan orangtua bercerita, sejumlah daerah di bagian kiri otak menjadi lebih aktif. (8) Ini adalah daerah yang terlihat dalam memahami arti kata, konsep, dan memori. (9) Wilayah otak ini juga menjadi aktif ketika anak-anak bercerita atau membaca. (10) Pada studi ini menunjukkan bahwa perkembangan daerah ini dimulai pada usia yang sangat muda. (11) Yang lebih menarik adalah bagaimana aktivitas otak di wilayah ini lebih sibuk pada anak-anak yang orangtuanya gemar membaca. (12) Membacakan buku untuk anak membantu pertumbuhan neuron di daerah ini yang akan menguntungkan anak di masa depan dalam hal kebiasaan membaca.Apa judul yang tepat untuk teks 1 tersebut ? ', '  ', NULL, NULL, 6, 5, 118, 8, 88, 22, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (69, 'Multiple Choice Single Answer', ' (1) Sebuah studi menunjukkan bahwa anak yang dibiasakan mendengar cerita sejak dini dan dikenalkan dengan kebiasaan membaca memiliki perkembangan jaringan otak yang lebih awal. (2) Sebaliknya, anak yang tidak dikenalkan dengan kebiasaan membaca memiliki perkembangan yang kurang pada jaringan tersebut. (3) Anak-anak balita dengan orangtua yang rutin membacakan buku untuk mereka mengalami perbedaan perilaku dan prestasi akademik dengan anak-anak dengan orangtua yang cenderung pasif dalam membacakan buku. (4) Menurut sebuah studi baru yang diterbitkan dalam jurnal Pediatrics menemukan perbedaan yang juga terjadi pada aktivitas otak anak.(5) Peneliti mengamati perubahan aktivitas otak anak-anak usia 3 sampai dengan 5 tahun yang mendengarkan orangtua mereka membacakan buku melalui scanner otak yang disebut functional magnetic resonance imaging (FMRI). (6) Orangtua menjawab pertanyaan tentang berapa banyak mereka membacakan cerita untuk anak-anak serta seberapa sering melakukan komunitas. (7) Para peneliti melihat bahwa ketika anak-anak sedang mendengarkan orangtua bercerita, sejumlah daerah di bagian kiri otak menjadi lebih aktif. (8) Ini adalah daerah yang terlihat dalam memahami arti kata, konsep, dan memori. (9) Wilayah otak ini juga menjadi aktif ketika anak-anak bercerita atau membaca. (10) Pada studi ini menunjukkan bahwa perkembangan daerah ini dimulai pada usia yang sangat muda. (11) Yang lebih menarik adalah bagaimana aktivitas otak di wilayah ini lebih sibuk pada anak-anak yang orangtuanya gemar membaca. (12) Membacakan buku untuk anak membantu pertumbuhan neuron di daerah ini yang akan menguntungkan anak di masa depan dalam hal kebiasaan membaca.Kalimat manakah yang tidak efektif dalam teks 1 ? ', '  ', NULL, NULL, 6, 5, 118, 21, 74, 23, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (70, 'Multiple Choice Single Answer', ' (1) Sebuah studi menunjukkan bahwa anak yang dibiasakan mendengar cerita sejak dini dan dikenalkan dengan kebiasaan membaca memiliki perkembangan jaringan otak yang lebih awal. (2) Sebaliknya, anak yang tidak dikenalkan dengan kebiasaan membaca memiliki perkembangan yang kurang pada jaringan tersebut. (3) Anak-anak balita dengan orangtua yang rutin membacakan buku untuk mereka mengalami perbedaan perilaku dan prestasi akademik dengan anak-anak dengan orangtua yang cenderung pasif dalam membacakan buku. (4) Menurut sebuah studi baru yang diterbitkan dalam jurnal Pediatrics menemukan perbedaan yang juga terjadi pada aktivitas otak anak.(5) Peneliti mengamati perubahan aktivitas otak anak-anak usia 3 sampai dengan 5 tahun yang mendengarkan orangtua mereka membacakan buku melalui scanner otak yang disebut functional magnetic resonance imaging (FMRI). (6) Orangtua menjawab pertanyaan tentang berapa banyak mereka membacakan cerita untuk anak-anak serta seberapa sering melakukan komunitas. (7) Para peneliti melihat bahwa ketika anak-anak sedang mendengarkan orangtua bercerita, sejumlah daerah di bagian kiri otak menjadi lebih aktif. (8) Ini adalah daerah yang terlihat dalam memahami arti kata, konsep, dan memori. (9) Wilayah otak ini juga menjadi aktif ketika anak-anak bercerita atau membaca. (10) Pada studi ini menunjukkan bahwa perkembangan daerah ini dimulai pada usia yang sangat muda. (11) Yang lebih menarik adalah bagaimana aktivitas otak di wilayah ini lebih sibuk pada anak-anak yang orangtuanya gemar membaca. (12) Membacakan buku untuk anak membantu pertumbuhan neuron di daerah ini yang akan menguntungkan anak di masa depan dalam hal kebiasaan membaca.Bagaimana hubungan isi antarparagraf dalam teks 1 ?', '  ', NULL, NULL, 6, 5, 118, 17, 79, 22, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (71, 'Multiple Choice Single Answer', ' (1) Sebuah studi menunjukkan bahwa anak yang dibiasakan mendengar cerita sejak dini dan dikenalkan dengan kebiasaan membaca memiliki perkembangan jaringan otak yang lebih awal. (2) Sebaliknya, anak yang tidak dikenalkan dengan kebiasaan membaca memiliki perkembangan yang kurang pada jaringan tersebut. (3) Anak-anak balita dengan orangtua yang rutin membacakan buku untuk mereka mengalami perbedaan perilaku dan prestasi akademik dengan anak-anak dengan orangtua yang cenderung pasif dalam membacakan buku. (4) Menurut sebuah studi baru yang diterbitkan dalam jurnal Pediatrics menemukan perbedaan yang juga terjadi pada aktivitas otak anak.(5) Peneliti mengamati perubahan aktivitas otak anak-anak usia 3 sampai dengan 5 tahun yang mendengarkan orangtua mereka membacakan buku melalui scanner otak yang disebut functional magnetic resonance imaging (FMRI). (6) Orangtua menjawab pertanyaan tentang berapa banyak mereka membacakan cerita untuk anak-anak serta seberapa sering melakukan komunitas. (7) Para peneliti melihat bahwa ketika anak-anak sedang mendengarkan orangtua bercerita, sejumlah daerah di bagian kiri otak menjadi lebih aktif. (8) Ini adalah daerah yang terlihat dalam memahami arti kata, konsep, dan memori. (9) Wilayah otak ini juga menjadi aktif ketika anak-anak bercerita atau membaca. (10) Pada studi ini menunjukkan bahwa perkembangan daerah ini dimulai pada usia yang sangat muda. (11) Yang lebih menarik adalah bagaimana aktivitas otak di wilayah ini lebih sibuk pada anak-anak yang orangtuanya gemar membaca. (12) Membacakan buku untuk anak membantu pertumbuhan neuron di daerah ini yang akan menguntungkan anak di masa depan dalam hal kebiasaan membaca.Apa simpulan teks tersebut ?', '  ', NULL, NULL, 6, 5, 118, 57, 39, 22, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (72, 'Multiple Choice Single Answer', ' (1) Sebuah studi menunjukkan bahwa anak yang dibiasakan mendengar cerita sejak dini dan dikenalkan dengan kebiasaan membaca memiliki perkembangan jaringan otak yang lebih awal. (2) Sebaliknya, anak yang tidak dikenalkan dengan kebiasaan membaca memiliki perkembangan yang kurang pada jaringan tersebut. (3) Anak-anak balita dengan orangtua yang rutin membacakan buku untuk mereka mengalami perbedaan perilaku dan prestasi akademik dengan anak-anak dengan orangtua yang cenderung pasif dalam membacakan buku. (4) Menurut sebuah studi baru yang diterbitkan dalam jurnal Pediatrics menemukan perbedaan yang juga terjadi pada aktivitas otak anak.(5) Peneliti mengamati perubahan aktivitas otak anak-anak usia 3 sampai dengan 5 tahun yang mendengarkan orangtua mereka membacakan buku melalui scanner otak yang disebut functional magnetic resonance imaging (FMRI). (6) Orangtua menjawab pertanyaan tentang berapa banyak mereka membacakan cerita untuk anak-anak serta seberapa sering melakukan komunitas. (7) Para peneliti melihat bahwa ketika anak-anak sedang mendengarkan orangtua bercerita, sejumlah daerah di bagian kiri otak menjadi lebih aktif. (8) Ini adalah daerah yang terlihat dalam memahami arti kata, konsep, dan memori. (9) Wilayah otak ini juga menjadi aktif ketika anak-anak bercerita atau membaca. (10) Pada studi ini menunjukkan bahwa perkembangan daerah ini dimulai pada usia yang sangat muda. (11) Yang lebih menarik adalah bagaimana aktivitas otak di wilayah ini lebih sibuk pada anak-anak yang orangtuanya gemar membaca. (12) Membacakan buku untuk anak membantu pertumbuhan neuron di daerah ini yang akan menguntungkan anak di masa depan dalam hal kebiasaan membaca.Apa gagasan utama yang tepat untuk paragraf selanjutnya dari teks tersebut ?', '  ', NULL, NULL, 6, 5, 118, 20, 76, 22, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (73, 'Multiple Choice Single Answer', ' (1) K-pop adalah salah satu pesan verbal melalui media entertainment musik (2) Di Korea K-pop bukan sekadar genre musik, tetapi sudah menjadi kebudayaan dan gaya hidup dan sudah tidak dapat terlepas dari negara tersebut. (3) Populernya budaya tersebut menjadi topik yang sering diperbincangkan belakangan ini. (4) Indonesia menjadi salah satu negara yang terpengaruh sangat besar oleh budaya K-pop. (5) Itu dapat ditunjukkan dengan banyaknya boy band dan girl band yang meniru boy band dan girl band Korea. (6) Hal tersebut menyebabkan ketidakstabilan budaya di Indonesia, karena anak mudanya lebih tertarik mempelajari budaya negara lain dibandingkan dengan budaya negara sendiri. (7) Sangat ironis memang, ketika melihat kecintaan para penerus bangsa terhadap budaya negara sendiri sedikit demi sedikit terkikis karena pengaruh budaya negara lain (K-pop).(8) Dengan memvirusnya budaya K-pop di Indonesia, menjadikan negara kita negara yang tidak mempunyai identitas yang jelas. (9) Kenapa tidak, negara kita ini adalah negara yang sangat mudah dipengaruhi oleh kebudayaan asing. (10) Karena K-pop memang menjadi salah satu senjata negara Korea Selatan untuk menyebarkan budaya dan paham mereka serta bisa dikatakan imperialisme budaya. (11) Imperialisme budaya ini disebabkan oleh globalisasi yang semakin menggurita. (12) Bahkan, negara maju pun akan sangat mudah menyebarkan kebudayaan mereka ke seluruh penjuru dunia melalui media massa. (13) Sementara itu, negara-negara berkembang akan sangat rentan terpengaruh, termasuk negara Indonesia.Apa gagasan utama paragraf ke-2 pada teks di atas ?', '  ', NULL, NULL, 6, 5, 118, 15, 81, 22, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (74, 'Multiple Choice Single Answer', ' (1) K-pop adalah salah satu pesan verbal melalui media entertainment musik (2) Di Korea K-pop bukan sekadar genre musik, tetapi sudah menjadi kebudayaan dan gaya hidup dan sudah tidak dapat terlepas dari negara tersebut. (3) Populernya budaya tersebut menjadi topik yang sering diperbincangkan belakangan ini. (4) Indonesia menjadi salah satu negara yang terpengaruh sangat besar oleh budaya K-pop. (5) Itu dapat ditunjukkan dengan banyaknya boy band dan girl band yang meniru boy band dan girl band Korea. (6) Hal tersebut menyebabkan ketidakstabilan budaya di Indonesia, karena anak mudanya lebih tertarik mempelajari budaya negara lain dibandingkan dengan budaya negara sendiri. (7) Sangat ironis memang, ketika melihat kecintaan para penerus bangsa terhadap budaya negara sendiri sedikit demi sedikit terkikis karena pengaruh budaya negara lain (K-pop).(8) Dengan memvirusnya budaya K-pop di Indonesia, menjadikan negara kita negara yang tidak mempunyai identitas yang jelas. (9) Kenapa tidak, negara kita ini adalah negara yang sangat mudah dipengaruhi oleh kebudayaan asing. (10) Karena K-pop memang menjadi salah satu senjata negara Korea Selatan untuk menyebarkan budaya dan paham mereka serta bisa dikatakan imperialisme budaya. (11) Imperialisme budaya ini disebabkan oleh globalisasi yang semakin menggurita. (12) Bahkan, negara maju pun akan sangat mudah menyebarkan kebudayaan mereka ke seluruh penjuru dunia melalui media massa. (13) Sementara itu, negara-negara berkembang akan sangat rentan terpengaruh, termasuk negara Indonesia.Pada kalimat nomor berapa terdapart kesalahan penggunaan tanda baca koma ? ', '  ', NULL, NULL, 6, 5, 118, 22, 74, 22, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (75, 'Multiple Choice Single Answer', ' (1) K-pop adalah salah satu pesan verbal melalui media entertainment musik (2) Di Korea K-pop bukan sekadar genre musik, tetapi sudah menjadi kebudayaan dan gaya hidup dan sudah tidak dapat terlepas dari negara tersebut. (3) Populernya budaya tersebut menjadi topik yang sering diperbincangkan belakangan ini. (4) Indonesia menjadi salah satu negara yang terpengaruh sangat besar oleh budaya K-pop. (5) Itu dapat ditunjukkan dengan banyaknya boy band dan girl band yang meniru boy band dan girl band Korea. (6) Hal tersebut menyebabkan ketidakstabilan budaya di Indonesia, karena anak mudanya lebih tertarik mempelajari budaya negara lain dibandingkan dengan budaya negara sendiri. (7) Sangat ironis memang, ketika melihat kecintaan para penerus bangsa terhadap budaya negara sendiri sedikit demi sedikit terkikis karena pengaruh budaya negara lain (K-pop).(8) Dengan memvirusnya budaya K-pop di Indonesia, menjadikan negara kita negara yang tidak mempunyai identitas yang jelas. (9) Kenapa tidak, negara kita ini adalah negara yang sangat mudah dipengaruhi oleh kebudayaan asing. (10) Karena K-pop memang menjadi salah satu senjata negara Korea Selatan untuk menyebarkan budaya dan paham mereka serta bisa dikatakan imperialisme budaya. (11) Imperialisme budaya ini disebabkan oleh globalisasi yang semakin menggurita. (12) Bahkan, negara maju pun akan sangat mudah menyebarkan kebudayaan mereka ke seluruh penjuru dunia melalui media massa. (13) Sementara itu, negara-negara berkembang akan sangat rentan terpengaruh, termasuk negara Indonesia.Pertanyaan manakah yang tidak sesuai dengan isi teks?', '  ', NULL, NULL, 6, 5, 118, 40, 56, 22, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (76, 'Multiple Choice Single Answer', ' (1) K-pop adalah salah satu pesan verbal melalui media entertainment musik (2) Di Korea K-pop bukan sekadar genre musik, tetapi sudah menjadi kebudayaan dan gaya hidup dan sudah tidak dapat terlepas dari negara tersebut. (3) Populernya budaya tersebut menjadi topik yang sering diperbincangkan belakangan ini. (4) Indonesia menjadi salah satu negara yang terpengaruh sangat besar oleh budaya K-pop. (5) Itu dapat ditunjukkan dengan banyaknya boy band dan girl band yang meniru boy band dan girl band Korea. (6) Hal tersebut menyebabkan ketidakstabilan budaya di Indonesia, karena anak mudanya lebih tertarik mempelajari budaya negara lain dibandingkan dengan budaya negara sendiri. (7) Sangat ironis memang, ketika melihat kecintaan para penerus bangsa terhadap budaya negara sendiri sedikit demi sedikit terkikis karena pengaruh budaya negara lain (K-pop).(8) Dengan memvirusnya budaya K-pop di Indonesia, menjadikan negara kita negara yang tidak mempunyai identitas yang jelas. (9) Kenapa tidak, negara kita ini adalah negara yang sangat mudah dipengaruhi oleh kebudayaan asing. (10) Karena K-pop memang menjadi salah satu senjata negara Korea Selatan untuk menyebarkan budaya dan paham mereka serta bisa dikatakan imperialisme budaya. (11) Imperialisme budaya ini disebabkan oleh globalisasi yang semakin menggurita. (12) Bahkan, negara maju pun akan sangat mudah menyebarkan kebudayaan mereka ke seluruh penjuru dunia melalui media massa. (13) Sementara itu, negara-negara berkembang akan sangat rentan terpengaruh, termasuk negara Indonesia.Apa yang dirujuk oleh kata tersebut pada kalimat (3) ?', '  ', NULL, NULL, 6, 5, 118, 64, 32, 22, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (77, 'Multiple Choice Single Answer', ' (1) K-pop adalah salah satu pesan verbal melalui media entertainment musik (2) Di Korea K-pop bukan sekadar genre musik, tetapi sudah menjadi kebudayaan dan gaya hidup dan sudah tidak dapat terlepas dari negara tersebut. (3) Populernya budaya tersebut menjadi topik yang sering diperbincangkan belakangan ini. (4) Indonesia menjadi salah satu negara yang terpengaruh sangat besar oleh budaya K-pop. (5) Itu dapat ditunjukkan dengan banyaknya boy band dan girl band yang meniru boy band dan girl band Korea. (6) Hal tersebut menyebabkan ketidakstabilan budaya di Indonesia, karena anak mudanya lebih tertarik mempelajari budaya negara lain dibandingkan dengan budaya negara sendiri. (7) Sangat ironis memang, ketika melihat kecintaan para penerus bangsa terhadap budaya negara sendiri sedikit demi sedikit terkikis karena pengaruh budaya negara lain (K-pop).(8) Dengan memvirusnya budaya K-pop di Indonesia, menjadikan negara kita negara yang tidak mempunyai identitas yang jelas. (9) Kenapa tidak, negara kita ini adalah negara yang sangat mudah dipengaruhi oleh kebudayaan asing. (10) Karena K-pop memang menjadi salah satu senjata negara Korea Selatan untuk menyebarkan budaya dan paham mereka serta bisa dikatakan imperialisme budaya. (11) Imperialisme budaya ini disebabkan oleh globalisasi yang semakin menggurita. (12) Bahkan, negara maju pun akan sangat mudah menyebarkan kebudayaan mereka ke seluruh penjuru dunia melalui media massa. (13) Sementara itu, negara-negara berkembang akan sangat rentan terpengaruh, termasuk negara Indonesia.Apa kelemahan yang ada di paragraf ke-2?', '  ', NULL, NULL, 6, 5, 118, 39, 57, 22, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (78, 'Multiple Choice Single Answer', '       Physalia is half-building, and all green. This mammoth aluminium concept by a belgian architect Vincent Callebaut is meant to travel Europe&rsquo;s rivers, making filthy water drinkable. At the same time, the ship generates more energy than is uses.       A coat of titanium dioxide paint brushed onto the silvery shell will neutralize pollution by absorbing ultraviolet rays, enabling a chemical reaction that decomposes organic and inorganic toxins. It is the same technology used in certain high-tech concrete that breaks down airborne particulates. As the vessel whips along, purifying waterways, it can draw on both solar and hydro power. Turbines under the hull transform water movement into electricity, and rooftop photovoltaic cell harness energy from the sun. The roof doubles as a nursery, whose carefully selected plants help folter river gunk, whether from the thames, Rhine or Euphrates.      But Physalia is not just designed to be a working ship. The vessel will also be a floating museum of sorts. Scientists who study aquatic ecosystems can hole up in the dedicated &ldquo;Earth garden&rdquo; lab, and tourists can visit temporary exhibits  in a &ldquo;water garden&rdquo; or settle into a submerged lounge that could easily pass for a London nightclub. Callebaut 33, dreamed up the idea after last year&rsquo;s  United Nations Climate Change Conference in Copenhagen shone a long-overdue spotlight on global water issues. He has some superior terms for his project : It is a &ldquo;riomadic hydrodynamic laboratory,&rdquo; a&rdquo;fragment of living earth,&rdquo; and a&rsquo;floating agora&rdquo; on a&rdquo;geopolitical scale.&rdquo; Others might just call it a cool idea.It is clear from the passage that the author of the passage above attempts to &hellip;..', '  ', NULL, NULL, 6, 5, 118, 24, 72, 22, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (79, 'Multiple Choice Single Answer', ' Physalia is half-building, and all green. This mammoth aluminium concept by a belgian architect Vincent Callebaut is meant to travel Europe&rsquo;s rivers, making filthy water drinkable. At the same time, the ship generates more energy than is uses.       A coat of titanium dioxide paint brushed onto the silvery shell will neutralize pollution by absorbing ultraviolet rays, enabling a chemical reaction that decomposes organic and inorganic toxins. It is the same technology used in certain high-tech concrete that breaks down airborne particulates. As the vessel whips along, purifying waterways, it can draw on both solar and hydro power. Turbines under the hull transform water movement into electricity, and rooftop photovoltaic cell harness energy from the sun. The roof doubles as a nursery, whose carefully selected plants help folter river gunk, whether from the thames, Rhine or Euphrates.      But Physalia is not just designed to be a working ship. The vessel will also be a floating museum of sorts. Scientists who study aquatic ecosystems can hole up in the dedicated &ldquo;Earth garden&rdquo; lab, and tourists can visit temporary exhibits  in a &ldquo;water garden&rdquo; or settle into a submerged lounge that could easily pass for a London nightclub. Callebaut 33, dreamed up the idea after last year&rsquo;s  United Nations Climate Change Conference in Copenhagen shone a long-overdue spotlight on global water issues. He has some superior terms for his project : It is a &ldquo;riomadic hydrodynamic laboratory,&rdquo; a&rdquo;fragment of living earth,&rdquo; and a&rsquo;floating agora&rdquo; on a&rdquo;geopolitical scale.&rdquo; Others might just call it a cool idea.Compared to paragraph 2, paragraph 3 provides &hellip;.', '  ', ' what is 2+2 =? &ndash; This is second language question Note &ndash; keep question number same as its primary language question', '  description here', 6, 5, 118, 18, 76, 24, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (80, 'Multiple Choice Single Answer', ' Physalia is half-building, and all green. This mammoth aluminium concept by a belgian architect Vincent Callebaut is meant to travel Europe&rsquo;s rivers, making filthy water drinkable. At the same time, the ship generates more energy than is uses.       A coat of titanium dioxide paint brushed onto the silvery shell will neutralize pollution by absorbing ultraviolet rays, enabling a chemical reaction that decomposes organic and inorganic toxins. It is the same technology used in certain high-tech concrete that breaks down airborne particulates. As the vessel whips along, purifying waterways, it can draw on both solar and hydro power. Turbines under the hull transform water movement into electricity, and rooftop photovoltaic cell harness energy from the sun. The roof doubles as a nursery, whose carefully selected plants help folter river gunk, whether from the thames, Rhine or Euphrates.      But Physalia is not just designed to be a working ship. The vessel will also be a floating museum of sorts. Scientists who study aquatic ecosystems can hole up in the dedicated &ldquo;Earth garden&rdquo; lab, and tourists can visit temporary exhibits  in a &ldquo;water garden&rdquo; or settle into a submerged lounge that could easily pass for a London nightclub. Callebaut 33, dreamed up the idea after last year&rsquo;s  United Nations Climate Change Conference in Copenhagen shone a long-overdue spotlight on global water issues. He has some superior terms for his project : It is a &ldquo;riomadic hydrodynamic laboratory,&rdquo; a&rdquo;fragment of living earth,&rdquo; and a&rsquo;floating agora&rdquo; on a&rdquo;geopolitical scale.&rdquo; Others might just call it a cool idea.What does the word &lsquo;it&rsquo; in &lsquo;Others might just call it a cool idea&rsquo; (paragraph 3, last line) refer to?', '  ', NULL, NULL, 6, 5, 118, 49, 47, 22, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (81, 'Multiple Choice Single Answer', ' Physalia is half-building, and all green. This mammoth aluminium concept by a belgian architect Vincent Callebaut is meant to travel Europe&rsquo;s rivers, making filthy water drinkable. At the same time, the ship generates more energy than is uses.       A coat of titanium dioxide paint brushed onto the silvery shell will neutralize pollution by absorbing ultraviolet rays, enabling a chemical reaction that decomposes organic and inorganic toxins. It is the same technology used in certain high-tech concrete that breaks down airborne particulates. As the vessel whips along, purifying waterways, it can draw on both solar and hydro power. Turbines under the hull transform water movement into electricity, and rooftop photovoltaic cell harness energy from the sun. The roof doubles as a nursery, whose carefully selected plants help folter river gunk, whether from the thames, Rhine or Euphrates.      But Physalia is not just designed to be a working ship. The vessel will also be a floating museum of sorts. Scientists who study aquatic ecosystems can hole up in the dedicated &ldquo;Earth garden&rdquo; lab, and tourists can visit temporary exhibits  in a &ldquo;water garden&rdquo; or settle into a submerged lounge that could easily pass for a London nightclub. Callebaut 33, dreamed up the idea after last year&rsquo;s  United Nations Climate Change Conference in Copenhagen shone a long-overdue spotlight on global water issues. He has some superior terms for his project : It is a &ldquo;riomadic hydrodynamic laboratory,&rdquo; a&rdquo;fragment of living earth,&rdquo; and a&rsquo;floating agora&rdquo; on a&rdquo;geopolitical scale.&rdquo; Others might just call it a cool idea.Which of the following is matching with the idea of the size of Physalia?', '  ', NULL, NULL, 6, 5, 118, 12, 84, 22, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (82, 'Multiple Choice Single Answer', ' Physalia is half-building, and all green. This mammoth aluminium concept by a belgian architect Vincent Callebaut is meant to travel Europe&rsquo;s rivers, making filthy water drinkable. At the same time, the ship generates more energy than is uses.       A coat of titanium dioxide paint brushed onto the silvery shell will neutralize pollution by absorbing ultraviolet rays, enabling a chemical reaction that decomposes organic and inorganic toxins. It is the same technology used in certain high-tech concrete that breaks down airborne particulates. As the vessel whips along, purifying waterways, it can draw on both solar and hydro power. Turbines under the hull transform water movement into electricity, and rooftop photovoltaic cell harness energy from the sun. The roof doubles as a nursery, whose carefully selected plants help folter river gunk, whether from the thames, Rhine or Euphrates.      But Physalia is not just designed to be a working ship. The vessel will also be a floating museum of sorts. Scientists who study aquatic ecosystems can hole up in the dedicated &ldquo;Earth garden&rdquo; lab, and tourists can visit temporary exhibits  in a &ldquo;water garden&rdquo; or settle into a submerged lounge that could easily pass for a London nightclub. Callebaut 33, dreamed up the idea after last year&rsquo;s  United Nations Climate Change Conference in Copenhagen shone a long-overdue spotlight on global water issues. He has some superior terms for his project : It is a &ldquo;riomadic hydrodynamic laboratory,&rdquo; a&rdquo;fragment of living earth,&rdquo; and a&rsquo;floating agora&rdquo; on a&rdquo;geopolitical scale.&rdquo; Others might just call it a cool idea.The author&rsquo;s technological view regarding Physalia is that it is &hellip;.', '  ', NULL, NULL, 6, 5, 118, 9, 86, 23, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (83, 'Multiple Choice Single Answer', '<p>Everyone likes to group things. Language students group words as verbs, nouns and so on ; collections of words are classified as phrases, or clauses, or sentences, and these again are reclassified according to their function. In the same way, botanists classify plants as algae, or fungi, or gymnosperms, etc, Zoologists classify animals as vertebrates and invertebrates. The vertebrates can be further classified as mammals, reptiles, bird, fish, etc. Classification enables us to keep hold of more information and, if it is based on the right data, enables us to understand better the ideas we are studying.</p>\n<p>Chemists are no exception. The chemical classification of materials, if it is based on a good system, should enable us to understand better the many substances which exist in our world. What is to be the basis of our classification? Perhaps the most obvious one is appearance. Materials could be classified as solid, liguid or gas with some mixed types as, for example, mud being solid/liguid material and steam as liguid/gas material . Appearance could enable us to subdivide our main classification groups a little further, the solid may be green, or black, powdery or crystalline; the liguid may be colored, oily, thick, or free flowing; the gas may be colored. However, we soon realize that many probably quite different materials have the same appearance. Both air and the deadly carbon-monixide gas are colorless, odorless gases, but we would not like to group them as the same thing. Many different liquids are colorless, water-like materials.</p>\n<p>The examples provided in paragraph 2 clarify that &hellip;</p>', '', NULL, NULL, 6, 5, 118, 37, 59, 22, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (84, 'Multiple Choice Single Answer', '<p>Everyone likes to group things. Language students group words as verbs, nouns and so on ; collections of words are classified as phrases, or clauses, or sentences, and these again are reclassified according to their function. In the same way, botanists classify plants as algae, or fungi, or gymnosperms, etc, Zoologists classify animals as vertebrates and invertebrates. The vertebrates can be further classified as mammals, reptiles, bird, fish, etc. Classification enables us to keep hold of more information and, if it is based on the right data, enables us to understand better the ideas we are studying.</p>\n<p>Chemists are no exception. The chemical classification of materials, if it is based on a good system, should enable us to understand better the many substances which exist in our world. What is to be the basis of our classification? Perhaps the most obvious one is appearance. Materials could be classified as solid, liguid or gas with some mixed types as, for example, mud being solid/liguid material and steam as liguid/gas material . Appearance could enable us to subdivide our main classification groups a little further, the solid may be green, or black, powdery or crystalline; the liguid may be colored, oily, thick, or free flowing; the gas may be colored. However, we soon realize that many probably quite different materials have the same appearance. Both air and the deadly carbon-monixide gas are colorless, odorless gases, but we would not like to group them as the same thing. Many different liquids are colorless, water-like materials.</p>\n<p>Paragraph 2 exemplifies the idea about classsification that.....</p>', '', NULL, NULL, 6, 5, 118, 14, 81, 23, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (85, 'Multiple Choice Single Answer', '<p>Everyone likes to group things. Language students group words as verbs, nouns and so on ; collections of words are classified as phrases, or clauses, or sentences, and these again are reclassified according to their function. In the same way, botanists classify plants as algae, or fungi, or gymnosperms, etc, Zoologists classify animals as vertebrates and invertebrates. The vertebrates can be further classified as mammals, reptiles, bird, fish, etc. Classification enables us to keep hold of more information and, if it is based on the right data, enables us to understand better the ideas we are studying.</p>\n<p>Chemists are no exception. The chemical classification of materials, if it is based on a good system, should enable us to understand better the many substances which exist in our world. What is to be the basis of our classification? Perhaps the most obvious one is appearance. Materials could be classified as solid, liguid or gas with some mixed types as, for example, mud being solid/liguid material and steam as liguid/gas material . Appearance could enable us to subdivide our main classification groups a little further, the solid may be green, or black, powdery or crystalline; the liguid may be colored, oily, thick, or free flowing; the gas may be colored. However, we soon realize that many probably quite different materials have the same appearance. Both air and the deadly carbon-monixide gas are colorless, odorless gases, but we would not like to group them as the same thing. Many different liquids are colorless, water-like materials.</p>\n<p>the sentence &ldquo;Chemists are no exception&rdquo; (Paragraph 2 line 1) could possibly be restated as....</p>', '', NULL, NULL, 6, 5, 118, 21, 75, 22, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (86, 'Multiple Choice Single Answer', '<p>Everyone likes to group things. Language students group words as verbs, nouns and so on ; collections of words are classified as phrases, or clauses, or sentences, and these again are reclassified according to their function. In the same way, botanists classify plants as algae, or fungi, or gymnosperms, etc, Zoologists classify animals as vertebrates and invertebrates. The vertebrates can be further classified as mammals, reptiles, bird, fish, etc. Classification enables us to keep hold of more information and, if it is based on the right data, enables us to understand better the ideas we are studying.</p>\n<p>Chemists are no exception. The chemical classification of materials, if it is based on a good system, should enable us to understand better the many substances which exist in our world. What is to be the basis of our classification? Perhaps the most obvious one is appearance. Materials could be classified as solid, liguid or gas with some mixed types as, for example, mud being solid/liguid material and steam as liguid/gas material . Appearance could enable us to subdivide our main classification groups a little further, the solid may be green, or black, powdery or crystalline; the liguid may be colored, oily, thick, or free flowing; the gas may be colored. However, we soon realize that many probably quite different materials have the same appearance. Both air and the deadly carbon-monixide gas are colorless, odorless gases, but we would not like to group them as the same thing. Many different liquids are colorless, water-like materials.</p>\n<p>The paragraph following the passage most likely deals with the classification of...</p>', '', NULL, NULL, 6, 5, 118, 46, 49, 23, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (87, 'Multiple Choice Single Answer', '<p>Everyone likes to group things. Language students group words as verbs, nouns and so on ; collections of words are classified as phrases, or clauses, or sentences, and these again are reclassified according to their function. In the same way, botanists classify plants as algae, or fungi, or gymnosperms, etc, Zoologists classify animals as vertebrates and invertebrates. The vertebrates can be further classified as mammals, reptiles, bird, fish, etc. Classification enables us to keep hold of more information and, if it is based on the right data, enables us to understand better the ideas we are studying.</p>\n<p>Chemists are no exception. The chemical classification of materials, if it is based on a good system, should enable us to understand better the many substances which exist in our world. What is to be the basis of our classification? Perhaps the most obvious one is appearance. Materials could be classified as solid, liguid or gas with some mixed types as, for example, mud being solid/liguid material and steam as liguid/gas material . Appearance could enable us to subdivide our main classification groups a little further, the solid may be green, or black, powdery or crystalline; the liguid may be colored, oily, thick, or free flowing; the gas may be colored. However, we soon realize that many probably quite different materials have the same appearance. Both air and the deadly carbon-monixide gas are colorless, odorless gases, but we would not like to group them as the same thing. Many different liquids are colorless, water-like materials.</p>\n<p>How does the author organize the ideas?</p>', '', NULL, NULL, 6, 5, 118, 29, 63, 26, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (111, 'Multiple Choice Single Answer', ' what is 2+2 =?', '  description here', ' what is 2+2 =? &ndash; This is second language question Note &ndash; keep question number same as its primary language question', '  description here', 2, 1, 0, 0, 0, 0, 0, NULL, '', NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (112, 'Multiple Choice Single Answer', ' what is 2+2 =? &ndash; This is second language question Note &ndash; keep question number same as its primary language question', '  description here', NULL, NULL, 2, 1, 0, 0, 0, 0, 0, NULL, '', NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (113, 'Multiple Choice Multiple Answer', ' what is 2+6 =?', '  ', NULL, NULL, 2, 1, 0, 0, 0, 0, 0, NULL, '', NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (114, 'Multiple Choice Single Answer', ' Who is in the picture?<img src=&#34;http://localhost/savsoftquiz_v4.0_enterprise/upload/word_images/15091000591.jpeg&#34;>', '  ', NULL, NULL, 2, 1, 0, 0, 0, 0, 0, NULL, '', NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (115, 'Multiple Choice Single Answer', ' what is 2+2 =?', '  description here', ' what is 2+2 =? &ndash; This is second language question Note &ndash; keep question number same as its primary language question', '  description here', 2, 1, 2, 0, 1, 1, 0, NULL, ' Paragraph here', ' Paragraph here', 0);
INSERT INTO `savsoft_qbank` VALUES (116, 'Multiple Choice Single Answer', ' what is 2+2 =? &ndash; This is second language question Note &ndash; keep question number same as its primary language question', '  description here', NULL, NULL, 2, 1, 0, 0, 0, 0, 0, NULL, ' Paragraph here', NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (117, 'Multiple Choice Multiple Answer', ' what is 2+6 =?', '  ', NULL, NULL, 2, 1, 2, 0, 0, 2, 0, NULL, '', NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (118, 'Multiple Choice Single Answer', '<p>Who is in the picture?<img src=\"../../../../savsoftquiz_v4.0_enterprise/upload/word_images/15091002001.jpeg\" /></p>', '', NULL, NULL, 2, 1, 2, 0, 0, 2, 0, NULL, NULL, NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (119, 'Multiple Choice Single Answer', '<p>Berapa nilai x kalau y = 20</p>', '<p>berapa yah</p>', NULL, NULL, 2, 2, 0, 0, 0, 0, 1, 'Admin IBI KKG', '<p>Testing</p>', NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (121, 'Multiple Choice Single Answer', '<p>Tujuan utama diciptakannya lingkungan kerja yang baik dalam suatu perusahaan antara lain adalah :</p>\r\n<p>(1) Kesenangan di dalam ruang kerja</p>\r\n<p>(2) Kenaikan tingkat produktivitas kerja</p>\r\n<p>(3) Kenyamanan dalam melaksanakan pekerjaan</p>', '', NULL, NULL, 7, 6, 3, 1, 1, 1, 1, 'Admin KSB', '<p>Petunjuk :&nbsp; Anda diminta membaca setiap bacaan dengan seksama.&nbsp; Bacalah secara efektif dan jangan sia-siakan waktu.&nbsp; Kemudian, jawablah pertanyaan-pertanyaan yang tersedia di lembar jawaban yang telah disediakan.&nbsp;</p>\r\n<p><span style=\"font-size: 34px;\">BACAAN 1</span></p>\r\n<p>Lingkungan kerja di dalam suatu perusahaan sangat penting untuk diperhatikan oleh manajemen. Penyusunan suatu sistem produksi yang baik tidak akan dapat dilaksanakan dengan efektif apabila tidak didukung dengan lingkungan kerja yang memuaskan. Segala mesin dan peralatan yang&nbsp; dipasang dan digunakan di dalam pabrik (meskipun menggunakan teknologi yang paling baru) tidak akan banyak berarti apabila para karyawan perusahaan tidak dapat bekerja dengan baik yang disebabkan oleh faktor lingkungan yang tidak memenuhi persyaratan yang ditentukan. Walaupun lingkungan kerja tidak berfungsi sebagai mesin dan peralatan produksi yang langsung memproses bahan menjadi produk, namun pengaruh lingkungan kerja akan terasa di dalam proses produksi yang dilaksanakan oleh perusahaan. Dengan kata lain, lingkungan kerja akan mempunyai pengaruh langsung terhadap para karyawan yang melaksanakan proses produksi. Oleh karena itu secara tidak langsung lingkungan kerja akan berpengaruh terhadap produk yang diproses dalam perusahaan.</p>\r\n<p>Pabrik yang didirikan oleh perusahaan apapun, pada umumnya diharapkan akan dapat berproduksi dengan tingkat produktivitas yang tinggi, efisiensi kerja yang tinggi dan biaya produksi yang dapat diusahakan menjadi serendah-rendahnya. Disamping teknologi, bahan baku, mesin dan peralatan produksi yang digunakan serta loyalitas dan ketrampilan karyawan yang berkerja di dalam perusahaan, lingkungan kerja juga akan mempunyai peranan yang cukup tinggi. Lingkungan kerja yang memuaskan para karyawan dapat meningkatkan gairah kerja. Demikian pula sebaliknya, lingkungan kerja yang sangat tidak memuaskan dapat mengurangi gairah kerja dan menurunkan tingkat produktivitas kerja.</p>\r\n<p>Hubungan antara lingkungan kerja yang baik dan tingginya tingkat produktivitas kerja para karyawan di dalam suatu perusahaan memang tidak perlu diragukan lagi. Lingkungan kerja yang cukup memuaskan para karyawan perusahaan akan mendorong para karyawan tersebut untuk bekerja sebaik-baiknya, sehingga pelaksanaan proses produksi di dalam perusahaan akan berjalan dengan baik pula. Dalam hal ini, besarnya luas produksi dalam perusahaan akan dipengaruhi pula oleh keadaan lingkungan kerja di dalam perusahaan yang bersangkutan. Apabila lingkungan kerjanya baik, maka para karyawan akan cenderung untuk bekerja dengan baik pula sehingga luas produksi yang dilaksanakan akan mendekati luas produksi yang direncanakan oleh manajemen perusahaan yang bersangkutan. Demikian pula tingkat efisiensi perusahaan, apabila efisiensi kerja para karyawan dapat dipertanggung jawabkan, maka efisiensi kerja di dalam perusahaan secara keseluruhan dapat pula dipertahankan didalam tingkat yang tinggi.</p>\r\n<p>Titik tolak perencanaan lingkungan suatu perusahaan adalah tingginya tingkat produktivitas perusahaan yang bersangkutan. Dengan demikian, perencanaan lingkungan kerja yang dilaksanakan untuk pabrik yang didirikan oleh perusahaan sama sekali bukan untuk tu juan-tujuan kemewahan. Adalah merupakan hal yang sangat keliru apabila di dalam suatu perusahaan direncanakan lingkungan kerja dengan tujuan untuk kemewahan, atau dibeli fasilitas-fasilitas untuk kemewahan tanpa memperhatikan terdapatnya kenaikan tingkat produktivitas kerja dengan mempergunakan fasilitas tersebut. Oleh karena itu, dalam penyusunan perencanaan lingkungan kerja usahakan untuk menggunakan fasilitas-fasilitas yang diperkirakan dapat mendorong tingkat produktivitas kerja para karyawan. Hal ini untuk menghindarkan terdapatnya beberapa fasilitas dalam perusahaan lebih dari yang diperlukan , karena mengundang sebagian (besar) dari para karyawan untuk berebut menikmati fasilitas yang diberikan oleh perusahaan tersebut. Dengan demikian para karyawan justru akan lebih memperhatikan masalah-masalah fasilitas perusahaan dibandingkan dengan pekerjaan yang menjadi beban tugasnya. Hal ini tentu saja akan mengakibatkan penurunan tingkat produktivitas kerja. Dalam hubungannya dengan pengadaan fasilitas perusahaan untuk memperbaiki lingkungan kerja para karyawan&nbsp; perusahaan ini, manajemen perusahaan yang bersangkutan hendaknya dapat menyusun suatu perencanaan yang cukup cermat agar fasilitas yang diberikan oleh perusahaan kepada para karyawan dapat benar-benar menaikkan tingkat produktivitas kerja, dan bukannya justru menurunkan tingkat produktivitas dari perusahaan yang bersangkutan.</p>\r\n<p>Berdasarkan kepada hal-hal tersebut di atas, sudah selayaknya apabila manajemen perusahaan mempertimbangkan perencanaan lingkungan kerja bagi para karyawannya dengan sebaik-baiknya. Perencanaan lingkungan kerja yang baik akan menghasilkan lingkungan kerja yang memuaskan para karyawan, sehingga produktivitas kerja para karyawan perusahaan tersebut dapat dipertahankan pada tingkat yang tinggi. Dengan tingkat produktivitas kerja yang tinggi, perusahaan dapat melaksanakan proses produksi pada tingkat yang tinggi pula.</p>\r\n<p>Untuk dapat mengadakan penyusunan perencanaan lingkungan kerja dengan baik, manajemen perusahaan harus benar-benar mengetahui tentang lingkungan kerja yang dipersiapkan untuk perusahaannya tersebut. Hal ini dapat dilaksanakan dengan baik apabila manajemen perusahaan mengetahui unsuru-unsur penting apa saja yang akan menentukan lingkungan kerja para karyawan yang bekerja di dalam perusahaan tersebut. Banyak pendapat yang sulit membedakan antara lingkungan kerja dengan kondisi kerja. Lingkungan kerja adalah suatu lingkungan di mana para karyawan bekerja, sedangkan kondisi kerja merupakan kondisi di mana para karyawan&nbsp; tersebut bekerja. Dengan demikian sebenarnya kondisi kerja termasuk salah satu unsur lingkungan kerja.</p>\r\n<p>Secara umum lingkungan kerja dalam suatu perusahaan merupakan lingkungan dimana para karyawan melaksanakan tugas dan pekerjaannya sehari-hari. Namun demikian, untuk memperjelas masalah ini maka lingkungak kerja di dalam perusahaan dapat dibagi lagi menjadi beberapa bagian atau aspek pembentukan lingkungan kerja yang lebih terperinci misalnya, pelayanan karyawan, kondisi kerja dan hubungan karyawan di dalam perusahaan.</p>\r\n<p>Pelayanan karyawan merupakan salah satu faktor yang sangat penting untuk pembentukan lingkungan kerja karena para karyawan akan memperoleh kepuasan dalam menyelesaikan pekerjaannya di dalam perusahaan. Kepuasan yang diperoleh para karyawan sangat mempengaruhi tingkat produktivitas kerja karyawan yang bersangkutan. Karyawan yang merasa puas akan menumbuhkan gairah kerja yang lebih tinggi, rasa tanggung jawab terhadap penyelesaian kerja yang lebih besar, serta dapat menjaga nama perusahaan dengan sebaik-baiknya. Sebaliknya, para karyawan yang tidak memperoleh kepuasan yang memadai, akan sangat terpaksa dalam menyelesaikan tugas-tugas yang dibebankan kepada mereka. Hasilnya mereka bekerja asal selesai saja, tanggung jawabnya rendah. Apabila terdapat kesempatan kerja lain di luar perusahaan, karyawan tersebut akan segera meningkalkan pekerjaannya .</p>\r\n<p>Pada umumnya, pelayanan karyawan meliputi beberapa hal, yaitu pelayanan makan atau makanan, pelayanan kesehatan, serta penyediaan kamar mandi/kamar kecil di dalam pabrik di mana para karyawan tersebut bekerja.</p>\r\n<p>Faktor lain yang ikut menentukan lingkungan kerja dalam perusahaan adalah suatu hal yang disebut dengan kondisi kerja. Kondisi kerja merupakan kondisi dalam perusahaan di mana para karyawan bekerja. Hal ini akan meliputi penerangan yang cukup, suhu udara yang tepat, suara bising yang dapat dikendalikan, penggunaan warna, ruang gerak yang cukup dan keamanan kerja. Dalam pendirian suatu pabrik, seiring dengan penyusunan perencanaan layout pabrik, manajemen perusahaan dapat menyusun perencanaan kondisi kerja bagi karyawan yang bekerja di dalam perusahaan tersebut.</p>\r\n<p>Kondisi kerja yang tidak memadai, dapat menimbulkan penurunan tingkat produktivitas kerja. Sebagai salah satu contoh misalnya, kurangnya penerangan yang diperlukan akan mengakibatkan ketelitian kerja karyawan tersebut menurun, disamping kelelahan kerja akan lebih cepat datang. Namun demikian penerangan yang lebih dari cukup juga tidak akan menguntungkan. Faktor lain dalam lingkungan kerja yang tidak boleh diabaikan adalah hubungan karyawan di dalam perusahaan. Hubungan karyawan ini juga akan ikut menentukan tingkat produktivitas kerja. Hubungan karyawan yang tidak serasi akan menurunkan tingkat produktivitas kerja. Hal ini karena di dalam penyelesaian tugas-tugasnya para karyawan akan merasa terganggu atau diganggu dengan hal lain sebagai akibat tidak serasinya hubungan karyawan yang ada di dalam perusahaan tersebut.</p>\r\n<p>Dalam rangka perwujudan hubungan karyawan yang serasi, peranan manajemen perusahaan sangat penting. Perhatian dan pengarahan pimpinan perusahaan yang cukup dapat mendorong terciptanya hubungan karyawan yang serasi. Manajemen perusahaan perlu mempertimbangkan motivasi kerja karyawan dan mendorong untuk tujuan&nbsp; yang positif. Tanpa adanya perhatian dari pihak manajemen, hubungan karyawan akan menjadi kurang serasi dan sebagai akibatnya tingkat produktivitas kerja perusahaan akan mengalami penurunan.</p>', NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (122, 'Multiple Choice Single Answer', '<p>Beberapa aspek lingkungan kerja yang merupakan bagian dari lingkungan kerja dalam perusahaan antara lain adalah :</p>\r\n<p>&nbsp; (1) Pelayanan karyawan</p>\r\n<p>&nbsp; (2) Kondisi kerja</p>\r\n<p>&nbsp; (3) Hubungan karyawan</p>', '', NULL, NULL, 7, 6, 3, 2, 0, 1, 1, 'Admin KSB', '<p>Petunjuk :&nbsp; Anda diminta membaca setiap bacaan dengan seksama.&nbsp; Bacalah secara efektif dan jangan sia-siakan waktu.&nbsp; Kemudian, jawablah pertanyaan-pertanyaan yang tersedia di lembar jawaban yang telah disediakan.&nbsp;</p>\r\n<p><span style=\"font-size: 34px;\">BACAAN 1</span></p>\r\n<p>Lingkungan kerja di dalam suatu perusahaan sangat penting untuk diperhatikan oleh manajemen. Penyusunan suatu sistem produksi yang baik tidak akan dapat dilaksanakan dengan efektif apabila tidak didukung dengan lingkungan kerja yang memuaskan. Segala mesin dan peralatan yang&nbsp; dipasang dan digunakan di dalam pabrik (meskipun menggunakan teknologi yang paling baru) tidak akan banyak berarti apabila para karyawan perusahaan tidak dapat bekerja dengan baik yang disebabkan oleh faktor lingkungan yang tidak memenuhi persyaratan yang ditentukan. Walaupun lingkungan kerja tidak berfungsi sebagai mesin dan peralatan produksi yang langsung memproses bahan menjadi produk, namun pengaruh lingkungan kerja akan terasa di dalam proses produksi yang dilaksanakan oleh perusahaan. Dengan kata lain, lingkungan kerja akan mempunyai pengaruh langsung terhadap para karyawan yang melaksanakan proses produksi. Oleh karena itu secara tidak langsung lingkungan kerja akan berpengaruh terhadap produk yang diproses dalam perusahaan.</p>\r\n<p>Pabrik yang didirikan oleh perusahaan apapun, pada umumnya diharapkan akan dapat berproduksi dengan tingkat produktivitas yang tinggi, efisiensi kerja yang tinggi dan biaya produksi yang dapat diusahakan menjadi serendah-rendahnya. Disamping teknologi, bahan baku, mesin dan peralatan produksi yang digunakan serta loyalitas dan ketrampilan karyawan yang berkerja di dalam perusahaan, lingkungan kerja juga akan mempunyai peranan yang cukup tinggi. Lingkungan kerja yang memuaskan para karyawan dapat meningkatkan gairah kerja. Demikian pula sebaliknya, lingkungan kerja yang sangat tidak memuaskan dapat mengurangi gairah kerja dan menurunkan tingkat produktivitas kerja.</p>\r\n<p>Hubungan antara lingkungan kerja yang baik dan tingginya tingkat produktivitas kerja para karyawan di dalam suatu perusahaan memang tidak perlu diragukan lagi. Lingkungan kerja yang cukup memuaskan para karyawan perusahaan akan mendorong para karyawan tersebut untuk bekerja sebaik-baiknya, sehingga pelaksanaan proses produksi di dalam perusahaan akan berjalan dengan baik pula. Dalam hal ini, besarnya luas produksi dalam perusahaan akan dipengaruhi pula oleh keadaan lingkungan kerja di dalam perusahaan yang bersangkutan. Apabila lingkungan kerjanya baik, maka para karyawan akan cenderung untuk bekerja dengan baik pula sehingga luas produksi yang dilaksanakan akan mendekati luas produksi yang direncanakan oleh manajemen perusahaan yang bersangkutan. Demikian pula tingkat efisiensi perusahaan, apabila efisiensi kerja para karyawan dapat dipertanggung jawabkan, maka efisiensi kerja di dalam perusahaan secara keseluruhan dapat pula dipertahankan didalam tingkat yang tinggi.</p>\r\n<p>Titik tolak perencanaan lingkungan suatu perusahaan adalah tingginya tingkat produktivitas perusahaan yang bersangkutan. Dengan demikian, perencanaan lingkungan kerja yang dilaksanakan untuk pabrik yang didirikan oleh perusahaan sama sekali bukan untuk tu juan-tujuan kemewahan. Adalah merupakan hal yang sangat keliru apabila di dalam suatu perusahaan direncanakan lingkungan kerja dengan tujuan untuk kemewahan, atau dibeli fasilitas-fasilitas untuk kemewahan tanpa memperhatikan terdapatnya kenaikan tingkat produktivitas kerja dengan mempergunakan fasilitas tersebut. Oleh karena itu, dalam penyusunan perencanaan lingkungan kerja usahakan untuk menggunakan fasilitas-fasilitas yang diperkirakan dapat mendorong tingkat produktivitas kerja para karyawan. Hal ini untuk menghindarkan terdapatnya beberapa fasilitas dalam perusahaan lebih dari yang diperlukan , karena mengundang sebagian (besar) dari para karyawan untuk berebut menikmati fasilitas yang diberikan oleh perusahaan tersebut. Dengan demikian para karyawan justru akan lebih memperhatikan masalah-masalah fasilitas perusahaan dibandingkan dengan pekerjaan yang menjadi beban tugasnya. Hal ini tentu saja akan mengakibatkan penurunan tingkat produktivitas kerja. Dalam hubungannya dengan pengadaan fasilitas perusahaan untuk memperbaiki lingkungan kerja para karyawan&nbsp; perusahaan ini, manajemen perusahaan yang bersangkutan hendaknya dapat menyusun suatu perencanaan yang cukup cermat agar fasilitas yang diberikan oleh perusahaan kepada para karyawan dapat benar-benar menaikkan tingkat produktivitas kerja, dan bukannya justru menurunkan tingkat produktivitas dari perusahaan yang bersangkutan.</p>\r\n<p>Berdasarkan kepada hal-hal tersebut di atas, sudah selayaknya apabila manajemen perusahaan mempertimbangkan perencanaan lingkungan kerja bagi para karyawannya dengan sebaik-baiknya. Perencanaan lingkungan kerja yang baik akan menghasilkan lingkungan kerja yang memuaskan para karyawan, sehingga produktivitas kerja para karyawan perusahaan tersebut dapat dipertahankan pada tingkat yang tinggi. Dengan tingkat produktivitas kerja yang tinggi, perusahaan dapat melaksanakan proses produksi pada tingkat yang tinggi pula.</p>\r\n<p>Untuk dapat mengadakan penyusunan perencanaan lingkungan kerja dengan baik, manajemen perusahaan harus benar-benar mengetahui tentang lingkungan kerja yang dipersiapkan untuk perusahaannya tersebut. Hal ini dapat dilaksanakan dengan baik apabila manajemen perusahaan mengetahui unsuru-unsur penting apa saja yang akan menentukan lingkungan kerja para karyawan yang bekerja di dalam perusahaan tersebut. Banyak pendapat yang sulit membedakan antara lingkungan kerja dengan kondisi kerja. Lingkungan kerja adalah suatu lingkungan di mana para karyawan bekerja, sedangkan kondisi kerja merupakan kondisi di mana para karyawan&nbsp; tersebut bekerja. Dengan demikian sebenarnya kondisi kerja termasuk salah satu unsur lingkungan kerja.</p>\r\n<p>Secara umum lingkungan kerja dalam suatu perusahaan merupakan lingkungan dimana para karyawan melaksanakan tugas dan pekerjaannya sehari-hari. Namun demikian, untuk memperjelas masalah ini maka lingkungak kerja di dalam perusahaan dapat dibagi lagi menjadi beberapa bagian atau aspek pembentukan lingkungan kerja yang lebih terperinci misalnya, pelayanan karyawan, kondisi kerja dan hubungan karyawan di dalam perusahaan.</p>\r\n<p>Pelayanan karyawan merupakan salah satu faktor yang sangat penting untuk pembentukan lingkungan kerja karena para karyawan akan memperoleh kepuasan dalam menyelesaikan pekerjaannya di dalam perusahaan. Kepuasan yang diperoleh para karyawan sangat mempengaruhi tingkat produktivitas kerja karyawan yang bersangkutan. Karyawan yang merasa puas akan menumbuhkan gairah kerja yang lebih tinggi, rasa tanggung jawab terhadap penyelesaian kerja yang lebih besar, serta dapat menjaga nama perusahaan dengan sebaik-baiknya. Sebaliknya, para karyawan yang tidak memperoleh kepuasan yang memadai, akan sangat terpaksa dalam menyelesaikan tugas-tugas yang dibebankan kepada mereka. Hasilnya mereka bekerja asal selesai saja, tanggung jawabnya rendah. Apabila terdapat kesempatan kerja lain di luar perusahaan, karyawan tersebut akan segera meningkalkan pekerjaannya .</p>\r\n<p>Pada umumnya, pelayanan karyawan meliputi beberapa hal, yaitu pelayanan makan atau makanan, pelayanan kesehatan, serta penyediaan kamar mandi/kamar kecil di dalam pabrik di mana para karyawan tersebut bekerja.</p>\r\n<p>Faktor lain yang ikut menentukan lingkungan kerja dalam perusahaan adalah suatu hal yang disebut dengan kondisi kerja. Kondisi kerja merupakan kondisi dalam perusahaan di mana para karyawan bekerja. Hal ini akan meliputi penerangan yang cukup, suhu udara yang tepat, suara bising yang dapat dikendalikan, penggunaan warna, ruang gerak yang cukup dan keamanan kerja. Dalam pendirian suatu pabrik, seiring dengan penyusunan perencanaan layout pabrik, manajemen perusahaan dapat menyusun perencanaan kondisi kerja bagi karyawan yang bekerja di dalam perusahaan tersebut.</p>\r\n<p>Kondisi kerja yang tidak memadai, dapat menimbulkan penurunan tingkat produktivitas kerja. Sebagai salah satu contoh misalnya, kurangnya penerangan yang diperlukan akan mengakibatkan ketelitian kerja karyawan tersebut menurun, disamping kelelahan kerja akan lebih cepat datang. Namun demikian penerangan yang lebih dari cukup juga tidak akan menguntungkan. Faktor lain dalam lingkungan kerja yang tidak boleh diabaikan adalah hubungan karyawan di dalam perusahaan. Hubungan karyawan ini juga akan ikut menentukan tingkat produktivitas kerja. Hubungan karyawan yang tidak serasi akan menurunkan tingkat produktivitas kerja. Hal ini karena di dalam penyelesaian tugas-tugasnya para karyawan akan merasa terganggu atau diganggu dengan hal lain sebagai akibat tidak serasinya hubungan karyawan yang ada di dalam perusahaan tersebut.</p>\r\n<p>Dalam rangka perwujudan hubungan karyawan yang serasi, peranan manajemen perusahaan sangat penting. Perhatian dan pengarahan pimpinan perusahaan yang cukup dapat mendorong terciptanya hubungan karyawan yang serasi. Manajemen perusahaan perlu mempertimbangkan motivasi kerja karyawan dan mendorong untuk tujuan&nbsp; yang positif. Tanpa adanya perhatian dari pihak manajemen, hubungan karyawan akan menjadi kurang serasi dan sebagai akibatnya tingkat produktivitas kerja perusahaan akan mengalami penurunan.</p>', NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (123, 'Multiple Choice Single Answer', '<p>Baik dan buruknya lingkungan kerja di dalam suatu perusahaan, pada umumnya akan mempunyai pengaruh secara langsung terhadap :</p>\r\n<p>&nbsp; (1) Produk Perusahaan</p>\r\n<p>&nbsp; (2) Karyawan</p>\r\n<p>&nbsp; (3) Proses produksi</p>', '', NULL, NULL, 7, 6, 3, 2, 0, 1, 1, 'Admin KSB', '<p>Petunjuk :&nbsp; Anda diminta membaca setiap bacaan dengan seksama.&nbsp; Bacalah secara efektif dan jangan sia-siakan waktu.&nbsp; Kemudian, jawablah pertanyaan-pertanyaan yang tersedia di lembar jawaban yang telah disediakan.&nbsp;</p>\r\n<p><strong>&nbsp;</strong><span style=\"font-size: 34px;\">BACAAN 1</span></p>\r\n<p>Lingkungan kerja di dalam suatu perusahaan sangat penting untuk diperhatikan oleh manajemen. Penyusunan suatu sistem produksi yang baik tidak akan dapat dilaksanakan dengan efektif apabila tidak didukung dengan lingkungan kerja yang memuaskan. Segala mesin dan peralatan yang&nbsp; dipasang dan digunakan di dalam pabrik (meskipun menggunakan teknologi yang paling baru) tidak akan banyak berarti apabila para karyawan perusahaan tidak dapat bekerja dengan baik yang disebabkan oleh faktor lingkungan yang tidak memenuhi persyaratan yang ditentukan. Walaupun lingkungan kerja tidak berfungsi sebagai mesin dan peralatan produksi yang langsung memproses bahan menjadi produk, namun pengaruh lingkungan kerja akan terasa di dalam proses produksi yang dilaksanakan oleh perusahaan. Dengan kata lain, lingkungan kerja akan mempunyai pengaruh langsung terhadap para karyawan yang melaksanakan proses produksi. Oleh karena itu secara tidak langsung lingkungan kerja akan berpengaruh terhadap produk yang diproses dalam perusahaan.</p>\r\n<p>Pabrik yang didirikan oleh perusahaan apapun, pada umumnya diharapkan akan dapat berproduksi dengan tingkat produktivitas yang tinggi, efisiensi kerja yang tinggi dan biaya produksi yang dapat diusahakan menjadi serendah-rendahnya. Disamping teknologi, bahan baku, mesin dan peralatan produksi yang digunakan serta loyalitas dan ketrampilan karyawan yang berkerja di dalam perusahaan, lingkungan kerja juga akan mempunyai peranan yang cukup tinggi. Lingkungan kerja yang memuaskan para karyawan dapat meningkatkan gairah kerja. Demikian pula sebaliknya, lingkungan kerja yang sangat tidak memuaskan dapat mengurangi gairah kerja dan menurunkan tingkat produktivitas kerja.</p>\r\n<p>Hubungan antara lingkungan kerja yang baik dan tingginya tingkat produktivitas kerja para karyawan di dalam suatu perusahaan memang tidak perlu diragukan lagi. Lingkungan kerja yang cukup memuaskan para karyawan perusahaan akan mendorong para karyawan tersebut untuk bekerja sebaik-baiknya, sehingga pelaksanaan proses produksi di dalam perusahaan akan berjalan dengan baik pula. Dalam hal ini, besarnya luas produksi dalam perusahaan akan dipengaruhi pula oleh keadaan lingkungan kerja di dalam perusahaan yang bersangkutan. Apabila lingkungan kerjanya baik, maka para karyawan akan cenderung untuk bekerja dengan baik pula sehingga luas produksi yang dilaksanakan akan mendekati luas produksi yang direncanakan oleh manajemen perusahaan yang bersangkutan. Demikian pula tingkat efisiensi perusahaan, apabila efisiensi kerja para karyawan dapat dipertanggung jawabkan, maka efisiensi kerja di dalam perusahaan secara keseluruhan dapat pula dipertahankan didalam tingkat yang tinggi.</p>\r\n<p>Titik tolak perencanaan lingkungan suatu perusahaan adalah tingginya tingkat produktivitas perusahaan yang bersangkutan. Dengan demikian, perencanaan lingkungan kerja yang dilaksanakan untuk pabrik yang didirikan oleh perusahaan sama sekali bukan untuk tu juan-tujuan kemewahan. Adalah merupakan hal yang sangat keliru apabila di dalam suatu perusahaan direncanakan lingkungan kerja dengan tujuan untuk kemewahan, atau dibeli fasilitas-fasilitas untuk kemewahan tanpa memperhatikan terdapatnya kenaikan tingkat produktivitas kerja dengan mempergunakan fasilitas tersebut. Oleh karena itu, dalam penyusunan perencanaan lingkungan kerja usahakan untuk menggunakan fasilitas-fasilitas yang diperkirakan dapat mendorong tingkat produktivitas kerja para karyawan. Hal ini untuk menghindarkan terdapatnya beberapa fasilitas dalam perusahaan lebih dari yang diperlukan , karena mengundang sebagian (besar) dari para karyawan untuk berebut menikmati fasilitas yang diberikan oleh perusahaan tersebut. Dengan demikian para karyawan justru akan lebih memperhatikan masalah-masalah fasilitas perusahaan dibandingkan dengan pekerjaan yang menjadi beban tugasnya. Hal ini tentu saja akan mengakibatkan penurunan tingkat produktivitas kerja. Dalam hubungannya dengan pengadaan fasilitas perusahaan untuk memperbaiki lingkungan kerja para karyawan&nbsp; perusahaan ini, manajemen perusahaan yang bersangkutan hendaknya dapat menyusun suatu perencanaan yang cukup cermat agar fasilitas yang diberikan oleh perusahaan kepada para karyawan dapat benar-benar menaikkan tingkat produktivitas kerja, dan bukannya justru menurunkan tingkat produktivitas dari perusahaan yang bersangkutan.</p>\r\n<p>Berdasarkan kepada hal-hal tersebut di atas, sudah selayaknya apabila manajemen perusahaan mempertimbangkan perencanaan lingkungan kerja bagi para karyawannya dengan sebaik-baiknya. Perencanaan lingkungan kerja yang baik akan menghasilkan lingkungan kerja yang memuaskan para karyawan, sehingga produktivitas kerja para karyawan perusahaan tersebut dapat dipertahankan pada tingkat yang tinggi. Dengan tingkat produktivitas kerja yang tinggi, perusahaan dapat melaksanakan proses produksi pada tingkat yang tinggi pula.</p>\r\n<p>Untuk dapat mengadakan penyusunan perencanaan lingkungan kerja dengan baik, manajemen perusahaan harus benar-benar mengetahui tentang lingkungan kerja yang dipersiapkan untuk perusahaannya tersebut. Hal ini dapat dilaksanakan dengan baik apabila manajemen perusahaan mengetahui unsuru-unsur penting apa saja yang akan menentukan lingkungan kerja para karyawan yang bekerja di dalam perusahaan tersebut. Banyak pendapat yang sulit membedakan antara lingkungan kerja dengan kondisi kerja. Lingkungan kerja adalah suatu lingkungan di mana para karyawan bekerja, sedangkan kondisi kerja merupakan kondisi di mana para karyawan&nbsp; tersebut bekerja. Dengan demikian sebenarnya kondisi kerja termasuk salah satu unsur lingkungan kerja.</p>\r\n<p>Secara umum lingkungan kerja dalam suatu perusahaan merupakan lingkungan dimana para karyawan melaksanakan tugas dan pekerjaannya sehari-hari. Namun demikian, untuk memperjelas masalah ini maka lingkungak kerja di dalam perusahaan dapat dibagi lagi menjadi beberapa bagian atau aspek pembentukan lingkungan kerja yang lebih terperinci misalnya, pelayanan karyawan, kondisi kerja dan hubungan karyawan di dalam perusahaan.</p>\r\n<p>Pelayanan karyawan merupakan salah satu faktor yang sangat penting untuk pembentukan lingkungan kerja karena para karyawan akan memperoleh kepuasan dalam menyelesaikan pekerjaannya di dalam perusahaan. Kepuasan yang diperoleh para karyawan sangat mempengaruhi tingkat produktivitas kerja karyawan yang bersangkutan. Karyawan yang merasa puas akan menumbuhkan gairah kerja yang lebih tinggi, rasa tanggung jawab terhadap penyelesaian kerja yang lebih besar, serta dapat menjaga nama perusahaan dengan sebaik-baiknya. Sebaliknya, para karyawan yang tidak memperoleh kepuasan yang memadai, akan sangat terpaksa dalam menyelesaikan tugas-tugas yang dibebankan kepada mereka. Hasilnya mereka bekerja asal selesai saja, tanggung jawabnya rendah. Apabila terdapat kesempatan kerja lain di luar perusahaan, karyawan tersebut akan segera meningkalkan pekerjaannya .</p>\r\n<p>Pada umumnya, pelayanan karyawan meliputi beberapa hal, yaitu pelayanan makan atau makanan, pelayanan kesehatan, serta penyediaan kamar mandi/kamar kecil di dalam pabrik di mana para karyawan tersebut bekerja.</p>\r\n<p>Faktor lain yang ikut menentukan lingkungan kerja dalam perusahaan adalah suatu hal yang disebut dengan kondisi kerja. Kondisi kerja merupakan kondisi dalam perusahaan di mana para karyawan bekerja. Hal ini akan meliputi penerangan yang cukup, suhu udara yang tepat, suara bising yang dapat dikendalikan, penggunaan warna, ruang gerak yang cukup dan keamanan kerja. Dalam pendirian suatu pabrik, seiring dengan penyusunan perencanaan layout pabrik, manajemen perusahaan dapat menyusun perencanaan kondisi kerja bagi karyawan yang bekerja di dalam perusahaan tersebut.</p>\r\n<p>Kondisi kerja yang tidak memadai, dapat menimbulkan penurunan tingkat produktivitas kerja. Sebagai salah satu contoh misalnya, kurangnya penerangan yang diperlukan akan mengakibatkan ketelitian kerja karyawan tersebut menurun, disamping kelelahan kerja akan lebih cepat datang. Namun demikian penerangan yang lebih dari cukup juga tidak akan menguntungkan. Faktor lain dalam lingkungan kerja yang tidak boleh diabaikan adalah hubungan karyawan di dalam perusahaan. Hubungan karyawan ini juga akan ikut menentukan tingkat produktivitas kerja. Hubungan karyawan yang tidak serasi akan menurunkan tingkat produktivitas kerja. Hal ini karena di dalam penyelesaian tugas-tugasnya para karyawan akan merasa terganggu atau diganggu dengan hal lain sebagai akibat tidak serasinya hubungan karyawan yang ada di dalam perusahaan tersebut.</p>\r\n<p>Dalam rangka perwujudan hubungan karyawan yang serasi, peranan manajemen perusahaan sangat penting. Perhatian dan pengarahan pimpinan perusahaan yang cukup dapat mendorong terciptanya hubungan karyawan yang serasi. Manajemen perusahaan perlu mempertimbangkan motivasi kerja karyawan dan mendorong untuk tujuan&nbsp; yang positif. Tanpa adanya perhatian dari pihak manajemen, hubungan karyawan akan menjadi kurang serasi dan sebagai akibatnya tingkat produktivitas kerja perusahaan akan mengalami penurunan.</p>', NULL, 0);
INSERT INTO `savsoft_qbank` VALUES (124, 'Multiple Choice Single Answer', '<p>Lingkungan kerja yang baik di dalam suatu perusahaan pada umumnya dapat :</p>\r\n<p>(1) Menaikkan tingkat produktivitas perusahaan</p>\r\n<p>(2) Menaikkan minat konsumen terhadap produk perusahaan</p>\r\n<p>(3) Menaikkan gairah kerja pada karyawan</p>', '', NULL, NULL, 7, 6, 1, 1, 0, 0, 1, 'Admin KSB', '<p>Petunjuk :&nbsp; Anda diminta membaca setiap bacaan dengan seksama.&nbsp; Bacalah secara efektif dan jangan sia-siakan waktu.&nbsp; Kemudian, jawablah pertanyaan-pertanyaan yang tersedia di lembar jawaban yang telah disediakan.&nbsp;</p>\r\n<p><strong>&nbsp;</strong>BACAAN 1</p>\r\n<p>Lingkungan kerja di dalam suatu perusahaan sangat penting untuk diperhatikan oleh manajemen. Penyusunan suatu sistem produksi yang baik tidak akan dapat dilaksanakan dengan efektif apabila tidak didukung dengan lingkungan kerja yang memuaskan. Segala mesin dan peralatan yang&nbsp; dipasang dan digunakan di dalam pabrik (meskipun menggunakan teknologi yang paling baru) tidak akan banyak berarti apabila para karyawan perusahaan tidak dapat bekerja dengan baik yang disebabkan oleh faktor lingkungan yang tidak memenuhi persyaratan yang ditentukan. Walaupun lingkungan kerja tidak berfungsi sebagai mesin dan peralatan produksi yang langsung memproses bahan menjadi produk, namun pengaruh lingkungan kerja akan terasa di dalam proses produksi yang dilaksanakan oleh perusahaan. Dengan kata lain, lingkungan kerja akan mempunyai pengaruh langsung terhadap para karyawan yang melaksanakan proses produksi. Oleh karena itu secara tidak langsung lingkungan kerja akan berpengaruh terhadap produk yang diproses dalam perusahaan.</p>\r\n<p>Pabrik yang didirikan oleh perusahaan apapun, pada umumnya diharapkan akan dapat berproduksi dengan tingkat produktivitas yang tinggi, efisiensi kerja yang tinggi dan biaya produksi yang dapat diusahakan menjadi serendah-rendahnya. Disamping teknologi, bahan baku, mesin dan peralatan produksi yang digunakan serta loyalitas dan ketrampilan karyawan yang berkerja di dalam perusahaan, lingkungan kerja juga akan mempunyai peranan yang cukup tinggi. Lingkungan kerja yang memuaskan para karyawan dapat meningkatkan gairah kerja. Demikian pula sebaliknya, lingkungan kerja yang sangat tidak memuaskan dapat mengurangi gairah kerja dan menurunkan tingkat produktivitas kerja.</p>\r\n<p>Hubungan antara lingkungan kerja yang baik dan tingginya tingkat produktivitas kerja para karyawan di dalam suatu perusahaan memang tidak perlu diragukan lagi. Lingkungan kerja yang cukup memuaskan para karyawan perusahaan akan mendorong para karyawan tersebut untuk bekerja sebaik-baiknya, sehingga pelaksanaan proses produksi di dalam perusahaan akan berjalan dengan baik pula. Dalam hal ini, besarnya luas produksi dalam perusahaan akan dipengaruhi pula oleh keadaan lingkungan kerja di dalam perusahaan yang bersangkutan. Apabila lingkungan kerjanya baik, maka para karyawan akan cenderung untuk bekerja dengan baik pula sehingga luas produksi yang dilaksanakan akan mendekati luas produksi yang direncanakan oleh manajemen perusahaan yang bersangkutan. Demikian pula tingkat efisiensi perusahaan, apabila efisiensi kerja para karyawan dapat dipertanggung jawabkan, maka efisiensi kerja di dalam perusahaan secara keseluruhan dapat pula dipertahankan didalam tingkat yang tinggi.</p>\r\n<p>Titik tolak perencanaan lingkungan suatu perusahaan adalah tingginya tingkat produktivitas perusahaan yang bersangkutan. Dengan demikian, perencanaan lingkungan kerja yang dilaksanakan untuk pabrik yang didirikan oleh perusahaan sama sekali bukan untuk tu juan-tujuan kemewahan. Adalah merupakan hal yang sangat keliru apabila di dalam suatu perusahaan direncanakan lingkungan kerja dengan tujuan untuk kemewahan, atau dibeli fasilitas-fasilitas untuk kemewahan tanpa memperhatikan terdapatnya kenaikan tingkat produktivitas kerja dengan mempergunakan fasilitas tersebut. Oleh karena itu, dalam penyusunan perencanaan lingkungan kerja usahakan untuk menggunakan fasilitas-fasilitas yang diperkirakan dapat mendorong tingkat produktivitas kerja para karyawan. Hal ini untuk menghindarkan terdapatnya beberapa fasilitas dalam perusahaan lebih dari yang diperlukan , karena mengundang sebagian (besar) dari para karyawan untuk berebut menikmati fasilitas yang diberikan oleh perusahaan tersebut. Dengan demikian para karyawan justru akan lebih memperhatikan masalah-masalah fasilitas perusahaan dibandingkan dengan pekerjaan yang menjadi beban tugasnya. Hal ini tentu saja akan mengakibatkan penurunan tingkat produktivitas kerja. Dalam hubungannya dengan pengadaan fasilitas perusahaan untuk memperbaiki lingkungan kerja para karyawan&nbsp; perusahaan ini, manajemen perusahaan yang bersangkutan hendaknya dapat menyusun suatu perencanaan yang cukup cermat agar fasilitas yang diberikan oleh perusahaan kepada para karyawan dapat benar-benar menaikkan tingkat produktivitas kerja, dan bukannya justru menurunkan tingkat produktivitas dari perusahaan yang bersangkutan.</p>\r\n<p>Berdasarkan kepada hal-hal tersebut di atas, sudah selayaknya apabila manajemen perusahaan mempertimbangkan perencanaan lingkungan kerja bagi para karyawannya dengan sebaik-baiknya. Perencanaan lingkungan kerja yang baik akan menghasilkan lingkungan kerja yang memuaskan para karyawan, sehingga produktivitas kerja para karyawan perusahaan tersebut dapat dipertahankan pada tingkat yang tinggi. Dengan tingkat produktivitas kerja yang tinggi, perusahaan dapat melaksanakan proses produksi pada tingkat yang tinggi pula.</p>\r\n<p>Untuk dapat mengadakan penyusunan perencanaan lingkungan kerja dengan baik, manajemen perusahaan harus benar-benar mengetahui tentang lingkungan kerja yang dipersiapkan untuk perusahaannya tersebut. Hal ini dapat dilaksanakan dengan baik apabila manajemen perusahaan mengetahui unsuru-unsur penting apa saja yang akan menentukan lingkungan kerja para karyawan yang bekerja di dalam perusahaan tersebut. Banyak pendapat yang sulit membedakan antara lingkungan kerja dengan kondisi kerja. Lingkungan kerja adalah suatu lingkungan di mana para karyawan bekerja, sedangkan kondisi kerja merupakan kondisi di mana para karyawan&nbsp; tersebut bekerja. Dengan demikian sebenarnya kondisi kerja termasuk salah satu unsur lingkungan kerja.</p>\r\n<p>Secara umum lingkungan kerja dalam suatu perusahaan merupakan lingkungan dimana para karyawan melaksanakan tugas dan pekerjaannya sehari-hari. Namun demikian, untuk memperjelas masalah ini maka lingkungak kerja di dalam perusahaan dapat dibagi lagi menjadi beberapa bagian atau aspek pembentukan lingkungan kerja yang lebih terperinci misalnya, pelayanan karyawan, kondisi kerja dan hubungan karyawan di dalam perusahaan.</p>\r\n<p>Pelayanan karyawan merupakan salah satu faktor yang sangat penting untuk pembentukan lingkungan kerja karena para karyawan akan memperoleh kepuasan dalam menyelesaikan pekerjaannya di dalam perusahaan. Kepuasan yang diperoleh para karyawan sangat mempengaruhi tingkat produktivitas kerja karyawan yang bersangkutan. Karyawan yang merasa puas akan menumbuhkan gairah kerja yang lebih tinggi, rasa tanggung jawab terhadap penyelesaian kerja yang lebih besar, serta dapat menjaga nama perusahaan dengan sebaik-baiknya. Sebaliknya, para karyawan yang tidak memperoleh kepuasan yang memadai, akan sangat terpaksa dalam menyelesaikan tugas-tugas yang dibebankan kepada mereka. Hasilnya mereka bekerja asal selesai saja, tanggung jawabnya rendah. Apabila terdapat kesempatan kerja lain di luar perusahaan, karyawan tersebut akan segera meningkalkan pekerjaannya .</p>\r\n<p>Pada umumnya, pelayanan karyawan meliputi beberapa hal, yaitu pelayanan makan atau makanan, pelayanan kesehatan, serta penyediaan kamar mandi/kamar kecil di dalam pabrik di mana para karyawan tersebut bekerja.</p>\r\n<p>Faktor lain yang ikut menentukan lingkungan kerja dalam perusahaan adalah suatu hal yang disebut dengan kondisi kerja. Kondisi kerja merupakan kondisi dalam perusahaan di mana para karyawan bekerja. Hal ini akan meliputi penerangan yang cukup, suhu udara yang tepat, suara bising yang dapat dikendalikan, penggunaan warna, ruang gerak yang cukup dan keamanan kerja. Dalam pendirian suatu pabrik, seiring dengan penyusunan perencanaan layout pabrik, manajemen perusahaan dapat menyusun perencanaan kondisi kerja bagi karyawan yang bekerja di dalam perusahaan tersebut.</p>\r\n<p>Kondisi kerja yang tidak memadai, dapat menimbulkan penurunan tingkat produktivitas kerja. Sebagai salah satu contoh misalnya, kurangnya penerangan yang diperlukan akan mengakibatkan ketelitian kerja karyawan tersebut menurun, disamping kelelahan kerja akan lebih cepat datang. Namun demikian penerangan yang lebih dari cukup juga tidak akan menguntungkan. Faktor lain dalam lingkungan kerja yang tidak boleh diabaikan adalah hubungan karyawan di dalam perusahaan. Hubungan karyawan ini juga akan ikut menentukan tingkat produktivitas kerja. Hubungan karyawan yang tidak serasi akan menurunkan tingkat produktivitas kerja. Hal ini karena di dalam penyelesaian tugas-tugasnya para karyawan akan merasa terganggu atau diganggu dengan hal lain sebagai akibat tidak serasinya hubungan karyawan yang ada di dalam perusahaan tersebut.</p>\r\n<p>Dalam rangka perwujudan hubungan karyawan yang serasi, peranan manajemen perusahaan sangat penting. Perhatian dan pengarahan pimpinan perusahaan yang cukup dapat mendorong terciptanya hubungan karyawan yang serasi. Manajemen perusahaan perlu mempertimbangkan motivasi kerja karyawan dan mendorong untuk tujuan&nbsp; yang positif. Tanpa adanya perhatian dari pihak manajemen, hubungan karyawan akan menjadi kurang serasi dan sebagai akibatnya tingkat produktivitas kerja perusahaan akan mengalami penurunan.</p>', NULL, 0);

-- ----------------------------
-- Table structure for savsoft_qcl
-- ----------------------------
DROP TABLE IF EXISTS `savsoft_qcl`;
CREATE TABLE `savsoft_qcl`  (
  `qcl_id` int(11) NOT NULL AUTO_INCREMENT,
  `quid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `noq` int(11) NOT NULL,
  `i_correct` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `i_incorrect` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`qcl_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of savsoft_qcl
-- ----------------------------
INSERT INTO `savsoft_qcl` VALUES (71, 2, 1, 1, 3, '1', '0');
INSERT INTO `savsoft_qcl` VALUES (72, 2, 3, 1, 1, '1', '0');
INSERT INTO `savsoft_qcl` VALUES (73, 2, 2, 1, 1, '1', '0');

-- ----------------------------
-- Table structure for savsoft_quiz
-- ----------------------------
DROP TABLE IF EXISTS `savsoft_quiz`;
CREATE TABLE `savsoft_quiz`  (
  `quid` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_name` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_date` int(11) NOT NULL,
  `end_date` int(11) NOT NULL,
  `gids` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qids` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `noq` int(11) NOT NULL,
  `correct_score` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `incorrect_score` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip_address` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `duration` int(11) NOT NULL DEFAULT 10,
  `maximum_attempts` int(11) NOT NULL DEFAULT 1,
  `pass_percentage` float NOT NULL DEFAULT 50,
  `view_answer` int(11) NOT NULL DEFAULT 1,
  `camera_req` int(11) NOT NULL DEFAULT 1,
  `question_selection` int(11) NOT NULL DEFAULT 1,
  `gen_certificate` int(11) NOT NULL DEFAULT 0,
  `certificate_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `with_login` int(11) NOT NULL DEFAULT 1,
  `quiz_template` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Default',
  `uids` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `inserted_by` int(11) NOT NULL DEFAULT 1,
  `inserted_by_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Admin',
  `show_chart_rank` int(11) NOT NULL DEFAULT 1,
  `quiz_price` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`quid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of savsoft_quiz
-- ----------------------------
INSERT INTO `savsoft_quiz` VALUES (5, 'Ujian Saringan Masuk', '<p>Ujian Saringan Masuk untuk Institut Bisnis dan Informatika Kwik Kian Gie</p>', 1496631368, 1538548200, '', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', 27, '1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 60, 1, 50, 0, 0, 0, 0, NULL, 1, 'Default', NULL, 0, NULL, 0, 0);
INSERT INTO `savsoft_quiz` VALUES (6, 'Simulasi Seleksi Bersama Masuk Perguruan Tinggi Negeri (SBMPTN)', '<p>Kumpulan soal ini merupakan simulasi dari&nbsp;Seleksi Nasional Masuk Perguruan Tinggi Negeri yang dapat kalian coba untuk kerjakan</p>', 1521429651, 1552965651, '', '', 0, '', '', '', 60, 1, 50, 0, 0, 0, 0, NULL, 1, 'Default', NULL, 0, NULL, 0, 0);
INSERT INTO `savsoft_quiz` VALUES (7, 'Ujian Saringan Masuk S1 v2', '<p>Ujian Saringan Masuk S1 v2</p>', 1595561400, 1603607400, '1', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', 40, '1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 60, 1, 50, 0, 0, 0, 0, NULL, 1, 'Default', NULL, 0, NULL, 0, 0);
INSERT INTO `savsoft_quiz` VALUES (8, 'Ujian Saringan Masuk S2 ', '<p>Ujian Saringan Masuk S2</p>', 1595562659, 1626425944, '2', '121,122,123,124,87', 5, '1,1,1,1', '0,0,0,0', '', 60, 1, 50, 0, 0, 0, 0, NULL, 1, 'Default', NULL, 1, 'Admin KSB', 0, 0);

-- ----------------------------
-- Table structure for savsoft_result
-- ----------------------------
DROP TABLE IF EXISTS `savsoft_result`;
CREATE TABLE `savsoft_result`  (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `quid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `result_status` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Open',
  `start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `categories` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category_range` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `r_qids` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `individual_time` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `total_time` int(11) NOT NULL DEFAULT 0,
  `score_obtained` float NOT NULL DEFAULT 0,
  `percentage_obtained` float NOT NULL DEFAULT 0,
  `attempted_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score_individual` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `photo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `manual_valuation` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`rid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 303 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of savsoft_result
-- ----------------------------
INSERT INTO `savsoft_result` VALUES (1, 4, 7, 'Pass', 1495508671, 1495508722, 'USM', '10', '18,19,20,21,22,23,24,25,26,27', '0,15,4,2,2,2,6,5,2,0', 38, 9, 90, '27.50.17.34', '1,2,1,1,1,1,1,1,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (2, 4, 10, 'Pass', 1495510364, 1495510392, 'USM', '10', '18,19,20,21,22,23,24,25,26,27', '0,8,2,2,2,2,1,2,2,3', 24, 9, 90, '27.50.17.34', '1,1,2,1,1,1,1,1,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (3, 4, 10, 'Pass', 1495511128, 1495511139, 'USM', '10', '18,19,20,21,22,23,24,25,26,27', '7,0,0,0,0,0,0,0,0,0', 7, 1, 10, '27.50.17.34', '1,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (4, 4, 10, 'Pass', 1495511965, 1495512006, 'USM', '10', '18,19,20,21,22,23,24,25,26,27', '0,15,3,2,2,3,2,2,2,0', 31, 10, 100, '27.50.17.34', '1,1,1,1,1,1,1,1,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (5, 4, 10, 'Pass', 1495512011, 1495512048, 'USM', '10', '18,19,20,21,22,23,24,25,26,27', '0,6,2,5,2,3,5,2,3,1', 29, 7, 70, '27.50.17.34', '1,2,2,2,1,1,1,1,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (9, 4, 19, 'Pass', 1496635739, 1496635805, 'USM', '11', '28,18,19,20,21,22,23,24,25,26,27', '0,39,17,0,0,0,0,0,0,0,0', 56, 1, 9.09091, '27.50.17.34', '1,2,2,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (10, 4, 20, 'Pass', 1496652057, 1496652119, 'USM', '11', '28,18,19,20,21,22,23,24,25,26,27', '0,20,20,0,0,0,0,0,0,0,0', 40, 1, 9.09091, '180.252.197.63', '1,0,2,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (11, 4, 12, 'Pass', 1496737322, 1496737335, 'USM', '10', '18,19,20,21,22,23,24,25,26,27', '8,0,0,0,0,0,0,0,0,0', 8, 0, 0, '27.50.17.34', '0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (16, 5, 22, 'Pass', 1496741223, 1496741315, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '0,5,2,2,5,2,1,2,3,4,5,3,10,11,3,2,3,2,3,2,3,1,2,1,5,2,5', 89, 26, 96.2963, '27.50.17.34', '1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (17, 5, 21, 'Fail', 1496741287, 1496742444, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '29,80,57,73,24,44,61,75,41,55,76,11,10,14,70,8,9,22,25,9,221,5,64,9,3,1,57', 1153, 8, 29.6296, '36.70.222.246', '1,2,2,2,2,1,2,2,2,2,1,1,1,1,2,1,2,2,1,2,2,2,2,0,0,0,2', '', 0);
INSERT INTO `savsoft_result` VALUES (20, 5, 26, 'Pass', 1496829599, 1496833141, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '122,55,151,240,39,59,30,90,240,120,274,43,34,91,252,99,94,57,89,105,87,34,197,105,105,120,233', 3165, 15, 55.5556, '202.67.42.30', '1,1,2,2,2,1,1,1,2,2,1,1,1,2,2,1,2,1,2,1,1,1,1,1,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (22, 5, 29, 'Pass', 1496936274, 1496937857, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '158,61,24,30,39,30,37,118,50,120,125,17,37,32,85,34,43,36,28,46,35,23,178,50,42,37,63', 1578, 15, 55.5556, '180.245.23.48', '2,1,2,2,2,1,1,1,1,2,1,1,2,2,2,2,2,2,1,1,1,1,1,1,1,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (24, 5, 28, 'Pass', 1497386310, 1497387867, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,162,41,25,14,34,33,34,43,62,54,15,25,51,148,18,16,41,57,15,169,52,56,86,38,188,17', 1538, 14, 51.8519, '139.195.27.13', '1,2,1,2,2,1,2,1,2,1,2,1,1,1,2,2,2,2,1,1,1,2,2,1,1,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (25, 5, 35, 'Fail', 1497422794, 1497423662, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,31,65,100,17,49,70,59,72,43,81,33,15,10,18,4,4,3,3,3,5,3,10,4,15,11,31', 818, 7, 25.9259, '139.194.243.205', '2,1,1,2,2,2,1,2,2,1,1,2,2,2,1,2,2,2,2,1,2,2,2,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (26, 5, 37, 'Fail', 1497515399, 1497516213, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '90,41,26,60,13,33,17,61,39,34,15,14,11,10,56,19,12,10,26,10,14,7,60,42,37,11,42', 810, 10, 37.037, '37.130.224.21', '2,2,1,2,2,1,1,1,2,1,2,2,2,1,2,1,2,2,1,2,2,1,1,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (27, 5, 38, 'Pass', 1497671252, 1497672889, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,27,35,51,29,50,45,88,75,53,175,48,23,22,118,30,3,27,60,4,176,60,60,131,24,74,84', 1631, 14, 51.8519, '180.244.21.226', '1,2,1,2,2,2,2,1,2,2,1,1,1,2,1,1,2,2,1,1,1,2,1,2,1,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (28, 5, 43, 'Fail', 1498667003, 1498670561, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '162,125,60,111,141,103,155,576,100,260,293,94,167,50,311,60,132,62,97,17,39,31,170,21,71,35,96', 3552, 8, 29.6296, '180.252.140.243', '1,2,2,2,2,1,1,1,2,2,1,1,2,2,1,2,2,2,1,2,2,2,2,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (29, 5, 50, 'Fail', 1499259335, 1499262944, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '331,312,124,130,212,58,121,116,146,110,376,66,30,44,296,28,50,58,125,6,62,14,44,255,100,158,197', 3569, 12, 44.4444, '180.245.45.120', '1,2,2,2,2,1,1,1,2,2,1,1,1,1,2,2,2,2,1,1,0,0,0,1,1,2,0', '', 0);
INSERT INTO `savsoft_result` VALUES (30, 5, 52, 'Fail', 1499594542, 1499597020, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '149,104,75,79,156,43,78,216,180,72,44,58,116,92,282,172,55,152,157,22,13,3,15,5,5,4,94', 2441, 9, 33.3333, '180.252.32.142', '1,2,2,2,1,1,1,2,2,2,2,2,2,2,2,1,2,1,2,1,2,2,2,1,1,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (31, 5, 53, 'Pass', 1500184326, 1500185452, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,95,52,34,18,42,43,41,46,86,60,26,16,19,79,16,16,33,38,8,57,9,110,16,27,27,39', 1112, 14, 51.8519, '223.255.230.29', '1,1,2,2,1,1,1,1,2,2,2,1,2,1,2,1,2,2,1,2,2,1,2,1,1,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (32, 5, 56, 'Fail', 1500804584, 1500805190, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '30,16,25,41,20,26,60,56,25,73,45,10,27,8,36,5,3,8,26,21,5,4,2,3,3,7,17', 602, 5, 18.5185, '115.178.199.161', '1,1,1,2,2,1,2,2,2,2,2,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (33, 5, 58, 'Fail', 1500982288, 1500984872, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '89,47,37,40,11,60,196,90,68,89,229,38,46,131,214,22,15,40,113,36,93,32,151,121,290,153,129', 2580, 11, 40.7407, '36.70.173.13', '2,2,2,2,2,1,2,1,2,2,1,1,1,2,2,2,1,1,2,2,2,1,2,1,2,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (34, 5, 59, 'Pass', 1501056009, 1501057781, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '60,61,33,62,31,34,30,69,229,127,119,50,33,118,182,17,41,54,48,8,56,40,37,44,35,92,60', 1770, 15, 55.5556, '125.164.15.174', '1,2,2,2,2,1,1,1,2,2,1,1,1,2,2,2,2,2,1,1,1,1,2,1,1,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (35, 5, 61, 'Fail', 1501554368, 1501556544, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '119,116,23,56,18,21,42,339,54,43,50,23,7,36,104,16,18,31,65,12,148,24,310,216,103,13,152', 2159, 12, 44.4444, '116.0.1.58', '2,2,1,2,1,1,2,1,2,1,1,1,1,2,2,1,2,2,2,1,2,1,2,1,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (36, 5, 60, 'Fail', 1501589920, 1501593113, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '29,38,43,59,20,47,52,84,110,111,257,95,33,75,170,47,39,30,43,23,122,143,206,96,845,193,179', 3189, 13, 48.1481, '139.192.154.168', '2,2,2,2,1,1,2,1,2,2,1,2,2,2,2,1,2,2,1,1,1,1,1,1,1,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (37, 5, 62, 'Fail', 1501690766, 1501693326, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '29,67,20,38,24,38,323,60,55,113,41,22,7,312,100,25,18,22,42,11,76,42,305,75,429,91,170', 2555, 11, 40.7407, '139.194.12.120', '2,2,2,2,2,1,1,2,2,2,2,2,2,1,2,2,1,2,1,1,1,1,1,1,0,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (38, 5, 65, 'Fail', 1502183080, 1502184221, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,39,23,41,15,25,37,32,27,100,148,46,20,18,70,13,37,12,30,14,42,14,164,29,17,25,39', 1136, 13, 48.1481, '182.253.212.11', '2,2,2,2,2,1,1,2,2,2,1,1,1,1,2,2,2,1,2,2,1,1,2,1,1,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (39, 5, 66, 'Fail', 1502201124, 1502202970, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '89,33,53,38,15,36,53,48,88,41,250,72,33,84,210,10,19,23,82,9,76,33,119,77,52,30,155', 1828, 11, 40.7407, '139.0.64.57', '1,2,2,2,1,1,2,1,2,2,1,2,1,2,2,2,2,2,1,1,2,2,2,1,1,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (40, 5, 67, 'Fail', 1502287678, 1502288689, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,48,43,33,13,47,66,45,68,48,67,15,14,10,54,16,26,31,54,19,39,14,53,5,2,2,19', 910, 9, 33.3333, '36.69.167.197', '1,1,2,2,1,1,2,0,2,1,0,0,2,0,2,2,2,1,1,2,2,1,0,1,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (41, 5, 68, 'Fail', 1502364966, 1502366075, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '30,30,29,60,2,28,30,30,30,30,20,42,16,37,51,29,19,43,43,9,114,136,15,87,29,60,53', 1102, 8, 29.6296, '182.253.163.6', '1,2,2,2,1,1,1,2,2,2,2,2,2,1,2,2,2,2,2,1,2,2,2,1,1,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (42, 5, 69, 'Pass', 1502376470, 1502378743, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '196,71,63,187,37,28,55,79,86,50,82,55,59,44,101,81,50,75,153,39,118,56,48,212,52,22,168', 2267, 24, 88.8889, '112.215.171.16', '1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,2,1,1,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (43, 5, 70, 'Fail', 1502493646, 1502495164, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '60,75,32,38,109,30,37,39,83,205,87,31,14,53,144,27,60,69,53,22,42,18,99,45,14,7,19', 1512, 8, 29.6296, '36.83.198.59', '1,2,2,2,2,1,2,1,2,1,2,1,2,2,2,2,2,2,1,2,2,2,2,1,1,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (44, 5, 71, 'Fail', 1502560029, 1502560047, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '125.163.75.51', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (45, 5, 72, 'Open', 1502562336, 0, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '1629,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '114.124.183.187', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (46, 5, 74, 'Open', 1502602865, 0, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '36.72.180.134', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (47, 5, 77, 'Open', 1503213532, 0, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '120.188.87.177', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (48, 5, 79, 'Fail', 1503900814, 1503900882, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '0,23,3,12,2,2,15,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 59, 3, 11.1111, '128.199.171.253', '2,2,2,2,1,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (49, 5, 85, 'Pass', 1504948927, 1504951463, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,30,60,60,60,30,30,90,163,92,89,78,39,68,84,68,74,30,122,178,30,85,440,120,42,90,161', 2472, 15, 55.5556, '120.188.66.168', '1,2,1,2,2,1,1,1,1,2,1,2,2,1,2,1,2,2,2,2,1,1,1,1,1,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (50, 5, 86, 'Open', 1504971330, 0, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '29,94,56,61,34,46,188,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '180.214.233.125', '2,1,2,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (51, 5, 90, 'Fail', 1505125086, 1505126984, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '60,91,52,68,23,29,81,98,59,132,84,94,29,49,282,23,54,55,61,17,47,17,71,73,61,10,66', 1786, 8, 29.6296, '114.4.78.219', '2,2,2,2,2,1,2,1,2,2,1,2,2,2,1,1,2,2,2,1,2,2,1,2,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (52, 5, 91, 'Pass', 1505213397, 1505215831, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '116,7,73,174,167,67,62,64,71,241,64,32,64,152,121,10,38,51,22,46,30,30,550,27,30,32,89', 2430, 20, 74.0741, '36.72.34.157', '1,1,1,2,1,1,1,1,2,2,1,1,1,2,2,1,2,2,1,1,1,1,1,1,1,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (53, 5, 94, 'Fail', 1505653501, 1505655921, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '29,55,70,99,54,58,103,55,120,124,170,118,41,44,239,21,29,63,155,38,62,42,148,201,79,115,59', 2391, 10, 37.037, '202.67.43.44', '2,2,2,1,1,1,2,1,2,2,1,2,2,1,2,2,2,1,2,2,2,1,2,1,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (54, 5, 95, 'Fail', 1506132174, 1506134879, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,67,62,173,63,36,121,61,29,163,181,156,19,36,479,41,151,22,69,13,333,13,25,147,31,7,144', 2701, 10, 37.037, '103.213.129.187', '1,2,2,2,1,1,1,1,2,2,2,1,2,2,2,2,2,2,1,1,2,2,2,1,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (55, 5, 99, 'Open', 1506486605, 0, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '28,27,38,39,0,0,0,0,0,0,0,5,1,0,0,0,0,0,0,0,0,0,0,0,0,5,0', 0, 0, 0, '180.254.164.32', '1,1,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (56, 5, 100, 'Fail', 1506500235, 1506501712, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,63,40,56,36,37,75,69,50,72,120,18,14,34,156,18,17,47,87,8,87,9,123,56,44,22,52', 1469, 8, 29.6296, '180.244.159.223', '1,2,2,2,1,1,2,1,2,2,2,1,2,2,2,2,2,2,2,1,1,2,2,1,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (57, 5, 103, 'Fail', 1507535209, 1507536897, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,105,36,34,66,23,44,26,38,106,77,53,24,81,93,12,13,22,47,26,151,21,285,97,22,31,92', 1684, 10, 37.037, '112.215.236.16', '1,2,2,2,2,1,1,1,2,2,1,2,2,2,2,1,2,2,1,1,1,2,2,2,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (58, 5, 106, 'Fail', 1507701268, 1510574834, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '0,29,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 29, 0, 0, '168.235.201.146', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (59, 5, 108, 'Fail', 1507724317, 1507725030, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '29,46,38,36,12,21,27,54,38,37,16,15,12,14,46,13,10,28,36,11,6,6,9,3,6,3,136', 708, 4, 14.8148, '120.188.79.182', '2,2,2,2,2,2,1,1,2,2,2,1,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (60, 5, 111, 'Open', 1507825221, 0, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '139.193.82.222', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (61, 5, 105, 'Fail', 1507879764, 1507882313, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '29,74,29,81,19,35,45,95,54,108,113,68,42,63,83,7,16,34,80,42,368,32,366,137,31,26,214', 2291, 12, 44.4444, '114.125.52.65', '1,2,2,2,2,1,1,1,2,2,1,1,2,2,2,1,2,2,1,1,1,1,2,2,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (62, 5, 112, 'Open', 1508380427, 0, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,31,45,74,68,21,58,116,30,45,8,2,2,28,3,0,2,3,14,0,0,0,0,0,0,0,0', 0, 0, 0, '114.124.177.98', '2,1,2,2,2,1,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (63, 5, 113, 'Fail', 1508398891, 1508398955, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 60, 1, 3.7037, '202.138.243.25', '1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (64, 5, 115, 'Fail', 1508473157, 1508474247, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,30,42,79,11,68,83,71,67,79,28,109,44,32,40,19,49,27,29,10,21,12,22,5,6,4,40', 1086, 4, 14.8148, '118.97.80.2', '1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,2,2,1,2,2,1,2,2,2,0,2', '', 0);
INSERT INTO `savsoft_result` VALUES (65, 5, 116, 'Fail', 1508512150, 1508513844, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,30,60,60,30,62,90,117,31,90,61,39,58,38,156,26,7,53,61,8,75,42,54,116,36,72,86', 1617, 8, 29.6296, '202.80.216.244', '2,2,2,2,1,1,2,2,2,2,1,1,2,2,2,1,2,2,2,1,2,2,1,1,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (66, 5, 117, 'Fail', 1508589448, 1514866596, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '29,30,60,30,8,22,60,60,30,90,41,30,12,18,59,0,0,0,0,0,0,0,0,0,0,0,0', 579, 4, 14.8148, '182.253.163.5', '2,2,2,2,1,1,1,2,2,2,1,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (67, 5, 118, 'Fail', 1508629973, 1508631269, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '29,28,35,31,23,44,56,38,50,49,107,34,17,30,28,11,16,62,28,12,104,56,81,229,18,22,44', 1282, 11, 40.7407, '120.188.66.130', '2,2,1,2,2,1,1,1,2,2,2,1,1,2,2,2,2,1,1,1,2,1,2,1,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (68, 5, 119, 'Fail', 1508833073, 1508834466, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,22,134,81,23,37,61,34,46,77,19,33,9,25,43,7,16,20,18,21,71,21,141,88,38,42,72', 1258, 12, 44.4444, '112.215.65.95', '1,1,2,2,2,1,1,1,2,2,2,1,2,1,2,2,1,2,2,2,1,2,1,1,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (69, 5, 121, 'Fail', 1508938778, 1508941446, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '', 0, 12, 44.4444, '36.76.147.71', '2,2,2,2,2,1,1,1,2,2,1,1,1,2,2,2,2,2,1,1,1,1,1,1,2,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (70, 5, 122, 'Fail', 1509199036, 1509201203, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,72,36,75,64,44,47,89,63,108,162,47,20,47,153,11,39,19,119,60,50,32,114,58,36,147,274', 2045, 9, 33.3333, '180.254.157.249', '2,2,2,1,2,1,2,2,2,2,1,1,2,2,2,1,2,2,2,1,2,1,1,1,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (71, 5, 123, 'Open', 1509401297, 0, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '89,8,21,0,0,0,3,2,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '114.124.240.2', '2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (72, 5, 124, 'Fail', 1509428367, 1509429029, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '29,23,21,26,18,62,24,32,33,39,31,7,42,19,40,9,8,7,31,10,42,31,29,6,3,18,19', 659, 11, 40.7407, '114.124.234.40', '1,1,2,2,2,2,1,1,2,2,2,2,1,2,1,2,2,2,1,2,1,0,1,2,1,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (73, 5, 125, 'Fail', 1509442481, 1509443891, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '89,95,78,72,71,24,101,112,125,76,146,42,15,34,44,11,30,25,42,37,62,10,28,15,3,5,9', 1401, 8, 29.6296, '103.213.131.20', '2,1,2,2,1,1,2,1,2,2,1,2,2,2,2,1,2,2,1,2,2,2,2,2,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (74, 5, 127, 'Fail', 1509541222, 1509542568, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '34,35,60,60,9,81,30,25,60,30,118,34,29,12,165,43,46,31,18,30,30,1,25,26,76,60,161', 1329, 7, 25.9259, '202.80.213.79', '1,1,1,2,2,2,2,2,2,2,2,1,2,1,2,1,2,2,2,2,2,2,2,2,1,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (75, 5, 128, 'Open', 1509583659, 0, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '30,29,2,28,30,1,29,8,52,30,4,13,25,10,8,30,1,9,0,0,0,0,0,0,0,0,0', 0, 0, 0, '115.178.194.89', '2,1,1,2,2,1,1,1,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (76, 5, 130, 'Fail', 1509721186, 1509721345, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '92,3,52,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 149, 1, 3.7037, '107.167.97.212', '1,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (77, 5, 129, 'Fail', 1509801532, 1509802837, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '29,30,30,60,30,30,30,60,60,60,30,180,9,21,30,13,17,12,51,32,58,5,175,60,2,117,60', 1291, 5, 18.5185, '36.82.22.121', '2,2,2,2,2,2,2,2,2,2,1,2,2,1,2,1,2,2,2,2,1,2,1,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (78, 5, 131, 'Fail', 1510023206, 1510023930, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '29,74,100,85,9,26,54,46,102,59,85,30,7,1,0,0,0,0,0,0,0,0,0,3,0,0,10', 720, 2, 7.40741, '36.70.243.51', '2,2,2,2,1,1,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (79, 5, 132, 'Fail', 1510049071, 1510050651, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '29,45,58,41,15,28,44,63,64,42,112,36,19,45,211,30,25,40,89,21,65,12,165,10,57,125,58', 1549, 7, 25.9259, '202.162.214.117', '2,2,2,2,1,1,2,1,2,2,1,2,2,2,2,2,2,2,2,1,2,2,2,2,1,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (80, 5, 133, 'Fail', 1510051046, 1510051855, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '30,33,40,39,11,16,143,28,30,25,18,32,8,15,31,25,10,45,16,12,6,3,10,60,33,5,85', 805, 8, 29.6296, '36.80.180.109', '2,1,2,2,2,1,1,1,2,2,2,2,2,2,2,2,2,2,1,1,2,2,2,2,1,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (81, 5, 135, 'Fail', 1510143196, 1510144353, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,33,33,64,25,59,45,71,30,100,23,24,12,69,124,34,20,26,84,31,52,10,20,38,20,19,28', 1151, 5, 18.5185, '36.84.151.6', '2,2,2,2,1,2,2,1,2,2,2,2,2,2,2,2,2,1,1,2,2,2,2,1,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (82, 5, 137, 'Fail', 1510226973, 1510228669, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '29,30,60,30,9,51,30,60,180,30,114,60,45,42,42,25,30,29,31,34,25,60,209,30,30,42,285', 1642, 12, 44.4444, '114.125.17.157', '2,1,2,2,2,1,1,1,2,2,1,1,2,2,2,2,2,2,1,1,1,1,1,1,2,2,0', '', 0);
INSERT INTO `savsoft_result` VALUES (83, 5, 138, 'Open', 1510242949, 0, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '0,24,2,1,0,1,0,1,0,0,0,1,0,0,1,0,1,0,0,0,1,0,0,0,1,0,0', 0, 0, 0, '180.241.174.139', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (84, 5, 139, 'Fail', 1510351827, 1510385087, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '89,141,46,58,38,71,99,95,102,110,45,37,32,62,63,29,29,26,128,68,36,46,47,26,75,42,892', 2532, 5, 18.5185, '125.167.113.243', '2,1,2,2,1,1,2,2,1,2,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (85, 5, 140, 'Fail', 1510492193, 1510492904, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,81,50,57,21,45,18,30,81,41,43,26,12,16,24,8,1,0,2,1,1,12,3,3,37,22,11', 705, 0, 0, '115.178.235.72', '2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,2,0,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (86, 5, 141, 'Open', 1510711741, 0, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '30,46,46,86,50,36,58,59,49,53,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '120.188.80.54', '1,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (87, 5, 142, 'Fail', 1510730526, 1510731953, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '29,41,15,41,17,16,12,41,33,100,85,24,6,13,517,12,8,26,43,8,10,5,174,6,7,2,132', 1423, 10, 37.037, '139.255.1.89', '1,2,2,2,2,1,1,1,2,2,2,2,2,2,1,2,2,1,1,1,2,2,1,2,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (88, 5, 145, 'Open', 1511219927, 0, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '180.243.229.42', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (89, 5, 146, 'Fail', 1511336206, 1511337225, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '29,38,36,127,8,15,33,77,32,40,37,9,23,19,42,27,13,34,30,5,31,18,94,76,62,6,54', 1015, 11, 40.7407, '125.160.109.73', '2,1,2,2,1,1,1,1,2,2,1,1,2,2,2,2,2,2,2,1,2,2,1,2,1,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (90, 5, 148, 'Fail', 1511525265, 1511528121, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '29,28,46,33,15,47,61,90,61,2,155,69,46,23,148,29,29,87,121,2,260,63,630,184,25,59,459', 2801, 8, 29.6296, '36.68.190.122', '1,1,2,2,2,1,2,2,2,2,2,2,1,2,2,1,2,2,2,1,2,2,2,1,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (91, 5, 151, 'Fail', 1512724570, 1512725437, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '84,27,45,45,11,33,19,57,48,59,14,11,6,5,3,4,3,1,4,6,73,5,30,48,49,63,82', 835, 13, 48.1481, '139.192.20.32', '1,2,2,2,1,1,1,1,2,1,2,1,2,2,2,2,2,2,2,2,1,1,2,1,1,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (92, 5, 153, 'Open', 1513010067, 0, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,54,48,94,20,33,110,118,70,74,179,95,33,23,1389,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '223.255.229.70', '2,2,1,2,2,1,2,2,2,2,2,1,1,2,2,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (93, 5, 154, 'Pass', 1513061358, 1513063977, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '89,63,77,98,27,42,51,65,121,57,233,21,62,75,196,8,27,38,83,29,87,53,585,54,54,79,185', 2559, 14, 51.8519, '114.124.232.106', '1,2,2,2,1,1,1,1,2,2,1,1,2,2,2,1,2,2,2,1,1,1,2,2,1,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (94, 5, 155, 'Fail', 1513131793, 1513133599, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '89,128,67,56,89,96,95,50,80,82,209,76,39,47,166,26,43,26,65,10,125,17,55,20,13,9,10', 1788, 9, 33.3333, '36.72.212.118', '2,2,2,2,1,2,1,1,2,2,1,1,1,2,1,2,2,2,2,1,2,2,2,1,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (95, 5, 156, 'Fail', 1513317367, 1513319242, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '0,37,11,150,76,18,26,131,13,33,73,82,25,21,56,17,10,60,320,5,139,43,8,30,180,20,285', 1869, 9, 33.3333, '182.253.163.49', '2,2,2,2,1,1,1,1,2,2,1,2,1,2,2,1,2,2,2,1,2,2,1,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (96, 5, 157, 'Pass', 1513564228, 1513567050, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '119,100,88,57,70,49,130,114,23,158,334,40,62,98,293,41,49,66,120,3,166,46,207,89,50,69,134', 2775, 18, 66.6667, '36.77.197.226', '2,1,2,1,1,1,1,1,2,2,1,1,1,2,2,1,2,2,1,1,1,1,2,1,1,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (97, 5, 159, 'Pass', 1513763967, 1513765098, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '31,50,50,31,26,10,43,32,33,73,84,35,15,23,91,38,35,9,38,7,29,22,59,120,19,28,80', 1111, 14, 51.8519, '202.67.42.33', '1,2,2,2,1,1,1,2,2,1,1,2,2,1,2,1,2,2,1,1,1,2,2,1,1,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (98, 5, 5, 'Open', 1513819705, 0, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '27.50.17.34', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (99, 5, 160, 'Fail', 1513838428, 1513838900, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '32,29,45,25,13,24,21,19,22,25,13,4,3,16,3,3,6,5,35,15,9,6,15,3,3,2,8', 404, 7, 25.9259, '125.162.108.138', '1,1,2,2,1,2,1,2,2,2,2,2,1,2,2,1,2,2,1,2,2,2,2,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (100, 5, 161, 'Fail', 1513897274, 1513900951, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '29,56,106,80,18,47,293,228,88,60,143,72,95,98,224,47,17,99,89,11,189,25,174,40,17,0,0', 2345, 13, 48.1481, '120.188.73.139', '1,2,1,2,2,1,2,1,2,2,1,2,1,1,2,1,2,2,1,1,2,1,2,1,1,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (101, 5, 162, 'Fail', 1513921423, 1513922848, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '0,60,30,59,30,30,90,30,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 359, 0, 0, '114.124.169.62', '2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (102, 5, 163, 'Open', 1514111095, 0, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,21,9,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '114.125.15.55', '1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (103, 5, 164, 'Fail', 1514117088, 1514118967, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '60,52,52,108,121,44,52,130,56,142,7,91,46,70,98,51,103,127,245,123,9,35,11,5,13,4,9', 1864, 5, 18.5185, '114.142.173.20', '2,2,2,2,1,1,2,1,2,2,2,2,2,1,2,2,2,2,2,2,2,2,2,2,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (104, 5, 165, 'Pass', 1514125698, 1514129302, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '60,146,99,40,36,30,90,49,42,76,136,73,16,105,250,59,61,22,96,8,265,66,187,552,568,100,130', 3333, 15, 55.5556, '116.206.39.71', '1,2,2,2,1,1,1,1,2,2,1,1,1,2,2,1,2,2,1,1,1,1,1,1,2,0,2', '', 0);
INSERT INTO `savsoft_result` VALUES (105, 5, 166, 'Fail', 1514127112, 1514130716, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '60,44,34,62,34,63,106,154,73,75,172,141,18,79,117,57,11,6,94,32,389,44,88,150,135,373,225', 2836, 12, 44.4444, '202.67.40.50', '1,1,2,2,1,1,2,2,2,2,1,1,2,2,2,2,2,2,1,1,0,2,0,1,1,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (106, 5, 167, 'Pass', 1514130304, 1514132599, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '0,39,14,53,17,11,34,13,5,21,9,5,9,16,15,9,16,9,8,7,38,43,4,8,15,58,44', 520, 17, 62.963, '116.206.39.71', '1,2,2,2,1,1,1,1,2,2,1,1,1,2,2,1,2,2,1,1,1,1,1,1,1,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (107, 5, 168, 'Fail', 1514204186, 1514204901, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '29,30,30,30,30,30,60,60,30,60,9,21,30,2,14,14,30,30,4,26,2,28,10,28,25,30,19', 711, 6, 22.2222, '202.62.16.12', '2,2,2,2,1,1,1,2,2,1,2,2,2,2,2,1,2,2,1,2,2,2,2,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (108, 5, 169, 'Fail', 1514310274, 1514310721, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '29,21,21,45,7,25,19,30,28,23,15,6,6,13,36,4,30,8,11,8,9,3,5,3,3,4,30', 442, 8, 29.6296, '139.193.92.24', '1,1,2,2,1,1,2,1,2,2,2,2,2,1,2,1,2,2,2,2,2,2,2,2,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (109, 5, 170, 'Fail', 1514389277, 1514390266, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '29,30,30,60,8,22,30,30,60,60,60,48,19,5,74,58,30,36,33,43,14,30,30,60,30,30,26', 985, 11, 40.7407, '139.193.218.81', '1,2,2,2,2,1,2,1,1,1,2,1,2,2,2,1,2,1,1,1,2,1,2,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (110, 5, 171, 'Fail', 1514423207, 1514423452, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,30,64,87,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 240, 0, 0, '116.206.39.91', '2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (111, 5, 172, 'Open', 1514481926, 0, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '29,32,44,47,15,43,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '139.192.72.170', '2,2,2,2,2,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (112, 5, 174, 'Fail', 1514812137, 1514815249, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '223,105,59,212,17,68,69,81,173,143,103,32,26,41,205,75,14,30,163,16,238,134,318,246,62,65,155', 3073, 13, 48.1481, '115.178.237.243', '2,1,2,2,2,2,1,1,2,2,1,2,1,2,2,1,2,2,1,1,1,1,2,1,1,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (113, 5, 175, 'Fail', 1514866980, 1514870593, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,151,85,40,151,172,37,41,149,324,206,36,25,102,190,33,21,35,437,9,575,35,83,72,139,244,93', 3514, 10, 37.037, '125.166.197.150', '2,2,1,2,2,1,1,1,2,2,1,2,1,2,2,1,2,1,1,2,0,0,2,1,0,0,2', '', 0);
INSERT INTO `savsoft_result` VALUES (114, 5, 176, 'Fail', 1514882272, 1514885456, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '58,76,70,53,6,59,33,48,111,36,242,16,63,103,553,118,116,22,290,108,13,92,127,169,32,296,64', 2974, 9, 33.3333, '202.67.43.4', '2,2,1,2,2,2,2,2,2,2,1,1,2,2,2,1,2,2,2,1,2,1,1,2,1,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (115, 5, 177, 'Fail', 1515036179, 1515038385, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,30,65,31,24,45,62,70,100,85,31,123,100,98,152,42,53,31,86,78,205,161,113,261,6,17,73', 2201, 7, 25.9259, '120.188.38.5', '2,1,2,2,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,1,2,2,2,2,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (116, 5, 180, 'Fail', 1515126374, 1515127828, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,55,43,35,28,34,45,50,37,75,71,47,18,16,174,12,16,29,40,16,81,51,66,113,131,40,66', 1448, 11, 40.7407, '202.169.39.133', '1,1,2,2,1,1,2,2,2,2,1,2,1,2,2,1,2,1,1,2,2,2,1,2,1,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (117, 5, 181, 'Fail', 1515277379, 1515279916, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,136,60,59,94,27,52,64,49,33,210,113,25,96,178,36,99,32,90,10,293,47,37,188,130,92,223', 2532, 11, 40.7407, '202.67.46.19', '1,2,2,2,2,1,2,2,2,2,1,1,2,1,2,1,2,2,2,1,2,1,1,1,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (118, 5, 183, 'Fail', 1515419002, 1515419391, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '58,30,15,44,5,24,10,20,58,3,6,21,29,1,7,13,3,1,2,3,1,3,1,1,3,1,14', 377, 5, 18.5185, '112.215.65.181', '2,2,2,2,2,1,1,2,2,2,2,2,2,2,1,2,2,2,1,2,2,1,2,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (119, 5, 184, 'Fail', 1515574564, 1515576281, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,100,34,90,91,61,60,68,32,31,16,30,30,115,111,42,34,42,271,34,26,4,206,3,27,4,64', 1685, 9, 33.3333, '103.10.66.66', '2,2,2,2,2,1,2,1,2,2,2,2,2,1,2,2,2,1,1,1,1,2,2,1,2,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (120, 5, 186, 'Fail', 1515947268, 1515949495, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '119,150,33,30,85,35,151,59,136,88,68,25,14,70,81,86,14,55,30,8,244,29,73,272,70,40,146', 2211, 9, 33.3333, '114.124.247.169', '1,2,2,2,2,2,1,2,2,2,1,2,2,2,2,2,2,2,1,1,1,1,2,2,1,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (121, 5, 187, 'Open', 1516024846, 0, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '168.235.198.46', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (122, 5, 188, 'Open', 1516045090, 0, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '62,46,73,30,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,9,0,9,37,14', 0, 0, 0, '139.192.166.30', '1,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (123, 5, 190, 'Open', 1518436774, 0, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '6,6,30,15,8,11,13,6,6,6,0,11,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '141.0.9.138', '2,2,2,2,2,1,1,1,2,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (124, 5, 191, 'Fail', 1518573629, 1518575803, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '58,102,34,55,44,15,33,44,71,48,105,19,57,22,111,16,60,55,27,26,78,24,453,61,39,96,132', 1885, 11, 40.7407, '8.37.232.98', '1,2,2,2,2,1,2,2,2,2,1,1,2,1,2,1,2,2,1,2,1,2,2,1,1,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (125, 5, 192, 'Fail', 1518769052, 1518770251, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '39,78,47,80,61,18,65,37,33,42,115,22,10,39,110,10,15,9,32,7,12,8,82,43,21,7,68', 1110, 9, 33.3333, '202.67.47.1', '2,2,1,2,2,2,2,2,1,2,1,1,2,1,2,1,2,2,1,1,2,2,1,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (126, 5, 193, 'Fail', 1518829659, 1518830670, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,23,41,54,49,57,156,87,58,110,52,23,10,19,39,11,13,11,27,25,11,6,12,6,9,4,14', 986, 7, 25.9259, '36.68.206.146', '1,2,2,2,2,2,1,1,1,2,2,1,2,2,2,2,2,1,2,1,2,2,2,2,2,2,0', '', 0);
INSERT INTO `savsoft_result` VALUES (127, 5, 189, 'Fail', 1519130111, 1519132919, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '90,90,86,161,67,18,100,108,102,48,235,62,53,47,250,19,26,49,92,22,225,189,291,180,30,30,129', 2785, 13, 48.1481, '36.80.240.249', '1,2,1,2,1,1,2,1,2,1,1,1,1,1,2,2,2,2,2,1,2,2,2,1,1,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (128, 5, 195, 'Open', 1519209184, 0, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '29,58,34,27,29,46,21,73,74,62,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '202.62.16.58', '1,2,2,2,1,1,1,1,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (129, 5, 196, 'Fail', 1519396647, 1519398100, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '60,92,51,44,52,54,30,49,98,42,9,6,4,5,3,2,2,2,3,11,18,7,211,71,152,58,300', 1436, 5, 18.5185, '110.138.159.187', '1,2,2,2,2,1,1,2,2,2,2,2,2,2,2,2,2,2,1,1,2,2,2,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (130, 5, 197, 'Open', 1519557956, 0, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,34', 0, 0, 0, '114.124.215.207', '1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (131, 5, 198, 'Fail', 1519714684, 1519717196, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '60,243,46,67,22,63,69,63,59,42,100,99,119,136,116,22,18,47,153,24,105,179,173,52,103,81,163', 2424, 11, 40.7407, '120.188.80.244', '1,2,1,2,1,2,1,1,2,2,1,1,2,2,2,2,2,1,1,2,2,2,1,1,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (132, 5, 199, 'Fail', 1520347462, 1520348800, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '30,69,95,84,14,48,26,112,81,47,21,36,30,20,91,25,25,16,138,13,34,17,9,42,145,45,18', 1331, 5, 18.5185, '114.125.26.199', '1,2,1,2,2,2,1,1,2,2,2,2,2,2,2,2,2,1,2,2,2,2,0,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (133, 5, 201, 'Fail', 1520923930, 1520926888, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '56,68,58,40,27,34,86,36,24,54,153,51,40,37,265,21,48,68,114,21,372,112,558,96,21,390,70', 2920, 9, 33.3333, '103.7.225.123', '1,2,2,2,2,1,1,1,2,2,1,1,2,2,2,2,2,2,1,1,2,2,2,2,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (134, 5, 202, 'Fail', 1521017467, 1521019227, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '89,45,55,34,37,45,49,36,40,47,78,39,14,33,158,20,59,13,108,7,69,124,309,43,16,42,141', 1750, 7, 25.9259, '116.206.8.63', '2,2,2,2,1,1,2,1,2,2,1,2,2,2,2,1,2,2,2,2,0,2,0,1,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (135, 5, 205, 'Fail', 1521083943, 1521083954, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '0,1,1,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 4, 0, 0, '202.158.33.18', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (136, 6, 1, 'Fail', 1521433030, 1593160518, 'SNMPTN', '1', '48', '30', 30, 0, 0, '202.158.33.18', '0', '', 0);
INSERT INTO `savsoft_result` VALUES (137, 5, 207, 'Fail', 1521559444, 1521560176, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '29,30,30,60,30,30,4,26,30,30,30,110,29,28,6,24,8,22,28,28,26,10,14,14,1,12,26', 715, 10, 37.037, '120.188.66.198', '1,2,2,2,1,1,2,1,2,1,2,1,2,1,2,2,2,2,1,1,2,2,1,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (138, 5, 208, 'Fail', 1521952252, 1521953276, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '30,60,60,60,30,60,69,111,60,30,49,39,9,23,85,30,23,42,18,42,1,15,14,10,20,6,24', 1020, 9, 33.3333, '120.188.95.134', '1,2,2,2,1,1,1,2,2,2,1,1,2,2,2,1,2,2,1,2,2,2,2,2,1,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (139, 5, 214, 'Fail', 1523535307, 1523536686, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '39,62,50,48,19,59,80,47,51,65,136,56,23,54,71,20,10,26,48,11,102,37,86,60,38,34,18', 1350, 13, 48.1481, '180.246.191.54', '1,2,2,2,2,1,2,1,2,2,1,1,2,1,2,1,2,2,1,1,1,1,0,0,1,1,0', '', 0);
INSERT INTO `savsoft_result` VALUES (140, 5, 216, 'Fail', 1523678529, 1523680210, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '89,44,68,38,35,88,131,115,31,273,44,30,30,30,60,18,72,30,60,30,90,4,86,60,30,0,0', 1586, 7, 25.9259, '8.37.232.220', '2,2,2,2,1,2,2,2,2,2,1,2,2,1,2,1,2,2,1,1,2,1,0,2,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (141, 5, 217, 'Fail', 1523711682, 1523712498, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '29,70,33,28,46,37,26,37,24,45,51,16,14,14,52,18,29,12,65,17,11,7,15,69,7,4,0', 776, 3, 11.1111, '120.188.7.197', '1,2,2,2,1,2,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2,2,2,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (142, 5, 215, 'Fail', 1523770312, 1523772675, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '30,79,7,63,48,33,5,42,95,70,130,81,41,92,89,14,10,72,37,96,185,44,275,107,53,315,206', 2319, 12, 44.4444, '116.206.9.57', '2,2,2,2,1,1,2,1,2,1,1,2,1,2,2,1,2,2,1,2,1,1,1,2,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (143, 5, 218, 'Fail', 1523970425, 1523974063, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '89,29,79,187,42,14,45,105,96,126,148,31,31,90,296,23,99,49,122,12,89,114,140,164,221,45,158', 2644, 10, 37.037, '61.247.32.17', '2,2,2,2,1,1,1,1,2,2,1,2,1,0,2,2,2,2,1,1,2,2,1,2,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (144, 5, 219, 'Open', 1523989136, 0, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '0,0,0,0,0,0,0,0,0,0,9,0,0,0,0,0,0,0,3,0,0,0,20,0,0,0,3', 0, 0, 0, '120.188.33.137', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (145, 5, 220, 'Fail', 1524045950, 1524047849, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '119,9,81,90,30,39,30,60,140,60,76,40,47,20,82,27,31,12,107,43,30,97,80,185,68,65,190', 1858, 12, 44.4444, '114.124.232.104', '1,2,1,2,2,1,1,2,2,2,1,2,2,1,2,2,2,2,1,2,2,1,2,1,1,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (146, 5, 221, 'Fail', 1524068668, 1524100857, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '29,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 29, 0, 0, '118.136.14.144', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (147, 5, 223, 'Fail', 1524131598, 1524132475, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '89,44,27,31,25,35,58,46,29,30,16,34,19,5,55,18,15,12,48,17,15,3,7,3,7,3,17', 708, 5, 18.5185, '182.0.236.216', '1,2,2,2,2,2,2,1,2,2,2,1,2,2,2,1,2,2,1,2,2,2,2,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (148, 5, 224, 'Fail', 1524269856, 1524272117, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,42,55,71,80,50,83,68,110,152,418,42,21,139,113,56,32,59,91,11,68,14,135,57,83,53,55', 2217, 8, 29.6296, '112.215.238.138', '2,2,2,2,1,1,2,1,2,2,2,1,2,1,2,1,2,2,2,1,2,2,1,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (149, 5, 225, 'Fail', 1524446110, 1524449713, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '148,182,49,85,247,79,78,215,169,521,237,301,65,86,127,4,5,3,4,21,4,488,18,14,224,11,167', 3552, 6, 22.2222, '36.83.143.211', '2,2,2,2,1,1,1,2,2,2,1,1,2,1,0,0,0,0,0,0,0,0,0,0,0,0,2', '', 0);
INSERT INTO `savsoft_result` VALUES (150, 5, 226, 'Fail', 1524550076, 1524551647, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '64,74,39,81,90,60,30,30,60,30,94,52,18,19,86,17,26,56,50,10,76,55,66,143,21,93,35', 1475, 9, 33.3333, '202.67.37.18', '1,2,2,2,2,1,2,2,2,2,1,1,2,2,2,1,2,2,2,1,1,2,1,2,2,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (151, 5, 228, 'Fail', 1524745799, 1524746288, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '59,33,153,93,5,97,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 440, 2, 7.40741, '114.125.169.201', '2,0,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (152, 5, 230, 'Fail', 1524811899, 1524812418, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '30,38,24,22,14,33,49,18,21,45,14,14,14,10,13,5,16,11,33,16,8,8,18,10,6,6,14', 510, 5, 18.5185, '36.84.133.191', '2,2,2,2,2,1,2,1,2,2,2,1,2,2,2,2,2,2,2,2,2,1,2,2,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (153, 5, 231, 'Fail', 1525078664, 1525080391, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '330,51,40,58,16,15,35,32,27,98,61,14,15,11,79,13,17,13,35,37,82,23,95,117,32,68,185', 1599, 6, 22.2222, '114.125.35.38', '2,2,2,2,2,2,2,2,2,2,1,2,2,2,2,2,2,1,1,2,1,2,2,1,1,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (154, 5, 290, 'Fail', 1537150989, 1537151442, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '329,12,11,9,4,6,8,5,3,4,4,4,4,3,5,2,2,3,4,2,6,4,2,2,2,3,25', 468, 7, 25.9259, '117.102.96.226', '2,1,0,2,1,2,1,1,2,2,2,2,1,2,2,2,2,2,2,2,2,1,2,1,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (155, 5, 292, 'Fail', 1537242837, 1537242904, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '48,2,1,0,0,1,1,1,0,1,1,1,0,1,1,0,1,0,0,0,0,0,0,0,1,1,2', 64, 0, 0, '202.158.64.242', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (156, 5, 293, 'Pass', 1537277047, 1537280653, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '201,95,69,115,32,25,71,70,94,271,273,126,80,106,240,136,74,180,90,30,273,9,246,128,25,389,92', 3540, 17, 62.963, '36.85.136.208', '1,1,1,1,1,1,1,1,1,1,1,2,1,2,2,1,2,2,1,1,2,2,2,2,1,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (157, 5, 296, 'Fail', 1537595758, 1537596341, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '60,30,30,32,28,32,28,6,24,30,31,12,17,8,22,30,0,13,40,7,7,11,12,10,20,11,28', 579, 4, 14.8148, '36.76.213.218', '2,2,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2,2,2,2,1,2,1,2,2,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (158, 5, 297, 'Fail', 1537596532, 1537597313, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '90,32,14,16,29,33,9,56,19,27,25,32,22,19,61,3,30,18,31,32,2,3,29,25,14,34,20', 725, 5, 18.5185, '36.76.213.218', '1,2,2,2,2,1,2,2,2,2,2,2,2,1,1,2,2,2,2,2,2,2,2,2,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (159, 5, 294, 'Fail', 1537599237, 1537601581, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '78,132,27,50,71,24,47,56,35,37,242,200,16,23,297,39,19,31,55,13,27,71,354,224,14,53,105', 2340, 12, 44.4444, '125.161.130.171', '2,1,2,2,1,1,1,2,2,2,1,1,1,2,2,2,2,2,1,1,2,2,2,1,2,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (160, 5, 295, 'Fail', 1537603840, 1537605621, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '120,84,107,181,94,122,90,92,94,61,56,125,39,67,91,27,20,10,23,49,63,39,38,0,48,8,22', 1770, 11, 40.7407, '36.76.213.218', '1,2,2,2,2,1,1,2,2,1,1,2,1,2,2,2,2,1,1,1,2,1,1,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (161, 5, 298, 'Pass', 1537622921, 1537624584, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '60,76,60,44,34,60,56,90,60,60,55,37,11,70,57,51,30,60,30,30,30,5,205,90,60,120,114', 1655, 14, 51.8519, '180.254.144.135', '1,2,1,2,1,1,2,2,2,2,1,1,2,1,2,2,2,2,1,1,1,2,2,1,1,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (162, 5, 299, 'Pass', 1537626344, 1537628873, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '54,90,60,120,30,30,120,90,120,150,208,73,14,67,240,58,90,60,149,1,149,60,180,60,30,60,154', 2517, 14, 51.8519, '114.125.248.181', '1,2,2,2,1,1,2,1,2,2,1,2,1,2,1,1,2,2,1,2,1,2,2,1,1,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (163, 5, 300, 'Fail', 1537685354, 1537688552, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '90,133,56,85,20,48,66,76,79,126,40,160,119,43,421,70,106,142,60,113,29,44,64,324,66,64,548', 3192, 5, 18.5185, '114.4.217.184', '2,2,2,2,2,1,2,2,2,2,2,2,2,2,2,2,2,1,1,2,2,1,2,1,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (164, 5, 301, 'Fail', 1537889730, 1537890752, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '29,59,132,58,91,56,30,57,62,82,13,17,26,10,3,3,10,5,3,2,3,4,2,3,3,3,11', 777, 9, 33.3333, '180.248.173.96', '1,2,2,2,1,1,2,1,2,1,2,1,1,2,2,2,2,2,1,2,2,1,2,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (165, 5, 291, 'Open', 1538541916, 0, 'USM', '27', '18,19,20,21,22,23,24,25,26,27,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '202.158.64.242', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (166, 7, 266, 'Fail', 1539934845, 1547691494, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '202.158.64.242', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (167, 7, 304, 'Fail', 1540181155, 1540181929, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,62,23,45,40,44,51,46,28,52,5,4,5,9,4,5,4,10,8,4,5,13,5,17,25,43,31,21,38,26,7,7,5,15,20,18,4,6,5,10', 770, 13, 32.5, '139.255.91.250', '2,2,1,2,1,1,2,2,2,1,1,2,2,2,2,2,1,2,1,2,2,2,2,2,2,1,1,2,1,1,2,2,2,2,2,2,1,2,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (168, 7, 306, 'Open', 1540812891, 0, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '30,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '140.213.14.142', '2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (169, 7, 307, 'Fail', 1540813234, 1540815311, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '30,46,15,19,24,44,25,87,147,71,43,56,45,17,143,27,14,71,32,8,83,93,37,17,62,57,211,68,32,65,30,15,68,21,11,42,12,27,31,30', 1976, 11, 27.5, '114.124.171.97', '1,2,2,2,2,1,1,2,2,1,2,2,2,2,1,2,2,2,2,2,2,2,2,1,2,2,1,2,1,1,2,1,2,2,2,1,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (170, 7, 308, 'Fail', 1540956130, 1540990650, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '30,61,13,25,11,41,84,54,21,10,44,69,8,13,14,10,95,27,18,18,16,30,5,6,5,17,19,21,14,17,8,8,13,25,5,12,24,10,20,2419', 3360, 5, 12.5, '114.124.236.38', '2,2,2,2,1,2,2,2,2,2,2,2,2,1,2,2,1,2,2,2,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2,1,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (171, 7, 309, 'Open', 1541065497, 0, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '58,32,44,64,74,69,145,82,148,37,27,35,14,12,7,11,9,19,4,8,24,14,3,3,3,11,17,3,54,6,5,39,31,5,4,4,4,9,2,3', 0, 0, 0, '116.206.42.102', '2,1,1,1,1,2,2,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (172, 7, 310, 'Open', 1541992560, 0, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '60,30,60,12,78,90,30,360,193,17,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '140.213.43.66', '2,2,1,1,1,2,1,2,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (173, 7, 311, 'Fail', 1542549298, 1542552900, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '69,120,59,30,57,50,143,85,34,32,150,70,52,21,60,35,65,218,98,210,199,123,60,90,2,118,150,262,30,94,96,55,30,90,60,55,90,30,120,180', 3584, 18, 45, '112.215.174.229', '1,2,2,1,1,1,1,1,1,1,2,2,2,1,2,2,1,2,2,2,2,2,2,1,1,1,2,2,1,2,2,1,1,2,2,2,0,2,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (174, 7, 312, 'Pass', 1544172549, 1544175616, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '15,44,30,30,30,30,30,297,122,84,124,92,92,95,107,156,71,96,95,248,147,98,51,36,6,27,89,57,27,132,147,65,31,62,29,12,53,29,8,23', 3017, 20, 50, '180.246.130.193', '2,2,1,1,1,1,1,1,1,1,1,1,1,2,1,2,1,1,2,1,1,1,2,2,2,2,2,2,1,2,2,2,2,1,2,2,2,2,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (175, 7, 313, 'Fail', 1544613683, 1544699355, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '114.142.172.58', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (176, 7, 316, 'Pass', 1545386068, 1545389466, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '30,13,17,30,30,90,43,169,30,30,60,6,44,81,24,40,42,15,31,12,73,243,90,78,48,106,111,181,33,199,130,240,259,120,86,198,119,90,60,60', 3361, 26, 65, '61.5.63.138', '2,2,2,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,2,2,2,2,2,1,2,1,2,1,1,2,1,2,2,1,1,1,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (177, 7, 317, 'Fail', 1546409928, 1546413397, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,47,22,23,15,32,100,203,281,164,57,41,43,37,32,22,31,39,36,81,50,230,137,145,40,49,72,29,56,119,184,214,108,91,58,118,63,212,84,73', 3438, 15, 37.5, '115.178.212.16', '2,2,2,1,1,2,2,2,1,2,1,1,2,2,2,2,2,2,2,2,2,2,1,1,2,2,1,1,1,1,1,1,1,2,2,2,2,2,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (178, 7, 319, 'Fail', 1547450634, 1547451086, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,29,30,5,26,29,8,52,5,25,32,51,9,8,18,4,10,18,30,30,6,14,4,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 449, 7, 17.5, '114.124.199.166', '2,2,1,1,2,1,2,2,1,1,2,2,2,2,2,1,2,2,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (179, 7, 320, 'Fail', 1547562761, 1547565378, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,54,15,65,99,76,100,51,100,83,294,6,5,4,4,2,3,5,9,140,67,20,95,5,53,156,15,198,167,185,110,19,48,39,11,61,128,12,68,29', 2601, 10, 25, '36.83.197.26', '2,2,1,2,1,1,2,2,1,1,1,1,2,2,2,1,2,2,2,2,1,2,2,2,2,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (180, 7, 322, 'Fail', 1548590422, 1548592686, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,44,42,27,27,30,28,27,93,79,59,73,25,10,25,19,34,52,25,221,65,114,72,69,45,113,105,89,62,118,48,65,65,11,43,40,39,31,61,12', 2207, 13, 32.5, '140.213.41.171', '2,2,2,1,1,1,2,2,2,1,1,2,2,1,2,1,2,2,2,2,2,2,2,1,2,2,2,2,1,1,2,2,2,1,2,2,2,1,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (181, 7, 323, 'Fail', 1548934959, 1548935197, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,23,5,23,41,37,12,4,5,5,5,2,1,2,1,2,2,1,2,1,2,1,1,1,2,2,2,1,10,2,1,1,2,1,2,1,1,2,4,15', 228, 10, 25, '36.82.103.234', '2,2,1,2,2,2,2,2,2,1,2,1,2,2,2,2,2,1,2,2,2,1,1,2,1,2,2,2,1,2,1,2,2,2,2,2,2,1,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (182, 7, 324, 'Fail', 1549171404, 1549171509, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,18,12,30,30,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 98, 3, 7.5, '182.0.230.117', '2,2,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (183, 7, 327, 'Pass', 1550581700, 1550584912, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '30,61,59,31,24,45,51,97,27,33,87,34,96,59,75,4,128,60,150,132,305,44,25,191,34,97,94,81,42,18,161,20,24,12,31,94,3,24,11,591', 3185, 22, 55, '114.5.146.218', '2,2,1,1,1,2,1,1,1,1,1,2,2,2,2,1,1,1,1,1,2,2,2,1,2,2,2,1,2,1,1,1,1,1,2,2,2,1,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (184, 7, 329, 'Fail', 1550838127, 1550838937, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '30,34,11,51,59,86,28,37,7,13,10,15,36,6,6,5,3,5,7,31,36,77,15,4,7,41,15,20,3,16,9,5,14,16,11,6,4,3,3,16', 801, 4, 10, '114.124.239.179', '2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,2,2,2,2,2,1,2,1,2,1,2,2,2,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (185, 7, 332, 'Pass', 1551355900, 1551359504, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '30,116,103,88,122,110,32,234,44,25,77,15,91,12,45,32,132,136,33,187,208,53,25,11,20,186,69,98,42,104,157,194,99,143,113,145,57,29,118,33', 3568, 27, 67.5, '223.255.225.69', '2,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,2,2,1,2,2,1,1,1,1,2,2,1,2,1,0,1,1,1,1,2,2,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (186, 7, 333, 'Fail', 1551531939, 1551533169, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,27,12,16,13,26,22,35,49,23,87,4,11,82,6,7,19,33,19,70,83,16,35,25,27,33,30,38,24,83,23,5,24,30,6,37,43,43,38,21', 1225, 10, 25, '139.193.138.146', '2,2,2,1,1,2,2,2,1,1,2,2,2,2,2,2,1,1,2,2,2,2,2,1,2,2,2,1,1,2,2,2,2,2,2,2,2,2,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (187, 7, 281, 'Fail', 1551680305, 1551682545, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '30,74,36,36,109,37,11,172,18,10,194,397,38,23,64,113,137,15,65,4,16,103,19,18,46,49,25,44,41,57,32,16,35,14,7,42,27,26,21,14', 2235, 15, 37.5, '182.30.130.196', '2,2,2,1,2,2,1,1,1,1,2,2,2,2,2,1,2,1,2,2,2,1,2,1,2,1,2,1,1,2,1,2,1,2,2,2,2,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (188, 7, 334, 'Fail', 1551688097, 1551691173, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '1,193,14,53,21,28,159,245,60,14,171,58,39,19,19,147,30,375,98,128,122,91,98,22,61,82,135,91,41,81,18,10,17,109,6,16,49,34,12,85', 3052, 13, 32.5, '115.178.220.46', '1,2,2,2,1,1,2,2,1,1,2,2,2,2,1,2,2,1,1,2,2,2,2,1,2,1,2,1,1,2,2,2,2,2,2,2,1,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (189, 7, 331, 'Fail', 1551846255, 1551849856, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '1,38,56,30,47,44,11,226,2,15,368,234,74,108,76,33,107,179,127,364,121,121,94,11,56,61,63,121,64,66,131,52,43,119,13,143,30,42,68,31', 3590, 18, 45, '146.196.97.237', '2,2,2,1,1,1,1,1,1,1,1,0,2,0,1,1,0,2,2,2,2,2,2,1,1,2,2,2,2,1,2,1,1,1,2,1,2,1,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (190, 7, 335, 'Fail', 1551865279, 1551866673, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,53,17,9,34,16,28,29,17,4,7,11,27,2,23,1,8,10,10,33,0,76,8,4,10,38,1,4,29,13,45,35,24,30,3,8,7,6,11,16', 707, 17, 42.5, '114.4.83.220', '2,1,1,1,1,1,1,2,1,1,1,2,1,2,1,2,2,1,2,2,2,2,2,2,2,2,1,2,1,1,2,2,2,2,2,1,1,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (191, 7, 336, 'Fail', 1552111014, 1552114430, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,50,11,80,43,26,10,212,26,41,252,80,42,51,37,37,79,325,129,153,88,120,34,17,15,67,58,45,53,84,148,80,69,128,115,229,174,90,87,26', 3411, 16, 40, '120.188.85.33', '2,2,1,1,1,2,2,2,1,1,2,2,1,2,1,2,1,2,2,1,2,2,2,1,2,1,2,1,1,1,2,1,1,2,2,2,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (192, 7, 337, 'Fail', 1552292492, 1552293363, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,29,5,25,60,30,60,90,30,30,30,12,6,12,5,15,5,9,20,122,60,10,7,4,4,5,64,12,18,30,20,6,4,1,3,2,4,2,3,3', 857, 9, 22.5, '168.235.205.246', '2,2,2,1,1,1,2,2,1,1,2,1,2,2,1,1,2,2,2,2,2,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2,2,2,2,0', '', 0);
INSERT INTO `savsoft_result` VALUES (193, 7, 339, 'Pass', 1552762981, 1552766585, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '27,91,114,32,39,65,64,304,55,89,179,59,209,40,117,116,103,45,27,191,68,176,40,13,49,156,131,203,32,55,92,44,49,29,4,61,42,64,20,33', 3327, 20, 50, '202.80.214.237', '2,2,2,1,1,1,2,1,1,1,1,0,2,1,2,1,1,1,2,1,2,1,2,1,2,2,1,2,1,1,2,2,1,2,0,1,2,2,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (194, 7, 341, 'Fail', 1553013004, 1553268387, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,60,49,32,23,54,42,63,68,29,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 450, 7, 17.5, '103.227.144.10', '2,2,1,1,1,1,1,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (195, 7, 343, 'Fail', 1553065147, 1553066874, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '11,34,22,57,18,42,68,34,150,60,90,7,23,9,9,9,6,1,21,40,64,82,36,46,32,30,30,60,4,56,90,60,37,60,55,88,90,30,13,48', 1722, 11, 27.5, '139.194.19.217', '2,2,2,1,2,2,1,2,2,1,2,2,2,1,2,2,2,2,2,2,2,1,2,1,2,2,2,2,1,1,2,2,1,2,2,1,2,2,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (196, 7, 344, 'Fail', 1553223786, 1553226233, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '32,28,90,60,30,30,90,135,60,29,53,20,2,5,6,6,4,0,2,2,144,242,34,56,90,179,61,90,60,90,217,30,8,52,7,187,60,30,74,48', 2443, 15, 37.5, '182.253.124.7', '2,2,1,1,1,1,1,2,1,1,2,0,0,0,0,0,0,0,0,0,1,2,2,1,2,2,1,2,1,2,2,2,1,2,2,1,2,2,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (197, 7, 345, 'Fail', 1553268877, 1553272372, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '37,7,27,36,12,49,59,30,118,295,204,91,107,42,30,28,15,93,51,83,79,58,70,102,75,112,61,30,22,153,474,94,123,39,87,93,181,62,51,46', 3426, 14, 35, '103.227.144.10', '2,2,1,1,1,1,1,2,1,2,1,2,2,2,2,2,1,1,2,2,2,2,2,1,2,2,2,1,2,2,2,1,2,2,2,1,2,2,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (198, 7, 347, 'Fail', 1553750474, 1553753912, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '15,40,47,11,36,41,18,86,25,41,44,77,18,11,39,18,90,38,32,93,90,110,149,97,53,108,49,43,26,91,246,246,107,196,175,169,142,111,137,153', 3318, 16, 40, '182.253.251.70', '2,2,2,1,1,2,1,1,1,1,2,2,2,1,2,2,1,1,2,2,2,2,2,2,1,2,2,1,1,2,1,2,2,2,2,2,1,1,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (199, 7, 348, 'Fail', 1553786975, 1553790181, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,47,28,100,93,47,60,218,45,39,51,79,118,71,82,119,47,202,76,67,223,137,33,30,26,155,52,39,24,55,152,280,57,27,30,33,9,47,159,43', 3200, 17, 42.5, '223.255.225.239', '2,2,2,1,1,1,1,2,1,1,1,1,1,2,1,2,2,1,2,2,2,2,2,1,2,2,2,1,2,1,2,2,2,1,2,2,2,1,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (200, 7, 350, 'Fail', 1555147375, 1555149757, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,25,20,30,25,47,114,127,30,32,268,236,56,37,42,118,59,146,73,99,92,64,27,21,38,69,33,18,27,42,44,60,50,15,12,62,29,32,17,0', 2336, 13, 32.5, '125.160.114.115', '2,2,2,2,1,1,2,2,1,1,2,2,2,1,1,2,2,2,2,2,2,2,2,1,2,2,2,2,1,1,2,1,1,2,2,2,1,1,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (201, 7, 351, 'Fail', 1555327432, 1555330585, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '27,42,66,23,21,20,67,131,49,38,270,26,112,23,86,39,7,66,43,39,81,212,81,45,34,70,31,31,28,43,199,184,58,168,243,64,32,113,136,62', 3110, 15, 37.5, '36.69.214.83', '2,2,2,1,1,1,1,2,1,1,2,2,2,0,1,0,0,1,2,0,2,2,1,1,2,2,1,2,1,1,1,2,2,2,2,2,2,2,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (202, 7, 353, 'Open', 1555922616, 0, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,70,45,54,32,27,27,16,13,45,8,10,5,13,25,15,5,4,2,9,379,30,2,0,0,0,0,0,321,1,4,2,0,0,1,0,1,1,11,8', 0, 0, 0, '125.162.255.142', '2,2,2,2,1,2,0,0,2,1,2,2,2,2,2,2,1,1,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (203, 7, 355, 'Open', 1556011386, 0, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '3282,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '202.158.64.242', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (204, 7, 354, 'Fail', 1556094295, 1556095417, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '30,90,59,67,48,65,49,54,47,17,60,27,1,5,12,11,6,4,17,3,3,66,21,3,62,25,30,30,30,30,30,8,22,2,16,3,5,2,2,33', 1095, 11, 27.5, '120.188.64.110', '2,1,1,2,1,1,2,2,2,2,2,1,2,2,2,1,2,2,2,2,2,2,1,1,2,2,2,1,1,2,2,2,2,2,2,2,2,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (205, 7, 356, 'Fail', 1556114070, 1556116473, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '30,67,163,96,83,73,135,31,60,19,211,42,423,49,16,13,13,19,81,299,60,38,38,35,18,52,44,30,20,61,12,7,5,4,6,8,4,4,7,24', 2400, 13, 32.5, '36.71.214.57', '2,1,2,1,2,2,1,2,1,1,2,2,2,2,1,1,2,1,2,2,2,2,2,1,2,2,2,1,1,2,2,2,2,2,1,2,2,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (206, 7, 357, 'Fail', 1556173902, 1556174221, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,28,16,35,29,24,33,18,12,32,5,3,2,2,2,2,2,3,4,2,2,3,1,2,2,2,2,2,2,2,2,4,3,17,2,2,2,2,3,0', 311, 6, 15, '36.69.160.215', '2,1,2,2,2,1,2,2,2,2,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,2,2,2,1,2,2,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (207, 7, 358, 'Fail', 1556374319, 1556377585, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,99,84,105,93,39,231,375,60,95,41,43,6,3,6,5,92,640,131,163,114,39,30,46,8,30,37,66,11,222,5,20,1,47,17,21,7,26,49,141', 3248, 9, 22.5, '36.84.237.202', '2,2,1,1,1,2,2,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,2,2,2,1,2,2,1,2,1,2,2,2,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (208, 7, 360, 'Fail', 1556521877, 1556525481, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '30,62,13,69,59,52,109,90,80,137,118,82,27,29,65,102,35,41,13,131,58,64,45,173,171,117,106,60,34,145,197,130,113,148,69,194,54,176,91,72', 3557, 8, 20, '103.242.104.118', '2,2,2,1,1,2,2,2,2,2,2,2,2,1,2,1,2,0,0,0,2,2,2,1,2,2,2,1,1,2,2,2,1,2,2,2,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (209, 7, 361, 'Fail', 1556855274, 1556855513, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,38,40,20,8,5,2,3,3,2,4,3,2,7,3,6,3,3,3,3,2,3,5,4,4,2,2,3,2,4,3,3,3,4,2,3,3,9,2,2', 223, 6, 15, '202.158.64.242', '2,2,2,1,1,2,2,2,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2,2,2,2,2,2,1,2,2,2,2,1,2,2,2,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (210, 7, 362, 'Fail', 1557110282, 1557110961, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,30,30,30,60,30,60,0,30,30,15,8,7,4,3,3,5,3,2,6,34,3,57,2,28,30,30,9,21,2,24,22,12,0,2,4,2,1,2,33', 674, 13, 32.5, '140.213.10.80', '2,2,1,2,1,2,2,2,1,1,2,2,2,2,2,2,2,2,2,1,2,2,1,2,2,1,2,2,1,2,2,2,1,2,1,1,2,1,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (211, 7, 363, 'Fail', 1557112512, 1557113475, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '31,29,2,28,30,30,30,10,20,18,105,21,10,15,8,13,10,20,3,5,31,31,30,30,1,90,60,60,1,29,31,17,43,30,2,8,10,3,3,12', 960, 13, 32.5, '182.0.230.28', '2,2,2,1,1,1,2,2,1,2,2,2,2,2,2,2,2,2,2,2,1,1,2,1,2,2,1,1,1,1,2,2,2,2,1,2,2,1,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (212, 7, 364, 'Fail', 1557125650, 1557129260, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '179,331,210,249,238,217,123,93,157,39,60,19,14,21,24,33,31,99,12,122,75,102,51,42,24,48,82,111,24,56,16,12,17,22,21,27,12,21,63,459', 3556, 12, 30, '114.125.200.161', '2,2,2,1,2,1,2,2,1,1,1,2,2,2,1,2,2,2,2,2,2,2,2,1,1,2,2,1,1,2,2,2,2,2,2,2,2,1,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (213, 7, 366, 'Pass', 1557905295, 1557908394, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '49,91,30,30,120,30,60,180,30,30,61,121,94,219,33,30,60,30,30,90,122,94,89,30,30,121,34,60,90,118,325,150,142,95,9,21,60,14,27,46', 3095, 33, 82.5, '182.1.66.3', '2,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,2,1,2,1,1,1,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (214, 7, 368, 'Open', 1558840946, 0, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,29,5,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '116.206.40.68', '2,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (215, 7, 370, 'Fail', 1559273530, 1559277190, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '5,60,11,44,30,60,90,76,314,83,49,31,33,1,1,32,8,16,17,4,28,115,210,62,60,60,180,17,20,173,180,180,150,30,90,120,109,161,8,52', 2970, 8, 20, '202.80.219.7', '2,2,2,1,1,2,2,2,1,1,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,1,2,2,2,1,2,2,2,2,2,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (216, 7, 371, 'Fail', 1559705158, 1559706415, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '29,17,26,76,45,33,65,61,28,25,60,32,9,9,26,20,6,13,4,64,48,153,19,11,19,29,45,25,24,18,32,12,17,31,26,9,14,10,15,22', 1227, 9, 22.5, '114.124.244.7', '2,2,1,2,2,1,2,2,2,2,2,2,2,1,2,1,2,2,2,2,2,1,2,2,2,2,2,1,1,2,2,2,1,2,2,1,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (217, 7, 372, 'Fail', 1560310720, 1560310745, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,9,2,2,3,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 21, 1, 2.5, '202.158.64.242', '2,2,2,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (218, 7, 375, 'Fail', 1560923507, 1560925735, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,55,94,43,26,24,91,51,110,94,75,28,4,2,3,4,4,2,3,2,1,1,31,48,66,36,27,2,7,30,2,8,15,5,2,3,5,7,1,384', 1396, 14, 35, '116.206.29.79', '2,2,2,1,1,1,2,2,1,1,1,2,2,2,2,1,2,2,1,2,2,2,2,1,2,2,2,2,1,1,2,2,2,2,2,1,1,1,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (219, 7, 380, 'Open', 1562127871, 0, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '328,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '103.213.129.197', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (220, 7, 381, 'Fail', 1562563904, 1562566612, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '32,10,47,110,40,64,26,30,26,34,75,15,30,16,60,3,30,210,7,150,116,147,90,53,90,90,70,190,60,228,30,95,1,71,13,60,60,30,30,90', 2629, 10, 25, '114.124.206.51', '2,2,2,1,2,1,2,2,1,1,1,2,2,1,2,2,2,2,2,2,1,2,2,1,2,2,2,2,1,2,2,2,2,2,2,2,2,1,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (221, 7, 387, 'Open', 1563188232, 0, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,76,2,61,33,127,168,87,30,30,90,0,0,0,2,4,0,1,1,1,2,2,1,0,1,1,1,0,0,0,0,0,0,0,2,0,0,0,3,4', 0, 0, 0, '168.235.206.98', '2,2,2,1,1,2,2,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (222, 7, 388, 'Pass', 1563383319, 1563385701, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '36,69,38,47,58,67,55,49,18,26,25,20,15,50,24,30,14,20,14,31,162,16,16,17,16,92,79,24,58,131,36,16,55,27,14,56,3,3,6,0', 1533, 21, 52.5, '118.151.221.198', '2,2,1,1,1,1,1,1,1,1,1,2,1,2,1,1,1,1,2,1,2,1,1,1,2,2,1,2,1,2,2,2,2,2,2,1,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (223, 7, 392, 'Fail', 1564475864, 1564477594, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,48,34,18,14,28,63,116,19,41,52,104,26,15,81,22,23,262,46,146,23,71,34,17,12,20,17,53,15,62,22,22,20,32,20,18,29,25,14,29', 1713, 13, 32.5, '103.10.66.2', '2,1,2,1,1,2,2,2,1,1,2,2,1,2,1,1,2,2,2,1,2,2,2,1,2,2,2,2,2,1,2,2,1,2,2,2,2,2,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (224, 7, 393, 'Fail', 1564591599, 1564594598, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '29,77,73,17,56,35,198,49,96,104,105,121,2,156,20,58,42,112,8,225,190,242,177,59,18,42,102,82,97,57,81,18,20,53,13,27,40,20,34,40', 2995, 8, 20, '180.251.220.51', '2,2,2,2,1,1,2,2,2,2,2,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,2,2,1,2,1,1,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (225, 7, 394, 'Pass', 1564638212, 1564641800, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '32,31,18,18,38,28,156,413,97,60,113,165,114,29,84,11,74,12,65,578,60,94,91,28,47,107,61,65,35,56,102,112,81,60,69,134,149,38,44,7', 3576, 20, 50, '125.166.37.178', '2,2,1,1,1,1,1,1,1,1,1,2,2,1,1,2,1,1,2,2,1,2,2,1,2,1,2,2,2,2,2,2,1,2,2,1,1,2,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (226, 7, 395, 'Pass', 1564964836, 1564966928, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '60,42,56,33,14,53,124,77,22,19,144,59,59,43,46,36,112,23,38,44,26,67,21,38,39,56,57,126,48,69,52,30,67,44,60,38,34,67,16,28', 2087, 21, 52.5, '103.10.66.76', '2,2,2,1,1,1,2,1,1,1,1,2,1,2,1,1,1,1,2,1,2,2,2,1,1,2,1,1,1,2,2,2,1,2,2,2,2,2,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (227, 7, 396, 'Fail', 1564984953, 1564985084, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,33,37,24,27,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6', 127, 0, 0, '125.166.121.162', '2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (228, 7, 397, 'Fail', 1565000966, 1565002766, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '59,78,42,54,21,34,112,87,58,68,35,10,54,22,11,6,24,9,4,10,5,5,22,20,9,5,8,4,4,5,2,2,8,2,9,10,10,18,36,7', 989, 11, 27.5, '125.166.26.25', '2,2,1,1,1,1,2,2,1,1,1,2,2,2,2,2,2,1,2,2,2,2,2,2,1,2,2,2,2,1,2,2,1,2,2,2,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (229, 7, 398, 'Fail', 1565194161, 1565195742, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,32,34,5,33,58,22,30,68,66,23,11,9,5,8,10,13,34,18,115,33,50,29,55,22,26,70,42,46,85,86,31,118,40,12,91,44,24,28,14', 1540, 9, 22.5, '125.161.214.146', '2,1,2,2,2,2,2,2,1,1,2,1,2,2,2,2,2,2,2,2,2,2,1,2,2,2,2,2,1,2,2,2,1,1,2,2,2,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (230, 7, 399, 'Fail', 1565221886, 1565224253, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,46,37,17,11,16,164,83,20,21,18,10,33,2,15,40,25,84,23,46,48,101,81,27,93,36,40,124,27,188,25,71,65,51,114,102,149,88,116,103', 2360, 14, 35, '116.206.29.15', '2,2,2,1,1,1,1,2,1,1,2,2,2,1,2,1,2,1,2,2,2,2,1,2,2,2,2,2,1,2,2,2,1,2,2,1,2,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (231, 7, 400, 'Fail', 1565260431, 1565263010, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '62,47,21,62,67,56,145,132,159,20,103,19,8,6,18,18,22,73,31,79,129,153,61,37,91,140,44,70,74,58,65,52,58,19,15,122,58,90,50,26', 2560, 15, 37.5, '139.255.142.80', '1,2,1,1,1,2,2,1,1,1,2,1,2,2,2,2,2,1,2,1,2,2,2,2,2,2,2,2,1,2,1,2,1,2,2,1,2,2,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (232, 7, 401, 'Fail', 1565508896, 1565511793, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,84,128,238,65,57,45,71,45,18,33,15,33,21,65,25,21,141,71,126,105,125,142,27,24,124,85,71,37,169,140,14,38,127,20,40,199,67,13,19', 2888, 14, 35, '116.206.31.52', '2,2,1,1,1,1,1,2,1,1,2,2,2,1,1,2,2,2,2,2,2,2,2,1,1,2,1,2,2,1,2,2,2,2,2,2,2,2,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (233, 7, 402, 'Fail', 1565531009, 1565533135, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,19,30,19,18,24,94,47,15,6,126,16,28,6,11,11,23,184,6,110,62,113,34,17,30,86,45,119,27,131,42,17,42,86,105,22,97,16,106,131', 2121, 10, 25, '180.252.40.147', '2,2,2,2,1,2,2,2,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,2,1,2,2,2,1,2,2,2,1,1,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (234, 7, 404, 'Fail', 1566231191, 1566234735, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '89,185,214,109,135,94,137,206,283,183,313,51,62,27,11,13,26,14,43,23,293,148,57,49,70,155,78,125,112,32,12,12,16,11,13,11,5,4,16,84', 3504, 13, 32.5, '120.188.94.252', '2,2,1,1,1,2,2,2,2,2,2,2,2,1,1,2,2,1,2,2,2,2,2,1,1,2,2,1,2,1,2,2,1,2,2,1,2,2,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (235, 7, 406, 'Fail', 1566300700, 1566301491, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '45,28,9,37,30,30,63,59,36,30,37,36,10,7,9,14,23,3,9,7,9,17,5,11,14,11,19,0,11,9,10,7,9,6,8,9,10,11,6,20', 724, 3, 7.5, '103.213.130.64', '2,2,2,2,1,2,2,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (236, 7, 407, 'Open', 1566313410, 0, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,10,12,37,5,6,19,7,3,3,7,2,8,2,2,12,2,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '103.213.130.64', '2,2,1,2,1,2,2,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (237, 7, 408, 'Fail', 1566385574, 1566388278, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '51,47,61,53,49,65,286,130,45,45,23,22,4,12,10,13,12,8,38,143,96,227,16,37,26,490,147,39,22,112,109,5,33,18,12,25,4,4,4,13', 2556, 9, 22.5, '222.124.85.86', '1,2,2,1,1,1,2,2,2,2,1,2,2,2,2,2,2,2,1,2,2,0,2,2,2,2,2,1,1,2,2,2,2,2,2,2,2,1,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (238, 7, 405, 'Fail', 1566385987, 1566388273, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '74,107,53,25,23,39,62,106,35,53,53,45,32,38,37,13,180,168,61,81,47,95,36,19,9,76,148,33,17,63,123,44,25,49,22,103,21,23,13,28', 2249, 18, 45, '180.244.129.49', '2,2,1,1,1,1,2,2,1,1,1,2,1,2,1,2,2,2,2,1,2,2,2,1,2,1,2,2,1,2,1,2,1,2,2,1,1,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (239, 7, 410, 'Open', 1566807823, 0, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '19,11,30,30,60,33,72,210,28,14,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,30', 0, 0, 0, '139.192.13.208', '2,0,0,0,1,2,2,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (240, 7, 412, 'Fail', 1567129601, 1567132782, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,39,32,30,32,147,31,151,66,37,131,40,30,8,24,3,58,61,30,121,31,60,61,172,31,91,63,61,60,61,60,62,61,90,3,58,177,33,60,62', 2428, 9, 22.5, '114.124.137.240', '1,2,1,2,2,2,2,2,1,2,1,2,2,2,1,1,2,2,2,2,2,2,2,1,2,2,2,2,1,2,2,2,1,2,2,2,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (241, 7, 414, 'Fail', 1567483988, 1567487591, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '60,102,92,92,64,32,93,360,115,139,148,90,9,0,4,2,10,270,120,328,2,177,120,33,90,30,60,60,60,120,69,30,46,50,45,30,120,108,72,111', 3563, 13, 32.5, '61.247.35.137', '2,2,1,2,1,1,1,2,1,1,0,0,0,0,0,1,1,1,2,2,2,2,2,1,2,2,2,2,2,1,2,2,2,2,2,1,2,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (242, 7, 415, 'Open', 1567484502, 0, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '30,0,30,60,30,60,60,90,270,60,660,21,20,4,5,5,6,7,3,103,22,61,0,3,2,0,3,2,22,0,8,0,0,0,0,0,0,0,0,120', 0, 0, 0, '182.0.172.167', '2,2,2,1,1,1,1,2,1,1,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (243, 7, 416, 'Fail', 1567669380, 1568300411, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '182.1.45.212', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (244, 7, 417, 'Open', 1567693205, 0, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '90,56,36,52,90,73,101,42,93,50,937,30,150,30,9,21,5,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '114.124.138.158', '1,2,1,1,1,2,2,0,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (245, 7, 418, 'Fail', 1567762762, 1567766315, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,30,30,30,30,60,443,150,35,56,183,356,33,66,217,40,53,68,90,247,44,203,113,30,60,240,30,30,6,24,60,90,150,30,30,60,30,30,60,10', 3547, 11, 27.5, '36.76.250.7', '2,2,2,1,2,1,2,2,2,1,2,2,2,1,2,2,2,2,2,2,2,2,2,1,2,2,2,1,1,2,2,2,1,2,2,1,2,2,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (246, 7, 419, 'Fail', 1567771069, 1567774319, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '30,43,118,30,60,30,60,143,49,30,240,37,29,26,15,31,20,622,68,324,31,36,90,90,60,120,30,70,75,90,17,18,30,90,30,30,30,90,90,123', 3245, 9, 22.5, '139.194.17.230', '2,2,2,2,1,2,2,2,1,1,2,2,2,2,2,2,2,1,1,2,2,2,2,2,2,1,2,1,2,2,1,2,2,2,2,2,1,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (247, 7, 420, 'Open', 1567851790, 0, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '36.70.54.31', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (248, 7, 421, 'Fail', 1568382668, 1568384225, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,40,16,33,38,21,54,126,42,11,92,18,10,11,12,6,42,122,94,131,72,59,25,44,6,36,31,19,20,9,11,2,5,2,2,1,2,2,2,0', 1269, 10, 25, '110.138.87.133', '1,2,1,2,1,1,2,2,2,1,2,2,2,2,2,2,2,2,2,2,2,2,1,2,2,2,2,2,1,2,1,2,2,2,2,1,2,2,1,0', '', 0);
INSERT INTO `savsoft_result` VALUES (249, 7, 422, 'Fail', 1568690866, 1568694310, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,63,62,31,60,31,151,84,91,60,129,56,31,90,11,129,36,496,12,724,60,90,30,60,60,90,30,60,30,90,60,30,30,90,2,28,30,4,26,30', 3271, 17, 42.5, '180.243.224.23', '2,2,1,1,1,1,2,2,1,1,2,2,2,1,2,2,2,2,2,2,2,1,2,1,1,1,2,2,1,1,1,1,2,2,2,2,2,1,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (250, 7, 425, 'Fail', 1568975211, 1568976463, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '30,33,21,66,46,43,99,59,26,49,78,21,16,13,23,11,12,11,24,7,48,43,52,55,17,54,33,15,29,13,21,15,30,31,20,17,8,13,14,28', 1244, 14, 35, '112.215.236.46', '1,2,1,1,1,2,1,2,2,2,2,2,2,2,2,1,2,1,2,2,2,1,2,1,2,2,1,1,1,2,2,2,2,2,2,1,2,2,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (251, 7, 427, 'Fail', 1569217139, 1569218567, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,26,9,15,20,12,65,58,91,23,36,21,23,18,26,9,15,85,14,125,29,87,30,35,19,23,64,34,29,72,33,30,33,69,14,19,13,23,23,24', 1394, 13, 32.5, '110.136.59.230', '2,2,2,1,1,2,1,1,1,1,2,2,2,1,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,2,2,2,1,2,2,1,2,2,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (252, 7, 428, 'Fail', 1569421122, 1569423766, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,52,14,17,16,25,50,41,54,92,49,1,46,33,15,54,74,184,59,173,90,36,53,52,39,79,27,68,33,65,32,96,64,24,14,33,40,59,23,29', 2005, 11, 27.5, '140.213.50.21', '1,2,1,2,1,2,2,2,2,2,1,1,2,2,2,2,2,2,2,2,2,2,2,1,1,2,2,1,1,1,2,2,2,1,2,2,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (253, 7, 432, 'Open', 1570193213, 0, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '30,30,90,60,30,30,35,25,90,8,112,30,0,8,22,9,3,8,10,2,58,28,1,9,0,0,0,0,0,22,125,6,84,56,30,3,60,30,29,30', 0, 0, 0, '114.125.237.85', '2,2,2,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,2,0,1,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (254, 7, 431, 'Fail', 1570524550, 1570526990, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '31,118,70,49,14,56,54,81,279,69,54,171,55,13,37,11,78,23,28,8,49,79,43,54,37,51,74,61,33,77,44,27,50,40,22,78,51,32,30,13', 2244, 12, 30, '8.37.234.62', '2,2,1,2,1,2,2,2,1,1,2,2,2,2,2,1,2,1,2,1,2,2,2,2,2,2,2,2,1,2,2,2,1,2,2,1,2,2,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (255, 7, 434, 'Open', 1570713281, 0, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '6,43,34,83,36,60,93,153,84,62,63,81,101,15,49,10,22,31,9,89,144,36,49,11,25,56,48,95,67,60,2,44,24,21,2,1,3,94,36,44', 0, 0, 0, '140.213.133.162', '2,2,1,1,2,1,0,1,1,1,0,0,0,0,0,0,0,0,0,2,2,0,2,1,2,2,1,2,1,1,2,0,0,2,2,0,0,0,0,2', '', 0);
INSERT INTO `savsoft_result` VALUES (256, 7, 435, 'Fail', 1571475586, 1571477121, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,83,31,31,31,61,30,140,42,30,91,31,60,30,20,11,13,79,17,73,30,62,30,30,2,61,37,3,28,30,70,30,30,3,27,30,30,30,1,33', 1501, 14, 35, '140.213.135.116', '2,1,1,1,2,2,2,1,2,1,1,2,2,1,2,2,2,2,2,2,2,1,2,2,2,2,1,2,2,1,2,1,2,2,2,1,2,2,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (257, 7, 436, 'Fail', 1571475588, 1571477123, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '30,76,8,57,3,57,60,120,30,30,89,91,30,6,24,1,29,60,23,67,60,30,30,30,30,30,30,30,30,30,99,30,14,16,17,43,13,17,30,30', 1530, 15, 37.5, '140.213.134.28', '2,1,1,1,2,2,2,1,1,1,1,2,2,1,2,2,2,2,2,2,2,1,2,2,2,2,1,2,2,1,2,1,2,2,2,1,2,2,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (258, 7, 439, 'Fail', 1572099005, 1572100290, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,32,9,23,24,35,22,55,25,14,87,40,23,28,30,30,17,27,16,58,73,38,32,22,24,48,50,40,14,42,23,39,25,9,10,13,85,27,39,31', 1279, 14, 35, '139.195.154.134', '1,2,1,2,1,2,2,2,1,1,2,2,2,2,2,2,2,1,1,2,2,2,2,2,2,2,2,1,1,1,2,1,1,2,2,1,2,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (259, 7, 440, 'Fail', 1572923823, 1572924846, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,54,52,39,21,60,25,53,12,21,14,3,8,2,3,3,3,22,5,23,97,13,31,40,17,131,46,23,33,88,47,2,5,2,3,5,3,2,2,6', 1019, 13, 32.5, '118.99.103.133', '1,2,1,2,1,2,2,2,2,1,2,2,2,1,2,1,2,2,2,2,2,2,2,1,2,2,2,1,1,1,1,2,2,2,2,1,2,2,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (260, 7, 442, 'Fail', 1574213074, 1574215097, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '30,60,30,60,65,30,60,270,90,30,106,67,59,54,22,22,15,11,7,62,54,92,60,32,3,58,61,77,13,60,77,13,45,31,12,69,58,5,34,11', 2015, 14, 35, '114.124.174.153', '2,2,1,1,2,2,2,1,1,1,1,1,2,2,2,2,2,1,2,2,2,2,2,1,2,2,2,2,1,2,2,2,1,2,2,1,2,2,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (261, 7, 447, 'Fail', 1577108201, 1577111806, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,29,30,5,25,60,17,40,7,33,21,28,15,41,34,26,53,11,50,25,117,30,50,129,51,123,111,131,22,147,111,118,57,66,30,105,258,101,9,1', 2317, 11, 27.5, '110.138.148.84', '2,2,2,1,1,2,1,2,1,1,2,1,2,2,2,1,2,1,1,2,2,2,2,2,2,2,2,2,1,2,1,0,2,2,2,2,2,2,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (262, 7, 448, 'Open', 1577223580, 0, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,45,23,50,15,38,39,101,2,4,12,10,5,2,4,4,9,2,3,9,2,6,1,1,1,1,2,1,2,4,13,1,2,4,1,2,1,9,4,3', 0, 0, 0, '175.158.50.221', '2,2,2,1,1,1,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (263, 7, 449, 'Fail', 1578285917, 1578285937, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,9,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 16, 1, 2.5, '117.102.96.226', '2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (264, 7, 450, 'Fail', 1578448240, 1578448394, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '40,60,10,7,3,9,3,5,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 154, 5, 12.5, '202.158.64.242', '1,1,1,2,1,2,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (265, 7, 452, 'Fail', 1579141209, 1579144187, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '64,41,42,76,129,65,131,254,35,36,32,194,143,93,62,98,58,67,49,76,323,72,68,45,32,37,26,22,13,35,67,84,7,41,9,33,20,212,54,0', 2945, 12, 30, '115.178.206.102', '2,2,2,2,1,1,2,1,1,1,1,1,2,2,1,2,1,2,2,1,2,2,2,1,2,2,2,2,1,2,2,2,2,2,2,2,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (266, 7, 456, 'Fail', 1581949174, 1581952760, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '59,11,9,125,57,94,42,153,273,36,409,44,46,59,60,86,144,161,153,452,110,43,65,13,26,157,28,169,23,132,53,13,92,22,11,70,26,37,17,2', 3582, 12, 30, '110.138.150.110', '2,2,2,1,2,1,2,1,1,1,1,1,2,1,2,2,2,2,2,2,2,2,1,1,2,2,2,2,2,1,2,2,2,2,2,2,2,2,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (267, 7, 457, 'Fail', 1582009282, 1582011164, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '29,31,30,30,30,30,60,120,120,30,150,0,60,30,60,30,11,139,90,90,90,60,30,3,27,90,30,10,20,30,30,30,10,50,4,56,30,30,1,59', 1860, 7, 17.5, '140.213.52.223', '2,2,1,2,1,1,2,2,2,2,2,2,2,1,2,2,2,2,2,1,2,2,2,1,2,2,2,2,2,2,2,2,1,2,2,2,2,2,2,0', '', 0);
INSERT INTO `savsoft_result` VALUES (268, 7, 458, 'Fail', 1582648460, 1582652067, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '86,53,107,51,163,42,45,180,30,41,151,233,106,221,89,126,209,62,18,50,78,224,85,85,73,95,47,102,36,134,71,38,29,90,21,58,25,77,106,40', 3577, 11, 27.5, '36.69.97.213', '2,2,1,1,2,2,2,0,1,1,0,2,2,2,1,2,2,1,2,1,1,1,2,2,1,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (269, 7, 459, 'Fail', 1584366680, 1584369186, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,31,31,31,12,29,47,45,14,34,8,31,39,19,39,18,9,303,5,229,25,107,25,72,14,130,37,199,24,65,120,118,85,58,34,75,119,21,14,71', 2387, 13, 32.5, '103.3.222.195', '2,2,1,2,1,1,1,1,2,2,2,2,2,1,2,2,1,2,2,1,2,1,2,2,2,2,2,2,1,2,2,2,1,2,2,2,2,1,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (270, 7, 461, 'Fail', 1584699599, 1584701408, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,40,29,36,58,26,30,61,83,37,49,7,13,9,27,8,6,165,68,81,50,68,35,27,24,43,23,49,36,77,53,11,10,10,7,24,15,59,45,20', 1519, 16, 40, '112.215.236.212', '2,2,2,1,1,1,1,2,2,1,1,1,2,2,2,2,2,1,2,1,2,1,2,1,1,1,2,1,2,1,2,2,2,2,2,2,2,2,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (271, 7, 462, 'Fail', 1587024376, 1587026988, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '30,81,44,100,153,54,175,172,59,97,246,95,82,76,88,128,71,91,104,129,45,29,19,96,12,31,6,32,16,13,25,14,24,15,17,38,24,11,17,51', 2610, 8, 20, '158.140.187.216', '2,2,1,2,2,1,2,2,1,1,2,2,1,2,2,1,2,2,2,2,2,2,2,1,2,2,2,2,1,2,2,2,2,2,2,2,2,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (272, 7, 464, 'Pass', 1587107742, 1587111018, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '58,60,17,106,56,120,92,209,61,103,57,107,66,127,79,154,118,83,75,168,138,76,30,30,2,118,5,25,30,60,130,81,177,50,102,30,8,6,8,15', 3037, 22, 55, '140.213.130.240', '2,2,1,1,1,2,2,2,1,1,1,2,2,2,1,2,1,1,2,1,2,1,1,1,2,2,1,2,1,2,1,1,1,1,1,2,2,2,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (273, 7, 465, 'Open', 1587607225, 0, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '180.242.183.51', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (274, 7, 467, 'Fail', 1590585885, 1590586500, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,44,89,16,30,16,39,78,12,11,58,24,34,28,12,9,21,7,2,2,8,2,3,2,2,3,2,3,3,2,3,2,3,10,2,2,2,2,2,21', 611, 14, 35, '175.158.55.160', '2,2,2,1,1,1,1,2,1,1,2,2,2,1,2,2,2,1,1,2,2,2,1,2,1,2,2,2,2,2,2,2,2,2,1,2,2,1,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (275, 7, 468, 'Fail', 1590629681, 1590630802, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,26,35,27,32,36,40,21,11,69,14,6,7,8,6,5,6,54,8,121,76,54,56,27,28,47,66,28,22,40,13,14,11,8,3,67,3,5,9,0', 1109, 12, 30, '111.95.45.42', '2,2,2,1,1,1,1,2,2,1,1,1,2,2,2,2,2,1,2,2,2,1,2,2,1,2,2,2,1,2,2,2,2,2,2,2,2,1,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (276, 7, 470, 'Fail', 1590885084, 1590886120, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,45,36,23,26,30,31,58,212,37,15,5,6,7,4,5,5,213,5,55,27,16,8,4,3,8,4,8,28,50,23,3,3,2,3,7,4,2,3,8', 1032, 14, 35, '111.95.45.42', '2,2,2,1,1,1,1,2,2,1,2,1,2,2,2,2,2,2,1,1,2,2,2,2,2,2,1,2,1,1,2,2,1,2,2,2,2,1,2,1', '', 0);
INSERT INTO `savsoft_result` VALUES (277, 7, 471, 'Fail', 1591522267, 1591522972, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '29,30,30,30,8,82,60,60,60,30,210,30,39,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 698, 5, 12.5, '120.188.64.156', '1,2,2,1,1,2,2,2,1,1,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (278, 7, 475, 'Open', 1592027858, 0, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '37,37,2,3,25,60,60,30,2,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,11', 0, 0, 0, '110.137.224.66', '1,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (279, 7, 476, 'Pass', 1592047856, 1592051449, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,66,17,6,31,32,31,156,37,33,100,54,73,17,61,74,137,47,98,314,59,123,153,34,31,89,60,30,32,55,90,60,29,60,30,90,30,35,63,61', 2598, 22, 55, '140.213.1.32', '2,2,2,1,1,1,1,1,1,1,2,1,1,2,1,1,1,1,2,1,2,2,2,1,2,2,1,1,1,1,2,2,1,2,2,2,1,2,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (280, 7, 477, 'Fail', 1592199087, 1592201037, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,96,63,34,23,24,27,207,20,13,128,7,47,7,8,14,48,85,66,151,122,129,49,35,49,26,95,14,42,43,20,4,44,129,11,20,10,18,10,8', 1946, 15, 37.5, '114.5.209.161', '2,2,1,1,1,1,1,1,1,1,2,2,2,2,2,1,2,1,2,2,2,2,2,1,1,2,2,2,2,1,2,2,1,2,2,2,2,2,1,2', '', 0);
INSERT INTO `savsoft_result` VALUES (281, 7, 478, 'Fail', 1592376146, 1592379723, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,131,98,37,20,43,62,543,175,25,101,127,137,74,118,281,13,11,34,300,102,56,54,28,34,116,98,33,57,201,13,11,25,134,88,3,9,32,23,99', 3546, 17, 42.5, '118.137.83.25', '2,2,2,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,1,2,2,2,1,2,2,2,1,2,2,1,2,2,2,2,2,2,2,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (282, 7, 479, 'Fail', 1592457167, 1592457200, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 30, 0, 0, '117.102.96.226', '2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (283, 7, 480, 'Pass', 1592562066, 1592565668, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '61,228,103,39,45,49,50,119,39,12,56,206,48,447,67,830,84,35,39,156,32,14,14,34,2,238,219,35,25,90,59,22,20,16,11,33,2,9,8,4', 3600, 30, 75, '103.119.140.153', '2,1,1,1,1,1,1,1,1,1,1,1,1,2,1,0,1,1,2,1,2,1,1,1,2,2,1,1,1,1,1,1,1,1,1,2,2,2,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (285, 7, 495, 'Open', 1594784885, 0, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '769,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '::1', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (286, 7, 496, 'Fail', 1594789130, 1594789302, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '90,35,5,7,3,0,7,13,0,0,0,0,0,2,0,0,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 168, 2, 5, '103.231.197.146', '1,2,2,2,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (287, 7, 497, 'Fail', 1594789447, 1594793150, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '3087,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 3073, 0, 0, '103.231.197.146', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (288, 7, 498, 'Fail', 1594797899, 1594797990, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,12,4,4,3,18,38,5,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 90, 4, 10, '103.231.197.146', '1,2,1,2,1,1,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (289, 7, 507, 'Fail', 1594887501, 1594888362, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '827,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 827, 0, 0, '103.231.197.146', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (290, 7, 508, 'Fail', 1594888566, 1594888582, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,6,2,1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 12, 2, 5, '103.231.197.146', '2,1,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (292, 8, 511, 'Pass', 1595388974, 1595389041, 'USM S2', '3', '121,122,123', '30,12,22', 64, 3, 100, '103.231.197.146', '1,1,1', '', 0);
INSERT INTO `savsoft_result` VALUES (294, 8, 512, 'Pass', 1595405769, 1595406038, 'USM S2', '4', '121,122,123,124', '30,57,2,166', 255, 2, 50, '117.102.96.226', '2,1,0,1', '', 0);
INSERT INTO `savsoft_result` VALUES (295, 7, 514, 'Fail', 1595475417, 1595475527, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,5,2,1,2,2,1,11,2,1,4,2,2,2,2,6,4,2,16,2,1,2,3,1,2,1,3,2,2,1,2,2,1,2,2,1,2,2,1,4', 106, 5, 12.5, '::1', '2,2,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,2,1,2,2,2,2,2,2,2,2,2,2,2,1,2,2,2,2,1,2,2,2', '', 0);
INSERT INTO `savsoft_result` VALUES (296, 7, 515, 'Fail', 1595475621, 1595475632, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,4,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 7, 1, 2.5, '::1', '2,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (297, 7, 516, 'Fail', 1595477625, 1595477635, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,4,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 6, 0, 0, '::1', '2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (298, 7, 521, 'Open', 1595560924, 0, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '::1', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (299, 7, 522, 'Open', 1595561079, 0, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '::1', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (300, 7, 523, 'Open', 1595561351, 0, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '::1', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (301, 7, 526, 'Open', 1595902551, 0, 'USM v2', '40', '48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87', '360,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '::1', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);
INSERT INTO `savsoft_result` VALUES (302, 8, 527, 'Open', 1595903209, 0, 'USM S2,USM v2', '4,1', '121,122,123,124,87', '36,0,0,0,54', 0, 0, 0, '::1', '0,0,0,0,0', '', 0);

-- ----------------------------
-- Table structure for savsoft_users
-- ----------------------------
DROP TABLE IF EXISTS `savsoft_users`;
CREATE TABLE `savsoft_users`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contact_no` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `connection_key` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  `su` int(11) NOT NULL DEFAULT 0,
  `inserted_by` int(11) NOT NULL DEFAULT 0,
  `subscription_expired` int(11) NOT NULL DEFAULT 0,
  `verify_code` int(11) NOT NULL DEFAULT 0,
  `wp_user` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `registered_date` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `photo` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_status` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Active',
  `web_token` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `android_token` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `skype_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time_zone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Asia/Kolkata',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 528 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of savsoft_users
-- ----------------------------
INSERT INTO `savsoft_users` VALUES (1, '3dcf34a6023633a0d92521ec9c8d5ae4', 'admin@kwikkiangie.ac.id', 'Admin', 'KSB', NULL, NULL, '1', 1, 0, 1776277800, 0, NULL, '2017-04-20 04:22:38', NULL, 'Active', 'dnwIpQWkxyA:APA91bFZLhdxZnPcNareTyHnJRikJGqaT7qh9DF4jSmyKSOq1rv6k7uwgmaQ4_K7jT3WNNUeKRdRQYsNf_OZaQZ7i5nKI_CjA6QGPwPsL5_D7ShPTtsuIwTkr0CuGx0RS7oAVNg_bImc', NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (5, 'd5d6a7281083ddc8d3d34eafc74c7cea', 'marketing@kwikkiangie.ac.id', 'Marketing', 'KSB', NULL, '123', '1', 1, 0, 2122569000, 0, NULL, '2017-04-20 04:22:38', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (13, '5d9c68c6c50ed3d02a2fcf54f63993b6', 'testuser@example.com', 'test', 'user', NULL, NULL, '1', 2, 0, 1810837800, 0, NULL, '2017-05-22 21:07:10', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (19, '411eb416ec444d1d01b3cb6d7035acde', 'henricotimothy@gmail.com', 'henrico', 'timothy', '81294380230', NULL, '1', 2, 0, 0, 0, NULL, '2017-06-04 21:02:03', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (20, '9e5e54b847dd9617bc999ce3ea052b32', 'sukma.melati401@gmail.com', 'Melati', 'Sukmaliawati', '81382586459', NULL, '1', 2, 0, 0, 0, NULL, '2017-06-05 01:34:22', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (21, 'ca886eb9edb61a42256192745c72cd79', 'hidayatway.id@gmail.com', 'Wahyu', 'Hidayat', '89643490539', NULL, '1', 2, 0, 0, 0, NULL, '2017-06-06 02:16:29', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (22, '44fabfde8e11912e03f9d9252225db37', 'yohanesjeffi@gmail.com', 'jeffi', 'jeffi', '81904180704', NULL, '1', 2, 0, 0, 0, NULL, '2017-06-06 02:22:01', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (23, '5f4dcc3b5aa765d61d8327deb882cf99', 'exodproduction@gmail.com', 'richard', 'vinc', '8978320371', NULL, '1', 2, 0, 0, 0, NULL, '2017-06-06 19:25:09', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (24, '32c0108b9eb48995ddd5c9bfbea634a4', 'said.kelana@kwikkiangie.ac.id', 'said', 'kelana', '816109194', NULL, '1', 2, 0, 0, 4094, NULL, '2017-06-07 00:48:32', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (25, '716ba227f4a610c8c903719f98a16035', 'saidkelana11@gmail.com', 'said', 'asnawi', '2165307062', NULL, '1', 2, 0, 0, 0, NULL, '2017-06-07 01:00:44', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (26, '12ab7ffcf8dc78410c3ac70912351554', 'ranasthasia@yahoo.com', 'Ruth Anasthasia', 'Silitonga', '895369128304', NULL, '1', 2, 0, 0, 0, NULL, '2017-06-07 02:56:30', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (27, '83b2ba70760ba2150a6628e8f435e691', 'meutia.mansur@gmail.com', 'Icih', 'Kiwed', '9330191112', NULL, '1', 2, 0, 0, 0, NULL, '2017-06-08 03:34:40', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (28, '5a1cf0494e1ddf031438ee53e69764e9', 'silverpork1@gmail.com', 'Silver', 'Adrian', '85710888078', NULL, '1', 2, 0, 0, 0, NULL, '2017-06-08 06:14:09', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (29, 'e4a7677074e4e5d2e13e49f375624880', 'sekarelok27@gmail.com', 'Sekar elok', 'Febriany', '81297071927', NULL, '1', 2, 0, 0, 0, NULL, '2017-06-08 08:35:50', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (30, '0ffdb121bf9bb693325fd1e6645160af', 'dede.setiawan@kwikkiangie.ac.id', NULL, NULL, NULL, NULL, '1', 2, 0, 0, 7915, NULL, '2017-06-08 19:42:23', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (31, 'c6b96ce9cb9eb3d8e8d03252f78cee2c', 'yohan8075@yahoo.com', 'dede', 'setiawan', '8161185456', NULL, '1', 2, 0, 0, 0, NULL, '2017-06-08 19:45:06', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (32, '32601f46142dfb7f4c45ea6fdb8d66d7', 'haifelia@gmail.com', 'Felia', 'Prandya', '82112955352', NULL, '1', 2, 0, 0, 0, NULL, '2017-06-08 22:27:37', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (33, '790054b3ad57760da310f557a23de531', 'fanny.fannyone@gmail.com', 'stefanny', 'simanjuntak', '81289432560', NULL, '1', 2, 0, 0, 0, NULL, '2017-06-13 09:17:38', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (34, 'b564d18cdc228f40f0f3f1e5f94440b5', 'yogakautsarbhi@gmail.com', NULL, NULL, NULL, NULL, '1', 2, 0, 0, 3375, NULL, '2017-06-13 20:06:11', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (35, '6a4cbdaedcbda0fa8ddc7ea32073c475', 'Johaneschristian27@yahoo.com', 'Johanes', 'Christian', '81218504331', NULL, '1', 2, 0, 0, 0, NULL, '2017-06-13 23:36:32', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (36, 'e8d8be5c64925d47d3438154e324aed8', 'hanesc32@gmail.com', 'Johanes', 'Christian', '81218504331', NULL, '1', 2, 0, 0, 9115, NULL, '2017-06-13 23:41:52', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (37, '51253d08aea7542b781bcbb225bf7d7a', 'melinwidiyanti99@gmail.com', 'MEILYN WIDIYANTI', 'HABEAHAN', '81288183374', NULL, '1', 2, 0, 0, 0, NULL, '2017-06-15 01:26:10', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (38, '94439b44c7734d9eb9ae3508de09d1d7', 'clairezezka@gmail.com', 'Claire', 'franzezka', '82310219998', NULL, '1', 2, 0, 0, 0, NULL, '2017-06-16 20:45:39', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (39, '705d98252023443f667181b25b71c2b2', 'asyachriza@gmail.com', 'Andhika', 'Syachriza', '87705619030', NULL, '1', 2, 0, 0, 9750, NULL, '2017-06-20 07:55:21', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (40, 'a90cb6c44494ea1a3ea0611c21c32ef9', 'shevaamnd@gmail.com', 'sheva', 'corry amanda', '85770808913', NULL, '1', 2, 0, 0, 4481, NULL, '2017-06-27 03:41:55', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (41, '9bccc2a2179ce6e52f17bb831bc4ac1e', 'carissadifa60@gmail.com', 'carissa', 'difa', '81296496783', NULL, '1', 2, 0, 0, 9805, NULL, '2017-06-27 11:41:53', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (42, '5c5ece05b0d59eb797ea1f9aa179e841', 'rissadifa@gmail.com', 'carissa', 'difa', '81296496783', NULL, '1', 2, 0, 0, 2999, NULL, '2017-06-27 11:43:56', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (43, '22039f391e25cf6e1ecd6abbbfea7beb', 'agungmfauzi1@gmail.com', 'agung', 'muhammad fauzi', '81297595880', NULL, '1', 2, 0, 0, 0, NULL, '2017-06-28 08:44:05', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (44, '2dddf18f715de499cc94f1d9247d166c', 'fauziagung231@gmail.com', 'agung', 'muhammad fauzi', '81297595880', NULL, '1', 2, 0, 0, 5004, NULL, '2017-06-28 08:51:47', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (45, 'd1a3d19dc1643cd84d8f932e0ee93cc6', 'vrncadebby@gmail.com', 'Veronica', 'Debby', '87877645829', NULL, '1', 2, 0, 0, 2729, NULL, '2017-06-30 07:52:51', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (46, 'd90b11abe22389af91d22b0cb148b26b', 'syarifahraudhatul@yahoo.com', 'syarifah raudhatul', 'wardani', '82184170035', NULL, '1', 2, 0, 0, 2772, NULL, '2017-07-01 05:49:39', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (47, 'bd576026523344cad84ae0033aee38b9', 'gilbertagisela@gmail.com', 'Gisela', 'Gilberta', '85382222530', NULL, '1', 2, 0, 0, 5145, NULL, '2017-07-02 01:38:25', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (48, 'fadc2b7e233165e982cc734824c39a54', 'yuslikhatirta@gmail.com', 'Tirta', 'Yuslikha Putri Dewi', '81310123675', NULL, '1', 2, 0, 0, 7795, NULL, '2017-07-03 18:46:24', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (49, '29079a263c742b06b66431f236e33f23', 'natnatliem20@yahoo.com', 'natasha', 'liem', '81211030380', NULL, '1', 2, 0, 0, 2973, NULL, '2017-07-03 19:25:16', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (50, '2d42826ae1d76c7986622b665686a310', 'chrisredvil@gmail.com', 'Cristianto', 'Yudha', '81289160218', NULL, '1', 2, 0, 0, 0, NULL, '2017-07-05 05:39:11', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (51, '7177beb055a9f3f3c17112dd1eeacb2a', 'gleniconico@gmail.com', 'Aloysius', 'Natanael', NULL, NULL, '1', 2, 0, 0, 0, NULL, '2017-07-06 22:04:15', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (52, '35eef1ad5e3b24162e2bfeb325250ec8', 'mumazzaq.zaqqi@gmail.com', 'zaqqi', 'mumazzaq', '8123024996', NULL, '1', 2, 0, 0, 0, NULL, '2017-07-07 23:35:34', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (53, 'ac5b3b16efe4f319a9a83ceb8ec78e38', 'andreanwillyant@yahoo.com', 'Andrean', 'Willyanto', '8970001520', NULL, '1', 2, 0, 0, 0, NULL, '2017-07-15 22:49:38', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (54, '5a9c1cc0657442d490d605be2c08ab04', 'shihanmuhamad@gmail.com', 'Muhammad', 'Zulfannanda Shihan', '87832991999', NULL, '1', 2, 0, 0, 0, NULL, '2017-07-18 15:53:19', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (55, 'f9aecbf357328b2d1025808a44f45fd7', 'shaniakalalo@gmail.com', 'Shania Jesica', 'Kalalo', '81222265334', NULL, '1', 2, 0, 0, 0, NULL, '2017-07-23 02:02:58', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (56, '12f6cdcae2427a5f7c0f12e04ff95758', 'jessica.attamimi@yahoo.com', 'Shania Jesica', 'Kalalo', '81222265334', NULL, '1', 2, 0, 0, 0, NULL, '2017-07-23 03:08:15', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (57, '6bc0940769c210f07da25c4dc03c5732', 'pakpahanandreas70@gmail.com', 'Andreas', 'Pakpahan', '8988135489', NULL, '1', 2, 0, 0, 0, NULL, '2017-07-25 01:31:28', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (58, 'cc84c5becad816aba1325a4cf2de1a72', 'dian.lorens88@gmail.com', 'Dian', 'Lorens', '85691235590', NULL, '1', 2, 0, 0, 0, NULL, '2017-07-25 04:29:10', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (59, '31853562b8c1891542e52e5c6cb4a7ed', 'ekatiyas_al@yahoo.com', 'Ekatiyas', 'Ayu Lestari', '87811221997', NULL, '1', 2, 0, 0, 0, NULL, '2017-07-25 21:56:05', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (60, '48818f3da3d36ad762480b319b56f588', 'Racheldensaint@gmail.com', 'Rachel Saint Denis', 'Fiona', '89604577721', NULL, '1', 2, 0, 0, 0, NULL, '2017-07-30 21:59:07', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (61, 'aa9c88fc16cf0f56d3de0491e8aeb103', 'ekalingga14@gmail.com', 'Ekalaya', 'Lingga', '81289273218', NULL, '1', 2, 0, 0, 0, NULL, '2017-07-31 19:23:49', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (62, '160966395c2970b03b3e9c49567aa24d', 'rjrombot@gmail.com', 'Richard Julian', 'Rombot', '89644199048', NULL, '1', 2, 0, 0, 0, NULL, '2017-08-02 08:23:06', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (63, '9fb583e36b9f36b21df5da458af5bc86', 'mauludineen@gmail.com', 'Een', 'Mauludin ', '824798613', NULL, '1', 2, 0, 0, 0, NULL, '2017-08-03 20:19:47', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (64, '5da1933a70321143e0626d208dc1e0db', 'wina.fauziah27@gmail.com', 'Wina Nur Fauziah', 'wina nur fauziah', '83827825212', NULL, '1', 2, 0, 0, 0, NULL, '2017-08-07 02:33:05', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (65, 'e9cac99d6a56ca32d335ea47b0931afa', 'ellitaovina@gmail.com', 'Maria', 'Ellita Ovina', '87875747567', NULL, '1', 2, 0, 0, 0, NULL, '2017-08-08 02:03:02', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (66, '77d9045fffd8a0676ca780903255547a', 'matthew.haryanto@rocketmail.com', 'Matthew', 'Haryanto', '8176370637', NULL, '1', 2, 0, 0, 0, NULL, '2017-08-08 07:03:59', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (67, 'c80fc9932fab754145c03a4c452aabc3', 'fransiskatasya60@gmail.com', 'Fransiska', 'Tasya', '81345143391', NULL, '1', 2, 0, 0, 0, NULL, '2017-08-09 07:06:52', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (68, 'e1d98c566496e4a9059dc397e1ef1ba5', 'dionmarcellino1604@gmail.com', 'Dion', 'Marcellino', '87776767888', NULL, '1', 2, 0, 0, 0, NULL, '2017-08-10 04:33:12', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (69, 'a98d6c3f06afa3746bd02e4ba7b2807d', 'ttasyafarin@yahoo.com', 'Tasya Safira ', 'Farin', '81284354496', NULL, '1', 2, 0, 0, 0, NULL, '2017-08-10 07:44:58', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (70, '988258d09d5fd4cd307094e7479ed86c', 'dian120699@gmail.com', '83898733218', 'Prayogo', '83898733218', NULL, '1', 2, 0, 0, 0, NULL, '2017-08-11 16:19:10', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (71, 'f756aea5418071e064c26131e5b9267e', 'anond484@gmail.com', 'ewe', 'ewe', '89657448440', NULL, '1', 2, 0, 0, 0, NULL, '2017-08-12 10:46:16', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (72, '758c12535a993966009467bd6faf6a4b', 'akusukses086@gmail.com', 'Hzql', 'Jaj', '825886', NULL, '1', 2, 0, 0, 0, NULL, '2017-08-12 11:23:51', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (73, 'bb33337d941fe04b8eaa31deccbad373', 'anjay@gmail.com', 'andy', 'prasetyo', '6281468865788', NULL, '1', 2, 0, 0, 1118, NULL, '2017-08-12 17:03:27', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (74, '04d5f2e0677dac8727714b42ecfd6d09', 'kepriwonderfull@adminder.tech', 'Sec', 'ghost', '81991535241', NULL, '1', 2, 0, 0, 0, NULL, '2017-08-12 22:38:43', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (75, '601c235f381a18289d8eabce4ae1cab1', 'sabit.boentoe@yahoo.com', 'asad', 'afas', '8380416925', NULL, '1', 2, 0, 0, 1581, NULL, '2017-08-13 02:44:21', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (76, '4821cd1b0571057ae351959fa0829af3', 'diegolanasetiawan86@gmail.com', 'DIEGO', 'LANA SETIAWAN', '89658547423', NULL, '1', 2, 0, 0, 0, NULL, '2017-08-18 10:13:51', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (77, 'd22bd660d9a0652b805fa8f0a4426852', 'rianovita_gumela@yahoo.com', 'Ria novita', 'Gumela', '82112923912', NULL, '1', 2, 0, 0, 0, NULL, '2017-08-19 23:52:52', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (78, '78c63ed2c702365650d1cc1618278c3d', 'galuh87ayu@gmail.com', 'Galuh Ayu', 'Pambudi', '81287902248', NULL, '1', 2, 0, 0, 2761, NULL, '2017-08-27 03:54:38', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (79, '90250f7d876664e6276cc79fd98368ce', 'accountjv@india.com', 'jesss', 'vivi', NULL, NULL, '1', 2, 0, 0, 0, NULL, '2017-08-27 23:12:02', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (80, 'c8cb1dd38dec24214cde35ccbb126d84', 'clementcornelius357@yahoo.com', 'Cornelius', NULL, '87889250372', NULL, '1', 2, 0, 0, 9081, NULL, '2017-09-01 06:39:30', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (81, '176655861219a5abbbd8286a7d4ff145', 'renaldystarzz@yahoo.co.id', 'Renaldy', NULL, '895351524883', NULL, '1', 2, 0, 0, 4733, NULL, '2017-09-02 08:11:19', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (82, '176655861219a5abbbd8286a7d4ff145', 'minminmin100@yahoo.com', 'renaldy', NULL, '895351524883', NULL, '1', 2, 0, 0, 7494, NULL, '2017-09-02 08:12:59', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (84, 'bcda7886bd2e3c1d6c6bb6e7bfd90f45', 'gabbystevanny@gmail.com', 'Gabby', 'Stevanny', '87875888366', NULL, '1', 2, 0, 0, 7146, NULL, '2017-09-06 07:13:35', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (85, '9101c15ff19a2e7e72894db5a1b1a66d', 'Febevira.pc@gmail.com', 'febe', 'PrasetyaningDiah', NULL, NULL, '1', 2, 0, 0, 0, NULL, '2017-09-09 02:16:15', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (86, '203e67c89d010be9addf8724c22c04a1', 'vira.veronica47@gmail.com', 'Vira', 'Veronika', '895369730115', NULL, '1', 2, 0, 0, 0, NULL, '2017-09-09 08:22:38', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (87, '24c6ff8b7974a1c23b5919b6c26227f8', 'nataliaaprasetya26@gmail.com', 'natalia', 'prasetya', '87883461266', NULL, '1', 2, 0, 0, 5366, NULL, '2017-09-10 00:31:53', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (88, '9b2d6a1bb0e77f028d2ae3967df8c685', 'wsp.1958@gmail.com', 'Ivan', 'Raharja', '8780557401', NULL, '1', 2, 0, 0, 6689, NULL, '2017-09-10 02:13:32', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (89, '68908f67786c69849bc5ab45f75970cf', 'theo.julia.rani@gmail.com', 'Theo', 'Julia Rani', '8117191000', NULL, '1', 2, 0, 0, 3908, NULL, '2017-09-10 04:50:14', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (90, '9a4288bc2e5e59fbb70b6a6b840f8c98', 'stefaninatasyaadera@gmail.com', 'Stefani', 'Natasyaadera', '85366922889', NULL, '1', 2, 0, 0, 0, NULL, '2017-09-10 19:01:19', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (91, 'a6e279f5b6220026c8199542edd5d819', 'fanisurjawan@yahoo.co.id', 'Stephanie', 'Jeanny', '89656732463', NULL, '1', 2, 0, 0, 0, NULL, '2017-09-11 17:06:09', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (92, '42d8a9bec36a40cd5f92b1745a55466e', 'vivian2208@gmail.com', 'Vivian', 'Nathania', '6281389082633', NULL, '1', 2, 0, 0, 0, NULL, '2017-09-12 01:24:01', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (93, '86128dc180ace24c730af430993e2b8b', 'rebeccafendy@yahoo.com', 'rebecca', 'fendy', '87851714491', NULL, '1', 2, 0, 0, 0, NULL, '2017-09-14 08:27:45', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (94, 'b04284069ddd397ed8298738d3005532', 'bellaurensiaa@gmail.com', 'bella', 'laurensia', '82182838321', NULL, '1', 2, 0, 0, 0, NULL, '2017-09-17 06:03:08', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (95, 'b8e123ce2ae7e2852c2d3164a34f8b87', 'howinata@yahoo.com', 'Hans', 'Owen Winata', '83873143933', NULL, '1', 2, 0, 0, 0, NULL, '2017-09-22 19:01:20', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (96, '8bc657d093af90788dc49e3187308089', 'shirley_aulia@yahoo.com', 'PATRICIA', 'WINARTO PUTRI', '87882893939', NULL, '1', 2, 0, 0, 0, NULL, '2017-09-23 10:15:40', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (97, '09cb15ecce88e6c52aff6652aa4bafae', 'Valentinaagnes6@gmail.com', 'Valentina', 'Agnes', '81299228326', NULL, '1', 2, 0, 0, 0, NULL, '2017-09-23 19:19:18', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (98, '1dba5eed8838571e1c80af145184e515', 'chendrawirajennifer@yahoo.com', 'mami', NULL, 'mama', NULL, '1', 2, 0, 0, 0, NULL, '2017-09-25 00:21:27', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (99, 'd67df2b111c9422b60c444a05b739c5a', 'rina16juni@gmail.com', 'rina', 'junia', '81279756345', NULL, '1', 2, 0, 0, 0, NULL, '2017-09-26 21:28:42', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (100, '0ee4760075ec2114d89d4f6ee7a7c202', 'leonoririo21@gmail.com', 'Rio', 'Leonori', '895360073722', NULL, '1', 2, 0, 0, 0, NULL, '2017-09-27 01:16:35', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (101, '6962c6a1db1cdf30cb6d20a1864b3b83', 'vivian.fu1010@gmail.com', 'Vivian', 'Fu', '81257004438', NULL, '1', 2, 0, 0, 0, NULL, '2017-09-29 23:23:12', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (102, '538b45cc15779c2e9e825105e26b51c9', 'vsucinto@yahoo.com', 'vallen', 'thea', '83808400077', NULL, '1', 2, 0, 0, 0, NULL, '2017-10-08 21:37:04', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (103, 'a6ff89b7fdfb476734fc39ce1f688aa1', 'Vrnethaxx@gmail.com', 'Veren', 'Margaretha', '81295394589', NULL, '1', 2, 0, 0, 0, NULL, '2017-10-09 00:43:58', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (104, '85a78693a51f1114886e0225a148f87c', 'alphard.aks@gmail.com', 'Alphard Kartedhiarso', 'Sumantri', '85921546120', NULL, '1', 2, 0, 0, 0, NULL, '2017-10-09 05:31:16', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (105, '0bc775ccefb20078bb0e964ebac8848e', 'sxavepa@gmail.com', 'Sugiarto', NULL, '81278740653', NULL, '1', 2, 0, 0, 0, NULL, '2017-10-09 08:06:05', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (106, 'f1a9f8cc181fe8dfd410437e49bafbfc', 'laviniaodelia13@gmail.com', 'lavinia', 'odelia', '85853500985', NULL, '1', 2, 0, 0, 0, NULL, '2017-10-10 22:34:28', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (107, 'f1a9f8cc181fe8dfd410437e49bafbfc', 'laviniaodelia22@gmail.com', 'lavi', 'nia', '85853500985', NULL, '1', 2, 0, 0, 0, NULL, '2017-10-10 22:37:29', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (108, '576eca72eced22f62e3a59646d15dd64', 'Vilyanti62@gmail.com', 'Novi', 'Liyanti', '85654844818', NULL, '1', 2, 0, 0, 0, NULL, '2017-10-11 05:18:03', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (109, '2539a63c785553a9116d6536dc18310d', 'Rifdanisrina10@gmail.com', 'Rifda', 'Nisrina', '85798795595', NULL, '1', 2, 0, 0, 0, NULL, '2017-10-11 06:16:14', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (110, '667f33946aede7e6d326002f3f864109', 'kriskyphilipe@gmail.co@', 'philipe', 'krisky', '62895333035767', NULL, '1', 2, 0, 0, 0, NULL, '2017-10-12 09:16:40', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (111, '667f33946aede7e6d326002f3f864109', 'kriskyphilipe@gmail.com', 'philipe', 'krisky', '62895333035767', NULL, '1', 2, 0, 0, 0, NULL, '2017-10-12 09:19:37', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (112, '60d34e800e4c6aff0217116950a3ca30', 'Michelletjio17@yahoo.co.id', 'Michelle', 'Kezia', '87886960731', NULL, '1', 2, 0, 0, 0, NULL, '2017-10-18 19:16:44', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (113, 'd7db567396fd4ce56d6c54b268af1cd1', 'kurniawanadi3003@gmail.com', 'Adi', 'Kurniawan', '8159480000', NULL, '1', 2, 0, 0, 0, NULL, '2017-10-19 00:40:55', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (114, '33e394b69028fa1cefce98a99efc3ce8', 'Yoelsaputra544@gmail.com', 'Yoel', 'Octavianus saputra', '81310940912', NULL, '1', 2, 0, 0, 0, NULL, '2017-10-19 04:44:16', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (115, 'cdfa0d2b5ff53ae8be19db47bce1b5d3', 'hutabolon_co@yahoo.co.id', 'Wenlis', 'Gultom', '81316372770', NULL, '1', 2, 0, 0, 0, NULL, '2017-10-19 21:18:43', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (116, 'b1b911aa74d7acc7cd20ef9692c5fe06', 'steffnom@gmail.com', 'stefani novita', 'magdalena', '8979683773', NULL, '1', 2, 0, 0, 0, NULL, '2017-10-20 08:07:26', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (117, '78c2d79f807372ddcc7375808a57ff6a', 'teddy_h1980@hotmail.com', 'teddy', 'hanafi', '8111789221', NULL, '1', 2, 0, 0, 0, NULL, '2017-10-21 05:36:24', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (118, '5a1cf0494e1ddf031438ee53e69764e9', 'ivan@kwikkiangie.ac.id', 'Ko', 'Ivan', '85710888078', NULL, '1', 2, 0, 0, 0, NULL, '2017-10-21 16:51:08', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (119, '3d5302043a33be4b773e6299c2c04912', 'tirsalia11@gmail.com', 'tirsalia', 'gratia', '87781164237', NULL, '1', 2, 0, 0, 0, NULL, '2017-10-24 01:17:28', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (120, '758b26a0370713b004514e3e1a7e6569', 'veliaadewii@gmail.com', 'ravelia', 'dewi', '81290273842', NULL, '1', 2, 0, 0, 0, NULL, '2017-10-24 19:28:38', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (121, '301b5201a84573c8b1a51bc03a40fea0', 'a.teguh20@yahoo.com', 'Angel Lia', 'Teguh', '82269052628', NULL, '1', 2, 0, 0, 0, NULL, '2017-10-25 06:37:35', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (122, '32e25817d7f19817c51eb6a5eb4dd6e3', 'jenniferlim598@yahoo.co.id', 'Jennifer', 'Lim', '8117181510', NULL, '1', 2, 0, 0, 0, NULL, '2017-10-28 06:56:33', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (123, '9bd21e8284b4e722c429e485957e8a58', 'nanangvh1@gmail.com', 'NANANG', '-', '82380359551', NULL, '1', 2, 0, 0, 0, NULL, '2017-10-30 15:07:46', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (124, '8fcc72eaea127c0d4695d1afdc1744ea', 'wansenlim@gmail.com', 'Wansen', 'Iim', '81286047972', NULL, '1', 2, 0, 0, 0, NULL, '2017-10-30 22:38:39', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (125, '8b0ed8feb89e26def3f932024a393fd6', 'seel0104@gmail.com', 'Selvia', 'Dewi', '87881422231', NULL, '1', 2, 0, 0, 0, NULL, '2017-10-31 02:33:56', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (126, '4fbfb67caf63de601ad8ec1de51afe0c', 'setiyadi_stephanus@yahoo.com', 'Stephanus', 'Setiyadi', '8998718196', NULL, '1', 2, 0, 0, 0, NULL, '2017-10-31 21:12:06', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (127, '40e13413789d4d1a5aa9858169aca9c9', 'anastasyaflower@gmail.com', 'anastasia', 'flower', '82261387549', NULL, '1', 2, 0, 0, 0, NULL, '2017-11-01 05:59:23', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (128, 'e267cfcd18461ce938067eca67c59f41', 'andrew180500@gmail.com', 'andrew', 'alviandy', '85781153576', NULL, '1', 2, 0, 0, 0, NULL, '2017-11-01 17:47:11', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (129, '25f9e794323b453885f5181f1b624d0b', 'orickgealgeol@gmail.com', 'Ach choiril anshori', 'Choiril', '82332943849', NULL, '1', 2, 0, 0, 0, NULL, '2017-11-02 19:10:14', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (130, 'a1692301c209e9deacf142f3f66c9f90', 'jjaori26@gmail.com', 'JESSICA', 'Jaori', '81243199080', NULL, '1', 2, 0, 0, 0, NULL, '2017-11-03 07:59:11', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (131, 'ba325b825f4fe4edca95389284710a8f', 'kevinnasri8@gmail.com', 'Kevin', 'Yustisiro', '896682288465', NULL, '1', 2, 0, 0, 0, NULL, '2017-11-06 19:50:31', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (132, 'bf78552fc5f70d27bb39b7bd09818d29', 'faisahmad.fa@gmail.com', 'FAIZAL', 'AFANDI', '85729402418', NULL, '1', 2, 0, 0, 0, NULL, '2017-11-07 03:03:53', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (133, 'bb097baa7d8950cfc4d1e812a888a3c1', 'alvinbudianto1806@gmail.com', 'Alvin', 'Budianto', '81902566522', NULL, '1', 2, 0, 0, 0, NULL, '2017-11-07 03:36:23', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (134, '60ce6e0ffc521a1f85b84e262bb09f1b', 'siska.vionita@yahoo.com', 'siska', 'vionita', '8999363696', NULL, '1', 2, 0, 0, 0, NULL, '2017-11-07 23:14:11', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (135, '0d346451f216041db9153e7fc6739f5e', 'antosetyadi07@gmail.com', 'Ismoyo Novianto', 'Setyadi', '81297449130', NULL, '1', 2, 0, 0, 0, NULL, '2017-11-08 05:12:24', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (136, '388d0c4eb8130b7c1cd62e0af4f4621b', 'aryasatya041000@gmail.com', 'Arya', 'Satya', '81288989468', NULL, '1', 2, 0, 0, 0, NULL, '2017-11-08 19:22:35', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (137, '647d3c599ac018ec625db54591027fe8', 'guslindaellen99@gmail.com', 'Elen', 'Guslinda', '81288816528', NULL, '1', 2, 0, 0, 0, NULL, '2017-11-09 04:28:42', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (138, 'a3eccef9a4d6a35665c5547aea99fe09', 'mridha747@gmail.com', 'MUHAMMAD', 'RIDHA', '82267370810', NULL, '1', 2, 0, 0, 0, NULL, '2017-11-09 08:54:34', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (139, '18be5ac73014a0d46e09fd0189599f4c', 'waibi08@gmail.com', 'Waibi', NULL, '85298641328', NULL, '1', 2, 0, 0, 0, NULL, '2017-11-10 15:09:05', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (140, '24eff2ca7e80cf2edbf2144aabe926c1', 'saveria660@gmail.com', 'maria', 'saveria', '895390298514', NULL, '1', 2, 0, 0, 0, NULL, '2017-11-12 06:09:01', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (141, '1805e6089f5b37cc088e01c529c820b1', 'azzuriparamadina@gmail.com', 'Azzuri paramadina', 'Firdaus', '82229310380', NULL, '1', 2, 0, 0, 0, NULL, '2017-11-14 19:07:31', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (142, '0d2b0f011052dc6d9d9bcb064de2c311', 'nurmala.sari1311@gmail.com', 'Nurmala', 'Sari', '85782096367', NULL, '1', 2, 0, 0, 0, NULL, '2017-11-15 00:20:37', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (143, 'd28be49df1d3414659b10d7cacab9f7b', '2015013@smapetrus.net', 'Davin', 'Aten', '81348477554', NULL, '1', 2, 0, 0, 0, NULL, '2017-11-16 07:47:41', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (144, 'f2f38f8eafac8a0ca4f2287ecae696a7', 'dwiagung.speed@yahoo.com', 'dwi', 'agung', '‭0812 71652729‬', NULL, '1', 2, 0, 0, 0, NULL, '2017-11-20 09:06:31', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (145, '62827301badccaf12b284d9f78038798', 'shafiraudypp@gmail.com', 'shafira raudya', 'putri', '87778761611', NULL, '1', 2, 0, 0, 0, NULL, '2017-11-20 16:18:26', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (146, '8bd8e91028c1b34141642fe73b9992aa', 'liyani1196@gmail.com', 'Liyani', 'Lie', '85771626422', NULL, '1', 2, 0, 0, 0, NULL, '2017-11-22 00:36:27', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (147, '8bde84c7697055ea56a9a21e574fcf10', 'ceriafudhla@gmail.com', 'Ceria', 'Fudhla', '8116602602', NULL, '1', 2, 0, 0, 0, NULL, '2017-11-23 02:00:55', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (148, '36dbbc75ad91ada252e6c3acee9a4011', 'felixmadison12@yahoo.com', 'felix', 'madison', '82182899599', NULL, '1', 2, 0, 0, 0, NULL, '2017-11-24 05:07:00', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (149, 'ecf71a4e3ed231b07b11958ead3e3350', 'limnyo12@gmail.com', 'William', 'Lim', '81514672668', NULL, '1', 2, 0, 0, 0, NULL, '2017-11-25 06:49:33', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (150, 'da6e7fe14cb8aadf41ba44649e700438', 'jurgent.rowlend2@gmail', 'Jurgent', 'Rowlend', '85280761439', NULL, '1', 2, 0, 0, 0, NULL, '2017-12-08 02:14:26', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (151, 'da6e7fe14cb8aadf41ba44649e700438', 'jurgent.rowlend2@gmail.com', 'Jurgent', 'Rowlend', '85280761439', NULL, '1', 2, 0, 0, 0, NULL, '2017-12-08 02:15:15', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (152, '6e0cd1d378f518f797fad6c6564bd059', 'joysriochardo@gmail.com', 'joys', 'riocardo', '82198252393', NULL, '1', 2, 0, 0, 0, NULL, '2017-12-11 04:43:30', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (153, '070ee4ff9aa2858536b86fd34a4e4a64', 'yoanbalthazar07@gmail.com', 'Yoan', 'Balthazar', '895333175056', NULL, '1', 2, 0, 0, 0, NULL, '2017-12-11 09:33:37', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (154, '2cd79e693651ca1d7b82a9ceba7b2e88', 'ezraaipassa007@gmail.com', 'Ezra', 'Aipassa', '81289669478', NULL, '1', 2, 0, 0, 0, NULL, '2017-12-11 23:46:11', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (155, 'df8128fc4d8c5ccd60af1aa61ee1e6c8', 'catharinaawh@gmail.com', 'Catharina', 'Apriyani', '85743182555', NULL, '1', 2, 0, 0, 0, NULL, '2017-12-12 19:17:58', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (156, '0e40c146e56b9386c9c7d35a3bd5c010', 'andrea.felita20@gmail.com', 'Andrea', 'Cahyadinata', '8993501275', NULL, '1', 2, 0, 0, 0, NULL, '2017-12-14 22:27:42', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (157, '8b8cf6ad651c6660c9b317b906151167', 'setiawanalvin79@gmail.com', 'Alvin', 'Setiawan', '8973916589', NULL, '1', 2, 0, 0, 0, NULL, '2017-12-17 19:28:50', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (158, '70b504f7c2d0e845264b0a81a4fa984a', 'jhauw7@gmail.com', 'Josef', 'Loanda', '87874569543', NULL, '1', 2, 0, 0, 0, NULL, '2017-12-18 22:43:22', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (160, '12a4ed4e2679f8f783a7fcb072e0e304', 'shellychandra61@gmail.com', 'Shelly', 'chandra', '82175749880', NULL, '1', 2, 0, 0, 0, NULL, '2017-12-20 23:39:41', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (161, '5dda80ae4ec21c579943713b900af620', 'primasari09@yahoo.co.id', 'dian', 'SARI', '81225205332', NULL, '1', 2, 0, 0, 0, NULL, '2017-12-21 16:00:17', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (162, '8792006ccb1bc82dcfcbf83bf0c0805a', 'Nurfadilaha22@yahoo.co.id', 'Anisa', 'Nur Fadilah', '85352376598', NULL, '1', 2, 0, 0, 0, NULL, '2017-12-21 22:43:05', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (163, '223687ba474160d5b35500ed22d49f7a', 'rafendasamuel@gamil.com', 'Samuel', 'Rafenda', '82182625819', NULL, '1', 2, 0, 0, 0, NULL, '2017-12-24 03:24:04', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (164, 'ea439bcae3e521cc740ca67b5e65b117', 'senyoktaviani82@gmail.com', 'Seny', 'Oktaviani', '8782810507', NULL, '1', 2, 0, 0, 0, NULL, '2017-12-24 05:04:02', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (165, '0db11f21db54b8bea50df9212538923b', 'Rahmadewie72@gmail.com', 'Rachma', 'Dewi', '82182019551', NULL, '1', 2, 0, 0, 0, NULL, '2017-12-24 07:27:08', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (166, '40e940b06150228b149000462602e00f', 'weny.odoret@gmail.com', 'Weny', 'Wahida sulistian', '81336732114', NULL, '1', 2, 0, 0, 0, NULL, '2017-12-24 07:50:38', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (167, '0db11f21db54b8bea50df9212538923b', 'rachmazulkarnaindewi@gmail.com', 'Rachma', 'Zulkarnain', '82182019551', NULL, '1', 2, 0, 0, 0, NULL, '2017-12-24 08:40:37', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (168, '307f4fd8ff29e5ee7e2c8c2334a119ee', 'evanbagyo@gmail.com', 'Evan', 'Soebagyo', '89676721821', NULL, '1', 2, 0, 0, 0, NULL, '2017-12-25 05:14:49', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (169, '6a9238c784faaa8a86087ec87c97e502', 'appjoox@yahoo.com', 'Assyifa', 'Zaskia', '89608474751', NULL, '1', 2, 0, 0, 0, NULL, '2017-12-26 10:43:37', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (170, 'e0656172815908c570e5f4752bc28b23', 'jejeanyy01@gmail.com', 'Jeanyfer', 'Jeanyfer', '81932272821', NULL, '1', 2, 0, 0, 0, NULL, '2017-12-27 08:40:54', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (171, '48474f975022f960bc2afbe49be581e8', 'ainunftria55@gmail.com', 'ainun', 'fitria', '8982671107', NULL, '1', 2, 0, 0, 0, NULL, '2017-12-27 18:06:05', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (172, 'ebd0ca3a77c2577dc56270638606f43f', 'masterdotaggwp1122@gmail.com', 'Teddy', 'Bear', '8561111056', NULL, '1', 2, 0, 0, 0, NULL, '2017-12-28 10:25:05', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (173, 'f58c9875ac84dfe1fbe91b918773d050', 'msantosa63@gmail.com', NULL, NULL, NULL, NULL, '1', 2, 0, 0, 0, NULL, '2018-01-01 05:52:22', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (174, '51abd70d44f22c9cd48295fd78baac51', 'maygregor01@gmail.com', 'Michael', 'Rivaldo Santosa', '87734700007', NULL, '1', 2, 0, 0, 0, NULL, '2018-01-01 05:57:01', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (175, 'affeccfe39cd660cb37bdf225b274fc7', 'teddyhan1907@gmail.com', 'teddy', 'hanafi', '8111789221', NULL, '1', 2, 0, 0, 0, NULL, '2018-01-01 21:20:50', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (176, '41a8cfe1555e6bd0a854357b53ece69a', 'cindyokt07@gmail.com', 'cindy', 'oktavia', '81366648999', NULL, '1', 2, 0, 0, 0, NULL, '2018-01-02 01:32:03', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (177, 'd79720667768437aeffdaaf612478983', 'deasamsung10@gmail.com', 'Audrea', 'Ivanka Agustin', '82307532273', NULL, '1', 2, 0, 0, 0, NULL, '2018-01-03 20:22:15', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (178, 'b5f25c4dc5196597a1c5f02904eea323', 'Romaidaito@gmail.com', 'Romaida Ito', 'Yanda Siringoringo', '82210289325', NULL, '1', 2, 0, 0, 0, NULL, '2018-01-04 03:37:52', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (179, 'ecf7943a20d9bf554a8149a123120f67', 'linnyng17@gmail.com', 'liny', 'liny', '82251582137', NULL, '1', 2, 0, 0, 0, NULL, '2018-01-04 08:58:08', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (180, 'ad8b163ddcf50f6ffc7335f40c968886', 'james.gautama@gmail.com', 'James', 'Gautama', '8112777267', NULL, '1', 2, 0, 0, 0, NULL, '2018-01-04 21:17:00', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (181, '60ded40bcbdaebaecc2f0f7363ffbf84', 'phradanaikrar@gmail.com', 'Ikrar', 'pradana', '85704880608', NULL, '1', 2, 0, 0, 0, NULL, '2018-01-06 15:22:05', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (182, '2f585b1dd56978f6b106df143b1a3b7e', 'zulfam.zm@gmail.com', 'Zulfa', 'Mustofa', '87786618059', NULL, '1', 2, 0, 0, 0, NULL, '2018-01-06 23:25:20', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (183, 'a6a343901957da297d2e6d392df4f7e6', 'felixandianto321@gmail.com', 'felix', 'andianto', '87889318637', NULL, '1', 2, 0, 0, 0, NULL, '2018-01-08 06:42:30', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (184, 'fe72035dc2fbf9f8dbda041d0b21630d', 'prisiliaaprilia@gmail.com', 'April', 'Lumenta', '81341502712', NULL, '1', 2, 0, 0, 0, NULL, '2018-01-10 01:55:10', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (185, '729031a14cdfc032c5d8441761a63efe', 'dinapratiwi84@yahoo.com', 'Dina', 'Pratiwi N', '8979677447', NULL, '1', 2, 0, 0, 0, NULL, '2018-01-11 19:10:30', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (186, '5c9bae8c27d55ecc8c39b88e33e4e335', 'primalova.ariela@gmail.com', 'Ariela', 'Primalova', '82211500626', NULL, '1', 2, 0, 0, 0, NULL, '2018-01-14 09:25:42', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (187, '88836bf9a469b6b674e2de68e0c8ae0a', 'exqualcomm@yandex.com', 'i', 'a', '0', NULL, '1', 2, 0, 0, 0, NULL, '2018-01-15 07:00:19', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (188, 'c1b953f7fae5e6726dbbe623de16fea6', 'giovanno.vincent@yahoo.com', 'giovanno', 'vincent', '81517309992', NULL, '1', 2, 0, 0, 0, NULL, '2018-01-15 12:37:23', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (189, 'f085d618b9308fa3f6527d81b093d3f3', 'sherina.syafnam@gmail.com', 'Sherina', 'Syafna Madaniah', '85743759943', NULL, '1', 2, 0, 0, 0, NULL, '2018-01-18 07:58:04', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (190, '371c89a8075f3c6d4224c2d9bb1b7729', 'dseptianr@gmail.com', 'Dwi Septia', 'Ningrum R', '81394188049', NULL, '1', 2, 0, 0, 0, NULL, '2018-02-12 04:58:44', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (191, 'b0285cbf334be23be58e7ff353af1af2', 'theresiaangelia899@gmail.com', 'theresia', 'angelia', '81286185123', NULL, '1', 2, 0, 0, 0, NULL, '2018-02-13 18:58:18', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (192, 'b8a956378529779a41a749cf3a682875', 'ash.oshi89@gmail.com', 'Hadi', 'Sunly', '82169800545', NULL, '1', 2, 0, 0, 0, NULL, '2018-02-16 01:16:46', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (193, 'b549ea10d6ef71f690e7ba458b293118', 'gilberthlikumahua@gmail.com', 'Gilberth', 'Likumahua', '85243177292', NULL, '1', 2, 0, 0, 0, NULL, '2018-02-16 18:06:00', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (194, '1b368dce7314260215c52fa0fdf1e858', 'yogakaut167@gmail.com', 'bopak', 'castello', '85817223167', NULL, '1', 2, 0, 0, 0, NULL, '2018-02-20 14:50:18', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (195, 'b696c0ee79bc6679b2d0d1b6a4e484a6', 'email9366@gmail.com', 'Handoko', 'Halim', '82366666303', NULL, '1', 2, 0, 0, 0, NULL, '2018-02-21 03:32:36', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (196, 'd387dcc1fd14b06dea6fc056968db5b4', 'Dedekurniati080520@gmail.com', 'Dede', 'Kurniati', '8979263499', NULL, '1', 2, 0, 0, 0, NULL, '2018-02-23 07:35:56', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (197, '656b7f8949ad98798662bf28b5262604', 'agnessantika07@gmail.com', 'Agnes', 'Santika', '81382505914', NULL, '1', 2, 0, 0, 0, NULL, '2018-02-25 04:25:19', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (198, 'cb65934eaa9c6a88b9b6a9fe12093fd8', 'grace.gisel@yahoo.com', 'Gisela', 'Saselah', '82191996712', NULL, '1', 2, 0, 0, 0, NULL, '2018-02-26 23:56:35', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (199, 'f02536e2ee07cdfdc8382fd85309d9bf', 'bernad3a@gmail.com', 'Bernadus sutomo', 'tapokabkab', '82169880304', NULL, '1', 2, 0, 0, 0, NULL, '2018-03-06 07:43:04', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (200, '1d9bf0f7017557ed8bd01a34e874b269', 'memorybig51@gmail.com', 'Alfian Wicaksana', 'Maulana', '89664516807', NULL, '1', 2, 0, 0, 0, NULL, '2018-03-12 22:16:56', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (201, 'dfffa8c59385967e97e054c9fbc6a410', 'djihan.farizky@gmail.com', 'Muhammad Djihan', 'Farizky', '81288335624', NULL, '1', 2, 0, 0, 0, NULL, '2018-03-12 23:47:24', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (202, '26f44d6ae65832898cf6eef38c6ff230', 'sidneyynatashaa20@gmail.com', 'sidney', 'natasha', NULL, NULL, '1', 2, 0, 0, 0, NULL, '2018-03-14 01:31:47', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (206, '534e66afd7a5cbf32af873567241e71c', 'francisca.gunawan@gmail.com', 'Francisca', 'Gunawan', '87741479412', NULL, '1', 2, 0, 0, 0, NULL, '2018-03-15 16:25:36', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (207, 'b7e8ea718b76b1f6fcd1e7fc1bbdcf4c', 'hezezkiel@gmail.com', 'Fransiskus', 'Hezezkiel ', '85718692658', NULL, '1', 2, 0, 0, 0, NULL, '2018-03-20 08:22:31', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (208, 'b7289fb34be48e77556b45c7a12c7dd5', 'anisyacahya26@gmail.com', 'Anisya Cahya ', 'Rahmayanti', '82211235916', NULL, '1', 2, 0, 0, 0, NULL, '2018-03-24 19:25:05', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (209, 'd60245dd3adba6c7f8af0f414afd49fd', 'claudiafilia.tiffany@gmail.com', 'Claudia', 'Tiffany', '89656230149', NULL, '1', 2, 0, 0, 0, NULL, '2018-03-26 00:37:09', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (210, 'cd91723d21f2fca73e31e0c44fa4fad5', 'ptrnblh12@gmail.com', 'Ade Putri', 'Nabilah', '81288110840', NULL, '1', 2, 0, 0, 0, NULL, '2018-03-27 03:56:43', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (211, '9b2247e84f8397e2750df599ce2ad179', 'enggalwacanen99@gmail.com', 'Enggal', 'Wacanen', '81319156305', NULL, '1', 2, 0, 0, 0, NULL, '2018-03-27 19:47:59', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (212, 'efe072d9fe2f6f4b61437a581d25740d', 'akira.idn@gmail.com', 'akane', 'ak', '5313947345', NULL, '1', 2, 0, 0, 0, NULL, '2018-04-03 04:04:49', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (213, '78842815248300fa6ae79f7776a5080a', 'Weyjey1998@hotmail.com', 'William', 'Jonathan', '85819228259', NULL, '1', 2, 0, 0, 0, NULL, '2018-04-10 08:44:59', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (214, '4441100834bee1a3630f8a8c10aa858a', 'melisamd98@gmail.com', 'Melisa', 'Dewi', '85348360476', NULL, '1', 2, 0, 0, 0, NULL, '2018-04-12 05:13:08', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (215, 'ef33b95ee7e7cff23d4a7a1377d4b8f3', 'martina.celina@ymail.com', 'Martina', 'Celina', '8977440817', NULL, '1', 2, 0, 0, 0, NULL, '2018-04-13 00:59:30', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (216, '064ec1692a054c73d7ed60e6e0bd8733', 'gunawanoka@yahoo.com', 'Oka', 'Gunawan', '81313566567', NULL, '1', 2, 0, 0, 0, NULL, '2018-04-13 20:59:06', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (217, '1798bc33e3c3a516977466167e19f029', 'putripuji161227@gmail.com', 'Putri Puji', 'Astuti', '81319893732', NULL, '1', 2, 0, 0, 0, NULL, '2018-04-14 06:12:36', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (218, '28f19a0b757437ef96c0f93683640a3d', 'devaauliaandiwi@gmail.com', 'DEVA AULIA', 'ANDIWI', '82114021661', NULL, '1', 2, 0, 0, 0, NULL, '2018-04-17 06:06:00', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (219, '27b875e1e85f8f1df9184e2d88397f0e', 'godsgirl8800@gmail.com', 'Vanka ', 'Auliani ', '85959106959', NULL, '1', 2, 0, 0, 0, NULL, '2018-04-17 11:17:48', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (220, '5d18d34ce0290f260746a86c2a60a0b8', 'Ferdyyanto252@gmail.com', 'Ferdyanto', 'Effendy', '87784888773', NULL, '1', 2, 0, 0, 0, NULL, '2018-04-18 03:00:28', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (221, 'b9dd7b3e2d0df02d3827865447725ff0', 'aditya.rachmansyah@yahoo.com', 'Aditya', 'Rachmansyah', '8118989966', NULL, '1', 2, 0, 0, 0, NULL, '2018-04-18 09:24:00', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (222, '73886cf71a87756fb0ed3d88254c2b17', 'zareputra@gmail.com', 'Muhammad Reza ', 'Adzanta Putra', '83808470867', NULL, '1', 2, 0, 0, 0, NULL, '2018-04-19 00:50:07', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (223, 'b9dd7b3e2d0df02d3827865447725ff0', 'rachmansyah.aditya@yahoo.com', 'Aditya', 'Rachmansyah', '8118989966', NULL, '1', 2, 0, 0, 0, NULL, '2018-04-19 02:52:57', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (224, '23acae6702a9344c48073564ad4722fe', 'Widjajaesther.2407@gmail.com', 'Esther', 'Geofanny', NULL, NULL, '1', 2, 0, 0, 0, NULL, '2018-04-20 17:08:20', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (225, '99b3780040a31d7e0028f8212eed9a64', 'adelinesnpr@gmail.com', 'adeine', 'sianipar', '85200200798', NULL, '1', 2, 0, 0, 0, NULL, '2018-04-22 17:28:19', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (226, '2f74249282b2027ccceffdfd0a8ad689', 'lystisantiago@gmail.com', 'lysti ', 'santiago ', '895702573445', NULL, '1', 2, 0, 0, 0, NULL, '2018-04-23 23:06:54', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (227, '73372c53e0121ee5410cfa6f05882338', 'Revelinoseagel45@gmail.com', 'Revelino', 'Lichbred', '87720967294', NULL, '1', 2, 0, 0, 0, NULL, '2018-04-24 08:17:58', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (228, '385163a5d023a6fe214c08f16038419d', 'lorenzokusen@gmail.com', 'Lorenzo', 'Kusen', '82190897946', NULL, '1', 2, 0, 0, 0, NULL, '2018-04-26 05:27:55', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (229, '8e246f099ccf9d85bfccc8df52925170', 'Agustinus Kevin Julianto', 'SMA FONS VITAE 1', '8129389898', NULL, NULL, '1', 2, 0, 0, 0, NULL, '2018-04-26 23:40:26', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (230, '8e246f099ccf9d85bfccc8df52925170', 'julianto.elly@gmail.com', 'agustinus kevin', 'julianto', '8129389898', NULL, '1', 2, 0, 0, 0, NULL, '2018-04-26 23:50:53', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (231, 'cc34e9cd31f4b7c7e8771a932680de7e', 'juniariandini@gmail.com', 'Juni', 'Ariandini ', '81281060147', NULL, '1', 2, 0, 0, 0, NULL, '2018-04-30 01:43:05', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (232, '9b2d6a1bb0e77f028d2ae3967df8c685', 'ivanraha1028@gmail.com', 'Ivana', 'Raharja', '83811439454', NULL, '1', 2, 0, 0, 0, NULL, '2018-04-30 02:03:18', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (233, '7509fa8d43a95710989e3fbf3d2e89b7', 'paulina.tantra@gmail.com', 'paulina', 'tantra', '87780747206', NULL, '1', 2, 0, 0, 0, NULL, '2018-04-30 04:20:01', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (234, 'ee381d551ac0ad5060f09a9966132062', 'nununglatifah65@gmail.com', 'nunung', 'latifah', '83841085705', NULL, '1', 2, 0, 0, 0, NULL, '2018-06-30 08:29:47', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (235, '19048dd9609e32c27c12431ea2caad89', 'herguritno21@yahoo.co.id', 'Herguritno', 'Wicaksono', '81511745754', NULL, '1', 2, 0, 0, 0, NULL, '2018-07-03 04:27:31', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (236, '877f52c99c19903bae616ded103532e5', 'inggarauliaf@gmail.com', 'Inggar', 'Aulia Fauziah', '81514649866', NULL, '1', 2, 0, 0, 0, NULL, '2018-07-03 10:47:52', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (237, 'f9a2198643a6cff2ad0d36ddc642b394', 'gabriellalamba@gmail.com', 'Gabriella Lamba', 'R.A', '8997253227', NULL, '1', 2, 0, 0, 0, NULL, '2018-07-03 23:09:42', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (238, '9cb80503826f15b959909e5d8c2f5fd4', 'agungmuhammadiqbal22@gmail.com', 'Agung Muhammad ', 'Iqbal', '82288384247', NULL, '1', 2, 0, 0, 0, NULL, '2018-07-04 01:20:11', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (239, '78b3693e81677e3b7a141ff1e768f0f2', 'fhadmaul@gmail.com', 'Muhamad Fhad', 'Maulana', '82379985510', NULL, '1', 2, 0, 0, 0, NULL, '2018-07-04 04:05:42', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (240, '2df7354212fbaf8e933ec027e8215980', 'nengapa.9@gmail.com', 'Wulan', 'Sundari', '89622779373', NULL, '1', 2, 0, 0, 0, NULL, '2018-07-04 11:24:22', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (241, 'be887b6465d392805142c32f18bfebff', 'natasya.parkeunri@gmail.com', 'Natasya', 'Octaviana', '81273600849', NULL, '1', 2, 0, 0, 0, NULL, '2018-07-05 01:30:26', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (242, '4f36aa79776a530df65a4cc457e47d7c', 'wk.djohansjah@gmail.com', 'wk', 'Djohansjah ', '82154255555', NULL, '1', 2, 0, 0, 0, NULL, '2018-07-05 09:41:57', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (243, '0754055a78f1c6fef4d57ecb92519d54', 'owenlim2602@gmail.com', 'owen', 'lim', '87884245805', NULL, '1', 2, 0, 0, 0, NULL, '2018-07-05 11:04:05', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (244, '1ed12407d1d4bd2cbdbf28504b6707c0', 'nadhifahsasqia@yahoo.com', 'nadhifah ', 'ichwan', '81908091960', NULL, '1', 2, 0, 0, 0, NULL, '2018-07-06 03:20:14', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (245, '036b850b3959f43c1dce19f8843efaef', 'kodokotong@gmail.com', 'lusi', 'wijaya', '8787866900', NULL, '1', 2, 0, 0, 0, NULL, '2018-07-06 03:48:40', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (246, '08912d8ce4c58ecc67f0af66b67b9233', 'Saydsyauqialva@gmail.com', 'Saydsyauqi', 'Alva', '82288519165', NULL, '1', 2, 0, 0, 0, NULL, '2018-07-06 06:17:42', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (247, '42d75d6fef4b4f5192319dd0c6311716', 'ramidachanbernaded@gmail.com', 'Ramida', 'Bernaded', '85697730898', NULL, '1', 2, 0, 0, 0, NULL, '2018-07-12 07:25:23', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (248, 'c5a63b6e5dea24bc834f05d7d85cd373', 'hanifudin@yahoo.com', 'Auzan Naufal', 'Hanifuddin', '8161167421', NULL, '1', 2, 0, 0, 0, NULL, '2018-07-16 20:50:37', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (249, '166118d9fe52df1659e879365ce16b06', 'arsilbinz@gmail.com', 'Muhammad ', 'El Sultani Arief', '81210909026', NULL, '1', 2, 0, 0, 0, NULL, '2018-07-18 20:00:38', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (250, '5f127305b86c434450aafdd103ea3b65', 'danieloktavianus@gmail.com', 'daniel', 'oktavianus', '89637033099', NULL, '1', 2, 0, 0, 0, NULL, '2018-07-18 21:55:44', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (251, '662bbcee80934035b31fbab5bc10fa61', 'alfredokarema@gmail.com', 'Rafael', 'Louis Alfredo Karema', '81321850031', NULL, '1', 2, 0, 0, 0, NULL, '2018-07-19 11:35:48', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (252, 'b2ac79e710a0005de4f0c0e17f440638', 'carolinesabella1304@gmail.com', 'caroline', 'sabella', '81387371532', NULL, '1', 2, 0, 0, 0, NULL, '2018-07-20 02:33:08', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (253, '24500fa6ecaeb8300905727802af3081', 'yostandayapurba@gmail.com', 'yostandaya', 'maretua', '81296495672', NULL, '1', 2, 0, 0, 0, NULL, '2018-07-20 19:48:25', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (254, '3774fe0f4ff00bc9e5e15a70fda4e61f', 'cahyadisisca@gmail.com', 'Sisca', 'Cahyadi', '8998478799', NULL, '1', 2, 0, 0, 0, NULL, '2018-07-23 01:33:58', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (255, '248455207a0f6f12efd0313cfe03022c', 'steffanydavina15@gmail.com', 'Steffany Davina', 'Putri', '81311591252', NULL, '1', 2, 0, 0, 0, NULL, '2018-07-24 08:46:57', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (256, '5a7b9331bd7be227dac69b02e8f7c8cf', 'cyntiamanurung23@yahoo.com', 'CYNTIA ', 'MANURUNG ', '82267678507', NULL, '1', 2, 0, 0, 0, NULL, '2018-07-24 11:59:53', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (257, 'f8bd5187d1180168c325d876684c92b9', 'naomi.wulansari@gmail.com', 'Naomi Fitri', 'Wulansari', '8559862690', NULL, '1', 2, 0, 0, 0, NULL, '2018-07-25 20:43:05', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (258, '583c002ac42abf7764df784b47f7443e', 'rafaelmarcelino100200@gmail.com', 'Marcelino', 'Rafael', '81271195514', NULL, '1', 2, 0, 0, 0, NULL, '2018-07-27 06:54:35', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (259, 'd7b8cf0a3f6d2f5e3a6b804bd546a183', 'cynthia.putriwijaya28@gmail.com', 'cynthia', 'putri', '81703004999', NULL, '1', 2, 0, 0, 0, NULL, '2018-07-30 03:52:57', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (260, 'bf85ea938783eae74761223472255bba', 'fkumarga@gmail.com', 'fernaldy', 'kumarga', '81214905295', NULL, '1', 2, 0, 0, 0, NULL, '2018-07-30 04:11:48', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (261, 'f02a75e0779c73531bead8d7452126c1', 'wildan.sh13@gmail.com', 'Muhammad', 'Wildan', '81336557233', NULL, '1', 2, 0, 0, 0, NULL, '2018-07-30 05:04:00', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (262, 'af3835b172952cb913c5f4d89ea0f12f', 'valentinobenhur3@gmail.com', 'Valentino', 'Benhur', '81294047710', NULL, '1', 2, 0, 0, 0, NULL, '2018-07-31 03:49:42', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (263, 'b7c065c3712443496051a0f55214a13c', 'mukti_ramz@yahoo.com', 'ALBERT', 'WANNERY', '81277878127', NULL, '1', 2, 0, 0, 0, NULL, '2018-08-04 23:13:23', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (264, 'fe877f8c840cf3e1bd30ed6844458244', 'harry.vanaheim@gmail.com', 'Hary', 'Ardika', '82299009430', NULL, '1', 2, 0, 0, 0, NULL, '2018-08-05 18:15:11', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (265, '2695b01f30c5f9f6c5aca2ff9f7be8e0', 'matthewboyprtm@gmail.com', 'Matthew', 'Boy Pratama', '81808389898', NULL, '1', 2, 0, 0, 0, NULL, '2018-08-06 20:58:15', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (266, '1e747ddbea997a1b933aaf58a7953c3c', 'whiwdon@kwikkiangie.ac.id', 'Whiwdon', 'Hwang', '61822520525', NULL, '1', 2, 0, 0, 0, NULL, '2018-08-07 03:51:11', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (267, '7e5a3f3f0d9a393f917d490b848fe696', 'febrionika25@gmail.com', 'Febri', 'Onika', '89630588536', NULL, '1', 2, 0, 0, 0, NULL, '2018-08-08 02:55:22', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (268, 'ea9883c4ed76ad11ac038fa267f00c9b', 'handikaheriandy01@gmail.com', 'Handika', 'Heriandy', '82297405276', NULL, '1', 2, 0, 0, 0, NULL, '2018-08-08 08:16:41', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (269, 'dbb087ccb57eb18a60c085d597bdc37e', 'mrk3v1ns@gmail.com', 'Kevin', NULL, '87807102001', NULL, '1', 2, 0, 0, 0, NULL, '2018-08-09 02:51:42', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (270, '8794d84d8ca49b8d6793275f43bc5a8b', 'xxdragonoid18@gmail.com', 'fernaldy', 'kumarga', '0', NULL, '1', 2, 0, 0, 0, NULL, '2018-08-09 22:02:48', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (271, 'abc279678c96b4c6bd402e6c0434f39d', 'rafli.nofianto@yahoo.com', 'rafli', 'nofianto', '87887958106', NULL, '1', 2, 0, 0, 0, NULL, '2018-08-13 01:13:58', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (272, '4d7f185effe30c44ee2d6d186acf2a0f', 'barullymagdaleg4@gmail.com', 'Barully', 'Magdalena G', '81294214744', NULL, '1', 2, 0, 0, 0, NULL, '2018-08-13 05:15:23', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (273, 'e2bac87f415ea16e2162b12148496656', 'angaasaputra3@gmail.com', 'Angga ', 'Saputra', '8158174033', NULL, '1', 2, 0, 0, 0, NULL, '2018-08-13 23:19:22', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (276, '5b81e82217c82424c6c4e7edb900f26e', 'nathasya.alexandra@gmail.com', 'nathasya', 'alexandra', '81806541919', NULL, '1', 2, 0, 0, 0, NULL, '2018-08-18 11:53:55', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (278, 'c8837b23ff8aaa8a2dde915473ce0991', 'haikalbordir@yahoo.com', 'Haikal', 'Mukarom', '81320447259', NULL, '1', 2, 0, 0, 0, NULL, '2018-08-23 23:16:47', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (279, '370adc82637120a2efab7537b11c4edb', 'juliana.ling2@gmail.com', 'Juliana', 'Wijaya', '85216397062', NULL, '1', 2, 0, 0, 0, NULL, '2018-08-24 05:24:43', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (280, 'a59fc813219b4a97f81a28bfd3c5a9cf', 'felikalie@gmail.com', 'Felika Nathalie ', 'Hidayat', '82215898686', NULL, '1', 2, 0, 0, 0, NULL, '2018-08-26 02:08:06', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (281, '3edf34855dc809172582a8f195b37fc3', 'abu.gnob@gmail.com', 'Kevin', NULL, '85782554679', NULL, '1', 2, 0, 0, 0, NULL, '2018-08-28 02:27:52', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (282, '915bd2700338e1b397a8a16a9afe5fe7', 'tiga_031199@yahoo.com', 'Yehezkiel', 'Bryan', '8161973086', NULL, '1', 2, 0, 0, 0, NULL, '2018-08-29 11:10:32', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (283, 'cd4390c75ef59b7254108157c13cfd16', 'melzarpesik@gmail.com', 'Melzar Derush Jack ', 'Pesik', '82113100753', NULL, '1', 2, 0, 0, 0, NULL, '2018-09-01 22:35:52', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (284, '35f2484222d2c81e5c88b0820168ef28', '73kevin.tan@gmail.com', 'Kevin', 'Tanaka', '82299913899', NULL, '1', 2, 0, 0, 0, NULL, '2018-09-02 07:26:20', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (285, '268571d2cfdc1ab51cb796ef12f15ac7', 'stephanie.christian1311@yahoo.co.id', 'Stephanie', 'Christian', '82297087892', NULL, '1', 2, 0, 0, 0, NULL, '2018-09-04 02:44:28', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (286, 'fd839b8accae1cd7951b8f9445693b89', 'selviaacensmkn1pkp@gmail.com', 'Selvia', 'Acen', '82179097399', NULL, '1', 2, 0, 0, 0, NULL, '2018-09-08 01:42:59', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (288, 'bb113b4575c8b2bdc4aeb72d75dc05a5', 'Denzjr30@gmail.com', 'Deni', 'Wong', '831482253405', NULL, '1', 2, 0, 0, 0, NULL, '2018-09-15 23:44:31', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (289, '6165b8ff4708b57564deb6f7bcad1351', 'bryant.orlando17@gmail.com', 'Bryant', 'Orlando', '85211110063', NULL, '1', 2, 0, 0, 0, NULL, '2018-09-16 01:14:09', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (290, 'dd92cb59a83b55c5ca737ee7170163ec', 'amonelon@yahoo.com', 'whiwdon', 'youzhou', '81905251587', NULL, '1', 2, 0, 0, 0, NULL, '2018-09-16 18:41:14', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (292, '357c5eaefeda3bf103d525b58d3fef73', 'bambang@gmail.com', 'bambang', 'cihuy', '12456', NULL, '1', 2, 0, 0, 0, NULL, '2018-09-17 20:53:18', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (293, '217ebe3d8d5f56d0b075ad5bdbfe67b1', 'Raullwijaya@gmail.com', 'Andrian ', 'Saputra wijaya ', '85392031159', NULL, '1', 2, 0, 0, 0, NULL, '2018-09-18 06:10:35', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (294, '85c3b81614695920116bae3f06296aea', 'tiaramilenia6@gmail.com', 'Tiara', 'Milenia', '82177778788', NULL, '1', 2, 0, 0, 0, NULL, '2018-09-20 21:51:36', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (295, 'f51552175c6c4c904c16b7558f036a57', 'juliuscaesar449@gmail.com', 'Julius', 'Susanto', '82289487121', NULL, '1', 2, 0, 0, 0, NULL, '2018-09-21 21:28:03', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (296, 'd6b531a91b0b33f40a28185417341762', 'tibotabo45@gmail.com', 'Tibo', 'Tabo', '81369246767', NULL, '1', 2, 0, 0, 0, NULL, '2018-09-21 22:55:07', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (297, 'ab5a7212fba1010592a35502da204f07', 'tiarakiara44@gmail.com', 'Tiara', 'Kiara', '82563454848', NULL, '1', 2, 0, 0, 0, NULL, '2018-09-21 23:08:28', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (298, '991ea63aff13139f036ba15b716a25bc', 'vandatrica@gmail.com', 'Vanda Trica', 'Janne', '85381900271', NULL, '1', 2, 0, 0, 0, NULL, '2018-09-22 06:26:10', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (299, '95116c076deabfa2d89f3ccad885db4c', 'oktavia2301@gmail.com', 'Oktavia', NULL, '85381110092', NULL, '1', 2, 0, 0, 0, NULL, '2018-09-22 07:24:18', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (300, 'b2135a8478f04a16fe1d7fa0f26a6231', 'delarosepratesia@gmail.com', 'DELAROSE PRATESIA', 'SUNDJOKO', '81278902293', NULL, '1', 2, 0, 0, 0, NULL, '2018-09-22 23:46:43', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (301, '2382bf9e9dffa87d3e8af4231170ce08', 'cindyfransiska29@icloud.com', 'cindy', 'fransiska', '82154727814', NULL, '1', 2, 0, 0, 0, NULL, '2018-09-25 07:52:50', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (302, '14c59ab0303331af4b2f5154f425f126', 'vaticachrissan@gmail.com', 'Vatica', 'Chrissan', '85248571018', NULL, '1', 2, 0, 0, 0, NULL, '2018-10-11 04:42:24', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (303, 'd2620b0b669a5074bc20a29776ce3a8a', 'micheleagreria@yahoo.co.id', 'Jovita', NULL, '82256234761', NULL, '1', 2, 0, 0, 0, NULL, '2018-10-16 08:05:30', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (304, 'b3d29f7b609eb644b32a8bae5cb3d316', 'mariakristina1995@gmail.com', 'maria cristina', 'sama', '81219478422', NULL, '1', 2, 0, 0, 0, NULL, '2018-10-21 21:04:28', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (305, 'faff2a1e1fa0232321d358190503494b', 'jericholukas@gmail.com', 'Jericho', 'Lukas', '89630652705', NULL, '1', 2, 0, 0, 0, NULL, '2018-10-27 07:18:12', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (306, '827ccb0eea8a706c4c34a16891f84e7b', 'yohjeppi@gmail.com', 'Yohanes', 'Jeffi', '8123456789', NULL, '1', 2, 0, 0, 0, NULL, '2018-10-29 04:31:50', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (307, '3995363cad671a9b1e7dd4a9d00ae312', 'lenlencella@gmail.com', 'Marlene', 'Marcella', '81318859982', NULL, '1', 2, 0, 0, 0, NULL, '2018-10-29 04:36:46', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (308, 'db9cf8771fa95f63545fa5c9966257c0', 'barusdellaintan@gmail.com', 'Della Intan', 'Barus', '81357311066', NULL, '1', 2, 0, 0, 0, NULL, '2018-10-30 19:40:10', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (309, '0ea4767df9e6789f48011066234fc24a', '2ivanrianto2@gmail.com', 'Ivan', 'Rianto', '8986735909', NULL, '1', 2, 0, 0, 0, NULL, '2018-11-01 02:43:58', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (310, '21eb8fc886622f0aa80b582c98083470', 'ragilkumala1@gmail.com', 'Fortuna Ragil', 'Kumala', '81270288281', NULL, '1', 2, 0, 0, 0, NULL, '2018-11-11 20:15:10', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (311, 'accdf7b6b0fea87806f7b3d830e5c44b', 'bryan.ivando@gmail.com', 'Bryan', 'Ivando', '822899855957', NULL, '1', 2, 0, 0, 0, NULL, '2018-11-16 22:03:53', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (312, 'e7db87758fff85cabad891ee0e74c902', 'Leonardlim2001@gmail.com', 'Leonard', 'Limanto Dai', '82188111138', NULL, '1', 2, 0, 0, 0, NULL, '2018-12-07 01:45:30', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (313, '3c6320256a35fe8bbe97738d0599cc86', 'anggaakbarn499@gmail.com', 'Angga', 'Akbar Nurhidayat', '82318172879', NULL, '1', 2, 0, 0, 0, NULL, '2018-12-12 04:20:53', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (314, 'd2714a8bf9a630f09c590cfb97463f75', 'miselsaanisdria@gmail.com', 'Miselsa A.', 'Susanto', '81291796665', NULL, '1', 2, 0, 0, 0, NULL, '2018-12-17 19:51:38', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (315, '776ba968a8c65ff7caf67a25adedc324', 'daffafahrezi12@gmail.com', 'Daffa', 'Fahrezi', '42111', NULL, '1', 2, 0, 0, 0, NULL, '2018-12-21 01:37:23', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (316, '4e6fabe4505edfc0a91ea7c5872f2134', 'rickywahyuever@gmail.com', 'ricky', 'wahyu', '81908886127', NULL, '1', 2, 0, 0, 0, NULL, '2018-12-21 02:53:06', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (317, 'e2a0d57982675336f24c3f7475b06c48', 'aminmaruf006@gmail.com', 'Benyamin', 'Subandar', '8811711588', NULL, '1', 2, 0, 0, 0, NULL, '2019-01-01 23:18:05', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (318, '5a55c801739a02adeb6da684b394b072', 'natasyaadea77@gmail.com', 'dea', 'natasya', '81912795641', NULL, '1', 2, 0, 0, 0, NULL, '2019-01-13 09:04:47', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (319, '709725590152f7976d005dda1e8ce2c6', 'artus1811@gmail.com', 'Quartus', 'Dominicus', '81281163468', NULL, '1', 2, 0, 0, 0, NULL, '2019-01-13 22:44:04', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (320, 'b896ccfcc02e8a1eccb20df8c07b2860', 'khesyaivena2708@gmail.com', 'Khesya', 'Ivena', '87885204190', NULL, '1', 2, 0, 0, 0, NULL, '2019-01-15 07:32:07', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (322, 'ed912a2a78075a6537cdef6dd7f738eb', 'marthaully029@gmail.com', 'Martha', 'Ully', '81776954382', NULL, '1', 2, 0, 0, 0, NULL, '2019-01-27 04:59:38', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (323, '43bf978f395615d4fadc1bdb2a52f8d8', 'sayaerika54@gmail.com', 'Erika', 'widi', '82330371613', NULL, '1', 2, 0, 0, 0, NULL, '2019-01-31 04:42:15', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (324, '83c81a29f943e2ef3015b9749787d23d', 'rafidayumna3@gmail.com', 'Rafida Intiha ', 'Yumna', '81238622492', NULL, '1', 2, 0, 0, 0, NULL, '2019-02-02 22:21:56', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (325, '664194e046aa2dd073b17999f0bff32c', 'patriciawidjaja1@gmail.com', 'patricia', 'simadibrata', '85959635676', NULL, '1', 2, 0, 0, 0, NULL, '2019-02-06 14:11:28', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (326, '35f37e143f26075e6c4e2fd79347fd87', 'ireungblack02@gmail.com', 'Muhammad Alhidayah', 'Indra Waspada', '82293332229', NULL, '1', 2, 0, 0, 0, NULL, '2019-02-19 01:27:51', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (327, 'aeaa7deb0b1f551828a0e68ec63e28bc', 'tc.danil118@gmail.com', 'TOGI', 'CRISTO DANIEL', '85893191756', NULL, '1', 2, 0, 0, 0, NULL, '2019-02-19 06:06:52', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (328, 'fb0160dcd7082de7d484867fff63f219', 'zuanshu95@gmail.com', 'Kriatian', 'Lumia', '81326485175', NULL, '1', 2, 0, 0, 0, NULL, '2019-02-22 05:17:27', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (329, 'edfa03bb5d8a6b2e98b5154ec6dd8a9c', 'leovanderangritan1995@gmail.com', 'Vander', 'Tan', '82343490359', NULL, '1', 2, 0, 0, 0, NULL, '2019-02-22 05:21:20', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (330, '55cd20a81cfc71aec28694116564be71', 'remeildutu@gmail.com', 'Remel', 'Dutu', '85343490632', NULL, '1', 2, 0, 0, 0, NULL, '2019-02-23 22:41:26', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (331, '78022499e8e0eae4ee09d3457132aa73', 'e.gunawan39@yahoo.com', 'Edwin ', 'Gunawan ', '85777445401', NULL, '1', 2, 0, 0, 0, NULL, '2019-02-28 03:12:25', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (332, '2160e134f3dff2467c2af0dc3ca4d3cc', 'gilbertjapinjapin@gmail.com', 'Gilbert ', 'Japind', '8821008164', NULL, '1', 2, 0, 0, 0, NULL, '2019-02-28 05:10:44', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (333, '03d7df368df4565be82a826c55851edb', 'valchrs23@gmail.com', 'Val', 'Chrs', '81248314434', NULL, '1', 2, 0, 0, 0, NULL, '2019-03-02 06:05:07', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (334, '81feb7b3b3dd6d4450de6ffa310fb5d1', 'catagatha19@gmail.com', 'Cathtrine', 'Agatha', '8974113732', NULL, '1', 2, 0, 0, 0, NULL, '2019-03-03 22:36:32', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (335, '16999cccbcc55edaae9da2628cd09e59', 'rima33331@gmail.com', 'Rima', NULL, '85819215996', NULL, '1', 2, 0, 0, 0, NULL, '2019-03-06 02:40:23', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (336, '77ab66af9a736e2989bf358344775932', 'yookson21@gmail.com', 'Sonia', 'Valentina', '85733920197', NULL, '1', 2, 0, 0, 0, NULL, '2019-03-08 22:45:47', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (337, 'a3cc9bd4afbfd28060356294d52ee7f5', 'sam.miquel17@gmail.com', 'Miquel', 'Gloria', '87711179578', NULL, '1', 2, 0, 0, 0, NULL, '2019-03-11 01:20:54', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (338, '7b48b85481bf76afd4de88e5090f1d50', 'stefanimchris@gmail.com', 'Stefani', 'Muchris', '87888787485', NULL, '1', 2, 0, 0, 0, NULL, '2019-03-13 20:12:31', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (339, '91046396c8814d6deb38b58237599bea', 'angiegbrl001@Gmail.com', 'angie', 'gabriella', '85777338179', NULL, '1', 2, 0, 0, 0, NULL, '2019-03-16 12:02:08', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (340, 'e553a25da8519310d7e8a1c347dcd954', 'sylviayap888@gmail.com', 'Sylvia', 'Yap', '8176642929', NULL, '1', 2, 0, 0, 0, NULL, '2019-03-18 22:42:14', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (341, '8a3b42a970a38a222cca629500214834', 'niken_sekar@yahoo.co.id', 'Niken', 'Sekar', '87778899727', NULL, '1', 2, 0, 0, 0, NULL, '2019-03-19 09:28:19', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (342, '64c53a52cb3bd1a01c03a64db985c0cc', 'randysohan30@gmail.com', 'Randy', 'Sohan', '87785270760', NULL, '1', 2, 0, 0, 0, NULL, '2019-03-19 23:55:46', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (343, 'a9be790f74a5550796643eadb2b4db1e', 'johnmorrison196@gmail.com', 'Randy', 'Sohan', '87785270760', NULL, '1', 2, 0, 0, 0, NULL, '2019-03-19 23:58:22', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (344, 'efa71291999bc5effcb3a9ffc1fb6c89', 'bahtiart@rocketmail.com', 'M', 'Bahtiar', '8119232111', NULL, '1', 2, 0, 0, 0, NULL, '2019-03-21 20:00:35', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (345, '8a3b42a970a38a222cca629500214834', 'nikentt727@gmail.com', 'Niken', 'Ayu', '816934271', NULL, '1', 2, 0, 0, 0, NULL, '2019-03-22 08:33:57', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (346, '5d90f5350541392131dc21620160c5c8', 'destiapratiwi18@gmail.com', 'desti', 'pratiwi', '82173112302', NULL, '1', 2, 0, 0, 0, NULL, '2019-03-26 00:20:50', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (347, '8a3b42a970a38a222cca629500214834', 'niken.ttnn@gmail.com', 'Niken', 'Sekar', '87778899727', NULL, '1', 2, 0, 0, 0, NULL, '2019-03-27 22:20:31', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (348, 'ed14c50764b801587d62172179b0a0b2', 'daudfernando70@gmail.com', 'Mikhael', 'Fernando', '89636637399', NULL, '1', 2, 0, 0, 0, NULL, '2019-03-28 08:28:43', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (349, '4034b7bf207f63bb814bc3f4db0f4b26', 'hnuryana11@gmail.com', 'Hadi', 'Nuryana', '89671336470', NULL, '1', 2, 0, 0, 0, NULL, '2019-04-09 14:35:54', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (350, 'f3ebbf08bbdc96238a85cd39842d6052', 'vincadheasuprapto@gmail.com', 'Vinca', 'Dhea', '817184162', NULL, '1', 2, 0, 0, 0, NULL, '2019-04-13 02:22:15', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (351, 'c97cd36ac68178196ba287fca69426e0', 'abenghindrawan74@gmail.com', 'Abeng', 'Taniago', '89505536676', NULL, '1', 2, 0, 0, 0, NULL, '2019-04-15 01:41:44', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (352, 'f8b7f3366e6f60f2d0ea7ebac05a53d0', 'nabilutfi10@gmail.com', 'M Nabil', 'Luthfiandi ', '81293153132', NULL, '1', 2, 0, 0, 0, NULL, '2019-04-16 08:11:30', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (353, 'a748b103f6f3253aa67cf9827d4f5406', 'hazeljeremy2907@gmail.com', 'Hazel', 'Jeremy', '87888128495', NULL, '1', 2, 0, 0, 0, NULL, '2019-04-22 01:42:54', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (354, 'f536378d3b07d4b755d096e63371b1c6', 'diptapradanaputra@gmail.com', 'I GEDE DIPTA', 'PRADANA PUTRA', '8129489085', NULL, '1', 2, 0, 0, 0, NULL, '2019-04-22 02:43:46', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (355, '827ccb0eea8a706c4c34a16891f84e7b', 'fransiska.edriyani@kwikkiangie.ac.id', 'siska', 'edriyani', '81279990002', NULL, '1', 2, 0, 0, 0, NULL, '2019-04-23 02:20:55', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (356, 'e55f50ec2c8ffb2fae18bd84b1987909', 'izzudin.robani@yahoo.com', 'Daud Izzudin', 'Robani', '82240178031', NULL, '1', 2, 0, 0, 0, NULL, '2019-04-24 06:53:50', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (357, '1cdbb40f242297b53243f2b5f1d6f37e', 'michelleangelyn2@gmail.com', 'Michael', 'Gorin', '89669959123', NULL, '1', 2, 0, 0, 0, NULL, '2019-04-24 23:31:26', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (358, 'c9dec618ff00b99051af10573241f3f7', 'patricia.antouw@gmail.com', 'patricia', 'a antouw', '81282156723', NULL, '1', 2, 0, 0, 0, NULL, '2019-04-25 10:12:52', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (359, '5492a446f37e8593f47542656147218e', 'selvilim94@gmail.com', 'Selvi', 'Lim', '81219395052', NULL, '1', 2, 0, 0, 0, NULL, '2019-04-28 20:56:12', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (360, '07bf3a2896e2145216f37bb79ce3c7cd', 'pipitpuputpopot@gmail.com', 'fitriah', 'andika', '89628649103', NULL, '1', 2, 0, 0, 0, NULL, '2019-04-29 00:09:37', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (361, '713a920d41cf9d962f6d3fd36338d115', 'alphadeltaecho17@yahoo.co.id', 'ade`', 'rizky', '896123456', NULL, '1', 2, 0, 0, 0, NULL, '2019-05-02 20:46:58', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (362, '95e2e016c8b8832d93934e1ba50f8629', 'umartholib08@gmail.com', 'Ahmad mifta hunddin', 'Tholib', '83166303487', NULL, '1', 2, 0, 0, 0, NULL, '2019-05-05 19:36:42', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (363, '934437fb4307c7ffc2390d47ce77b089', 'khoirunnisaicha091@gmail.com', 'Icha', 'Khoirunnisa', '81211759607', NULL, '1', 2, 0, 0, 0, NULL, '2019-05-05 20:14:37', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (364, '176ea837370c75b997b60231f6e33487', 'ejjhendra16@gmail.com', 'hendra', 'kurniawan', '82152559782', NULL, '1', 2, 0, 0, 0, NULL, '2019-05-05 21:43:23', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (365, '119131acd085f4fdd1a836d3f66d3da2', 'Jillcarolina1@gmail.com', 'Jill', 'Kawilarang', '82329494777', NULL, '1', 2, 0, 0, 0, NULL, '2019-05-08 08:19:33', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (366, 'bfac71ca1cda4baa70b9b6a1a77d013d', 'anandaalamsyah12@gmail.com', 'Ananda', 'Jerome', '82266094908', NULL, '1', 2, 0, 0, 0, NULL, '2019-05-15 00:27:49', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (367, '317cbc7e9c94dc921fe5f7021386c074', 'izdiharinti@gmail.com', 'Izdihar', 'Intishar', '83898166921', NULL, '1', 2, 0, 0, 0, NULL, '2019-05-20 02:53:38', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (368, 'e1532e0bcf4754be7fb77d001b5e6f27', 'Ditayuliasriw@gmail.com', 'Dita', 'Yulia', '89681207508', NULL, '1', 2, 0, 0, 0, NULL, '2019-05-25 20:21:52', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (369, '902709d8ca03809c4977ca15a5f58112', 'dwypuspita909@gmail.com', 'Rany', 'Puspita', '895372859473', NULL, '1', 2, 0, 0, 0, NULL, '2019-05-27 20:53:31', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (370, '735b576bdaf28cafaa3475ab3393837c', 'sultanrafirabbani@gmail.com', 'Sultan', 'Rafi', '81806871212', NULL, '1', 2, 0, 0, 0, NULL, '2019-05-30 20:31:39', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (371, '7d074dbcc5896bc30ef097979a762acf', 'artheasaskia@gmail.com', 'saskia', 'widjojo', '81310088212', NULL, '1', 2, 0, 0, 0, NULL, '2019-06-04 20:24:51', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (373, '6b4c0aca200fe04be7df17c1757b9c10', 'Raflio7267@gmail.com', 'Muhammad', 'Abyzar', '87754523939', NULL, '1', 2, 0, 0, 0, NULL, '2019-06-12 04:59:55', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (374, 'c5f1a20d1c50da0147136d967986a3b5', 'audreygloriac@gmail.com', 'AUDREY GLORYA', 'CRESENTIA', '87781084548', NULL, '1', 2, 0, 0, 0, NULL, '2019-06-18 04:49:35', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (375, '4369cce9171db51e9ccc8462eb8216a9', 'racheljessicanav@gmail.com', 'Rachel', 'Jessica', '895358286652', NULL, '1', 2, 0, 0, 0, NULL, '2019-06-18 22:51:16', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (376, '43d516cba60f9fd2eecd045570c84b90', 'luxmanputrajaya@gmail.com', 'luxman', 'hia', '81385409203', NULL, '1', 2, 0, 0, 0, NULL, '2019-06-19 01:05:01', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (377, '2e356d2f3757f47ba14c1fe26707f1cf', 'dewirinawatihrp@gmail.com', 'Dewi Rinawati', 'Harahap', '81311363500', NULL, '1', 2, 0, 0, 0, NULL, '2019-06-20 10:17:52', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (378, 'd2ccf61dbb069b456a44a57abd95f994', 'andrisidabutar@gmail.com', 'andri', 'sidabutar', '81288562432', NULL, '1', 2, 0, 0, 0, NULL, '2019-06-22 23:53:14', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (379, '56fe6f7b82aa3f98ac962f2ca8e39de0', 'fanuelthrodorus@gmail.com', 'Fanuel', 'Theodorus', '85347459360', NULL, '1', 2, 0, 0, 0, NULL, '2019-06-24 22:17:25', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (380, '3edf34855dc809172582a8f195b37fc3', 'abu.gonb@gmail.com', 'Kevin', NULL, '85782554679', NULL, '1', 2, 0, 0, 0, NULL, '2019-07-02 21:24:11', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (381, 'e10adc3949ba59abbe56e057f20f883e', 'laoli3600@gmail.com', 'Chrisdianto foarota', 'Laoli', '81269880182', NULL, '1', 2, 0, 0, 0, NULL, '2019-07-07 22:28:32', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (382, 'e10adc3949ba59abbe56e057f20f883e', 'laolo3600@gmail.com', 'Chrisdianto foarota ', 'Laoli', '81269880182', NULL, '1', 2, 0, 0, 0, NULL, '2019-07-07 22:29:56', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (383, '07d2ff2309f5a66867a73251b3752418', 'jenniferevelynns01@gmail.com', 'jennifer', 'raini', '81385459108', NULL, '1', 2, 0, 0, 0, NULL, '2019-07-09 20:25:10', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (384, '5c93f89aa6ba5553346382e316f3a2ed', 'shindy.nur9@gmail.com', 'Shindy Nur Fadhila', 'Putri', '87878666561', NULL, '1', 2, 0, 0, 0, NULL, '2019-07-10 04:25:00', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (385, 'b2084312a6279b08f0d2a15f532f43d4', 'lhakim848@gmail.com', 'Wynne', 'Nurul Faizah', '8989068999', NULL, '1', 2, 0, 0, 0, NULL, '2019-07-11 06:42:22', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (386, '494922092d9149ddd2ebb927b007e1ac', 'Angelnurha@gmail.com', 'Syahfira', 'Angela', '82120010056', NULL, '1', 2, 0, 0, 0, NULL, '2019-07-13 18:30:09', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (387, '72b52fbe83dcb09706cdf6be4f107d61', 'sheilstvnny@gmail.com', 'Sheila ', 'Stevanny ', '8561177988', NULL, '1', 2, 0, 0, 0, NULL, '2019-07-15 03:07:31', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (388, '50bb0a06dbf36f62894cc809fac1adff', 'nataliaawu20@gmail.com', 'Natalia', 'Gabrielle', '87880203720', NULL, '1', 2, 0, 0, 0, NULL, '2019-07-16 13:23:25', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (389, 'b0a6fd997af8f97cda5767f7190a317f', 'tiodoramanik27@gmail.com', 'Tio', 'Dora Manik', '82287508613', NULL, '1', 2, 0, 0, 0, NULL, '2019-07-22 05:08:43', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (390, '4b0dfcca67018590a4a736aa21fc3c96', 'angelychiaraja@gmail.com', 'Juliana', 'Angelina', '82284625043', NULL, '1', 2, 0, 0, 0, NULL, '2019-07-25 23:35:23', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (391, 'a951f20de60308ab4d44bd8985606d56', 'ameliavernandasaniago@yahoo.com', 'amelia', 'vernanda', '87886594117', NULL, '1', 2, 0, 0, 0, NULL, '2019-07-27 08:24:39', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (392, 'ba5cb94feacd0281f3a20ead9c43ef51', 'gultompea16@gmail.com', 'Pius Sinivasan', 'Gultom', '89655695854', NULL, '1', 2, 0, 0, 0, NULL, '2019-07-30 01:37:18', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (393, '1c0915eac7678a1b55188b14690366d4', 'jimmyfederik@gmail.com', 'Jimmy ', 'frederick laison', '85779151009', NULL, '1', 2, 0, 0, 0, NULL, '2019-07-31 09:42:06', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (394, '490dfc896b4d617dfee6cc8d8a87cbca', 'alinmanurung13@gmail.com', 'Leonita Rafeline', 'Manurung', '87885100410', NULL, '1', 2, 0, 0, 0, NULL, '2019-07-31 22:34:43', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (395, '3f2fcbb8286bcc5c5c10b039da21301e', 'ramaaers@gmail.com', 'ramadan pratama', 'achmad', '87774006284', NULL, '1', 2, 0, 0, 0, NULL, '2019-08-04 17:26:25', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (396, '138e58c29d0732988d9f10d55abcbd75', 'xuestevictor10@gmail.com', 'Victor', 'Tanoto', '87887863743', NULL, '1', 2, 0, 0, 0, NULL, '2019-08-04 23:02:07', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (397, 'bb263ce65345f7fff71207bdb03bb6d5', 'Novianalita789@gmail.com', 'Rizky Nur Analita', NULL, '85945567050', NULL, '1', 2, 0, 0, 0, NULL, '2019-08-05 03:20:29', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (398, '059d9e01176ab2f0892fe2215835bf19', 'angelappatricia@gmail.com', 'Angela Patricia ', 'Narpati ', '8161937646', NULL, '1', 2, 0, 0, 0, NULL, '2019-08-07 09:02:23', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (399, '9f980c626b96ad37eb0985ba97275356', 'Wahyurina656@gmail.com', 'Wahyu Rina', 'Octaviani', '89634478573', NULL, '1', 2, 0, 0, 0, NULL, '2019-08-07 16:50:43', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (400, 'd41458e9718a4b5f7ce84166962d4b61', 'bahrialfath@gmail.com', 'bahri', 'alfath', '82182600599', NULL, '1', 2, 0, 0, 0, NULL, '2019-08-08 00:16:32', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (401, 'bec5c2ec524559a2d4cb71e203e298a9', 'septianymnl@yahoo.com', 'Septiany', NULL, '895602135056', NULL, '1', 2, 0, 0, 0, NULL, '2019-08-11 00:33:50', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (402, 'be4514382470ccd872481437b3ce9eb6', 'vonnysuryani@gmail.com', 'Vonny', 'Suryani', '87887442644', NULL, '1', 2, 0, 0, 0, NULL, '2019-08-11 06:41:49', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (403, '30fe6f0c14836e80a2100661ed8613f4', 'ndaacr25@gmail.com', 'Indah', 'Khoir Rizki', '87770982547', NULL, '1', 2, 0, 0, 0, NULL, '2019-08-11 23:52:54', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (404, '47fbb28ee98a46412c6dea70241a6001', 'yurieblade@gmail.com', 'YURIE', NULL, '82281644879', NULL, '1', 2, 0, 0, 0, NULL, '2019-08-19 01:43:08', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (405, 'b70175e0d1bc62c346c6c6fb60f224f1', 'enricoferchai@gmail.com', 'Enrico', 'Fernando Chai', '81290524343', NULL, '1', 2, 0, 0, 0, NULL, '2019-08-19 02:47:08', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (406, '62852dc21423b15e6b57dab7e7dda6bc', 'sisi@yahoo.com', 'sisi', NULL, '81288797867', NULL, '1', 2, 0, 0, 0, NULL, '2019-08-20 04:31:08', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (407, 'cb3cf324f6062aacfd485f1b17ec6070', 'cho@yahoo.com', 'cho', NULL, '8123456789', NULL, '1', 2, 0, 0, 0, NULL, '2019-08-20 08:03:02', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (408, 'f2b616f0a46ea1b96574658f96809492', 'vinything@gmail.com', 'Viny', 'Angreni', '82158709639', NULL, '1', 2, 0, 0, 0, NULL, '2019-08-21 04:05:01', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (409, '6214927412c1a31882e7457f4e77c8f9', 'ferbi14fs@gmail.com', 'ferbi', 'sari', '81288850514', NULL, '1', 2, 0, 0, 0, NULL, '2019-08-23 18:17:26', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (410, 'e117f674d2668c077211e1553da3cdb2', 'thisisclara.bie@gmail.com', 'Clara', 'Bianca', '89662521517', NULL, '1', 2, 0, 0, 0, NULL, '2019-08-26 01:23:13', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (411, '0af5a18b4a3e69e7c44197100898f6b0', 'stefaniesurya123@gmail.com', 'Stefanie', 'Surya', '85697958752', NULL, '1', 2, 0, 0, 0, NULL, '2019-08-26 09:06:20', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (412, '2fbcb17aa54d330e723718f1fe97345c', 'devianan3@gmail.com', 'Deviana', 'Nainggolan', '8128363291', NULL, '1', 2, 0, 0, 0, NULL, '2019-08-29 18:46:01', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (413, 'faae8d42369925100df876fe10fbf0f2', 'svirnzovski8462@gmail.com', 'Kevin', 'Ismaya', '87889096232', NULL, '1', 2, 0, 0, 0, NULL, '2019-08-30 19:48:15', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (414, '5f9e0189050a5ef81ec586617569775e', 'zuliet02@gmail.com', 'Zuliet', 'Pricilya', '82149637652', NULL, '1', 2, 0, 0, 0, NULL, '2019-09-01 22:32:17', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (415, 'f1b16665e777f7d16fa1ebaf9c322c20', 'danielchandra007@gmail.com', 'Daniel', 'Chandra', '81285590925', NULL, '1', 2, 0, 0, 0, NULL, '2019-09-02 21:20:30', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (416, '8e2cd366b0564d9134bfd6f28a853005', 'widjayastella@gmail.com', 'Stella', 'Widjaya', '81367002985', NULL, '1', 2, 0, 0, 0, NULL, '2019-09-05 00:41:56', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (417, 'a4c1fad3319cd2ecd9c8633ae0cbfe70', 'erwinchristianto06@gmail.com', 'Erwin', 'Tambunan', '81283379085', NULL, '1', 2, 0, 0, 0, NULL, '2019-09-05 07:19:28', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (418, '0520c5365844b35e92bd7bf1e4824d38', 'alvianaribkagnes@gmail.com', 'Ribka Agnes', 'Alviana', '81277850459', NULL, '1', 2, 0, 0, 0, NULL, '2019-09-06 02:38:20', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (419, '8ea765f9f1698ec40fdb2c18c45819f4', 'kvn11liu@gmail.com', 'Kevin', 'liu', '85813521735', NULL, '1', 2, 0, 0, 0, NULL, '2019-09-06 04:51:46', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (420, 'f4dbcd4e736d51661679086a914f9d8a', 'alexareliano0902@gmail.com', 'Alex', 'Areliano Kurniawan', '81388315190', NULL, '1', 2, 0, 0, 0, NULL, '2019-09-07 03:22:37', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (421, '411cd6ee7027695a778abcd58615f66a', 'maria.ellenlim@gmail.com', 'Maria', 'Ellen', '82249011360', NULL, '1', 2, 0, 0, 0, NULL, '2019-09-13 06:50:39', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (422, 'e1171e083b48e2f3542d52271f0f377c', 'nandita.azzahra10@gmail.com', 'Nandita', 'Azzahra', '87804557746', NULL, '1', 2, 0, 0, 0, NULL, '2019-09-16 20:27:01', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (423, '151d2f58144373ca0e878712c51e5d1b', 'juar.man@yahoo.com', 'Juarman', 'Mendrofa', '85275475623', NULL, '1', 2, 0, 0, 0, NULL, '2019-09-17 03:05:45', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (424, 'caa644c3b3c05dec95f59ad738cc68e7', 'calvin.sf123@gmail.com', 'calvin', 'Shelly ', '89666094811', NULL, '1', 2, 0, 0, 0, NULL, '2019-09-18 23:17:40', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (425, '4954a3ca4f73219ec648152c7fd12460', 'stevanuswijaya6@gmail.com', 'Stevanus', 'Wijaya', '85937008585', NULL, '1', 2, 0, 0, 0, NULL, '2019-09-20 03:26:18', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (426, 'be809e4415146479b41356e6c7d20f83', 'yoanimanuelgunadi@gmail.com', 'Yoan', 'Gunadi', '81293791025', NULL, '1', 2, 0, 0, 0, NULL, '2019-09-21 08:24:23', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (427, 'f8704d14e4c656d713c864f7b163c7f3', 'eferennita@gmail.com', 'Ferennita Ezra', 'Yudita', '85718898482', NULL, '1', 2, 0, 0, 0, NULL, '2019-09-22 22:38:06', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (428, '856fc2c588ae03439c103f91439d7e01', 'falensia21@gmail.com', 'Falen', 'Sia', '85890942687', NULL, '1', 2, 0, 0, 0, NULL, '2019-09-25 07:15:01', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (429, 'fb385b965182b0a4493a51fcf46a450b', 'wtkp86@gmail.com', 'William Teguh', 'Karya Putra', '811112386', NULL, '1', 2, 0, 0, 0, NULL, '2019-09-26 19:54:34', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (430, '7c82f58c0e26782e64e1a8c54567e720', 'gtachan26@gmail.com', 'Gita', 'Chandra', '82284497505', NULL, '1', 2, 0, 0, 0, NULL, '2019-09-27 10:59:00', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (431, '3bbdc54026bfba4ddc9460247b904227', 'michaelyomyo@gmail.com', 'Jonathan Michael ', 'Yogananta', '89619217172', NULL, '1', 2, 0, 0, 0, NULL, '2019-10-01 04:46:26', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (432, 'd97604c6dcc83f02c7a6c270e70d79c7', 'afedryandi@gmail.com', 'Antony', 'Fedryandi', '82279144861', NULL, '1', 2, 0, 0, 0, NULL, '2019-10-04 05:45:44', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (433, '65c1eceaad63bea1a3c6bba78755551b', 'sofyanabong@gmail.com', 'sofyan', 'wijaya', '89602428635', NULL, '1', 2, 0, 0, 0, NULL, '2019-10-07 04:12:08', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (434, 'b3c4726940c0c8cf0e0cd9e71de3df2c', 'sherly.aly12@gmail.com', 'Sherly', NULL, '83878340207', NULL, '1', 2, 0, 0, 0, NULL, '2019-10-10 05:49:59', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (435, 'f36f6c89014a59bf431aa397d99bc897', 'marcellinagatha316@gmail.com', 'agth', 'marcellina', '87818677958', NULL, '1', 2, 0, 0, 0, NULL, '2019-10-19 01:58:39', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (436, '62cbcd84c5c1280b29a09f7032894950', 'valleriemargaretha31@gmail.com', 'Vallerie', 'Margaretha', '85213964072', NULL, '1', 2, 0, 0, 0, NULL, '2019-10-19 01:58:58', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (437, 'ac819a7cbafc2c2310dcb48c9052decc', 'raissaivana@yahoo.co.id', 'Raissa', 'Ivana', '81289113703', NULL, '1', 2, 0, 0, 0, NULL, '2019-10-21 02:40:10', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (438, 'cb585c8e6c272c42d50ac2a5ce9f8f55', 'jennyferciu@gmail.com', 'Jennyfer', 'Ciugestyo', '81385824264', NULL, '1', 2, 0, 0, 0, NULL, '2019-10-24 00:40:15', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (439, '31856d6229115badb625a6141c1e2c02', 'hawvanes@gmail.com', 'Haw', 'Haw', '82112897133', NULL, '1', 2, 0, 0, 0, NULL, '2019-10-26 07:08:36', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (440, '6c770c9d316abde75da99dd04c307480', 'wlz-iam@yahoo.com', 'william', 'lie', '81285178299', NULL, '1', 2, 0, 0, 0, NULL, '2019-11-04 20:14:57', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (441, '013f35f111b5b4df4fc7935893664816', 'monicaelsbth2908@gmail.com', 'Monica', 'Elisabeth Gratia', '85959344959', NULL, '1', 2, 0, 0, 0, NULL, '2019-11-10 18:25:07', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (442, 'dfb286f4d16ef5b97ff39d4550d31f89', 'rsmanurung1909@gmail.com', 'Rico', 'Stefanus', '81394540301', NULL, '1', 2, 0, 0, 0, NULL, '2019-11-18 17:19:36', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (443, '1c0a86517aaf92bfff662db298ca4e37', 'terraheinrich18@gmail.com', 'Heinrich', 'Terra', '8975134777', NULL, '1', 2, 0, 0, 0, NULL, '2019-12-04 20:09:37', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (444, '1060694180dc69cace7f8d33003e4e98', 'almacrusita244@gmail.com', 'Alma', 'Crusita', '85217922882', NULL, '1', 2, 0, 0, 0, NULL, '2019-12-15 06:27:54', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (445, '32d79fcb71878836e05e234afe2b5ab0', 'fwijayaa43@gmail.com', 'Ferry', 'Wijaya', '82149211212', NULL, '1', 2, 0, 0, 0, NULL, '2019-12-17 04:24:34', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (446, '7d3010c11d08cf990b7614d2c2ca9098', 'gilbertnatan2901@gmail.com', 'gilbert', 'natan', '85959999376', NULL, '1', 2, 0, 0, 0, NULL, '2019-12-21 07:42:05', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (447, '6cbf0422a44be812a7a779b725d63010', 'gilbertnatan20@gmail.com', 'gilbert', 'natan', '85959999376', NULL, '1', 2, 0, 0, 0, NULL, '2019-12-21 07:46:58', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (448, 'd7db567396fd4ce56d6c54b268af1cd1', 'kurniawanadi300318@gmail.com', 'Adi', 'Kurniawan', '81513829950', NULL, '1', 2, 0, 0, 0, NULL, '2019-12-24 14:39:05', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (450, '4d7e08abb2ee5fac96bedd96335467b9', 'wiznu.aldian@gmail.com', 'wiznu', 'aldian', '81904180704', NULL, '1', 2, 0, 0, 0, NULL, '2020-01-07 18:46:11', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (451, 'c0b8b7e7fb36bd825d3c883fd2a1d8e1', 'murnipujiasih@gmail.com', 'Murni ', 'Puji Asih', '81807011990', NULL, '1', 2, 0, 0, 0, NULL, '2020-01-11 04:30:10', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (452, 'cdc919ea35ca49e4b6f5a86076685ed7', 'gabrielainri11@gmail.com', 'Gabriela', 'Angela', '81271744171', NULL, '1', 2, 0, 0, 0, NULL, '2020-01-15 19:18:12', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (453, '6100d07ada8b17b3ab6988dd4c0b7e7c', 'siauw.wei16@gmail.com', 'wei', 'wei', '81289006667', NULL, '1', 2, 0, 0, 0, NULL, '2020-01-26 07:04:53', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (455, '841cfffd70cfd72a23580af8f4a14b43', 'maria.nainggolan1111@gmail.com', '2171075301019000', 'maria', '82368528238', NULL, '1', 2, 0, 0, 0, NULL, '2020-02-16 23:29:23', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (456, '9b3e51ee2dc2484093b6a19d84da466d', 'marasih.andos@gmail.com', 'marasih', 'andos', '81219622786', NULL, '1', 2, 0, 0, 0, NULL, '2020-02-17 07:16:53', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (457, 'c40c2a7b059aecaeb7add3f8748e454e', 'Bryanfrancesco19.bf@gmail.com', 'Bryan', 'Francesco', '87777008611', NULL, '1', 2, 0, 0, 0, NULL, '2020-02-17 23:56:27', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (458, '3095fb870065081277e387fe94c9412c', 'fade.elahpg@gmail.com', 'Fadhila', 'Bintalib`', '895383154734', NULL, '1', 2, 0, 0, 0, NULL, '2020-02-25 09:31:29', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (459, '0272df9f2d9f1ac0399c40dec309b55a', 'fransiskus.sulivan@gmail.con', 'Fransiskus', 'Sulivan', '82246248488', NULL, '1', 2, 0, 0, 0, NULL, '2020-03-16 06:49:50', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (460, 'e19d5cd5af0378da05f63f891c7467af', '0831901007@kwikkiangie.ac.id', 'B', 'Hermawan', '87800170699', NULL, '1', 2, 0, 0, 0, NULL, '2020-03-17 00:44:46', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (461, '1457c0d6bfcb4967418bfb8ac142f64a', 'wilxen.sanjaya@gmail.com', 'wilxen', 'sanjaya', '85920564233', NULL, '1', 2, 0, 0, 0, NULL, '2020-03-20 03:15:35', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (462, '48cb06de20bb1ceee002bbc12b5b1191', '14644.mtr@marsudirini.com', 'Owen', 'Darmawan', '89617257438', NULL, '1', 2, 0, 0, 0, NULL, '2020-04-16 01:05:37', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (464, 'b6df6b026aa53a96de13d4faa72c920c', 'dharmakarunia24@gmail.com', 'Dharma', 'Karunia', '82113629713', NULL, '1', 2, 0, 0, 0, NULL, '2020-04-17 00:13:55', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (465, '0e330cae6499d2d3e429e5abdf07114d', 'ramadansahrul76@gmail.com', 'sahrul ', 'ramadhan', '81296294844', NULL, '1', 2, 0, 0, 0, NULL, '2020-04-22 18:59:18', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (466, '084f288ccca0be4ae63451bb77844bfb', 'zidanazmi12@gmail.com', 'Zidan', 'Azmi', '82215082061', NULL, '1', 2, 0, 0, 0, NULL, '2020-04-28 02:26:58', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (467, 'c4f79e15f8c6ed0715a8ea44aebc38d8', 'as@ajwem', 'Asdf', 'Qwerty', '450', NULL, '1', 2, 0, 0, 0, NULL, '2020-05-27 06:23:43', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (468, '7f71822ac1d9d3e3ad72ab21f40111de', 'egaaryamualim@gmail.com', 'Ega Arya', 'Mualim', '85214983242', NULL, '1', 2, 0, 0, 0, NULL, '2020-05-27 18:33:00', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (469, '48f8dc56922dba4aba7dc11eec670ce5', 'StevanSanger05@gmail.com', 'Steven', 'Sanger', '8786881829', NULL, '1', 2, 0, 0, 0, NULL, '2020-05-30 17:18:36', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (470, 'eb41bb5cb5bcc2d2c6691a70634d47f7', 'stevensanger1234@gmail.com', 'Steven', 'Sanger', '87885966543', NULL, '1', 2, 0, 0, 0, NULL, '2020-05-30 17:21:25', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (471, 'f1381029050ce825e59ee65aa3421c4c', 'yayu.zaelani@gmail.com', 'Yayu', 'Zaelani', '85701893038', NULL, '1', 2, 0, 0, 0, NULL, '2020-06-07 02:28:45', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (472, 'f50b80b7d347e94f2118bf1daf3aebe8', 'vieriawanpet@gmail.com', 'Peter', 'Vieriawan', '87781811005', NULL, '1', 2, 0, 0, 0, NULL, '2020-06-10 05:37:50', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (473, 'eb0778edead7ff5a5db0672e41204b1a', 'alfikayusuf@gmail.com', 'Alfika', NULL, '87871604073', NULL, '1', 2, 0, 0, 0, NULL, '2020-06-12 05:35:43', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (474, '6d6541784f317f3c0386185fcc6823d2', 'Halimahsyadiyah7@gmail.com', 'Halimah', 'Syadiyah ', '87878672478', NULL, '1', 2, 0, 0, 0, NULL, '2020-06-12 08:29:29', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (475, 'e6fb448feb2fa877aab63b3713027775', 'spnababan@gmail.com', 'Samuel Parulian ', 'Nababan', '81311414225', NULL, '1', 2, 0, 0, 0, NULL, '2020-06-12 22:57:02', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (476, 'b54b23213b3acab3a7a0fbe0cc83e236', 'febrykhesiahnlm@gmail.com', 'Febry Khesia', 'Hanlim', '81315958816', NULL, '1', 2, 0, 0, 0, NULL, '2020-06-13 04:30:10', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (477, '344c999a63cd55b3035cbf76c2691f88', 'nauvalalhazazie111@gmail.com', 'Nauval', 'Alhazazie', '85773252590', NULL, '1', 2, 0, 0, 0, NULL, '2020-06-14 22:30:12', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (478, '62c029eb17b40a48bb9d5e46005821bb', 'Dvi.jj24@yahoo.com', 'Devi', 'Angelin', '81219857260', NULL, '1', 2, 0, 0, 0, NULL, '2020-06-16 23:41:39', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (479, 'd8578edf8458ce06fbc5bb76a58c5ca4', 'ade.rizky@kwikkiangie.ac.id', 'ade', 'rizky', '123456789', NULL, '1', 2, 0, 0, 0, NULL, '2020-06-17 22:12:23', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (480, '880066cd340c1855397c15dc7bf5833e', 'k_yohanes888@yahoo.com', 'Kevin', 'Yohanes', '81296900928', NULL, '1', 2, 0, 0, 0, NULL, '2020-06-18 23:56:09', NULL, 'Active', NULL, NULL, NULL, NULL);
INSERT INTO `savsoft_users` VALUES (512, 'e2fc714c4727ee9395f324cd2e7f331f', 'rommi.alvian@gmail.com', 'Rommi', 'Alvian', '2349249888', NULL, '2', 2, 0, 0, 0, NULL, '2020-07-22 10:42:29', NULL, 'Active', NULL, NULL, NULL, 'Asia/Kolkata');
INSERT INTO `savsoft_users` VALUES (513, 'e2fc714c4727ee9395f324cd2e7f331f', 'asep.zaenuddin@kwikkiangie.ac.id', 'asep', 'zaenudin', '', NULL, '1', 1, 0, 1910716200, 0, NULL, '2020-07-22 14:13:18', NULL, 'Active', NULL, NULL, '', 'Asia/Kolkata');
INSERT INTO `savsoft_users` VALUES (514, 'e10adc3949ba59abbe56e057f20f883e', 'iqbalict@gmail.com', 'iqbal', 'ict', '0989898', NULL, '1', 2, 0, 0, 0, NULL, '2020-07-23 10:36:32', NULL, 'Active', NULL, NULL, NULL, 'Asia/Kolkata');
INSERT INTO `savsoft_users` VALUES (515, '96e79218965eb72c92a549dd5a330112', 'alif@gmail.com', 'q', 'q', '23', NULL, '1', 2, 0, 0, 0, NULL, '2020-07-23 10:40:02', NULL, 'Active', NULL, NULL, NULL, 'Asia/Kolkata');
INSERT INTO `savsoft_users` VALUES (516, '93279e3308bdbbeed946fc965017f67a', 'qq@gmail.com', 'q', 'q', '92348923', NULL, '1', 2, 0, 0, 0, NULL, '2020-07-23 11:13:27', NULL, 'Active', NULL, NULL, NULL, 'Asia/Kolkata');
INSERT INTO `savsoft_users` VALUES (517, 'e10adc3949ba59abbe56e057f20f883e', 'biru@gmail.com', 'biru', 'muda', '098', NULL, '1', 2, 0, 0, 0, NULL, '2020-07-23 15:57:19', NULL, 'Active', NULL, NULL, NULL, 'Asia/Kolkata');
INSERT INTO `savsoft_users` VALUES (518, 'e10adc3949ba59abbe56e057f20f883e', 'biru1@gmail.com', 'biru', 'muda', '12345', NULL, '1', 2, 0, 1910797200, 0, NULL, '2020-07-23 16:07:14', NULL, 'Active', NULL, NULL, NULL, 'Asia/Kolkata');
INSERT INTO `savsoft_users` VALUES (519, 'e10adc3949ba59abbe56e057f20f883e', 'biru2@gmail.com', 'tes', 'ict', '12214', NULL, '1', 2, 513, 1910797200, 0, NULL, '2020-07-23 16:19:36', NULL, 'Active', NULL, NULL, NULL, 'Asia/Kolkata');
INSERT INTO `savsoft_users` VALUES (524, 'e10adc3949ba59abbe56e057f20f883e', 'aa@gmail.com', 'aa', 'aa', '085674743232', NULL, '1', 2, 0, 1910883600, 0, NULL, '2020-07-24 10:30:38', NULL, 'Active', NULL, NULL, NULL, 'Asia/Kolkata');
INSERT INTO `savsoft_users` VALUES (525, 'e10adc3949ba59abbe56e057f20f883e', 'dd@gmail.com', 'qq', 'qq', '085674743232', NULL, '2', 2, 0, 1910883600, 0, NULL, '2020-07-24 10:38:34', NULL, 'Active', NULL, NULL, NULL, 'Asia/Kolkata');
INSERT INTO `savsoft_users` VALUES (526, '96e79218965eb72c92a549dd5a330112', 'birumuda@gmail.com', 'biru', 'muda', '0898', NULL, '1', 2, 0, 1911229200, 0, NULL, '2020-07-28 09:15:29', NULL, 'Active', NULL, NULL, NULL, 'Asia/Kolkata');
INSERT INTO `savsoft_users` VALUES (527, '96e79218965eb72c92a549dd5a330112', 'adi@gmail.com', 'aa', 'aa', '085674743232', NULL, '2', 2, 0, 1911229200, 0, NULL, '2020-07-28 09:26:29', NULL, 'Active', NULL, NULL, NULL, 'Asia/Kolkata');

-- ----------------------------
-- Table structure for savsoft_users_custom
-- ----------------------------
DROP TABLE IF EXISTS `savsoft_users_custom`;
CREATE TABLE `savsoft_users_custom`  (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `field_values` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of savsoft_users_custom
-- ----------------------------
INSERT INTO `savsoft_users_custom` VALUES (10, 3, 5, '1234567890');
INSERT INTO `savsoft_users_custom` VALUES (17, 1, 9, 'DAV');
INSERT INTO `savsoft_users_custom` VALUES (18, 2, 9, '8529637410');
INSERT INTO `savsoft_users_custom` VALUES (19, 3, 9, '1234567890');
INSERT INTO `savsoft_users_custom` VALUES (20, 2, 14, 'Jakarta');
INSERT INTO `savsoft_users_custom` VALUES (21, 3, 14, 'Bisnis');
INSERT INTO `savsoft_users_custom` VALUES (30, 2, 15, 'Jakarta');
INSERT INTO `savsoft_users_custom` VALUES (31, 3, 15, 'Informatika');
INSERT INTO `savsoft_users_custom` VALUES (58, 2, 491, 'SMAN 53');
INSERT INTO `savsoft_users_custom` VALUES (59, 3, 491, 'Informatika');
INSERT INTO `savsoft_users_custom` VALUES (60, 2, 492, 'SMAN 110');
INSERT INTO `savsoft_users_custom` VALUES (61, 3, 492, 'Informatika');
INSERT INTO `savsoft_users_custom` VALUES (62, 2, 493, 'SMAN 110');
INSERT INTO `savsoft_users_custom` VALUES (63, 3, 493, 'Bisnis');
INSERT INTO `savsoft_users_custom` VALUES (64, 2, 494, 'SMAN 53');
INSERT INTO `savsoft_users_custom` VALUES (65, 3, 494, 'Bisnis');
INSERT INTO `savsoft_users_custom` VALUES (66, 2, 495, 'SMAN 52');
INSERT INTO `savsoft_users_custom` VALUES (67, 3, 495, 'Bisnis');
INSERT INTO `savsoft_users_custom` VALUES (68, 2, 496, 'SMU Jonggol Enterprise');
INSERT INTO `savsoft_users_custom` VALUES (69, 3, 496, 'akuntansi');
INSERT INTO `savsoft_users_custom` VALUES (70, 2, 497, 'Jakarta');
INSERT INTO `savsoft_users_custom` VALUES (71, 3, 497, 'Bisnis');
INSERT INTO `savsoft_users_custom` VALUES (72, 2, 498, 'IBI KKG');
INSERT INTO `savsoft_users_custom` VALUES (73, 3, 498, 'Peledakan');
INSERT INTO `savsoft_users_custom` VALUES (74, 2, 500, 'SMAN 53');
INSERT INTO `savsoft_users_custom` VALUES (75, 3, 500, 'Manajemen');
INSERT INTO `savsoft_users_custom` VALUES (76, 2, 501, 'SMAN 100');
INSERT INTO `savsoft_users_custom` VALUES (77, 3, 501, 'Manajemen');
INSERT INTO `savsoft_users_custom` VALUES (78, 2, 502, 'SMU Jonggol');
INSERT INTO `savsoft_users_custom` VALUES (79, 3, 502, 'Manajemen');
INSERT INTO `savsoft_users_custom` VALUES (80, 2, 503, 'SMAN 52');
INSERT INTO `savsoft_users_custom` VALUES (81, 3, 503, 'Informatika');
INSERT INTO `savsoft_users_custom` VALUES (82, 2, 504, 'SMU tapi Jelas');
INSERT INTO `savsoft_users_custom` VALUES (83, 3, 504, 'Manajemen');
INSERT INTO `savsoft_users_custom` VALUES (84, 2, 505, 'SMU Tapi Nyata');
INSERT INTO `savsoft_users_custom` VALUES (85, 3, 505, 'Akuntansi');
INSERT INTO `savsoft_users_custom` VALUES (86, 2, 506, 'Sman 1');
INSERT INTO `savsoft_users_custom` VALUES (87, 3, 506, 'Pajak');
INSERT INTO `savsoft_users_custom` VALUES (88, 2, 507, 'SMAN 52');
INSERT INTO `savsoft_users_custom` VALUES (89, 3, 507, 'Informatika');
INSERT INTO `savsoft_users_custom` VALUES (90, 2, 508, 'SMAN 100');
INSERT INTO `savsoft_users_custom` VALUES (91, 3, 508, 'Pajak');
INSERT INTO `savsoft_users_custom` VALUES (92, 2, 509, 'Kampus Merdeka');
INSERT INTO `savsoft_users_custom` VALUES (93, 3, 509, 'MM');
INSERT INTO `savsoft_users_custom` VALUES (94, 2, 510, 'SMAN 45');
INSERT INTO `savsoft_users_custom` VALUES (95, 3, 510, 'Bisnis');
INSERT INTO `savsoft_users_custom` VALUES (96, 2, 511, 'S1 Apache');
INSERT INTO `savsoft_users_custom` VALUES (97, 2, 512, 'Univ Vinu');
INSERT INTO `savsoft_users_custom` VALUES (98, 3, 512, 'Kejiwaan');
INSERT INTO `savsoft_users_custom` VALUES (99, 2, 514, 'SMAN 56');
INSERT INTO `savsoft_users_custom` VALUES (100, 3, 514, 'Bisnis');
INSERT INTO `savsoft_users_custom` VALUES (101, 2, 515, 'edqwe');
INSERT INTO `savsoft_users_custom` VALUES (102, 3, 515, 'wqeqwe');
INSERT INTO `savsoft_users_custom` VALUES (103, 2, 516, 'sas');
INSERT INTO `savsoft_users_custom` VALUES (104, 3, 516, 'asas');
INSERT INTO `savsoft_users_custom` VALUES (105, 2, 517, 'SMAN 66');
INSERT INTO `savsoft_users_custom` VALUES (106, 3, 517, 'bisnis');

-- ----------------------------
-- Table structure for savsoftquiz_custom_form
-- ----------------------------
DROP TABLE IF EXISTS `savsoftquiz_custom_form`;
CREATE TABLE `savsoftquiz_custom_form`  (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_title` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `field_type` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'text',
  `field_validate` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'pattern=\"[A-Za-z0-9]{1,100}\"',
  `field_value` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `display_at` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Registration',
  PRIMARY KEY (`field_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of savsoftquiz_custom_form
-- ----------------------------
INSERT INTO `savsoftquiz_custom_form` VALUES (2, 'Nama Sekolah / Universitas Asal', 'text', '', '', 'Registration');
INSERT INTO `savsoftquiz_custom_form` VALUES (3, 'Jurusan yang Diinginkan', 'text', '', '', 'Registration');

-- ----------------------------
-- Table structure for savsoftquiz_setting
-- ----------------------------
DROP TABLE IF EXISTS `savsoftquiz_setting`;
CREATE TABLE `savsoftquiz_setting`  (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_name` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `setting_value` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'true',
  `setting_group_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'General',
  `order_by` int(11) NOT NULL,
  `setting_description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`setting_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of savsoftquiz_setting
-- ----------------------------
INSERT INTO `savsoftquiz_setting` VALUES (1, 'App_Name', 'USM Institut Bisnis dan Informatika Kwik Kian Gie', 'General', 1, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (2, 'App_title', 'Ujian Saringan Masuk Kampus Kwik Kian Gie', 'General', 1, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (3, 'SMTP_hostname', 'ssl://smtp.gmail.com', 'Email', 2, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (4, 'SMTP_username', 'system@kwikkiangie.ac.id', 'Email', 2, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (5, 'SMTP_password', 'fingerprint2016', 'Email', 2, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (6, 'SMTP_port', '587', 'Email', 2, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (7, 'Language_direction', 'ltr', 'General', 1, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (8, 'Enable_web_cam', 'true', 'General', 1, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (9, 'Enable_google_chart', 'true', 'General', 1, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (10, 'Enable_dompdf', 'true', 'General', 1, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (11, 'Enable_user_registration', 'true', 'General', 1, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (12, 'Verify_user_email', 'false', 'Email', 2, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (13, 'Tinymce_editor', 'true', 'Editor', 3, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (14, 'Tinymce_eqneditor_plugin', 'true', 'Editor', 3, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (15, 'Tinymce_wiris_plugin', 'true', 'Editor', 3, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (16, 'Mathjax', 'true', 'Editor', 3, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (17, 'Default_group_id', '1', 'General', 1, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (18, 'Enable_open_quiz', 'true', 'General', 1, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (19, 'Enable_sharethis', 'true', 'General', 1, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (20, 'Sharethis_property_id', '', 'General', 1, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (21, 'Advertisement_display_after_seconds', '0', 'General', 1, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (22, 'Advertisement_display_for_seconds', '0', 'General', 1, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (23, 'Android_API_key', '', 'General', 1, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (25, 'Email_protocol', 'mail', 'Email', 2, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (26, 'SMTP_mailtype', 'text', 'Email', 2, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (28, 'Activation_email_subject', 'Action required to verify your account', 'Email', 2, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (29, 'Activation_email_message', 'Hi, \\r\\n Thank you for registering with us. Please click below link to verify your email address.\\r\\n <a href=\'[verilink]\'>[verilink]</a> \\r\\n or \\r\\n Copy below link and visit in browser \\r\\n [verilink] \\r\\n \\r\\n Thanks', 'Email', 2, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (30, 'Password_change_subject', 'Password Changed', 'Email', 2, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (31, 'Password_change_message', 'Hi, \\r\\n Your New Password is: [new_password] \\r\\n Thanks', 'Email', 2, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (32, 'Send_result_email', 'false', 'Email', 2, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (33, 'Result_email_subject', 'Result generated for quiz [quiz_name]', 'Email', 2, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (34, 'Result_email_message', 'Hi [last_name],\\r\\n \\r\\n  You have [result_status]  Quiz: \'[quiz_name]\' and obtained [percentage_obtained]% marks. To get more information please login to usm.kwikkiangie.ac.id.\\r\\n  \\r\\n  Thanks', 'Email', 2, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (35, 'Master_password', 'savsoftquiz', 'General', 1, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (36, 'Base_currency_prefix', 'Rp', 'Payment_Gateway', 4, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (37, 'Base_currency_sufix', 'Rupiah', 'Payment_Gateway', 4, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (38, 'Payment_gateways', 'paypal,checkout,payumoney,paytm', 'Payment_Gateway', 4, 'Comma separated');
INSERT INTO `savsoftquiz_setting` VALUES (39, 'Default_gateway', 'paypal', 'Payment_Gateway', 4, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (40, 'Enable_paypal', 'true', 'Payment_Gateway', 4, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (41, 'Paypal_environment', '', 'Payment_Gateway', 4, 'Empty for real or sandbox ');
INSERT INTO `savsoftquiz_setting` VALUES (42, 'Paypal_receiver', '', 'Payment_Gateway', 4, 'Paypal email id');
INSERT INTO `savsoftquiz_setting` VALUES (43, 'Paypal_currency_prefix', '$', 'Payment_Gateway', 4, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (44, 'Paypal_currency_sufix', 'USD', 'Payment_Gateway', 4, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (45, 'Paypal_conversion', '1', 'Payment_Gateway', 4, '1 if base currency is same');
INSERT INTO `savsoftquiz_setting` VALUES (46, 'Enable_checkout', 'true', 'Payment_Gateway', 4, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (47, 'Checkout_environment', '', 'Payment_Gateway', 4, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (48, 'Checkout_sid', '', 'Payment_Gateway', 4, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (49, 'Checkout_SecretWord', '', 'Payment_Gateway', 4, '');
INSERT INTO `savsoftquiz_setting` VALUES (50, 'Checkout_receiver', '', 'Payment_Gateway', 4, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (51, 'Checkout_currency_prefix', '$', 'Payment_Gateway', 4, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (52, 'Checkout_currency_sufix', 'USD', 'Payment_Gateway', 4, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (53, 'Checkout_conversion', '1', 'Payment_Gateway', 4, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (54, 'Enable_payumoney', 'false', 'Payment_Gateway', 4, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (55, 'Payu_merchant_key', '', 'Payment_Gateway', 4, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (56, 'Payu_salt', '', 'Payment_Gateway', 4, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (57, 'Payumoney_currency_prefix', 'Rs', 'Payment_Gateway', 4, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (58, 'Payumoney_currency_sufix', 'INR', 'Payment_Gateway', 4, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (59, 'Payumoney_conversion', '66', 'Payment_Gateway', 4, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (60, 'Enable_paytm', 'false', 'Payment_Gateway', 4, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (61, 'Paytm_environment', 'Test', 'Payment_Gateway', 4, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (62, 'Paytm_merchant_key', '', 'Payment_Gateway', 4, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (63, 'Paytm_merchant_id', '', 'Payment_Gateway', 4, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (64, 'Paytm_merchant_website', 'WEB_STAGING', 'Payment_Gateway', 4, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (65, 'Paytm_currency_prefix', 'Rs', 'Payment_Gateway', 4, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (66, 'Paytm_currency_sufix', 'INR', 'Payment_Gateway', 4, NULL);
INSERT INTO `savsoftquiz_setting` VALUES (67, 'Paytm_conversion', '', 'Payment_Gateway', 4, NULL);

-- ----------------------------
-- Table structure for social_group
-- ----------------------------
DROP TABLE IF EXISTS `social_group`;
CREATE TABLE `social_group`  (
  `sg_id` int(11) NOT NULL AUTO_INCREMENT,
  `sg_name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `about` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sg_status` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Public',
  `no_member` int(11) NOT NULL,
  `created_date` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`sg_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of social_group
-- ----------------------------
INSERT INTO `social_group` VALUES (1, 'Quiz Star', 'Join masters and compare your ranking', 'Public', 3, '2017-08-27 13:45:45', 1);
INSERT INTO `social_group` VALUES (3, 'Genius Group', 'Group of genius.. JOIN NOW', 'Public', 2, '2017-08-27 15:11:45', 1);

-- ----------------------------
-- Table structure for social_group_joined
-- ----------------------------
DROP TABLE IF EXISTS `social_group_joined`;
CREATE TABLE `social_group_joined`  (
  `join_id` int(11) NOT NULL AUTO_INCREMENT,
  `sg_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `joined_date` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`join_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of social_group_joined
-- ----------------------------
INSERT INTO `social_group_joined` VALUES (3, 1, 1, '2017-08-27 15:06:39');
INSERT INTO `social_group_joined` VALUES (4, 2, 1, '2017-08-27 15:10:20');
INSERT INTO `social_group_joined` VALUES (5, 3, 1, '2017-08-27 15:11:45');
INSERT INTO `social_group_joined` VALUES (9, 3, 9, '2017-08-28 01:29:19');
INSERT INTO `social_group_joined` VALUES (11, 1, 9, '2017-08-28 01:57:03');
INSERT INTO `social_group_joined` VALUES (14, 1, 5, '2017-08-28 03:14:05');

-- ----------------------------
-- Table structure for study_material
-- ----------------------------
DROP TABLE IF EXISTS `study_material`;
CREATE TABLE `study_material`  (
  `stid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `study_description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gids` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cid` int(11) NOT NULL,
  `created_date` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `attachment` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`stid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of study_material
-- ----------------------------
INSERT INTO `study_material` VALUES (8, 'GitHub', '<p><strong>GitHub</strong> is a web-based <a title=\"Git\" href=\"https://en.wikipedia.org/wiki/Git\">Git</a> or <a title=\"Repository (version control)\" href=\"https://en.wikipedia.org/wiki/Repository_(version_control)\">version control repository</a> and <a title=\"Internet hosting service\" href=\"https://en.wikipedia.org/wiki/Internet_hosting_service\">Internet hosting service</a>. It is mostly used for code. It offers all of the <a title=\"Distributed version control\" href=\"https://en.wikipedia.org/wiki/Distributed_version_control\">distributed version control</a> and <a class=\"mw-redirect\" title=\"Source code management\" href=\"https://en.wikipedia.org/wiki/Source_code_management\">source code management</a> (SCM) functionality of Git as well as adding its own features. It provides <a title=\"Access control\" href=\"https://en.wikipedia.org/wiki/Access_control\">access control</a> and several collaboration features such as <a title=\"Bug tracking system\" href=\"https://en.wikipedia.org/wiki/Bug_tracking_system\">bug tracking</a>, <a title=\"Software feature\" href=\"https://en.wikipedia.org/wiki/Software_feature\">feature requests</a>, <a title=\"Task management\" href=\"https://en.wikipedia.org/wiki/Task_management\">task management</a>, and<a title=\"Wiki\" href=\"https://en.wikipedia.org/wiki/Wiki\">wikis</a> for every project.<sup id=\"cite_ref-hugeinvestment_3-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/GitHub#cite_note-hugeinvestment-3\">[3]</a></sup></p>\r\n<p>GitHub offers both plans for private and free <a title=\"Repository (version control)\" href=\"https://en.wikipedia.org/wiki/Repository_(version_control)\">repositories</a> on the same account<sup id=\"cite_ref-4\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/GitHub#cite_note-4\">[4]</a></sup> which are commonly used to host <a class=\"mw-redirect\" title=\"Open-source\" href=\"https://en.wikipedia.org/wiki/Open-source\">open-source</a> software projects.<sup id=\"cite_ref-5\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/GitHub#cite_note-5\">[5]</a></sup> As of April 2017, GitHub reports having almost 20 million users and 57 million repositories,<sup id=\"cite_ref-6\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/GitHub#cite_note-6\">[6]</a></sup>making it the largest host of <a title=\"Source code\" href=\"https://en.wikipedia.org/wiki/Source_code\">source code</a> in the world.<sup id=\"cite_ref-7\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/GitHub#cite_note-7\">[7]</a></sup></p>\r\n<p>GitHub has a <a title=\"Mascot\" href=\"https://en.wikipedia.org/wiki/Mascot\">mascot</a> called Octocat, a cat with five tentacles and a human-like face.<sup id=\"cite_ref-Octodex_FAQ_8-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/GitHub#cite_note-Octodex_FAQ-8\">[8]</a></sup><sup id=\"cite_ref-Jaramillo_9-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/GitHub#cite_note-Jaramillo-9\">[9]</a></sup></p>', '1,3,4', 1, '2017-08-29 02:49:57', 1, '1503949797.pdf');

-- ----------------------------
-- Table structure for warning_message
-- ----------------------------
DROP TABLE IF EXISTS `warning_message`;
CREATE TABLE `warning_message`  (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `warning_time` int(11) NOT NULL,
  `warning_message` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`wid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 316 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of warning_message
-- ----------------------------
INSERT INTO `warning_message` VALUES (1, 5, 1, 1512452823, 'User idle for more than 2 Minutes');
INSERT INTO `warning_message` VALUES (2, 5, 1, 1512452833, 'User idle for more than 2 Minutes');
INSERT INTO `warning_message` VALUES (3, 6, 1, 1512453042, 'User idle for more than 2 Minutes');
INSERT INTO `warning_message` VALUES (4, 6, 1, 1512453193, 'User idle for more than 2 Minutes');
INSERT INTO `warning_message` VALUES (5, 6, 1, 1512453463, 'User idle for more than 2 Minutes');
INSERT INTO `warning_message` VALUES (6, 6, 1, 1512453922, 'Skipping too many question');
INSERT INTO `warning_message` VALUES (7, 6, 1, 1512454045, 'User idle for more than 2 Minutes');
INSERT INTO `warning_message` VALUES (8, 9, 1, 1512463053, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (9, 9, 1, 1512463067, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (10, 9, 1, 1512463068, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (11, 9, 1, 1512463072, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (12, 9, 1, 1512463073, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (13, 9, 1, 1512463079, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (14, 9, 1, 1512463112, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (15, 9, 1, 1512463138, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (16, 9, 1, 1512463147, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (17, 9, 1, 1512463148, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (18, 9, 1, 1512463153, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (19, 9, 1, 1512463177, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (20, 9, 1, 1512463200, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (21, 9, 1, 1512463201, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (22, 9, 1, 1512463202, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (23, 9, 1, 1512463206, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (24, 9, 1, 1512463256, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (25, 9, 1, 1512463257, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (26, 9, 1, 1512463264, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (27, 9, 1, 1512463269, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (28, 9, 1, 1512463270, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (29, 9, 1, 1512463316, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (30, 9, 1, 1512463317, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (31, 9, 1, 1512463325, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (32, 9, 1, 1512463326, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (33, 9, 1, 1512463335, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (34, 9, 1, 1512463336, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (35, 9, 1, 1512463341, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (36, 9, 1, 1512463355, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (37, 9, 1, 1512463403, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (38, 9, 1, 1512463409, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (39, 9, 1, 1512463410, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (40, 9, 1, 1512463431, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (41, 9, 1, 1512463432, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (42, 9, 1, 1512463434, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (43, 9, 1, 1512463435, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (44, 9, 1, 1512463436, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (45, 9, 1, 1512463437, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (46, 9, 1, 1512463450, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (47, 9, 1, 1512463451, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (48, 9, 1, 1512463462, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (49, 9, 1, 1512463467, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (50, 9, 1, 1512463499, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (51, 9, 1, 1512463500, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (52, 9, 1, 1512463501, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (53, 9, 1, 1512463503, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (54, 9, 1, 1512463505, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (55, 9, 1, 1512463506, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (56, 9, 1, 1512463513, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (57, 9, 1, 1512463515, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (58, 9, 1, 1512463523, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (59, 9, 1, 1512463525, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (60, 9, 1, 1512463526, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (61, 9, 1, 1512463530, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (62, 9, 1, 1512463531, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (63, 9, 1, 1512463543, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (64, 9, 1, 1512463544, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (65, 9, 1, 1512463551, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (66, 9, 1, 1512463555, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (67, 9, 1, 1512463556, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (68, 9, 1, 1512463559, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (69, 9, 1, 1512463560, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (70, 9, 1, 1512463562, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (71, 9, 1, 1512463563, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (72, 9, 1, 1512463564, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (73, 9, 1, 1512463565, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (74, 9, 1, 1512463594, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (75, 9, 1, 1512463597, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (76, 9, 1, 1512463605, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (77, 9, 1, 1512463606, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (78, 9, 1, 1512463643, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (79, 9, 1, 1512463691, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (80, 9, 1, 1512463699, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (81, 9, 1, 1512463700, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (82, 9, 1, 1512463740, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (83, 9, 1, 1512463747, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (84, 9, 1, 1512463751, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (85, 9, 1, 1512463759, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (86, 9, 1, 1512463797, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (87, 9, 1, 1512463803, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (88, 9, 1, 1512463816, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (89, 9, 1, 1512463819, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (90, 9, 1, 1512463835, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (91, 9, 1, 1512463846, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (92, 9, 1, 1512463847, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (93, 9, 1, 1512463848, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (94, 9, 1, 1512463851, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (95, 9, 1, 1512463852, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (96, 9, 1, 1512463904, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (97, 9, 1, 1512463907, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (98, 9, 1, 1512463908, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (99, 9, 1, 1512463912, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (100, 9, 1, 1512463914, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (101, 9, 1, 1512463973, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (102, 9, 1, 1512463984, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (103, 9, 1, 1512463991, 'User idle for more than 2 Minutes');
INSERT INTO `warning_message` VALUES (104, 9, 1, 1512463998, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (105, 9, 1, 1512464037, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (106, 9, 1, 1512464045, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (107, 9, 1, 1512464053, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (108, 9, 1, 1512464061, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (109, 9, 1, 1512464082, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (110, 9, 1, 1512464095, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (111, 9, 1, 1512464103, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (112, 9, 1, 1512464107, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (113, 9, 1, 1512464111, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (114, 9, 1, 1512464150, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (115, 9, 1, 1512464159, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (116, 9, 1, 1512464187, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (117, 9, 1, 1512464195, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (118, 9, 1, 1512464207, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (119, 9, 1, 1512464238, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (120, 9, 1, 1512464354, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (121, 9, 1, 1512464371, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (122, 9, 1, 1512464391, 'User idle for more than 2 Minutes');
INSERT INTO `warning_message` VALUES (123, 9, 1, 1512464424, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (124, 9, 1, 1512464425, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (125, 9, 1, 1512464426, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (126, 9, 1, 1512464427, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (127, 9, 1, 1512464428, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (128, 9, 1, 1512464429, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (129, 9, 1, 1512464430, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (130, 9, 1, 1512464433, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (131, 9, 1, 1512464434, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (132, 9, 1, 1512464435, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (133, 9, 1, 1512464438, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (134, 9, 1, 1512464440, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (135, 9, 1, 1512464441, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (136, 9, 1, 1512464442, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (137, 9, 1, 1512464445, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (138, 9, 1, 1512464446, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (139, 9, 1, 1512464448, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (140, 9, 1, 1512464449, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (141, 9, 1, 1512464450, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (142, 9, 1, 1512464451, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (143, 9, 1, 1512464456, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (144, 9, 1, 1512464457, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (145, 9, 1, 1512464458, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (146, 9, 1, 1512464460, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (147, 9, 1, 1512464462, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (148, 9, 1, 1512464463, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (149, 9, 1, 1512464464, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (150, 9, 1, 1512464465, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (151, 9, 1, 1512464569, 'User idle for more than 2 Minutes');
INSERT INTO `warning_message` VALUES (152, 9, 1, 1512464758, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (153, 9, 1, 1512464759, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (154, 9, 1, 1512464791, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (155, 9, 1, 1512464914, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (156, 9, 1, 1512464915, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (157, 9, 1, 1512464916, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (158, 9, 1, 1512464930, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (159, 9, 1, 1512464931, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (160, 9, 1, 1512464932, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (161, 9, 1, 1512464938, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (162, 9, 1, 1512464939, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (163, 9, 1, 1512465228, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (164, 9, 1, 1512465237, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (165, 9, 1, 1512465238, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (166, 9, 1, 1512465246, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (167, 9, 1, 1512465252, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (168, 9, 1, 1512465254, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (169, 9, 1, 1512465294, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (170, 9, 1, 1512465295, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (171, 9, 1, 1512465298, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (172, 9, 1, 1512465324, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (173, 9, 1, 1512465325, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (174, 9, 1, 1512465326, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (175, 9, 1, 1512465683, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (176, 9, 1, 1512465684, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (177, 9, 1, 1512466260, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (178, 9, 1, 1512466265, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (179, 9, 1, 1512466266, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (180, 9, 1, 1512466267, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (181, 9, 1, 1512466268, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (182, 9, 1, 1512466269, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (183, 9, 1, 1512466270, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (184, 9, 1, 1512466271, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (185, 9, 1, 1512466279, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (186, 9, 1, 1512466280, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (187, 9, 1, 1512466281, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (188, 9, 1, 1512466282, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (189, 9, 1, 1512466286, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (190, 9, 1, 1512466287, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (191, 9, 1, 1512466288, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (192, 9, 1, 1512466289, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (193, 9, 1, 1512466290, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (194, 9, 1, 1512466292, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (195, 9, 1, 1512466293, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (196, 9, 1, 1512466295, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (197, 9, 1, 1512466296, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (198, 9, 1, 1512466297, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (199, 9, 1, 1512466305, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (200, 9, 1, 1512466312, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (201, 9, 1, 1512466314, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (202, 9, 1, 1512466338, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (203, 9, 1, 1512466344, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (204, 9, 1, 1512466359, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (205, 9, 1, 1512466364, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (206, 9, 1, 1512466364, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (207, 9, 1, 1512466365, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (208, 9, 1, 1512466369, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (209, 9, 1, 1512466371, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (210, 9, 1, 1512466372, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (211, 9, 1, 1512466373, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (212, 9, 1, 1512466380, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (213, 9, 1, 1512466381, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (214, 9, 1, 1512466382, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (215, 9, 1, 1512466386, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (216, 9, 1, 1512466390, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (217, 9, 1, 1512466395, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (218, 9, 1, 1512466396, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (219, 9, 1, 1512466399, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (220, 9, 1, 1512466406, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (221, 9, 1, 1512466407, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (222, 9, 1, 1512466414, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (223, 9, 1, 1512466417, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (224, 9, 1, 1512466426, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (225, 9, 1, 1512466441, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (226, 9, 1, 1512466442, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (227, 9, 1, 1512466446, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (228, 9, 1, 1512466484, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (229, 9, 1, 1512466484, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (230, 9, 1, 1512466485, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (231, 9, 1, 1512466486, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (232, 9, 1, 1512466529, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (233, 9, 1, 1512466540, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (234, 9, 1, 1512466570, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (235, 9, 1, 1512466576, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (236, 9, 1, 1512466577, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (237, 9, 1, 1512466584, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (238, 9, 1, 1512466585, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (239, 9, 1, 1512466591, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (240, 9, 1, 1512466598, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (241, 9, 1, 1512466599, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (242, 9, 1, 1512466600, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (243, 9, 1, 1512466605, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (244, 9, 1, 1512466606, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (245, 9, 1, 1512466608, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (246, 9, 1, 1512466621, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (247, 9, 1, 1512466628, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (248, 9, 1, 1512466629, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (249, 9, 1, 1512466641, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (250, 9, 1, 1512466642, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (251, 9, 1, 1512466648, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (252, 9, 1, 1512466654, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (253, 9, 1, 1512466655, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (254, 9, 1, 1512466656, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (255, 9, 1, 1512466657, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (256, 9, 1, 1512466658, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (257, 9, 1, 1512466665, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (258, 9, 1, 1512466666, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (259, 9, 1, 1512466667, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (260, 9, 1, 1512466668, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (261, 9, 1, 1512466669, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (262, 9, 1, 1512466670, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (263, 9, 1, 1512466725, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (264, 9, 1, 1512466727, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (265, 9, 1, 1512466728, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (266, 9, 1, 1512466730, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (267, 9, 1, 1512467110, 'User idle for more than 2 Minutes');
INSERT INTO `warning_message` VALUES (268, 9, 1, 1512467183, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (269, 9, 1, 1512467194, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (270, 9, 1, 1512467195, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (271, 9, 1, 1512467197, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (272, 9, 1, 1512467198, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (273, 9, 1, 1512467206, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (274, 9, 1, 1512467207, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (275, 9, 1, 1512467235, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (276, 9, 1, 1512467236, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (277, 9, 1, 1512467253, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (278, 14, 1, 1512484327, 'User idle for more than 2 Minutes');
INSERT INTO `warning_message` VALUES (279, 16, 1, 1512485794, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (280, 16, 1, 1512485795, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (281, 16, 1, 1512485796, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (282, 16, 1, 1512485797, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (283, 16, 1, 1512485952, 'User idle for more than 2 Minutes');
INSERT INTO `warning_message` VALUES (284, 17, 1, 1512486854, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (285, 17, 1, 1512486854, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (286, 17, 1, 1512487447, 'User idle for more than 2 Minutes');
INSERT INTO `warning_message` VALUES (287, 17, 1, 1512487717, 'User idle for more than 2 Minutes');
INSERT INTO `warning_message` VALUES (288, 17, 1, 1512488508, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (289, 17, 1, 1512488517, 'Movement Dedected');
INSERT INTO `warning_message` VALUES (290, 18, 1, 1512497185, 'Movement Detected');
INSERT INTO `warning_message` VALUES (291, 24, 1, 1512534886, 'Movement Detected');
INSERT INTO `warning_message` VALUES (292, 24, 1, 1512534892, 'Movement Detected');
INSERT INTO `warning_message` VALUES (293, 24, 1, 1512534905, 'Movement Detected');
INSERT INTO `warning_message` VALUES (294, 26, 1, 1512535298, 'Movement Detected');
INSERT INTO `warning_message` VALUES (295, 26, 1, 1512535304, 'Movement Detected');
INSERT INTO `warning_message` VALUES (296, 26, 1, 1512535319, 'Movement Detected');
INSERT INTO `warning_message` VALUES (297, 26, 1, 1512535325, 'Movement Detected');
INSERT INTO `warning_message` VALUES (298, 26, 1, 1512535331, 'Movement Detected');
INSERT INTO `warning_message` VALUES (299, 27, 1, 1512550651, 'Movement Detected');
INSERT INTO `warning_message` VALUES (300, 27, 1, 1512550657, 'Movement Detected');
INSERT INTO `warning_message` VALUES (301, 27, 1, 1512550663, 'Movement Detected');
INSERT INTO `warning_message` VALUES (302, 27, 1, 1512550678, 'Movement Detected');
INSERT INTO `warning_message` VALUES (303, 27, 1, 1512550684, 'Movement Detected');
INSERT INTO `warning_message` VALUES (304, 27, 1, 1512550699, 'Movement Detected');
INSERT INTO `warning_message` VALUES (305, 27, 1, 1512550705, 'Movement Detected');
INSERT INTO `warning_message` VALUES (306, 27, 1, 1512550713, 'Movement Detected');
INSERT INTO `warning_message` VALUES (307, 27, 1, 1512550719, 'Movement Detected');
INSERT INTO `warning_message` VALUES (308, 27, 1, 1512550729, 'Movement Detected');
INSERT INTO `warning_message` VALUES (309, 27, 1, 1512550750, 'Movement Detected');
INSERT INTO `warning_message` VALUES (310, 27, 1, 1512550764, 'Movement Detected');
INSERT INTO `warning_message` VALUES (311, 27, 1, 1512550770, 'Movement Detected');
INSERT INTO `warning_message` VALUES (312, 27, 1, 1512550776, 'Movement Detected');
INSERT INTO `warning_message` VALUES (313, 27, 1, 1512550804, 'Movement Detected');
INSERT INTO `warning_message` VALUES (314, 27, 1, 1512550858, 'User idle for more than 2 Minutes');
INSERT INTO `warning_message` VALUES (315, 27, 1, 1512550904, 'Movement Detected');

SET FOREIGN_KEY_CHECKS = 1;
