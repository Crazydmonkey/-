/*
Navicat MySQL Data Transfer

Source Server         : aaa
Source Server Version : 50529
Source Host           : localhost:3306
Source Database       : smart_sxnd

Target Server Type    : MYSQL
Target Server Version : 50529
File Encoding         : 65001

Date: 2020-01-07 09:54:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for smart_co2
-- ----------------------------
DROP TABLE IF EXISTS `smart_co2`;
CREATE TABLE `smart_co2` (
  `c_id` int(10) NOT NULL AUTO_INCREMENT,
  `c_time` datetime NOT NULL,
  `c_value` int(10) NOT NULL,
  `c_level` varchar(15) NOT NULL,
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of smart_co2
-- ----------------------------
INSERT INTO `smart_co2` VALUES ('1', '2019-11-21 16:08:56', '1', 'gaoji');
INSERT INTO `smart_co2` VALUES ('2', '2019-11-21 11:03:54', '913', '优');
INSERT INTO `smart_co2` VALUES ('3', '2019-11-21 11:07:06', '913', '优');
INSERT INTO `smart_co2` VALUES ('4', '2019-11-21 11:08:33', '913', '优');
INSERT INTO `smart_co2` VALUES ('5', '2019-11-21 11:33:57', '913', '优');
INSERT INTO `smart_co2` VALUES ('6', '2019-11-21 11:38:33', '913', '优');
INSERT INTO `smart_co2` VALUES ('7', '2019-11-21 11:47:55', '913', '优');
INSERT INTO `smart_co2` VALUES ('8', '2019-11-22 01:07:02', '428', '优');
INSERT INTO `smart_co2` VALUES ('9', '2019-11-22 01:07:31', '431', '优');
INSERT INTO `smart_co2` VALUES ('10', '2019-11-22 09:40:02', '832', '优');
INSERT INTO `smart_co2` VALUES ('11', '2019-11-22 09:40:32', '836', '优');
INSERT INTO `smart_co2` VALUES ('12', '2019-11-22 09:41:02', '840', '优');
INSERT INTO `smart_co2` VALUES ('13', '2019-11-22 09:42:02', '848', '优');
INSERT INTO `smart_co2` VALUES ('14', '2019-11-28 10:42:41', '635', '优');
INSERT INTO `smart_co2` VALUES ('15', '2019-11-28 10:54:11', '635', '优');
INSERT INTO `smart_co2` VALUES ('16', '2019-11-28 10:56:55', '640', '优');
INSERT INTO `smart_co2` VALUES ('17', '2019-11-29 15:56:16', '635', '优');
INSERT INTO `smart_co2` VALUES ('18', '2019-11-29 15:56:46', '637', '优');
INSERT INTO `smart_co2` VALUES ('19', '2019-11-29 15:57:16', '637', '优');
INSERT INTO `smart_co2` VALUES ('20', '2019-11-30 15:57:46', '638', '优');
INSERT INTO `smart_co2` VALUES ('21', '2019-12-03 09:25:58', '635', '优');
INSERT INTO `smart_co2` VALUES ('22', '2019-12-03 09:26:28', '635', '优');
INSERT INTO `smart_co2` VALUES ('23', '2019-12-16 09:52:41', '635', '优');
INSERT INTO `smart_co2` VALUES ('24', '2019-12-16 09:52:49', '635', '优');
INSERT INTO `smart_co2` VALUES ('25', '2019-12-16 09:52:52', '635', '优');
INSERT INTO `smart_co2` VALUES ('26', '2019-12-16 09:53:11', '635', '优');
INSERT INTO `smart_co2` VALUES ('27', '2019-12-16 09:53:16', '635', '优');
INSERT INTO `smart_co2` VALUES ('28', '2019-12-16 09:53:22', '635', '优');
INSERT INTO `smart_co2` VALUES ('29', '2019-12-16 09:53:31', '635', '优');
INSERT INTO `smart_co2` VALUES ('30', '2019-12-25 15:30:07', '635', '优');
INSERT INTO `smart_co2` VALUES ('31', '2019-12-25 15:30:09', '635', '优');
INSERT INTO `smart_co2` VALUES ('32', '2019-12-25 15:30:24', '635', '优');
INSERT INTO `smart_co2` VALUES ('33', '2019-12-25 15:30:34', '635', '优');
INSERT INTO `smart_co2` VALUES ('34', '2019-12-25 22:44:37', '635', '优');
INSERT INTO `smart_co2` VALUES ('35', '2019-12-25 22:45:08', '635', '优');
INSERT INTO `smart_co2` VALUES ('36', '2019-12-25 22:49:40', '635', '优');
INSERT INTO `smart_co2` VALUES ('37', '2019-12-25 22:53:38', '635', '优');
INSERT INTO `smart_co2` VALUES ('38', '2019-12-25 22:54:08', '635', '优');
INSERT INTO `smart_co2` VALUES ('39', '2019-12-25 22:54:37', '635', '优');
INSERT INTO `smart_co2` VALUES ('40', '2019-12-25 23:39:09', '635', '优');
INSERT INTO `smart_co2` VALUES ('41', '2019-12-25 23:39:11', '635', '优');
INSERT INTO `smart_co2` VALUES ('42', '2019-12-25 23:39:13', '635', '优');
INSERT INTO `smart_co2` VALUES ('43', '2019-12-25 23:39:14', '635', '优');
INSERT INTO `smart_co2` VALUES ('44', '2019-12-25 23:39:16', '635', '优');
INSERT INTO `smart_co2` VALUES ('45', '2019-12-25 23:39:18', '635', '优');
INSERT INTO `smart_co2` VALUES ('46', '2019-12-25 23:39:20', '635', '优');
INSERT INTO `smart_co2` VALUES ('47', '2019-12-25 23:39:22', '635', '优');
INSERT INTO `smart_co2` VALUES ('48', '2019-12-25 23:39:24', '635', '优');
INSERT INTO `smart_co2` VALUES ('49', '2019-12-25 23:39:26', '635', '优');
INSERT INTO `smart_co2` VALUES ('50', '2019-12-25 23:39:28', '635', '优');
INSERT INTO `smart_co2` VALUES ('51', '2019-12-25 23:39:31', '635', '优');
INSERT INTO `smart_co2` VALUES ('52', '2019-12-25 23:39:33', '635', '优');
INSERT INTO `smart_co2` VALUES ('53', '2019-12-25 23:39:37', '635', '优');
INSERT INTO `smart_co2` VALUES ('54', '2019-12-25 23:39:41', '635', '优');
INSERT INTO `smart_co2` VALUES ('55', '2019-12-25 23:39:43', '635', '优');
INSERT INTO `smart_co2` VALUES ('56', '2019-12-25 23:39:45', '635', '优');
INSERT INTO `smart_co2` VALUES ('57', '2019-12-25 23:39:47', '635', '优');
INSERT INTO `smart_co2` VALUES ('58', '2019-12-25 23:39:48', '635', '优');
INSERT INTO `smart_co2` VALUES ('59', '2019-12-25 23:39:50', '635', '优');
INSERT INTO `smart_co2` VALUES ('60', '2019-12-25 23:39:52', '635', '优');
INSERT INTO `smart_co2` VALUES ('61', '2019-12-25 23:39:54', '635', '优');
INSERT INTO `smart_co2` VALUES ('62', '2019-12-26 00:04:38', '635', '优');
INSERT INTO `smart_co2` VALUES ('63', '2019-12-26 00:46:08', '635', '优');
INSERT INTO `smart_co2` VALUES ('64', '2019-12-26 20:52:09', '635', '优');
INSERT INTO `smart_co2` VALUES ('65', '2020-01-02 17:45:53', '635', '优');
INSERT INTO `smart_co2` VALUES ('66', '2020-01-02 17:46:53', '635', '优');
INSERT INTO `smart_co2` VALUES ('67', '2020-01-02 17:47:53', '635', '优');

-- ----------------------------
-- Table structure for smart_event
-- ----------------------------
DROP TABLE IF EXISTS `smart_event`;
CREATE TABLE `smart_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `daytime` date DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of smart_event
-- ----------------------------
INSERT INTO `smart_event` VALUES ('1', '数据异常', '温度由30℃变成35℃', '2019-06-03 19:26:11', '2019-06-03');
INSERT INTO `smart_event` VALUES ('2', '用户操作', '张三确定告警（高温预警，温度为36℃）', '2019-06-03 20:10:24', '2019-06-03');
INSERT INTO `smart_event` VALUES ('3', '用户操作', '张三打开风扇', '2019-06-03 20:15:17', '2019-06-03');
INSERT INTO `smart_event` VALUES ('4', '联动触发', '温度联动触发', '2019-06-03 20:16:00', '2019-06-03');
INSERT INTO `smart_event` VALUES ('5', '数据变化', '二氧化碳由1000ppm变成1500ppm', '2019-06-03 20:16:55', '2019-06-03');
INSERT INTO `smart_event` VALUES ('6', '数据变化', '二氧化碳由1000ppm变成1500ppm', '2019-06-03 20:16:55', '2019-06-03');
INSERT INTO `smart_event` VALUES ('7', '用户操作', '张三关风扇', '2019-06-03 20:16:55', '2019-06-03');
INSERT INTO `smart_event` VALUES ('8', '用户操作', '张三打开风扇', '2019-06-04 09:44:44', '2019-06-04');
INSERT INTO `smart_event` VALUES ('9', '用户操作', 'zhangsan打开门', '2019-11-21 16:42:13', '2019-11-21');
INSERT INTO `smart_event` VALUES ('10', '用户操作', '温度联动触发操作_开空调', '2019-11-22 09:22:16', '2019-11-22');
INSERT INTO `smart_event` VALUES ('11', '数据变化', '二氧化碳浓度由1000ppm变为1500ppm', '2019-11-25 17:13:08', '2019-11-25');
INSERT INTO `smart_event` VALUES ('12', '数据变化', '湿度由30%变为40%', '2019-11-28 09:14:31', '2019-11-28');

-- ----------------------------
-- Table structure for smart_facilities
-- ----------------------------
DROP TABLE IF EXISTS `smart_facilities`;
CREATE TABLE `smart_facilities` (
  `f_id` int(10) NOT NULL AUTO_INCREMENT,
  `f_action` varchar(15) DEFAULT NULL,
  `f_protocol` varchar(30) DEFAULT NULL,
  `f_name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`f_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of smart_facilities
-- ----------------------------
INSERT INTO `smart_facilities` VALUES ('1', '一路灯开', '1A180728040000010F', '一路灯');
INSERT INTO `smart_facilities` VALUES ('2', '一路灯关', '1A180728040000000F', '一路灯');
INSERT INTO `smart_facilities` VALUES ('3', '二路灯开', '1A1809040A0000010F', '二路灯');
INSERT INTO `smart_facilities` VALUES ('4', '二路灯关', '1A1809040A0000000F', '二路灯');
INSERT INTO `smart_facilities` VALUES ('5', '三路灯开', '1A1807280B0000010F', '三路灯');
INSERT INTO `smart_facilities` VALUES ('6', '三路灯关', '1A1807280B0000000F', '三路灯');
INSERT INTO `smart_facilities` VALUES ('7', '窗帘开', 'FFFFFFFFFF0000030F', '窗帘');
INSERT INTO `smart_facilities` VALUES ('8', '窗帘关', 'FFFFFFFFFF0001030F', '窗帘');
INSERT INTO `smart_facilities` VALUES ('9', '空调开', 'FFFFFFFF0000020F', '空调');
INSERT INTO `smart_facilities` VALUES ('10', '空调关', 'FFFFFFFF0000010F', '空调');
INSERT INTO `smart_facilities` VALUES ('11', '门锁开', '0277287A011A0F', '门锁');

-- ----------------------------
-- Table structure for smart_fire
-- ----------------------------
DROP TABLE IF EXISTS `smart_fire`;
CREATE TABLE `smart_fire` (
  `fire_id` int(10) NOT NULL AUTO_INCREMENT,
  `fire_time` datetime NOT NULL,
  `fire_status` varchar(15) NOT NULL,
  PRIMARY KEY (`fire_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=310 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of smart_fire
-- ----------------------------
INSERT INTO `smart_fire` VALUES ('1', '2019-11-22 10:33:46', '可燃气体泄露');
INSERT INTO `smart_fire` VALUES ('2', '2019-11-28 10:42:45', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('3', '2019-11-28 10:42:46', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('4', '2019-11-28 10:42:47', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('5', '2019-11-28 10:54:13', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('6', '2019-11-28 10:54:17', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('7', '2019-11-28 10:54:18', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('8', '2019-11-28 10:54:18', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('9', '2019-11-28 10:56:55', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('10', '2019-11-28 10:56:55', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('11', '2019-11-28 10:56:55', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('12', '2019-11-29 15:55:53', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('13', '2019-11-29 15:56:22', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('14', '2019-11-29 15:56:23', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('15', '2019-11-29 15:56:35', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('16', '2019-11-29 15:56:49', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('17', '2019-11-29 15:56:50', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('18', '2019-11-29 15:56:52', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('19', '2019-11-29 15:56:54', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('20', '2019-11-29 15:57:19', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('21', '2019-11-29 15:57:23', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('22', '2019-11-29 15:57:35', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('23', '2019-11-29 15:57:48', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('24', '2019-11-29 15:57:50', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('25', '2019-11-29 15:57:51', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('26', '2019-11-29 15:57:53', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('27', '2019-12-03 09:25:33', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('28', '2019-12-03 09:25:35', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('29', '2019-12-03 09:26:01', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('30', '2019-12-03 09:26:02', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('31', '2019-12-03 09:26:05', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('32', '2019-12-03 09:26:30', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('33', '2019-12-03 09:26:32', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('34', '2019-12-03 09:26:33', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('35', '2019-12-03 09:26:35', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('36', '2019-12-03 09:50:03', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('37', '2019-12-03 09:50:05', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('38', '2019-12-16 09:52:39', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('39', '2019-12-16 09:52:49', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('40', '2019-12-16 09:52:50', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('41', '2019-12-16 09:52:51', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('42', '2019-12-16 09:52:53', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('43', '2019-12-16 09:52:54', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('44', '2019-12-16 09:53:18', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('45', '2019-12-16 09:53:20', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('46', '2019-12-16 09:53:23', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('47', '2019-12-25 15:30:10', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('48', '2019-12-25 15:30:10', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('49', '2019-12-25 15:30:11', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('50', '2019-12-25 22:44:11', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('51', '2019-12-25 22:44:14', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('52', '2019-12-25 22:44:41', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('53', '2019-12-25 22:45:09', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('54', '2019-12-25 22:45:10', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('55', '2019-12-25 22:45:13', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('56', '2019-12-25 22:49:40', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('57', '2019-12-25 22:49:41', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('58', '2019-12-25 22:49:43', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('59', '2019-12-25 22:53:13', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('60', '2019-12-25 22:53:39', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('61', '2019-12-25 22:53:40', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('62', '2019-12-25 22:53:41', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('63', '2019-12-25 22:53:43', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('64', '2019-12-25 22:54:09', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('65', '2019-12-25 22:54:11', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('66', '2019-12-25 22:54:13', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('67', '2019-12-25 22:54:15', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('68', '2019-12-25 22:54:39', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('69', '2019-12-25 22:54:40', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('70', '2019-12-25 22:54:41', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('71', '2019-12-25 22:54:43', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('72', '2019-12-25 23:45:40', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('73', '2019-12-25 23:45:42', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('74', '2019-12-25 23:45:43', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('75', '2019-12-25 23:45:43', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('76', '2019-12-25 23:45:43', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('77', '2019-12-25 23:45:44', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('78', '2019-12-25 23:45:44', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('79', '2019-12-25 23:45:45', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('80', '2019-12-25 23:45:45', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('81', '2019-12-25 23:45:47', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('82', '2019-12-25 23:45:47', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('83', '2019-12-25 23:45:47', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('84', '2019-12-25 23:45:48', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('85', '2019-12-25 23:45:49', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('86', '2019-12-25 23:45:49', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('87', '2019-12-25 23:45:49', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('88', '2019-12-25 23:45:50', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('89', '2019-12-25 23:45:50', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('90', '2019-12-25 23:45:51', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('91', '2019-12-25 23:45:51', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('92', '2019-12-25 23:45:52', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('93', '2019-12-25 23:45:52', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('94', '2019-12-25 23:45:53', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('95', '2019-12-25 23:45:53', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('96', '2019-12-25 23:45:54', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('97', '2019-12-25 23:45:54', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('98', '2019-12-25 23:45:55', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('99', '2019-12-25 23:45:55', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('100', '2019-12-25 23:45:56', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('101', '2019-12-25 23:45:56', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('102', '2019-12-25 23:45:57', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('103', '2019-12-25 23:45:57', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('104', '2019-12-25 23:45:58', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('105', '2019-12-25 23:45:59', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('106', '2019-12-25 23:45:59', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('107', '2019-12-25 23:46:00', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('108', '2019-12-25 23:46:00', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('109', '2019-12-25 23:46:02', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('110', '2019-12-25 23:46:02', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('111', '2019-12-25 23:46:03', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('112', '2019-12-25 23:46:03', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('113', '2019-12-25 23:46:04', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('114', '2019-12-25 23:46:04', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('115', '2019-12-25 23:46:05', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('116', '2019-12-25 23:46:05', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('117', '2019-12-25 23:46:06', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('118', '2019-12-25 23:46:06', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('119', '2019-12-25 23:46:07', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('120', '2019-12-25 23:46:08', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('121', '2019-12-25 23:46:09', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('122', '2019-12-25 23:46:10', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('123', '2019-12-25 23:46:11', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('124', '2019-12-25 23:46:11', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('125', '2019-12-25 23:46:13', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('126', '2019-12-25 23:46:14', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('127', '2019-12-25 23:46:15', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('128', '2019-12-25 23:46:23', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('129', '2019-12-25 23:46:24', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('130', '2019-12-25 23:46:28', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('131', '2019-12-25 23:46:30', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('132', '2019-12-25 23:46:33', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('133', '2019-12-25 23:46:33', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('134', '2019-12-25 23:46:34', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('135', '2019-12-25 23:46:37', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('136', '2019-12-25 23:46:39', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('137', '2019-12-25 23:46:40', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('138', '2019-12-25 23:46:43', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('139', '2019-12-25 23:46:52', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('140', '2019-12-25 23:46:52', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('141', '2019-12-25 23:46:53', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('142', '2019-12-25 23:46:57', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('143', '2019-12-25 23:46:59', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('144', '2019-12-25 23:47:01', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('145', '2019-12-25 23:47:02', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('146', '2019-12-25 23:47:02', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('147', '2019-12-25 23:47:03', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('148', '2019-12-25 23:47:04', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('149', '2019-12-25 23:47:05', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('150', '2019-12-25 23:47:06', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('151', '2019-12-25 23:47:07', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('152', '2019-12-25 23:47:07', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('153', '2019-12-25 23:47:10', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('154', '2019-12-25 23:47:13', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('155', '2019-12-25 23:47:17', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('156', '2019-12-25 23:47:19', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('157', '2019-12-25 23:47:21', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('158', '2019-12-25 23:47:22', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('159', '2019-12-25 23:47:23', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('160', '2019-12-25 23:47:24', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('161', '2019-12-25 23:47:28', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('162', '2019-12-25 23:47:30', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('163', '2019-12-25 23:47:31', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('164', '2019-12-25 23:47:31', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('165', '2019-12-25 23:47:34', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('166', '2019-12-25 23:47:41', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('167', '2019-12-25 23:47:42', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('168', '2019-12-25 23:47:43', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('169', '2019-12-25 23:47:45', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('170', '2019-12-25 23:47:46', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('171', '2019-12-25 23:47:46', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('172', '2019-12-25 23:47:47', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('173', '2019-12-25 23:47:47', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('174', '2019-12-25 23:47:48', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('175', '2019-12-25 23:47:48', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('176', '2019-12-25 23:47:49', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('177', '2019-12-25 23:47:51', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('178', '2019-12-25 23:47:51', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('179', '2019-12-25 23:47:52', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('180', '2019-12-25 23:47:52', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('181', '2019-12-25 23:47:52', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('182', '2019-12-25 23:47:53', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('183', '2019-12-25 23:47:59', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('184', '2019-12-25 23:47:59', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('185', '2019-12-25 23:48:00', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('186', '2019-12-25 23:48:01', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('187', '2019-12-25 23:48:02', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('188', '2019-12-25 23:48:03', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('189', '2019-12-25 23:48:04', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('190', '2019-12-25 23:48:06', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('191', '2019-12-25 23:48:07', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('192', '2019-12-25 23:48:09', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('193', '2019-12-25 23:48:09', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('194', '2019-12-25 23:48:12', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('195', '2019-12-25 23:48:12', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('196', '2019-12-25 23:48:12', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('197', '2019-12-25 23:48:13', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('198', '2019-12-25 23:48:16', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('199', '2019-12-25 23:48:16', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('200', '2019-12-25 23:48:17', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('201', '2019-12-25 23:48:18', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('202', '2019-12-25 23:48:18', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('203', '2019-12-25 23:48:20', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('204', '2019-12-25 23:48:21', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('205', '2019-12-25 23:48:22', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('206', '2019-12-25 23:48:24', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('207', '2019-12-25 23:48:25', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('208', '2019-12-25 23:48:26', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('209', '2019-12-25 23:48:27', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('210', '2019-12-25 23:48:29', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('211', '2019-12-25 23:48:30', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('212', '2019-12-25 23:48:33', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('213', '2019-12-25 23:48:36', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('214', '2019-12-25 23:48:36', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('215', '2019-12-25 23:48:37', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('216', '2019-12-25 23:48:38', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('217', '2019-12-25 23:48:41', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('218', '2019-12-25 23:48:44', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('219', '2019-12-26 00:04:39', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('220', '2019-12-26 00:04:40', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('221', '2019-12-26 00:04:41', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('222', '2019-12-26 00:46:10', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('223', '2019-12-26 00:46:13', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('224', '2019-12-26 01:07:41', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('225', '2019-12-26 01:07:42', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('226', '2019-12-26 01:07:43', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('227', '2019-12-26 01:07:43', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('228', '2019-12-26 01:07:43', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('229', '2019-12-26 01:07:44', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('230', '2019-12-26 01:07:44', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('231', '2019-12-26 01:07:45', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('232', '2019-12-26 01:07:45', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('233', '2019-12-26 01:07:45', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('234', '2019-12-26 01:07:46', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('235', '2019-12-26 01:07:46', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('236', '2019-12-26 01:07:47', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('237', '2019-12-26 01:07:47', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('238', '2019-12-26 01:07:48', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('239', '2019-12-26 01:07:48', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('240', '2019-12-26 01:07:48', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('241', '2019-12-26 01:07:49', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('242', '2019-12-26 01:07:49', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('243', '2019-12-26 01:07:49', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('244', '2019-12-26 01:07:50', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('245', '2019-12-26 01:07:50', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('246', '2019-12-26 01:07:51', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('247', '2019-12-26 01:07:51', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('248', '2019-12-26 01:07:51', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('249', '2019-12-26 01:07:52', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('250', '2019-12-26 01:07:52', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('251', '2019-12-26 01:07:53', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('252', '2019-12-26 01:07:53', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('253', '2019-12-26 01:07:53', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('254', '2019-12-26 01:07:54', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('255', '2019-12-26 01:07:54', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('256', '2019-12-26 01:07:55', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('257', '2019-12-26 01:07:55', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('258', '2019-12-26 01:07:55', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('259', '2019-12-26 01:07:56', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('260', '2019-12-26 01:07:56', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('261', '2019-12-26 01:07:57', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('262', '2019-12-26 01:07:57', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('263', '2019-12-26 01:07:57', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('264', '2019-12-26 01:07:58', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('265', '2019-12-26 01:07:58', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('266', '2019-12-26 01:07:59', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('267', '2019-12-26 01:07:59', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('268', '2019-12-26 01:07:59', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('269', '2019-12-26 01:08:00', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('270', '2019-12-26 01:08:00', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('271', '2019-12-26 01:08:00', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('272', '2019-12-26 01:08:01', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('273', '2019-12-26 01:08:01', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('274', '2019-12-26 01:08:02', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('275', '2019-12-26 01:08:02', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('276', '2019-12-26 01:08:02', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('277', '2019-12-26 01:08:03', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('278', '2019-12-26 01:08:03', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('279', '2019-12-26 01:08:04', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('280', '2019-12-26 01:08:04', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('281', '2019-12-26 01:08:04', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('282', '2019-12-26 01:08:05', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('283', '2019-12-26 01:08:05', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('284', '2019-12-26 01:08:05', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('285', '2019-12-26 01:08:06', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('286', '2019-12-26 01:08:06', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('287', '2019-12-26 01:08:07', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('288', '2019-12-26 01:08:07', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('289', '2019-12-26 01:08:07', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('290', '2019-12-26 01:08:08', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('291', '2019-12-26 01:08:08', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('292', '2019-12-26 01:08:08', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('293', '2019-12-26 01:08:09', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('294', '2019-12-26 01:08:09', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('295', '2019-12-26 01:08:10', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('296', '2019-12-26 01:08:10', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('297', '2019-12-26 01:08:10', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('298', '2019-12-26 20:51:44', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('299', '2019-12-26 20:52:10', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('300', '2019-12-26 20:52:12', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('301', '2019-12-26 20:52:13', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('302', '2020-01-02 17:45:32', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('303', '2020-01-02 17:45:35', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('304', '2020-01-02 17:45:54', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('305', '2020-01-02 17:45:57', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('306', '2020-01-02 17:46:54', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('307', '2020-01-02 17:46:57', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('308', '2020-01-02 17:47:55', '可燃气体未泄露');
INSERT INTO `smart_fire` VALUES ('309', '2020-01-02 17:47:57', '可燃气体未泄露');

-- ----------------------------
-- Table structure for smart_formaldehyde
-- ----------------------------
DROP TABLE IF EXISTS `smart_formaldehyde`;
CREATE TABLE `smart_formaldehyde` (
  `f_id` int(10) NOT NULL AUTO_INCREMENT,
  `f_time` datetime NOT NULL,
  `f_value` int(10) NOT NULL,
  `f_level` varchar(15) NOT NULL,
  PRIMARY KEY (`f_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of smart_formaldehyde
-- ----------------------------
INSERT INTO `smart_formaldehyde` VALUES ('1', '2019-11-21 11:03:54', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('2', '2019-11-21 11:07:06', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('3', '2019-11-21 11:08:33', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('4', '2019-11-21 11:33:57', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('5', '2019-11-21 11:38:33', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('6', '2019-11-21 11:47:55', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('7', '2019-11-22 01:07:02', '40', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('8', '2019-11-22 01:07:31', '40', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('9', '2019-11-22 09:40:02', '46', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('10', '2019-11-22 09:40:32', '47', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('11', '2019-11-22 09:41:02', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('12', '2019-11-22 09:42:02', '47', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('13', '2019-11-28 10:42:41', '36', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('14', '2019-11-28 10:54:11', '31', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('15', '2019-11-28 10:56:55', '31', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('16', '2019-11-29 15:56:16', '25', '中度污染');
INSERT INTO `smart_formaldehyde` VALUES ('17', '2019-11-29 15:56:46', '22', '中度污染');
INSERT INTO `smart_formaldehyde` VALUES ('18', '2019-11-29 15:57:16', '22', '中度污染');
INSERT INTO `smart_formaldehyde` VALUES ('19', '2019-11-29 15:57:46', '23', '中度污染');
INSERT INTO `smart_formaldehyde` VALUES ('20', '2019-12-03 09:25:58', '38', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('21', '2019-12-03 09:26:28', '38', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('22', '2019-12-16 09:52:41', '20', '中度污染');
INSERT INTO `smart_formaldehyde` VALUES ('23', '2019-12-16 09:52:49', '21', '中度污染');
INSERT INTO `smart_formaldehyde` VALUES ('24', '2019-12-16 09:52:52', '21', '中度污染');
INSERT INTO `smart_formaldehyde` VALUES ('25', '2019-12-16 09:53:11', '21', '中度污染');
INSERT INTO `smart_formaldehyde` VALUES ('26', '2019-12-16 09:53:16', '21', '中度污染');
INSERT INTO `smart_formaldehyde` VALUES ('27', '2019-12-16 09:53:22', '21', '中度污染');
INSERT INTO `smart_formaldehyde` VALUES ('28', '2019-12-16 09:53:31', '21', '中度污染');
INSERT INTO `smart_formaldehyde` VALUES ('29', '2019-12-25 15:30:07', '57', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('30', '2019-12-25 15:30:09', '57', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('31', '2019-12-25 15:30:24', '57', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('32', '2019-12-25 15:30:34', '57', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('33', '2019-12-25 22:44:37', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('34', '2019-12-25 22:45:08', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('35', '2019-12-25 22:49:40', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('36', '2019-12-25 22:53:38', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('37', '2019-12-25 22:54:08', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('38', '2019-12-25 22:54:37', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('39', '2019-12-25 23:39:09', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('40', '2019-12-25 23:39:11', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('41', '2019-12-25 23:39:13', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('42', '2019-12-25 23:39:14', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('43', '2019-12-25 23:39:16', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('44', '2019-12-25 23:39:18', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('45', '2019-12-25 23:39:20', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('46', '2019-12-25 23:39:22', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('47', '2019-12-25 23:39:24', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('48', '2019-12-25 23:39:26', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('49', '2019-12-25 23:39:28', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('50', '2019-12-25 23:39:31', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('51', '2019-12-25 23:39:33', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('52', '2019-12-25 23:39:37', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('53', '2019-12-25 23:39:41', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('54', '2019-12-25 23:39:43', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('55', '2019-12-25 23:39:45', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('56', '2019-12-25 23:39:47', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('57', '2019-12-25 23:39:48', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('58', '2019-12-25 23:39:50', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('59', '2019-12-25 23:39:52', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('60', '2019-12-25 23:39:54', '50', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('61', '2019-12-26 00:04:38', '47', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('62', '2019-12-26 00:46:08', '43', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('63', '2019-12-26 20:52:09', '31', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('64', '2020-01-02 17:45:53', '51', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('65', '2020-01-02 17:46:53', '51', '重度污染');
INSERT INTO `smart_formaldehyde` VALUES ('66', '2020-01-02 17:47:53', '51', '重度污染');

-- ----------------------------
-- Table structure for smart_humidity
-- ----------------------------
DROP TABLE IF EXISTS `smart_humidity`;
CREATE TABLE `smart_humidity` (
  `h_id` int(10) NOT NULL AUTO_INCREMENT,
  `h_time` datetime NOT NULL,
  `h_value` int(10) NOT NULL,
  `h_level` varchar(15) NOT NULL,
  PRIMARY KEY (`h_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of smart_humidity
-- ----------------------------
INSERT INTO `smart_humidity` VALUES ('1', '2019-11-21 11:03:54', '52', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('2', '2019-11-21 11:07:06', '52', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('3', '2019-11-21 11:08:33', '52', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('4', '2019-11-21 11:33:57', '52', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('5', '2019-11-21 11:38:33', '52', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('6', '2019-11-21 11:47:55', '52', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('7', '2019-11-22 01:07:02', '57', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('8', '2019-11-22 01:07:31', '57', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('9', '2019-11-22 09:40:02', '60', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('10', '2019-11-22 09:40:32', '61', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('11', '2019-11-22 09:41:02', '61', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('12', '2019-11-22 09:42:02', '60', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('13', '2019-11-28 10:42:41', '45', '湿度适宜');
INSERT INTO `smart_humidity` VALUES ('14', '2019-11-28 10:54:11', '42', '湿度适宜');
INSERT INTO `smart_humidity` VALUES ('15', '2019-11-28 10:56:55', '42', '湿度适宜');
INSERT INTO `smart_humidity` VALUES ('16', '2019-11-29 15:56:16', '51', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('17', '2019-11-29 15:56:46', '52', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('18', '2019-11-29 15:57:16', '51', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('19', '2019-11-30 15:57:46', '51', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('20', '2019-12-03 09:25:58', '40', '湿度适宜');
INSERT INTO `smart_humidity` VALUES ('21', '2019-12-03 09:26:28', '40', '湿度适宜');
INSERT INTO `smart_humidity` VALUES ('22', '2019-12-16 09:52:41', '70', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('23', '2019-12-16 09:52:49', '72', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('24', '2019-12-16 09:52:52', '72', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('25', '2019-12-16 09:53:11', '68', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('26', '2019-12-16 09:53:16', '68', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('27', '2019-12-16 09:53:22', '68', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('28', '2019-12-16 09:53:31', '68', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('29', '2019-12-25 15:30:07', '54', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('30', '2019-12-25 15:30:09', '54', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('31', '2019-12-25 15:30:24', '55', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('32', '2019-12-25 15:30:34', '54', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('33', '2019-12-25 22:44:37', '56', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('34', '2019-12-25 22:45:08', '56', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('35', '2019-12-25 22:49:40', '56', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('36', '2019-12-25 22:53:38', '56', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('37', '2019-12-25 22:54:08', '56', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('38', '2019-12-25 22:54:37', '56', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('39', '2019-12-25 23:39:09', '56', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('40', '2019-12-25 23:39:11', '56', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('41', '2019-12-25 23:39:13', '56', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('42', '2019-12-25 23:39:14', '56', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('43', '2019-12-25 23:39:16', '56', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('44', '2019-12-25 23:39:18', '56', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('45', '2019-12-25 23:39:20', '56', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('46', '2019-12-25 23:39:22', '56', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('47', '2019-12-25 23:39:24', '56', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('48', '2019-12-25 23:39:26', '56', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('49', '2019-12-25 23:39:28', '56', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('50', '2019-12-25 23:39:31', '56', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('51', '2019-12-25 23:39:33', '56', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('52', '2019-12-25 23:39:37', '56', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('53', '2019-12-25 23:39:41', '56', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('54', '2019-12-25 23:39:43', '56', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('55', '2019-12-25 23:39:45', '56', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('56', '2019-12-25 23:39:47', '56', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('57', '2019-12-25 23:39:48', '56', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('58', '2019-12-25 23:39:50', '56', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('59', '2019-12-25 23:39:52', '56', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('60', '2019-12-25 23:39:54', '56', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('61', '2019-12-26 00:04:38', '57', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('62', '2019-12-26 00:46:08', '59', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('63', '2019-12-26 20:52:09', '58', '湿度过高');
INSERT INTO `smart_humidity` VALUES ('64', '2020-01-02 17:45:53', '43', '湿度适宜');
INSERT INTO `smart_humidity` VALUES ('65', '2020-01-02 17:46:53', '43', '湿度适宜');
INSERT INTO `smart_humidity` VALUES ('66', '2020-01-02 17:47:53', '43', '湿度适宜');

-- ----------------------------
-- Table structure for smart_pm
-- ----------------------------
DROP TABLE IF EXISTS `smart_pm`;
CREATE TABLE `smart_pm` (
  `p_id` int(10) NOT NULL AUTO_INCREMENT,
  `p_time` datetime NOT NULL,
  `p_value` int(10) NOT NULL,
  `p_level` varchar(15) NOT NULL,
  PRIMARY KEY (`p_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of smart_pm
-- ----------------------------
INSERT INTO `smart_pm` VALUES ('1', '2019-11-21 11:03:54', '27', '优');
INSERT INTO `smart_pm` VALUES ('2', '2019-11-21 11:07:06', '27', '优');
INSERT INTO `smart_pm` VALUES ('3', '2019-11-21 11:08:33', '27', '优');
INSERT INTO `smart_pm` VALUES ('4', '2019-11-21 11:33:57', '27', '优');
INSERT INTO `smart_pm` VALUES ('5', '2019-11-21 11:38:33', '27', '优');
INSERT INTO `smart_pm` VALUES ('6', '2019-11-21 11:47:55', '27', '优');
INSERT INTO `smart_pm` VALUES ('7', '2019-11-22 01:07:02', '54', '良');
INSERT INTO `smart_pm` VALUES ('8', '2019-11-22 01:07:31', '54', '良');
INSERT INTO `smart_pm` VALUES ('9', '2019-11-22 09:40:02', '54', '良');
INSERT INTO `smart_pm` VALUES ('10', '2019-11-22 09:40:32', '54', '良');
INSERT INTO `smart_pm` VALUES ('11', '2019-11-22 09:41:02', '55', '良');
INSERT INTO `smart_pm` VALUES ('12', '2019-11-22 09:42:02', '52', '良');
INSERT INTO `smart_pm` VALUES ('13', '2019-11-28 10:42:41', '16', '优');
INSERT INTO `smart_pm` VALUES ('14', '2019-11-28 10:54:11', '49', '优');
INSERT INTO `smart_pm` VALUES ('15', '2019-11-28 10:56:55', '55', '良');
INSERT INTO `smart_pm` VALUES ('16', '2019-11-29 15:56:16', '40', '优');
INSERT INTO `smart_pm` VALUES ('17', '2019-11-29 15:56:46', '39', '优');
INSERT INTO `smart_pm` VALUES ('18', '2019-11-29 15:57:16', '36', '优');
INSERT INTO `smart_pm` VALUES ('19', '2019-11-30 15:57:46', '39', '优');
INSERT INTO `smart_pm` VALUES ('20', '2019-12-03 09:25:58', '92', '良');
INSERT INTO `smart_pm` VALUES ('21', '2019-12-03 09:26:28', '92', '良');
INSERT INTO `smart_pm` VALUES ('22', '2019-12-16 09:52:41', '62', '良');
INSERT INTO `smart_pm` VALUES ('23', '2019-12-16 09:52:49', '60', '良');
INSERT INTO `smart_pm` VALUES ('24', '2019-12-16 09:52:52', '60', '良');
INSERT INTO `smart_pm` VALUES ('25', '2019-12-16 09:53:11', '57', '良');
INSERT INTO `smart_pm` VALUES ('26', '2019-12-16 09:53:16', '57', '良');
INSERT INTO `smart_pm` VALUES ('27', '2019-12-16 09:53:22', '58', '良');
INSERT INTO `smart_pm` VALUES ('28', '2019-12-16 09:53:31', '54', '良');
INSERT INTO `smart_pm` VALUES ('29', '2019-12-25 15:30:07', '30', '优');
INSERT INTO `smart_pm` VALUES ('30', '2019-12-25 15:30:09', '30', '优');
INSERT INTO `smart_pm` VALUES ('31', '2019-12-25 15:30:24', '28', '优');
INSERT INTO `smart_pm` VALUES ('32', '2019-12-25 15:30:34', '28', '优');
INSERT INTO `smart_pm` VALUES ('33', '2019-12-25 22:44:37', '34', '优');
INSERT INTO `smart_pm` VALUES ('34', '2019-12-25 22:45:08', '37', '优');
INSERT INTO `smart_pm` VALUES ('35', '2019-12-25 22:49:40', '36', '优');
INSERT INTO `smart_pm` VALUES ('36', '2019-12-25 22:53:38', '36', '优');
INSERT INTO `smart_pm` VALUES ('37', '2019-12-25 22:54:08', '37', '优');
INSERT INTO `smart_pm` VALUES ('38', '2019-12-25 22:54:37', '37', '优');
INSERT INTO `smart_pm` VALUES ('39', '2019-12-25 23:39:09', '36', '优');
INSERT INTO `smart_pm` VALUES ('40', '2019-12-25 23:39:11', '36', '优');
INSERT INTO `smart_pm` VALUES ('41', '2019-12-25 23:39:13', '36', '优');
INSERT INTO `smart_pm` VALUES ('42', '2019-12-25 23:39:14', '36', '优');
INSERT INTO `smart_pm` VALUES ('43', '2019-12-25 23:39:16', '36', '优');
INSERT INTO `smart_pm` VALUES ('44', '2019-12-25 23:39:18', '36', '优');
INSERT INTO `smart_pm` VALUES ('45', '2019-12-25 23:39:20', '36', '优');
INSERT INTO `smart_pm` VALUES ('46', '2019-12-25 23:39:22', '36', '优');
INSERT INTO `smart_pm` VALUES ('47', '2019-12-25 23:39:24', '36', '优');
INSERT INTO `smart_pm` VALUES ('48', '2019-12-25 23:39:26', '36', '优');
INSERT INTO `smart_pm` VALUES ('49', '2019-12-25 23:39:28', '36', '优');
INSERT INTO `smart_pm` VALUES ('50', '2019-12-25 23:39:31', '36', '优');
INSERT INTO `smart_pm` VALUES ('51', '2019-12-25 23:39:33', '36', '优');
INSERT INTO `smart_pm` VALUES ('52', '2019-12-25 23:39:37', '36', '优');
INSERT INTO `smart_pm` VALUES ('53', '2019-12-25 23:39:41', '36', '优');
INSERT INTO `smart_pm` VALUES ('54', '2019-12-25 23:39:43', '36', '优');
INSERT INTO `smart_pm` VALUES ('55', '2019-12-25 23:39:45', '36', '优');
INSERT INTO `smart_pm` VALUES ('56', '2019-12-25 23:39:47', '36', '优');
INSERT INTO `smart_pm` VALUES ('57', '2019-12-25 23:39:48', '36', '优');
INSERT INTO `smart_pm` VALUES ('58', '2019-12-25 23:39:50', '36', '优');
INSERT INTO `smart_pm` VALUES ('59', '2019-12-25 23:39:52', '36', '优');
INSERT INTO `smart_pm` VALUES ('60', '2019-12-25 23:39:54', '36', '优');
INSERT INTO `smart_pm` VALUES ('61', '2019-12-26 00:04:38', '36', '优');
INSERT INTO `smart_pm` VALUES ('62', '2019-12-26 00:46:08', '33', '优');
INSERT INTO `smart_pm` VALUES ('63', '2019-12-26 20:52:09', '49', '优');
INSERT INTO `smart_pm` VALUES ('64', '2020-01-02 17:45:53', '30', '优');
INSERT INTO `smart_pm` VALUES ('65', '2020-01-02 17:46:53', '28', '优');
INSERT INTO `smart_pm` VALUES ('66', '2020-01-02 17:47:53', '30', '优');

-- ----------------------------
-- Table structure for smart_resource
-- ----------------------------
DROP TABLE IF EXISTS `smart_resource`;
CREATE TABLE `smart_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of smart_resource
-- ----------------------------
INSERT INTO `smart_resource` VALUES ('1', '设备监控', '/equipment', null, 'menu');
INSERT INTO `smart_resource` VALUES ('2', '告警数据', '/alarm', null, 'menu');
INSERT INTO `smart_resource` VALUES ('3', '事件管理', '/comevents', null, 'menu');
INSERT INTO `smart_resource` VALUES ('4', '资源管理', '/linkage', null, 'menu');
INSERT INTO `smart_resource` VALUES ('5', '管理员中心', '/managercentrexZcx', null, 'menu');
INSERT INTO `smart_resource` VALUES ('6', '历史数据', '/equipment/historydata', '1', 'menu');
INSERT INTO `smart_resource` VALUES ('7', '实时数据', '/equipment/realtime', '1', 'menu');
INSERT INTO `smart_resource` VALUES ('8', '设备实时监控', '/equipment/equipmentret', '1', 'menu');
INSERT INTO `smart_resource` VALUES ('9', '视频监控图像', '/equipment/videomonitoring', '1', 'menu');
INSERT INTO `smart_resource` VALUES ('10', '告警查询', '/alarm/query', '2', 'menu');
INSERT INTO `smart_resource` VALUES ('11', '事件查询', '/comevents/eventquery', '3', 'menu');
INSERT INTO `smart_resource` VALUES ('12', '权限管理', '/linkage/linkagequery', '4', 'menu');
INSERT INTO `smart_resource` VALUES ('13', '用户角色', '/managercentre/roles', '5', 'menu');
INSERT INTO `smart_resource` VALUES ('14', '用户设置', '/managercentre/userset', '5', 'menu');

-- ----------------------------
-- Table structure for smart_role
-- ----------------------------
DROP TABLE IF EXISTS `smart_role`;
CREATE TABLE `smart_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(15) DEFAULT NULL,
  `role_desc` varchar(50) DEFAULT NULL,
  `role_flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE,
  KEY `role_name` (`role_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of smart_role
-- ----------------------------
INSERT INTO `smart_role` VALUES ('1', '管理员', '超管，后台维护', '1');
INSERT INTO `smart_role` VALUES ('2', '普通用户', '使用系统，浏览信息', '1');
INSERT INTO `smart_role` VALUES ('3', '检查人员', '接收警告，检查底层设备，确认告警', '1');
INSERT INTO `smart_role` VALUES ('4', '超级管理员', '管理所有用户及整个系统', '1');

-- ----------------------------
-- Table structure for smart_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `smart_role_resource`;
CREATE TABLE `smart_role_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `roleid` (`role_id`) USING BTREE,
  KEY `roleresource` (`resource_id`) USING BTREE,
  CONSTRAINT `roleid` FOREIGN KEY (`role_id`) REFERENCES `smart_role` (`role_id`),
  CONSTRAINT `roleresource` FOREIGN KEY (`resource_id`) REFERENCES `smart_resource` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of smart_role_resource
-- ----------------------------
INSERT INTO `smart_role_resource` VALUES ('6', '4', '6');
INSERT INTO `smart_role_resource` VALUES ('48', '4', '7');
INSERT INTO `smart_role_resource` VALUES ('49', '4', '8');
INSERT INTO `smart_role_resource` VALUES ('50', '4', '9');
INSERT INTO `smart_role_resource` VALUES ('51', '4', '10');
INSERT INTO `smart_role_resource` VALUES ('52', '4', '11');
INSERT INTO `smart_role_resource` VALUES ('53', '4', '12');
INSERT INTO `smart_role_resource` VALUES ('54', '4', '13');
INSERT INTO `smart_role_resource` VALUES ('55', '4', '14');
INSERT INTO `smart_role_resource` VALUES ('56', '3', '6');
INSERT INTO `smart_role_resource` VALUES ('57', '3', '7');
INSERT INTO `smart_role_resource` VALUES ('58', '3', '8');
INSERT INTO `smart_role_resource` VALUES ('59', '1', '6');
INSERT INTO `smart_role_resource` VALUES ('60', '1', '7');
INSERT INTO `smart_role_resource` VALUES ('61', '1', '8');
INSERT INTO `smart_role_resource` VALUES ('62', '1', '9');
INSERT INTO `smart_role_resource` VALUES ('63', '1', '10');
INSERT INTO `smart_role_resource` VALUES ('64', '1', '11');
INSERT INTO `smart_role_resource` VALUES ('65', '1', '12');

-- ----------------------------
-- Table structure for smart_smog
-- ----------------------------
DROP TABLE IF EXISTS `smart_smog`;
CREATE TABLE `smart_smog` (
  `s_id` int(10) NOT NULL AUTO_INCREMENT,
  `s_time` datetime NOT NULL,
  `s_status` varchar(15) NOT NULL,
  PRIMARY KEY (`s_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of smart_smog
-- ----------------------------
INSERT INTO `smart_smog` VALUES ('1', '2019-11-22 10:34:21', '烟雾警告');
INSERT INTO `smart_smog` VALUES ('2', '2019-11-28 10:42:45', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('3', '2019-11-28 10:42:46', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('4', '2019-11-28 10:42:47', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('5', '2019-11-28 10:54:13', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('6', '2019-11-28 10:54:17', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('7', '2019-11-28 10:54:18', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('8', '2019-11-28 10:54:18', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('9', '2019-11-28 10:56:55', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('10', '2019-11-28 10:56:55', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('11', '2019-11-28 10:56:55', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('12', '2019-11-29 15:55:53', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('13', '2019-11-29 15:56:22', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('14', '2019-11-29 15:56:23', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('15', '2019-11-29 15:56:35', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('16', '2019-11-29 15:56:49', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('17', '2019-11-29 15:56:50', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('18', '2019-11-29 15:56:52', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('19', '2019-11-29 15:56:54', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('20', '2019-11-29 15:57:19', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('21', '2019-11-29 15:57:23', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('22', '2019-11-29 15:57:35', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('23', '2019-11-29 15:57:48', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('24', '2019-11-29 15:57:50', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('25', '2019-11-29 15:57:51', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('26', '2019-11-29 15:57:53', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('27', '2019-12-03 09:25:33', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('28', '2019-12-03 09:25:35', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('29', '2019-12-03 09:26:01', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('30', '2019-12-03 09:26:02', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('31', '2019-12-03 09:26:05', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('32', '2019-12-03 09:26:30', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('33', '2019-12-03 09:26:32', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('34', '2019-12-03 09:26:33', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('35', '2019-12-03 09:26:35', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('36', '2019-12-03 09:50:03', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('37', '2019-12-03 09:50:05', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('38', '2019-12-16 09:52:39', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('39', '2019-12-16 09:52:49', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('40', '2019-12-16 09:52:50', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('41', '2019-12-16 09:52:51', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('42', '2019-12-16 09:52:53', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('43', '2019-12-16 09:52:54', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('44', '2019-12-16 09:53:18', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('45', '2019-12-16 09:53:20', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('46', '2019-12-16 09:53:23', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('47', '2019-12-25 15:30:10', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('48', '2019-12-25 15:30:10', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('49', '2019-12-25 15:30:11', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('50', '2019-12-25 22:44:11', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('51', '2019-12-25 22:44:14', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('52', '2019-12-25 22:44:41', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('53', '2019-12-25 22:45:09', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('54', '2019-12-25 22:45:10', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('55', '2019-12-25 22:45:13', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('56', '2019-12-25 22:49:40', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('57', '2019-12-25 22:49:41', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('58', '2019-12-25 22:49:43', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('59', '2019-12-25 22:53:13', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('60', '2019-12-25 22:53:39', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('61', '2019-12-25 22:53:40', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('62', '2019-12-25 22:53:41', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('63', '2019-12-25 22:53:43', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('64', '2019-12-25 22:54:09', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('65', '2019-12-25 22:54:11', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('66', '2019-12-25 22:54:13', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('67', '2019-12-25 22:54:15', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('68', '2019-12-25 22:54:39', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('69', '2019-12-25 22:54:40', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('70', '2019-12-25 22:54:41', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('71', '2019-12-25 22:54:43', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('72', '2019-12-25 23:45:40', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('73', '2019-12-25 23:45:42', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('74', '2019-12-25 23:45:43', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('75', '2019-12-25 23:45:43', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('76', '2019-12-25 23:45:43', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('77', '2019-12-25 23:45:44', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('78', '2019-12-25 23:45:44', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('79', '2019-12-25 23:45:45', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('80', '2019-12-25 23:45:45', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('81', '2019-12-25 23:45:47', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('82', '2019-12-25 23:45:47', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('83', '2019-12-25 23:45:47', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('84', '2019-12-25 23:45:48', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('85', '2019-12-25 23:45:49', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('86', '2019-12-25 23:45:49', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('87', '2019-12-25 23:45:49', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('88', '2019-12-25 23:45:50', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('89', '2019-12-25 23:45:50', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('90', '2019-12-25 23:45:51', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('91', '2019-12-25 23:45:51', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('92', '2019-12-25 23:45:52', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('93', '2019-12-25 23:45:52', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('94', '2019-12-25 23:45:53', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('95', '2019-12-25 23:45:53', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('96', '2019-12-25 23:45:54', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('97', '2019-12-25 23:45:54', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('98', '2019-12-25 23:45:55', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('99', '2019-12-25 23:45:55', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('100', '2019-12-25 23:45:56', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('101', '2019-12-25 23:45:56', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('102', '2019-12-25 23:45:57', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('103', '2019-12-25 23:45:57', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('104', '2019-12-25 23:45:58', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('105', '2019-12-25 23:45:59', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('106', '2019-12-25 23:45:59', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('107', '2019-12-25 23:46:00', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('108', '2019-12-25 23:46:00', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('109', '2019-12-25 23:46:02', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('110', '2019-12-25 23:46:02', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('111', '2019-12-25 23:46:03', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('112', '2019-12-25 23:46:03', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('113', '2019-12-25 23:46:04', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('114', '2019-12-25 23:46:04', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('115', '2019-12-25 23:46:05', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('116', '2019-12-25 23:46:05', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('117', '2019-12-25 23:46:06', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('118', '2019-12-25 23:46:06', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('119', '2019-12-25 23:46:07', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('120', '2019-12-25 23:46:08', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('121', '2019-12-25 23:46:09', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('122', '2019-12-25 23:46:10', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('123', '2019-12-25 23:46:11', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('124', '2019-12-25 23:46:11', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('125', '2019-12-25 23:46:13', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('126', '2019-12-25 23:46:14', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('127', '2019-12-25 23:46:15', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('128', '2019-12-25 23:46:23', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('129', '2019-12-25 23:46:24', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('130', '2019-12-25 23:46:28', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('131', '2019-12-25 23:46:30', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('132', '2019-12-25 23:46:33', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('133', '2019-12-25 23:46:33', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('134', '2019-12-25 23:46:34', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('135', '2019-12-25 23:46:37', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('136', '2019-12-25 23:46:39', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('137', '2019-12-25 23:46:40', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('138', '2019-12-25 23:46:43', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('139', '2019-12-25 23:46:52', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('140', '2019-12-25 23:46:52', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('141', '2019-12-25 23:46:53', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('142', '2019-12-25 23:46:57', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('143', '2019-12-25 23:46:59', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('144', '2019-12-25 23:47:01', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('145', '2019-12-25 23:47:02', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('146', '2019-12-25 23:47:02', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('147', '2019-12-25 23:47:03', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('148', '2019-12-25 23:47:04', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('149', '2019-12-25 23:47:05', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('150', '2019-12-25 23:47:06', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('151', '2019-12-25 23:47:07', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('152', '2019-12-25 23:47:07', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('153', '2019-12-25 23:47:10', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('154', '2019-12-25 23:47:13', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('155', '2019-12-25 23:47:17', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('156', '2019-12-25 23:47:19', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('157', '2019-12-25 23:47:21', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('158', '2019-12-25 23:47:22', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('159', '2019-12-25 23:47:23', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('160', '2019-12-25 23:47:24', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('161', '2019-12-25 23:47:28', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('162', '2019-12-25 23:47:30', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('163', '2019-12-25 23:47:31', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('164', '2019-12-25 23:47:31', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('165', '2019-12-25 23:47:34', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('166', '2019-12-25 23:47:41', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('167', '2019-12-25 23:47:42', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('168', '2019-12-25 23:47:43', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('169', '2019-12-25 23:47:45', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('170', '2019-12-25 23:47:46', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('171', '2019-12-25 23:47:46', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('172', '2019-12-25 23:47:47', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('173', '2019-12-25 23:47:47', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('174', '2019-12-25 23:47:48', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('175', '2019-12-25 23:47:48', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('176', '2019-12-25 23:47:49', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('177', '2019-12-25 23:47:51', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('178', '2019-12-25 23:47:51', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('179', '2019-12-25 23:47:52', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('180', '2019-12-25 23:47:52', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('181', '2019-12-25 23:47:52', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('182', '2019-12-25 23:47:53', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('183', '2019-12-25 23:47:59', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('184', '2019-12-25 23:47:59', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('185', '2019-12-25 23:48:00', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('186', '2019-12-25 23:48:01', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('187', '2019-12-25 23:48:02', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('188', '2019-12-25 23:48:03', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('189', '2019-12-25 23:48:04', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('190', '2019-12-25 23:48:06', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('191', '2019-12-25 23:48:07', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('192', '2019-12-25 23:48:09', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('193', '2019-12-25 23:48:09', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('194', '2019-12-25 23:48:12', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('195', '2019-12-25 23:48:12', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('196', '2019-12-25 23:48:12', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('197', '2019-12-25 23:48:13', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('198', '2019-12-25 23:48:16', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('199', '2019-12-25 23:48:16', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('200', '2019-12-25 23:48:17', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('201', '2019-12-25 23:48:18', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('202', '2019-12-25 23:48:18', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('203', '2019-12-25 23:48:20', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('204', '2019-12-25 23:48:21', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('205', '2019-12-25 23:48:22', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('206', '2019-12-25 23:48:24', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('207', '2019-12-25 23:48:25', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('208', '2019-12-25 23:48:26', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('209', '2019-12-25 23:48:27', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('210', '2019-12-25 23:48:29', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('211', '2019-12-25 23:48:30', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('212', '2019-12-25 23:48:33', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('213', '2019-12-25 23:48:36', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('214', '2019-12-25 23:48:36', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('215', '2019-12-25 23:48:37', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('216', '2019-12-25 23:48:38', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('217', '2019-12-25 23:48:41', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('218', '2019-12-26 00:04:39', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('219', '2019-12-26 00:04:40', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('220', '2019-12-26 00:04:41', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('221', '2019-12-26 00:46:10', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('222', '2019-12-26 00:46:13', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('223', '2019-12-26 01:07:41', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('224', '2019-12-26 01:07:42', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('225', '2019-12-26 01:07:43', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('226', '2019-12-26 01:07:43', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('227', '2019-12-26 01:07:43', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('228', '2019-12-26 01:07:44', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('229', '2019-12-26 01:07:44', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('230', '2019-12-26 01:07:45', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('231', '2019-12-26 01:07:45', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('232', '2019-12-26 01:07:45', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('233', '2019-12-26 01:07:46', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('234', '2019-12-26 01:07:46', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('235', '2019-12-26 01:07:47', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('236', '2019-12-26 01:07:47', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('237', '2019-12-26 01:07:48', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('238', '2019-12-26 01:07:48', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('239', '2019-12-26 01:07:48', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('240', '2019-12-26 01:07:49', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('241', '2019-12-26 01:07:49', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('242', '2019-12-26 01:07:49', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('243', '2019-12-26 01:07:50', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('244', '2019-12-26 01:07:50', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('245', '2019-12-26 01:07:51', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('246', '2019-12-26 01:07:51', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('247', '2019-12-26 01:07:51', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('248', '2019-12-26 01:07:52', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('249', '2019-12-26 01:07:52', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('250', '2019-12-26 01:07:53', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('251', '2019-12-26 01:07:53', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('252', '2019-12-26 01:07:53', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('253', '2019-12-26 01:07:54', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('254', '2019-12-26 01:07:54', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('255', '2019-12-26 01:07:55', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('256', '2019-12-26 01:07:55', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('257', '2019-12-26 01:07:55', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('258', '2019-12-26 01:07:56', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('259', '2019-12-26 01:07:56', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('260', '2019-12-26 01:07:57', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('261', '2019-12-26 01:07:57', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('262', '2019-12-26 01:07:57', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('263', '2019-12-26 01:07:58', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('264', '2019-12-26 01:07:58', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('265', '2019-12-26 01:07:59', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('266', '2019-12-26 01:07:59', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('267', '2019-12-26 01:07:59', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('268', '2019-12-26 01:08:00', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('269', '2019-12-26 01:08:00', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('270', '2019-12-26 01:08:00', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('271', '2019-12-26 01:08:01', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('272', '2019-12-26 01:08:01', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('273', '2019-12-26 01:08:02', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('274', '2019-12-26 01:08:02', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('275', '2019-12-26 01:08:02', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('276', '2019-12-26 01:08:03', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('277', '2019-12-26 01:08:03', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('278', '2019-12-26 01:08:04', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('279', '2019-12-26 01:08:04', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('280', '2019-12-26 01:08:04', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('281', '2019-12-26 01:08:05', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('282', '2019-12-26 01:08:05', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('283', '2019-12-26 01:08:05', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('284', '2019-12-26 01:08:06', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('285', '2019-12-26 01:08:06', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('286', '2019-12-26 01:08:07', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('287', '2019-12-26 01:08:07', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('288', '2019-12-26 01:08:07', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('289', '2019-12-26 01:08:08', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('290', '2019-12-26 01:08:08', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('291', '2019-12-26 01:08:08', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('292', '2019-12-26 01:08:09', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('293', '2019-12-26 01:08:09', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('294', '2019-12-26 01:08:10', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('295', '2019-12-26 01:08:10', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('296', '2019-12-26 01:08:10', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('297', '2019-12-26 20:51:44', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('298', '2019-12-26 20:52:10', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('299', '2019-12-26 20:52:12', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('300', '2019-12-26 20:52:13', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('301', '2020-01-02 17:45:32', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('302', '2020-01-02 17:45:35', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('303', '2020-01-02 17:45:54', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('304', '2020-01-02 17:45:57', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('305', '2020-01-02 17:46:54', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('306', '2020-01-02 17:46:57', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('307', '2020-01-02 17:47:55', '烟雾正常');
INSERT INTO `smart_smog` VALUES ('308', '2020-01-02 17:47:57', '烟雾正常');

-- ----------------------------
-- Table structure for smart_sql
-- ----------------------------
DROP TABLE IF EXISTS `smart_sql`;
CREATE TABLE `smart_sql` (
  `s_id` int(10) NOT NULL AUTO_INCREMENT,
  `s_time` datetime NOT NULL,
  `s_value` int(10) NOT NULL,
  `s_level` varchar(15) NOT NULL,
  PRIMARY KEY (`s_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of smart_sql
-- ----------------------------
INSERT INTO `smart_sql` VALUES ('1', '2019-11-21 11:03:54', '38', '优');
INSERT INTO `smart_sql` VALUES ('2', '2019-11-21 11:07:06', '38', '优');
INSERT INTO `smart_sql` VALUES ('3', '2019-11-21 11:08:33', '38', '优');
INSERT INTO `smart_sql` VALUES ('4', '2019-11-21 11:33:57', '38', '优');
INSERT INTO `smart_sql` VALUES ('5', '2019-11-21 11:38:33', '38', '优');
INSERT INTO `smart_sql` VALUES ('6', '2019-11-21 11:47:55', '38', '优');
INSERT INTO `smart_sql` VALUES ('7', '2019-11-22 01:07:02', '73', '良');
INSERT INTO `smart_sql` VALUES ('8', '2019-11-22 01:07:31', '75', '良');
INSERT INTO `smart_sql` VALUES ('9', '2019-11-22 09:40:02', '73', '良');
INSERT INTO `smart_sql` VALUES ('10', '2019-11-22 09:40:32', '73', '良');
INSERT INTO `smart_sql` VALUES ('11', '2019-11-22 09:41:02', '75', '良');
INSERT INTO `smart_sql` VALUES ('12', '2019-11-22 09:42:02', '71', '良');
INSERT INTO `smart_sql` VALUES ('13', '2019-11-28 10:42:41', '22', '优');
INSERT INTO `smart_sql` VALUES ('14', '2019-11-28 10:54:11', '67', '良');
INSERT INTO `smart_sql` VALUES ('15', '2019-11-28 10:56:55', '75', '良');
INSERT INTO `smart_sql` VALUES ('16', '2019-11-29 15:56:16', '56', '良');
INSERT INTO `smart_sql` VALUES ('17', '2019-11-29 15:56:46', '56', '良');
INSERT INTO `smart_sql` VALUES ('18', '2019-11-29 15:57:16', '51', '良');
INSERT INTO `smart_sql` VALUES ('19', '2019-11-29 15:57:46', '55', '良');
INSERT INTO `smart_sql` VALUES ('20', '2019-12-03 09:25:58', '121', '轻度污染');
INSERT INTO `smart_sql` VALUES ('21', '2019-12-03 09:26:28', '121', '轻度污染');
INSERT INTO `smart_sql` VALUES ('22', '2019-12-16 09:52:41', '83', '良');
INSERT INTO `smart_sql` VALUES ('23', '2019-12-16 09:52:49', '81', '良');
INSERT INTO `smart_sql` VALUES ('24', '2019-12-16 09:52:52', '81', '良');
INSERT INTO `smart_sql` VALUES ('25', '2019-12-16 09:53:11', '77', '良');
INSERT INTO `smart_sql` VALUES ('26', '2019-12-16 09:53:16', '77', '良');
INSERT INTO `smart_sql` VALUES ('27', '2019-12-16 09:53:22', '78', '良');
INSERT INTO `smart_sql` VALUES ('28', '2019-12-16 09:53:31', '73', '良');
INSERT INTO `smart_sql` VALUES ('29', '2019-12-25 15:30:07', '42', '优');
INSERT INTO `smart_sql` VALUES ('30', '2019-12-25 15:30:09', '42', '优');
INSERT INTO `smart_sql` VALUES ('31', '2019-12-25 15:30:24', '40', '优');
INSERT INTO `smart_sql` VALUES ('32', '2019-12-25 15:30:34', '40', '优');
INSERT INTO `smart_sql` VALUES ('33', '2019-12-25 22:44:37', '48', '优');
INSERT INTO `smart_sql` VALUES ('34', '2019-12-25 22:45:08', '52', '良');
INSERT INTO `smart_sql` VALUES ('35', '2019-12-25 22:49:40', '48', '优');
INSERT INTO `smart_sql` VALUES ('36', '2019-12-25 22:53:38', '51', '良');
INSERT INTO `smart_sql` VALUES ('37', '2019-12-25 22:54:08', '52', '良');
INSERT INTO `smart_sql` VALUES ('38', '2019-12-25 22:54:37', '52', '良');
INSERT INTO `smart_sql` VALUES ('39', '2019-12-25 23:39:09', '51', '良');
INSERT INTO `smart_sql` VALUES ('40', '2019-12-25 23:39:11', '51', '良');
INSERT INTO `smart_sql` VALUES ('41', '2019-12-25 23:39:13', '51', '良');
INSERT INTO `smart_sql` VALUES ('42', '2019-12-25 23:39:14', '51', '良');
INSERT INTO `smart_sql` VALUES ('43', '2019-12-25 23:39:16', '51', '良');
INSERT INTO `smart_sql` VALUES ('44', '2019-12-25 23:39:18', '51', '良');
INSERT INTO `smart_sql` VALUES ('45', '2019-12-25 23:39:20', '51', '良');
INSERT INTO `smart_sql` VALUES ('46', '2019-12-25 23:39:22', '51', '良');
INSERT INTO `smart_sql` VALUES ('47', '2019-12-25 23:39:24', '51', '良');
INSERT INTO `smart_sql` VALUES ('48', '2019-12-25 23:39:26', '51', '良');
INSERT INTO `smart_sql` VALUES ('49', '2019-12-25 23:39:28', '51', '良');
INSERT INTO `smart_sql` VALUES ('50', '2019-12-25 23:39:31', '51', '良');
INSERT INTO `smart_sql` VALUES ('51', '2019-12-25 23:39:33', '51', '良');
INSERT INTO `smart_sql` VALUES ('52', '2019-12-25 23:39:37', '51', '良');
INSERT INTO `smart_sql` VALUES ('53', '2019-12-25 23:39:41', '51', '良');
INSERT INTO `smart_sql` VALUES ('54', '2019-12-25 23:39:43', '51', '良');
INSERT INTO `smart_sql` VALUES ('55', '2019-12-25 23:39:45', '51', '良');
INSERT INTO `smart_sql` VALUES ('56', '2019-12-25 23:39:47', '51', '良');
INSERT INTO `smart_sql` VALUES ('57', '2019-12-25 23:39:48', '51', '良');
INSERT INTO `smart_sql` VALUES ('58', '2019-12-25 23:39:50', '51', '良');
INSERT INTO `smart_sql` VALUES ('59', '2019-12-25 23:39:52', '51', '良');
INSERT INTO `smart_sql` VALUES ('60', '2019-12-25 23:39:54', '51', '良');
INSERT INTO `smart_sql` VALUES ('61', '2019-12-26 00:04:38', '51', '良');
INSERT INTO `smart_sql` VALUES ('62', '2019-12-26 00:46:08', '47', '优');
INSERT INTO `smart_sql` VALUES ('63', '2019-12-26 20:52:09', '67', '良');
INSERT INTO `smart_sql` VALUES ('64', '2020-01-02 17:45:53', '42', '优');
INSERT INTO `smart_sql` VALUES ('65', '2020-01-02 17:46:53', '40', '优');
INSERT INTO `smart_sql` VALUES ('66', '2020-01-02 17:47:53', '42', '优');

-- ----------------------------
-- Table structure for smart_temperator
-- ----------------------------
DROP TABLE IF EXISTS `smart_temperator`;
CREATE TABLE `smart_temperator` (
  `t_id` int(10) NOT NULL AUTO_INCREMENT,
  `t_time` datetime NOT NULL,
  `t_value` int(10) NOT NULL,
  `t_level` varchar(15) NOT NULL,
  PRIMARY KEY (`t_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of smart_temperator
-- ----------------------------
INSERT INTO `smart_temperator` VALUES ('1', '2019-11-21 11:03:54', '50', '炎热');
INSERT INTO `smart_temperator` VALUES ('2', '2019-11-21 11:07:06', '22', '炎热');
INSERT INTO `smart_temperator` VALUES ('3', '2019-11-21 11:08:33', '22', '炎热');
INSERT INTO `smart_temperator` VALUES ('4', '2019-11-21 11:33:57', '22', '炎热');
INSERT INTO `smart_temperator` VALUES ('5', '2019-11-21 11:38:33', '22', '炎热');
INSERT INTO `smart_temperator` VALUES ('6', '2019-11-21 11:47:55', '22', '炎热');
INSERT INTO `smart_temperator` VALUES ('7', '2019-11-22 01:07:02', '20', '温暖');
INSERT INTO `smart_temperator` VALUES ('8', '2019-11-22 01:07:31', '20', '温暖');
INSERT INTO `smart_temperator` VALUES ('9', '2019-11-22 09:40:02', '20', '温暖');
INSERT INTO `smart_temperator` VALUES ('10', '2019-11-22 09:40:32', '20', '温暖');
INSERT INTO `smart_temperator` VALUES ('11', '2019-11-22 09:41:02', '20', '温暖');
INSERT INTO `smart_temperator` VALUES ('12', '2019-11-22 09:42:02', '20', '温暖');
INSERT INTO `smart_temperator` VALUES ('13', '2019-11-28 10:42:41', '20', '温暖');
INSERT INTO `smart_temperator` VALUES ('14', '2019-11-28 10:54:11', '20', '温暖');
INSERT INTO `smart_temperator` VALUES ('15', '2019-11-28 10:56:55', '20', '温暖');
INSERT INTO `smart_temperator` VALUES ('16', '2019-11-29 15:56:16', '17', '温暖');
INSERT INTO `smart_temperator` VALUES ('17', '2019-11-29 15:56:46', '17', '温暖');
INSERT INTO `smart_temperator` VALUES ('18', '2019-11-29 15:57:16', '19', '温暖');
INSERT INTO `smart_temperator` VALUES ('19', '2019-11-30 15:57:46', '18', '温暖');
INSERT INTO `smart_temperator` VALUES ('20', '2019-12-03 09:25:58', '19', '温暖');
INSERT INTO `smart_temperator` VALUES ('21', '2019-12-03 09:26:28', '19', '温暖');
INSERT INTO `smart_temperator` VALUES ('22', '2019-12-16 09:52:41', '20', '温暖');
INSERT INTO `smart_temperator` VALUES ('23', '2019-12-16 09:52:49', '20', '温暖');
INSERT INTO `smart_temperator` VALUES ('24', '2019-12-16 09:52:52', '20', '温暖');
INSERT INTO `smart_temperator` VALUES ('25', '2019-12-16 09:53:11', '20', '温暖');
INSERT INTO `smart_temperator` VALUES ('26', '2019-12-16 09:53:16', '20', '温暖');
INSERT INTO `smart_temperator` VALUES ('27', '2019-12-16 09:53:22', '20', '温暖');
INSERT INTO `smart_temperator` VALUES ('28', '2019-12-16 09:53:31', '20', '温暖');
INSERT INTO `smart_temperator` VALUES ('29', '2019-12-25 15:30:07', '25', '炎热');
INSERT INTO `smart_temperator` VALUES ('30', '2019-12-25 15:30:09', '25', '炎热');
INSERT INTO `smart_temperator` VALUES ('31', '2019-12-25 15:30:24', '24', '炎热');
INSERT INTO `smart_temperator` VALUES ('32', '2019-12-25 22:44:37', '21', '温暖');
INSERT INTO `smart_temperator` VALUES ('33', '2019-12-25 22:45:08', '21', '温暖');
INSERT INTO `smart_temperator` VALUES ('34', '2019-12-25 22:49:40', '21', '温暖');
INSERT INTO `smart_temperator` VALUES ('35', '2019-12-25 22:53:38', '21', '温暖');
INSERT INTO `smart_temperator` VALUES ('36', '2019-12-25 22:54:08', '21', '温暖');
INSERT INTO `smart_temperator` VALUES ('37', '2019-12-25 22:54:37', '21', '温暖');
INSERT INTO `smart_temperator` VALUES ('38', '2019-12-25 23:39:09', '21', '温暖');
INSERT INTO `smart_temperator` VALUES ('39', '2019-12-25 23:39:11', '21', '温暖');
INSERT INTO `smart_temperator` VALUES ('40', '2019-12-25 23:39:13', '21', '温暖');
INSERT INTO `smart_temperator` VALUES ('41', '2019-12-25 23:39:14', '21', '温暖');
INSERT INTO `smart_temperator` VALUES ('42', '2019-12-25 23:39:16', '21', '温暖');
INSERT INTO `smart_temperator` VALUES ('43', '2019-12-25 23:39:18', '21', '温暖');
INSERT INTO `smart_temperator` VALUES ('44', '2019-12-25 23:39:20', '21', '温暖');
INSERT INTO `smart_temperator` VALUES ('45', '2019-12-25 23:39:22', '21', '温暖');
INSERT INTO `smart_temperator` VALUES ('46', '2019-12-25 23:39:24', '21', '温暖');
INSERT INTO `smart_temperator` VALUES ('47', '2019-12-25 23:39:26', '21', '温暖');
INSERT INTO `smart_temperator` VALUES ('48', '2019-12-25 23:39:28', '21', '温暖');
INSERT INTO `smart_temperator` VALUES ('49', '2019-12-25 23:39:31', '21', '温暖');
INSERT INTO `smart_temperator` VALUES ('50', '2019-12-25 23:39:33', '21', '温暖');
INSERT INTO `smart_temperator` VALUES ('51', '2019-12-25 23:39:37', '21', '温暖');
INSERT INTO `smart_temperator` VALUES ('52', '2019-12-25 23:39:41', '21', '温暖');
INSERT INTO `smart_temperator` VALUES ('53', '2019-12-25 23:39:43', '21', '温暖');
INSERT INTO `smart_temperator` VALUES ('54', '2019-12-25 23:39:45', '21', '温暖');
INSERT INTO `smart_temperator` VALUES ('55', '2019-12-25 23:39:47', '21', '温暖');
INSERT INTO `smart_temperator` VALUES ('56', '2019-12-25 23:39:48', '21', '温暖');
INSERT INTO `smart_temperator` VALUES ('57', '2019-12-25 23:39:50', '21', '温暖');
INSERT INTO `smart_temperator` VALUES ('58', '2019-12-25 23:39:52', '21', '温暖');
INSERT INTO `smart_temperator` VALUES ('59', '2019-12-25 23:39:54', '21', '温暖');
INSERT INTO `smart_temperator` VALUES ('60', '2019-12-26 00:04:38', '20', '温暖');
INSERT INTO `smart_temperator` VALUES ('61', '2019-12-26 00:46:08', '20', '温暖');
INSERT INTO `smart_temperator` VALUES ('62', '2019-12-26 20:52:09', '19', '温暖');
INSERT INTO `smart_temperator` VALUES ('63', '2020-01-02 17:45:53', '23', '炎热');
INSERT INTO `smart_temperator` VALUES ('64', '2020-01-02 17:46:53', '23', '炎热');
INSERT INTO `smart_temperator` VALUES ('65', '2020-01-02 17:47:53', '23', '炎热');

-- ----------------------------
-- Table structure for smart_usermessages
-- ----------------------------
DROP TABLE IF EXISTS `smart_usermessages`;
CREATE TABLE `smart_usermessages` (
  `id` bigint(15) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `email` varchar(25) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `avatarurl` varchar(50) DEFAULT NULL,
  `password` varchar(10) NOT NULL,
  `mibo_phone` varchar(15) DEFAULT NULL,
  `standby_email` varchar(25) DEFAULT NULL,
  `role_name` varchar(15) DEFAULT NULL,
  `login_count` int(16) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `role_name` (`role_name`) USING BTREE,
  CONSTRAINT `role_name` FOREIGN KEY (`role_name`) REFERENCES `smart_role` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of smart_usermessages
-- ----------------------------
INSERT INTO `smart_usermessages` VALUES ('1', 'fan', '871245796@qq.com', '13233448004', '11472003.jpg', '654321', '13834743778', null, '超级管理员', '13');
INSERT INTO `smart_usermessages` VALUES ('2', 'jm', '6576576@qq.com', '15135865197', '41651007.jpg', '123456', '13233448004', null, '管理员', '4');
INSERT INTO `smart_usermessages` VALUES ('3', 'xiao', '871245796@qq.com', '13233448004', 'D:\\uploadPicture\\4385000.jpg', '123546', null, null, '检查人员', '1');
INSERT INTO `smart_usermessages` VALUES ('4', 'hjggh', '26279793337', '132121', 'D:\\uploadPicture\\62195车库位置界面.png', '123456', '1313131', '262654', '普通用户', '1');

-- ----------------------------
-- Table structure for smart_warning
-- ----------------------------
DROP TABLE IF EXISTS `smart_warning`;
CREATE TABLE `smart_warning` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT NULL,
  `device` varchar(20) DEFAULT NULL,
  `Warning_type` varchar(20) DEFAULT NULL,
  `Warning_level` varchar(20) DEFAULT NULL,
  `Warning_content` varchar(255) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `w_name` varchar(20) DEFAULT NULL,
  `w_show` varchar(20) DEFAULT NULL,
  `w_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of smart_warning
-- ----------------------------
INSERT INTO `smart_warning` VALUES ('25', null, null, null, null, null, '已确认', '靓仔', '已确认报警消息', '2019-11-29 16:03:06');
INSERT INTO `smart_warning` VALUES ('24', '2019-11-27 14:48:08', '二氧化碳', '数据异常', '二氧化碳浓度超标', '二氧化碳浓度过高,注意及时通风', '已确认', 'fan', '已确认报警消息', '2019-12-27 16:44:49');
INSERT INTO `smart_warning` VALUES ('23', '2019-11-27 14:48:08', '空气质量指数', '数据异常', '轻度污染', '空气质量轻度污染,请注意!', '已确认', 'fan', '已确认报警消息', '2019-12-27 14:44:06');
INSERT INTO `smart_warning` VALUES ('22', '2019-11-27 14:48:08', '湿度', '数据异常', '过于潮湿', '湿度过高，请降低湿度', '已确认', 'fan', '已确认报警消息', '2019-12-27 14:56:05');
INSERT INTO `smart_warning` VALUES ('21', '2019-11-27 14:48:08', '温度', '数据异常', '高温', '温度超过35度高温警告', '已确认', 'fan', '已确认报警消息', '2019-12-27 15:21:24');
INSERT INTO `smart_warning` VALUES ('20', '2019-11-27 14:48:08', 'PM2.5', '数据异常', '轻度污染', 'PM2.5含量超标,请注意!', '已确认', 'fan', '已确认报警消息', '2019-12-27 15:19:30');
INSERT INTO `smart_warning` VALUES ('19', '2019-11-27 14:48:08', '有机物', '数据异常', '有机物浓度超标', '有机物浓度过高,注意及时通风处理', '已确认', 'fan', '已确认报警消息', '2019-12-27 16:39:08');
INSERT INTO `smart_warning` VALUES ('18', '2019-11-27 14:48:08', '甲醛', '数据异常', '甲醛浓度超标', '甲醛浓度过高,注意及时处理', '未确认', null, null, null);
INSERT INTO `smart_warning` VALUES ('17', '2019-11-26 16:57:04', '温度', '数据异常', '炎热', '温度超过35度高温警告', '未确认', null, null, null);
INSERT INTO `smart_warning` VALUES ('16', '2019-11-26 16:56:05', '温度', '数据异常', '炎热', '温度超过35度高温警告', '已确认', '张三', '已确认报警消息', '2019-11-29 10:16:47');
INSERT INTO `smart_warning` VALUES ('26', '2019-11-29 15:56:17', '有机物', '数据异常', '有机物浓度超标', '有机物浓度过高,注意及时通风处理', '未确认', null, null, null);
INSERT INTO `smart_warning` VALUES ('27', '2019-11-29 15:56:47', '有机物', '数据异常', '有机物浓度超标', '有机物浓度过高,注意及时通风处理', '未确认', null, null, null);
INSERT INTO `smart_warning` VALUES ('28', '2019-11-29 15:57:17', '有机物', '数据异常', '有机物浓度超标', '有机物浓度过高,注意及时通风处理', '未确认', null, null, null);
INSERT INTO `smart_warning` VALUES ('29', '2019-11-29 15:57:47', '有机物', '数据异常', '有机物浓度超标', '有机物浓度过高,注意及时通风处理', '未确认', null, null, null);
INSERT INTO `smart_warning` VALUES ('30', '2019-12-03 09:25:59', '有机物', '数据异常', '有机物浓度超标', '有机物浓度过高,注意及时通风处理', '未确认', null, null, null);
INSERT INTO `smart_warning` VALUES ('31', '2019-12-03 09:25:59', 'PM2.5', '数据异常', '轻度污染', 'PM2.5含量超标,请注意!', '未确认', null, null, null);
INSERT INTO `smart_warning` VALUES ('32', '2019-12-03 09:25:59', '空气质量指数', '数据异常', '轻度污染', '空气质量轻度污染,请注意!', '未确认', null, null, null);
INSERT INTO `smart_warning` VALUES ('33', '2019-12-03 09:26:29', '有机物', '数据异常', '有机物浓度超标', '有机物浓度过高,注意及时通风处理', '未确认', null, null, null);
INSERT INTO `smart_warning` VALUES ('34', '2019-12-03 09:26:29', 'PM2.5', '数据异常', '轻度污染', 'PM2.5含量超标,请注意!', '未确认', null, null, null);
INSERT INTO `smart_warning` VALUES ('35', '2019-12-03 09:26:29', '空气质量指数', '数据异常', '轻度污染', '空气质量轻度污染,请注意!', '未确认', null, null, null);
