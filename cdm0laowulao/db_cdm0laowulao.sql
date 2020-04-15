/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : db_cdm0laowulao

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2020-04-13 18:23:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(255) DEFAULT NULL,
  `adminPassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for `t_gonggao`
-- ----------------------------
DROP TABLE IF EXISTS `t_gonggao`;
CREATE TABLE `t_gonggao` (
  `gonggaoId` int(11) NOT NULL AUTO_INCREMENT,
  `gonggaoName` varchar(255) DEFAULT NULL,
  `gonggaoMark` varchar(20000) DEFAULT NULL,
  `gonggaoImg` varchar(255) DEFAULT NULL,
  `gonggaoImgName` varchar(255) DEFAULT NULL,
  `gonggaoDate` datetime DEFAULT NULL,
  `ggtypeId` int(11) DEFAULT NULL,
  `ggtypeName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gonggaoId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_gonggao
-- ----------------------------
INSERT INTO `t_gonggao` VALUES ('1', '关于我们', '<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">关于我们</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">关于我们</span>关于我们<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">关于我们</span>关于我们关于我们<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">关于我们</span>关于我们<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">关于我们</span>关于我们<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">关于我们</span>关于我们<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">关于我们</span>关于我们<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">关于我们</span>关于我们<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">关于我们</span>关于我们<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">关于我们</span>关于我们<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">关于我们</span>关于我们<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">关于我们</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\"><img src=\"/cdh9zhaopin/attached/image/20191228/20191228191535_694.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>', null, null, '2020-04-03 12:31:15', '0', null);
INSERT INTO `t_gonggao` VALUES ('2', '联系我们', '<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">联系我们</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">联系我们</span>联系我们<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">联系我们</span>联系我们<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">联系我们</span>联系我们<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">联系我们</span>联系我们<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">联系我们</span>联系我们<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">联系我们</span>联系我们<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">联系我们</span>联系我们<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">联系我们</span>联系我们<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">联系我们</span>联系我们<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">联系我们</span>联系我们\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/cdh9zhaopin/attached/image/20191228/20191228191535_694.jpg\" alt=\"\" />\r\n</p>', null, null, '2020-04-03 12:31:15', '0', null);
INSERT INTO `t_gonggao` VALUES ('3', '资讯信息1', '<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\"><img src=\"/cdh9zhaopin/attached/image/20191228/20191228191840_194.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>', null, null, '2020-04-03 12:31:15', '1', null);
INSERT INTO `t_gonggao` VALUES ('4', '资讯信息2', '<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\"><img src=\"/cdh9zhaopin/attached/image/20191228/20191228191840_194.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>', null, null, '2020-04-03 12:31:15', '1', null);
INSERT INTO `t_gonggao` VALUES ('5', '资讯信息3', '<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\"><img src=\"/cdh9zhaopin/attached/image/20191228/20191228191840_194.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>', null, null, '2020-04-03 12:31:15', '1', null);
INSERT INTO `t_gonggao` VALUES ('6', '资讯信息4', '<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\"><img src=\"/cdh9zhaopin/attached/image/20191228/20191228191840_194.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>', null, null, '2020-04-03 12:31:15', '1', null);
INSERT INTO `t_gonggao` VALUES ('7', '资讯信息5', '<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\"><img src=\"/cdh9zhaopin/attached/image/20191228/20191228191840_194.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>', null, null, '2020-04-03 12:31:15', '1', null);
INSERT INTO `t_gonggao` VALUES ('8', '资讯信息6', '<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\"><img src=\"/cdh9zhaopin/attached/image/20191228/20191228191840_194.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>', null, null, '2020-04-03 12:31:15', '1', null);
INSERT INTO `t_gonggao` VALUES ('9', '资讯信息7', '<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/cdh9zhaopin/attached/image/20191228/20191228195915_530.jpg\" alt=\"\" />\r\n</p>', null, null, '2020-04-03 12:31:15', '1', null);
INSERT INTO `t_gonggao` VALUES ('13', '资讯信息8', '<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">资讯信息</span>资讯信息', null, null, '2020-04-13 18:22:46', '1', null);

