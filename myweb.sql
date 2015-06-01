/*
Navicat MySQL Data Transfer

Source Server         : gxf
Source Server Version : 50621
Source Host           : 210.38.235.184:3306
Source Database       : myweb

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-06-01 22:40:08
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
  `content` varchar(16) DEFAULT NULL,
  `tags` varchar(100) DEFAULT NULL,
  `readCount` int(11) DEFAULT '0',
  `blogTypeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blogTypeId` (`blogTypeId`),
  CONSTRAINT `blogTypeId` FOREIGN KEY (`blogTypeId`) REFERENCES `blogtype` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=890 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('831', '博客标题0', '作者0', '2015-05-24 16:22:46', '博客内容0', null, '1', null);
INSERT INTO `blog` VALUES ('832', '博客标题1', '作者1', '2015-05-24 16:22:46', '博客内容1', null, '2', null);
INSERT INTO `blog` VALUES ('833', '博客标题2', '作者2', '2015-05-24 16:22:46', '博客内容2', null, '5', null);
INSERT INTO `blog` VALUES ('834', '博客标题3', '作者3', '2015-05-24 16:22:46', '博客内容3', null, '7', null);
INSERT INTO `blog` VALUES ('835', '博客标题4', '作者4', '2015-05-24 16:22:46', '博客内容4', null, '0', null);
INSERT INTO `blog` VALUES ('836', '博客标题5', '作者5', '2015-05-24 16:22:46', '博客内容5', null, '0', null);
INSERT INTO `blog` VALUES ('837', '博客标题6', '作者6', '2015-05-24 16:22:46', '博客内容6', null, '0', null);
INSERT INTO `blog` VALUES ('838', '博客标题7', '作者7', '2015-05-24 16:22:46', '博客内容7', null, '0', null);
INSERT INTO `blog` VALUES ('839', '博客标题8', '作者8', '2015-05-24 16:22:46', '博客内容8', null, '0', null);
INSERT INTO `blog` VALUES ('840', '博客标题9', '作者9', '2015-05-24 16:22:46', '博客内容9', null, '0', null);
INSERT INTO `blog` VALUES ('841', '博客标题10', '作者10', '2015-05-24 16:22:46', '博客内容10', null, '0', null);
INSERT INTO `blog` VALUES ('842', '博客标题11', '作者11', '2015-05-24 16:22:46', '博客内容11', null, '0', null);
INSERT INTO `blog` VALUES ('843', '博客标题12', '作者12', '2015-05-24 16:22:46', '博客内容12', null, '0', null);
INSERT INTO `blog` VALUES ('844', '博客标题13', '作者13', '2015-05-24 16:22:46', '博客内容13', null, '0', null);
INSERT INTO `blog` VALUES ('845', '博客标题14', '作者14', '2015-05-24 16:22:46', '博客内容14', null, '0', null);
INSERT INTO `blog` VALUES ('846', '博客标题15', '作者15', '2015-05-24 16:22:46', '博客内容15', null, '0', null);
INSERT INTO `blog` VALUES ('847', '博客标题16', '作者16', '2015-05-24 16:22:46', '博客内容16', null, '0', null);
INSERT INTO `blog` VALUES ('848', '博客标题17', '作者17', '2015-05-24 16:22:46', '博客内容17', null, '0', null);
INSERT INTO `blog` VALUES ('849', '博客标题18', '作者18', '2015-05-24 16:22:46', '博客内容18', null, '0', null);
INSERT INTO `blog` VALUES ('850', '博客标题19', '作者19', '2015-05-24 16:22:46', '博客内容19', null, '0', null);
INSERT INTO `blog` VALUES ('851', '博客标题20', '作者20', '2015-05-24 16:22:46', '博客内容20', null, '0', null);
INSERT INTO `blog` VALUES ('852', '博客标题21', '作者21', '2015-05-24 16:22:46', '博客内容21', null, '0', null);
INSERT INTO `blog` VALUES ('853', '博客标题22', '作者22', '2015-05-24 16:22:46', '博客内容22', null, '0', null);
INSERT INTO `blog` VALUES ('854', '博客标题23', '作者23', '2015-05-24 16:22:46', '博客内容23', null, '0', null);
INSERT INTO `blog` VALUES ('855', '博客标题24', '作者24', '2015-05-24 16:22:46', '博客内容24', null, '0', null);
INSERT INTO `blog` VALUES ('856', '博客标题25', '作者25', '2015-05-24 16:22:46', '博客内容25', null, '0', null);
INSERT INTO `blog` VALUES ('857', '博客标题26', '作者26', '2015-05-24 16:22:46', '博客内容26', null, '0', null);
INSERT INTO `blog` VALUES ('858', '博客标题27', '作者27', '2015-05-24 16:22:46', '博客内容27', null, '0', null);
INSERT INTO `blog` VALUES ('859', '博客标题28', '作者28', '2015-05-24 16:22:46', '博客内容28', null, '0', null);
INSERT INTO `blog` VALUES ('860', '博客标题29', '作者29', '2015-05-24 16:22:46', '博客内容29', null, '0', null);
INSERT INTO `blog` VALUES ('861', '博客标题30', '作者30', '2015-05-24 16:22:46', '博客内容30', null, '0', null);
INSERT INTO `blog` VALUES ('862', '博客标题31', '作者31', '2015-05-24 16:22:46', '博客内容31', null, '0', null);
INSERT INTO `blog` VALUES ('863', '博客标题32', '作者32', '2015-05-24 16:22:46', '博客内容32', null, '0', null);
INSERT INTO `blog` VALUES ('864', '博客标题33', '作者33', '2015-05-24 16:22:46', '博客内容33', null, '0', null);
INSERT INTO `blog` VALUES ('865', '博客标题34', '作者34', '2015-05-24 16:22:46', '博客内容34', null, '0', null);
INSERT INTO `blog` VALUES ('866', '博客标题35', '作者35', '2015-05-24 16:22:47', '博客内容35', null, '0', null);
INSERT INTO `blog` VALUES ('867', '博客标题36', '作者36', '2015-05-24 16:22:47', '博客内容36', null, '0', null);
INSERT INTO `blog` VALUES ('868', '博客标题37', '作者37', '2015-05-24 16:22:47', '博客内容37', null, '0', null);
INSERT INTO `blog` VALUES ('869', '博客标题38', '作者38', '2015-05-24 16:22:47', '博客内容38', null, '0', null);
INSERT INTO `blog` VALUES ('870', '博客标题39', '作者39', '2015-05-24 16:22:47', '博客内容39', null, '0', null);
INSERT INTO `blog` VALUES ('871', '博客标题40', '作者40', '2015-05-24 16:22:47', '博客内容40', null, '0', null);
INSERT INTO `blog` VALUES ('872', '博客标题41', '作者41', '2015-05-24 16:22:47', '博客内容41', null, '0', null);
INSERT INTO `blog` VALUES ('873', '博客标题42', '作者42', '2015-05-24 16:22:47', '博客内容42', null, '0', null);
INSERT INTO `blog` VALUES ('874', '博客标题43', '作者43', '2015-05-24 16:22:47', '博客内容43', null, '0', null);
INSERT INTO `blog` VALUES ('875', '博客标题44', '作者44', '2015-05-24 16:22:47', '博客内容44', null, '0', null);
INSERT INTO `blog` VALUES ('876', '博客标题45', '作者45', '2015-05-24 16:22:47', '博客内容45', null, '0', null);
INSERT INTO `blog` VALUES ('877', '博客标题46', '作者46', '2015-05-24 16:22:47', '博客内容46', null, '0', null);
INSERT INTO `blog` VALUES ('878', '博客标题47', '作者47', '2015-05-24 16:22:47', '博客内容47', null, '0', null);
INSERT INTO `blog` VALUES ('879', '博客标题48', '作者48', '2015-05-24 16:22:47', '博客内容48', null, '0', null);
INSERT INTO `blog` VALUES ('880', '博客标题49', '作者49', '2015-05-24 16:22:47', '博客内容49', null, '0', null);
INSERT INTO `blog` VALUES ('881', '博客标题50', '作者50', '2015-05-24 16:22:47', '博客内容50', null, '0', null);
INSERT INTO `blog` VALUES ('882', '博客标题51', '作者51', '2015-05-24 16:22:47', '博客内容51', null, '0', null);
INSERT INTO `blog` VALUES ('883', '博客标题52', '作者52', '2015-05-24 16:22:47', '博客内容52', null, '0', null);
INSERT INTO `blog` VALUES ('884', '博客标题53', '作者53', '2015-05-24 16:22:47', '博客内容53', null, '0', null);
INSERT INTO `blog` VALUES ('885', '博客标题54', '作者54', '2015-05-24 16:22:47', '博客内容54', null, '0', null);
INSERT INTO `blog` VALUES ('886', '博客标题55', '作者55', '2015-05-24 16:22:47', '博客内容55', null, '0', null);
INSERT INTO `blog` VALUES ('887', '博客标题56', '作者56', '2015-05-24 16:22:47', '博客内容56', null, '0', null);
INSERT INTO `blog` VALUES ('888', '博客标题57', '作者57', '2015-05-24 16:22:47', '博客内容57', null, '0', null);
INSERT INTO `blog` VALUES ('889', '博客标题58', '作者58', '2015-05-24 16:22:47', '博客内容58', null, '0', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=355 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blogtag
-- ----------------------------
INSERT INTO `blogtag` VALUES ('178', '831', '1');
INSERT INTO `blogtag` VALUES ('179', '831', '3');
INSERT INTO `blogtag` VALUES ('180', '831', '2');
INSERT INTO `blogtag` VALUES ('181', '832', '1');
INSERT INTO `blogtag` VALUES ('182', '832', '3');
INSERT INTO `blogtag` VALUES ('183', '832', '2');
INSERT INTO `blogtag` VALUES ('184', '833', '1');
INSERT INTO `blogtag` VALUES ('185', '833', '3');
INSERT INTO `blogtag` VALUES ('186', '833', '2');
INSERT INTO `blogtag` VALUES ('187', '834', '1');
INSERT INTO `blogtag` VALUES ('188', '834', '3');
INSERT INTO `blogtag` VALUES ('189', '834', '2');
INSERT INTO `blogtag` VALUES ('190', '835', '1');
INSERT INTO `blogtag` VALUES ('191', '835', '3');
INSERT INTO `blogtag` VALUES ('192', '835', '2');
INSERT INTO `blogtag` VALUES ('193', '836', '1');
INSERT INTO `blogtag` VALUES ('194', '836', '3');
INSERT INTO `blogtag` VALUES ('195', '836', '2');
INSERT INTO `blogtag` VALUES ('196', '837', '1');
INSERT INTO `blogtag` VALUES ('197', '837', '3');
INSERT INTO `blogtag` VALUES ('198', '837', '2');
INSERT INTO `blogtag` VALUES ('199', '838', '1');
INSERT INTO `blogtag` VALUES ('200', '838', '3');
INSERT INTO `blogtag` VALUES ('201', '838', '2');
INSERT INTO `blogtag` VALUES ('202', '839', '1');
INSERT INTO `blogtag` VALUES ('203', '839', '3');
INSERT INTO `blogtag` VALUES ('204', '839', '2');
INSERT INTO `blogtag` VALUES ('205', '840', '1');
INSERT INTO `blogtag` VALUES ('206', '840', '3');
INSERT INTO `blogtag` VALUES ('207', '840', '2');
INSERT INTO `blogtag` VALUES ('208', '841', '1');
INSERT INTO `blogtag` VALUES ('209', '841', '3');
INSERT INTO `blogtag` VALUES ('210', '841', '2');
INSERT INTO `blogtag` VALUES ('211', '842', '1');
INSERT INTO `blogtag` VALUES ('212', '842', '3');
INSERT INTO `blogtag` VALUES ('213', '842', '2');
INSERT INTO `blogtag` VALUES ('214', '843', '1');
INSERT INTO `blogtag` VALUES ('215', '843', '3');
INSERT INTO `blogtag` VALUES ('216', '843', '2');
INSERT INTO `blogtag` VALUES ('217', '844', '1');
INSERT INTO `blogtag` VALUES ('218', '844', '3');
INSERT INTO `blogtag` VALUES ('219', '844', '2');
INSERT INTO `blogtag` VALUES ('220', '845', '1');
INSERT INTO `blogtag` VALUES ('221', '845', '3');
INSERT INTO `blogtag` VALUES ('222', '845', '2');
INSERT INTO `blogtag` VALUES ('223', '846', '1');
INSERT INTO `blogtag` VALUES ('224', '846', '3');
INSERT INTO `blogtag` VALUES ('225', '846', '2');
INSERT INTO `blogtag` VALUES ('226', '847', '1');
INSERT INTO `blogtag` VALUES ('227', '847', '3');
INSERT INTO `blogtag` VALUES ('228', '847', '2');
INSERT INTO `blogtag` VALUES ('229', '848', '1');
INSERT INTO `blogtag` VALUES ('230', '848', '3');
INSERT INTO `blogtag` VALUES ('231', '848', '2');
INSERT INTO `blogtag` VALUES ('232', '849', '1');
INSERT INTO `blogtag` VALUES ('233', '849', '3');
INSERT INTO `blogtag` VALUES ('234', '849', '2');
INSERT INTO `blogtag` VALUES ('235', '850', '1');
INSERT INTO `blogtag` VALUES ('236', '850', '3');
INSERT INTO `blogtag` VALUES ('237', '850', '2');
INSERT INTO `blogtag` VALUES ('238', '851', '1');
INSERT INTO `blogtag` VALUES ('239', '851', '3');
INSERT INTO `blogtag` VALUES ('240', '851', '2');
INSERT INTO `blogtag` VALUES ('241', '852', '1');
INSERT INTO `blogtag` VALUES ('242', '852', '3');
INSERT INTO `blogtag` VALUES ('243', '852', '2');
INSERT INTO `blogtag` VALUES ('244', '853', '1');
INSERT INTO `blogtag` VALUES ('245', '853', '3');
INSERT INTO `blogtag` VALUES ('246', '853', '2');
INSERT INTO `blogtag` VALUES ('247', '854', '1');
INSERT INTO `blogtag` VALUES ('248', '854', '3');
INSERT INTO `blogtag` VALUES ('249', '854', '2');
INSERT INTO `blogtag` VALUES ('250', '855', '1');
INSERT INTO `blogtag` VALUES ('251', '855', '3');
INSERT INTO `blogtag` VALUES ('252', '855', '2');
INSERT INTO `blogtag` VALUES ('253', '856', '1');
INSERT INTO `blogtag` VALUES ('254', '856', '3');
INSERT INTO `blogtag` VALUES ('255', '856', '2');
INSERT INTO `blogtag` VALUES ('256', '857', '1');
INSERT INTO `blogtag` VALUES ('257', '857', '3');
INSERT INTO `blogtag` VALUES ('258', '857', '2');
INSERT INTO `blogtag` VALUES ('259', '858', '1');
INSERT INTO `blogtag` VALUES ('260', '858', '3');
INSERT INTO `blogtag` VALUES ('261', '858', '2');
INSERT INTO `blogtag` VALUES ('262', '859', '1');
INSERT INTO `blogtag` VALUES ('263', '859', '3');
INSERT INTO `blogtag` VALUES ('264', '859', '2');
INSERT INTO `blogtag` VALUES ('265', '860', '1');
INSERT INTO `blogtag` VALUES ('266', '860', '3');
INSERT INTO `blogtag` VALUES ('267', '860', '2');
INSERT INTO `blogtag` VALUES ('268', '861', '1');
INSERT INTO `blogtag` VALUES ('269', '861', '3');
INSERT INTO `blogtag` VALUES ('270', '861', '2');
INSERT INTO `blogtag` VALUES ('271', '862', '1');
INSERT INTO `blogtag` VALUES ('272', '862', '3');
INSERT INTO `blogtag` VALUES ('273', '862', '2');
INSERT INTO `blogtag` VALUES ('274', '863', '1');
INSERT INTO `blogtag` VALUES ('275', '863', '3');
INSERT INTO `blogtag` VALUES ('276', '863', '2');
INSERT INTO `blogtag` VALUES ('277', '864', '1');
INSERT INTO `blogtag` VALUES ('278', '864', '3');
INSERT INTO `blogtag` VALUES ('279', '864', '2');
INSERT INTO `blogtag` VALUES ('280', '865', '1');
INSERT INTO `blogtag` VALUES ('281', '865', '3');
INSERT INTO `blogtag` VALUES ('282', '865', '2');
INSERT INTO `blogtag` VALUES ('283', '866', '1');
INSERT INTO `blogtag` VALUES ('284', '866', '3');
INSERT INTO `blogtag` VALUES ('285', '866', '2');
INSERT INTO `blogtag` VALUES ('286', '867', '1');
INSERT INTO `blogtag` VALUES ('287', '867', '3');
INSERT INTO `blogtag` VALUES ('288', '867', '2');
INSERT INTO `blogtag` VALUES ('289', '868', '1');
INSERT INTO `blogtag` VALUES ('290', '868', '3');
INSERT INTO `blogtag` VALUES ('291', '868', '2');
INSERT INTO `blogtag` VALUES ('292', '869', '1');
INSERT INTO `blogtag` VALUES ('293', '869', '3');
INSERT INTO `blogtag` VALUES ('294', '869', '2');
INSERT INTO `blogtag` VALUES ('295', '870', '1');
INSERT INTO `blogtag` VALUES ('296', '870', '3');
INSERT INTO `blogtag` VALUES ('297', '870', '2');
INSERT INTO `blogtag` VALUES ('298', '871', '1');
INSERT INTO `blogtag` VALUES ('299', '871', '3');
INSERT INTO `blogtag` VALUES ('300', '871', '2');
INSERT INTO `blogtag` VALUES ('301', '872', '1');
INSERT INTO `blogtag` VALUES ('302', '872', '3');
INSERT INTO `blogtag` VALUES ('303', '872', '2');
INSERT INTO `blogtag` VALUES ('304', '873', '1');
INSERT INTO `blogtag` VALUES ('305', '873', '3');
INSERT INTO `blogtag` VALUES ('306', '873', '2');
INSERT INTO `blogtag` VALUES ('307', '874', '1');
INSERT INTO `blogtag` VALUES ('308', '874', '3');
INSERT INTO `blogtag` VALUES ('309', '874', '2');
INSERT INTO `blogtag` VALUES ('310', '875', '1');
INSERT INTO `blogtag` VALUES ('311', '875', '3');
INSERT INTO `blogtag` VALUES ('312', '875', '2');
INSERT INTO `blogtag` VALUES ('313', '876', '1');
INSERT INTO `blogtag` VALUES ('314', '876', '3');
INSERT INTO `blogtag` VALUES ('315', '876', '2');
INSERT INTO `blogtag` VALUES ('316', '877', '1');
INSERT INTO `blogtag` VALUES ('317', '877', '3');
INSERT INTO `blogtag` VALUES ('318', '877', '2');
INSERT INTO `blogtag` VALUES ('319', '878', '1');
INSERT INTO `blogtag` VALUES ('320', '878', '3');
INSERT INTO `blogtag` VALUES ('321', '878', '2');
INSERT INTO `blogtag` VALUES ('322', '879', '1');
INSERT INTO `blogtag` VALUES ('323', '879', '3');
INSERT INTO `blogtag` VALUES ('324', '879', '2');
INSERT INTO `blogtag` VALUES ('325', '880', '1');
INSERT INTO `blogtag` VALUES ('326', '880', '3');
INSERT INTO `blogtag` VALUES ('327', '880', '2');
INSERT INTO `blogtag` VALUES ('328', '881', '1');
INSERT INTO `blogtag` VALUES ('329', '881', '3');
INSERT INTO `blogtag` VALUES ('330', '881', '2');
INSERT INTO `blogtag` VALUES ('331', '882', '1');
INSERT INTO `blogtag` VALUES ('332', '882', '3');
INSERT INTO `blogtag` VALUES ('333', '882', '2');
INSERT INTO `blogtag` VALUES ('334', '883', '1');
INSERT INTO `blogtag` VALUES ('335', '883', '3');
INSERT INTO `blogtag` VALUES ('336', '883', '2');
INSERT INTO `blogtag` VALUES ('337', '884', '1');
INSERT INTO `blogtag` VALUES ('338', '884', '3');
INSERT INTO `blogtag` VALUES ('339', '884', '2');
INSERT INTO `blogtag` VALUES ('340', '885', '1');
INSERT INTO `blogtag` VALUES ('341', '885', '3');
INSERT INTO `blogtag` VALUES ('342', '885', '2');
INSERT INTO `blogtag` VALUES ('343', '886', '1');
INSERT INTO `blogtag` VALUES ('344', '886', '3');
INSERT INTO `blogtag` VALUES ('345', '886', '2');
INSERT INTO `blogtag` VALUES ('346', '887', '1');
INSERT INTO `blogtag` VALUES ('347', '887', '3');
INSERT INTO `blogtag` VALUES ('348', '887', '2');
INSERT INTO `blogtag` VALUES ('349', '888', '1');
INSERT INTO `blogtag` VALUES ('350', '888', '3');
INSERT INTO `blogtag` VALUES ('351', '888', '2');
INSERT INTO `blogtag` VALUES ('352', '889', '1');
INSERT INTO `blogtag` VALUES ('353', '889', '3');
INSERT INTO `blogtag` VALUES ('354', '889', '2');

-- ----------------------------
-- Table structure for blogtype
-- ----------------------------
DROP TABLE IF EXISTS `blogtype`;
CREATE TABLE `blogtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blogtype
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('24', '官先森', '1277598781@qq.com', '啊顺丰大厦', '831', '2015-05-26 20:23:11');
INSERT INTO `comment` VALUES ('26', '官先森', '1277598781@qq.com', '的剑法哦if金额为if金额', '831', '2015-05-26 21:22:20');
INSERT INTO `comment` VALUES ('27', '官先森', '1277598781@qq.com', 'asfa', '832', '2015-05-26 22:34:16');
INSERT INTO `comment` VALUES ('28', '官先森', '12775@qq.com', '飞洒的发送到', '831', '2015-05-27 11:14:27');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES ('1', '标签0');
INSERT INTO `tag` VALUES ('2', '标签1');
INSERT INTO `tag` VALUES ('3', '标签2');

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
