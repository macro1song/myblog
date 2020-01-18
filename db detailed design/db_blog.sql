/*
Navicat MySQL Data Transfer

Source Server         : myjiaoxue
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : db_blog

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2020-01-18 19:09:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `Pwd` varchar(20) DEFAULT NULL,
  `role` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES ('1', 'admin', '123', '0');
INSERT INTO `tb_admin` VALUES ('2', 'songhong', '123', '0');
INSERT INTO `tb_admin` VALUES ('3', 'test', 'test', '1');

-- ----------------------------
-- Table structure for tb_announcement
-- ----------------------------
DROP TABLE IF EXISTS `tb_announcement`;
CREATE TABLE `tb_announcement` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(100) DEFAULT NULL,
  `Userid` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_announcement
-- ----------------------------
INSERT INTO `tb_announcement` VALUES ('1', '今天网上测试公告系统', '1', '2019-05-02 15:23:19');
INSERT INTO `tb_announcement` VALUES ('2', '今晚20:00-22:00不停服维护', '1', '2019-12-02 15:23:19');

-- ----------------------------
-- Table structure for tb_blog
-- ----------------------------
DROP TABLE IF EXISTS `tb_blog`;
CREATE TABLE `tb_blog` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) DEFAULT NULL,
  `Type` int(11) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `content` varchar(400) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_blog
-- ----------------------------
INSERT INTO `tb_blog` VALUES ('1', '流量明星数据造假：泡沫的破灭，疯狂的终结', '1', '内幕君', '流量时代的神话，以央视的这次报道为节点，大概就此终结了，即使流量明星依旧会有，但转发量过亿，将会成为只属于这个疯狂时代的遥远传说。\r\n    罗马不是一日建成的，但庞贝能在一夜消失。\r\n    早在央视报道“流量明星数据造假”之前，1月8日，微博管理员就发布公告，“为了构建健康的微博内容生态和关系生态，鼓励良性互动，微博站方将于近期对微博转发、评论计数显示方式进行调整：微博转发、评论计数显示上限均为100万，超过100万时显示为100万+。”\r\n    2月3日，有粉丝发现，偶像微博的前端数据显示已经调整，以前大家还有个比较，现在是齐刷刷的100万+了。\r\n    二十天后，央视新闻直播间用近7分钟的时间披露了“数据造假，流量作弊“的产业内幕，画面中出现蔡徐坤、易烊千玺、朱一龙等当红艺人的微博账号，并以蔡徐坤的一亿微博转发量为例，道出了“人为操纵流量，数据造假”的平台乱象。', '2019-02-27 15:23:19');
INSERT INTO `tb_blog` VALUES ('2', '为什么大众点评不会被放弃？', '1', 'SL工作室', '“几日没更博，听说有人在想我？”\r\n\r\n2月25日，@大众点评 官微发出这样一条动态。联系近日满天飞的“美团关掉大众点评App”的谣言，不难看出 @大众点评 这是变相地在向用户“报平安”。\r\n\r\n上周，一篇名为《“大众点评”即将消失，前路未定》的文章中写道“大众点评这一大众熟悉的品牌即将迎来变数，将被改名或直接放弃”，称其可能会被整合进美团App之中。\r\n\r\n大众点评已经成立15年，平台积累有大量忠实用户。美团是国内生活服务领域的领跑者，一举一动都为各界所关注。该文很快便传遍网络，掀起不小的舆论风波。引得不少用户担忧，大众点评会弃大众而去。', '2019-03-01 15:23:19');

-- ----------------------------
-- Table structure for tb_blog_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_blog_type`;
CREATE TABLE `tb_blog_type` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_blog_type
-- ----------------------------
INSERT INTO `tb_blog_type` VALUES ('1', '热门文章');
INSERT INTO `tb_blog_type` VALUES ('2', '经济动态');
INSERT INTO `tb_blog_type` VALUES ('3', '最新文章');
INSERT INTO `tb_blog_type` VALUES ('4', '零售商业');

-- ----------------------------
-- Table structure for tb_comment
-- ----------------------------
DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE `tb_comment` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(100) DEFAULT NULL,
  `Blogid` int(11) DEFAULT NULL,
  `Userid` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_comment
-- ----------------------------
INSERT INTO `tb_comment` VALUES ('5', '是的,流量明星看表情都像一脸白痴,微博早就不是当年的微博了,早该被整顿了。', '1', '1', '2019-02-28 15:23:19');
INSERT INTO `tb_comment` VALUES ('6', '粉丝心甘情愿为偶像付出,却对爱自己的人熟视无睹!参加个偶像见面会以为去重新投胎好人家一样!过后对自己有什么用!', '1', '2', '2019-03-02 15:23:19');

-- ----------------------------
-- Table structure for tb_message
-- ----------------------------
DROP TABLE IF EXISTS `tb_message`;
CREATE TABLE `tb_message` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(100) DEFAULT NULL,
  `commentid` int(11) DEFAULT NULL,
  `Userid` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_message
-- ----------------------------
INSERT INTO `tb_message` VALUES ('1', '是的,应该整顿了', '1', '1', '2019-03-01 15:23:19');
INSERT INTO `tb_message` VALUES ('2', '人家愿意,你管的着吗?', '2', '2', '2019-03-03 15:23:19');

-- ----------------------------
-- Table structure for tb_thumb_up
-- ----------------------------
DROP TABLE IF EXISTS `tb_thumb_up`;
CREATE TABLE `tb_thumb_up` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Blogid` int(11) DEFAULT NULL,
  `Userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_thumb_up
-- ----------------------------
INSERT INTO `tb_thumb_up` VALUES ('1', '1', '1');
INSERT INTO `tb_thumb_up` VALUES ('2', '1', '2');
INSERT INTO `tb_thumb_up` VALUES ('3', '1', '3');
INSERT INTO `tb_thumb_up` VALUES ('4', '2', '2');
INSERT INTO `tb_thumb_up` VALUES ('5', '2', '3');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `Pwd` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'zhangsan', '123');
INSERT INTO `tb_user` VALUES ('2', '李四', '1234');
INSERT INTO `tb_user` VALUES ('3', '王五', '12345');
