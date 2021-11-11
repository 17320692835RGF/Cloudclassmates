/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50734
 Source Host           : localhost:3306
 Source Schema         : shixun

 Target Server Type    : MySQL
 Target Server Version : 50734
 File Encoding         : 65001

 Date: 11/11/2021 12:44:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for buy_items
-- ----------------------------
DROP TABLE IF EXISTS `buy_items`;
CREATE TABLE `buy_items`  (
  `itemID` int(10) NOT NULL,
  `buy_Time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userID` int(10) NOT NULL,
  `itemPrice` int(20) NOT NULL,
  `itemNumber` int(20) NOT NULL,
  `itemName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of buy_items
-- ----------------------------
INSERT INTO `buy_items` VALUES (7, '2016-06-29', 1, 40, 1, '镂空V领T恤');
INSERT INTO `buy_items` VALUES (46, '2016-06-30', 5, 12, 1, 'Spring实战');

-- ----------------------------
-- Table structure for cars
-- ----------------------------
DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars`  (
  `itemID` int(20) DEFAULT NULL,
  `userID` int(20) NOT NULL,
  `itemPrice` int(20) DEFAULT NULL,
  `itemName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `itemImage` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `itemNumber` int(20) DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cars
-- ----------------------------
INSERT INTO `cars` VALUES (9, 1, 50, '欧根纱两件套连衣裙', '9.jpg', 1);
INSERT INTO `cars` VALUES (5, 1, 20, '复古大框偏光太阳镜', '5.jpg', 1);
INSERT INTO `cars` VALUES (52, 5, 10, '床上书桌', '53.jpg', 1);
INSERT INTO `cars` VALUES (9, 5, 50, '欧根纱两件套连衣裙', '9.jpg', 1);

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `image` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `discription` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` int(10) NOT NULL,
  `contact` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hot` int(20) DEFAULT 0,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES (1, '1.jpg', '智能手表', '很高科技', 100, '152436161117', 900, '问题模块');
INSERT INTO `items` VALUES (4, '4.jpg', '防晒风衣', '只穿过一次', 50, '16660262095', 300, '图书教材');
INSERT INTO `items` VALUES (5, '5.jpg', '复古大框偏光太阳镜', '女生戴着很帅气', 20, '18040697018', 100, '虚拟教室');
INSERT INTO `items` VALUES (6, '6.jpg', '韩国V7素颜霜', '还有很多没用', 30, '19367413893', 100, '自习教室');
INSERT INTO `items` VALUES (61, 'K{99{%@MAGSJ}F2{G%H}VEO.png', '会计', '1', 1, '17320692835', 300, '问题模块');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contact` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userID` int(10) NOT NULL AUTO_INCREMENT,
  `money` int(20) DEFAULT NULL,
  PRIMARY KEY (`userID`) USING BTREE,
  INDEX `checkUser`(`username`, `password`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('admin', 'admin', '17320692835', '山东', 1, 2800);

SET FOREIGN_KEY_CHECKS = 1;
