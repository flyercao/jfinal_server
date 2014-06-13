/*
Navicat MySQL Data Transfer

Source Server         : localMySQL
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : jfinal_demo

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2014-06-13 20:18:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` mediumtext NOT NULL,
  `userId` varchar(44) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('1', 'JFinal Demo Title here', 'JFinal Demo Content here', 'PNP6HuprtGAvbDQTcPbcEB');
INSERT INTO `blog` VALUES ('2', 'test 1', 'test 1', 'PNP6HuprtGAvbDQTcPbcEB');
INSERT INTO `blog` VALUES ('3', 'test 2', 'test 2', 'PNP6HuprtGAvbDQTcPbcEB');
INSERT INTO `blog` VALUES ('4', 'test 3', 'test 3', 'PNP6HuprtGAvbDQTcPbcEB');
INSERT INTO `blog` VALUES ('5', 'test 4', 'test 4', 'PNP6HuprtGAvbDQTcPbcEB');
INSERT INTO `blog` VALUES ('6', 'add', 'fagag  gggggg', 'PNP6HuprtGAvbDQTcPbcEB');
INSERT INTO `blog` VALUES ('7', '464634jdtjt', 'dgdfjrykkfghkh', 'PNP6HuprtGAvbDQTcPbcEB');

-- ----------------------------
-- Table structure for newsitem
-- ----------------------------
DROP TABLE IF EXISTS `newsitem`;
CREATE TABLE `newsitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newsId` int(11) NOT NULL,
  `newsCategoryId` int(11) DEFAULT NULL,
  `newsCategory` varchar(255) DEFAULT NULL,
  `mark` int(11) DEFAULT NULL,
  `commentNum` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `source_url` varchar(255) DEFAULT NULL,
  `publishTime` datetime DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `newsAbstract` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `picListString` varchar(255) DEFAULT NULL,
  `picOne` varchar(255) DEFAULT NULL,
  `picTwo` varchar(255) DEFAULT NULL,
  `picThr` varchar(255) DEFAULT NULL,
  `isLarge` int(11) DEFAULT NULL,
  `readStatus` int(11) DEFAULT NULL,
  `collectStatus` int(11) DEFAULT NULL,
  `likeStatus` int(11) DEFAULT NULL,
  `interestedStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of newsitem
-- ----------------------------
INSERT INTO `newsitem` VALUES ('2', '3543984', '1', '推荐', '1', '15', '可以用谷歌眼镜做的10件酷事：导航、玩游戏', '新浪', 'http://news.sina.com.cn/c/2014-05-05/134230063386.shtml', '2014-06-07 20:20:21', '腾讯数码讯（编译：Gin）谷歌眼镜可能是目前最酷的可穿戴数码设备，你可以戴着它去任何地方（只要法律法规允许或是没有引起众怒），作为手机的第二块“增强现实显示屏”来使用。另外，虽然它仍未正式销售，但谷歌近日在美国市场举行了仅限一天的开放购买活动，价格则为1500美元（约合人民币9330元），虽然仍十分昂贵，但至少可以满足一些尝鲜者的需求，也预示着谷歌眼镜的公开大规模销售离我们越来越近了。', '', '', '', '', 'http://infopic.gtimg.com/qq_news/digi/pics/102/102066/102066094_400_640.jpg', 'http://infopic.gtimg.com/qq_news/digi/pics/102/102066/102066096_400_640.jpg', 'http://infopic.gtimg.com/qq_news/digi/pics/102/102066/102066099_400_640.jpg', '0', '0', '0', '0', '0');
INSERT INTO `newsitem` VALUES ('3', '3543984', '1', '推荐', '1', '15', '可以用谷歌眼镜做的10件酷事：导航、玩游戏', '新浪', 'http://news.sina.com.cn/c/2014-05-05/134230063386.shtml', '2014-06-07 20:20:21', '腾讯数码讯（编译：Gin）谷歌眼镜可能是目前最酷的可穿戴数码设备，你可以戴着它去任何地方（只要法律法规允许或是没有引起众怒），作为手机的第二块“增强现实显示屏”来使用。另外，虽然它仍未正式销售，但谷歌近日在美国市场举行了仅限一天的开放购买活动，价格则为1500美元（约合人民币9330元），虽然仍十分昂贵，但至少可以满足一些尝鲜者的需求，也预示着谷歌眼镜的公开大规模销售离我们越来越近了。', '', '', '', '', 'http://infopic.gtimg.com/qq_news/digi/pics/102/102066/102066094_400_640.jpg', 'http://infopic.gtimg.com/qq_news/digi/pics/102/102066/102066096_400_640.jpg', 'http://infopic.gtimg.com/qq_news/digi/pics/102/102066/102066099_400_640.jpg', '0', '0', '0', '0', '0');
INSERT INTO `newsitem` VALUES ('4', '3543984', '1', '推荐', '1', '15', '华为荣耀新旗舰再曝光：搭载海思八核处理器', '网易', 'http://tech.163.com/14/0606/08/9U1T5I0F000915BE.html', '2014-06-07 20:20:21', '腾讯数码讯（编译：Gin）谷歌眼镜可能是目前最酷的可穿戴数码设备，你可以戴着它去任何地方（只要法律法规允许或是没有引起众怒），作为手机的第二块“增强现实显示屏”来使用。另外，虽然它仍未正式销售，但谷歌近日在美国市场举行了仅限一天的开放购买活动，价格则为1500美元（约合人民币9330元），虽然仍十分昂贵，但至少可以满足一些尝鲜者的需求，也预示着谷歌眼镜的公开大规模销售离我们越来越近了。', '', '', '', '', 'http://img5.cache.netease.com/tech/2014/6/6/201406060819298f0df.jpg', '', '', '1', '0', '0', '0', '0');
INSERT INTO `newsitem` VALUES ('6', '35439825', '1', '推荐', '0', '15', '华为荣耀新旗舰再曝光：搭载海思八核处理器', '网易', 'http://tech.163.com/14/0606/08/9U1T5I0F000915BE.html', '2014-06-07 20:20:21', '腾讯数码讯（编译：Gin）谷歌眼镜可能是目前最酷的可穿戴数码设备，你可以戴着它去任何地方（只要法律法规允许或是没有引起众怒），作为手机的第二块“增强现实显示屏”来使用。另外，虽然它仍未正式销售，但谷歌近日在美国市场举行了仅限一天的开放购买活动，价格则为1500美元（约合人民币9330元），虽然仍十分昂贵，但至少可以满足一些尝鲜者的需求，也预示着谷歌眼镜的公开大规模销售离我们越来越近了。', '', '', '', '', 'http://img5.cache.netease.com/tech/2014/6/6/201406060819298f0df.jpg', '', '', '0', '0', '0', '0', '0');
INSERT INTO `newsitem` VALUES ('7', '35439842', '1', '推荐', '0', '15', '华为荣耀新旗舰再曝光：搭载海思八核处理器', '网易', 'http://tech.163.com/14/0606/08/9U1T5I0F000915BE.html', '2014-06-07 20:20:21', '腾讯数码讯（编译：Gin）谷歌眼镜可能是目前最酷的可穿戴数码设备，你可以戴着它去任何地方（只要法律法规允许或是没有引起众怒），作为手机的第二块“增强现实显示屏”来使用。另外，虽然它仍未正式销售，但谷歌近日在美国市场举行了仅限一天的开放购买活动，价格则为1500美元（约合人民币9330元），虽然仍十分昂贵，但至少可以满足一些尝鲜者的需求，也预示着谷歌眼镜的公开大规模销售离我们越来越近了。', '', '', '', '', 'http://img5.cache.netease.com/tech/2014/6/6/201406060819298f0df.jpg', '', '', '1', '0', '0', '0', '0');
INSERT INTO `newsitem` VALUES ('111', '11', '2', '热点', '0', '0', '黑龙江安达快餐厅爆炸 曾有人报警称有爆炸物', '网易', 'http://money.163.com/api/14/0608/11/9U7DQ6E400254U80.html', '2014-06-07 20:20:21', '黑龙江安达快餐厅爆炸 曾有人报警称有爆炸物', null, null, null, null, 'http://img1.cache.netease.com/catchpic/C/C8/C860FE5F6C8D0FC18DAE28FED0F2ABAB.jpg', null, null, '1', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for shorturl
-- ----------------------------
DROP TABLE IF EXISTS `shorturl`;
CREATE TABLE `shorturl` (
  `shorturl` varchar(10) NOT NULL,
  `longurl` varchar(500) NOT NULL,
  PRIMARY KEY (`shorturl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl
-- ----------------------------
INSERT INTO `shorturl` VALUES ('7jiYzm', 'http://blog.csdn.net/fhx007/article/details/12680875');
INSERT INTO `shorturl` VALUES ('AJbu2u', 'http://subject.tmall.com/subject/subject.htm?spm=a3205.11208.5.1.bMnisw&gccpm=26180.102.2.subject-0&id=325426&header=2');
INSERT INTO `shorturl` VALUES ('AZBzQf', 'http://wan.sogou.com/sw-index.html?source=0011000000000');
INSERT INTO `shorturl` VALUES ('E7JNbq', 'http://subject.tmall.com/subject/subject.htm?spm=a3205.11208.5.1.bMnisw&gccpm=26180.102.2.subject-0&id=325426&header=2');
INSERT INTO `shorturl` VALUES ('n6VRRr', 'http://blog.csdn.net/fhx007/article/details/12680875');
INSERT INTO `shorturl` VALUES ('NVRjYz', 'http://zhangcb666.blog.163.com/blog/static/469635292010222483350/');
INSERT INTO `shorturl` VALUES ('QJZN7r', 'http://zhangcb666.blog.163.com/blog/static/469635292010222483350/');
INSERT INTO `shorturl` VALUES ('re6Jvu', 'http://blog.csdn.net/fhx007/article/details/12680875');
INSERT INTO `shorturl` VALUES ('RfAFNn', 'http://wan.sogou.com/sw-index.html?source=0011000000000');
INSERT INTO `shorturl` VALUES ('rIj6vi', 'http://wan.sogou.com/sw-index.html?source=0011000000000');
INSERT INTO `shorturl` VALUES ('rQryim', 'http://subject.tmall.com/subject/subject.htm?spm=a3205.11208.5.1.bMnisw&gccpm=26180.102.2.subject-0&id=325426&header=2');
INSERT INTO `shorturl` VALUES ('UB3iaq', 'http://subject.tmall.com/subject/subject.htm?spm=a3205.11208.5.1.bMnisw&gccpm=26180.102.2.subject-0&id=325426&header=2');
INSERT INTO `shorturl` VALUES ('uqmmI3', 'http://blog.csdn.net/fhx007/article/details/12680875');
INSERT INTO `shorturl` VALUES ('UreMja', 'http://zhangcb666.blog.163.com/blog/static/469635292010222483350/');
INSERT INTO `shorturl` VALUES ('YRfemu', 'http://wan.sogou.com/sw-index.html?source=0011000000000');
INSERT INTO `shorturl` VALUES ('Z7Nba2', 'http://zhangcb666.blog.163.com/blog/static/469635292010222483350/');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` char(44) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` char(44) DEFAULT NULL,
  `userType` char(44) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('NHPMNiPfa6bndSNDV6WVAB', '123', '123', 'Customer');
INSERT INTO `user` VALUES ('742GFF8YuMAv7kYqcdMCyT', '13', '13', 'Customer');
INSERT INTO `user` VALUES ('SXGtRjHBaXfJdTCa5EgrmU', '58232', '25436535', 'Customer');
INSERT INTO `user` VALUES ('MiqmpuwEaaju8wFNZppGFB', '123313', '32135', 'Customer');
INSERT INTO `user` VALUES ('5H9YMmrGvZCzM84wvpJRWi', null, null, 'Customer');
INSERT INTO `user` VALUES ('5cAMo6hAcCkoweYaN7dRCE', null, null, 'Customer');
INSERT INTO `user` VALUES ('FzsxwzEZfErvCiFdrgWqWA', null, null, 'Customer');
INSERT INTO `user` VALUES ('Nw8Y83xy54U2UnJF5CpxSi', '1234', '1234', 'Customer');
INSERT INTO `user` VALUES ('u5MRaUrEyBjj1t9uegxP3', '12345', '12345', 'Customer');
INSERT INTO `user` VALUES ('2cuGU816qNAPTU7zu31Uv7', 'user', 'user', 'Customer');
INSERT INTO `user` VALUES ('MxnzjCJFh6GV7zbxSioayV', 'admin', 'admin', 'Customer');
INSERT INTO `user` VALUES ('SLmgpHMCKgs2zrgK7TVDBM', '1', '1', 'Customer');
INSERT INTO `user` VALUES ('TuDp3uLsBYwUfeN1b1WuVe', '2', '2', 'Customer');
INSERT INTO `user` VALUES ('PNP6HuprtGAvbDQTcPbcEB', 'gg', 'gg', 'Customer');
