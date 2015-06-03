/*
Navicat MySQL Data Transfer

Source Server         : gxf
Source Server Version : 50621
Source Host           : 210.38.235.184:3306
Source Database       : myweb

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-06-03 21:06:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginId` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', 'admin', '21232F297A57A5A743894A0E4A801FC3');

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `publishTime` datetime DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `readCount` int(11) DEFAULT '0',
  `blogTypeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blogTypeId` (`blogTypeId`),
  CONSTRAINT `blogTypeId` FOREIGN KEY (`blogTypeId`) REFERENCES `blogtype` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=929 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('928', '博客', 'admin', '2015-06-03 10:16:24', '博客', '0', '3');

-- ----------------------------
-- Table structure for blogtag
-- ----------------------------
DROP TABLE IF EXISTS `blogtag`;
CREATE TABLE `blogtag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blogId` int(11) DEFAULT NULL,
  `tagId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blogId` (`blogId`),
  KEY `tagId` (`tagId`),
  CONSTRAINT `blogId` FOREIGN KEY (`blogId`) REFERENCES `blog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tagId` FOREIGN KEY (`tagId`) REFERENCES `tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=397 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blogtag
-- ----------------------------
INSERT INTO `blogtag` VALUES ('394', '928', '30');
INSERT INTO `blogtag` VALUES ('395', '928', '32');
INSERT INTO `blogtag` VALUES ('396', '928', '33');

-- ----------------------------
-- Table structure for blogtype
-- ----------------------------
DROP TABLE IF EXISTS `blogtype`;
CREATE TABLE `blogtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blogtype
-- ----------------------------
INSERT INTO `blogtype` VALUES ('3', 'JAVA', 'JAVA');
INSERT INTO `blogtype` VALUES ('6', 'C++', '');
INSERT INTO `blogtype` VALUES ('7', 'python', '');
INSERT INTO `blogtype` VALUES ('8', 'c', '');
INSERT INTO `blogtype` VALUES ('9', 'php', '');
INSERT INTO `blogtype` VALUES ('10', 'javascript', '');
INSERT INTO `blogtype` VALUES ('11', 'SQL', '');
INSERT INTO `blogtype` VALUES ('12', 'HTML', '');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `personName` varchar(50) DEFAULT NULL,
  `personEmail` varchar(50) DEFAULT NULL,
  `content` varchar(16) DEFAULT NULL,
  `blogId` int(255) DEFAULT NULL,
  `publishTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `commentBlogId` (`blogId`),
  CONSTRAINT `commentBlogId` FOREIGN KEY (`blogId`) REFERENCES `blog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for photo
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `albumId` int(11) DEFAULT NULL,
  `uploadTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `albumId` (`albumId`),
  CONSTRAINT `albumId` FOREIGN KEY (`albumId`) REFERENCES `photoalbum` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photo
-- ----------------------------
INSERT INTO `photo` VALUES ('97', '1.jpg', 'comment', '2', '2015-09-03 10:11:47');
INSERT INTO `photo` VALUES ('98', '2.jpg', 'comment', '2', '2015-09-04 10:11:47');
INSERT INTO `photo` VALUES ('99', '3.jpeg', 'comment', '2', '2015-09-05 10:11:47');
INSERT INTO `photo` VALUES ('100', '4.jpeg', 'comment', '2', '2015-09-06 10:11:47');
INSERT INTO `photo` VALUES ('101', '5.jpeg', 'comment', '2', '2015-09-07 10:11:47');
INSERT INTO `photo` VALUES ('102', '复件 (2) 1.jpg', 'comment', '2', '2015-09-08 10:11:47');
INSERT INTO `photo` VALUES ('103', '复件 (2) 2.jpg', 'comment', '2', '2015-09-09 10:11:47');
INSERT INTO `photo` VALUES ('104', '复件 (2) 3.jpeg', 'comment', '2', '2015-09-10 10:11:47');
INSERT INTO `photo` VALUES ('105', '复件 (2) 4.jpeg', 'comment', '2', '2015-09-11 10:11:47');
INSERT INTO `photo` VALUES ('106', '复件 (2) 5.jpeg', 'comment', '2', '2015-09-12 10:11:47');
INSERT INTO `photo` VALUES ('107', '复件 (3) 1.jpg', 'comment', '2', '2015-09-13 10:11:47');
INSERT INTO `photo` VALUES ('108', '复件 (3) 2.jpg', 'comment', '2', '2015-09-14 10:11:47');
INSERT INTO `photo` VALUES ('109', '复件 (3) 3.jpeg', 'comment', '2', '2015-09-15 10:11:47');
INSERT INTO `photo` VALUES ('110', '复件 (3) 4.jpeg', 'comment', '2', '2015-09-16 10:11:47');
INSERT INTO `photo` VALUES ('111', '复件 (3) 5.jpeg', 'comment', '2', '2015-09-17 10:11:47');
INSERT INTO `photo` VALUES ('112', '复件 (4) 1.jpg', 'comment', '2', '2015-09-18 10:11:47');
INSERT INTO `photo` VALUES ('113', '复件 (4) 2.jpg', 'comment', '2', '2015-09-19 10:11:47');
INSERT INTO `photo` VALUES ('114', '复件 (4) 3.jpeg', 'comment', '2', '2015-09-20 10:11:47');
INSERT INTO `photo` VALUES ('115', '复件 (4) 4.jpeg', 'comment', '2', '2015-09-21 10:11:47');
INSERT INTO `photo` VALUES ('116', '复件 (4) 5.jpeg', 'comment', '2', '2015-09-22 10:11:47');
INSERT INTO `photo` VALUES ('117', '复件 1.jpg', 'comment', '2', '2015-09-23 10:11:47');
INSERT INTO `photo` VALUES ('118', '复件 2.jpg', 'comment', '2', '2015-09-24 10:11:47');
INSERT INTO `photo` VALUES ('119', '复件 3.jpeg', 'comment', '2', '2015-09-25 10:11:47');
INSERT INTO `photo` VALUES ('120', '复件 4.jpeg', 'comment', '2', '2015-09-26 10:11:47');
INSERT INTO `photo` VALUES ('121', '复件 5.jpeg', 'comment', '2', '2015-09-27 10:11:47');
INSERT INTO `photo` VALUES ('122', '1.jpg', 'comment', '1', '2015-09-28 10:11:47');
INSERT INTO `photo` VALUES ('123', '2.jpg', 'comment', '1', '2015-09-29 10:11:47');
INSERT INTO `photo` VALUES ('124', '3.jpeg', 'comment', '1', '2015-09-30 10:11:47');
INSERT INTO `photo` VALUES ('125', '4.jpg', 'comment', '1', '2015-10-01 10:11:47');
INSERT INTO `photo` VALUES ('126', '5.jpeg', 'comment', '1', '2015-10-02 10:11:47');
INSERT INTO `photo` VALUES ('127', '6.jpg', 'comment', '1', '2015-10-03 10:11:47');
INSERT INTO `photo` VALUES ('128', '复件 (2) 1.jpg', 'comment', '1', '2015-10-04 10:11:47');
INSERT INTO `photo` VALUES ('129', '复件 (2) 2.jpg', 'comment', '1', '2015-10-05 10:11:47');
INSERT INTO `photo` VALUES ('130', '复件 (2) 3.jpeg', 'comment', '1', '2015-10-06 10:11:47');
INSERT INTO `photo` VALUES ('131', '复件 (2) 4.jpg', 'comment', '1', '2015-10-07 10:11:47');
INSERT INTO `photo` VALUES ('132', '复件 (2) 5.jpeg', 'comment', '1', '2015-10-08 10:11:47');
INSERT INTO `photo` VALUES ('133', '复件 (2) 6.jpg', 'comment', '1', '2015-10-09 10:11:47');
INSERT INTO `photo` VALUES ('134', '复件 (3) 1.jpg', 'comment', '1', '2015-10-10 10:11:47');
INSERT INTO `photo` VALUES ('135', '复件 (3) 2.jpg', 'comment', '1', '2015-10-11 10:11:47');
INSERT INTO `photo` VALUES ('136', '复件 (3) 3.jpeg', 'comment', '1', '2015-10-12 10:11:47');
INSERT INTO `photo` VALUES ('137', '复件 (3) 4.jpg', 'comment', '1', '2015-10-13 10:11:47');
INSERT INTO `photo` VALUES ('138', '复件 (3) 5.jpeg', 'comment', '1', '2015-10-14 10:11:47');
INSERT INTO `photo` VALUES ('139', '复件 (3) 6.jpg', 'comment', '1', '2015-10-15 10:11:47');
INSERT INTO `photo` VALUES ('140', '复件 (4) 1.jpg', 'comment', '1', '2015-10-16 10:11:47');
INSERT INTO `photo` VALUES ('141', '复件 (4) 2.jpg', 'comment', '1', '2015-10-17 10:11:47');
INSERT INTO `photo` VALUES ('142', '复件 (4) 3.jpeg', 'comment', '1', '2015-10-18 10:11:47');
INSERT INTO `photo` VALUES ('143', '复件 (4) 4.jpg', 'comment', '1', '2015-10-19 10:11:47');
INSERT INTO `photo` VALUES ('144', '复件 (4) 5.jpeg', 'comment', '1', '2015-10-20 10:11:47');
INSERT INTO `photo` VALUES ('145', '复件 (4) 6.jpg', 'comment', '1', '2015-10-21 10:11:47');
INSERT INTO `photo` VALUES ('146', '复件 1.jpg', 'comment', '1', '2015-10-22 10:11:47');
INSERT INTO `photo` VALUES ('147', '复件 2.jpg', 'comment', '1', '2015-10-23 10:11:47');
INSERT INTO `photo` VALUES ('148', '复件 3.jpeg', 'comment', '1', '2015-10-24 10:11:47');
INSERT INTO `photo` VALUES ('149', '复件 4.jpg', 'comment', '1', '2015-10-25 10:11:47');
INSERT INTO `photo` VALUES ('150', '复件 5.jpeg', 'comment', '1', '2015-10-26 10:11:47');
INSERT INTO `photo` VALUES ('151', '复件 6.jpg', 'comment', '1', '2015-10-27 10:11:47');
INSERT INTO `photo` VALUES ('152', '1.jpg', 'comment', '1', '2015-10-28 10:11:47');
INSERT INTO `photo` VALUES ('153', '2.jpg', 'comment', '1', '2015-10-29 10:11:47');
INSERT INTO `photo` VALUES ('154', '3.jpeg', 'comment', '1', '2015-10-30 10:11:47');
INSERT INTO `photo` VALUES ('155', '4.jpg', 'comment', '1', '2015-10-31 10:11:47');
INSERT INTO `photo` VALUES ('156', '5.jpeg', 'comment', '1', '2015-11-01 10:11:47');
INSERT INTO `photo` VALUES ('157', '6.jpg', 'comment', '1', '2015-11-02 10:11:47');
INSERT INTO `photo` VALUES ('158', '复件 (2) 1.jpg', 'comment', '1', '2015-11-03 10:11:47');
INSERT INTO `photo` VALUES ('159', '复件 (2) 2.jpg', 'comment', '1', '2015-11-04 10:11:47');
INSERT INTO `photo` VALUES ('160', '复件 (2) 3.jpeg', 'comment', '1', '2015-11-05 10:11:47');
INSERT INTO `photo` VALUES ('161', '复件 (2) 4.jpg', 'comment', '1', '2015-11-06 10:11:47');
INSERT INTO `photo` VALUES ('162', '复件 (2) 5.jpeg', 'comment', '1', '2015-11-07 10:11:47');
INSERT INTO `photo` VALUES ('163', '复件 (2) 6.jpg', 'comment', '1', '2015-11-08 10:11:47');
INSERT INTO `photo` VALUES ('164', '复件 (3) 1.jpg', 'comment', '1', '2015-11-09 10:11:47');
INSERT INTO `photo` VALUES ('165', '复件 (3) 2.jpg', 'comment', '1', '2015-11-10 10:11:47');
INSERT INTO `photo` VALUES ('166', '复件 (3) 3.jpeg', 'comment', '1', '2015-11-11 10:11:47');
INSERT INTO `photo` VALUES ('167', '复件 (3) 4.jpg', 'comment', '1', '2015-11-12 10:11:47');
INSERT INTO `photo` VALUES ('168', '复件 (3) 5.jpeg', 'comment', '1', '2015-11-13 10:11:47');
INSERT INTO `photo` VALUES ('169', '复件 (3) 6.jpg', 'comment', '1', '2015-11-14 10:11:47');
INSERT INTO `photo` VALUES ('170', '复件 (4) 1.jpg', 'comment', '1', '2015-11-15 10:11:47');
INSERT INTO `photo` VALUES ('171', '复件 (4) 2.jpg', 'comment', '1', '2015-11-16 10:11:47');
INSERT INTO `photo` VALUES ('172', '复件 (4) 3.jpeg', 'comment', '1', '2015-11-17 10:11:47');
INSERT INTO `photo` VALUES ('173', '复件 (4) 4.jpg', 'comment', '1', '2015-11-18 10:11:47');
INSERT INTO `photo` VALUES ('174', '复件 (4) 5.jpeg', 'comment', '1', '2015-11-19 10:11:47');
INSERT INTO `photo` VALUES ('175', '复件 (4) 6.jpg', 'comment', '1', '2015-11-20 10:11:47');
INSERT INTO `photo` VALUES ('176', '复件 1.jpg', 'comment', '1', '2015-11-21 10:11:47');
INSERT INTO `photo` VALUES ('177', '复件 2.jpg', 'comment', '1', '2015-11-22 10:11:47');
INSERT INTO `photo` VALUES ('178', '复件 3.jpeg', 'comment', '1', '2015-11-23 10:11:47');
INSERT INTO `photo` VALUES ('179', '复件 4.jpg', 'comment', '1', '2015-11-24 10:11:47');
INSERT INTO `photo` VALUES ('180', '复件 5.jpeg', 'comment', '1', '2015-11-25 10:11:47');
INSERT INTO `photo` VALUES ('181', '复件 6.jpg', 'comment', '1', '2015-11-26 10:11:47');

-- ----------------------------
-- Table structure for photoalbum
-- ----------------------------
DROP TABLE IF EXISTS `photoalbum`;
CREATE TABLE `photoalbum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `backgroundPhotoPath` varchar(60) DEFAULT NULL,
  `path` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photoalbum
-- ----------------------------
INSERT INTO `photoalbum` VALUES ('1', '海贼王', '2015-05-27 20:36:43', '/MyWeb/photos/海贼王/1.jpg', '/MyWeb/photos/海贼王/');
INSERT INTO `photoalbum` VALUES ('2', '火影忍者', '2015-05-27 20:36:54', '/MyWeb/photos/火影忍者/1.jpg', '/MyWeb/photos/火影忍者/');

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resourceTypeId` int(11) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `uploadTime` datetime DEFAULT NULL,
  `downloadAddress` varchar(255) DEFAULT NULL,
  `resourceComment` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `resourceTypeId` (`resourceTypeId`),
  CONSTRAINT `resourceTypeId` FOREIGN KEY (`resourceTypeId`) REFERENCES `resourcetype` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource
-- ----------------------------

-- ----------------------------
-- Table structure for resourcetype
-- ----------------------------
DROP TABLE IF EXISTS `resourcetype`;
CREATE TABLE `resourcetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resourcetype
-- ----------------------------

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES ('30', 'c++');
INSERT INTO `tag` VALUES ('31', 'python');
INSERT INTO `tag` VALUES ('32', 'c');
INSERT INTO `tag` VALUES ('33', 'java');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
