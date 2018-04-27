/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : www.liuzhangcun.com

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-04-27 18:49:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', 'Index', 'fa-bar-chart', '/', null, null);
INSERT INTO `admin_menu` VALUES ('2', '0', '2', 'Admin', 'fa-tasks', '', null, null);
INSERT INTO `admin_menu` VALUES ('3', '2', '3', 'Users', 'fa-users', 'auth/users', null, null);
INSERT INTO `admin_menu` VALUES ('4', '2', '4', 'Roles', 'fa-user', 'auth/roles', null, null);
INSERT INTO `admin_menu` VALUES ('5', '2', '5', 'Permission', 'fa-ban', 'auth/permissions', null, null);
INSERT INTO `admin_menu` VALUES ('6', '2', '6', 'Menu', 'fa-bars', 'auth/menu', null, null);
INSERT INTO `admin_menu` VALUES ('7', '2', '7', 'Operation log', 'fa-history', 'auth/logs', null, null);
INSERT INTO `admin_menu` VALUES ('8', '0', '8', '分类', 'fa-bars', null, '2018-04-27 07:06:42', '2018-04-27 07:06:47');
INSERT INTO `admin_menu` VALUES ('9', '8', '9', '分类列表', 'fa-bars', '/cat', '2018-04-27 07:08:48', '2018-04-27 07:51:49');
INSERT INTO `admin_menu` VALUES ('10', '0', '10', '文章', 'fa-bars', null, '2018-04-27 07:09:21', '2018-04-27 07:09:35');
INSERT INTO `admin_menu` VALUES ('11', '10', '11', '文章列表', 'fa-bars', '/article', '2018-04-27 07:09:32', '2018-04-27 17:34:02');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-04-27 06:52:42', '2018-04-27 06:52:42');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 06:52:47', '2018-04-27 06:52:47');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 06:52:48', '2018-04-27 06:52:48');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 06:52:49', '2018-04-27 06:52:49');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 06:52:50', '2018-04-27 06:52:50');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 06:52:51', '2018-04-27 06:52:51');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 06:52:51', '2018-04-27 06:52:51');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 06:52:51', '2018-04-27 06:52:51');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 06:52:52', '2018-04-27 06:52:52');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 06:52:52', '2018-04-27 06:52:52');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:04:49', '2018-04-27 07:04:49');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:04:50', '2018-04-27 07:04:50');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:04:51', '2018-04-27 07:04:51');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:04:52', '2018-04-27 07:04:52');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:04:58', '2018-04-27 07:04:58');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:04:58', '2018-04-27 07:04:58');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:04:59', '2018-04-27 07:04:59');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:05:01', '2018-04-27 07:05:01');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:05:02', '2018-04-27 07:05:02');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:05:03', '2018-04-27 07:05:03');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:05:04', '2018-04-27 07:05:04');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:05:05', '2018-04-27 07:05:05');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:05:06', '2018-04-27 07:05:06');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:05:09', '2018-04-27 07:05:09');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:05:12', '2018-04-27 07:05:12');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:05:14', '2018-04-27 07:05:14');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:05:16', '2018-04-27 07:05:16');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:05:17', '2018-04-27 07:05:17');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:05:17', '2018-04-27 07:05:17');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:05:18', '2018-04-27 07:05:18');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:05:18', '2018-04-27 07:05:18');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:05:25', '2018-04-27 07:05:25');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:05:26', '2018-04-27 07:05:26');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:05:28', '2018-04-27 07:05:28');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:05:32', '2018-04-27 07:05:32');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:05:35', '2018-04-27 07:05:35');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:05:35', '2018-04-27 07:05:35');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:05:38', '2018-04-27 07:05:38');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:05:57', '2018-04-27 07:05:57');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:06:16', '2018-04-27 07:06:16');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":null,\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"pu9ba6FqsAXXw830weuUXf1wGN9UaxLv3TwNHZ77\"}', '2018-04-27 07:06:35', '2018-04-27 07:06:35');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-27 07:06:35', '2018-04-27 07:06:35');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5206\\u7c7b\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"pu9ba6FqsAXXw830weuUXf1wGN9UaxLv3TwNHZ77\"}', '2018-04-27 07:06:42', '2018-04-27 07:06:42');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-27 07:06:42', '2018-04-27 07:06:42');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"pu9ba6FqsAXXw830weuUXf1wGN9UaxLv3TwNHZ77\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8}]\"}', '2018-04-27 07:06:47', '2018-04-27 07:06:47');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:06:47', '2018-04-27 07:06:47');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-27 07:06:49', '2018-04-27 07:06:49');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:08:28', '2018-04-27 07:08:28');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:08:29', '2018-04-27 07:08:29');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:08:32', '2018-04-27 07:08:32');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u5206\\u7c7b\\u5217\\u8868\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"pu9ba6FqsAXXw830weuUXf1wGN9UaxLv3TwNHZ77\"}', '2018-04-27 07:08:48', '2018-04-27 07:08:48');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-27 07:08:48', '2018-04-27 07:08:48');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:08:53', '2018-04-27 07:08:53');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u5206\\u7c7b\\u5217\\u8868\",\"icon\":\"fa-bars\",\"uri\":\"cat\\/index\",\"roles\":[null],\"_token\":\"pu9ba6FqsAXXw830weuUXf1wGN9UaxLv3TwNHZ77\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/local.liuzhangcun.com\\/admin\\/auth\\/menu\"}', '2018-04-27 07:09:07', '2018-04-27 07:09:07');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-27 07:09:07', '2018-04-27 07:09:07');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"pu9ba6FqsAXXw830weuUXf1wGN9UaxLv3TwNHZ77\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9}]}]\"}', '2018-04-27 07:09:11', '2018-04-27 07:09:11');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:09:12', '2018-04-27 07:09:12');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-27 07:09:13', '2018-04-27 07:09:13');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6587\\u7ae0\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"pu9ba6FqsAXXw830weuUXf1wGN9UaxLv3TwNHZ77\"}', '2018-04-27 07:09:21', '2018-04-27 07:09:21');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-27 07:09:21', '2018-04-27 07:09:21');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u6587\\u7ae0\\u5217\\u8868\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"pu9ba6FqsAXXw830weuUXf1wGN9UaxLv3TwNHZ77\"}', '2018-04-27 07:09:32', '2018-04-27 07:09:32');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-27 07:09:33', '2018-04-27 07:09:33');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"pu9ba6FqsAXXw830weuUXf1wGN9UaxLv3TwNHZ77\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9}]},{\\\"id\\\":10,\\\"children\\\":[{\\\"id\\\":11}]}]\"}', '2018-04-27 07:09:35', '2018-04-27 07:09:35');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:09:35', '2018-04-27 07:09:35');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"pu9ba6FqsAXXw830weuUXf1wGN9UaxLv3TwNHZ77\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9}]},{\\\"id\\\":10,\\\"children\\\":[{\\\"id\\\":11}]}]\"}', '2018-04-27 07:11:23', '2018-04-27 07:11:23');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:11:24', '2018-04-27 07:11:24');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-27 07:11:25', '2018-04-27 07:11:25');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"pu9ba6FqsAXXw830weuUXf1wGN9UaxLv3TwNHZ77\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9}]},{\\\"id\\\":10,\\\"children\\\":[{\\\"id\\\":11}]}]\"}', '2018-04-27 07:17:16', '2018-04-27 07:17:16');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:17:17', '2018-04-27 07:17:17');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-27 07:17:19', '2018-04-27 07:17:19');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:17:25', '2018-04-27 07:17:25');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-04-27 07:17:53', '2018-04-27 07:17:53');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-04-27 07:48:47', '2018-04-27 07:48:47');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:48:52', '2018-04-27 07:48:52');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:50:14', '2018-04-27 07:50:14');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u5206\\u7c7b\\u5217\\u8868\",\"icon\":\"fa-bars\",\"uri\":\"cat\",\"roles\":[null],\"_token\":\"pu9ba6FqsAXXw830weuUXf1wGN9UaxLv3TwNHZ77\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/local.liuzhangcun.com\\/admin\\/auth\\/menu\"}', '2018-04-27 07:50:18', '2018-04-27 07:50:18');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-27 07:50:18', '2018-04-27 07:50:18');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"pu9ba6FqsAXXw830weuUXf1wGN9UaxLv3TwNHZ77\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9}]},{\\\"id\\\":10,\\\"children\\\":[{\\\"id\\\":11}]}]\"}', '2018-04-27 07:50:21', '2018-04-27 07:50:21');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:50:21', '2018-04-27 07:50:21');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-27 07:50:23', '2018-04-27 07:50:23');
INSERT INTO `admin_operation_log` VALUES ('81', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:51:35', '2018-04-27 07:51:35');
INSERT INTO `admin_operation_log` VALUES ('82', '1', 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u5206\\u7c7b\\u5217\\u8868\",\"icon\":\"fa-bars\",\"uri\":\"\\/cat\",\"roles\":[null],\"_token\":\"pu9ba6FqsAXXw830weuUXf1wGN9UaxLv3TwNHZ77\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/local.liuzhangcun.com\\/admin\\/auth\\/menu\"}', '2018-04-27 07:51:49', '2018-04-27 07:51:49');
INSERT INTO `admin_operation_log` VALUES ('83', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-27 07:51:49', '2018-04-27 07:51:49');
INSERT INTO `admin_operation_log` VALUES ('84', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"pu9ba6FqsAXXw830weuUXf1wGN9UaxLv3TwNHZ77\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9}]},{\\\"id\\\":10,\\\"children\\\":[{\\\"id\\\":11}]}]\"}', '2018-04-27 07:51:52', '2018-04-27 07:51:52');
INSERT INTO `admin_operation_log` VALUES ('85', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:51:52', '2018-04-27 07:51:52');
INSERT INTO `admin_operation_log` VALUES ('86', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-27 07:51:53', '2018-04-27 07:51:53');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'admin/cat', 'GET', '127.0.0.1', '[]', '2018-04-27 07:55:10', '2018-04-27 07:55:10');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin/cat', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:55:15', '2018-04-27 07:55:15');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin/cat', 'GET', '127.0.0.1', '[]', '2018-04-27 07:56:09', '2018-04-27 07:56:09');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin/cat/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:56:52', '2018-04-27 07:56:52');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin/cat', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:56:56', '2018-04-27 07:56:56');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin/cat', 'GET', '127.0.0.1', '[]', '2018-04-27 07:57:17', '2018-04-27 07:57:17');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin/cat/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:57:18', '2018-04-27 07:57:18');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin/cat/create', 'GET', '127.0.0.1', '[]', '2018-04-27 07:57:20', '2018-04-27 07:57:20');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin/cat/create', 'GET', '127.0.0.1', '[]', '2018-04-27 07:57:25', '2018-04-27 07:57:25');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin/cat/create', 'GET', '127.0.0.1', '[]', '2018-04-27 07:57:28', '2018-04-27 07:57:28');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 07:59:14', '2018-04-27 07:59:14');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 08:03:15', '2018-04-27 08:03:15');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'admin/cat', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 08:03:28', '2018-04-27 08:03:28');
INSERT INTO `admin_operation_log` VALUES ('100', '1', 'admin/cat/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 08:03:31', '2018-04-27 08:03:31');
INSERT INTO `admin_operation_log` VALUES ('101', '1', 'admin/cat', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 08:03:34', '2018-04-27 08:03:34');
INSERT INTO `admin_operation_log` VALUES ('102', '1', 'admin/cat', 'GET', '127.0.0.1', '[]', '2018-04-27 08:03:35', '2018-04-27 08:03:35');
INSERT INTO `admin_operation_log` VALUES ('103', '1', 'admin/cat', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 08:03:39', '2018-04-27 08:03:39');
INSERT INTO `admin_operation_log` VALUES ('104', '1', 'admin/cat/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 08:03:40', '2018-04-27 08:03:40');
INSERT INTO `admin_operation_log` VALUES ('105', '1', 'admin/cat/create', 'GET', '127.0.0.1', '[]', '2018-04-27 08:04:08', '2018-04-27 08:04:08');
INSERT INTO `admin_operation_log` VALUES ('106', '1', 'admin/cat/create', 'GET', '127.0.0.1', '[]', '2018-04-27 08:27:23', '2018-04-27 08:27:23');
INSERT INTO `admin_operation_log` VALUES ('107', '1', 'admin/cat/create', 'GET', '127.0.0.1', '[]', '2018-04-27 08:59:38', '2018-04-27 08:59:38');
INSERT INTO `admin_operation_log` VALUES ('108', '1', 'admin/cat', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"cat_name\":\"PHP\",\"_token\":\"pu9ba6FqsAXXw830weuUXf1wGN9UaxLv3TwNHZ77\"}', '2018-04-27 09:00:01', '2018-04-27 09:00:01');
INSERT INTO `admin_operation_log` VALUES ('109', '1', 'admin/cat', 'GET', '127.0.0.1', '[]', '2018-04-27 09:00:01', '2018-04-27 09:00:01');
INSERT INTO `admin_operation_log` VALUES ('110', '1', 'admin/cat/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 09:00:14', '2018-04-27 09:00:14');
INSERT INTO `admin_operation_log` VALUES ('111', '1', 'admin/cat/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-27 09:00:27', '2018-04-27 09:00:27');
INSERT INTO `admin_operation_log` VALUES ('112', '1', 'admin/cat', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 09:00:31', '2018-04-27 09:00:31');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'admin/cat/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 09:00:40', '2018-04-27 09:00:40');
INSERT INTO `admin_operation_log` VALUES ('114', '1', 'admin/cat', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 09:00:46', '2018-04-27 09:00:46');
INSERT INTO `admin_operation_log` VALUES ('115', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 09:00:50', '2018-04-27 09:00:50');
INSERT INTO `admin_operation_log` VALUES ('116', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 09:00:51', '2018-04-27 09:00:51');
INSERT INTO `admin_operation_log` VALUES ('117', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 09:00:52', '2018-04-27 09:00:52');
INSERT INTO `admin_operation_log` VALUES ('118', '1', 'admin/cat', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 17:04:34', '2018-04-27 17:04:34');
INSERT INTO `admin_operation_log` VALUES ('119', '1', 'admin/cat', 'GET', '127.0.0.1', '[]', '2018-04-27 17:05:24', '2018-04-27 17:05:24');
INSERT INTO `admin_operation_log` VALUES ('120', '1', 'admin/cat', 'GET', '127.0.0.1', '[]', '2018-04-27 17:05:26', '2018-04-27 17:05:26');
INSERT INTO `admin_operation_log` VALUES ('121', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 17:05:34', '2018-04-27 17:05:34');
INSERT INTO `admin_operation_log` VALUES ('122', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-04-27 17:05:39', '2018-04-27 17:05:39');
INSERT INTO `admin_operation_log` VALUES ('123', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 17:05:47', '2018-04-27 17:05:47');
INSERT INTO `admin_operation_log` VALUES ('124', '1', 'admin/cat', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 17:05:50', '2018-04-27 17:05:50');
INSERT INTO `admin_operation_log` VALUES ('125', '1', 'admin/cat/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 17:05:54', '2018-04-27 17:05:54');
INSERT INTO `admin_operation_log` VALUES ('126', '1', 'admin/cat/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"cat_name\":\"PHP\",\"_token\":\"pu9ba6FqsAXXw830weuUXf1wGN9UaxLv3TwNHZ77\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/local.liuzhangcun.com\\/admin\\/cat\"}', '2018-04-27 17:05:55', '2018-04-27 17:05:55');
INSERT INTO `admin_operation_log` VALUES ('127', '1', 'admin/cat', 'GET', '127.0.0.1', '[]', '2018-04-27 17:05:56', '2018-04-27 17:05:56');
INSERT INTO `admin_operation_log` VALUES ('128', '1', 'admin/cat', 'GET', '127.0.0.1', '[]', '2018-04-27 17:05:58', '2018-04-27 17:05:58');
INSERT INTO `admin_operation_log` VALUES ('129', '1', 'admin/cat/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 17:06:06', '2018-04-27 17:06:06');
INSERT INTO `admin_operation_log` VALUES ('130', '1', 'admin/cat', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"cat_name\":\"Laravel\",\"_token\":\"pu9ba6FqsAXXw830weuUXf1wGN9UaxLv3TwNHZ77\",\"_previous_\":\"http:\\/\\/local.liuzhangcun.com\\/admin\\/cat\"}', '2018-04-27 17:06:23', '2018-04-27 17:06:23');
INSERT INTO `admin_operation_log` VALUES ('131', '1', 'admin/cat', 'GET', '127.0.0.1', '[]', '2018-04-27 17:06:24', '2018-04-27 17:06:24');
INSERT INTO `admin_operation_log` VALUES ('132', '1', 'admin/cat/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 17:06:34', '2018-04-27 17:06:34');
INSERT INTO `admin_operation_log` VALUES ('133', '1', 'admin/cat/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"cat_name\":\"Laravel\",\"_token\":\"pu9ba6FqsAXXw830weuUXf1wGN9UaxLv3TwNHZ77\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/local.liuzhangcun.com\\/admin\\/cat\"}', '2018-04-27 17:06:40', '2018-04-27 17:06:40');
INSERT INTO `admin_operation_log` VALUES ('134', '1', 'admin/cat', 'GET', '127.0.0.1', '[]', '2018-04-27 17:06:40', '2018-04-27 17:06:40');
INSERT INTO `admin_operation_log` VALUES ('135', '1', 'admin/cat/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 17:07:33', '2018-04-27 17:07:33');
INSERT INTO `admin_operation_log` VALUES ('136', '1', 'admin/cat/create', 'GET', '127.0.0.1', '[]', '2018-04-27 17:07:54', '2018-04-27 17:07:54');
INSERT INTO `admin_operation_log` VALUES ('137', '1', 'admin/cat/create', 'GET', '127.0.0.1', '[]', '2018-04-27 17:07:56', '2018-04-27 17:07:56');
INSERT INTO `admin_operation_log` VALUES ('138', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 17:07:59', '2018-04-27 17:07:59');
INSERT INTO `admin_operation_log` VALUES ('139', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-04-27 17:08:04', '2018-04-27 17:08:04');
INSERT INTO `admin_operation_log` VALUES ('140', '1', 'admin/cat', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 17:11:26', '2018-04-27 17:11:26');
INSERT INTO `admin_operation_log` VALUES ('141', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 17:11:31', '2018-04-27 17:11:31');
INSERT INTO `admin_operation_log` VALUES ('142', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 17:33:43', '2018-04-27 17:33:43');
INSERT INTO `admin_operation_log` VALUES ('143', '1', 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 17:33:46', '2018-04-27 17:33:46');
INSERT INTO `admin_operation_log` VALUES ('144', '1', 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u6587\\u7ae0\\u5217\\u8868\",\"icon\":\"fa-bars\",\"uri\":\"\\/article\",\"roles\":[null],\"_token\":\"pu9ba6FqsAXXw830weuUXf1wGN9UaxLv3TwNHZ77\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/local.liuzhangcun.com\\/admin\\/auth\\/menu\"}', '2018-04-27 17:34:02', '2018-04-27 17:34:02');
INSERT INTO `admin_operation_log` VALUES ('145', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-27 17:34:02', '2018-04-27 17:34:02');
INSERT INTO `admin_operation_log` VALUES ('146', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 17:34:06', '2018-04-27 17:34:06');
INSERT INTO `admin_operation_log` VALUES ('147', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 17:34:08', '2018-04-27 17:34:08');
INSERT INTO `admin_operation_log` VALUES ('148', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"pu9ba6FqsAXXw830weuUXf1wGN9UaxLv3TwNHZ77\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9}]},{\\\"id\\\":10,\\\"children\\\":[{\\\"id\\\":11}]}]\"}', '2018-04-27 17:34:10', '2018-04-27 17:34:10');
INSERT INTO `admin_operation_log` VALUES ('149', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"pu9ba6FqsAXXw830weuUXf1wGN9UaxLv3TwNHZ77\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9}]},{\\\"id\\\":10,\\\"children\\\":[{\\\"id\\\":11}]}]\"}', '2018-04-27 17:34:10', '2018-04-27 17:34:10');
INSERT INTO `admin_operation_log` VALUES ('150', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 17:34:10', '2018-04-27 17:34:10');
INSERT INTO `admin_operation_log` VALUES ('151', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 17:34:10', '2018-04-27 17:34:10');
INSERT INTO `admin_operation_log` VALUES ('152', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-27 17:34:12', '2018-04-27 17:34:12');
INSERT INTO `admin_operation_log` VALUES ('153', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 17:34:15', '2018-04-27 17:34:15');
INSERT INTO `admin_operation_log` VALUES ('154', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-04-27 17:36:23', '2018-04-27 17:36:23');
INSERT INTO `admin_operation_log` VALUES ('155', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-04-27 17:37:14', '2018-04-27 17:37:14');
INSERT INTO `admin_operation_log` VALUES ('156', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-04-27 17:39:16', '2018-04-27 17:39:16');
INSERT INTO `admin_operation_log` VALUES ('157', '1', 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 17:39:24', '2018-04-27 17:39:24');
INSERT INTO `admin_operation_log` VALUES ('158', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-04-27 17:41:23', '2018-04-27 17:41:23');
INSERT INTO `admin_operation_log` VALUES ('159', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-04-27 17:45:56', '2018-04-27 17:45:56');
INSERT INTO `admin_operation_log` VALUES ('160', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-04-27 17:45:58', '2018-04-27 17:45:58');
INSERT INTO `admin_operation_log` VALUES ('161', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-04-27 17:46:04', '2018-04-27 17:46:04');
INSERT INTO `admin_operation_log` VALUES ('162', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-04-27 18:10:14', '2018-04-27 18:10:14');
INSERT INTO `admin_operation_log` VALUES ('163', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-04-27 18:11:29', '2018-04-27 18:11:29');
INSERT INTO `admin_operation_log` VALUES ('164', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-04-27 18:21:36', '2018-04-27 18:21:36');
INSERT INTO `admin_operation_log` VALUES ('165', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 18:23:27', '2018-04-27 18:23:27');
INSERT INTO `admin_operation_log` VALUES ('166', '1', 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 18:23:29', '2018-04-27 18:23:29');
INSERT INTO `admin_operation_log` VALUES ('167', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-04-27 18:24:15', '2018-04-27 18:24:15');
INSERT INTO `admin_operation_log` VALUES ('168', '1', 'admin/article', 'POST', '127.0.0.1', '{\"title\":\"PHP\",\"cat_id\":\"1\",\"content\":\"<p><\\/p><p>php<\\/p><pre><code><span style=\\\"color: rgb(249, 150, 59);\\\">&lt;?php<\\/span><br><span style=\\\"color: rgb(194, 79, 74);\\\">echo <\\/span>\'123\';<\\/code><\\/pre><p>w<\\/p>\",\"_token\":\"pu9ba6FqsAXXw830weuUXf1wGN9UaxLv3TwNHZ77\"}', '2018-04-27 18:24:54', '2018-04-27 18:24:54');
INSERT INTO `admin_operation_log` VALUES ('169', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-04-27 18:24:54', '2018-04-27 18:24:54');
INSERT INTO `admin_operation_log` VALUES ('170', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-04-27 18:25:18', '2018-04-27 18:25:18');
INSERT INTO `admin_operation_log` VALUES ('171', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-04-27 18:31:11', '2018-04-27 18:31:11');
INSERT INTO `admin_operation_log` VALUES ('172', '1', 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 18:31:13', '2018-04-27 18:31:13');
INSERT INTO `admin_operation_log` VALUES ('173', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-04-27 18:31:13', '2018-04-27 18:31:13');
INSERT INTO `admin_operation_log` VALUES ('174', '1', 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 18:34:53', '2018-04-27 18:34:53');
INSERT INTO `admin_operation_log` VALUES ('175', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-04-27 18:38:00', '2018-04-27 18:38:00');
INSERT INTO `admin_operation_log` VALUES ('176', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-04-27 18:39:02', '2018-04-27 18:39:02');
INSERT INTO `admin_operation_log` VALUES ('177', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-04-27 18:39:10', '2018-04-27 18:39:10');
INSERT INTO `admin_operation_log` VALUES ('178', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-04-27 18:39:21', '2018-04-27 18:39:21');
INSERT INTO `admin_operation_log` VALUES ('179', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-04-27 18:39:28', '2018-04-27 18:39:28');
INSERT INTO `admin_operation_log` VALUES ('180', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-04-27 18:39:57', '2018-04-27 18:39:57');
INSERT INTO `admin_operation_log` VALUES ('181', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-04-27 18:40:04', '2018-04-27 18:40:04');
INSERT INTO `admin_operation_log` VALUES ('182', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-04-27 18:40:20', '2018-04-27 18:40:20');
INSERT INTO `admin_operation_log` VALUES ('183', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-04-27 18:41:14', '2018-04-27 18:41:14');
INSERT INTO `admin_operation_log` VALUES ('184', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-04-27 18:41:27', '2018-04-27 18:41:27');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2018-04-27 06:52:15', '2018-04-27 06:52:15');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$N2qTu7aCNG.McyP4M/PeVewnTgDQs.Cctri7ZzzQIkPb4Vvt2i9dy', 'Administrator', null, '29jOW9g6GcTDxq7AgA0fx6uysfaBGHNBsjejsKyd2pMxX2JfZ9kzFGrFftiJ', '2018-04-27 06:52:15', '2018-04-27 06:52:15');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int(10) unsigned DEFAULT NULL COMMENT '分类id',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文章标题',
  `author` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '作者',
  `content` longtext COLLATE utf8mb4_unicode_ci COMMENT '文章标题',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '1', 'PHP', null, '<p></p><p>php</p><pre><code><span style=\"color: rgb(249, 150, 59);\">&lt;?php</span><br><span style=\"color: rgb(194, 79, 74);\">echo </span>\'123\';</code></pre><p>w</p>', '2018-04-27 18:24:54', '2018-04-27 18:24:54', null);

-- ----------------------------
-- Table structure for cat
-- ----------------------------
DROP TABLE IF EXISTS `cat`;
CREATE TABLE `cat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT '上级分类',
  `cat_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '分类名称',
  `status` int(10) unsigned DEFAULT NULL COMMENT '状态',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cat
-- ----------------------------
INSERT INTO `cat` VALUES ('1', '0', 'PHP', null, '2018-04-27 09:00:01', '2018-04-27 09:00:01', null);
INSERT INTO `cat` VALUES ('2', '0', 'Laravel', null, '2018-04-27 17:06:23', '2018-04-27 17:06:23', null);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2016_01_04_173148_create_admin_tables', '1');
INSERT INTO `migrations` VALUES ('3', '2018_04_27_072049_create_cat_table', '2');
INSERT INTO `migrations` VALUES ('4', '2018_04_27_171514_create_article_table', '3');
