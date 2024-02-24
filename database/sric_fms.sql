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

 Date: 25/02/2024 01:28:55
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
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '番号',
  `mosaic` int UNSIGNED NOT NULL COMMENT '修正（1：无修正，2：有修正，）',
  `category` int NOT NULL COMMENT '类型（1：REAL，2：3D MMD，3：2D，）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_h_video
-- ----------------------------
INSERT INTO `data_h_video` VALUES (1, 'pornhub@meeHuTao', '1.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (2, '视频的名字', '2.mp4', '', 2, 2);
INSERT INTO `data_h_video` VALUES (3, 'name3', '3.mp4', '333-333', 1, 1);
INSERT INTO `data_h_video` VALUES (4, 'name4', '4.mp4', '444-444', 1, 1);
INSERT INTO `data_h_video` VALUES (5, 'name5', '5.mp4', '555-555', 1, 1);
INSERT INTO `data_h_video` VALUES (6, 'name6', '6.mp4', '666-666', 1, 1);
INSERT INTO `data_h_video` VALUES (7, 'name7', '7.mp4', '777-777', 1, 1);

-- ----------------------------
-- Table structure for data_h_video_tag
-- ----------------------------
DROP TABLE IF EXISTS `data_h_video_tag`;
CREATE TABLE `data_h_video_tag`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `vid` int NOT NULL COMMENT '对应h_video的id',
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '对应tag内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_h_video_tag
-- ----------------------------
INSERT INTO `data_h_video_tag` VALUES (1, 1, 'test tag');

SET FOREIGN_KEY_CHECKS = 1;
