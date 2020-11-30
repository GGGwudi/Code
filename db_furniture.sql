/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : db_furniture

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2020-03-19 18:58:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admins`
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', 'admin', 'HAMVRZRssPCADKqGjGWJtQ==');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `cover` varchar(255) DEFAULT NULL COMMENT '封面',
  `image1` varchar(255) DEFAULT NULL COMMENT '细节图片1',
  `image2` varchar(255) DEFAULT NULL COMMENT '细节图片2',
  `price` int(11) DEFAULT NULL COMMENT '价格',
  `intro` varchar(255) DEFAULT NULL COMMENT '介绍',
  `stock` int(11) DEFAULT '0' COMMENT '库存',
  `type_id` int(11) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '儿童椅', '/picture/1-1.jpg', '/picture/1-2.jpg', '/picture/1-3.jpg', '229', '儿童电脑座椅学习椅家用书房儿童椅书桌椅可爱带靠背学生椅子', '10', '5');
INSERT INTO `goods` VALUES ('2', '儿童椅', '/picture/2-1.jpg', '/picture/2-2.jpg', '/picture/2-3.jpg', '229', '儿童电脑座椅学习椅家用书房儿童椅书桌椅可爱带靠背学生椅子', '10', '5');
INSERT INTO `goods` VALUES ('3', '儿童椅', '/picture/3-1.jpg', '/picture/3-2.jpg', '/picture/3-3.jpg', '229', '办公会议椅午休宿舍会客椅办公室休息可躺阳台逍遥椅伸缩皮椅舒适', '10', '5');
INSERT INTO `goods` VALUES ('4', '休闲椅', '/picture/4-1.jpg', '/picture/4-2.jpg', '/picture/4-3.jpg', '299', '办公会议椅午休宿舍会客椅办公室休息可躺阳台逍遥椅伸缩皮椅舒适', '10', '4');
INSERT INTO `goods` VALUES ('5', '餐椅', '/picture/5-1.jpg', '/picture/5-2.jpg', '/picture/5-3.jpg', '269', '儿童电脑座椅学习椅家用书房儿童椅书桌椅可爱带靠背学生椅子', '10', '3');
INSERT INTO `goods` VALUES ('6', '休闲椅', '/picture/6-1.jpg', '/picture/6-2.jpg', '/picture/6-3.jpg', '299', '办公会议椅午休宿舍会客椅办公室休息可躺阳台逍遥椅伸缩皮椅舒适', '10', '4');
INSERT INTO `goods` VALUES ('7', '休闲椅', '/picture/7-1.jpg', '/picture/7-2.jpg', '/picture/7-3.jpg', '299', '办公会议椅午休宿舍会客椅办公室休息可躺阳台逍遥椅伸缩皮椅舒适', '10', '4');
INSERT INTO `goods` VALUES ('8', '办公椅', '/picture/8-1.jpg', '/picture/8-2.jpg', '/picture/8-3.jpg', '299', '办公会议椅午休宿舍会客椅办公室休息可躺阳台逍遥椅伸缩皮椅舒适', '10', '2');
INSERT INTO `goods` VALUES ('9', '休闲椅', '/picture/9-1.jpg', '/picture/9-2.jpg', '/picture/9-3.jpg', '299', '办公会议椅午休宿舍会客椅办公室休息可躺阳台逍遥椅伸缩皮椅舒适', '10', '4');
INSERT INTO `goods` VALUES ('10', '休闲椅', '/picture/10-1.jpg', '/picture/10-2.jpg', '/picture/10-3.jpg', '28', '办公会议椅午休宿舍会客椅办公室休息可躺阳台逍遥椅伸缩皮椅舒适', '10', '4');
INSERT INTO `goods` VALUES ('11', '电脑椅', '/picture/11-1.jpg', '/picture/11-1.jpg', '/picture/11-1.jpg', '38', '办公会议椅午休宿舍会客椅办公室休息可躺阳台逍遥椅伸缩皮椅舒适', '10', '2');
INSERT INTO `goods` VALUES ('12', '电脑椅', '/picture/12-1.jpg', '/picture/1-2.jpg', '/picture/12-1.jpg', '752', '办公会议椅午休宿舍会客椅办公室休息可躺阳台逍遥椅伸缩皮椅舒适', '10', '2');
INSERT INTO `goods` VALUES ('13', '老板椅', '/picture/13-1.jpg', '/picture/13-1.jpg', '/picture/13-1.jpg', '263', '办公会议椅午休宿舍会客椅办公室休息可躺阳台逍遥椅伸缩皮椅舒适', '10', '1');
INSERT INTO `goods` VALUES ('14', '老板椅', '/picture/14-1.jpg', '/picture/14-1.jpg', '/picture/14-1.jpg', '255', '办公会议椅午休宿舍会客椅办公室休息可躺阳台逍遥椅伸缩皮椅舒适', '10', '1');

-- ----------------------------
-- Table structure for `items`
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` int(11) DEFAULT NULL COMMENT '购买时价格',
  `amount` int(11) DEFAULT NULL COMMENT '购买数量',
  `order_id` int(11) DEFAULT NULL COMMENT '订单id',
  `good_id` int(11) DEFAULT NULL COMMENT '蛋糕id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of items
