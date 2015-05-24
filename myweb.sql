/*
Navicat MySQL Data Transfer

Source Server         : gxf
Source Server Version : 50621
Source Host           : 210.38.235.184:3306
Source Database       : myweb

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-05-24 20:11:55
*/

SET FOREIGN_KEY_CHECKS=0;

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
  `type` varchar(50) DEFAULT NULL,
  `readCount` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=890 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('831', '博客标题0', '作者0', '2015-05-24 16:22:46', '博客内容0', null, '种类', '0');
INSERT INTO `blog` VALUES ('832', '博客标题1', '作者1', '2015-05-24 16:22:46', '博客内容1', null, '种类', '0');
INSERT INTO `blog` VALUES ('833', '博客标题2', '作者2', '2015-05-24 16:22:46', '博客内容2', null, '种类', '0');
INSERT INTO `blog` VALUES ('834', '博客标题3', '作者3', '2015-05-24 16:22:46', '博客内容3', null, '种类', '0');
INSERT INTO `blog` VALUES ('835', '博客标题4', '作者4', '2015-05-24 16:22:46', '博客内容4', null, '种类', '0');
INSERT INTO `blog` VALUES ('836', '博客标题5', '作者5', '2015-05-24 16:22:46', '博客内容5', null, '种类', '0');
INSERT INTO `blog` VALUES ('837', '博客标题6', '作者6', '2015-05-24 16:22:46', '博客内容6', null, '种类', '0');
INSERT INTO `blog` VALUES ('838', '博客标题7', '作者7', '2015-05-24 16:22:46', '博客内容7', null, '种类', '0');
INSERT INTO `blog` VALUES ('839', '博客标题8', '作者8', '2015-05-24 16:22:46', '博客内容8', null, '种类', '0');
INSERT INTO `blog` VALUES ('840', '博客标题9', '作者9', '2015-05-24 16:22:46', '博客内容9', null, '种类', '0');
INSERT INTO `blog` VALUES ('841', '博客标题10', '作者10', '2015-05-24 16:22:46', '博客内容10', null, '种类', '0');
INSERT INTO `blog` VALUES ('842', '博客标题11', '作者11', '2015-05-24 16:22:46', '博客内容11', null, '种类', '0');
INSERT INTO `blog` VALUES ('843', '博客标题12', '作者12', '2015-05-24 16:22:46', '博客内容12', null, '种类', '0');
INSERT INTO `blog` VALUES ('844', '博客标题13', '作者13', '2015-05-24 16:22:46', '博客内容13', null, '种类', '0');
INSERT INTO `blog` VALUES ('845', '博客标题14', '作者14', '2015-05-24 16:22:46', '博客内容14', null, '种类', '0');
INSERT INTO `blog` VALUES ('846', '博客标题15', '作者15', '2015-05-24 16:22:46', '博客内容15', null, '种类', '0');
INSERT INTO `blog` VALUES ('847', '博客标题16', '作者16', '2015-05-24 16:22:46', '博客内容16', null, '种类', '0');
INSERT INTO `blog` VALUES ('848', '博客标题17', '作者17', '2015-05-24 16:22:46', '博客内容17', null, '种类', '0');
INSERT INTO `blog` VALUES ('849', '博客标题18', '作者18', '2015-05-24 16:22:46', '博客内容18', null, '种类', '0');
INSERT INTO `blog` VALUES ('850', '博客标题19', '作者19', '2015-05-24 16:22:46', '博客内容19', null, '种类', '0');
INSERT INTO `blog` VALUES ('851', '博客标题20', '作者20', '2015-05-24 16:22:46', '博客内容20', null, '种类', '0');
INSERT INTO `blog` VALUES ('852', '博客标题21', '作者21', '2015-05-24 16:22:46', '博客内容21', null, '种类', '0');
INSERT INTO `blog` VALUES ('853', '博客标题22', '作者22', '2015-05-24 16:22:46', '博客内容22', null, '种类', '0');
INSERT INTO `blog` VALUES ('854', '博客标题23', '作者23', '2015-05-24 16:22:46', '博客内容23', null, '种类', '0');
INSERT INTO `blog` VALUES ('855', '博客标题24', '作者24', '2015-05-24 16:22:46', '博客内容24', null, '种类', '0');
INSERT INTO `blog` VALUES ('856', '博客标题25', '作者25', '2015-05-24 16:22:46', '博客内容25', null, '种类', '0');
INSERT INTO `blog` VALUES ('857', '博客标题26', '作者26', '2015-05-24 16:22:46', '博客内容26', null, '种类', '0');
INSERT INTO `blog` VALUES ('858', '博客标题27', '作者27', '2015-05-24 16:22:46', '博客内容27', null, '种类', '0');
INSERT INTO `blog` VALUES ('859', '博客标题28', '作者28', '2015-05-24 16:22:46', '博客内容28', null, '种类', '0');
INSERT INTO `blog` VALUES ('860', '博客标题29', '作者29', '2015-05-24 16:22:46', '博客内容29', null, '种类', '0');
INSERT INTO `blog` VALUES ('861', '博客标题30', '作者30', '2015-05-24 16:22:46', '博客内容30', null, '种类', '0');
INSERT INTO `blog` VALUES ('862', '博客标题31', '作者31', '2015-05-24 16:22:46', '博客内容31', null, '种类', '0');
INSERT INTO `blog` VALUES ('863', '博客标题32', '作者32', '2015-05-24 16:22:46', '博客内容32', null, '种类', '0');
INSERT INTO `blog` VALUES ('864', '博客标题33', '作者33', '2015-05-24 16:22:46', '博客内容33', null, '种类', '0');
INSERT INTO `blog` VALUES ('865', '博客标题34', '作者34', '2015-05-24 16:22:46', '博客内容34', null, '种类', '0');
INSERT INTO `blog` VALUES ('866', '博客标题35', '作者35', '2015-05-24 16:22:47', '博客内容35', null, '种类', '0');
INSERT INTO `blog` VALUES ('867', '博客标题36', '作者36', '2015-05-24 16:22:47', '博客内容36', null, '种类', '0');
INSERT INTO `blog` VALUES ('868', '博客标题37', '作者37', '2015-05-24 16:22:47', '博客内容37', null, '种类', '0');
INSERT INTO `blog` VALUES ('869', '博客标题38', '作者38', '2015-05-24 16:22:47', '博客内容38', null, '种类', '0');
INSERT INTO `blog` VALUES ('870', '博客标题39', '作者39', '2015-05-24 16:22:47', '博客内容39', null, '种类', '0');
INSERT INTO `blog` VALUES ('871', '博客标题40', '作者40', '2015-05-24 16:22:47', '博客内容40', null, '种类', '0');
INSERT INTO `blog` VALUES ('872', '博客标题41', '作者41', '2015-05-24 16:22:47', '博客内容41', null, '种类', '0');
INSERT INTO `blog` VALUES ('873', '博客标题42', '作者42', '2015-05-24 16:22:47', '博客内容42', null, '种类', '0');
INSERT INTO `blog` VALUES ('874', '博客标题43', '作者43', '2015-05-24 16:22:47', '博客内容43', null, '种类', '0');
INSERT INTO `blog` VALUES ('875', '博客标题44', '作者44', '2015-05-24 16:22:47', '博客内容44', null, '种类', '0');
INSERT INTO `blog` VALUES ('876', '博客标题45', '作者45', '2015-05-24 16:22:47', '博客内容45', null, '种类', '0');
INSERT INTO `blog` VALUES ('877', '博客标题46', '作者46', '2015-05-24 16:22:47', '博客内容46', null, '种类', '0');
INSERT INTO `blog` VALUES ('878', '博客标题47', '作者47', '2015-05-24 16:22:47', '博客内容47', null, '种类', '0');
INSERT INTO `blog` VALUES ('879', '博客标题48', '作者48', '2015-05-24 16:22:47', '博客内容48', null, '种类', '0');
INSERT INTO `blog` VALUES ('880', '博客标题49', '作者49', '2015-05-24 16:22:47', '博客内容49', null, '种类', '0');
INSERT INTO `blog` VALUES ('881', '博客标题50', '作者50', '2015-05-24 16:22:47', '博客内容50', null, '种类', '0');
INSERT INTO `blog` VALUES ('882', '博客标题51', '作者51', '2015-05-24 16:22:47', '博客内容51', null, '种类', '0');
INSERT INTO `blog` VALUES ('883', '博客标题52', '作者52', '2015-05-24 16:22:47', '博客内容52', null, '种类', '0');
INSERT INTO `blog` VALUES ('884', '博客标题53', '作者53', '2015-05-24 16:22:47', '博客内容53', null, '种类', '0');
INSERT INTO `blog` VALUES ('885', '博客标题54', '作者54', '2015-05-24 16:22:47', '博客内容54', null, '种类', '0');
INSERT INTO `blog` VALUES ('886', '博客标题55', '作者55', '2015-05-24 16:22:47', '博客内容55', null, '种类', '0');
INSERT INTO `blog` VALUES ('887', '博客标题56', '作者56', '2015-05-24 16:22:47', '博客内容56', null, '种类', '0');
INSERT INTO `blog` VALUES ('888', '博客标题57', '作者57', '2015-05-24 16:22:47', '博客内容57', null, '种类', '0');
INSERT INTO `blog` VALUES ('889', '博客标题58', '作者58', '2015-05-24 16:22:47', '博客内容58', null, '种类', '0');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
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
