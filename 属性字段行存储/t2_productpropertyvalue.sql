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

 Date: 29/06/2022 12:06:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t2_productpropertyvalue
-- ----------------------------
DROP TABLE IF EXISTS `t2_productpropertyvalue`;
CREATE TABLE `t2_productpropertyvalue`  (
  `ProductPropertyValue_id` int NOT NULL,
  `Procduct_id` int NOT NULL,
  `Property_id` int NOT NULL,
  `PropertyValue_id` int NOT NULL,
  PRIMARY KEY (`ProductPropertyValue_id`) USING BTREE,
  INDEX `fk_ProductPropertyValue_Procduct`(`Procduct_id`) USING BTREE,
  INDEX `fk_ProductPropertyValue_Property`(`Property_id`) USING BTREE,
  INDEX `fk_ProductPropertyValue_PropertyValue`(`PropertyValue_id`) USING BTREE,
  CONSTRAINT `fk_ProductPropertyValue_Procduct` FOREIGN KEY (`Procduct_id`) REFERENCES `t2_procduct` (`Procduct_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_ProductPropertyValue_Property` FOREIGN KEY (`Property_id`) REFERENCES `t2_property` (`Property_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_ProductPropertyValue_PropertyValue` FOREIGN KEY (`PropertyValue_id`) REFERENCES `t2_propertyvalue` (`PropertyValue_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