-- ----------------------------

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total` int(11) DEFAULT NULL COMMENT '总价',
  `amount` int(11) DEFAULT NULL COMMENT '商品总数',
  `status` tinyint(4) DEFAULT '1' COMMENT '订单状态(1未付款/2已付款/3已发货/4已完成)',
  `paytype` tinyint(4) DEFAULT '0' COMMENT '支付方式 (1微信/2支付宝/3货到付款)',
  `name` varchar(255) DEFAULT NULL COMMENT '收货人',
  `phone` varchar(255) DEFAULT NULL COMMENT '收货电话',
  `address` varchar(255) DEFAULT NULL COMMENT '收货地址',
  `systime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '下单时间',
  `user_id` int(11) DEFAULT NULL COMMENT '下单用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for `tops`
-- ----------------------------
DROP TABLE IF EXISTS `tops`;
CREATE TABLE `tops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) DEFAULT NULL COMMENT '推荐类型(1条幅/2大图/3小图)',
  `good_id` int(11) DEFAULT NULL COMMENT '蛋糕id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='首页推荐商品';

-- ----------------------------
-- Records of tops
-- ----------------------------
INSERT INTO `tops` VALUES ('1', '2', '1');
INSERT INTO `tops` VALUES ('2', '2', '2');
INSERT INTO `tops` VALUES ('3', '2', '5');
INSERT INTO `tops` VALUES ('4', '2', '3');
INSERT INTO `tops` VALUES ('5', '3', '10');
INSERT INTO `tops` VALUES ('6', '3', '11');
INSERT INTO `tops` VALUES ('7', '1', '7');
INSERT INTO `tops` VALUES ('8', '3', '12');
INSERT INTO `tops` VALUES ('9', '3', '13');
INSERT INTO `tops` VALUES ('10', '2', '9');
INSERT INTO `tops` VALUES ('11', '2', '6');

-- ----------------------------
-- Table structure for `types`
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of types
-- ----------------------------
INSERT INTO `types` VALUES ('1', '办公椅');
INSERT INTO `types` VALUES ('2', '电脑椅');
INSERT INTO `types` VALUES ('3', '餐椅');
INSERT INTO `types` VALUES ('4', '休闲椅');
INSERT INTO `types` VALUES ('5', '儿童椅');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `name` varchar(255) DEFAULT NULL COMMENT '收货人',
  `phone` varchar(255) DEFAULT NULL COMMENT '收货电话',
  `address` varchar(255) DEFAULT NULL COMMENT '收货地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
