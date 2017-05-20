/*
Navicat MySQL Data Transfer

Source Server         : WAMP Local(bear)
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : libsysdb

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-05-20 15:56:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_aci_bookadmin`
-- ----------------------------
DROP TABLE IF EXISTS `t_aci_bookadmin`;
CREATE TABLE `t_aci_bookadmin` (
  `book_name` varchar(250) DEFAULT NULL COMMENT '图书名',
  `book_author` varchar(250) DEFAULT NULL COMMENT '作者',
  `book_publishing` varchar(250) DEFAULT NULL COMMENT '出版社',
  `book_class` varchar(250) DEFAULT NULL COMMENT '图书种类',
  `book_no` varchar(250) DEFAULT NULL COMMENT 'ISBN',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `book_total` int(11) DEFAULT '0' COMMENT '库存总量',
  `book_borrowed` int(11) DEFAULT '0' COMMENT '已借数量',
  `create_date` varchar(50) DEFAULT NULL COMMENT '创建日期',
  `bookadmin_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`bookadmin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_aci_bookadmin
-- ----------------------------
INSERT INTO `t_aci_bookadmin` VALUES ('极简欧洲史', '宇宙', '世界图书出版社', '历史', '123-N111', '1', '10', '0', '2017-05-19 14:03:58', '1');
INSERT INTO `t_aci_bookadmin` VALUES ('麦哲伦航海纪', '苏惠玲', '希望出版社', '历史', '123-N112', '1', '10', '0', '2017-05-19 14:05:54', '2');
INSERT INTO `t_aci_bookadmin` VALUES ('未来简史', '尤瓦尔', '中信出版社', '历史', '123-N113', '1', '8', '0', '2017-05-19 14:07:35', '3');
INSERT INTO `t_aci_bookadmin` VALUES ('TensorFlow实战', '黄文坚', '电子工业出版社', '计算机', '224-N211', '5', '5', '0', '2017-05-19 14:14:29', '4');
INSERT INTO `t_aci_bookadmin` VALUES ('盈利的艺术', '亚德里安', '电子工业出版社', '计算机', '224-N213', '5', '5', '0', '2017-05-19 14:17:59', '5');
INSERT INTO `t_aci_bookadmin` VALUES ('运营前线1：一线运营专家的运营方法、技巧与实践', '兰军（BLUES）', '机械工业出版社', '计算机', '9787111560876', '1', '5', '0', '2017-05-20 00:41:11', '6');
INSERT INTO `t_aci_bookadmin` VALUES ('流畅的Python', '[巴西]卢西亚诺·拉马略（Luciano Ramalho）', '人民邮电出版社', '计算机', '9787115454157', '1', '4', '0', '2017-05-20 00:42:52', '7');
INSERT INTO `t_aci_bookadmin` VALUES ('C++ Primer中文版(第5版)', '(美)李普曼', '电子工业出版社', '计算机', '9787121155352', '1', '6', '0', '2017-05-20 00:45:39', '8');

-- ----------------------------
-- Table structure for `t_lib_borrow`
-- ----------------------------
DROP TABLE IF EXISTS `t_lib_borrow`;
CREATE TABLE `t_lib_borrow` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `userid` mediumint(8) NOT NULL COMMENT '借阅用户ID',
  `bookid` int(11) NOT NULL COMMENT '借阅图书ID',
  `borrowdate` datetime NOT NULL COMMENT '借阅时间',
  `returndate` datetime NOT NULL COMMENT '归还时间',
  `returnflag` tinyint(2) NOT NULL DEFAULT '0' COMMENT '归还状态标志',
  `expireflag` tinyint(2) NOT NULL DEFAULT '0' COMMENT '过期状态标志',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='借阅信息明细';

-- ----------------------------
-- Records of t_lib_borrow
-- ----------------------------
INSERT INTO `t_lib_borrow` VALUES ('1', '1', '1', '2017-04-06 10:27:55', '2017-05-06 23:59:59', '0', '0');
INSERT INTO `t_lib_borrow` VALUES ('2', '1', '2', '2017-04-06 10:27:55', '2017-05-06 23:59:59', '0', '0');
INSERT INTO `t_lib_borrow` VALUES ('3', '1', '5', '2017-04-06 10:27:55', '2017-05-06 23:59:59', '0', '0');
INSERT INTO `t_lib_borrow` VALUES ('4', '2', '3', '2017-03-06 10:27:55', '2017-04-06 23:59:59', '1', '0');
INSERT INTO `t_lib_borrow` VALUES ('5', '2', '4', '2017-04-06 10:27:55', '2017-05-06 23:59:59', '0', '0');

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
INSERT INTO `t_sys_member` VALUES ('1', 'admin', 'fb469d7ef430b0baf0cab6c436e70375', 'panxiaojun@jtu.edu.cn', '1', '0', null, 'aci.jpg', null, null, '::1', '2017-05-20 00:33:24', null, '0', '潘小熊', '5516448', 'dawang', '1', '2015-03-05 18:12:00', '2015-03-10 22:31:19', '1', '1', '13099999999', '男', '1985-10-21', '310000', '310100', '310118');
INSERT INTO `t_sys_member` VALUES ('2', 'xiaoer', 'f1c0334807a3a51724850170326d3b6e', 'lyhuc@163.com', '2', '0', null, 'nopic.gif', '::1', null, '::1', null, 'wOxmG', '1', '小二', null, null, '0', null, null, '0', '0', '13099999999', '0', null, null, null, null);
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of t_sys_member_role
-- ----------------------------
INSERT INTO `t_sys_member_role` VALUES ('1', '超级管理员', '0', '0', '超级管理员', '0', null, '1', null);
INSERT INTO `t_sys_member_role` VALUES ('2', '图书管理员', '0', '0', '图书管理员', '0', null, '1', null);
INSERT INTO `t_sys_member_role` VALUES ('3', '读者', '0', '0', '读者', '0', null, '1', null);

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
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_module_menu
-- ----------------------------
INSERT INTO `t_sys_module_menu` VALUES ('1', '首页', '0', '1', '1', 'manage', 'adminpanel', 'go_1', '0', '1', '0', '1', '1', 'home', '0', '1,5,6,7,41,8', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('2', '用户管理', '0', '2', '1', 'manage', 'adminpanel', 'go_2', '0', '1', '0', '1', '1', 'street-view', '0', '2,9,31,32,33,34,35,36,37,10,26,27,28,29,30', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('3', '栏目管理', '0', '3', '1', 'manage', 'adminpanel', 'go_3', '0', '1', '0', '1', '1', 'list-ol', '0', '3,11,16,17,18,19,20,12,13,14,21,22,23,24,25,39', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('4', '扩展模块', '0', '4', '1', 'manage', 'adminpanel', 'go_4', '0', '1', '0', '1', '1', 'dropbox', '0', '4,15,38,42,43,44,45,46,47,48,49,50', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('5', '我的', '1', '5', '1', 'manage', 'adminpanel', 'go_5', '0', '1', '0', '1', '1', '', '0,1', '5,6,7,41,8', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('6', '控制面板', '5', '6', '1', 'manage', 'adminpanel', 'index', '0', '1', '0', '1', '1', '', '0,1,5', '6', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('7', '修改密码', '5', '7', '1', 'profile', 'adminpanel', 'change_pwd', '0', '1', '0', '1', '1', '', '0,1,5', '7', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('8', '注销', '5', '8', '1', 'manage', 'adminpanel', 'logout', '0', '1', '0', '1', '1', '', '0,1,5', '8', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('16', '栏目列表', '11', '16', '1', 'moduleMenu', 'adminpanel', 'index', '0', '1', '0', '1', '1', '', '0,3,11', '16,17,18,19,20', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('9', '管理用户', '2', '9', '1', 'manage', 'adminpanel', 'go_9', '0', '1', '0', '1', '1', '', '0,2', '9,31,32,33,34,35,36,37', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('10', '管理用户组', '2', '10', '1', 'manage', 'adminpanel', 'go_10', '0', '1', '0', '1', '1', '', '0,2', '10,26,27,28,29,30', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('11', '管理栏目', '3', '11', '1', 'manage', 'adminpanel', 'go_11', '0', '1', '0', '1', '1', '', '0,3', '11,16,17,18,19,20', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('12', '管理模块', '3', '12', '1', 'manage', 'adminpanel', 'go_12', '0', '1', '0', '1', '1', '', '0,3', '12,13,14,21,22,23,24,25,39', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('13', '已安装模块列表', '12', '13', '1', 'moduleManage', 'adminpanel', 'index', '0', '1', '0', '1', '1', '', '0,3,12', '13', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('14', '安装新模块', '12', '14', '1', 'moduleInstall', 'adminpanel', 'index', '0', '1', '0', '1', '1', '', '0,3,12', '14,21,22,23,24,25,39', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('15', '模块列表', '4', '15', '1', 'manage', 'adminpanel', 'go_15', '0', '1', '0', '1', '1', '', '0,4', '15,38', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('17', '新增', '16', '17', '1', 'moduleMenu', 'adminpanel', 'add', '0', '1', '0', '1', '1', '', '0,3,11,16', '17', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('18', '修改', '16', '18', '1', 'moduleMenu', 'adminpanel', 'edit', '0', '1', '0', '1', '1', '', '0,3,11,16', '18', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('19', '删除', '16', '19', '1', 'moduleMenu', 'adminpanel', 'delete', '0', '1', '0', '1', '1', '', '0,3,11,16', '19', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('20', '设置左侧菜单', '16', '20', '1', 'moduleMenu', 'adminpanel', 'set_menu', '0', '1', '0', '1', '1', '', '0,3,11,16', '20', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('21', '安装', '14', '21', '1', 'moduleInstall', 'adminpanel', 'setup', '0', '1', '0', '1', '1', '', '0,3,12,14', '21', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('22', '检查', '14', '22', '1', 'moduleInstall', 'adminpanel', 'check', '0', '1', '0', '1', '1', '', '0,3,12,14', '22', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('23', '重装', '14', '23', '1', 'moduleInstall', 'adminpanel', 'reinstall', '0', '1', '0', '1', '1', '', '0,3,12,14', '23', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('24', '卸载', '14', '24', '1', 'moduleInstall', 'adminpanel', 'uninstall', '0', '1', '0', '1', '1', '', '0,3,12,14', '24', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('38', 'Hello Word', '15', '38', '0', 'helloWorld', 'adminpanel', 'index', '0', '1', '0', '1', '1', '', '0,4,15', '38', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('25', '删除', '14', '25', '1', 'moduleInstall', 'adminpanel', 'delete', '0', '1', '0', '1', '1', '', '0,3,12,14', '25', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('26', '用户组列表', '10', '26', '1', 'role', 'adminpanel', 'index', '0', '1', '0', '1', '1', '', '0,2,10', '26,27,28,29,30', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('27', '新增', '26', '27', '1', 'role', 'adminpanel', 'add', '0', '1', '0', '1', '1', '', '0,2,10,26', '27', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('28', '编辑', '26', '28', '1', 'role', 'adminpanel', 'edit', '0', '1', '0', '1', '1', '', '0,2,10,26', '28', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('29', '删除', '26', '29', '1', 'role', 'adminpanel', 'delete_one', '0', '1', '0', '1', '1', '', '0,2,10,26', '29', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('30', '设置权限', '26', '30', '1', 'role', 'adminpanel', 'setting', '0', '1', '0', '1', '1', '', '0,2,10,26', '30', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('31', '用户列表', '9', '31', '1', 'user', 'adminpanel', 'index', '0', '1', '0', '1', '1', '', '0,2,9', '31,32,33,34,35,36,37', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('32', '新增', '31', '32', '1', 'user', 'adminpanel', 'add', '0', '1', '0', '1', '1', '', '0,2,9,31', '32', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('33', '编辑', '31', '33', '1', 'user', 'adminpanel', 'edit', '0', '1', '0', '1', '1', '', '0,2,9,31', '33', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('34', '检测用户名', '31', '34', '1', 'user', 'adminpanel', 'check_username', '0', '1', '0', '1', '1', '', '0,2,9,31', '34', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('35', '删除', '31', '35', '1', 'user', 'adminpanel', 'delete', '0', '1', '0', '1', '1', '', '0,2,9,31', '35', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('36', '锁定/解锁', '31', '36', '1', 'user', 'adminpanel', 'lock', '0', '1', '0', '1', '1', '', '0,2,9,31', '36', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('37', '上传头像', '31', '37', '1', 'user', 'adminpanel', 'upload', '0', '1', '0', '1', '1', '', '0,2,9,31', '37', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('39', '上传安装包', '14', '39', '1', 'moduleInstall', 'adminpanel', 'index', '0', '1', '0', '1', '1', '', '0,3,12,14', '39', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('41', '全局缓存', '5', '7', '1', 'manage', 'adminpanel', 'cache', '0', '1', '0', '1', '1', '', '0,1,5', '41', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('42', '管理图书信息管理', '4', '42', '1', 'manage', 'adminpanel', 'go_42', '000003064a', '1', '0', '0', '1', 'book', '0,4', '42,43,44,45,46,47,48,49,50', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('43', '图书信息管理列表', '42', '43', '1', 'bookadmin', 'adminpanel', 'index', '000003064b', '1', '0', '0', '1', '', '0,4,42', '43', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('44', '新增', '42', '44', '1', 'bookadmin', 'adminpanel', 'add', '000003064c', '1', '0', '0', '1', '', '0,4,42', '44', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('45', '修改', '42', '45', '1', 'bookadmin', 'adminpanel', 'edit', '000003064d', '0', '0', '0', '1', '', '0,4,42', '45', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('46', '选择弹窗', '42', '46', '0', 'bookadmin', 'adminpanel', 'choose', '000003064e', '0', '0', '0', '1', '', '0,4,42', '46', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('47', '删除单个', '42', '47', '0', 'bookadmin', 'adminpanel', 'delete_one', '000003064f', '0', '0', '0', '1', '', '0,4,42', '47', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('48', '删除多个', '42', '48', '0', 'bookadmin', 'adminpanel', 'delete_all', '000003064g', '0', '0', '0', '1', '', '0,4,42', '48', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('49', '查看', '42', '49', '1', 'bookadmin', 'adminpanel', 'readonly', '000003064h', '0', '0', '0', '1', '', '0,4,42', '49', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('50', '上传', '42', '50', '0', 'bookadmin', 'adminpanel', 'upload', '000003064i', '0', '0', '0', '1', '', '0,4,42', '50', '0', '1');

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
INSERT INTO `t_sys_sessions` VALUES ('c1b2bc6869212f4e19af1692a75460f0684a894b', '::1', '1495253258', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353235333231333B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('dcb916a16c8d375d5941b29723130529393dd094', '::1', '1495251336', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353235313333353B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('b1b6c31f1e7725c63a29c3a350481bdf42a79fac', '::1', '1495250630', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353235303633303B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E883A1E5AD90E99485223B757365725F6E616D657C733A343A2274657374223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('35ee8d6f45640920511cf24a2e3627827d3f2550', '::1', '1495247617', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353234373533383B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('39c998c54caa70c4da33ef50700f3da721d3c64f', '::1', '1495242452', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353234323231393B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('649db43d28cda2c329cab08bfa94b706e9c10ee2', '::1', '1495241779', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353234313732393B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('37c9e4de5bbd50fdc2e10ae3ecdb1f9d1f8e45b7', '::1', '1495241271', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353234303937333B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('ee51d904d20c7e12e2efe90886c3735bd83e1977', '::1', '1495240972', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353234303630343B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('f5c198fc80baa7ebd427533b9ba017c48192a360', '::1', '1495234281', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353233343131343B);
INSERT INTO `t_sys_sessions` VALUES ('77d4d2185e9c49ada991fa6555602985ed9bb197', '::1', '1495235226', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353233343939343B);
INSERT INTO `t_sys_sessions` VALUES ('98c84bf757390c045b5d149928e5fcc05dc2bea5', '::1', '1495235631', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353233353333343B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E883A1E5AD90E99485223B757365725F6E616D657C733A343A2274657374223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('addb6183fd5fc53358f076588472ca7376bda35f', '::1', '1495236163', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353233353933313B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E883A1E5AD90E99485223B757365725F6E616D657C733A343A2274657374223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('2e1057e4b3875a26a79693ff1a40655e136f3f89', '::1', '1495238667', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353233383435303B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E883A1E5AD90E99485223B757365725F6E616D657C733A343A2274657374223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('c91b8430ba45851c6df940f823843770bb672fb9', '::1', '1495238976', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353233383835333B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E883A1E5AD90E99485223B757365725F6E616D657C733A343A2274657374223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('29ef382b6c5b759a007a425b204813dd95860a5c', '::1', '1495239587', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353233393537313B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E883A1E5AD90E99485223B757365725F6E616D657C733A343A2274657374223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('a7a38bf3aeebfedf4e19156991048ce65222464d', '::1', '1495240602', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353234303330323B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);

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
