/*
 Navicat MySQL Data Transfer

 Source Server         : taicheng
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : taicheng

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 08/04/2018 00:00:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for about
-- ----------------------------
DROP TABLE IF EXISTS `about`;
CREATE TABLE `about`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of about
-- ----------------------------
INSERT INTO `about` VALUES (1, '标题1', '标题1摘要', '内容1', '2018-04-06 14:54:54', '2018-04-06 14:54:54');
INSERT INTO `about` VALUES (2, '标题1', '摘要1', '<p>sahdsjadasdsadasdasdafawdawdadasdas</p>\r\n\r\n<p>dasddddddfwdasf</p>\r\n\r\n<p>fsafsafsafsafsafasfsasda</p>', '2018-04-07 08:11:30', '2018-04-07 08:11:30');

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 1, 'Index', 'fa-bar-chart', '/', NULL, NULL);
INSERT INTO `admin_menu` VALUES (2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL);
INSERT INTO `admin_menu` VALUES (3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL);
INSERT INTO `admin_menu` VALUES (4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL);
INSERT INTO `admin_menu` VALUES (5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL);
INSERT INTO `admin_menu` VALUES (6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL);
INSERT INTO `admin_menu` VALUES (7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL);
INSERT INTO `admin_menu` VALUES (8, 0, 0, '轮播图', 'fa-image', '/slideimg', '2018-04-06 08:30:03', '2018-04-06 08:30:03');
INSERT INTO `admin_menu` VALUES (10, 0, 0, '关于', 'fa-bars', '/about', '2018-04-06 14:30:08', '2018-04-06 14:30:08');
INSERT INTO `admin_menu` VALUES (11, 0, 0, '资讯文章', 'fa-book', '/infoarticle', '2018-04-06 14:31:00', '2018-04-06 14:31:00');
INSERT INTO `admin_menu` VALUES (12, 0, 0, '资讯', 'fa-bars', '/info', '2018-04-06 14:31:28', '2018-04-06 14:31:28');
INSERT INTO `admin_menu` VALUES (13, 0, 0, '空间', 'fa-bars', '/space', '2018-04-06 14:32:05', '2018-04-06 14:32:05');
INSERT INTO `admin_menu` VALUES (14, 0, 0, '空间项目', 'fa-bars', '/spaceproject', '2018-04-06 14:32:51', '2018-04-06 14:32:51');
INSERT INTO `admin_menu` VALUES (15, 0, 0, '项目表单', 'fa-bars', '/spaceform', '2018-04-06 14:33:18', '2018-04-06 14:33:18');
INSERT INTO `admin_menu` VALUES (16, 0, 0, '公司信息', 'fa-home', '/companyinfo', '2018-04-06 14:56:05', '2018-04-06 14:56:05');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 209 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-04-05 18:28:58', '2018-04-05 18:28:58');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-05 18:29:40', '2018-04-05 18:29:40');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-06 02:42:25', '2018-04-06 02:42:25');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-06 08:10:41', '2018-04-06 08:10:41');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-06 08:29:24', '2018-04-06 08:29:24');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8f6e\\u64ad\\u56fe\",\"icon\":\"fa-image\",\"uri\":\"\\/slideimg\",\"roles\":[null],\"_token\":\"nHgEho0Cmi0Lr98epX6ZWWiKfmkfRCeWE72gLVF8\"}', '2018-04-06 08:30:03', '2018-04-06 08:30:03');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-06 08:30:03', '2018-04-06 08:30:03');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-06 08:30:12', '2018-04-06 08:30:12');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin/slideimg', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 08:30:14', '2018-04-06 08:30:14');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/slideimg/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 08:30:18', '2018-04-06 08:30:18');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/slideimg', 'GET', '127.0.0.1', '[]', '2018-04-06 08:30:18', '2018-04-06 08:30:18');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin/slideimg', 'GET', '127.0.0.1', '[]', '2018-04-06 08:30:43', '2018-04-06 08:30:43');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/slideimg/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 08:30:46', '2018-04-06 08:30:46');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/slideimg', 'POST', '127.0.0.1', '{\"type\":\"1\",\"link_url\":\"http:\\\\\\\\www.baidu.com\",\"sort\":\"1\",\"_token\":\"nHgEho0Cmi0Lr98epX6ZWWiKfmkfRCeWE72gLVF8\",\"_previous_\":\"http:\\/\\/taicheng.com\\/admin\\/slideimg\"}', '2018-04-06 08:33:35', '2018-04-06 08:33:35');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin/slideimg/create', 'GET', '127.0.0.1', '[]', '2018-04-06 08:33:36', '2018-04-06 08:33:36');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/slideimg/create', 'GET', '127.0.0.1', '[]', '2018-04-06 08:34:36', '2018-04-06 08:34:36');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin/slideimg', 'POST', '127.0.0.1', '{\"type\":\"1\",\"link_url\":\"http:\\\\\\\\www.baidu.com\",\"sort\":\"1\",\"_token\":\"nHgEho0Cmi0Lr98epX6ZWWiKfmkfRCeWE72gLVF8\",\"_previous_\":\"http:\\/\\/taicheng.com\\/admin\\/slideimg\"}', '2018-04-06 08:34:58', '2018-04-06 08:34:58');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin/slideimg/create', 'GET', '127.0.0.1', '[]', '2018-04-06 08:34:58', '2018-04-06 08:34:58');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin/slideimg/create', 'GET', '127.0.0.1', '[]', '2018-04-06 08:35:18', '2018-04-06 08:35:18');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/slideimg', 'POST', '127.0.0.1', '{\"type\":\"1\",\"link_url\":\"http:\\\\\\\\www.baidu.com\",\"sort\":\"1\",\"_token\":\"nHgEho0Cmi0Lr98epX6ZWWiKfmkfRCeWE72gLVF8\"}', '2018-04-06 08:35:31', '2018-04-06 08:35:31');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin/slideimg/create', 'GET', '127.0.0.1', '[]', '2018-04-06 08:35:32', '2018-04-06 08:35:32');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin/slideimg', 'POST', '127.0.0.1', '{\"type\":\"1\",\"link_url\":\"https:\\/\\/www.baidu.com\\/\",\"sort\":\"1\",\"_token\":\"nHgEho0Cmi0Lr98epX6ZWWiKfmkfRCeWE72gLVF8\"}', '2018-04-06 08:36:27', '2018-04-06 08:36:27');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin/slideimg/create', 'GET', '127.0.0.1', '[]', '2018-04-06 08:36:28', '2018-04-06 08:36:28');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin/slideimg/create', 'GET', '127.0.0.1', '[]', '2018-04-06 08:37:34', '2018-04-06 08:37:34');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin/slideimg', 'POST', '127.0.0.1', '{\"type\":\"1\",\"link_url\":\"https:\\/\\/www.baidu.com\\/\",\"sort\":\"1\",\"_token\":\"nHgEho0Cmi0Lr98epX6ZWWiKfmkfRCeWE72gLVF8\"}', '2018-04-06 08:37:59', '2018-04-06 08:37:59');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin/slideimg', 'GET', '127.0.0.1', '[]', '2018-04-06 08:37:59', '2018-04-06 08:37:59');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin/slideimg/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 08:38:03', '2018-04-06 08:38:03');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin/slideimg', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 08:38:09', '2018-04-06 08:38:09');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin/slideimg/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 08:39:04', '2018-04-06 08:39:04');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin/slideimg/1', 'PUT', '127.0.0.1', '{\"type\":\"1\",\"link_url\":\"https:\\/\\/www.baidu.com\\/\",\"sort\":\"1\",\"_token\":\"nHgEho0Cmi0Lr98epX6ZWWiKfmkfRCeWE72gLVF8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/taicheng.com\\/admin\\/slideimg\"}', '2018-04-06 08:40:17', '2018-04-06 08:40:17');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin/slideimg', 'GET', '127.0.0.1', '[]', '2018-04-06 08:40:18', '2018-04-06 08:40:18');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin/slideimg/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 08:40:24', '2018-04-06 08:40:24');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin/slideimg', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 08:51:55', '2018-04-06 08:51:55');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin/slideimg/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 08:52:05', '2018-04-06 08:52:05');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 08:54:28', '2018-04-06 08:54:28');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin/slideimg', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 08:54:50', '2018-04-06 08:54:50');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin/slideimg/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 09:00:55', '2018-04-06 09:00:55');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'admin/slideimg', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 09:01:00', '2018-04-06 09:01:00');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 09:01:13', '2018-04-06 09:01:13');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 09:01:17', '2018-04-06 09:01:17');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'admin/slideimg', 'GET', '127.0.0.1', '[]', '2018-04-06 11:31:27', '2018-04-06 11:31:27');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'admin/slideimg/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 11:31:31', '2018-04-06 11:31:31');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin/slideimg', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 11:32:41', '2018-04-06 11:32:41');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin/slideimg', 'GET', '127.0.0.1', '[]', '2018-04-06 11:34:53', '2018-04-06 11:34:53');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin/slideimg/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 11:34:59', '2018-04-06 11:34:59');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin/slideimg', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 11:35:03', '2018-04-06 11:35:03');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 12:10:07', '2018-04-06 12:10:07');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8d44\\u8baf\\u56fe\\u7247\",\"icon\":\"fa-image\",\"uri\":\"\\/infoimg\",\"roles\":[null],\"_token\":\"UNM6l69YOXWPD5gcDOq3HKEt3sKGwLcGTFPgpsg4\"}', '2018-04-06 12:10:45', '2018-04-06 12:10:45');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-06 12:10:46', '2018-04-06 12:10:46');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-06 12:10:50', '2018-04-06 12:10:50');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin/infoimg', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 12:10:53', '2018-04-06 12:10:53');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/infoimg/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 12:10:56', '2018-04-06 12:10:56');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 12:17:24', '2018-04-06 12:17:24');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/infoimg', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 12:17:28', '2018-04-06 12:17:28');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 12:17:34', '2018-04-06 12:17:34');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin/auth/menu/9', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"UNM6l69YOXWPD5gcDOq3HKEt3sKGwLcGTFPgpsg4\"}', '2018-04-06 12:17:41', '2018-04-06 12:17:41');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 12:17:41', '2018-04-06 12:17:41');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-06 14:29:18', '2018-04-06 14:29:18');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5173\\u4e8e\",\"icon\":\"fa-bars\",\"uri\":\"\\/about\",\"roles\":[null],\"_token\":\"MuU7hvLzqhJ6bNC0LdcvLXw0phiyEm0MJzfqE36v\"}', '2018-04-06 14:30:08', '2018-04-06 14:30:08');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-06 14:30:08', '2018-04-06 14:30:08');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8d44\\u8baf\\u6587\\u7ae0\",\"icon\":\"fa-book\",\"uri\":\"\\/infoarticle\",\"roles\":[null],\"_token\":\"MuU7hvLzqhJ6bNC0LdcvLXw0phiyEm0MJzfqE36v\"}', '2018-04-06 14:30:59', '2018-04-06 14:30:59');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-06 14:31:00', '2018-04-06 14:31:00');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8d44\\u8baf\",\"icon\":\"fa-bars\",\"uri\":\"\\/info\",\"roles\":[null],\"_token\":\"MuU7hvLzqhJ6bNC0LdcvLXw0phiyEm0MJzfqE36v\"}', '2018-04-06 14:31:28', '2018-04-06 14:31:28');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-06 14:31:29', '2018-04-06 14:31:29');
INSERT INTO `admin_operation_log` VALUES (65, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7a7a\\u95f4\",\"icon\":\"fa-bars\",\"uri\":\"\\/space\",\"roles\":[null],\"_token\":\"MuU7hvLzqhJ6bNC0LdcvLXw0phiyEm0MJzfqE36v\"}', '2018-04-06 14:32:05', '2018-04-06 14:32:05');
INSERT INTO `admin_operation_log` VALUES (66, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-06 14:32:05', '2018-04-06 14:32:05');
INSERT INTO `admin_operation_log` VALUES (67, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7a7a\\u95f4\\u9879\\u76ee\",\"icon\":\"fa-bars\",\"uri\":\"\\/spaceproject\",\"roles\":[null],\"_token\":\"MuU7hvLzqhJ6bNC0LdcvLXw0phiyEm0MJzfqE36v\"}', '2018-04-06 14:32:50', '2018-04-06 14:32:50');
INSERT INTO `admin_operation_log` VALUES (68, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-06 14:32:51', '2018-04-06 14:32:51');
INSERT INTO `admin_operation_log` VALUES (69, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u9879\\u76ee\\u8868\\u5355\",\"icon\":\"fa-bars\",\"uri\":\"\\/spaceform\",\"roles\":[null],\"_token\":\"MuU7hvLzqhJ6bNC0LdcvLXw0phiyEm0MJzfqE36v\"}', '2018-04-06 14:33:18', '2018-04-06 14:33:18');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-06 14:33:19', '2018-04-06 14:33:19');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-06 14:33:37', '2018-04-06 14:33:37');
INSERT INTO `admin_operation_log` VALUES (72, 1, 'admin/spaceproject', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 14:33:39', '2018-04-06 14:33:39');
INSERT INTO `admin_operation_log` VALUES (73, 1, 'admin/space', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 14:33:41', '2018-04-06 14:33:41');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'admin/info', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 14:33:45', '2018-04-06 14:33:45');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'admin/infoarticle', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 14:33:47', '2018-04-06 14:33:47');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'admin/about', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 14:33:49', '2018-04-06 14:33:49');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'admin/slideimg', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 14:33:51', '2018-04-06 14:33:51');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'admin/spaceform', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 14:33:54', '2018-04-06 14:33:54');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'admin/spaceform', 'GET', '127.0.0.1', '[]', '2018-04-06 14:43:59', '2018-04-06 14:43:59');
INSERT INTO `admin_operation_log` VALUES (80, 1, 'admin/about', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 14:44:04', '2018-04-06 14:44:04');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'admin/about/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 14:44:09', '2018-04-06 14:44:09');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'admin/about', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 14:44:36', '2018-04-06 14:44:36');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'admin/about', 'GET', '127.0.0.1', '[]', '2018-04-06 14:53:42', '2018-04-06 14:53:42');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'admin/about', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 14:53:48', '2018-04-06 14:53:48');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'admin/about/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 14:54:14', '2018-04-06 14:54:14');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'admin/about/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 14:54:15', '2018-04-06 14:54:15');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'admin/about', 'POST', '127.0.0.1', '{\"title\":\"\\u6807\\u98981\",\"summary\":\"\\u6807\\u98981\\u6458\\u8981\",\"content\":\"\\u5185\\u5bb91\",\"_token\":\"MuU7hvLzqhJ6bNC0LdcvLXw0phiyEm0MJzfqE36v\"}', '2018-04-06 14:54:53', '2018-04-06 14:54:53');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin/about', 'GET', '127.0.0.1', '[]', '2018-04-06 14:54:54', '2018-04-06 14:54:54');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 14:55:23', '2018-04-06 14:55:23');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u516c\\u53f8\\u4fe1\\u606f\",\"icon\":\"fa-home\",\"uri\":\"\\/companyinfo\",\"roles\":[null],\"_token\":\"MuU7hvLzqhJ6bNC0LdcvLXw0phiyEm0MJzfqE36v\"}', '2018-04-06 14:56:05', '2018-04-06 14:56:05');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-06 14:56:06', '2018-04-06 14:56:06');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-06 14:56:09', '2018-04-06 14:56:09');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin/companyinfo', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 14:56:12', '2018-04-06 14:56:12');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin/companyinfo', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 14:56:12', '2018-04-06 14:56:12');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin/companyinfo/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 14:56:15', '2018-04-06 14:56:15');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin/companyinfo', 'POST', '127.0.0.1', '{\"name\":\"\\u516c\\u53f81\",\"address\":\"\\u516c\\u53f8\\u5730\\u5740\",\"tel\":\"18813578951\",\"email\":\"111@qq.com\",\"longitude\":\"1234587541\",\"latitude\":\"dmkajdsa\",\"copyright\":\"asdajdad@dasjdka.casd\",\"_token\":\"MuU7hvLzqhJ6bNC0LdcvLXw0phiyEm0MJzfqE36v\",\"_previous_\":\"http:\\/\\/taicheng.com\\/admin\\/companyinfo\"}', '2018-04-06 14:57:17', '2018-04-06 14:57:17');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin/companyinfo', 'GET', '127.0.0.1', '[]', '2018-04-06 14:57:18', '2018-04-06 14:57:18');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin/companyinfo/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 14:57:25', '2018-04-06 14:57:25');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin/companyinfo', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 14:57:33', '2018-04-06 14:57:33');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin/companyinfo', 'GET', '127.0.0.1', '[]', '2018-04-06 15:07:02', '2018-04-06 15:07:02');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin/infoarticle', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:07:08', '2018-04-06 15:07:08');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin/infoarticle/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:07:12', '2018-04-06 15:07:12');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin/infoarticle', 'POST', '127.0.0.1', '{\"type\":\"1\",\"title\":\"\\u6807\\u98981\",\"content\":\"\\u5185\\u5bb91\",\"_token\":\"MuU7hvLzqhJ6bNC0LdcvLXw0phiyEm0MJzfqE36v\",\"_previous_\":\"http:\\/\\/taicheng.com\\/admin\\/infoarticle\"}', '2018-04-06 15:07:49', '2018-04-06 15:07:49');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'admin/infoarticle', 'GET', '127.0.0.1', '[]', '2018-04-06 15:07:50', '2018-04-06 15:07:50');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'admin/infoarticle/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:07:54', '2018-04-06 15:07:54');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'admin/infoarticle', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:08:04', '2018-04-06 15:08:04');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'admin/infoarticle', 'GET', '127.0.0.1', '[]', '2018-04-06 15:11:57', '2018-04-06 15:11:57');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'admin/info', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:12:00', '2018-04-06 15:12:00');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin/info/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:12:03', '2018-04-06 15:12:03');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'admin/info', 'POST', '127.0.0.1', '{\"summary\":\"\\u8d44\\u8baf\\u6458\\u8981\",\"_token\":\"MuU7hvLzqhJ6bNC0LdcvLXw0phiyEm0MJzfqE36v\",\"_previous_\":\"http:\\/\\/taicheng.com\\/admin\\/info\"}', '2018-04-06 15:12:29', '2018-04-06 15:12:29');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'admin/info', 'GET', '127.0.0.1', '[]', '2018-04-06 15:12:30', '2018-04-06 15:12:30');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'admin/info/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:12:34', '2018-04-06 15:12:34');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'admin/info', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:12:40', '2018-04-06 15:12:40');
INSERT INTO `admin_operation_log` VALUES (114, 1, 'admin/info', 'GET', '127.0.0.1', '[]', '2018-04-06 15:18:56', '2018-04-06 15:18:56');
INSERT INTO `admin_operation_log` VALUES (115, 1, 'admin/space', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:19:01', '2018-04-06 15:19:01');
INSERT INTO `admin_operation_log` VALUES (116, 1, 'admin/space/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:19:04', '2018-04-06 15:19:04');
INSERT INTO `admin_operation_log` VALUES (117, 1, 'admin/space', 'POST', '127.0.0.1', '{\"summary\":\"\\u7a7a\\u95f4\\u6458\\u89811\",\"place\":\"\\u7a7a\\u95f4\\u5730\\u70b91\",\"title\":\"\\u7a7a\\u95f4\\u6807\\u98981\",\"_token\":\"MuU7hvLzqhJ6bNC0LdcvLXw0phiyEm0MJzfqE36v\",\"_previous_\":\"http:\\/\\/taicheng.com\\/admin\\/space\"}', '2018-04-06 15:19:46', '2018-04-06 15:19:46');
INSERT INTO `admin_operation_log` VALUES (118, 1, 'admin/space', 'GET', '127.0.0.1', '[]', '2018-04-06 15:19:46', '2018-04-06 15:19:46');
INSERT INTO `admin_operation_log` VALUES (119, 1, 'admin/space/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:19:52', '2018-04-06 15:19:52');
INSERT INTO `admin_operation_log` VALUES (120, 1, 'admin/space', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:19:58', '2018-04-06 15:19:58');
INSERT INTO `admin_operation_log` VALUES (121, 1, 'admin/space', 'GET', '127.0.0.1', '[]', '2018-04-06 15:25:52', '2018-04-06 15:25:52');
INSERT INTO `admin_operation_log` VALUES (122, 1, 'admin/spaceform', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:25:56', '2018-04-06 15:25:56');
INSERT INTO `admin_operation_log` VALUES (123, 1, 'admin/spaceform/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:26:01', '2018-04-06 15:26:01');
INSERT INTO `admin_operation_log` VALUES (124, 1, 'admin/spaceform', 'POST', '127.0.0.1', '{\"project_id\":\"0\",\"name\":\"user1\",\"tel\":\"1232322____\",\"remarks\":null,\"_token\":\"MuU7hvLzqhJ6bNC0LdcvLXw0phiyEm0MJzfqE36v\",\"_previous_\":\"http:\\/\\/taicheng.com\\/admin\\/spaceform\"}', '2018-04-06 15:26:23', '2018-04-06 15:26:23');
INSERT INTO `admin_operation_log` VALUES (125, 1, 'admin/spaceform/create', 'GET', '127.0.0.1', '[]', '2018-04-06 15:26:24', '2018-04-06 15:26:24');
INSERT INTO `admin_operation_log` VALUES (126, 1, 'admin/spaceform', 'POST', '127.0.0.1', '{\"project_id\":\"0\",\"name\":\"user1\",\"tel\":\"12323221222\",\"remarks\":\"\\u5907\\u6ce81\",\"_token\":\"MuU7hvLzqhJ6bNC0LdcvLXw0phiyEm0MJzfqE36v\"}', '2018-04-06 15:26:57', '2018-04-06 15:26:57');
INSERT INTO `admin_operation_log` VALUES (127, 1, 'admin/spaceform/create', 'GET', '127.0.0.1', '[]', '2018-04-06 15:26:58', '2018-04-06 15:26:58');
INSERT INTO `admin_operation_log` VALUES (128, 1, 'admin/spaceform', 'POST', '127.0.0.1', '{\"project_id\":\"1\",\"name\":\"user1\",\"tel\":\"12323221222\",\"remarks\":\"\\u5907\\u6ce81\",\"_token\":\"MuU7hvLzqhJ6bNC0LdcvLXw0phiyEm0MJzfqE36v\"}', '2018-04-06 15:27:08', '2018-04-06 15:27:08');
INSERT INTO `admin_operation_log` VALUES (129, 1, 'admin/spaceform/create', 'GET', '127.0.0.1', '[]', '2018-04-06 15:27:09', '2018-04-06 15:27:09');
INSERT INTO `admin_operation_log` VALUES (130, 1, 'admin/spaceform/create', 'GET', '127.0.0.1', '[]', '2018-04-06 15:34:32', '2018-04-06 15:34:32');
INSERT INTO `admin_operation_log` VALUES (131, 1, 'admin/info', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:34:38', '2018-04-06 15:34:38');
INSERT INTO `admin_operation_log` VALUES (132, 1, 'admin/space', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:34:42', '2018-04-06 15:34:42');
INSERT INTO `admin_operation_log` VALUES (133, 1, 'admin/spaceproject', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:34:44', '2018-04-06 15:34:44');
INSERT INTO `admin_operation_log` VALUES (134, 1, 'admin/spaceproject/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:34:47', '2018-04-06 15:34:47');
INSERT INTO `admin_operation_log` VALUES (135, 1, 'admin/spaceproject', 'POST', '127.0.0.1', '{\"space_id\":\"1\",\"project\":\"\\u9879\\u76ee1\",\"title\":\"\\u9879\\u76ee\\u6807\\u98981\",\"content\":\"\\u9879\\u76ee\\u5185\\u5bb91\",\"longitude\":\"1245.da4sd\",\"latitude\":null,\"_token\":\"MuU7hvLzqhJ6bNC0LdcvLXw0phiyEm0MJzfqE36v\",\"_previous_\":\"http:\\/\\/taicheng.com\\/admin\\/spaceproject\"}', '2018-04-06 15:35:25', '2018-04-06 15:35:25');
INSERT INTO `admin_operation_log` VALUES (136, 1, 'admin/spaceproject/create', 'GET', '127.0.0.1', '[]', '2018-04-06 15:35:25', '2018-04-06 15:35:25');
INSERT INTO `admin_operation_log` VALUES (137, 1, 'admin/spaceproject', 'POST', '127.0.0.1', '{\"space_id\":\"1\",\"project\":\"\\u9879\\u76ee1\",\"title\":\"\\u9879\\u76ee\\u6807\\u98981\",\"content\":\"\\u9879\\u76ee\\u5185\\u5bb91\",\"longitude\":\"1245.da4sd\",\"latitude\":\"asdawawda\",\"_token\":\"MuU7hvLzqhJ6bNC0LdcvLXw0phiyEm0MJzfqE36v\"}', '2018-04-06 15:35:34', '2018-04-06 15:35:34');
INSERT INTO `admin_operation_log` VALUES (138, 1, 'admin/spaceproject/create', 'GET', '127.0.0.1', '[]', '2018-04-06 15:35:34', '2018-04-06 15:35:34');
INSERT INTO `admin_operation_log` VALUES (139, 1, 'admin/spaceproject', 'POST', '127.0.0.1', '{\"space_id\":\"1\",\"project\":\"\\u9879\\u76ee1\",\"title\":\"\\u9879\\u76ee\\u6807\\u98981\",\"content\":\"\\u9879\\u76ee\\u5185\\u5bb91\",\"longitude\":\"1245.da4sd\",\"latitude\":\"asdawawda\",\"_token\":\"MuU7hvLzqhJ6bNC0LdcvLXw0phiyEm0MJzfqE36v\"}', '2018-04-06 15:35:53', '2018-04-06 15:35:53');
INSERT INTO `admin_operation_log` VALUES (140, 1, 'admin/spaceproject', 'GET', '127.0.0.1', '[]', '2018-04-06 15:35:53', '2018-04-06 15:35:53');
INSERT INTO `admin_operation_log` VALUES (141, 1, 'admin/spaceproject', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:35:59', '2018-04-06 15:35:59');
INSERT INTO `admin_operation_log` VALUES (142, 1, 'admin/spaceform', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:36:01', '2018-04-06 15:36:01');
INSERT INTO `admin_operation_log` VALUES (143, 1, 'admin/spaceform/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:36:04', '2018-04-06 15:36:04');
INSERT INTO `admin_operation_log` VALUES (144, 1, 'admin/spaceform', 'POST', '127.0.0.1', '{\"project_id\":\"1\",\"name\":\"user1\",\"tel\":\"23454545436\",\"remarks\":\"\\u5907\\u6ce81\",\"_token\":\"MuU7hvLzqhJ6bNC0LdcvLXw0phiyEm0MJzfqE36v\",\"_previous_\":\"http:\\/\\/taicheng.com\\/admin\\/spaceform\"}', '2018-04-06 15:36:19', '2018-04-06 15:36:19');
INSERT INTO `admin_operation_log` VALUES (145, 1, 'admin/spaceform', 'GET', '127.0.0.1', '[]', '2018-04-06 15:36:19', '2018-04-06 15:36:19');
INSERT INTO `admin_operation_log` VALUES (146, 1, 'admin/spaceform', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:36:23', '2018-04-06 15:36:23');
INSERT INTO `admin_operation_log` VALUES (147, 1, 'admin/spaceproject', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:36:25', '2018-04-06 15:36:25');
INSERT INTO `admin_operation_log` VALUES (148, 1, 'admin/space', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:36:27', '2018-04-06 15:36:27');
INSERT INTO `admin_operation_log` VALUES (149, 1, 'admin/info', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:36:29', '2018-04-06 15:36:29');
INSERT INTO `admin_operation_log` VALUES (150, 1, 'admin/infoarticle', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:36:31', '2018-04-06 15:36:31');
INSERT INTO `admin_operation_log` VALUES (151, 1, 'admin/about', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:36:33', '2018-04-06 15:36:33');
INSERT INTO `admin_operation_log` VALUES (152, 1, 'admin/slideimg', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:36:35', '2018-04-06 15:36:35');
INSERT INTO `admin_operation_log` VALUES (153, 1, 'admin/companyinfo', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-06 15:36:37', '2018-04-06 15:36:37');
INSERT INTO `admin_operation_log` VALUES (154, 1, 'admin/companyinfo', 'GET', '127.0.0.1', '[]', '2018-04-07 06:12:55', '2018-04-07 06:12:55');
INSERT INTO `admin_operation_log` VALUES (155, 1, 'admin/about', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-07 06:13:14', '2018-04-07 06:13:14');
INSERT INTO `admin_operation_log` VALUES (156, 1, 'admin/about/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-07 06:13:18', '2018-04-07 06:13:18');
INSERT INTO `admin_operation_log` VALUES (157, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 06:17:55', '2018-04-07 06:17:55');
INSERT INTO `admin_operation_log` VALUES (158, 1, 'admin/about', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-07 06:18:09', '2018-04-07 06:18:09');
INSERT INTO `admin_operation_log` VALUES (159, 1, 'admin/about/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-07 06:18:13', '2018-04-07 06:18:13');
INSERT INTO `admin_operation_log` VALUES (160, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 06:43:11', '2018-04-07 06:43:11');
INSERT INTO `admin_operation_log` VALUES (161, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 06:43:16', '2018-04-07 06:43:16');
INSERT INTO `admin_operation_log` VALUES (162, 1, 'admin/about', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-07 06:43:20', '2018-04-07 06:43:20');
INSERT INTO `admin_operation_log` VALUES (163, 1, 'admin/about/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-07 06:43:23', '2018-04-07 06:43:23');
INSERT INTO `admin_operation_log` VALUES (164, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 06:54:11', '2018-04-07 06:54:11');
INSERT INTO `admin_operation_log` VALUES (165, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 07:00:27', '2018-04-07 07:00:27');
INSERT INTO `admin_operation_log` VALUES (166, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 07:00:31', '2018-04-07 07:00:31');
INSERT INTO `admin_operation_log` VALUES (167, 1, 'admin/about', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-07 07:10:19', '2018-04-07 07:10:19');
INSERT INTO `admin_operation_log` VALUES (168, 1, 'admin/about', 'GET', '127.0.0.1', '[]', '2018-04-07 07:10:22', '2018-04-07 07:10:22');
INSERT INTO `admin_operation_log` VALUES (169, 1, 'admin/about/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-07 07:10:30', '2018-04-07 07:10:30');
INSERT INTO `admin_operation_log` VALUES (170, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 07:11:25', '2018-04-07 07:11:25');
INSERT INTO `admin_operation_log` VALUES (171, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 07:11:28', '2018-04-07 07:11:28');
INSERT INTO `admin_operation_log` VALUES (172, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 07:11:51', '2018-04-07 07:11:51');
INSERT INTO `admin_operation_log` VALUES (173, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 07:12:00', '2018-04-07 07:12:00');
INSERT INTO `admin_operation_log` VALUES (174, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 07:12:18', '2018-04-07 07:12:18');
INSERT INTO `admin_operation_log` VALUES (175, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 07:12:47', '2018-04-07 07:12:47');
INSERT INTO `admin_operation_log` VALUES (176, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 07:14:12', '2018-04-07 07:14:12');
INSERT INTO `admin_operation_log` VALUES (177, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 07:14:13', '2018-04-07 07:14:13');
INSERT INTO `admin_operation_log` VALUES (178, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 07:16:16', '2018-04-07 07:16:16');
INSERT INTO `admin_operation_log` VALUES (179, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 07:18:12', '2018-04-07 07:18:12');
INSERT INTO `admin_operation_log` VALUES (180, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 07:21:21', '2018-04-07 07:21:21');
INSERT INTO `admin_operation_log` VALUES (181, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 07:22:28', '2018-04-07 07:22:28');
INSERT INTO `admin_operation_log` VALUES (182, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 07:22:51', '2018-04-07 07:22:51');
INSERT INTO `admin_operation_log` VALUES (183, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 07:25:41', '2018-04-07 07:25:41');
INSERT INTO `admin_operation_log` VALUES (184, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 07:42:51', '2018-04-07 07:42:51');
INSERT INTO `admin_operation_log` VALUES (185, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 07:47:14', '2018-04-07 07:47:14');
INSERT INTO `admin_operation_log` VALUES (186, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 07:47:19', '2018-04-07 07:47:19');
INSERT INTO `admin_operation_log` VALUES (187, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 07:47:25', '2018-04-07 07:47:25');
INSERT INTO `admin_operation_log` VALUES (188, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 07:55:25', '2018-04-07 07:55:25');
INSERT INTO `admin_operation_log` VALUES (189, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 07:55:29', '2018-04-07 07:55:29');
INSERT INTO `admin_operation_log` VALUES (190, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 07:55:35', '2018-04-07 07:55:35');
INSERT INTO `admin_operation_log` VALUES (191, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 07:55:46', '2018-04-07 07:55:46');
INSERT INTO `admin_operation_log` VALUES (192, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 07:55:50', '2018-04-07 07:55:50');
INSERT INTO `admin_operation_log` VALUES (193, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 07:55:55', '2018-04-07 07:55:55');
INSERT INTO `admin_operation_log` VALUES (194, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 07:56:42', '2018-04-07 07:56:42');
INSERT INTO `admin_operation_log` VALUES (195, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 07:56:45', '2018-04-07 07:56:45');
INSERT INTO `admin_operation_log` VALUES (196, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 08:02:18', '2018-04-07 08:02:18');
INSERT INTO `admin_operation_log` VALUES (197, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 08:02:21', '2018-04-07 08:02:21');
INSERT INTO `admin_operation_log` VALUES (198, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 08:02:26', '2018-04-07 08:02:26');
INSERT INTO `admin_operation_log` VALUES (199, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 08:02:47', '2018-04-07 08:02:47');
INSERT INTO `admin_operation_log` VALUES (200, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 08:03:09', '2018-04-07 08:03:09');
INSERT INTO `admin_operation_log` VALUES (201, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 08:03:30', '2018-04-07 08:03:30');
INSERT INTO `admin_operation_log` VALUES (202, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 08:04:16', '2018-04-07 08:04:16');
INSERT INTO `admin_operation_log` VALUES (203, 1, 'admin/about/create', 'GET', '127.0.0.1', '[]', '2018-04-07 08:09:54', '2018-04-07 08:09:54');
INSERT INTO `admin_operation_log` VALUES (204, 1, 'admin/about', 'POST', '127.0.0.1', '{\"title\":\"\\u6807\\u98981\",\"summary\":\"\\u6458\\u89811\",\"content\":\"<p>sahdsjadasdsadasdasdafawdawdadasdas<\\/p>\\r\\n\\r\\n<p>dasddddddfwdasf<\\/p>\\r\\n\\r\\n<p>fsafsafsafsafsafasfsasda<\\/p>\",\"_token\":\"AwbmJnSrCo82kIturHHXiOc5SkeYQljDpBP0ZfON\"}', '2018-04-07 08:11:30', '2018-04-07 08:11:30');
INSERT INTO `admin_operation_log` VALUES (205, 1, 'admin/about', 'GET', '127.0.0.1', '[]', '2018-04-07 08:11:31', '2018-04-07 08:11:31');
INSERT INTO `admin_operation_log` VALUES (206, 1, 'admin/about', 'GET', '127.0.0.1', '[]', '2018-04-07 12:41:42', '2018-04-07 12:41:42');
INSERT INTO `admin_operation_log` VALUES (207, 1, 'admin/about', 'GET', '127.0.0.1', '[]', '2018-04-07 12:42:05', '2018-04-07 12:42:05');
INSERT INTO `admin_operation_log` VALUES (208, 1, 'admin/about', 'GET', '127.0.0.1', '[]', '2018-04-07 12:42:24', '2018-04-07 12:42:24');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (1, 2, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2018-04-05 18:28:31', '2018-04-05 18:28:31');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions`  (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$.afOKmdNYclfZ7qYbT8TfeQqbH9TordZuXMyGcfI1bv6ueNC.PeFq', 'Administrator', NULL, NULL, '2018-04-05 18:28:31', '2018-04-05 18:28:31');

-- ----------------------------
-- Table structure for company_info
-- ----------------------------
DROP TABLE IF EXISTS `company_info`;
CREATE TABLE `company_info`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qrcode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of company_info
-- ----------------------------
INSERT INTO `company_info` VALUES (1, '公司1', '公司地址', '18813578951', '111@qq.com', 'qrcode/a26a83a542f988391ff8d4066b88570f.jpg', 'asdajdad@dasjdka.casd', '1234587541', 'dmkajdsa', '2018-04-06 14:57:17', '2018-04-06 14:57:17');

-- ----------------------------
-- Table structure for info
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `summary` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of info
-- ----------------------------
INSERT INTO `info` VALUES (1, '资讯摘要', 'info_img/f707fff2a91d57735cdab64227e298d6.jpg', '2018-04-06 15:12:29', '2018-04-06 15:12:29');

-- ----------------------------
-- Table structure for info_article
-- ----------------------------
DROP TABLE IF EXISTS `info_article`;
CREATE TABLE `info_article`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of info_article
-- ----------------------------
INSERT INTO `info_article` VALUES (1, '1', '标题1', '内容1', 'article_img/e8d5aa3e4ec10f882d485bdac8c53b6f.jpg', '2018-04-06 15:07:49', '2018-04-06 15:07:49');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2016_01_04_173148_create_admin_tables', 1);
INSERT INTO `migrations` VALUES (2, '2018_04_05_181007_drop_admin_table', 2);
INSERT INTO `migrations` VALUES (3, '2014_10_12_100000_create_password_resets_table', 3);
INSERT INTO `migrations` VALUES (4, '2018_04_04_024038_create_slide_img_table', 4);
INSERT INTO `migrations` VALUES (5, '2018_04_04_024058_create_space_table', 4);
INSERT INTO `migrations` VALUES (6, '2018_04_04_024140_create_space_form_table', 4);
INSERT INTO `migrations` VALUES (7, '2018_04_04_024235_create_information_table', 5);
INSERT INTO `migrations` VALUES (8, '2018_04_04_024646_create_company_info_table', 5);
INSERT INTO `migrations` VALUES (9, '2018_04_04_024801_create_about_table', 5);
INSERT INTO `migrations` VALUES (10, '2018_04_06_030829_create_info_img_table', 5);
INSERT INTO `migrations` VALUES (11, '2018_04_06_072415_create_space_img_table', 5);
INSERT INTO `migrations` VALUES (12, '2018_04_06_114413_alert_company_info_table', 6);
INSERT INTO `migrations` VALUES (13, '2018_04_06_114437_alert_space_table', 6);
INSERT INTO `migrations` VALUES (14, '2018_04_06_115144_alert_about_table', 6);
INSERT INTO `migrations` VALUES (15, '2018_04_06_120054_alert_company_info_table', 7);
INSERT INTO `migrations` VALUES (16, '2018_04_06_120310_alert_space_table', 8);
INSERT INTO `migrations` VALUES (17, '2018_04_06_121918_create_info_table', 9);
INSERT INTO `migrations` VALUES (18, '2018_04_06_121936_create_info_article_table', 9);
INSERT INTO `migrations` VALUES (19, '2018_04_06_125805_create_space_table', 10);
INSERT INTO `migrations` VALUES (20, '2018_04_06_125825_create_space_project_table', 10);
INSERT INTO `migrations` VALUES (21, '2018_04_06_135612_create_space_form_table', 11);

-- ----------------------------
-- Table structure for slide_img
-- ----------------------------
DROP TABLE IF EXISTS `slide_img`;
CREATE TABLE `slide_img`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pic_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of slide_img
-- ----------------------------
INSERT INTO `slide_img` VALUES (1, '1', 'slide_img/8d69ed8e136508d96049aed1afa336b9.jpg', 'https://www.baidu.com/', '1', '2018-04-06 08:37:59', '2018-04-06 08:40:18');

-- ----------------------------
-- Table structure for space
-- ----------------------------
DROP TABLE IF EXISTS `space`;
CREATE TABLE `space`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `summary` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `place` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of space
-- ----------------------------
INSERT INTO `space` VALUES (1, '空间摘要1', '空间地点1', '空间标题1', 'space_img/ccc46a70a3d63dddff2e205110c6a2c9.jpg', '2018-04-06 15:19:46', '2018-04-06 15:19:46');

-- ----------------------------
-- Table structure for space_form
-- ----------------------------
DROP TABLE IF EXISTS `space_form`;
CREATE TABLE `space_form`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `project_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `space_form_project_id_foreign`(`project_id`) USING BTREE,
  CONSTRAINT `space_form_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `space_project` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of space_form
-- ----------------------------
INSERT INTO `space_form` VALUES (3, 1, 'user1', '23454545436', '备注1', '2018-04-06 15:36:19', '2018-04-06 15:36:19');

-- ----------------------------
-- Table structure for space_project
-- ----------------------------
DROP TABLE IF EXISTS `space_project`;
CREATE TABLE `space_project`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `space_id` int(10) UNSIGNED NOT NULL,
  `project` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `space_project_space_id_foreign`(`space_id`) USING BTREE,
  CONSTRAINT `space_project_space_id_foreign` FOREIGN KEY (`space_id`) REFERENCES `space` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of space_project
-- ----------------------------
INSERT INTO `space_project` VALUES (1, 1, '项目1', '项目标题1', 'project_img/f0550620cb4d636971689654045a6b2b.jpg', '项目内容1', '1245.da4sd', 'asdawawda', '2018-04-06 15:35:53', '2018-04-06 15:35:53');

SET FOREIGN_KEY_CHECKS = 1;
