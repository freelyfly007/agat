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

 Date: 29/06/2022 12:06:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t2_procduct
-- ----------------------------
DROP TABLE IF EXISTS `t2_procduct`;
CREATE TABLE `t2_procduct`  (
  `Procduct_id` int NOT NULL,
  `Categories_id` int NOT NULL,
  `Brand_id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`Procduct_id`) USING BTREE,
  INDEX `fk_Procduct_Category`(`Categories_id`) USING BTREE,
  INDEX `fk_Procduct_Brand`(`Brand_id`) USING BTREE,
  CONSTRAINT `fk_Procduct_Brand` FOREIGN KEY (`Brand_id`) REFERENCES `t2_brand` (`Brand_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_Procduct_Category` FOREIGN KEY (`Categories_id`) REFERENCES `t2_category` (`Categories_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
