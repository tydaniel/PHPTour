/*
Navicat MySQL Data Transfer

Source Server         : wamp-mysql
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : fms

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-05-31 15:02:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_sys_member`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_member`;
CREATE TABLE `t_sys_member` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(100) NOT NULL,
  `password` char(32) NOT NULL,
  `email` char(50) DEFAULT '',
  `group_id` tinyint(3) unsigned DEFAULT '0',
  `is_choose_type` tinyint(1) unsigned DEFAULT '0',
  `open_id` varchar(100) DEFAULT NULL,
  `avatar` varchar(50) DEFAULT NULL,
  `reg_ip` char(15) DEFAULT NULL,
  `reg_time` datetime DEFAULT NULL,
  `last_login_ip` char(15) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `encrypt` varchar(50) DEFAULT NULL,
  `is_lock` tinyint(1) DEFAULT '0',
  `fullname` varchar(50) DEFAULT NULL,
  `qq` varchar(50) DEFAULT NULL,
  `weixin` varchar(50) DEFAULT NULL,
  `is_seller` tinyint(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `is_email_validate` tinyint(1) DEFAULT '0',
  `is_mobile_validate` tinyint(1) DEFAULT '0',
  `mobile` varchar(50) DEFAULT NULL,
  `sex` varchar(2) DEFAULT '0',
  `birthday` date DEFAULT NULL,
  `province_code` varchar(10) DEFAULT NULL,
  `city_code` varchar(10) DEFAULT NULL,
  `district_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`(15)),
  KEY `email` (`email`),
  KEY `groupID` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_member
-- ----------------------------
INSERT INTO `t_sys_member` VALUES ('1', 'admin', 'fb469d7ef430b0baf0cab6c436e70375', 'panxiaojun@jtu.edu.cn', '1', '0', null, 'aci.jpg', null, null, '127.0.0.1', '2017-05-31 06:17:02', null, '0', '潘小熊', '5516448', 'dawang', '1', '2015-03-05 18:12:00', '2015-03-10 22:31:19', '1', '1', '13099999999', '男', '1985-10-21', '310000', '310100', '310118');
INSERT INTO `t_sys_member` VALUES ('5', 'libadmin', '5a9e37955a5ad4fc38aa0ebf57c13e47', 'libadmin@jtu.edu.cn', '2', '0', null, 'nopic.gif', '::1', '2017-05-19 14:10:23', '::1', '2017-05-19 14:10:50', 'CZlhq', '0', '张馆长', null, null, '0', null, null, '0', '0', '13511123456', '0', null, null, null, null);
INSERT INTO `t_sys_member` VALUES ('6', 'student.pan', '6521fb46d5e23d012893cec2bc5e1c05', 'student.pan@jtu.edu.cn', '3', '0', null, 'nopic.gif', '::1', '2017-05-20 00:35:21', null, null, 'RT3eG', '0', '流川枫', null, null, '0', null, null, '0', '0', '13512346987', '0', null, null, null, null);

-- ----------------------------
-- Table structure for `t_sys_member_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_member_role`;
CREATE TABLE `t_sys_member_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '组ID',
  `role_name` varchar(45) NOT NULL DEFAULT '' COMMENT '组名',
  `type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '保留',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `description` varchar(200) DEFAULT NULL COMMENT '描述',
  `parent_id` smallint(4) DEFAULT '0',
  `arr_childid` varchar(255) DEFAULT NULL,
  `auto_choose` tinyint(1) NOT NULL DEFAULT '1',
  `arr_userid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of t_sys_member_role
-- ----------------------------
INSERT INTO `t_sys_member_role` VALUES ('1', '超级管理员', '0', '0', '超级管理员', '0', null, '1', null);
INSERT INTO `t_sys_member_role` VALUES ('2', 'operator', '0', '0', '运营', '0', null, '1', null);
INSERT INTO `t_sys_member_role` VALUES ('3', 'finance', '0', '0', '财务', '0', null, '1', null);
INSERT INTO `t_sys_member_role` VALUES ('4', 'tech', '0', '0', '技术', '0', null, '1', null);
INSERT INTO `t_sys_member_role` VALUES ('5', 'other', '0', '0', '其他', '0', null, '1', null);

-- ----------------------------
-- Table structure for `t_sys_member_role_priv`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_member_role_priv`;
CREATE TABLE `t_sys_member_role_priv` (
  `role_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `folder` varchar(50) NOT NULL DEFAULT '',
  `controller` varchar(50) NOT NULL DEFAULT '',
  `method` varchar(50) NOT NULL DEFAULT '',
  `data` varchar(50) NOT NULL DEFAULT '',
  `priv_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT '0',
  PRIMARY KEY (`priv_id`),
  KEY `role_id` (`role_id`,`folder`,`controller`,`method`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_member_role_priv
-- ----------------------------
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'bookadmin', 'index', '', '68', '43');
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'manage', 'go_42', '', '67', '42');
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'manage', 'logout', '', '66', '8');
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'profile', 'change_pwd', '', '65', '7');
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'manage', 'index', '', '64', '6');
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'manage', 'go_5', '', '63', '5');
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'manage', 'go_4', '', '62', '4');
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'manage', 'go_1', '', '61', '1');
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'bookadmin', 'add', '', '69', '44');
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'bookadmin', 'edit', '', '70', '45');
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'bookadmin', 'choose', '', '71', '46');
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'bookadmin', 'delete_one', '', '72', '47');
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'bookadmin', 'delete_all', '', '73', '48');
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'bookadmin', 'readonly', '', '74', '49');
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'bookadmin', 'upload', '', '75', '50');

-- ----------------------------
-- Table structure for `t_sys_module_menu`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_module_menu`;
CREATE TABLE `t_sys_module_menu` (
  `menu_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `menu_name` char(40) NOT NULL DEFAULT '',
  `parent_id` smallint(6) NOT NULL DEFAULT '0',
  `list_order` smallint(6) unsigned NOT NULL DEFAULT '0',
  `is_display` tinyint(1) NOT NULL DEFAULT '1',
  `controller` varchar(50) DEFAULT NULL,
  `folder` varchar(50) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `flag_id` varchar(50) NOT NULL DEFAULT '0',
  `is_side_menu` tinyint(1) DEFAULT '0',
  `is_system` tinyint(1) DEFAULT '0',
  `is_works` tinyint(1) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `css_icon` varchar(50) DEFAULT NULL,
  `arr_parentid` varchar(250) DEFAULT NULL,
  `arr_childid` varchar(250) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT '0',
  `show_where` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`menu_id`) USING BTREE,
  KEY `list_order` (`list_order`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_module_menu
-- ----------------------------
INSERT INTO `t_sys_module_menu` VALUES ('1', '首页', '0', '1', '1', 'manage', 'adminpanel', 'go_1', '0', '1', '0', '1', '1', 'home', '0', '1,5,6,7,41,8', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('2', '用户管理', '60', '2', '1', 'manage', 'adminpanel', 'go_2', '0', '1', '0', '1', '1', 'street-view', '0,60', '2,9,31,32,33,34,35,36,37,10,26,27,28,29,30', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('3', '功能管理', '60', '3', '1', 'manage', 'adminpanel', 'go_3', '0', '1', '0', '1', '1', 'list-ol', '0,60', '3,61', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('5', '我的', '1', '5', '1', 'manage', 'adminpanel', 'go_5', '0', '1', '0', '1', '1', '', '0,1', '5,6,7,41,8', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('6', '控制面板', '5', '6', '1', 'manage', 'adminpanel', 'index', '0', '1', '0', '1', '1', '', '0,1,5', '6', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('7', '修改密码', '5', '7', '1', 'profile', 'adminpanel', 'change_pwd', '0', '1', '0', '1', '1', '', '0,1,5', '7', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('8', '注销', '5', '8', '1', 'manage', 'adminpanel', 'logout', '0', '1', '0', '1', '1', '', '0,1,5', '8', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('9', '管理用户', '2', '9', '1', 'user', 'adminpanel', 'index', '0', '1', '0', '1', '1', '', '0,60,2', '9,31,32,33,34,35,36,37', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('10', '管理用户组', '2', '10', '1', 'role', 'adminpanel', 'index', '0', '1', '0', '1', '1', '', '0,60,2', '10,26,27,28,29,30', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('26', '用户组列表', '10', '26', '1', 'role', 'adminpanel', 'index', '0', '1', '0', '1', '1', '', '0,60,2,10', '26,27,28,29,30', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('27', '新增', '26', '27', '1', 'role', 'adminpanel', 'add', '0', '1', '0', '1', '1', '', '0,60,2,10,26', '27', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('28', '编辑', '26', '28', '1', 'role', 'adminpanel', 'edit', '0', '1', '0', '1', '1', '', '0,60,2,10,26', '28', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('29', '删除', '26', '29', '1', 'role', 'adminpanel', 'delete_one', '0', '1', '0', '1', '1', '', '0,60,2,10,26', '29', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('30', '设置权限', '26', '30', '1', 'role', 'adminpanel', 'setting', '0', '1', '0', '1', '1', '', '0,60,2,10,26', '30', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('31', '用户列表', '9', '31', '1', 'user', 'adminpanel', 'index', '0', '1', '0', '1', '1', '', '0,60,2,9', '31,32,33,34,35,36,37', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('32', '新增', '31', '32', '1', 'user', 'adminpanel', 'add', '0', '1', '0', '1', '1', '', '0,60,2,9,31', '32', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('33', '编辑', '31', '33', '1', 'user', 'adminpanel', 'edit', '0', '1', '0', '1', '1', '', '0,60,2,9,31', '33', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('34', '检测用户名', '31', '34', '1', 'user', 'adminpanel', 'check_username', '0', '1', '0', '1', '1', '', '0,60,2,9,31', '34', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('35', '删除', '31', '35', '1', 'user', 'adminpanel', 'delete', '0', '1', '0', '1', '1', '', '0,60,2,9,31', '35', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('36', '锁定/解锁', '31', '36', '1', 'user', 'adminpanel', 'lock', '0', '1', '0', '1', '1', '', '0,60,2,9,31', '36', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('37', '上传头像', '31', '37', '1', 'user', 'adminpanel', 'upload', '0', '1', '0', '1', '1', '', '0,60,2,9,31', '37', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('41', '全局缓存', '5', '7', '1', 'manage', 'adminpanel', 'cache', '0', '1', '0', '1', '1', '', '0,1,5', '41', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('60', '系统管理', '0', '60', '1', 'manage', 'adminpanel', 'go_60', '0', '1', '0', '1', '1', 'gears', '0', '60,2,9,31,32,33,34,35,36,37,10,26,27,28,29,30,3,61', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('61', '功能列表', '3', '61', '1', 'moduleMenu', 'adminpanel', 'index', '0', '1', '0', '1', '1', '', '0,60,3', '61', '0', '1');

-- ----------------------------
-- Table structure for `t_sys_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_sessions`;
CREATE TABLE `t_sys_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_sys_sessions
-- ----------------------------
INSERT INTO `t_sys_sessions` VALUES ('76d6f6288e10505cbc049bc398b9446582fa71a8', '127.0.0.1', '1496213613', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439363231333630383B);
INSERT INTO `t_sys_sessions` VALUES ('462ab46590a1c350087b1946e30b70dbfaff1b76', '127.0.0.1', '1496213323', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439363231333032333B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('812516211271efbd1a208d7de6042015bad26a09', '127.0.0.1', '1496212425', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439363231323338393B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('ff2adc19fe7747e3dd448c3e0126a032a6843f0a', '127.0.0.1', '1496212389', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439363231323037393B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('17b2e4c4b0efb491c946842366ca17681edb2bcb', '127.0.0.1', '1496210779', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439363231303539393B);
INSERT INTO `t_sys_sessions` VALUES ('29ff1ec2b513d3f6e2b21b48ac2cb39bdbee8a5d', '127.0.0.1', '1496211161', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439363231303932323B);
INSERT INTO `t_sys_sessions` VALUES ('bc318293b064c74be6a6c90aef716be0e72be511', '127.0.0.1', '1496211704', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439363231313431353B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('ec77e17b5602e31a9c7c4a60412fdf7679639019', '127.0.0.1', '1496212072', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439363231313737323B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);

-- ----------------------------
-- Table structure for `t_sys_times`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_times`;
CREATE TABLE `t_sys_times` (
  `times_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `login_ip` char(15) DEFAULT NULL COMMENT 'ip',
  `login_time` int(10) unsigned DEFAULT NULL,
  `group_id` int(10) unsigned DEFAULT NULL,
  `failure_times` int(10) unsigned DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`times_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_times
-- ----------------------------