-- ----------------------------
-- Table structure for `t_jcbiaoti`
-- ----------------------------
DROP TABLE IF EXISTS `t_jcbiaoti`;
CREATE TABLE `t_jcbiaoti` (
  `jcbiaotiId` int(11) NOT NULL AUTO_INCREMENT,
  `jcbiaotiName` varchar(255) DEFAULT NULL COMMENT '汉字',
  `jcbiaotiNeirong` varchar(255) DEFAULT NULL COMMENT 'url',
  `jcbiaotiMark` varchar(255) DEFAULT NULL,
  `jcbiaotiMark1` varchar(255) DEFAULT NULL,
  `jcbiaotiMark2` varchar(255) DEFAULT NULL,
  `jcbiaotiPaixu` int(11) DEFAULT NULL,
  `jcbiaotiType` int(11) DEFAULT NULL COMMENT '0网页导航1admin导航2user导航3yonghu导航4juese导航',
  `jcbiaotiType1` int(11) DEFAULT NULL,
  `jcbiaotiType2` int(11) DEFAULT NULL,
  PRIMARY KEY (`jcbiaotiId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_jcbiaoti
-- ----------------------------
INSERT INTO `t_jcbiaoti` VALUES ('1', '网站信息', null, null, null, null, '1', '1', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('2', '用人方信息', null, null, null, null, '2', '1', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('3', '用户信息', null, null, null, null, '3', '1', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('4', '职位信息', null, null, null, null, '4', '1', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('7', '职位信息', null, null, null, null, '2', '2', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('9', '应聘信息', null, null, null, null, '1', '3', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('11', '求职信息', null, null, null, null, '5', '1', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('12', '求职信息', null, null, null, null, '5', '3', '0', null);

-- ----------------------------
-- Table structure for `t_jcdaohang`
-- ----------------------------
DROP TABLE IF EXISTS `t_jcdaohang`;
CREATE TABLE `t_jcdaohang` (
  `jcdaohangId` int(11) NOT NULL AUTO_INCREMENT,
  `jcdaohangName` varchar(255) DEFAULT NULL COMMENT '汉字',
  `jcdaohangNeirong` varchar(255) DEFAULT NULL COMMENT 'url',
  `jcdaohangMark` varchar(255) DEFAULT NULL,
  `jcdaohangMark1` varchar(255) DEFAULT NULL,
  `jcdaohangMark2` varchar(255) DEFAULT NULL,
  `jcdaohangPaixu` int(11) DEFAULT NULL,
  `jcdaohangType` int(11) DEFAULT NULL COMMENT '0网页导航1admin导航2user导航3yonghu导航4juese导航',
  `jcdaohangType1` int(11) DEFAULT NULL,
  `jcdaohangType2` int(11) DEFAULT NULL,
  `jcbiaotiId` int(11) DEFAULT NULL,
  `jcbiaotiName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`jcdaohangId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_jcdaohang
-- ----------------------------
INSERT INTO `t_jcdaohang` VALUES ('1', '关于我们', 'gonggao1.jsp', null, null, null, '1', '1', '0', null, '1', null);
INSERT INTO `t_jcdaohang` VALUES ('2', '联系我们', 'gonggao2.jsp', null, null, null, '2', '1', '0', null, '1', null);
INSERT INTO `t_jcdaohang` VALUES ('3', '资讯信息', 'gonggao3.jsp', null, null, null, '3', '1', '0', null, '1', null);
INSERT INTO `t_jcdaohang` VALUES ('4', '用人方信息', 'user.jsp', null, null, null, '1', '1', '0', null, '2', null);
INSERT INTO `t_jcdaohang` VALUES ('5', '用户信息', 'yonghu.jsp', null, null, null, '1', '1', '0', null, '3', null);
INSERT INTO `t_jcdaohang` VALUES ('6', '职位类型', 'sjleixing.jsp', null, null, null, '1', '1', '0', null, '4', null);
INSERT INTO `t_jcdaohang` VALUES ('7', '职位信息', 'shuju.jsp', null, null, null, '2', '1', '0', null, '4', null);
INSERT INTO `t_jcdaohang` VALUES ('10', '职位信息', 'shuju.jsp', null, null, null, '1', '2', '0', null, '7', null);
INSERT INTO `t_jcdaohang` VALUES ('11', '应聘信息', 'sjshaochu.jsp', null, null, null, '2', '2', '0', null, '7', null);
INSERT INTO `t_jcdaohang` VALUES ('13', '应聘信息', 'sjshaochu.jsp', null, null, null, '1', '3', '0', null, '9', null);
INSERT INTO `t_jcdaohang` VALUES ('14', '评论信息', 'sjpinglun.jsp', null, null, null, '2', '3', '0', null, '9', null);
INSERT INTO `t_jcdaohang` VALUES ('17', '求职信息', 'sjduochu.jsp', null, null, null, '1', '1', '0', null, '11', '应聘信息');
INSERT INTO `t_jcdaohang` VALUES ('18', '求职信息', 'sjduochu.jsp', null, null, null, '1', '3', '0', null, '12', '应聘信息');

-- ----------------------------
-- Table structure for `t_jcpeizhi`
-- ----------------------------
DROP TABLE IF EXISTS `t_jcpeizhi`;
CREATE TABLE `t_jcpeizhi` (
  `jcpeizhiId` int(11) NOT NULL AUTO_INCREMENT,
  `jcpeizhiName` varchar(255) DEFAULT NULL,
  `jcpeizhiNeirong` varchar(255) DEFAULT NULL,
  `jcpeizhiMark` varchar(255) DEFAULT NULL,
  `bumenBieming` varchar(255) DEFAULT NULL,
  `buyuanBieming` varchar(255) DEFAULT NULL,
  `buzhiBieming` varchar(255) DEFAULT NULL,
  `userBieming` varchar(255) DEFAULT NULL COMMENT 'userBieming',
  `uxtypeBieming` varchar(255) DEFAULT NULL,
  `uxinxiBieming` varchar(255) DEFAULT NULL,
  `uyijianBieming` varchar(255) DEFAULT NULL,
  `roleBieming` varchar(255) DEFAULT NULL,
  `byumenBieming` varchar(255) DEFAULT NULL,
  `byuyuanBieming` varchar(255) DEFAULT NULL,
  `byuzhiBieming` varchar(255) DEFAULT NULL,
  `yonghuBieming` varchar(255) DEFAULT NULL COMMENT 'yonghuBieming',
  `yxtypeBieming` varchar(255) DEFAULT NULL,
  `yxinxiBieming` varchar(255) DEFAULT NULL,
  `yyijianBieming` varchar(255) DEFAULT NULL,
  `yhroleBieming` varchar(255) DEFAULT NULL,
  `ggtypeBieming` varchar(255) DEFAULT NULL,
  `gonggaoBieming` varchar(255) DEFAULT NULL,
  `ggpinglunBieming` varchar(255) DEFAULT NULL,
  `shujuBieming` varchar(255) DEFAULT NULL,
  `sjduochuBieming` varchar(255) DEFAULT NULL,
  `sjjianchuBieming` varchar(255) DEFAULT NULL,
  `sjlaiyuanBieming` varchar(255) DEFAULT NULL,
  `sjleixingBieming` varchar(255) DEFAULT NULL,
  `sjpinglunBieming` varchar(255) DEFAULT NULL,
  `sjqitaBieming` varchar(255) DEFAULT NULL,
  `sjshaochuBieming` varchar(255) DEFAULT NULL,
  `sjxingtaiBieming` varchar(255) DEFAULT NULL,
  `jcpeizhiType` int(11) DEFAULT NULL,
  `jcpeizhiType1` int(11) DEFAULT NULL,
  `jcpeizhiType2` int(11) DEFAULT NULL,
  PRIMARY KEY (`jcpeizhiId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_jcpeizhi
-- ----------------------------
INSERT INTO `t_jcpeizhi` VALUES ('1', '老吾老幼吾幼', null, null, null, null, null, '用人方', null, null, null, null, null, null, null, '用户', null, null, null, null, null, '资讯', null, '职位', '求职', null, null, '类型', '评论', null, '应聘', null, null, null, null);

-- ----------------------------
-- Table structure for `t_rizhi`
-- ----------------------------
DROP TABLE IF EXISTS `t_rizhi`;
CREATE TABLE `t_rizhi` (
  `rizhiId` int(11) NOT NULL AUTO_INCREMENT,
  `rizhiName` varchar(255) NOT NULL,
  `dengluIp` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`rizhiId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_rizhi
-- ----------------------------
INSERT INTO `t_rizhi` VALUES ('1', 'yonghu1', '127.0.0.1', '2020-04-13 18:11:27');
INSERT INTO `t_rizhi` VALUES ('2', 'yonghu1', '127.0.0.1', '2020-04-13 18:12:43');
INSERT INTO `t_rizhi` VALUES ('3', 'yonghu2', '127.0.0.1', '2020-04-13 18:18:59');
INSERT INTO `t_rizhi` VALUES ('4', 'user1', '127.0.0.1', '2020-04-13 18:20:24');
INSERT INTO `t_rizhi` VALUES ('5', 'admin', '127.0.0.1', '2020-04-13 18:21:11');
INSERT INTO `t_rizhi` VALUES ('6', 'admin', '127.0.0.1', '2020-04-13 18:22:32');

-- ----------------------------
-- Table structure for `t_shuju`
-- ----------------------------
DROP TABLE IF EXISTS `t_shuju`;
CREATE TABLE `t_shuju` (
  `shujuId` int(11) NOT NULL AUTO_INCREMENT,
  `shujuName` varchar(255) DEFAULT NULL,
  `shujuMark` varchar(2550) DEFAULT NULL,
  `shujuMark1` varchar(2550) DEFAULT NULL,
  `shujuMark2` varchar(2550) DEFAULT NULL,
  `shujuMark3` varchar(2550) DEFAULT NULL,
  `shujuDate` datetime DEFAULT NULL,
  `shujuDate1` datetime DEFAULT NULL,
  `shujuZong` int(11) DEFAULT NULL,
  `shujuZong1` int(11) DEFAULT NULL,
  `shujuZong2` int(11) DEFAULT NULL,
  `shujuDouble` double DEFAULT NULL,
  `shujuDouble1` double DEFAULT NULL,
  `shujuDouble2` double DEFAULT NULL,
  `shujuDouble3` double DEFAULT NULL,
  `shujuDouble4` double DEFAULT NULL,
  `shujuType` int(11) DEFAULT NULL,
  `shujuType1` int(11) DEFAULT NULL,
  `shujuType2` int(11) DEFAULT NULL,
  `shujuImg` varchar(255) DEFAULT NULL,
  `shujuImgName` varchar(255) DEFAULT NULL,
  `sjleixingId` int(11) DEFAULT NULL,
  `sjleixingName` varchar(255) DEFAULT NULL,
  `sjxingtaiId` int(11) DEFAULT NULL,
  `sjxingtaiName` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `bumenId` int(11) DEFAULT NULL,
  `bumenName` varchar(255) DEFAULT NULL,
  `buyuanId` int(11) DEFAULT NULL,
  `buyuanName` varchar(255) DEFAULT NULL,
  `yonghuId` int(11) DEFAULT NULL,
  `yonghuName` varchar(255) DEFAULT NULL,
  `byumenId` int(11) DEFAULT NULL,
  `byumenName` varchar(255) DEFAULT NULL,
  `byuyuanId` int(11) DEFAULT NULL,
  `byuyuanName` varchar(255) DEFAULT NULL,
  `buzhiId` int(11) DEFAULT NULL,
  `buzhiName` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  `byuzhiId` int(11) DEFAULT NULL,
  `byuzhiName` varchar(255) DEFAULT NULL,
  `yhroleId` int(11) DEFAULT NULL,
  `yhroleName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`shujuId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_shuju
-- ----------------------------
INSERT INTO `t_shuju` VALUES ('1', '职位信息1', '<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\"><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span><br />\r\n</span>\r\n</p>', '职位信息', '职位信息', null, '2020-04-03 12:31:15', null, '1', null, null, '10000', null, null, null, null, '0', null, null, '/file/0.jpg', '0.jpg', '1', '照顾老人', null, null, '1', '用人方1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_shuju` VALUES ('2', '职位信息2', '<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\"><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span><br />\r\n</span>\r\n</p>', '职位信息', '职位信息', null, '2020-04-03 12:31:15', null, '3', null, null, '10000', null, null, null, null, '0', null, null, '/file/1.jpg', '1.jpg', '2', '照顾儿童', null, null, '1', '用人方1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_shuju` VALUES ('3', '职位信息3', '<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\"><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span><br />\r\n</span>\r\n</p>', '职位信息', '职位信息', null, '2020-04-03 12:31:15', null, '3', null, null, '10000', null, null, null, null, '0', null, null, '/file/2.jpg', '2.jpg', '3', '做家务', null, null, '1', '用人方1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_shuju` VALUES ('4', '职位信息4', '<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\"><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span><br />\r\n</span>\r\n</p>', '职位信息', '职位信息', null, '2020-04-03 12:31:15', null, '3', null, null, '10000', null, null, null, null, '0', null, null, '/file/3.jpg', '3.jpg', '4', '月嫂', null, null, '1', '用人方1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_shuju` VALUES ('5', '职位信息5', '<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\"><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span><br />\r\n</span>\r\n</p>', '职位信息', '职位信息', null, '2020-04-03 12:31:15', null, '3', null, null, '10000', null, null, null, null, '0', null, null, '/file/4.jpg', '4.jpg', '1', '照顾老人', null, null, '1', '用人方1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_shuju` VALUES ('6', '职位信息6', '<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\"><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span><br />\r\n</span>\r\n</p>', '职位信息', '职位信息', null, '2020-04-03 12:31:15', null, '3', null, null, '10000', null, null, null, null, '0', null, null, '/file/5.jpg', '5.jpg', '2', '照顾儿童', null, null, '1', '用人方1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_shuju` VALUES ('7', '职位信息7', '<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\"><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span><br />\r\n</span>\r\n</p>', '职位信息', '职位信息', null, '2020-04-03 12:31:15', null, '3', null, null, '10000', null, null, null, null, '0', null, null, '/file/6.jpg', '6.jpg', '3', '做家务', null, null, '1', '用人方1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_shuju` VALUES ('8', '职位信息8', '<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\"><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span><br />\r\n</span>\r\n</p>', '职位信息', '职位信息', null, '2020-04-03 12:31:15', null, '2', null, null, '10000', null, null, null, null, '0', null, null, '/file/7.jpg', '7.jpg', '4', '月嫂', null, null, '1', '用人方1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_shuju` VALUES ('13', '职位信息9', '<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>职位信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">职位信息</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\"><img src=\"/cdm0laowulao/upload/image/20200413/20200413182047_264.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>', '职位信息', '职位信息', null, '2020-04-13 18:20:48', null, '1', null, null, '100', null, null, null, null, '0', null, null, '/file/27.jpg', '27.jpg', '1', '照顾老人', null, null, '1', 'user1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_sjduochu`
-- ----------------------------
DROP TABLE IF EXISTS `t_sjduochu`;
CREATE TABLE `t_sjduochu` (
  `sjduochuId` int(11) NOT NULL AUTO_INCREMENT,
  `sjduochuName` varchar(255) DEFAULT NULL,
  `sjduochuMark` varchar(2550) DEFAULT NULL,
  `sjduochuMark1` varchar(2550) DEFAULT NULL,
  `sjduochuMark2` varchar(2550) DEFAULT NULL,
  `sjduochuMark3` varchar(2550) DEFAULT NULL,
  `sjduochuDate` datetime DEFAULT NULL,
  `sjduochuDate1` datetime DEFAULT NULL,
  `sjduochuZong` int(11) DEFAULT NULL,
  `sjduochuZong1` int(11) DEFAULT NULL,
  `sjduochuZong2` int(11) DEFAULT NULL,
  `sjduochuDouble` double DEFAULT NULL,
  `sjduochuDouble1` double DEFAULT NULL,
  `sjduochuDouble2` double DEFAULT NULL,
  `sjduochuType` int(11) DEFAULT NULL,
  `sjduochuType1` int(11) DEFAULT NULL,
  `sjduochuType2` int(11) DEFAULT NULL,
  `sjqitaId` int(11) DEFAULT NULL,
  `sjqitaName` varchar(255) DEFAULT NULL,
  `sjlaiyuanId` int(11) DEFAULT NULL,
  `sjlaiyuanName` varchar(255) DEFAULT NULL,
  `sjduochuImg` varchar(255) DEFAULT NULL,
  `sjduochuImgName` varchar(255) DEFAULT NULL,
  `shujuId` int(11) DEFAULT NULL,
  `shujuName` varchar(255) DEFAULT NULL,
  `sjleixingId` int(11) DEFAULT NULL,
  `sjleixingName` varchar(255) DEFAULT NULL,
  `sjxingtaiId` int(11) DEFAULT NULL,
  `sjxingtaiName` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `bumenId` int(11) DEFAULT NULL,
  `bumenName` varchar(255) DEFAULT NULL,
  `buyuanId` int(11) DEFAULT NULL,
  `buyuanName` varchar(255) DEFAULT NULL,
  `yonghuId` int(11) DEFAULT NULL,
  `yonghuName` varchar(255) DEFAULT NULL,
  `byumenId` int(11) DEFAULT NULL,
  `byumenName` varchar(255) DEFAULT NULL,
  `byuyuanId` int(11) DEFAULT NULL,
  `byuyuanName` varchar(255) DEFAULT NULL,
  `buzhiId` int(11) DEFAULT NULL,
  `buzhiName` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  `byuzhiId` int(11) DEFAULT NULL,
  `byuzhiName` varchar(255) DEFAULT NULL,
  `yhroleId` int(11) DEFAULT NULL,
  `yhroleName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sjduochuId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sjduochu
-- ----------------------------
INSERT INTO `t_sjduochu` VALUES ('1', '求职信息1', '<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\"><img src=\"/cdm0laowulao/upload/image/20200413/20200413181407_966.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>', '13012345678', null, null, '2020-04-13 18:14:08', null, null, null, null, '100', null, null, '0', null, null, null, null, null, null, null, null, null, null, '1', '照顾老人', null, null, null, null, null, null, null, null, '1', 'yonghu1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_sjduochu` VALUES ('2', '求职信息2', '<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\"><img src=\"/cdm0laowulao/upload/image/20200413/20200413181407_966.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>', '13012345678', null, null, '2020-04-13 18:15:22', null, null, null, null, '100', null, null, '0', null, null, null, null, null, null, null, null, null, null, '2', '照顾儿童', null, null, null, null, null, null, null, null, '1', 'yonghu1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_sjduochu` VALUES ('3', '求职信息3', '<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\"><img src=\"/cdm0laowulao/upload/image/20200413/20200413181407_966.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>', '13012345678', null, null, '2020-04-13 18:15:27', null, null, null, null, '100', null, null, '0', null, null, null, null, null, null, null, null, null, null, '3', '做家务', null, null, null, null, null, null, null, null, '1', 'yonghu1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_sjduochu` VALUES ('4', '求职信息4', '<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>求职信息<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职信息</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\"><img src=\"/cdm0laowulao/upload/image/20200413/20200413181407_966.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>', '13012345678', null, null, '2020-04-13 18:15:33', null, null, null, null, '100', null, null, '0', null, null, null, null, null, null, null, null, null, null, '4', '月嫂', null, null, null, null, null, null, null, null, '1', 'yonghu1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_sjduochu` VALUES ('5', '求职求职1', '<p>\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职</span><span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职</span>求职<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职</span>求职<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职</span>求职<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职</span>求职<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职</span>求职<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职</span>求职<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职</span>求职<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职</span>求职<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职</span>求职<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职</span>求职<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职</span>求职<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职</span>求职<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职</span>求职<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职</span>求职<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职</span>求职<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\">求职</span>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"color:#0E2D5F;font-family:&quot;font-weight:700;\"><img src=\"/cdm0laowulao/upload/image/20200413/20200413182007_87.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>', '13012345678', null, null, '2020-04-13 18:20:07', null, null, null, null, '100000', null, null, '0', null, null, null, null, null, null, null, null, null, null, '1', '照顾老人', null, null, null, null, null, null, null, null, '2', 'yonghu2', null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_sjleixing`
-- ----------------------------
DROP TABLE IF EXISTS `t_sjleixing`;
CREATE TABLE `t_sjleixing` (
  `sjleixingId` int(11) NOT NULL AUTO_INCREMENT,
  `sjleixingName` varchar(255) DEFAULT NULL,
  `sjleixingMark` varchar(255) DEFAULT NULL,
  `sjleixingMark1` varchar(255) DEFAULT NULL,
  `sjleixingMark2` varchar(255) DEFAULT NULL,
  `sjleixingPhone` varchar(255) DEFAULT NULL,
  `sjleixingDizhi` varchar(255) DEFAULT NULL,
  `sjleixingDate` datetime DEFAULT NULL,
  `sjleixingDate1` datetime DEFAULT NULL,
  `sjleixingType` int(11) DEFAULT NULL,
  `sjleixingType1` int(11) DEFAULT NULL,
  `sjleixingDouble` double DEFAULT NULL,
  `sjleixingDouble1` double DEFAULT NULL,
  PRIMARY KEY (`sjleixingId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sjleixing
-- ----------------------------
INSERT INTO `t_sjleixing` VALUES ('1', '照顾老人', '照顾老人', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_sjleixing` VALUES ('2', '照顾儿童', '照顾儿童', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_sjleixing` VALUES ('3', '做家务', '做家务', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_sjleixing` VALUES ('4', '月嫂', '月嫂', null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_sjpinglun`
-- ----------------------------
DROP TABLE IF EXISTS `t_sjpinglun`;
CREATE TABLE `t_sjpinglun` (
  `sjpinglunId` int(11) NOT NULL AUTO_INCREMENT,
  `sjpinglunName` varchar(2550) DEFAULT NULL,
  `sjpinglunMark` varchar(2550) DEFAULT NULL,
  `sjpinglunDate` datetime DEFAULT NULL,
  `sjpinglunDate1` datetime DEFAULT NULL,
  `sjpinglunType` int(11) DEFAULT NULL,
  `sjpinglunType1` int(11) DEFAULT NULL,
  `sjpinglunImg` varchar(255) DEFAULT NULL,
  `sjpinglunImgName` varchar(255) DEFAULT NULL,
  `shujuId` int(11) DEFAULT NULL,
  `shujuName` varchar(255) DEFAULT NULL,
  `sjleixingId` int(11) DEFAULT NULL,
  `sjleixingName` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `bumenId` int(11) DEFAULT NULL,
  `bumenName` varchar(255) DEFAULT NULL,
  `buyuanId` int(11) DEFAULT NULL,
  `buyuanName` varchar(255) DEFAULT NULL,
  `yonghuId` int(11) DEFAULT NULL,
  `yonghuName` varchar(255) DEFAULT NULL,
  `byumenId` int(11) DEFAULT NULL,
  `byumenName` varchar(255) DEFAULT NULL,
  `byuyuanId` int(11) DEFAULT NULL,
  `byuyuanName` varchar(255) DEFAULT NULL,
  `buzhiId` int(11) DEFAULT NULL,
  `buzhiName` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  `byuzhiId` int(11) DEFAULT NULL,
  `byuzhiName` varchar(255) DEFAULT NULL,
  `yhroleId` int(11) DEFAULT NULL,
  `yhroleName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sjpinglunId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sjpinglun
-- ----------------------------
INSERT INTO `t_sjpinglun` VALUES ('1', '阿斯顿发生大幅撒旦发十大发达省份', null, '2020-04-13 18:19:39', null, '0', null, null, null, '8', '职位信息8', '4', '月嫂', '1', '用人方1', null, null, null, null, '2', 'yonghu2', null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_sjshaochu`
-- ----------------------------
DROP TABLE IF EXISTS `t_sjshaochu`;
CREATE TABLE `t_sjshaochu` (
  `sjshaochuId` int(11) NOT NULL AUTO_INCREMENT,
  `sjshaochuName` varchar(255) DEFAULT NULL,
  `sjshaochuMark` varchar(2550) DEFAULT NULL,
  `sjshaochuMark1` varchar(2550) DEFAULT NULL,
  `sjshaochuMark2` varchar(2550) DEFAULT NULL,
  `sjshaochuMark3` varchar(2550) DEFAULT NULL,
  `sjshaochuDate` datetime DEFAULT NULL,
  `sjshaochuDate1` datetime DEFAULT NULL,
  `sjshaochuZong` int(11) DEFAULT NULL,
  `sjshaochuZong1` int(11) DEFAULT NULL,
  `sjshaochuZong2` int(11) DEFAULT NULL,
  `sjshaochuDouble` double DEFAULT NULL,
  `sjshaochuDouble1` double DEFAULT NULL,
  `sjshaochuDouble2` double DEFAULT NULL,
  `sjshaochuType` int(11) DEFAULT NULL,
  `sjshaochuType1` int(11) DEFAULT NULL,
  `sjshaochuType2` int(11) DEFAULT NULL,
  `sjqitaId` int(11) DEFAULT NULL,
  `sjqitaName` varchar(255) DEFAULT NULL,
  `sjlaiyuanId` int(11) DEFAULT NULL,
  `sjlaiyuanName` varchar(255) DEFAULT NULL,
  `sjshaochuImg` varchar(255) DEFAULT NULL,
  `sjshaochuImgName` varchar(255) DEFAULT NULL,
  `shujuId` int(11) DEFAULT NULL,
  `shujuName` varchar(255) DEFAULT NULL,
  `sjleixingId` int(11) DEFAULT NULL,
  `sjleixingName` varchar(255) DEFAULT NULL,
  `sjxingtaiId` int(11) DEFAULT NULL,
  `sjxingtaiName` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `bumenId` int(11) DEFAULT NULL,
  `bumenName` varchar(255) DEFAULT NULL,
  `buyuanId` int(11) DEFAULT NULL,
  `buyuanName` varchar(255) DEFAULT NULL,
  `yonghuId` int(11) DEFAULT NULL,
  `yonghuName` varchar(255) DEFAULT NULL,
  `byumenId` int(11) DEFAULT NULL,
  `byumenName` varchar(255) DEFAULT NULL,
  `byuyuanId` int(11) DEFAULT NULL,
  `byuyuanName` varchar(255) DEFAULT NULL,
  `buzhiId` int(11) DEFAULT NULL,
  `buzhiName` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  `byuzhiId` int(11) DEFAULT NULL,
  `byuzhiName` varchar(255) DEFAULT NULL,
  `yhroleId` int(11) DEFAULT NULL,
  `yhroleName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sjshaochuId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sjshaochu
-- ----------------------------
INSERT INTO `t_sjshaochu` VALUES ('1', 'yonghu2', null, null, null, null, '2020-04-13 18:19:26', null, null, null, null, null, null, null, '3', null, null, null, null, null, null, '/file/shangchuan -1.doc', 'shangchuan -1.doc', '8', '职位信息8', '4', '月嫂', null, null, '1', '用人方1', null, null, null, null, '2', 'yonghu2', null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `userPassword` varchar(255) DEFAULT NULL,
  `userXingming` varchar(255) DEFAULT NULL,
  `userSex` int(11) DEFAULT NULL,
  `userAge` int(11) DEFAULT NULL,
  `userMinzu` varchar(255) DEFAULT NULL,
  `userPhone` varchar(255) DEFAULT NULL,
  `userMark` varchar(2550) DEFAULT NULL,
  `userMark1` varchar(255) DEFAULT NULL,
  `userMark2` varchar(255) DEFAULT NULL,
  `userMark3` varchar(255) DEFAULT NULL,
  `userMark4` varchar(255) DEFAULT NULL,
  `userDate` datetime DEFAULT NULL,
  `userDate1` datetime DEFAULT NULL,
  `userDate2` datetime DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  `userType1` int(11) DEFAULT NULL,
  `userType2` int(11) DEFAULT NULL,
  `userDouble` double DEFAULT NULL,
  `userDouble1` double DEFAULT NULL,
  `userDouble2` double DEFAULT NULL,
  `userZong` int(11) DEFAULT NULL,
  `userZong1` int(11) DEFAULT NULL,
  `userZong2` int(11) DEFAULT NULL,
  `userImg` varchar(255) DEFAULT NULL,
  `userImgName` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  `bumenId` int(11) DEFAULT NULL,
  `bumenName` varchar(255) DEFAULT NULL,
  `buyuanId` int(11) DEFAULT NULL,
  `buyuanName` varchar(255) DEFAULT NULL,
  `buzhiId` int(11) DEFAULT NULL,
  `buzhiName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'user1', 'user1', 'user1', '0', '22', null, '13012345678', null, '用人方1', 'user1', null, null, '2020-04-03 12:31:15', null, null, '0', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_yonghu`
-- ----------------------------
DROP TABLE IF EXISTS `t_yonghu`;
CREATE TABLE `t_yonghu` (
  `yonghuId` int(11) NOT NULL AUTO_INCREMENT,
  `yonghuName` varchar(255) DEFAULT NULL,
  `yonghuPassword` varchar(255) DEFAULT NULL,
  `yonghuXingming` varchar(255) DEFAULT NULL,
  `yonghuSex` int(11) DEFAULT NULL,
  `yonghuAge` int(11) DEFAULT NULL,
  `yonghuPhone` varchar(255) DEFAULT NULL,
  `yonghuMinzu` varchar(255) DEFAULT NULL,
  `yonghuMark` varchar(255) DEFAULT NULL,
  `yonghuMark1` varchar(255) DEFAULT NULL,
  `yonghuMark2` varchar(255) DEFAULT NULL,
  `yonghuMark3` varchar(255) DEFAULT NULL,
  `yonghuMark4` varchar(255) DEFAULT NULL,
  `yonghuDate` datetime DEFAULT NULL,
  `yonghuDate1` datetime DEFAULT NULL,
  `yonghuDate2` datetime DEFAULT NULL,
  `yonghuType` int(11) DEFAULT NULL,
  `yonghuType1` int(11) DEFAULT NULL,
  `yonghuType2` int(11) DEFAULT NULL,
  `yonghuDouble` double DEFAULT NULL,
  `yonghuDouble1` double DEFAULT NULL,
  `yonghuDouble2` double DEFAULT NULL,
  `yonghuZong` int(11) DEFAULT NULL,
  `yonghuZong1` int(11) DEFAULT NULL,
  `yonghuZong2` int(11) DEFAULT NULL,
  `yonghuImg` varchar(255) DEFAULT NULL,
  `yonghuImgName` varchar(255) DEFAULT NULL,
  `yhroleId` int(11) DEFAULT NULL,
  `yhroleName` varchar(255) DEFAULT NULL,
  `byuzhiId` int(11) DEFAULT NULL,
  `byuzhiName` varchar(255) DEFAULT NULL,
  `byumenId` int(11) DEFAULT NULL,
  `byumenName` varchar(255) DEFAULT NULL,
  `byuyuanId` int(11) DEFAULT NULL,
  `byuyuanName` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `bumenId` int(11) DEFAULT NULL,
  `bumenName` varchar(255) DEFAULT NULL,
  `buyuanId` int(11) DEFAULT NULL,
  `buyuanName` varchar(255) DEFAULT NULL,
  `buzhiId` int(11) DEFAULT NULL,
  `buzhiName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`yonghuId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_yonghu
-- ----------------------------
INSERT INTO `t_yonghu` VALUES ('1', 'yonghu1', 'yonghu1', 'yonghu1', '0', '22', '13012345678', null, null, null, null, 'yonghu1', 'yonghu1', '2020-04-13 18:11:23', null, null, '0', '0', null, '0', '0', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_yonghu` VALUES ('2', 'yonghu2', 'yonghu2', 'yonghu2', '0', '22', '13012345678', null, null, null, null, 'yonghu2', 'yonghu2', '2020-04-13 18:18:56', null, null, '1', '0', null, '0', '0', null, '0', null, null, '/file/shangchuan -1.doc', 'shangchuan -1.doc', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
