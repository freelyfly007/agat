/*
 Navicat Premium Data Transfer

 Source Server         : localhost(本机)
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : bigdata

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 29/06/2022 12:06:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t2_propertyvalue
-- ----------------------------
DROP TABLE IF EXISTS `t2_propertyvalue`;
CREATE TABLE `t2_propertyvalue`  (
  `PropertyValue_id` int NOT NULL,
  `Property_id` int NOT NULL,
  `Value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`PropertyValue_id`) USING BTREE,
  INDEX `fk_PropertyValue_Property`(`Property_id`) USING BTREE,
  CONSTRAINT `fk_PropertyValue_Property` FOREIGN KEY (`Property_id`) REFERENCES `t2_property` (`Property_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
