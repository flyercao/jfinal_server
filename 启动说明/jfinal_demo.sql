/*
Navicat MySQL Data Transfer

Source Server         : toMySQL
Source Server Version : 50096
Source Host           : localhost:3306
Source Database       : jfinal_demo

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2014-06-10 22:34:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(4) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` mediumtext NOT NULL,
  `userID` char(44) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('1', 'JFinal Demo Title here', 'JFinal Demo Content here', 'flyer');
INSERT INTO `blog` VALUES ('2', 'test 1', 'test 1', 'flyer');
INSERT INTO `blog` VALUES ('3', 'test 2', 'test 2', 'flyer');
INSERT INTO `blog` VALUES ('4', 'test 3', 'test 3', 'flyer');
INSERT INTO `blog` VALUES ('6', 'grsthrsh ', 's rtjhsrtjnrsnm ', 'flyer');
INSERT INTO `blog` VALUES ('7', '军用飞机', 'bfjygkkyfklfy', 'flyer');
INSERT INTO `blog` VALUES ('8', '人的服务发个我', '跟爱国改好都是白色的 ', 'flyer');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL auto_increment,
  `newsId` int(11) NOT NULL,
  `newsCategoryId` int(11) default NULL,
  `newsCategory` varchar(255) default NULL,
  `mark` int(11) default NULL,
  `commentNum` int(11) default NULL,
  `title` varchar(255) default NULL,
  `source` varchar(255) default NULL,
  `source_url` varchar(255) default NULL,
  `publishTime` datetime default NULL,
  `summary` varchar(255) default NULL,
  `newsAbstract` varchar(255) default NULL,
  `comment` varchar(255) default NULL,
  `local` varchar(255) default NULL,
  `picListString` varchar(255) default NULL,
  `picOne` varchar(255) default NULL,
  `picTwo` varchar(255) default NULL,
  `picThr` varchar(255) default NULL,
  `isLarge` int(11) default NULL,
  `readStatus` int(11) default NULL,
  `collectStatus` int(11) default NULL,
  `likeStatus` int(11) default NULL,
  `interestedStatus` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '3543984', '1', '推荐', '1', '15', '可以用谷歌眼镜做的10件酷事：导航、玩游戏', '新浪', 'http://news.sina.com.cn/c/2014-05-05/134230063386.shtml', '2014-06-07 20:20:21', '腾讯数码讯（编译：Gin）谷歌眼镜可能是目前最酷的可穿戴数码设备，你可以戴着它去任何地方（只要法律法规允许或是没有引起众怒），作为手机的第二块“增强现实显示屏”来使用。另外，虽然它仍未正式销售，但谷歌近日在美国市场举行了仅限一天的开放购买活动，价格则为1500美元（约合人民币9330元），虽然仍十分昂贵，但至少可以满足一些尝鲜者的需求，也预示着谷歌眼镜的公开大规模销售离我们越来越近了。', '', '', '', '', 'http://infopic.gtimg.com/qq_news/digi/pics/102/102066/102066094_400_640.jpg', 'http://infopic.gtimg.com/qq_news/digi/pics/102/102066/102066096_400_640.jpg', 'http://infopic.gtimg.com/qq_news/digi/pics/102/102066/102066099_400_640.jpg', '0', '0', '0', '0', '0');
INSERT INTO `news` VALUES ('2', '3543984', '1', '推荐', '1', '15', '可以用谷歌眼镜做的10件酷事：导航、玩游戏', '新浪', 'http://news.sina.com.cn/c/2014-05-05/134230063386.shtml', '2014-06-07 20:20:21', '腾讯数码讯（编译：Gin）谷歌眼镜可能是目前最酷的可穿戴数码设备，你可以戴着它去任何地方（只要法律法规允许或是没有引起众怒），作为手机的第二块“增强现实显示屏”来使用。另外，虽然它仍未正式销售，但谷歌近日在美国市场举行了仅限一天的开放购买活动，价格则为1500美元（约合人民币9330元），虽然仍十分昂贵，但至少可以满足一些尝鲜者的需求，也预示着谷歌眼镜的公开大规模销售离我们越来越近了。', '', '', '', '', 'http://infopic.gtimg.com/qq_news/digi/pics/102/102066/102066094_400_640.jpg', 'http://infopic.gtimg.com/qq_news/digi/pics/102/102066/102066096_400_640.jpg', 'http://infopic.gtimg.com/qq_news/digi/pics/102/102066/102066099_400_640.jpg', '0', '0', '0', '0', '0');
INSERT INTO `news` VALUES ('3', '3543984', '1', '推荐', '1', '15', '可以用谷歌眼镜做的10件酷事：导航、玩游戏', '新浪', 'http://news.sina.com.cn/c/2014-05-05/134230063386.shtml', '2014-06-07 20:20:21', '腾讯数码讯（编译：Gin）谷歌眼镜可能是目前最酷的可穿戴数码设备，你可以戴着它去任何地方（只要法律法规允许或是没有引起众怒），作为手机的第二块“增强现实显示屏”来使用。另外，虽然它仍未正式销售，但谷歌近日在美国市场举行了仅限一天的开放购买活动，价格则为1500美元（约合人民币9330元），虽然仍十分昂贵，但至少可以满足一些尝鲜者的需求，也预示着谷歌眼镜的公开大规模销售离我们越来越近了。', '', '', '', '', 'http://infopic.gtimg.com/qq_news/digi/pics/102/102066/102066094_400_640.jpg', 'http://infopic.gtimg.com/qq_news/digi/pics/102/102066/102066096_400_640.jpg', 'http://infopic.gtimg.com/qq_news/digi/pics/102/102066/102066099_400_640.jpg', '0', '0', '0', '0', '0');
INSERT INTO `news` VALUES ('4', '3543984', '1', '推荐', '1', '15', '华为荣耀新旗舰再曝光：搭载海思八核处理器', '网易', 'http://tech.163.com/14/0606/08/9U1T5I0F000915BE.html', '2014-06-07 20:20:21', '腾讯数码讯（编译：Gin）谷歌眼镜可能是目前最酷的可穿戴数码设备，你可以戴着它去任何地方（只要法律法规允许或是没有引起众怒），作为手机的第二块“增强现实显示屏”来使用。另外，虽然它仍未正式销售，但谷歌近日在美国市场举行了仅限一天的开放购买活动，价格则为1500美元（约合人民币9330元），虽然仍十分昂贵，但至少可以满足一些尝鲜者的需求，也预示着谷歌眼镜的公开大规模销售离我们越来越近了。', '', '', '', '', 'http://img5.cache.netease.com/tech/2014/6/6/201406060819298f0df.jpg', '', '', '1', '0', '0', '0', '0');
INSERT INTO `news` VALUES ('6', '35439825', '1', '推荐', '0', '15', '华为荣耀新旗舰再曝光：搭载海思八核处理器', '网易', 'http://tech.163.com/14/0606/08/9U1T5I0F000915BE.html', '2014-06-07 20:20:21', '腾讯数码讯（编译：Gin）谷歌眼镜可能是目前最酷的可穿戴数码设备，你可以戴着它去任何地方（只要法律法规允许或是没有引起众怒），作为手机的第二块“增强现实显示屏”来使用。另外，虽然它仍未正式销售，但谷歌近日在美国市场举行了仅限一天的开放购买活动，价格则为1500美元（约合人民币9330元），虽然仍十分昂贵，但至少可以满足一些尝鲜者的需求，也预示着谷歌眼镜的公开大规模销售离我们越来越近了。', '', '', '', '', 'http://img5.cache.netease.com/tech/2014/6/6/201406060819298f0df.jpg', '', '', '0', '0', '0', '0', '0');
INSERT INTO `news` VALUES ('7', '35439842', '1', '推荐', '0', '15', '华为荣耀新旗舰再曝光：搭载海思八核处理器', '网易', 'http://tech.163.com/14/0606/08/9U1T5I0F000915BE.html', '2014-06-07 20:20:21', '腾讯数码讯（编译：Gin）谷歌眼镜可能是目前最酷的可穿戴数码设备，你可以戴着它去任何地方（只要法律法规允许或是没有引起众怒），作为手机的第二块“增强现实显示屏”来使用。另外，虽然它仍未正式销售，但谷歌近日在美国市场举行了仅限一天的开放购买活动，价格则为1500美元（约合人民币9330元），虽然仍十分昂贵，但至少可以满足一些尝鲜者的需求，也预示着谷歌眼镜的公开大规模销售离我们越来越近了。', '', '', '', '', 'http://img5.cache.netease.com/tech/2014/6/6/201406060819298f0df.jpg', '', '', '1', '0', '0', '0', '0');
INSERT INTO `news` VALUES ('111', '11', '2', '热点', '0', '0', '黑龙江安达快餐厅爆炸 曾有人报警称有爆炸物', '网易', 'http://money.163.com/api/14/0608/11/9U7DQ6E400254U80.html', '2014-06-07 20:20:21', '黑龙江安达快餐厅爆炸 曾有人报警称有爆炸物', null, null, null, null, 'http://img1.cache.netease.com/catchpic/C/C8/C860FE5F6C8D0FC18DAE28FED0F2ABAB.jpg', null, null, '1', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` char(44) NOT NULL,
  `name` char(44) NOT NULL,
  `age` char(44) default NULL,
  `number` varchar(44) default NULL,
  `password` varchar(44) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('flyer', 'flyer_cao', '23', '007', '123');
INSERT INTO `user` VALUES ('ff', 'ff', '22', '68', '123');
INSERT INTO `user` VALUES ('gg', 'gg', '15', '165', 'gg');
