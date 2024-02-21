/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80035
 Source Host           : localhost:3306
 Source Schema         : sric_fms

 Target Server Type    : MySQL
 Target Server Version : 80035
 File Encoding         : 65001

 Date: 22/02/2024 00:56:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for data_h_video
-- ----------------------------
DROP TABLE IF EXISTS `data_h_video`;
CREATE TABLE `data_h_video`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件名称',
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '番号',
  `mosaic` int UNSIGNED NOT NULL COMMENT '修正（对应字典）',
  `category` int NOT NULL COMMENT '类型（对应字典）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_h_video
-- ----------------------------
INSERT INTO `data_h_video` VALUES (1, 'testname', '1.mp4', 'test-114514', 1, 1);

-- ----------------------------
-- Table structure for dict_h_video_category
-- ----------------------------
DROP TABLE IF EXISTS `dict_h_video_category`;
CREATE TABLE `dict_h_video_category`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dict_h_video_category
-- ----------------------------
INSERT INTO `dict_h_video_category` VALUES (1, 'REAL');
INSERT INTO `dict_h_video_category` VALUES (2, '3D MMD');
INSERT INTO `dict_h_video_category` VALUES (3, '2D');

-- ----------------------------
-- Table structure for dict_h_video_mosaic
-- ----------------------------
DROP TABLE IF EXISTS `dict_h_video_mosaic`;
CREATE TABLE `dict_h_video_mosaic`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dict_h_video_mosaic
-- ----------------------------
INSERT INTO `dict_h_video_mosaic` VALUES (1, '无修正');
INSERT INTO `dict_h_video_mosaic` VALUES (2, '有修正');

SET FOREIGN_KEY_CHECKS = 1;
