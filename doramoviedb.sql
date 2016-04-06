/*
Navicat MySQL Data Transfer

Source Server         : .
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : doramoviedb

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2016-03-17 10:27:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for about
-- ----------------------------
DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `aboutMe` longtext,
  `contact` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of about
-- ----------------------------

-- ----------------------------
-- Table structure for adminmanage
-- ----------------------------
DROP TABLE IF EXISTS `adminmanage`;
CREATE TABLE `adminmanage` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `isPast` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adminmanage
-- ----------------------------
INSERT INTO `adminmanage` VALUES ('1', 'admin', '21232F297A57A5A743894A0E4A801FC3', '2016-03-16 23:21:11', '', '1');

-- ----------------------------
-- Table structure for articleclass
-- ----------------------------
DROP TABLE IF EXISTS `articleclass`;
CREATE TABLE `articleclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `paixu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of articleclass
-- ----------------------------
INSERT INTO `articleclass` VALUES ('1', '0', '动作', '1');
INSERT INTO `articleclass` VALUES ('2', '0', '恐怖', '5');
INSERT INTO `articleclass` VALUES ('3', '0', '科幻', '4');
INSERT INTO `articleclass` VALUES ('4', '0', '喜剧', '3');
INSERT INTO `articleclass` VALUES ('5', '0', '限制', '99');
INSERT INTO `articleclass` VALUES ('7', '0', '爱情', '2');
INSERT INTO `articleclass` VALUES ('8', '0', '动画', '6');

-- ----------------------------
-- Table structure for friendsite
-- ----------------------------
DROP TABLE IF EXISTS `friendsite`;
CREATE TABLE `friendsite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(10) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `isPast` int(11) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friendsite
-- ----------------------------
INSERT INTO `friendsite` VALUES ('1', '高清电影', 'http://www.dora-movie.com.cn', '1256193352', '1', '2016-03-16 23:13:10');
INSERT INTO `friendsite` VALUES ('2', '百度', 'http://www.baidu.com', '', '1', '2016-03-17 09:36:19');

-- ----------------------------
-- Table structure for movies
-- ----------------------------
DROP TABLE IF EXISTS `movies`;
CREATE TABLE `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `body` longtext,
  `zhaiyao` longtext,
  `guojia` longtext,
  `class` longtext,
  `chicun` varchar(50) DEFAULT NULL,
  `year` longtext,
  `laiyuan` longtext,
  `downURL` longtext,
  `addtime` datetime DEFAULT NULL,
  `status` varchar(5) DEFAULT NULL,
  `Look` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=489 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movies
-- ----------------------------

-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `title` longtext,
  `url` varchar(50) DEFAULT NULL,
  `smallurl` varchar(50) DEFAULT NULL,
  `keyword` longtext,
  `description` longtext,
  `aboutme` longtext,
  `aboutad` longtext,
  `addteam` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of setting
-- ----------------------------

-- ----------------------------
-- Table structure for tip
-- ----------------------------
DROP TABLE IF EXISTS `tip`;
CREATE TABLE `tip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SearchTip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tip
-- ----------------------------
INSERT INTO `tip` VALUES ('1', '爱情');
INSERT INTO `tip` VALUES ('2', '爱情');
INSERT INTO `tip` VALUES ('3', '妮懊恼个');
INSERT INTO `tip` VALUES ('4', 'this');
INSERT INTO `tip` VALUES ('5', 'tr');
INSERT INTO `tip` VALUES ('6', 'tr');
INSERT INTO `tip` VALUES ('7', 'tr');
INSERT INTO `tip` VALUES ('8', 'tr');
INSERT INTO `tip` VALUES ('9', 'tr');
INSERT INTO `tip` VALUES ('10', 'tr');
INSERT INTO `tip` VALUES ('11', 'tr');
INSERT INTO `tip` VALUES ('12', '限制');
INSERT INTO `tip` VALUES ('13', '英');
INSERT INTO `tip` VALUES ('14', 'å¨ä½');
INSERT INTO `tip` VALUES ('15', '动作');
INSERT INTO `tip` VALUES ('16', '爱情');
INSERT INTO `tip` VALUES ('17', '中国');
INSERT INTO `tip` VALUES ('18', '3D');
INSERT INTO `tip` VALUES ('19', '动画');
INSERT INTO `tip` VALUES ('20', '英国');
INSERT INTO `tip` VALUES ('21', '变形金刚');
INSERT INTO `tip` VALUES ('22', '动作');
INSERT INTO `tip` VALUES ('23', '喜剧');
INSERT INTO `tip` VALUES ('24', '喜剧');
INSERT INTO `tip` VALUES ('25', '变型金刚');
INSERT INTO `tip` VALUES ('26', '变型金刚');
INSERT INTO `tip` VALUES ('27', '变形金刚');
INSERT INTO `tip` VALUES ('28', '变形金刚');
INSERT INTO `tip` VALUES ('29', '变形金刚');
INSERT INTO `tip` VALUES ('30', 'åå½¢');
INSERT INTO `tip` VALUES ('31', '变形');
INSERT INTO `tip` VALUES ('32', '变形');
INSERT INTO `tip` VALUES ('33', '变形');
INSERT INTO `tip` VALUES ('34', '爱情');
INSERT INTO `tip` VALUES ('35', '爱情');
INSERT INTO `tip` VALUES ('36', '喜剧');
INSERT INTO `tip` VALUES ('37', '喜剧');
INSERT INTO `tip` VALUES ('38', '喜剧');
INSERT INTO `tip` VALUES ('39', '喜剧');
INSERT INTO `tip` VALUES ('40', '喜剧');
INSERT INTO `tip` VALUES ('41', '喜剧');
INSERT INTO `tip` VALUES ('42', '喜剧');
INSERT INTO `tip` VALUES ('43', '动作');
INSERT INTO `tip` VALUES ('44', '动作');
INSERT INTO `tip` VALUES ('45', '动作');
INSERT INTO `tip` VALUES ('46', '动作');
INSERT INTO `tip` VALUES ('47', '动作');
INSERT INTO `tip` VALUES ('48', '科幻');
INSERT INTO `tip` VALUES ('49', '爱情');
INSERT INTO `tip` VALUES ('50', '动作');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `UserName` varchar(10) DEFAULT NULL,
  `CnName` varchar(10) DEFAULT NULL,
  `headPic` varchar(50) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `QQ` double DEFAULT NULL,
  `Mobile` varchar(50) DEFAULT NULL,
  `Age` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `website` text,
  `jianjie` longtext,
  `regtime` datetime DEFAULT NULL,
  `onlinetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'csbqq66@qq.com', '21232F297A57A5A743894A0E4A801FC3', 'hhcsb', '陈申波', '20140525192832_6327.jpg', 'Boy', '665345464', '111-31312313', '01-05-2014', '湖南省怀化市铁北鹤城区', 'http://www.workyi.com', '案范围嘎啊我给娃给我饿啊', '2014-05-27 17:36:34', '2014-06-03 11:14:37');
INSERT INTO `user` VALUES ('2', 'fasdfno@sdf.com', '202CB962AC59075B964B07152D234B70', null, null, '20140525192832_6327.jpg', null, '665345464', null, null, null, null, null, null, null);
